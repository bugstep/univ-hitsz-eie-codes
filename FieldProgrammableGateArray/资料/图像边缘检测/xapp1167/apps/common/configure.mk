#***************************************************************************
#
#   © Copyright 2013 Xilinx, Inc. All rights reserved. 
#
#   This file contains confidential and proprietary information of Xilinx,
#   Inc. and is protected under U.S. and international copyright and other
#   intellectual property laws. 
#
#   DISCLAIMER
#   This disclaimer is not a license and does not grant any rights to the
#   materials distributed herewith. Except as otherwise provided in a valid
#   license issued to you by Xilinx, and to the maximum extent permitted by
#   applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH
#   ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, 
#   EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES
#   OF MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR 
#   PURPOSE; and (2) Xilinx shall not be liable (whether in contract or 
#   tort, including negligence, or under any other theory of liability)
#   for any loss or damage of any kind or nature related to, arising under
#   or in connection with these materials, including for any direct, or any
#   indirect, special, incidental, or consequential loss or damage (including
#   loss of data, profits, goodwill, or any type of loss or damage suffered 
#   as a result of any action brought by a third party) even if such damage
#   or loss was reasonably foreseeable or Xilinx had been advised of the 
#   possibility of the same. 
#  
#   CRITICAL APPLICATIONS 
#   Xilinx products are not designed or intended to be fail-safe, or for use
#   in any application requiring fail-safe performance, such as life-support
#   or safety devices or systems, Class III medical devices, nuclear facilities,
#   applications related to the deployment of airbags, or any other applications
#   that could lead to death, personal injury, or severe property or environmental
#   damage (individually and collectively, "Critical Applications"). Customer
#   assumes the sole risk and liability of any use of Xilinx products in Critical
#   Applications, subject only to applicable laws and regulations governing 
#   limitations on product liability. 
#   
#   THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT 
#   ALL TIMES.
#
#***************************************************************************/

THIS_DIR := $(shell pwd)
DESIGN := $(shell basename $(THIS_DIR))
TOP_DIR := $(shell dirname $(shell dirname $(THIS_DIR)))

RM := rm -rf

KNAME := $(shell uname -s)
HNAME := unknown
ifeq ($(shell uname -m), *86)
    HNAME := x86
else
    HNAME := x86_64
endif

ARCH := unknown
ifeq ($(HNAME)_$(KNAME), x86_64_Linux)
    ARCH := lnx64
else
    ifeq ($(HNAME)_$(KNAME), x86_Linux)
        ARCH := lnx32
    else
        ARCH := win32
    endif
endif

SUFFIX := 

VERSION := 2014.4
HLS_PRJ := prj
CORE_NAME := image_filter
IP_NAME := xilinx_com_hls_$(CORE_NAME)_1_0
PCORE_NAME := $(CORE_NAME)_top_v1_00_a
BITS_PATH := vivado/project/zynq_base_trd_$(VERSION).runs/impl_1
SW_PATH := xsdk
SD_DIR := sd_image$(SUFFIX)
BOOT_DIR := boot$(SUFFIX)
HW_DIR := hardware$(SUFFIX)
SW_DIR := software$(SUFFIX)
#XMD_DIR := xmd$(SUFFIX)

ifeq ($(ARCH), win32)
    OPENCV_VERSION := 245
    VIVADO_CMD := cmd.exe /c "vivado -mode batch -source scripts/impl_batch.tcl"
    VIVADO_HLS_CMD := cmd.exe /c "vivado_hls run.tcl"
    HLS := $(shell cmd.exe /c "vivado_hls -r")
else
    OPENCV_VERSION :=
    VIVADO_CMD := vivado -mode batch -source scripts/impl_batch.tcl
    VIVADO_HLS_CMD := vivado_hls run.tcl
    HLS := $(shell vivado_hls -r)
endif

AUTOESL_PATH := $(HLS)/include
AUTOESL_TECH := $(HLS)/common/technology/autopilot

XSDK := $(shell dirname $(shell dirname $(shell which xsdk)))
#XSDK := $(X_DIR)/SDK/$(VERSION)
ARM_OPENCV_FFMPEG := $(XSDK)/data/embeddedsw/ThirdParty/opencv

MISC := $(TOP_DIR)/$(SW_DIR)/pre-built
VIDEO_LIB := $(THIS_DIR)/$(SW_DIR)/video_lib
PERFMON_LIB := $(THIS_DIR)/$(SW_DIR)/perfmon_lib

WITH_FMC := y

ifeq ($(WITH_FMC), y)
    IMAGE_FILE := image_fmc.ub
    DEVICE_TREE := devicetree_fmc.dtb 
else
    IMAGE_FILE := image.ub
    DEVICE_TREE := devicetree.dtb
endif

CXX := g++
CXX_LIB :=
ifneq ($(ARCH), win32)
    CXX := $(HLS)/$(ARCH)/tools/gcc/bin/g++
    ifeq ($(ARCH), lnx64)
        CXX_LIB := $(HLS)/$(ARCH)/tools/gcc/lib64
    else
        CXX_LIB := $(HLS)/$(ARCH)/tools/gcc/lib
    endif
endif

LIBS := -lpthread -lopencv_calib3d$(OPENCV_VERSION) -lopencv_contrib$(OPENCV_VERSION) -lopencv_core$(OPENCV_VERSION) -lopencv_features2d$(OPENCV_VERSION) -lopencv_flann$(OPENCV_VERSION) -lopencv_gpu$(OPENCV_VERSION) -lopencv_highgui$(OPENCV_VERSION) -lopencv_imgproc$(OPENCV_VERSION) -lopencv_legacy$(OPENCV_VERSION) -lopencv_ml$(OPENCV_VERSION) -lopencv_objdetect$(OPENCV_VERSION) -lopencv_photo$(OPENCV_VERSION) -lopencv_stitching$(OPENCV_VERSION) -lopencv_video$(OPENCV_VERSION) -lopencv_videostab$(OPENCV_VERSION)
ARM_LIBS := -lpthread -lopencv_calib3d -lopencv_contrib -lopencv_core -lopencv_features2d -lopencv_flann -lopencv_gpu -lopencv_highgui -lopencv_imgproc -lopencv_legacy -lopencv_ml -lopencv_objdetect -lopencv_photo -lopencv_stitching -lopencv_video -lopencv_videostab -lavformat -lavcodec -lswscale -lavutil

C_SRCS := $(wildcard ../common/src/*.c)

CPP_SRCS := $(wildcard ./*.cpp)

DESIGN_FILES := top.cpp

OBJS := $(C_SRCS:.c=.o) top.o test.o opencv_top.o

BMPS := result_1080p.bmp

C_HEADERS := $(wildcard ../common/include/*.h)

CPP_HEADERS := $(wildcard ./*.h)

export ARM_OPENCV_FFMPEG
export MISC
export VIDEO_LIB
export PERFMON_LIB
