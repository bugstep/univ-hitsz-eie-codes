/******************************************************************************
*
* (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
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
* @file xsobel.c
*
******************************************************************************/

#include "../share/include/xsobel.h"
#include "hwi.h"
#include "ap_fixed.h"

#define XSOBEL_DEBUG

static XImage_filter sobel_handler;

int xsobel_init()
{
	//xsobel init
#ifdef XSOBEL_DEBUG
	printf("%s \n",__func__);
#endif
	XImage_filter_Initialize(&sobel_handler,UIO_DEV_NAME);
	return EXIT_SUCCESS;

}

int xsobel_config(int rows,int cols)
{

#ifdef XSOBEL_DEBUG
	printf("%s \n",__func__);
#endif

	xsobel_init();

    ap_fixed<24,16> cameraMA[9]={  804.4145,    0,  374.7348,     0,  804.4145,  288.4255,    0,         0,    1.0000};
    ap_fixed<18,4> RMA [9] = { 0.001243123333, -5.115948811e-06, -0.461190647, 5.11806526e-06, 0.001243129417, -0.360997918, -3.944623479e-06, 6.748793534e-07, 1.00127835 };
    ap_fixed<18,4> distC[8]={-0.010493966242300385,
                                     -1.9678986285723983,
                                     0.00027663992375121606,
                                     -0.0014617660896652936,
                                     5.8541385342374905,
                                     0.20394922529585216,
                                     -2.501492404860845,
                                     6.550356420301151};

    ap_fixed<24,16> *cameraMA_address = (ap_fixed<24,16> *)XImage_filter_GetCamerama_vBaseAddress(&sobel_handler);
    for(int i = 0; i < 9; i++) {
        cameraMA_address[i] = cameraMA[i];
    }
    int *x = (int*)XImage_filter_GetCamerama_vBaseAddress(&sobel_handler);
    for(int i = 0; i < 9; i++) {
        ap_int<24> y;
        y(23,0) = cameraMA[i](23,0);
        printf("%d %d\n",*x++,y.to_int());
    }

    ap_fixed<18,4> *RMA_address = (ap_fixed<18,4> *)XImage_filter_GetRma_vBaseAddress(&sobel_handler);
    for(int i = 0; i < 9; i++) {
        RMA_address[i] = RMA[i];
    }

    ap_fixed<18,4> *distC_address = (ap_fixed<18,4> *)XImage_filter_GetDistc2_vBaseAddress(&sobel_handler);
    for(int i = 0; i < 8; i++) {
        distC_address[i] = distC[i];
    }

    XImage_filter_SetRows(&sobel_handler,rows);
	XImage_filter_SetCols(&sobel_handler,cols);
	///XImage_filter_EnableAutoRestart(&sobel_handler);

	//Set the coefficients

	xsobel_deinit();

	return EXIT_SUCCESS;
}

int xsobel_start()
{
	// Start sobel filter

#ifdef XSOBEL_DEBUG
	printf("%s \n",__func__);
#endif

	xsobel_init();

	//XImage_filter_Start(&sobel_handler);
	*(volatile u32*)(sobel_handler.Control_bus_BaseAddress) = 0x81;

	xsobel_deinit();
	return EXIT_SUCCESS;
}

int xsobel_stop()
{

#ifdef XSOBEL_DEBUG
	printf("%s \n",__func__);
#endif
	xsobel_init();

	XImage_filter_DisableAutoRestart(&sobel_handler);

	int timeout=5;

	while(!XImage_filter_IsIdle(&sobel_handler)&& timeout)
	{
		timeout--;
		usleep(500);
	}

//	if(!timeout)
//		printf("xsobel_stop :: error \n");

	xsobel_deinit();
	return EXIT_SUCCESS;
}

int xsobel_deinit()
{

#ifdef XSOBEL_DEBUG
	printf("%s \n",__func__);
#endif

	XImage_filter_Release(&sobel_handler);
	return EXIT_SUCCESS;
}
