############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2012 Xilinx Inc. All rights reserved.
############################################################
open_project sobel_rd_prj
set_top sobel_filter
add_files sobel.cpp
add_files -tb ap_bmp.cpp
add_files -tb result_1080p_golden.bmp
add_files -tb sobel_test.cpp
add_files -tb test_1080p.bmp
open_solution "solution1"
set_part  {xc7z020clg484-1}
create_clock -period 5

source "./sobel_rd_prj/solution1/directives.tcl"
csynth_design
