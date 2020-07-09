/******************************************************************************
*
* (c) Copyright 2012-2014 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
*
*******************************************************************************/

/*****************************************************************************
*
* @file s2m_pipeline.c
*
* This file implements the interface  for stream to memory pipeline. Input pipeline -> Output Display
* 
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date        Changes
* ----- ---- -------- -------------------------------------------------------
* 1.00a RSP   14/07/14 Initial release
* </pre>
*
* @note
*
******************************************************************************/
#include "s2m_pipeline.h"
#include "mediactl_helper.h"
#include "v4l2_helper.h"

#ifdef VIDEO_FILE_INPUT
#include "video_file_reader.h"
static struct video_frame *vfi;
#endif

static struct s2m_stream s2m_stream_handle;

static void page_flip_handler(int fd __attribute__((__unused__)),
	unsigned int frame __attribute__((__unused__)),
	unsigned int sec __attribute__((__unused__)),
	unsigned int usec __attribute__((__unused__)),
	void *data)
{
	int index = s2m_stream_handle.current_buffer;

	s2m_stream_handle.current_buffer = (unsigned long)data;
	if (index < 0)
		return;

}

int init_s2m_pipeline(struct video_pipeline *s)
{
	int ret = 0;

	memset(&s2m_stream_handle,0,sizeof (struct s2m_stream));

	/* Configure media0 pipeline */
	set_media_control(s, MEDIA_NODE_0);

	/* Set v4l2 device name */
	ret = v4l2_parse_node(s->vid_dev, s2m_stream_handle.video_in.devname);
	ASSERT(ret < 0, "No video node matching device name %s (%d)\n", s->vid_dev, ret);

	/* Initialize v4l2 video input device */
	s2m_stream_handle.video_in.format.pixelformat = s->in_fourcc;
	s2m_stream_handle.video_in.format.width = s->w;
	s2m_stream_handle.video_in.format.height = s->h;
	s2m_stream_handle.video_in.format.bytesperline = s->stride;
	s2m_stream_handle.video_in.format.colorspace = s->colorspace;
	s2m_stream_handle.video_in.buf_type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

#ifdef VIDEO_FILE_INPUT
    if (s->vfi_flag)
        s2m_stream_handle.video_in.mem_type = V4L2_MEMORY_MMAP;
    else
#endif
	s2m_stream_handle.video_in.mem_type = V4L2_MEMORY_DMABUF;
	s2m_stream_handle.video_in.setup_ptr = s;

#ifdef VIDEO_FILE_INPUT
        if (s->vfi_flag) {
            vfi = (struct video_frame *)malloc(sizeof(struct video_frame));
            ret = init_video_file_reader(vfi, s2m_stream_handle.video_in.format);
            ASSERT(ret < 0, "init_video_file_reader :: failed\n");
        }
#endif
	return VLIB_SUCCESS;
}


/* Process s2m pipeline input/output events .
TPG/External --> DRM 
Its uses DMABUF framework for sharing buffers between multiple devices.
DRM allocate framebuffer memory , its exported to get file handle 
which is then imported by video input device to put video frames directly
into display memory */

void *process_s2m_event_loop(void *ptr)
{
	int ret=0,i=0;
	struct video_pipeline *v_pipe = ptr;

	/* Initialize video device */
	ret = v4l2_init(&s2m_stream_handle.video_in, BUFFER_CNT);
	ASSERT(ret < 0, "v4l2_init failed\n");

	/* push cleanup handler */
	pthread_cleanup_push(uninit_s2m_pipeline, ptr);

	/* Assigning buffer index and set exported buff handle */
	for(i=0;i<BUFFER_CNT;i++) {
		s2m_stream_handle.video_in.vid_buf[i].index =i ;
#ifdef VIDEO_FILE_INPUT
                if (!(v_pipe->vfi_flag)) {
    		    /* Assign DRM buffer buff-sharing handle */
		    s2m_stream_handle.video_in.vid_buf[i].dbuf_fd  = v_pipe->drm.d_buff[i].dbuf_fd;
                }
#else
		/* Assign DRM buffer buff-sharing handle */
		s2m_stream_handle.video_in.vid_buf[i].dbuf_fd  = v_pipe->drm.d_buff[i].dbuf_fd;
#endif
		/* Queue buffers to video device using DMA buff sharing */
		v4l2_queue_buffer(&s2m_stream_handle.video_in, &(s2m_stream_handle.video_in.vid_buf[i]));
	}

	/* Start streaming */
	ret = v4l2_device_on(&s2m_stream_handle.video_in);
	ASSERT (ret < 0, "v4l2_device_on [video_in] failed %d \n",ret);

#ifdef DEBUG_MODE
	printf("vlib :: Video Capture Pipeline :: started !!");
#endif

	/* Set current buffer index */
	s2m_stream_handle.current_buffer=-1;

	struct pollfd fds[] = {
		{.fd = s2m_stream_handle.video_in.fd, .events = POLLIN},
		{.fd = v_pipe->drm.fd, .events = POLLIN},
	};

	unsigned int tpg_s2m_count=0;
	/* NOTE : VDMA doesn't issue EOF interrupt , as a result even on the first frame done,
            interrupt , it still updating it , current solution is to skip the first frame 
	    done notification */


	/* wait for poll events and pass buffers */
	while ((ret = poll(fds, ARRAY_SIZE(fds), POLL_TIMEOUT_MSEC)) > 0 ) {
		struct buffer *b;

		if (fds[0].revents & POLLIN) {
			if ( tpg_s2m_count != VDMA_SKIP_FRM_INDEX ) {
				b = v4l2_dequeue_buffer(&s2m_stream_handle.video_in, s2m_stream_handle.video_in.vid_buf);
#ifdef VIDEO_FILE_INPUT
                                if (v_pipe->vfi_flag) {
                                        decode_one_frame(vfi, v_pipe->drm.d_buff[b->index].drm_buff);
                                }
#endif			
				drm_page_flip(&v_pipe->drm, b->index);
				/* queue the buffer post vblank */
				v4l2_queue_buffer(&s2m_stream_handle.video_in, b);
			}
			tpg_s2m_count++;
		}

		if (fds[1].revents & POLLIN) {
			drmEventContext evctx;
			memset(&evctx, 0, sizeof evctx);
			evctx.version = DRM_EVENT_CONTEXT_VERSION;
			evctx.page_flip_handler = page_flip_handler;
			evctx.vblank_handler = page_flip_handler;
			ret = drmHandleEvent(v_pipe->drm.fd, &evctx);
			ASSERT(ret, "drmHandleEvent failed: %s\n", ERRSTR);
		}
	}

	/* push cleanup handler */
	pthread_cleanup_pop(1);

	return NULL;
}

/* Un-init s2m pipeline ->stop the video stream and close video device*/
void uninit_s2m_pipeline(void *ptr)
{
	v4l2_device_off(& s2m_stream_handle.video_in);
#ifdef VIDEO_FILE_INPUT
        if (vfi) {
            uninit_video_file_reader(vfi);
            free(vfi);
            vfi = 0;
        }
#endif
	close(s2m_stream_handle.video_in.fd);
}


