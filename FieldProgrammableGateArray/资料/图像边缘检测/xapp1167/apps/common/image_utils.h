/*****************************************************************************
 *
 *     Author: Xilinx, Inc.
 *
 *     This text contains proprietary, confidential information of
 *     Xilinx, Inc. , is distributed by under license from Xilinx,
 *     Inc., and may be used, copied and/or disclosed only pursuant to
 *     the terms of a valid license agreement with Xilinx, Inc.
 *
 *     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"
 *     AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND
 *     SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,
 *     OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,
 *     APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION
 *     THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,
 *     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE
 *     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY
 *     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE
 *     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR
 *     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF
 *     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *     FOR A PARTICULAR PURPOSE.
 *
 *     Xilinx products are not intended for use in life support appliances,
 *     devices, or systems. Use in such applications is expressly prohibited.
 *
 *     (c) Copyright 2014 Xilinx Inc.
 *     All rights reserved.
 *
 *****************************************************************************/

#ifndef _IMAGE_COMPARE_H_
#define _IMAGE_COMPARE_H_

#include <stdio.h>
#include <opencv2/opencv.hpp>

using namespace cv;

void cvtcolor_rgb2yuv422(Mat& rgb, Mat& yuv) {
    Mat yuv444(rgb.rows, rgb.cols, CV_8UC3);
    cvtColor(rgb, yuv444, CV_BGR2YUV);
    // chroma subsampling: yuv444 -> yuv422;
    for (int row = 0; row < yuv444.rows; row++) {
        for (int col = 0; col < yuv444.cols; col+=2) {
            Vec3b p0_in = yuv444.at<Vec3b>(row, col);
            Vec3b p1_in = yuv444.at<Vec3b>(row, col+1);
            Vec2b p0_out, p1_out;
            p0_out.val[0] = p0_in.val[0];
            p0_out.val[1] = p0_in.val[1];
            p1_out.val[0] = p1_in.val[0];
            p1_out.val[1] = p0_in.val[2];
            yuv.at<Vec2b>(row, col) = p0_out;
            yuv.at<Vec2b>(row, col+1) = p1_out;
        }
    }
}

int image_compare(const char* output_image, const char* golden_image) {
    if (!(output_image) || !(golden_image)) {
        printf("Failed to open images...exiting.\n");
        return -1;
    } else {
        Mat o = imread(output_image);
        Mat g = imread(golden_image);
        assert(o.rows == g.rows && o.cols == g.cols);
        assert(o.channels() == g.channels() && o.depth() == g.depth());
        printf("rows = %d, cols = %d, channels = %d, depth = %d\n", o.rows, o.cols, o.channels(), o.depth());
        int flag = 0;
        for (int i = 0; i < o.rows && flag == 0; i++) {
            for (int j = 0; j < o.cols && flag == 0; j++) {
                for (int k = 0; k < o.channels(); k++) {
                    unsigned char p_o = (unsigned char)*(o.data + o.step[0]*i + o.step[1]*j + k);
                    unsigned char p_g = (unsigned char)*(g.data + g.step[0]*i + g.step[1]*j + k);
                    if (p_o != p_g) {
                        printf("First mismatch found at row = %d, col = %d\n", i, j);
                        printf("(channel%2d) output:%5d, golden:%5d\n", k, p_o, p_g);
                        flag = 1;
                        break;
                    }
                }
            }
        }
        if (flag)
            printf("Test Failed!\n");
        else
            printf("Test Passed!\n");

        return flag;
    }
}


#endif
