#*******************************************************************************
#Vendor: Xilinx #Associated Filename: run.tcl
#Purpose: Vivado HLS tcl script 
#                                                
#*******************************************************************************
#© Copyright 2008 - 2013 Xilinx, Inc. All rights reserved. 
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

catch {eval exec "uname -m"} machine_name
catch {eval exec "uname -s"} kernel_name
catch {eval exec "vivado_hls -r"} vivado_hls_home

if {$machine_name == "x86_64" && $kernel_name == "Linux"} {
    set gcc_lib $vivado_hls_home/lnx64/tools/gcc/lib64
} elseif {$machine_name == "i686" && $kernel_name == "Linux"} {
    set gcc_lib $vivado_hls_home/lnx32/tools/gcc/lib
} else {
    set gcc_lib $vivado_hls_home/msys/lib/gcc/mingw32/4.6.2
}
set ::env(LD_LIBRARY_PATH) $gcc_lib:$::env(LD_LIBRARY_PATH)

# Create the design project
open_project prj -reset

# Define the top level function for hardware synthesis
set_top image_filter

# Select the files for hardware synthesis
add_files top.cpp
if { [info exists files] } {
    add_files $files
}

# Select the files required for the testbench
add_files -tb test.cpp
add_files -tb opencv_top.cpp
add_files -tb ../common/images/test_1080p.bmp
if { [info exists tb_files] } {
    add_files -tb $tb_files
}

# Set the name of the solution for this design
open_solution "solution1"

# Select the FPGA 
set_part "xc7z020clg484-1"
create_clock -period "150MHz"

if { [info exists special_config] } {
    eval $special_config
}
config_schedule -verbose

# Set flags
set csim_flag 1
if { [info exists ::env(csim_flag)] } {
    set csim_flag $::env(csim_flag)
}
set csynth_flag 1
if { [info exists ::env(csynth_flag)] } {
    set csynth_flag $::env(csynth_flag)
}
set cosim_flag 0
if { [info exists ::env(cosim_flag)] } {
    set cosim_flag $::env(cosim_flag)
}
set export_flag 1
if { [info exists ::env(export_flag)] } {
    set export_flag $::env(export_flag)
}


if { $csim_flag == 1 } {
    # Vivado HLS commands for C simulation
    csim_design -mflags -j4 -O
}

if { $csynth_flag == 1 } {
    # Vivado HLS commands for C to RTL synthesis
    csynth_design
}

if { $cosim_flag == 1 } {
    # Vivado HLS commands for RTL simulation
    cosim_design
}

if { $export_flag == 1 } {
    # Vivado HLS commands for RTL implementation
    export_design
}

exit
