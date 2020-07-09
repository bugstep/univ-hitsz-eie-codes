/*******************************************************************************
Vendor: Xilinx 
Associated Filename: sobel_test.cpp
Purpose: Testbench file for sobel edge detection
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

#include <malloc.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "sobel.h"


//Arrays to send and receive data from the accelerator
AXI_PIXEL in_pix[MAX_HEIGHT][MAX_WIDTH];
AXI_PIXEL out_pix[MAX_HEIGHT][MAX_WIDTH];

int main () {
  int           	x,y;
  int			width, height;
  char *tempbuf;
  char *tempbuf1;
  int check_results = 0;

  tempbuf = (char *)malloc(2000 * sizeof(char));
  tempbuf1 = (char *)malloc(2000 * sizeof(char));


  // Arrays to store image data
  unsigned char *R;
  unsigned char *G;
  unsigned char *B;
  

  R = (unsigned char *)malloc(MAX_HEIGHT * MAX_WIDTH * sizeof(unsigned char));
  G = (unsigned char *)malloc(MAX_HEIGHT * MAX_WIDTH * sizeof(unsigned char));
  B = (unsigned char *)malloc(MAX_HEIGHT * MAX_WIDTH * sizeof(unsigned char));

  //Get image data from disk
  sprintf(tempbuf, "%s.bmp", INPUT_IMAGE_BASE);
  
  // Fill a frame with data
  int read_tmp = BMP_Read(tempbuf, MAX_HEIGHT, MAX_WIDTH, R, G, B);
  if(read_tmp != 0) {
    printf("%s Loading image failed\n", tempbuf);
    exit (1);
  }
  
  // Copy Input Image to pixel data structure
  // Hardware accelerator works on video pixel streams
   for(x = 0; x < MAX_HEIGHT; x++){
    for(y = 0; y < MAX_WIDTH; y++){
      RGB pixel;
      pixel.R = R[x*MAX_WIDTH + y];
      pixel.G = G[x*MAX_WIDTH + y];
      pixel.B = B[x*MAX_WIDTH + y];
      in_pix[x][y].data = (pixel.R,pixel.G);
      in_pix[x][y].data = (in_pix[x][y].data,pixel.B);
    }
   }
  
  // Hardware Function
   sobel_filter(in_pix,out_pix, 1080, 1920);
  
  // Copy Output video pixel stream to Output Image data structure
  for(x =0; x < MAX_HEIGHT; x++){
    for(y = 0; y < MAX_WIDTH; y++){
      RGB pixel;
      pixel.B = out_pix[x][y].data.range(7,0);
      pixel.G = out_pix[x][y].data.range(15,8);
      pixel.R = out_pix[x][y].data.range(23,16);
      R[x*MAX_WIDTH + y] = pixel.R.to_int();
      G[x*MAX_WIDTH + y] = pixel.G.to_int();
      B[x*MAX_WIDTH + y] = pixel.B.to_int();
    }
   }
  
  //Write the image back to disk
  sprintf(tempbuf1, "%s.bmp", OUTPUT_IMAGE_BASE);
  int write_tmp = BMP_Write(tempbuf1, MAX_HEIGHT, MAX_WIDTH, R, G, B);
  if(write_tmp != 0){ 
    printf("WriteBMP %s failed\n", tempbuf);
    exit(1);
  }
  free(R);
  free(G);
  free(B);
  free(tempbuf);
  free(tempbuf1);
  printf("Simulation Complete\n");
  check_results = system("diff result_1080p_golden.bmp result_1080p.bmp");
  if(check_results != 0){
    printf("Output image has mismatches with reference output image!\n");
    check_results = 1;
  }
  else{
    printf("Output image matches the reference output image\n");
  }
  return check_results;
}
