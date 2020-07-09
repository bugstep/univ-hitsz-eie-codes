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
* @file sw_frame_processor.c
*
* This file implements the interface for software module. 
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

#include <cv.h>
#include <highgui.h>
#include <cxcore.h>
#include "common.h"
#include "sw_frame_processor.h"
#include "opencv_top.h"

void img_process(ZNQ_S16 *frm_data_in, ZNQ_S16 *frm_data_out, int height, int width, int stride)
{
   	// constructing OpenCV interface
	IplImage* src_dma = cvCreateImageHeader(cvSize(width, height), IPL_DEPTH_8U, 2);
	IplImage* dst_dma = cvCreateImageHeader(cvSize(width, height), IPL_DEPTH_8U, 2);
        src_dma->imageData = (char*)frm_data_in;
        dst_dma->imageData = (char*)frm_data_out;
        src_dma->widthStep = 2 * stride;
        dst_dma->widthStep = 2 * stride;
        
        if (1) {
    	    opencv_image_filter(src_dma, dst_dma);
        } else {
            hls_image_filter(src_dma, dst_dma);
        }

	cvReleaseImageHeader(&src_dma);
	cvReleaseImageHeader(&dst_dma);
 
}

