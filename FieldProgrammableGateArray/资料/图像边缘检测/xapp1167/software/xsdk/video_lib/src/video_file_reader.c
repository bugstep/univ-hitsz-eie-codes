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
* @file video_file_reader.c
*
******************************************************************************/

#include "video_file_reader.h"


int init_video_file_reader(struct video_frame *v, struct v4l2_pix_format format) {

    int i;
    if (NULL == v) return -1;
    v->width = format.width;
    v->height = format.height;
    v->stride = format.bytesperline;
    v->ready = 0;
    v->start = 1;
    v->on = 1;
    v->b = 0;

    // Register all formats and codecs
    av_register_all();
    v->pFormatCtx = avformat_alloc_context();
    
    // Open video file
    if(avformat_open_input(&v->pFormatCtx, VIDEO_FILE_NAME, NULL, NULL)!=0) {
        printf("\n Incorrect input: open video file (%s) failed.\n Need video file \"input_video\" on SD card.\n Turning on TPG input.\n", VIDEO_FILE_NAME);
        return -1; // Couldn't open file
    }
  
    // Retrieve stream information
    if(avformat_find_stream_info(v->pFormatCtx, NULL)<0) return -1; // Couldn't find stream information
  
    // Dump information about file onto standard error
    //av_dump_format(v->pFormatCtx, 0, VIDEO_FILE_NAME, 0);
    
    // Find the first video stream
    v->streamIndex=-1;
    for(i=0; i<v->pFormatCtx->nb_streams; i++) {
        if(v->pFormatCtx->streams[i]->codec->codec_type==AVMEDIA_TYPE_VIDEO) {
            v->streamIndex=i;
            //printf("vS=%d\n", v->streamIndex);
            break;
        }
    }
    if(v->streamIndex==-1) return -1; // Couldn't find a video stream
  
    // Get a pointer to the codec context for the video stream
    v->pCodecCtx=v->pFormatCtx->streams[v->streamIndex]->codec;
  
    // Find the decoder for the video stream
    if(NULL == (v->pCodec=avcodec_find_decoder(v->pCodecCtx->codec_id))) return -1; // Couldn't find codec
  
    // Open codec
    if(avcodec_open2(v->pCodecCtx, v->pCodec, NULL)<0) return -1; // Couldn't open codec


    v->img_convert_ctx = sws_getContext(v->pCodecCtx->width, v->pCodecCtx->height, v->pCodecCtx->pix_fmt, 
                                        v->width, v->height, PIXEL_FORMAT, SWS_FAST_BILINEAR, NULL, NULL, NULL);
    // Allocate video frame
    v->pFrame=avcodec_alloc_frame();

    return 0;
}

int decode_one_frame(struct video_frame *v, unsigned char *data) {
    if (NULL == v || NULL == data) return -1;

    // Allocate an AVFrame structure
    v->pFrameYUYV=avcodec_alloc_frame();
  
    // Determine required buffer size and allocate buffer
    //numBytes=avpicture_get_size(PIXEL_FORMAT, v->stride/BYTE_PER_PIXEL, v->height);
    //printf("numBytes=%d\n", numBytes);
    //v->pFrameBuf=(uint8_t*)av_malloc(numBytes*sizeof(uint8_t));
    v->pFrameBuf = (uint8_t*)data;
  
    // Assign appropriate parts of buffer to image planes in pFrameYUYV
    // Note that pFrameYUYV is an AVFrame, but AVFrame is a superset of AVPicture
    avpicture_fill((AVPicture *)v->pFrameYUYV, v->pFrameBuf, PIXEL_FORMAT, v->width, v->height);
    v->pFrameYUYV->linesize[0] = v->stride;


    int frameFinished = 0;
    int ret = 0;
    AVPacket        packet;
    av_init_packet(&packet);
begin:
    while ((ret = av_read_frame(v->pFormatCtx, &packet)) >= 0) {
        if (packet.stream_index == v->streamIndex) {
            // Decode video frame
            avcodec_decode_video2(v->pCodecCtx, v->pFrame, &frameFinished, &packet);
            if (frameFinished) {
                //printf("ready to write\n");
	        // Convert the image from its native format to YUYV
    	        sws_scale(v->img_convert_ctx,
                          (const uint8_t *const *)v->pFrame->data,
                          v->pFrame->linesize,
                          0,
                          v->pCodecCtx->height,
                          v->pFrameYUYV->data,
                          v->pFrameYUYV->linesize);
		av_free_packet(&packet);
                break;
            }
        }
        av_free_packet(&packet);
    }
    if (ret < 0) { //eof
        if (av_seek_frame(v->pFormatCtx, v->streamIndex, 0, AVSEEK_FLAG_ANY) < 0) {
            printf("rewind video failed.\n");
            return -1;
        }
        goto begin;
    }

    // Free the YUYV image
    av_free(v->pFrameYUYV);

    return 0;
}

void *process_video_file_reader(void *ptr) {
    
    struct video_frame *v = (struct video_frame *)ptr;
    while (v->on) {
        if (v->start) {
            v->ready = 0;
            decode_one_frame(v, v->b->v4l2_buff);
            v->start = 0;
            v->ready = 1;
        }
    }
    return 0;
}

int uninit_video_file_reader(struct video_frame *v) {

    if (NULL == v) return -1;
    
    // Free the source frame
    av_free(v->pFrame);
    
    // Close the codec
    avcodec_close(v->pCodecCtx);
    
    // Close the video file
    avformat_close_input(&v->pFormatCtx);

    return 0;
}
