/*******************************************************************************
Vendor: Xilinx 
Associated Filename: sobel.h
Purpose: Sobel algorithm header file for AutoESL
Revision History: February 13, 2012 - initial release
                                                
*******************************************************************************
© Copyright 2008 - 2012 Xilinx, Inc. All rights reserved. 

This file contains confidential and proprietary information of Xilinx, Inc. and 
is protected under U.S. and international copyright and other intellectual 
property laws.

DISCLAIMER
This disclaimer is not a license and does not grant any rights to the materials 
distributed herewith. Except as otherwise provided in a valid license issued to 
you by Xilinx, and to the maximum extent permitted by applicable law: 
(1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX 
HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR 
FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether 
in contract or tort, including negligence, or under any other theory of 
liability) for any loss or damage of any kind or nature related to, arising under 
or in connection with these materials, including for any direct, or any indirect, 
special, incidental, or consequential loss or damage (including loss of data, 
profits, goodwill, or any type of loss or damage suffered as a result of any 
action brought by a third party) even if such damage or loss was reasonably 
foreseeable or Xilinx had been advised of the possibility of the same.

CRITICAL APPLICATIONS
Xilinx products are not designed or intended to be fail-safe, or for use in any 
application requiring fail-safe performance, such as life-support or safety 
devices or systems, Class III medical devices, nuclear facilities, applications 
related to the deployment of airbags, or any other applications that could lead 
to death, personal injury, or severe property or environmental damage 
(individually and collectively, "Critical Applications"). Customer assumes the 
sole risk and liability of any use of Xilinx products in Critical Applications, 
subject only to applicable laws and regulations governing limitations on product 
liability. 

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT 
ALL TIMES.

*******************************************************************************/



#ifndef _IMAGE_DEMO_H_
#define _IMAGE_DEMO_H_
#include "ap_axi_sdata.h"
#include "ap_interfaces.h"
#include "ap_bmp.h"
#include "ap_video.h"




#define MAX_WIDTH 1920
#define MAX_HEIGHT 1080


// I/O Image Settings
#define INPUT_IMAGE_BASE "test_1080p"
#define OUTPUT_IMAGE_BASE "result_1080p"

#define ABSDIFF(x,y)	((x>y)? x - y : y - x)
#define ABS(x)          ((x>0)? x : -x)

typedef ap_rgb<8,8,8> RGB;
typedef ap_axiu<32,1,1,1> AXI_PIXEL;
typedef ap_window<unsigned char,3,3> WINDOW;
typedef ap_linebuffer<unsigned char, 3, MAX_WIDTH> Y_BUFFER;
typedef ap_linebuffer<RGB,2,MAX_WIDTH> RGB_BUFFER;


void sobel_filter(
		  AXI_PIXEL inter_pix[MAX_HEIGHT][MAX_WIDTH],
		  AXI_PIXEL out_pix[MAX_HEIGHT][MAX_WIDTH],
		  int row,
		  int col
		  );

#endif
