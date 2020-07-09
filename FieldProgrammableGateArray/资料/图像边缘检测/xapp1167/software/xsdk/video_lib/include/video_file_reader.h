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
* @file video_file_reader.h
*
* Header file for frame extraction from a video file by ffmpeg.
*
*******************************************************************************/

#ifndef _VIDEO_FILE_READER_H_
#define _VIDEO_FILE_READER_H_

#ifdef __cplusplus
extern "C"
{
#endif

//#ifndef UINT64_C
//#define UINT64_C(c) (c ## ULL)
//#endif

#include "common.h"
#include "v4l2_helper.h"
#include <libavcodec/avcodec.h>
#include <libavformat/avformat.h>
#include <libswscale/swscale.h>

#define VIDEO_FILE_NAME "input_video"
#define PIXEL_FORMAT    AV_PIX_FMT_YUYV422

struct video_frame {
    AVFormatContext     *pFormatCtx;
    AVCodecContext      *pCodecCtx;
    AVCodec             *pCodec;
    AVFrame             *pFrame; 
    AVFrame             *pFrameYUYV;
    struct SwsContext   *img_convert_ctx;
    uint8_t             *pFrameBuf;
    int                 streamIndex;

    int                 width;
    int                 height;
    int                 stride;
    volatile int        ready;
    volatile int        start;
    volatile int        on;
    struct buffer       *b; 
};

int init_video_file_reader(struct video_frame *v, struct v4l2_pix_format format);
int decode_one_frame(struct video_frame *v, unsigned char* data);
void *process_video_file_reader(void *ptr);
int uninit_video_file_reader(struct video_frame *v);


#ifdef __cplusplus
}
#endif

#endif
