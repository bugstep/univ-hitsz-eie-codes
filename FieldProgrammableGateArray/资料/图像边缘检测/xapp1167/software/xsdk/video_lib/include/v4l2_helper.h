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
* @file v4l2_helper.h
*
* This file defines the helper functions for v4l2 video devices. 
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
#ifndef V4L2_HELPER_H
#define V4L2_HELPER_H

#include <linux/xilinx-v4l2-controls.h>
#include "common.h"

struct buffer {
	unsigned int index;
	int dbuf_fd;
	unsigned char *v4l2_buff;
	unsigned int v4l2_buff_length;
};

/* video device */
struct v4l2_dev {
	char devname[DEV_NAME_LEN];		/* device name */
	int fd;					/* device node fd */
	enum v4l2_buf_type buf_type;   /* type of buffer */
	enum v4l2_memory mem_type;  /* type of memory */
	struct v4l2_pix_format format;
	struct buffer  vid_buf[ MAX_BUFFER_CNT];
	struct video_pipeline *setup_ptr;
};

/* Return video node for card name */
int v4l2_parse_node(char *cardname, char *devnode);
/* Initialize v4l2 video device */
int v4l2_init(struct v4l2_dev *, unsigned int );
/* Queue buffer to video device */
void v4l2_queue_buffer(struct v4l2_dev *, const struct buffer *);
/* Dequeue buffer from video device */
struct buffer *v4l2_dequeue_buffer(struct v4l2_dev *, struct buffer *);
/* Start the capture or output process during streaming */
int  v4l2_device_off(struct v4l2_dev *);
/*Stop the capture or output process during streaming */
int  v4l2_device_on(struct v4l2_dev *);
/* Set TPG subdev controls */
int v4l2_tpg_set_ctrl(int id, int value);
/* Select TPG test pattern */
void v4l2_tpg_configure(struct video_pipeline *s);
/* Returns HLS model string */
int v4l2_hls_model(struct v4l2_hls_subdev *subdev, char *model);
/* Initialize HLS module */
int v4l2_hls_init(struct v4l2_hls_subdev *subdev, const char* model_name);
/* Initialize HLS core */
int v4l2_hls_core_init(int fd);
/* Un-Initialize HLS module */
int v4l2_hls_uninit(struct v4l2_hls_subdev *subdev);

#endif
