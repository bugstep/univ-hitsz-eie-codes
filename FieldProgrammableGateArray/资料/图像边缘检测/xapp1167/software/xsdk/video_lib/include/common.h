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
* @file common.h
*
* This file defines common macros/defines for video library.
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
#ifndef COMMON_H
#define COMMON_H

/* Common defines / utils for video_lib */

#include <errno.h>
#include <fcntl.h>
#include <math.h>
#include <poll.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <pthread.h>
#include <stddef.h>
#include <linux/videodev2.h>
#include <mediactl/mediactl.h>
#include <mediactl/v4l2subdev.h>

#include "drm_helper.h"
#include "video.h"

/* Media Pipeline configuration */
#define MEDIA_TPG_ENTITY "40080000.tpg"
#define MEDIA_HLS_ENTITY "400d0000.hls"
#define MEDIA_EXT_ENTITY "adv7611 12-004c"

#define MEDIA_TPG_FMT "\"40080000.tpg\":%d [fmt:UYVY/%dx%d]"
#define MEDIA_HLS_FMT "\"400d0000.hls\":%d [fmt:UYVY/%dx%d]"
#define MEDIA_EXT_FMT "\"adv7611 12-004c\":%d [fmt:UYVY/%dx%d]"

#define MEDIA_EXT_STATE "\"adv7611 12-004c\":1 -> \"40080000.tpg\":0[%d]"
#define MEDIA_EXT_SET_DV  "\"adv7611 12-004c\":1"

#define XLNX_VIVI_CARD_NAME "vivi"
#define XLNX_TPG_CARD_NAME "video_cap output 0"
#define XLNX_SOBEL_IN_CARD_NAME "video_m2m input 1"
#define XLNX_SOBEL_OUT_CARD_NAME "video_m2m output 0"
#define XLNX_UVC_DRIVER_NAME "uvcvideo"
#define XLNX_HLS_SOBEL_MODEL_NAME "xlnx,v-hls-sobel"

#define DEV_NAME_LEN 32
#define POLL_TIMEOUT_MSEC 5000
int warn(char *args, ... );
#define ARRAY_SIZE(a)  (sizeof(a)/sizeof((a)[0]))
#define VDMA_SKIP_FRM_INDEX 0

typedef enum
{
	MODE_INIT,
	MODE_CHANGE,
	MODE_EXIT
} app_state;

/*  media configuration */
typedef enum
{
	MEDIA_NODE_0,
	MEDIA_NODE_1
} media_node; 

struct v4l2_hls_subdev {
	int fd;
	char name[32];
};

/* global setup for all modes */
struct video_pipeline {
	unsigned int w, h;
	unsigned int vtotal, htotal;
	unsigned int stride;
	unsigned int in_fourcc;
	unsigned int out_fourcc;
	unsigned int colorspace;
	drm_module drm_module;
	int app_state;
	int hdmii_present;
	struct drm_device drm;
	char *vid_dev;
	int tpg_bypass;
	struct v4l2_hls_subdev subdev;
	pthread_t eventloop;
#ifdef VIDEO_FILE_INPUT
        int vfi_flag;
#endif
};

#endif
