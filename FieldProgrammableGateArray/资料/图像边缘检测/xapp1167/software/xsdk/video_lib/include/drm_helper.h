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
* @file drm_helper.h
*
* This file defines helper functions for DRM configuration.
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
#ifndef DRM_HELPER_H
#define DRM_HELPER_H

#include <sys/types.h>
#include <libdrm/drm.h>
#include <libdrm/drm_mode.h>
#include <xf86drm.h>
#include <xf86drmMode.h>

#include "video.h"

typedef enum {
	PLANE_OVERLAY,
	PLANE_PRIMARY,
	PLANE_CURSOR,
	PLANE_NONE
} plane_type;

struct drm_buffer {
	unsigned int index;
	unsigned int bo_handle;
	unsigned int fb_handle;
	int dbuf_fd;
	unsigned char *drm_buff;
	unsigned int dumb_buff_length;
};

struct drm_device {
	const char *module;
	int fd;
	int crtc_index;
	unsigned int crtc_id;
	unsigned int con_id;
	drmModePlane prim_plane;
	drmModePlane overlay_plane;
	drmModeConnector *connector;
	drmModeModeInfo mode;
	drmModeCrtc *saved_crtc;
	const char modestr[32];
	unsigned int format;
	struct drm_buffer d_buff[MAX_BUFFER_CNT];
};

/* Helper functions to return drm_module from
drm module string and vice-versa */
int drm_module_from_string(const char *str);
const char *drm_module_name(drm_module module);
void drm_init(struct drm_device *, unsigned int);
/* Configures plane with buffer index to be selected for next scanout */
void drm_page_flip(struct drm_device *, int index);
/* Set DRM crtc property for input property name and value */
int drm_set_crtc_prop(struct drm_device *dev,const char *, int );
/* Un-initialize drm module , freeup allocated resources */
void drm_unit (struct drm_device *dev) ;
/* Get Plane type */
plane_type drm_get_plane_type(struct drm_device *dev, unsigned int plane_id);
/* Enable/disable plane */
int drm_set_plane_state(struct drm_device *dev, int plane_id, int enable);
/* Set primary plane offset (x,y) */
int drm_set_prim_plane_pos(struct drm_device *dev, int x, int y);

#endif
