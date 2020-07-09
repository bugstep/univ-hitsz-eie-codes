#*******************************************************************************
#Vendor: Xilinx 
#Associated Filename: sobel.tcl
#Purpose: AutoESL tcl script for Sobel edge detection example
#Revision History: February 13, 2012 - initial release
#                                                
#*******************************************************************************
#© Copyright 2008 - 2012 Xilinx, Inc. All rights reserved. 
#
#This file contains confidential and proprietary information of Xilinx, Inc. and 
#is protected under U.S. and international copyright and other intellectual 
#property laws.
#
#DISCLAIMER
#This disclaimer is not a license and does not grant any rights to the materials 
#distributed herewith. Except as otherwise provided in a valid license issued to 
#you by Xilinx, and to the maximum extent permitted by applicable law: 
#(1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX 
#HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
#INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR 
#FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether 
#in contract or tort, including negligence, or under any other theory of 
#liability) for any loss or damage of any kind or nature related to, arising under 
#or in connection with these materials, including for any direct, or any indirect, 
#special, incidental, or consequential loss or damage (including loss of data, 
#profits, goodwill, or any type of loss or damage suffered as a result of any 
#action brought by a third party) even if such damage or loss was reasonably 
#foreseeable or Xilinx had been advised of the possibility of the same.
#
#CRITICAL APPLICATIONS
#Xilinx products are not designed or intended to be fail-safe, or for use in any 
#application requiring fail-safe performance, such as life-support or safety 
#devices or systems, Class III medical devices, nuclear facilities, applications 
#related to the deployment of airbags, or any other applications that could lead 
#to death, personal injury, or severe property or environmental damage 
#(individually and collectively, "Critical Applications"). Customer assumes the 
#sole risk and liability of any use of Xilinx products in Critical Applications, 
#subject only to applicable laws and regulations governing limitations on product 
#liability. 
#
#THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT 
#ALL TIMES.
#
#*******************************************************************************

# Create the design project
open_project sobel_prj -reset

# Define the top level function for hardware synthesis
set_top sobel_filter

# Select the files for hardware synthesis
add_file sobel.cpp

# Select the files required for the testbench
add_file -tb ap_bmp.cpp
add_file -tb sobel_test.cpp
add_file -tb test_1080p.bmp
add_file -tb result_1080p_golden.bmp

# Each run of AutoESL is based on a solution 
# Set the name of the solution for this design
open_solution "solution1"

# Select the FPGA 
set_part zynq
create_clock -period "200MHz"

# AutoESL commands for C to RTL synthesis
# Analyze the design
elaborate -g

# Generate RTL
autosyn

# ISE Place and Route
autoimpl -export -setup

exit