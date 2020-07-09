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

//Sobel Computation using a 3x3 neighborhood
YUV_PIXEL sobel_operator(Y_WINDOW *window,
                   int XR0C0, int XR0C1, int XR0C2, int XR1C0, int XR1C1, int XR1C2, int XR2C0, int XR2C1, int XR2C2,
                   int YR0C0, int YR0C1, int YR0C2, int YR1C0, int YR1C1, int YR1C2, int YR2C0, int YR2C1, int YR2C2,
                   int high_thresh, int low_thresh, int invert)
{
  short x_weight = 0;
  short y_weight = 0;

  short edge_weight;
  unsigned char edge_val;
  YUV_PIXEL pixel;

  char i;
  char j;


  const char x_op[3][3] = {{XR0C0,XR0C1,XR0C2},
                           {XR1C0,XR1C1,XR1C2},
                           {XR2C0,XR2C1,XR2C2}};

  const char y_op[3][3] = {{YR0C0,YR0C1,YR0C2},
                           {YR1C0,YR1C1,YR1C2},
                           {YR2C0,YR2C1,YR2C2}};


  //Compute approximation of the gradients in the X-Y direction
  for(i=0; i < 3; i++){
    for(j = 0; j < 3; j++){

      // X direction gradient
      x_weight = x_weight + (window->getval(i,j) * x_op[i][j]);

      // Y direction gradient
      y_weight = y_weight + (window->getval(i,j) * y_op[i][j]);
    }
  }

  edge_weight = ABS(x_weight) + ABS(y_weight);

  if (edge_weight < 255)
    edge_val = (255-(unsigned char)(edge_weight));
  else
    edge_val = 0;

  //Edge thresholding
  if(edge_val > high_thresh)
    edge_val = 255;
  else if(edge_val < low_thresh)
    edge_val = 0;

  // Invert
  if (invert == 1)
    edge_val = 255 - edge_val;
  else
    edge_val = edge_val;

  pixel.val[0] = edge_val;
  pixel.val[1] = 128;

  return pixel;
}

void sobel_filter_core(YUV_IMAGE& src, YUV_IMAGE& dst, int rows, int cols,
                       int C_XR0C0, int C_XR0C1, int C_XR0C2, int C_XR1C0, int C_XR1C1, int C_XR1C2, int C_XR2C0, int C_XR2C1, int C_XR2C2,
                       int C_YR0C0, int C_YR0C1, int C_YR0C2, int C_YR1C0, int C_YR1C1, int C_YR1C2, int C_YR2C0, int C_YR2C1, int C_YR2C2,
                       int c_high_thresh, int c_low_thresh, int c_invert)
{
  Y_BUFFER buff_A;
  Y_WINDOW buff_C;

  for(int row = 0; row < rows+1; row++){
    for(int col = 0; col < cols+1; col++){
#pragma HLS loop_flatten off
#pragma HLS dependence variable=&buff_A false
#pragma HLS PIPELINE II = 1

      // Temp values are used to reduce the number of memory reads
      unsigned char temp;
      YUV_PIXEL tempx;

      //Line Buffer fill
      if(col < cols){
          buff_A.shift_down(col);
          temp = buff_A.getval(0,col);
      }

      //There is an offset to accomodate the active pixel region
      //There are only MAX_WIDTH and MAX_HEIGHT valid pixels in the image
      if(col < cols && row < rows){
          YUV_PIXEL new_pix;
          src >> new_pix;
          tempx = new_pix;
          buff_A.insert_bottom(tempx.val[0],col);
      }

      //Shift the processing window to make room for the new column
      buff_C.shift_right();

      //The Sobel processing window only needs to store luminance values
      //rgb2y function computes the luminance from the color pixel
      if(col < cols){
          buff_C.insert(buff_A.getval(2,col),2,0);
          buff_C.insert(temp,1,0);
          buff_C.insert(tempx.val[0],0,0);
      }
      YUV_PIXEL edge;

      //The sobel operator only works on the inner part of the image
      //This design assumes there are no edges on the boundary of the image
      if( row <= 1 || col <= 1 || row > (rows-1) || col > (cols-1)){
          edge.val[0] = 0;
          edge.val[1] = 128;
      } else {
          //Sobel operation on the inner portion of the image
          edge = sobel_operator(&buff_C,
                                C_XR0C0, C_XR0C1, C_XR0C2, C_XR1C0, C_XR1C1, C_XR1C2, C_XR2C0, C_XR2C1, C_XR2C2,
                                C_YR0C0, C_YR0C1, C_YR0C2, C_YR1C0, C_YR1C1, C_YR1C2, C_YR2C0, C_YR2C1, C_XR2C2,
                                c_high_thresh, c_low_thresh, c_invert);
      }

      //The output image is offset from the input to account for the line buffer
      if(row > 0 && col > 0) {
          dst << edge;
      }
    }
  }
}

void image_filter(AXI_STREAM& video_in, AXI_STREAM& video_out, int rows, int cols,
                  int C_XR0C0, int C_XR0C1, int C_XR0C2, int C_XR1C0, int C_XR1C1, int C_XR1C2, int C_XR2C0, int C_XR2C1, int C_XR2C2,
                  int C_YR0C0, int C_YR0C1, int C_YR0C2, int C_YR1C0, int C_YR1C1, int C_YR1C2, int C_YR2C0, int C_YR2C1, int C_YR2C2,
                  int c_high_thresh, int c_low_thresh, int c_invert)
{
    //Create AXI streaming interfaces for the core
#pragma HLS INTERFACE axis port=video_in bundle=INPUT_STREAM
#pragma HLS INTERFACE axis port=video_out bundle=OUTPUT_STREAM

#pragma HLS INTERFACE s_axilite port=rows bundle=CONTROL_BUS offset=0x14
#pragma HLS INTERFACE s_axilite port=cols bundle=CONTROL_BUS offset=0x1C
#pragma HLS INTERFACE s_axilite port=return bundle=CONTROL_BUS

#pragma HLS INTERFACE ap_stable port=rows
#pragma HLS INTERFACE ap_stable port=cols

#pragma HLS INTERFACE s_axilite port=C_XR0C0 bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=C_XR0C1 bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=C_XR0C2 bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=C_XR1C0 bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=C_XR1C1 bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=C_XR1C2 bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=C_XR2C0 bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=C_XR2C1 bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=C_XR2C2 bundle=CONTROL_BUS

#pragma HLS INTERFACE s_axilite port=C_YR0C0 bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=C_YR0C1 bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=C_YR0C2 bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=C_YR1C0 bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=C_YR1C1 bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=C_YR1C2 bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=C_YR2C0 bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=C_YR2C1 bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=C_YR2C2 bundle=CONTROL_BUS

#pragma HLS INTERFACE s_axilite port=c_high_thresh bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=c_low_thresh bundle=CONTROL_BUS
#pragma HLS INTERFACE s_axilite port=c_invert bundle=CONTROL_BUS

    YUV_IMAGE img_0(rows, cols);
    YUV_IMAGE img_1(rows, cols);
#pragma HLS dataflow
    hls::AXIvideo2Mat(video_in, img_0);
    sobel_filter_core(img_0, img_1, rows, cols,
                      C_XR0C0, C_XR0C1, C_XR0C2, C_XR1C0, C_XR1C1, C_XR1C2, C_XR2C0, C_XR2C1, C_XR2C2,
                      C_YR0C0, C_YR0C1, C_YR0C2, C_YR1C0, C_YR1C1, C_YR1C2, C_YR2C0, C_YR2C1, C_YR2C2,
                      c_high_thresh, c_low_thresh, c_invert);
    hls::Mat2AXIvideo(img_1, video_out);
}
