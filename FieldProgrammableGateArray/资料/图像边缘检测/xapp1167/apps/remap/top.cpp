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
#include "top.h"
#include <iostream>

namespace hls {

void gray2YUYV(
            Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC1> &gray,
            Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC2> &yuyv)
{
    int rows = gray.rows;
    int cols = gray.cols;
    PIXEL_C1 s;
    PIXEL_C2 d;
    for (int row = 0; row < rows; row++) {
        for (int col = 0; col < cols; col++) {
#pragma HLS loop_flatten off
#pragma HLS pipeline II=1
            gray >> s;
            d.val[0] = s.val[0];
            d.val[1] = 128;
            yuyv << d;
        }
    }
}

}

void image_filter(AXI_STREAM& video_in, AXI_STREAM& video_out, int rows, int cols,
                  ap_fixed<24,16> cameraMA[9], ap_fixed<18,4> distC2[8], ap_fixed<18,4> RMA[9]) {
    //Create AXI streaming interfaces for the core
#pragma HLS INTERFACE axis port=video_in bundle=INPUT_STREAM
#pragma HLS INTERFACE axis port=video_out bundle=OUTPUT_STREAM

#pragma HLS INTERFACE s_axilite port=rows bundle=CONTROL_BUS offset=0x14
#pragma HLS INTERFACE s_axilite port=cols bundle=CONTROL_BUS offset=0x1C
#pragma HLS INTERFACE s_axilite port=cameraMA bundle=CONTROL_BUS //bram?
#pragma HLS INTERFACE s_axilite port=distC2 bundle=CONTROL_BUS //bram?
#pragma HLS INTERFACE s_axilite port=RMA bundle=CONTROL_BUS //bram?
#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS

#pragma HLS INTERFACE ap_stable port=rows
#pragma HLS INTERFACE ap_stable port=cols

    IMAGE_C2 img_0(rows, cols);
    IMAGE_C1 img_0_Y(rows, cols);
    IMAGE_C1 img_0_UV(rows, cols);
    IMAGE_C1 img_1(rows, cols);
    IMAGE_C2 img_2(rows, cols);

    hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_16SC2> hmap1(rows, cols);
    hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_16UC2> hmap2(rows, cols);

#pragma HLS dataflow

    ap_fixed<18,4> distC[8];
    hls::Window<3,3,ap_fixed<24,16> > cameraM;
//     float distC[5];
//     hls::Window<3,3,float> cameraM;
    hls::Window<3,3,ap_fixed<25,4> > RM;

//     float distC[8];
//     hls::Window<3,3,float > cameraM;
//     hls::Window<3,3,float > RM;

    int k = 0;
    for(int i = 0; i < 3; i++) {
        for(int j = 0; j < 3; j++) {
            cameraM.val[i][j] = cameraMA[k];
            RM.val[i][j] = RMA[k];
//             std::cout << RM.val[i][j].to_string(2) << "\n";
//             std::cout << ap_ufixed<1,1>::RType<8,4,true>::div_w << " ";
//             std::cout << ap_ufixed<1,1>::RType<8,4,true>::div_i << " ";
//             std::cout << ap_ufixed<1,1>::RType<8,4,true>::div_s << "\n";
//             if(RM.val[i][j] == 0) {
//                 std::cout << "infinity\n";
//             } else {
//                 std::cout << (ap_ufixed<1,1>(1.0f)/RM.val[i][j]).to_string(2) << "  -1,1,f\n";
//                 std::cout << (ap_ufixed<2,2>(1.0f)/RM.val[i][j]).to_string(2) << "  -2,2,f\n";
//                 std::cout << (ap_ufixed<3,3>(1.0f)/RM.val[i][j]).to_string(2) << "  -3,3,f\n";
//                 std::cout << (ap_ufixed<4,4>(1.0f)/RM.val[i][j]).to_string(2) << "  -4.4,f\n";
//                 std::cout << (ap_ufixed<5,1>(1.0f)/RM.val[i][j]).to_string(2) << "  -5,1,f\n";
//                 std::cout << (ap_ufixed<6,2>(1.0f)/RM.val[i][j]).to_string(2) << "  -6,2,f\n";
//                 std::cout << (ap_ufixed<7,3>(1.0f)/RM.val[i][j]).to_string(2) << "  -7,3,f\n";
//                 std::cout << (ap_ufixed<8,4>(1.0f)/RM.val[i][j]).to_string(2) << "  -8.4,f\n";
//                 std::cout << (ap_fixed<1,1>(1.0f)/RM.val[i][j]).to_string(2) << "  -1,1,t\n";
//                 std::cout << (ap_fixed<2,2>(1.0f)/RM.val[i][j]).to_string(2) << "  -2,2,t\n";
//                 std::cout << (ap_fixed<3,3>(1.0f)/RM.val[i][j]).to_string(2) << "  -3,3,t\n";
//                 std::cout << (ap_fixed<4,4>(1.0f)/RM.val[i][j]).to_string(2) << "  -4.4,t\n";
//                 std::cout << (ap_fixed<36,18>(1.0f)/RM.val[i][j]).to_string(2) << "  -\n";
//             }
            k++;
        }
    }

    for(int i = 0; i < 5; i++) {
        distC[i] = distC2[i];
    }

    hls::AXIvideo2Mat(video_in, img_0);
    hls::Split(img_0, img_0_Y, img_0_UV);
    hls::Consume(img_0_UV);
    hls::InitUndistortRectifyMapInverse(cameraM, distC, RM, hmap1, hmap2);
    hls::Remap<32>(img_0_Y, img_1, hmap1, hmap2, HLS_INTER_LINEAR);
    hls::gray2YUYV(img_1, img_2);
    hls::Mat2AXIvideo(img_2, video_out);
}
