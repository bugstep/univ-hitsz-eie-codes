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
* @file video_lib.c
*
*  This file implements video library interface. 
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


#include "video.h"
#include "common.h"
#include "m2m_sw_pipeline.h"
#include "m2m_hw_pipeline.h"
#include "s2m_pipeline.h"
#include "mediactl_helper.h"

static struct video_pipeline *video_setup;

int vlib_init()
{
	int ret;

	/* Allocate video_setup struct and zero out memory */
	video_setup = calloc ( 1 ,sizeof (*video_setup));
	video_setup->app_state = MODE_INIT;
	video_setup->in_fourcc = INPUT_PIX_FMT;
	video_setup->out_fourcc = OUTPUT_PIX_FMT;
	video_setup->colorspace = COLOR_SPACE;
	/* Detect ADV7611 status */
	if (get_entity_state(MEDIA_NODE_0, MEDIA_EXT_ENTITY))
		video_setup->hdmii_present = 1;
	/* Detect and configure HLS subdev */
	ret = v4l2_hls_init(&video_setup->subdev, XLNX_HLS_SOBEL_MODEL_NAME);
	if (!ret) /* design-specific init, see v4l2_plugin.c */
            v4l2_hls_core_init(video_setup->subdev.fd);

	return ret;
}

int vlib_drm_init()
{
	struct drm_device *drm_dev = &video_setup->drm;
	drm_dev->module = drm_module_name(video_setup->drm_module);
	drm_dev->format = video_setup->out_fourcc;

	/* Configure DRM */
	drm_init(drm_dev, BUFFER_CNT);

#ifdef DEBUG_MODE
	printf("vlib :: DRM Init done ..\n");
#endif

	return VLIB_SUCCESS;
}

int vlib_set_drm_module(drm_module module)
{
	video_setup->drm_module = module;

	return VLIB_SUCCESS;
}

int vlib_get_drm_module()
{
	return video_setup->drm_module;
}

/* Setter/getter for HDMI out pipeline height */	
int vlib_set_active_height(int h)
{
	video_setup->h = h;

	return VLIB_SUCCESS;
}

int vlib_get_active_height()
{
	return video_setup->h;
}

/* Setter/getter for HDMI out pipeline width */	
int vlib_set_active_width(int w)
{
	video_setup->w = w;

	/* Calculate stride in bytes */
	if (video_setup->drm_module == DRM_MODULE_XILINX)
		video_setup->stride = (video_setup->w * BYTES_PER_PIXEL);
	else // video_setup->drm_module == DRM_MODULE_XYLON
		video_setup->stride= (XYLON_DRM_STRIDE * BYTES_PER_PIXEL);

	return VLIB_SUCCESS;
}

int vlib_get_active_width()
{
	return video_setup->w;
}
	
/* Query video pipeline usable state */
int vlib_query_pipeline_state()
{
	/* To continue one of links must be up else pipeline is un-usable */
	if (!get_entity_link_count(MEDIA_NODE_0, XLNX_TPG_CARD_NAME)) {
		printf("Misconfigured capture pipeline\n");
		printf("Please check if FMC module is connected\n");
		return VLIB_ERROR;
	}

	return VLIB_SUCCESS;
}

int vlib_query_ext_vid_state()
{
	return video_setup->hdmii_present;
}

int vlib_pipeline_stop()
{
	int ret =VLIB_ERROR;
	/* Add cleanup code */
	if(video_setup->eventloop != 0) {
		/* Set application state */
		video_setup->app_state = MODE_EXIT;
		ret=pthread_cancel(video_setup->eventloop);
		ret= pthread_join(video_setup->eventloop,NULL);
#ifdef DEBUG_MODE
		printf("vlib_pipeline_stop (pthread_join):: %d \n",ret);
#endif
	}
	/* Disable video layer on pipeline stop */
	drm_set_plane_state(&video_setup->drm, video_setup->drm.overlay_plane.plane_id, 0);
	return ret;
}

int vlib_uninit()
{
	/* close HLS subdev */
	v4l2_hls_uninit(&video_setup->subdev);

	free (video_setup);
	return VLIB_SUCCESS;
}

int vlib_drm_uninit()
{
	drm_unit(&video_setup->drm);
	return VLIB_SUCCESS;
}

int vlib_change_mode(video_src src, filter_func func, filter_mode mode)
{
	int ret=0;
	int hdmii_width, hdmii_height;
	void *(*process_thread_fptr)(void *);

#ifdef VIDEO_FILE_INPUT
        video_setup->vfi_flag = ((src == VIDEO_SRC_FFMPEG) ? 1 : 0);
        src = ((src == VIDEO_SRC_FFMPEG) ? VIDEO_SRC_TPG : src);
#endif

	/* Select input source */
	switch(src) {
	case VIDEO_SRC_TPG:
		video_setup->vid_dev = XLNX_TPG_CARD_NAME;
		video_setup->tpg_bypass = 0;
		break;
	case VIDEO_SRC_HDMII:
		video_setup->vid_dev = XLNX_TPG_CARD_NAME;
		video_setup->tpg_bypass = 1;
		break;
	case VIDEO_SRC_UVC:
		video_setup->vid_dev = XLNX_UVC_DRIVER_NAME;
		video_setup->tpg_bypass = 0;
		break;
	case VIDEO_SRC_VIVI:
		video_setup->vid_dev = XLNX_VIVI_CARD_NAME;
		video_setup->tpg_bypass = 0;
		break;
	default:
		printf("[info] :: No valid card/driver name found for selection\n");
		printf("[info] :: Continue with previous mode\n");
		return VLIB_ERROR;
	}

	/* HDMI input selected */
	if (video_setup->tpg_bypass) {
		/* No FMC detected */
		if (!video_setup->hdmii_present) {
			printf("[info] :: FMC not connected\n");
			printf("[info] :: Continue with previous mode\n");
			return VLIB_ERROR;
		}
		/* Input resolution doesn't match output */
		vlib_get_dv_timings(&hdmii_width, &hdmii_height);
		if ((hdmii_width != video_setup->w || hdmii_height != video_setup->h)
				&& video_setup->tpg_bypass) {
			printf("[info] :: HDMI input resolution '%dx%d' does not match display '%dx%d'\n",
					hdmii_width, hdmii_height, video_setup->w, video_setup->h);
			printf("[info] :: Continue with previous mode\n");
			return VLIB_ERROR;
		}
	}

	if(video_setup->eventloop != 0) {
		/* Set application state */
		video_setup->app_state = MODE_CHANGE;
		/* Stop previous running mode if any */
		ret = pthread_cancel(video_setup->eventloop);
		ret = pthread_join(video_setup->eventloop, NULL);
	}

	/* Set TPG mode */
	v4l2_tpg_configure(video_setup);

	/* Initialize filter mode */
	switch(mode) {
	case FILTER_MODE_OFF:
		init_s2m_pipeline(video_setup);
		process_thread_fptr = process_s2m_event_loop;
		break;
	case FILTER_MODE_SW:
		init_m2m_sw_pipeline(video_setup, func);
		process_thread_fptr = process_m2m_sw_event_loop;
		break;
	case FILTER_MODE_HW:
		init_m2m_hw_pipeline(video_setup);
		process_thread_fptr = process_m2m_hw_event_loop ;
		break;
	default:
		ASSERT(1, "Invalid application mode!\n");
	}

	/* Start the processing loop */
	ret = pthread_create(&video_setup->eventloop, NULL, process_thread_fptr, video_setup);
	ASSERT( ret < 0 , "thread creation failed \n");

	return VLIB_SUCCESS;
}

/* Check if output pipeline timings matches with HDMI input */
int vlib_get_dv_timings(int *width, int *height)
{
	struct v4l2_dv_timings dv_timings;

	query_entity_dv_timings(MEDIA_NODE_0, MEDIA_EXT_SET_DV, &dv_timings);

	*width = dv_timings.bt.width;
	*height = dv_timings.bt.height;

	return VLIB_SUCCESS;
}

int vlib_drm_set_layer0_state(int enable_state)
{
	/* Setting DRM CRTC "control" property disables console layer */
	drm_set_plane_state(&video_setup->drm, video_setup->drm.prim_plane.plane_id, enable_state);
	return VLIB_SUCCESS;
}

int vlib_drm_set_layer0_transparency(int transparency)
{
	/* Setting DRM CRTC "transparency" property controls Layer Alpha Register 
	- Lx_ALPHA for console layer */
	drm_set_crtc_prop(&video_setup->drm, "transparency", transparency);
	return VLIB_SUCCESS;
}

int vlib_drm_get_module_type(const char *str)
{
	drm_module_from_string(str);
	return VLIB_SUCCESS;
}

const char *vlib_drm_get_module_name(drm_module module)
{
	return drm_module_name(module);
}

int vlib_drm_set_layer0_position(int x, int y)
{
	drm_set_prim_plane_pos(&video_setup->drm, x, y);
	return VLIB_SUCCESS;
}
