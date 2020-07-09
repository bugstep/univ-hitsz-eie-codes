/***************************************************************************

*   © Copyright 2013 Xilinx, Inc. All rights reserved. 

*   This file contains confidential and proprietary information of Xilinx,
*   Inc. and is protected under U.S. and international copyright and other
*   intellectual property laws. 

*   DISCLAIMER
*   This disclaimer is not a license and does not grant any rights to the
*   materials distributed herewith. Except as otherwise provided in a valid
*   license issued to you by Xilinx, and to the maximum extent permitted by
*   applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH
*   ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, 
*   EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES
*   OF MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR 
*   PURPOSE; and (2) Xilinx shall not be liable (whether in contract or 
*   tort, including negligence, or under any other theory of liability)
*   for any loss or damage of any kind or nature related to, arising under
*   or in connection with these materials, including for any direct, or any
*   indirect, special, incidental, or consequential loss or damage (including
*   loss of data, profits, goodwill, or any type of loss or damage suffered 
*   as a result of any action brought by a third party) even if such damage
*   or loss was reasonably foreseeable or Xilinx had been advised of the 
*   possibility of the same. 

*   CRITICAL APPLICATIONS 
*   Xilinx products are not designed or intended to be fail-safe, or for use
*   in any application requiring fail-safe performance, such as life-support
*   or safety devices or systems, Class III medical devices, nuclear facilities,
*   applications related to the deployment of airbags, or any other applications
*   that could lead to death, personal injury, or severe property or environmental
*   damage (individually and collectively, "Critical Applications"). Customer
*   assumes the sole risk and liability of any use of Xilinx products in Critical
*   Applications, subject only to applicable laws and regulations governing 
*   limitations on product liability. 

*   THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT 
*   ALL TIMES.

***************************************************************************/

#include "hls_opencv.h"
#include "opencv_top.h"
#include "top.h"


void hls_image_filter(IplImage* src, IplImage* dst) {
    AXI_STREAM src_axi, dst_axi;
    IplImage2AXIvideo(src, src_axi);

//     ap_fixed<24,16> cameraMA[9]={779.39581304742671,  0,  648.18176751976728,  0, 779.39581304742671, 469.0127728188304,    0,         0,    1.0000};

//     ap_fixed<18,4> RMA[9] = {0.99998335432494845,
//                              -0.0046247912274068647,
//     		                  0.0034499824821815268,
//     		                  0.00462365193051852,
//     		                  0.99998925369588942,
//     		                  0.00033813542213031284,
//     		                  -0.0034515092133545438,
//     		                  -0.000322178275473959,
//     		                  0.99999399162460412 };

//     ap_fixed<18,4> distC[8] = {-0.052328758332967629,
//                                 0.15316541901295422,
//                                -0.010661800959287565,
//                                -0.00081658413418102846,
//                                -0.0011613314099990753,
//                                 0.058555707128620654,
//                                 0.067952461054535937,
//                                -0.0070494723568488475};

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

     int i;
    for(i = 0; i < 9; i++) {
        int value = cameraMA[i] * (1 << 8);
        printf("CameraMA set %x\n", value);
    }

    for(i = 0; i < 9; i++) {
        int value = RMA[i] * (1 << 14);
        printf("RMA set %x\n", value);
    }

    for(i = 0; i < 8; i++) {
        int value = distC[i] * (1 << 14);
        printf("Distc set %x\n", value);
    }

    image_filter(src_axi, dst_axi, src->height, src->width, cameraMA, distC, RMA);

    AXIvideo2IplImage(dst_axi, dst);
}

void opencv_image_filter(IplImage* src, IplImage* dst) {
    hls_image_filter(src, dst);
}
