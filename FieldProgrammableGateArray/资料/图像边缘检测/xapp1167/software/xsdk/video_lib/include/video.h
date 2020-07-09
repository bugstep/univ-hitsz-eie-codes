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
* @file video_lib.h
*
* This file provides video library interface. 
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

#ifndef VDF_LIB_H
#define VDF_LIB_H

#ifdef __cplusplus
extern "C"
{
#endif

/* Default setup */
#define OUTPUT_PIX_FMT v4l2_fourcc('Y','U','Y','V')
#define INPUT_PIX_FMT  v4l2_fourcc('Y','U','Y','V')
#define COLOR_SPACE  V4L2_COLORSPACE_SRGB
#define XYLON_DRM_STRIDE 2048
#define BYTES_PER_PIXEL 2
#define HRES_1080P 1920
#define VRES_1080P 1080
#define HRES_720P 1280
#define VRES_720P 720

/* Common interface  for video library*/
typedef enum 
{
	DRM_MODULE_XILINX,
	DRM_MODULE_XYLON,
	DRM_MODULE_NONE = -1,
} drm_module;

#define VIDEO_SRC_CNT 5

typedef enum
{
	VIDEO_SRC_TPG,
	VIDEO_SRC_HDMII,
	VIDEO_SRC_UVC,
	VIDEO_SRC_VIVI,
	VIDEO_SRC_FFMPEG
} video_src;

typedef enum
{
	FILTER_FUNC_SOBEL
} filter_func;

typedef enum
{
	FILTER_MODE_OFF,
	FILTER_MODE_SW,
	FILTER_MODE_HW
} filter_mode;


#define BUFFER_CNT 3
#define MAX_BUFFER_CNT 5

#define VLIB_SUCCESS 0
#define VLIB_ERROR  -1


/* Initialize video library */
int vlib_init();
int vlib_uninit();

/* configure video output pipeline */
int vlib_drm_init ();
int vlib_drm_uninit();

/* Set layer0 DRM  "control" property . 
Enable/disable layer0
usecase - commandline application */
int vlib_drm_set_layer0_state(int);
int vlib_drm_set_layer0_transparency(int);
int vlib_drm_set_layer0_position(int, int);

int vlib_drm_get_module_type(const char *str);
const char *vlib_drm_get_module_name(drm_module module);


/* Setter/getter for DRM module type - Xilinx/Xylon */
int vlib_set_drm_module(drm_module module);
int vlib_get_drm_module();

/* Setter/getter for output pipeline height*/
int vlib_set_active_height(int);
int vlib_get_active_height();

/* Setter/getter for output pipeline width*/
int vlib_set_active_width(int);
int vlib_get_active_width();

/* Query video pipeline usable state */
int vlib_query_pipeline_state();

/* Stop the current running video input pipeline */
int vlib_pipeline_stop();
/* Check external video state */
int vlib_query_ext_vid_state();

/* Configure video input and apply selected modes */
int vlib_change_mode(video_src src, filter_func func, filter_mode mode);
/* Check if output pipeline timings matches with HDMI input */
int vlib_get_dv_timings(int *width, int *height);

/* Helper functions */
#define ERRSTR strerror(errno)
#define ASSERT(cond, ...) 					\
		do {							\
			if (cond) { 				\
				int errsv = errno;			\
				fprintf(stderr, "ERROR(%s:%d) : ",	\
						__FILE__, __LINE__);	\
				errno = errsv;				\
				fprintf(stderr,  __VA_ARGS__);		\
				abort();				\
			}						\
		} while(0)
#define WARN_ON(cond, ...) \
				((cond) ? warn(__FILE__, __LINE__, __VA_ARGS__) : 0)

#ifdef __cplusplus
}
#endif
#endif

