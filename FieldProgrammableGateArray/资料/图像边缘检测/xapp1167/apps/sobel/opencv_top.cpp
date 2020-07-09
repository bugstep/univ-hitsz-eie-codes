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

using namespace cv;

void chroma_upsampling(Mat& yuv422, Mat& yuv444) {
    for (int row = 0; row < yuv422.rows; row++) {
        for (int col = 0; col < yuv444.cols; col+=2) {
            Vec2b p0_in = yuv422.at<Vec2b>(row, col);
            Vec2b p1_in = yuv422.at<Vec2b>(row, col+1);
            Vec3b p0_out, p1_out;
            p0_out.val[0] = p0_in.val[0];
            p0_out.val[1] = p0_in.val[1];
            p0_out.val[2] = p1_in.val[1];
            p1_out.val[0] = p1_in.val[0];
            p1_out.val[1] = p0_in.val[1];
            p1_out.val[2] = p1_in.val[1];
            yuv444.at<Vec3b>(row, col) = p0_out;
            yuv444.at<Vec3b>(row, col+1) = p1_out;
        }
    }
}

void chroma_downsampling(Mat& yuv444, Mat& yuv422) {
    for (int row = 0; row < yuv444.rows; row++) {
        for (int col = 0; col < yuv444.cols; col+=2) {
            Vec3b p0_in = yuv444.at<Vec3b>(row, col);
            Vec3b p1_in = yuv444.at<Vec3b>(row, col+1);
            Vec2b p0_out, p1_out;
            p0_out.val[0] = p0_in.val[0];
            p0_out.val[1] = p0_in.val[1];
            p1_out.val[0] = p1_in.val[0];
            p1_out.val[1] = p0_in.val[2];
            yuv422.at<Vec2b>(row, col) = p0_out;
            yuv422.at<Vec2b>(row, col+1) = p1_out;
        }
    }
}

Vec2b cv_sobel_operator(unsigned char y_window[3][3])
{
// parameters set
  int XR0C0 = 1;
  int XR0C1 = 0;
  int XR0C2 = -1;
  int XR1C0 = 2;
  int XR1C1 = 0;
  int XR1C2 = -2;
  int XR2C0 = 1;
  int XR2C1 = 0;
  int XR2C2 = -1;
  
  int YR0C0 = 1;
  int YR0C1 = 2;
  int YR0C2 = 1;
  int YR1C0 = 0;
  int YR1C1 = 0;
  int YR1C2 = 0;
  int YR2C0 = -1;
  int YR2C1 = -2;
  int YR2C2 = -1;

  int cv_high_thresh = 200;
  int cv_low_thresh = 100;
  int cv_invert = 0;

  short x_weight = 0;
  short y_weight = 0;

  short edge_weight;
  unsigned char edge_val;
  Vec2b pixel;
  
  const int  x_op[3][3] = {{XR0C0,XR0C1,XR0C2},
                           {XR1C0,XR1C1,XR1C2},
                           {XR2C0,XR2C1,XR2C2}};

  const int  y_op[3][3] = {{YR0C0,YR0C1,YR0C2},
                           {YR1C0,YR1C1,YR1C2},
                           {YR2C0,YR2C1,YR2C2}};

  //Compute approximation of the gradients in the X-Y direction
  for(int i = 0; i < 3; i++){
    for(int j = 0; j < 3; j++){

      // X direction gradient
      x_weight = x_weight + (y_window[i][j] * x_op[i][j]);

      // Y direction gradient
      y_weight = y_weight + (y_window[i][j] * y_op[i][j]);
    }
  }

  edge_weight = ABS(x_weight) + ABS(y_weight);
  
  if (edge_weight < 255)
    edge_val = (255-(unsigned char)(edge_weight));
  else
    edge_val = 0;

  //Edge thresholding
  if(edge_val > cv_high_thresh)
    edge_val = 255;
  else if(edge_val < cv_low_thresh)
    edge_val = 0;

  if (cv_invert == 1)
    edge_val = 255 - edge_val;
  else
    edge_val = edge_val;

  pixel.val[0] = edge_val;
  pixel.val[1] = 128;

  return pixel;
}


void opencv_image_filter(IplImage *_src, IplImage *_dst) {
    Mat src(_src);
    Mat dst(_dst);
    unsigned char y;
    unsigned char y_window[3][3];
    unsigned char line_buffer[3][MAX_WIDTH+1];
    int rows = src.rows;
    int cols = src.cols;
    assert(rows <= MAX_HEIGHT);
    assert(cols <= MAX_WIDTH);

    for (int row = 0; row < rows + 1; row++) {
        for (int col = 0; col < cols + 1; col++) {
            Vec2b p;
            unsigned char pix;

            if (row < rows && col < cols) {
                p = src.at<Vec2b>(row, col);
            }
            
            for (int i = 0; i < 3; i++) {
                y_window[i][2] = y_window[i][1];
                y_window[i][1] = y_window[i][0];
            }

            y_window[2][0] = (line_buffer[2][col] = line_buffer[1][col]);
            y_window[1][0] = (pix = line_buffer[1][col] = line_buffer[0][col]);
            y_window[0][0] = (line_buffer[0][col] = p.val[0]);

            int output_row = row-1;
            int output_col = col-1;
            Vec2b edge;

            if(output_row == 0 || output_col == 0 || output_row == (rows-1) || output_col == (cols-1)){
                edge.val[0] = 0;
                edge.val[1] = 128;
            } else {
                edge = cv_sobel_operator(y_window);
            }

            // Account for the spatial shift introduced by the filter.
            if(output_row >= 0 && output_col >= 0) {
                dst.at<Vec2b>(output_row, output_col) = edge;
            }
        }
    }
}


void hls_image_filter(IplImage *_src, IplImage *_dst) {
    Mat src(_src);
    Mat dst(_dst);
    AXI_STREAM src_axi, dst_axi;
    cvMat2AXIvideo(src, src_axi);
    image_filter(src_axi, dst_axi, src.rows, src.cols,
                 1,  0, -1,  2,  0, -2,  1,  0, -1,
                 1,  2,  1,  0,  0,  0, -1, -2, -1,
                 200, 100, 0);
    AXIvideo2cvMat(dst_axi, dst);
}

