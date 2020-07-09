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
* @file m2m_sw_pipeline.c
*
* This file implements the  interface for memory to memory sw processing pipeline.
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


#include "common.h"
#include "m2m_sw_pipeline.h"
#include "mediactl_helper.h"
#include "v4l2_helper.h"
#include "sw_frame_processor.h"

#ifdef VIDEO_FILE_INPUT
#include "video_file_reader.h"
static struct video_frame *vfi;
#endif

static struct m2m_sw_stream m2m_sw_stream_handle;

static void page_flip_handler(int fd __attribute__((__unused__)),
	unsigned int frame __attribute__((__unused__)),
	unsigned int sec __attribute__((__unused__)),
	unsigned int usec __attribute__((__unused__)),
	void *data)
{
	int index = m2m_sw_stream_handle.current_buffer;
	m2m_sw_stream_handle.current_buffer = (unsigned long)data;
	if (index < 0)
		return;
}


int init_m2m_sw_pipeline(struct video_pipeline *s, filter_func func)
{
	int ret = 0;
 	memset(&m2m_sw_stream_handle, 0, sizeof (struct m2m_sw_stream));

	/* Configure media pipelines */
	set_media_control(s, MEDIA_NODE_0);

	/* Set v4l2 device name */
	ret = v4l2_parse_node(s->vid_dev, m2m_sw_stream_handle.video_in.devname);
	ASSERT(ret < 0, "No video node matching device name %s (%d)\n", s->vid_dev, ret);

	/* Initialize v4l2 video input device */
	m2m_sw_stream_handle.video_in.format.pixelformat = s->in_fourcc;
	m2m_sw_stream_handle.video_in.format.width = s->w;
	m2m_sw_stream_handle.video_in.format.height = s->h;
	m2m_sw_stream_handle.video_in.format.bytesperline = s->stride;
	m2m_sw_stream_handle.video_in.format.colorspace = s->colorspace;
	m2m_sw_stream_handle.video_in.buf_type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	m2m_sw_stream_handle.video_in.mem_type = V4L2_MEMORY_MMAP;
	m2m_sw_stream_handle.video_in.setup_ptr = s;

	/* Set processing function */
	m2m_sw_stream_handle.func = func;

#ifdef VIDEO_FILE_INPUT
        if (s->vfi_flag) {
            vfi = (struct video_frame *)malloc(sizeof(struct video_frame));
            ret = init_video_file_reader(vfi, m2m_sw_stream_handle.video_in.format);
            ASSERT(ret < 0, "init_video_file_reader :: failed\n");
        }
#endif
	return VLIB_SUCCESS;
}

/* Process m2m sw pipeline input/output events .
TPG/External --> Software Processing -->DRM 
Video input device allocate buffer - mmap that to userspace
DRM allocate framebuffer  -mmap that to userspace
Software processing logic uses these handles for reading/writing
raw/processed video frames.
*/

void *process_m2m_sw_event_loop(void *ptr)
{
	int ret=0,i=0;
	struct video_pipeline *v_pipe = ptr;

	/* Initialize video input pipeline */
	ret = v4l2_init(&m2m_sw_stream_handle.video_in, BUFFER_CNT);
	ASSERT(ret < 0, "v4l2_init failed\n");

	/* push cleanup handler */
	pthread_cleanup_push(uninit_m2m_sw_pipeline, ptr);

	for (i = 0; i < BUFFER_CNT; ++i)  {
	 	struct v4l2_buffer buffer;
		memset(&buffer, 0, sizeof(buffer));
		buffer.type =V4L2_BUF_TYPE_VIDEO_CAPTURE;
		buffer.memory = V4L2_MEMORY_MMAP;
		buffer.index = i;
		if (-1 == ioctl (m2m_sw_stream_handle.video_in.fd, VIDIOC_QUERYBUF, &buffer)) {
			perror("VIDIOC_QUERYBUF");
			exit(EXIT_FAILURE);
		}

		m2m_sw_stream_handle.video_in.vid_buf[i].v4l2_buff_length=buffer.length;

		/* remember for munmap() */
		m2m_sw_stream_handle.video_in.vid_buf[i].v4l2_buff = mmap(NULL,
				buffer.length, PROT_READ|PROT_WRITE, MAP_SHARED,
				m2m_sw_stream_handle.video_in.fd, buffer.m.offset);

		/* If you do not exit here you should unmap() and free()
		the buffers mapped so far. */

		ASSERT(MAP_FAILED == m2m_sw_stream_handle.video_in.vid_buf[i].v4l2_buff , "mmap failed ");
		m2m_sw_stream_handle.video_in.vid_buf[i].index = i;

	 }


	/* Assigning buffer index and set exported buff handle */
	for(i=0;i<BUFFER_CNT;i++) {
		//Queue buffer to TPG
		v4l2_queue_buffer(&m2m_sw_stream_handle.video_in,
				& (m2m_sw_stream_handle.video_in.vid_buf[i]));
	}

	/* Start streaming */
	ret = v4l2_device_on(& m2m_sw_stream_handle.video_in);
	ASSERT (ret < 0, "v4l2_device_on [video_in] failed %d \n",ret);

#ifdef DEBUG_MODE
		printf("vlib :: Video Capture Pipeline :: started !!");
#endif

	/* Set current buffer index */
	m2m_sw_stream_handle.current_buffer=-1;

	struct pollfd fds[] = {
		{.fd = m2m_sw_stream_handle.video_in.fd, .events = POLLIN},
		{.fd = v_pipe->drm.fd, .events = POLLIN},
	};

	unsigned int tpg_s2m_count=0;
	/* NOTE : VDMA doesn't issue EOF interrupt , as a result even on the first frame done,
            interrupt , it still updating it , current solution is to skip the first frame 
	    done notification */

	/* poll and pass buffers */
	while ((ret = poll(fds, ARRAY_SIZE(fds), POLL_TIMEOUT_MSEC)) > 0 ) {
		struct buffer *b;
		if (fds[0].revents & POLLIN) {
			if ( tpg_s2m_count != VDMA_SKIP_FRM_INDEX ){
				b = v4l2_dequeue_buffer(&m2m_sw_stream_handle.video_in,
						m2m_sw_stream_handle.video_in.vid_buf);

#ifdef VIDEO_FILE_INPUT
                                if (v_pipe->vfi_flag) {
                                        decode_one_frame(vfi, b->v4l2_buff);
                                }
#endif
			        unsigned char *out_ptr = v_pipe->drm.d_buff[b->index].drm_buff;
				unsigned char *in_ptr = b->v4l2_buff;
				/*  frame processing */
				img_process((short int *)in_ptr, (short int *)out_ptr, 
                                                    m2m_sw_stream_handle.video_in.format.height,
						    m2m_sw_stream_handle.video_in.format.width,
						    m2m_sw_stream_handle.video_in.format.bytesperline/2);
				drm_page_flip(&v_pipe->drm, b->index);
				/* queue the buffer post vblank */
				v4l2_queue_buffer(&m2m_sw_stream_handle.video_in,b) ;
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

	return VLIB_SUCCESS;
}

/* Un-init m2m sw pipeline ->unmap buffers,stop the video stream and close video device*/
void uninit_m2m_sw_pipeline(void *ptr)
{
	int i=0,ret=0;
	ret= v4l2_device_off(& m2m_sw_stream_handle.video_in);
	ASSERT(ret< 0 ,"v4l2_device stream-off failed \n");

	/* unmap v4l2 mapped buffer */
	for ( i=0;i< BUFFER_CNT ;i++) {
		munmap (m2m_sw_stream_handle.video_in.vid_buf[i].v4l2_buff,
				m2m_sw_stream_handle.video_in.vid_buf[i].v4l2_buff_length);
	}
	close(m2m_sw_stream_handle.video_in.fd);
#ifdef VIDEO_FILE_INPUT
        if (vfi) {
            uninit_video_file_reader(vfi);
            free(vfi);
            vfi = 0;
        }
#endif
}

