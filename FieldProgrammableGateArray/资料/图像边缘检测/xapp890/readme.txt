*************************************************************************
   ____  ____ 
  /   /\/   / 
 /___/  \  /   
 \   \   \/    © Copyright 2012 Xilinx, Inc. All rights reserved.
  \   \        This file contains confidential and proprietary 
  /   /        information of Xilinx, Inc. and is protected under U.S. 
 /___/   /\    and international copyright and other intellectual 
 \   \  /  \   property laws. 
  \___\/\___\ 
 
*************************************************************************

Vendor: Xilinx 
Current readme.txt Version: 1.0.0
Date Last Modified:  19SEP2012
Date Created: 19SEP2012

Associated Filename: xapp890.zip
Associated Document: XAPP890, Zynq Sobel Filter Implementation Using
                     Vivado HLS

Supported Device(s): Zynq-7000 
   
*************************************************************************

Disclaimer: 

      This disclaimer is not a license and does not grant any rights to 
      the materials distributed herewith. Except as otherwise provided in 
      a valid license issued to you by Xilinx, and to the maximum extent 
      permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE 
      "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL 
      WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
      INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, 
      NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and 
      (2) Xilinx shall not be liable (whether in contract or tort, 
      including negligence, or under any other theory of liability) for 
      any loss or damage of any kind or nature related to, arising under 
      or in connection with these materials, including for any direct, or 
      any indirect, special, incidental, or consequential loss or damage 
      (including loss of data, profits, goodwill, or any type of loss or 
      damage suffered as a result of any action brought by a third party) 
      even if such damage or loss was reasonably foreseeable or Xilinx 
      had been advised of the possibility of the same.

Critical Applications:

      Xilinx products are not designed or intended to be fail-safe, or 
      for use in any application requiring fail-safe performance, such as 
      life-support or safety devices or systems, Class III medical 
      devices, nuclear facilities, applications related to the deployment 
      of airbags, or any other applications that could lead to death, 
      personal injury, or severe property or environmental damage 
      (individually and collectively, "Critical Applications"). Customer 
      assumes the sole risk and liability of any use of Xilinx products 
      in Critical Applications, subject only to applicable laws and 
      regulations governing limitations on product liability.

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS 
FILE AT ALL TIMES.

*************************************************************************
This readme file contains these sections:

1. REVISION HISTORY
2. OVERVIEW
3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS
4. DESIGN FILE HIERARCHY
5. INSTALLATION AND OPERATING INSTRUCTIONS
6. SUPPORT


1. REVISION HISTORY 

            Readme  
Date        Version      Revision Description
=========================================================================
19SEP2012   1.0          Initial Xilinx release.
=========================================================================
2. OVERVIEW

This readme describes how to use the files that come with XAPP890.

The design implements a Sobel edge detection algorithm starting with C code.
The Vivado HLS tool generated RTL for this algorithm is used in the 
Zynq-7000 AP SoC Targeted Reference Design.

3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS

* Xilinx ISE System Edition 14.2
* Vivado HLS 2012.2

4. DESIGN FILE HIERARCHY

The directory structure underneath this top-level folder is described 
below:

\.
 |   Source files for the Sobel edge detection algorithm. This includes
 |   algorithm C files, testbench files and test images.
\sobel_rd_prj
 |   This folder contains project files for Vivado HLS tool. 
 |   Opening this directory in Vivado HLS will start the project.
 
5. INSTALLATION AND OPERATING INSTRUCTIONS 

1) Install the Xilinx ISE System Edition 14.2
2) Install Vivado HLS 2012.2
3) Follow the steps in XAPP890 to generate the RTL for the algorithm

6. SUPPORT

To obtain technical support for this reference design, go to 
www.xilinx.com/support to locate answers to known issues in the Xilinx
Answers Database or to create a WebCase.  
