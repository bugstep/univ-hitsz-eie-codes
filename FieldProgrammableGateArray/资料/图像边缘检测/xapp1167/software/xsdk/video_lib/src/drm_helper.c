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
* @file drm_helper.c
*
* This file implements helper functions for DRM configuration.
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
#include "drm_helper.h"
#include "common.h"

static struct {
	drm_module module;
	const char *name;
	const char *string;
} drm_modules[] = {
	{ DRM_MODULE_XILINX, "xilinx_drm", "xilinx" },
	{ DRM_MODULE_XYLON, "xylon-drm", "xylon" }
};


#define container_of(ptr, type, member) ({ \
    const typeof( ((type *)0)->member ) \
    *__mptr = (ptr);\
    (type *)( (char *)__mptr - offsetof(type,member) );})


/*Parse string format and extract width,height,left,top params */
 static inline int parse_rect(char *s, struct v4l2_rect *r)
 {
	 return sscanf(s, "%d,%d@%d,%d", &r->width, &r->height,
		 &r->left, &r->top) != 4;
 }

/* Return drm_module from a module name */
 int drm_module_from_string(const char *str)
 {
 	unsigned int i;
 	for (i = 0; i < ARRAY_SIZE(drm_modules); i++) {
 		if (strcmp(drm_modules[i].string, str))
 			continue;
 		return drm_modules[i].module;
 	}
 	return -1;
 }

 /* Return drm module from input type name */
 const char *drm_module_name(drm_module module)
 {
 	unsigned int i;

 	for (i = 0; i < ARRAY_SIZE(drm_modules); ++i) {
 		if (drm_modules[i].module == module)
 			return drm_modules[i].name;
 	}
 	return "Invalid";
 }

/* Create dumb buffers and framebuffer for scanout.
     Requests the DRM subsystem to prepare the buffer for memory-mapping */
 static int drm_buffer_create(struct drm_device *dev, struct drm_buffer *b)
{
	struct drm_mode_create_dumb gem;
	struct drm_mode_map_dumb mreq;
	struct drm_mode_destroy_dumb gem_destroy;
	int drm_width=0,drm_height=0;
	int drm_stride=0;
	int ret;

	struct video_pipeline *v_pipeline = container_of(dev , struct video_pipeline , drm);
	drm_width = v_pipeline->w;
	drm_height = v_pipeline->h;
	drm_stride = v_pipeline->stride;

#ifdef DEBUG_MODE
	printf("%s :: width %d height %d size %d \n",__func__,
			drm_width,drm_height,drm_stride);
#endif
	memset(&gem, 0, sizeof gem);
	gem.width = drm_width;
	gem.height = drm_height;
	gem.bpp = drm_stride/ drm_width * 8;

	/* Creates a gem object.
	The kernel will return a 32bit handle that can be used to
	manage the buffer with the DRM API */
	ret = ioctl(dev->fd, DRM_IOCTL_MODE_CREATE_DUMB, &gem);
	if (WARN_ON(ret, "CREATE_DUMB failed: %s\n", ERRSTR))
		return VLIB_ERROR;
	b->bo_handle = gem.handle;
	b->dumb_buff_length = gem.size;
	struct drm_prime_handle prime;
	memset(&prime, 0, sizeof prime);
	prime.handle = b->bo_handle;
	/* Export gem object  to a FD */
	ret = ioctl(dev->fd, DRM_IOCTL_PRIME_HANDLE_TO_FD, &prime);
	if (WARN_ON(ret, "PRIME_HANDLE_TO_FD failed: %s\n", ERRSTR))
		goto fail_gem;

	b->dbuf_fd = prime.fd;

	uint32_t offsets[4] = { 0 };
	uint32_t pitches[4] = { drm_stride};
	uint32_t bo_handles[4] = { b->bo_handle };
	unsigned int fourcc = dev->format;
#ifdef DEBUG_MODE
	printf("drmModeAddFB2 (args):: %d %d %d \n",drm_width,drm_height,fourcc);
#endif
	/* request the creation of frame buffers */
	ret = drmModeAddFB2(dev->fd, drm_width, drm_height, fourcc, bo_handles,
		pitches, offsets, &b->fb_handle, 0);
	if (WARN_ON(ret, "drmModeAddFB2 failed: %s\n", ERRSTR))
		goto fail_prime;


	/* prepare buffer for memory mapping */
	memset(&mreq, 0, sizeof(mreq));
	mreq.handle = b->bo_handle;
	ret = drmIoctl(dev->fd, DRM_IOCTL_MODE_MAP_DUMB, &mreq);
	if (ret) {
		fprintf(stderr, "cannot map dumb buffer (%d): %m\n",
			errno);
		ret = -errno;
		goto fail_prime;
	}

	/* perform actual memory mapping */
	b->drm_buff= mmap(0, gem.size, PROT_READ | PROT_WRITE, MAP_SHARED, dev->fd, mreq.offset);
	if (b->drm_buff == MAP_FAILED) {
			fprintf(stderr, "cannot mmap dumb buffer \n");
			ret = -errno;
			goto fail_prime;
	}

	return VLIB_SUCCESS;

fail_prime:
	close(b->dbuf_fd);

fail_gem:
	memset(&gem_destroy, 0, sizeof gem_destroy);
	gem_destroy.handle = b->bo_handle,
	ret = ioctl(dev->fd, DRM_IOCTL_MODE_DESTROY_DUMB, &gem_destroy);
	WARN_ON(ret, "DESTROY_DUMB failed: %s\n", ERRSTR);
	return VLIB_ERROR;
}


/* Find available CRTC and connector for scanout */
static int drm_find_crtc(struct drm_device *dev)
{
	int ret = -1;

	drmModeRes *res = drmModeGetResources(dev->fd);
	if (WARN_ON(!res, "drmModeGetResources failed: %s\n", ERRSTR))
		return -1;

	if (WARN_ON(res->count_crtcs <= 0, "drm: no crts\n"))
		goto done;

	/* Assume first crtc id is ok */
	if(res->count_crtcs) {
		dev->crtc_index = 0 ;
		dev->crtc_id = res->crtcs[0] ;
	}

	if (WARN_ON(dev->crtc_index == -1, "drm: CRTC %u not found\n", dev->crtc_id))
		goto done;

	if (WARN_ON(res->count_connectors <= 0, "drm: no connectors\n"))
		goto done;

	/* Assume first connector is ok */
	dev->con_id = res->connectors[0];

	dev->connector = drmModeGetConnector(dev->fd, dev->con_id);
	if (WARN_ON(!dev->connector, "drmModeGetConnector failed: %s\n", ERRSTR))
		goto done;

	ret = 0;

done:
	drmModeFreeResources(res);
	return ret;
}

static int drm_set_mode(struct drm_device *dev)
{
	int ret = -1,j=0,mode_found=0;
	drmModeCrtc *curr_crtc =NULL;

	struct video_pipeline *v_pipe =NULL;
	v_pipe = container_of(dev , struct video_pipeline , drm);


	dev->saved_crtc= drmModeGetCrtc(dev->fd, dev->crtc_id);
	ASSERT( !dev->saved_crtc ,"Could not get crtc %i\n", dev->crtc_id);

	curr_crtc = dev->saved_crtc;

	drmModeConnector *connector = dev->connector;
	ret = 0;
	for (j = 0; j < connector->count_modes; j++) {
		/* Iterate through all the supported modes */
		if ( connector->modes[j].hdisplay == v_pipe->w &&
						connector->modes[j].vdisplay== v_pipe->h) {
		  		mode_found =1;
				v_pipe->vtotal = connector->modes[j].vtotal;
				v_pipe->htotal = connector->modes[j].htotal;
				break;
		}
	}
	/* Assert if requested resolution is not supported by the CRTC display */
	ASSERT (!mode_found ,"Input Resolution %dx%d not supported by the monitor ! \n",
							v_pipe->w,v_pipe->h);

#ifdef DEBUG_MODE
	printf("drmModeSetCrtc :: %d %d\n", dev->prim_plane.x, dev->prim_plane.y);
#endif
	/* Set the resolution */
	ret = drmModeSetCrtc(dev->fd, curr_crtc->crtc_id, curr_crtc->buffer_id,
			dev->prim_plane.x, dev->prim_plane.y, &dev->con_id, 1, &connector->modes[j]);
	ASSERT (ret <0 ,"drmModeSetCrtc :: Failed \
			         Not able to set resolution [%dx%d] on the CRTC \n",v_pipe->w,v_pipe->h);

	return 0;
}

static int drm_find_mode(struct drm_device *dev, drmModeModeInfo *m) __attribute__ ((unused));
static int drm_find_mode(struct drm_device *dev, drmModeModeInfo *m)
{
	drmModeConnector *c = dev->connector;
	int i;

	if (WARN_ON(!c->count_modes, "connector supports no mode\n"))
		return -1;

	for (i = 0; i < c->count_modes; ++i) {
		if (strcmp(c->modes[i].name, dev->modestr) == 0) {
			*m = c->modes[i];
			return 0;
		}
	}

	WARN_ON(1, "mode %s not supported\n", dev->modestr);
	fprintf(stderr, "Valid modes:");

	for (i = 0; i < c->count_modes; ++i)
		fprintf(stderr, " %s", c->modes[i].name);

	fprintf(stderr, "\n");

	return -1;
}


/* Find an unused plane that supports the requested format */
 static int drm_find_plane(struct drm_device *dev)
{
	drmModePlaneResPtr planes;
	drmModePlanePtr plane;
	unsigned int i;
	unsigned int j;
	int ret = -1;

#ifdef DEBUG_MODE
	printf("%s \n \n",__func__);
#endif

	planes = drmModeGetPlaneResources(dev->fd);
	if (WARN_ON(!planes, "drmModeGetPlaneResources failed: %s\n", ERRSTR))
		return -1;

	for (i = 0; i < planes->count_planes; ++i) {
		plane = drmModeGetPlane(dev->fd, planes->planes[i]);
		if (WARN_ON(!planes, "drmModeGetPlane failed: %s\n", ERRSTR))
			break;

		/* Retrieve plane type - PRIMARY, OVERLAY or CURSOR */
		plane_type type = drm_get_plane_type(dev, plane->plane_id);
		if (type == PLANE_PRIMARY)
			dev->prim_plane = *plane;

#ifdef DEBUG_MODE
		printf("plane %d/%d:\n", (i+1), planes->count_planes);
		printf("\tcrtc id: %d\n", plane->crtc_id);
		printf("\tplane id: %d\n", plane->plane_id);
		printf("\tplane format: %d\n", plane->formats[0]);
		printf("\tplane type: %s\n\n", (type == PLANE_PRIMARY) ? "Primary" : "Overlay/Cursor");
#endif

		// TODO: turn off primary plane by setting fb id to 0
		if (plane->crtc_id)
			continue;

		if (!(plane->possible_crtcs & (1 << dev->crtc_index))) {
			drmModeFreePlane(plane);
			continue;
		}

		for (j = 0; j < plane->count_formats; ++j) {
			if (plane->formats[j] == dev->format)
				break;
		}

		if (j == plane->count_formats) {
			drmModeFreePlane(plane);
			continue;
		}

		dev->overlay_plane = *plane;
		drmModeFreePlane(plane);

		ret = 0;
		break;
	}

	drmModeFreePlaneResources(planes);
	return ret;
}

/* Initialize DRM module, allocate framebuffer for display, creates userspace mapping */
void drm_init(struct drm_device *dev, unsigned int num_buffers)
{
	int ret;
	unsigned int i;

	dev->fd = drmOpen(dev->module, NULL);
	ASSERT(dev->fd < 0, "drmOpen(%s) failed: %s\n", dev->module, ERRSTR);

	struct video_pipeline *v_pipe = NULL;
	v_pipe = container_of(dev, struct video_pipeline, drm);

	for (i = 0; i < num_buffers; ++i) {
		ret = drm_buffer_create(dev, &dev->d_buff[i]);
		dev->d_buff[i].index=i;
		ASSERT(ret, "failed to create buffer%d\n", i);
	}

#ifdef DEBUG_MODE
	printf("buffers ready\n");
#endif

	/* enable universal plane */
	ret = drmSetClientCap(dev->fd, DRM_CLIENT_CAP_UNIVERSAL_PLANES, 1);
	ASSERT(ret, "universal plane not supported\n");

	ret = drm_find_crtc(dev);
	ASSERT(ret, "failed to find CRTC and/or connector\n");

	ret = drm_find_plane(dev);
	ASSERT(ret, "failed to find compatible plane\n");

	/* Startup DRM settings */
	if (v_pipe->app_state == MODE_CHANGE || v_pipe->app_state == MODE_INIT)
		drm_set_mode(dev);
}

/* Un-initialize drm module , freeup allocated resources */
void drm_unit (struct drm_device *dev)
{

	int i=0;
	drmModePlaneResPtr planes;
	drmModePlanePtr plane;
	struct drm_mode_destroy_dumb destroy_dumb_obj;

	planes = drmModeGetPlaneResources(dev->fd);

	if (WARN_ON(!planes, "drmModeGetPlaneResources failed: %s\n", ERRSTR))
		return;

	for (i = 0; i < planes->count_planes; ++i) {
		plane = drmModeGetPlane(dev->fd, planes->planes[i]);
		if (WARN_ON(!planes, "drmModeGetPlane failed: %s\n", ERRSTR))
			break;
			drmModeFreePlane(plane);
		}

	/* delete dumb buffers */
	for ( i=0;i< BUFFER_CNT ;i++) {

		/* unmap drm buffer */

		munmap (dev->d_buff[i].drm_buff,
				dev->d_buff[i].dumb_buff_length);
		close (dev->d_buff[i].dbuf_fd);
		memset(&destroy_dumb_obj, 0, sizeof(destroy_dumb_obj));
		destroy_dumb_obj.handle = dev->d_buff[i].bo_handle;
		/* destroy dumb buffer */
		drmIoctl(dev->fd, DRM_IOCTL_MODE_DESTROY_DUMB, &destroy_dumb_obj);
		/* free-up framebuffer */
		drmModeRmFB (dev->fd,dev->d_buff[i].fb_handle);
		}

	/* restore saved CRTC configuration */
	drmModeSetCrtc(dev->fd,dev->saved_crtc->crtc_id,
					   dev->saved_crtc->buffer_id,
					   dev->saved_crtc->x,
					   dev->saved_crtc->y,
					   &dev->con_id,
					   1,
					   &dev->saved_crtc->mode);
	drmModeFreeCrtc(dev->saved_crtc);
	drmDropMaster(dev->fd);
	drmClose(dev->fd);

}

/* Configures plane with buffer index to be selected for next scanout */
void drm_page_flip(struct drm_device *dev, int index)
{
	int ret;

	/*TODO: Add check for validating index */
	struct video_pipeline *v_pipe =NULL;
	v_pipe = container_of(dev , struct video_pipeline , drm);
	/* Configure plane ,the crtc then blends the content from the plane over
       the CRTC framebuffer buffer during scanout */
	ret = drmModeSetPlane(dev->fd, dev->overlay_plane.plane_id, dev->crtc_id,
				dev->d_buff[index].fb_handle,0,0, 0,
				      v_pipe->w, v_pipe->h,0, 0,
				      v_pipe->w << 16, v_pipe->h << 16);
	ASSERT(ret, "drmModeSetPlane failed: %s\n", ERRSTR);
	drmVBlank vblank;
	vblank.request.type = DRM_VBLANK_EVENT | DRM_VBLANK_RELATIVE;
	vblank.request.sequence = 1;
	vblank.request.signal = (unsigned long) index;
	ret = drmWaitVBlank(dev->fd, &vblank);
	ASSERT(ret, "drmWaitVBlank failed: %s\n", ERRSTR);
}

/* Set DRM crtc property for input property name and value */
int drm_set_crtc_prop(struct drm_device *dev, const char *prop_name, int prop_val)
{
	drmModeObjectPropertiesPtr props;
	int ret = -1;

	props = drmModeObjectGetProperties(dev->fd, dev->crtc_id, DRM_MODE_OBJECT_CRTC);
	if (props) {
		unsigned int i;
		drmModePropertyPtr prop;

		for (i = 0; i < props->count_props; i++) {
			prop = drmModeGetProperty(dev->fd, props->props[i]);
			if (!strcmp(prop->name, prop_name)) {
				drmModeObjectSetProperty(dev->fd, dev->crtc_id,
										 DRM_MODE_OBJECT_CRTC, prop->prop_id,
										 prop_val);
				ret = 0;
				break;
			}
			drmModeFreeProperty(prop);
		}
		drmModeFreeObjectProperties(props);
	}

	return ret;
}

plane_type drm_get_plane_type(struct drm_device *dev, unsigned int plane_id)
{
	drmModeObjectPropertiesPtr props;
	int i, j;
	plane_type type = PLANE_NONE;
	int found = 0;

	props = drmModeObjectGetProperties(dev->fd, plane_id,
					   DRM_MODE_OBJECT_PLANE);
	ASSERT(!props ,"DRM get_properties failed \n");

	for (i = 0; i < props->count_props && !found; i++) {
		drmModePropertyPtr prop;
		const char *enum_name = NULL;

		prop = drmModeGetProperty(dev->fd, props->props[i]);
		ASSERT(!prop ,"DRM get_property failed \n");

		if (strcmp(prop->name, "type") == 0) {
			for (j = 0; j < prop->count_enums; j++) {
				if (prop->enums[j].value ==
				    props->prop_values[i]) {
					enum_name = prop->enums[j].name;
					break;
				}
			}

			if (strcmp(enum_name, "Primary") == 0)
				type = PLANE_PRIMARY;
			else if (strcmp(enum_name, "Overlay") == 0)
				type = PLANE_OVERLAY;
			else if (strcmp(enum_name, "Cursor") == 0)
				type = PLANE_CURSOR;
			else
				WARN_ON(!found, "Invalid DRM Plane type\n");

			found = 1;
		}

		drmModeFreeProperty(prop);
	}

	ASSERT(!found, "Invalid DRM Plane type\n");
	drmModeFreeObjectProperties(props);

	return type;
}

int drm_set_plane_state(struct drm_device *dev, int plane_id, int enable)
{
	int fb_id=0;
	int flags =0;

	struct video_pipeline *v_pipe =NULL;
	v_pipe = container_of(dev , struct video_pipeline , drm);


	drmModePlanePtr plane = drmModeGetPlane(dev->fd, plane_id);

	/* If plane is to be enabled restore original frame-buffer id
	    to disable it set it to NULL*/
	if (enable)
		fb_id = plane->fb_id;

#ifdef DEBUG_MODE
	printf("%s :: %d %d %d %d %d %d \n",__func__,plane->plane_id,dev->crtc_id,plane->crtc_x,
			plane->crtc_y,plane->x,plane->y);
#endif

	/* note src coords (last 4 args) are in Q16 format */
	drmModeSetPlane(dev->fd , plane->plane_id,dev->crtc_id, fb_id ,flags,
			plane->crtc_x,plane->crtc_y, v_pipe->w, v_pipe->h,
			plane->x <<16 ,plane->y << 16,v_pipe->w <<16 , v_pipe->h <<16);

	return VLIB_SUCCESS;
}

/* Set primary plane offset (x,y) */
/* @TODO: Make it generic for all planes */
int drm_set_prim_plane_pos(struct drm_device *dev, int x, int y)
{
	int flags =0;
	drmModePlanePtr prim_plane = &(dev->prim_plane);

	struct video_pipeline *v_pipe =NULL;
	v_pipe = container_of(dev , struct video_pipeline , drm);

	prim_plane->crtc_x = x;
	prim_plane->crtc_y = y;

#ifdef DEBUG_MODE
	printf("%s :: %d %d %d %d %d %d %d \n",__func__,prim_plane->plane_id,dev->crtc_id,prim_plane->fb_id,prim_plane->crtc_x,
			prim_plane->crtc_y,prim_plane->x,prim_plane->y);
#endif

	/* note src coords (last 4 args) are in Q16 format */
	drmModeSetPlane(dev->fd , prim_plane->plane_id,dev->crtc_id, prim_plane->fb_id ,flags,
		prim_plane->crtc_x,prim_plane->crtc_y, v_pipe->w, (v_pipe->h-prim_plane->crtc_y),
			0,0 ,v_pipe->w <<16 , (v_pipe->h-prim_plane->crtc_y) <<16);

	return VLIB_SUCCESS;
}
