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
* @file video_cmd.c
*
* This file implements command line interface for Zynq Base TRD .
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


#include <stdio.h>
#include <getopt.h>
#include <errno.h>
#include <stdlib.h>

#include "video.h"

typedef enum {
	MENU_EXIT,
	MENU_TPG,
	MENU_HDMII,
	MENU_FFMPEG,
	MENU_UVC,
	MENU_VIVI,
	MENU_FILTER
} menu;

int getInput(void)
{
	int ch;
	int ret = -1;

	ch = getchar();

	if (ch >= '0' && ch <= '9')
		ret = ch - '0';

	while ((ch = getchar()) != '\n' && ch != EOF);

	return ret;
}

static void usage(const char *argv0)
{
	printf("Usage: %s [options]\n", argv0);
	printf("-d, --drm-module name  DRM module: 'xilinx' or 'xylon' (default: xylon)\n");
	printf("-h, --help             Show this help screen\n");
	printf("-r, --resolution WxH   Width'x'Height (default: 1920x1080)\n");
}

static struct option opts[] = {
	{ "drm-module", required_argument, NULL, 'd' },
	{ "help", no_argument, NULL, 'h'},
	{ "resolution", required_argument, NULL, 'r' },
	{ NULL, 0, NULL, 0 }
};


int main(int argc, char *argv[])
{
	int ret = 0;

	/* Options parsing */
	int c, choice;
	int hdmi_out_width = HRES_1080P;
	int hdmi_out_height = VRES_1080P;
	menu current_menu = MENU_TPG;;
	drm_module module = DRM_MODULE_XYLON;
	filter_mode mode = FILTER_MODE_OFF;
	filter_func func = FILTER_FUNC_SOBEL;
	video_src src = VIDEO_SRC_TPG;
	video_src current_src;

	/* Parse command line arguments */
	while ((c = getopt_long(argc, argv, "d:hr:", opts, NULL)) != -1) {
		switch (c) {
		case 'd':
			module = vlib_drm_get_module_type(optarg);
			if (module == DRM_MODULE_NONE) {
				printf("Invalid DRM module '%s'\n", optarg);
				return 1;
			}
			break;
		case 'h':
			usage(argv[0]);
			return 0;
		case 'r':
			ret = sscanf(optarg, "%ux%u", &hdmi_out_width, &hdmi_out_height);
			if (ret != 2) {
				printf("Invalid size '%s'\n", optarg);
				return 1;
			}
			break;
		default:
			printf("Invalid option -%c\n", c);
			printf("Run %s -h for help\n", argv[0]);
			return 1;
		}
	}

	/* Initialize video library */
	vlib_init();
	vlib_set_drm_module(module);
	vlib_set_active_height(hdmi_out_height);
	vlib_set_active_width(hdmi_out_width);
	vlib_drm_init();

	/* Specifically disable Layer0 for command line application */
	vlib_drm_set_layer0_state(0);
	/* Check video library pipeline state , exit if pipeline is un-usable */
	ret = vlib_query_pipeline_state();
	ASSERT(ret ,"Application Exit !\n");

	/* Print application status */
	printf("Video Control application:\n");
	printf("------------------------\n");
	printf("DRM module name: %s\n", vlib_drm_get_module_name(vlib_get_drm_module()));
	printf("HDMI output resolution: %dx%d\n", vlib_get_active_width(), vlib_get_active_height());
	printf("HDMI input status: %s\n", (vlib_query_ext_vid_state()? "present" : "absent"));

	/* Start default src/mode */
	vlib_change_mode(src, func, mode);

	/* Main control menu */
	do {
                printf("\n------------------------------------------------\n");
                printf("Current Source: %s  Current Filter: %s\n",
                       (src == VIDEO_SRC_TPG ? "TPG" : (src == VIDEO_SRC_HDMII ? "HDMI Input" : "Video File")),
                       (mode == FILTER_MODE_OFF ? "OFF" : (mode == FILTER_MODE_SW ? "SW" : "HW")));
		printf("------------- Select Source --------------------\n");
		printf("%d -> Test Pattern Generator\n",MENU_TPG);
		printf("%d -> HDMI Input\n",MENU_HDMII);
#ifdef VIDEO_FILE_INPUT
		printf("%d -> Decoded Video File Read\n", MENU_FFMPEG);
#endif

		/* NOTE: Video sources including USB and VIVI are disabled for current
		 * release as it's not fully integrated.
		 */
#ifdef UVC
		printf("%d -> USB Webcam\n", MENU_UVC);
#endif

#ifdef VIVI
		printf("%d -> VIVI (Virtual video device)\n", MENU_VIVI);
#endif
		printf("------------- Toggle Filter --------------------\n");
		printf("%d -> Filter Off/SW/HW\n", MENU_FILTER);
		printf("------------- Exit Application -----------------\n");
		printf("%d -> Exit\n\n", MENU_EXIT);
		printf("\nEnter your choice :");

		choice = getInput();

		/* Same option selected */
		if (current_menu == choice)
			continue;

		current_src = src;

		switch(choice) {
		case MENU_EXIT:
			vlib_pipeline_stop();
			vlib_drm_set_layer0_state(1);
			vlib_drm_uninit();
			vlib_uninit();
			exit(0);
		case MENU_TPG:
			src = VIDEO_SRC_TPG;
			break;
		case MENU_HDMII:
			src = VIDEO_SRC_HDMII;
			break;
#ifdef UVC
		case MENU_UVC:
			src = VIDEO_SRC_UVC;
			break;
#endif

#ifdef VIVI
		case MENU_VIVI:
			src = VIDEO_SRC_VIVI;
			break;
#endif

#ifdef VIDEO_FILE_INPUT
		case MENU_FFMPEG:
			src = VIDEO_SRC_FFMPEG;
			break;
#endif
		case MENU_FILTER:
			mode++;
			mode %= 3;
			break;
		default:
			printf("\n\n ********* Invalid input, Please try Again ***********\n");
			continue;
		}

		/* Switch to selected src/mode */
		ret = vlib_change_mode(src, func, mode);
		if (!ret && choice <= VIDEO_SRC_CNT)
			current_menu = choice;
		else
			src = current_src;

	} while (choice);

	return 0;
}
