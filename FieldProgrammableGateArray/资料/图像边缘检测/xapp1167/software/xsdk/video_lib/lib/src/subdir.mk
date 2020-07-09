################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/drm_helper.c \
../src/m2m_hw_pipeline.c \
../src/m2m_sw_pipeline.c \
../src/mediactl_helper.c \
../src/s2m_pipeline.c \
../src/sw_frame_processor.c \
../src/v4l2_helper.c \
../src/v4l2_plugin.c \
../src/video_file_reader.c \
../src/video.c 

OBJS += \
./src/drm_helper.o \
./src/m2m_hw_pipeline.o \
./src/m2m_sw_pipeline.o \
./src/mediactl_helper.o \
./src/s2m_pipeline.o \
./src/sw_frame_processor.o \
./src/v4l2_helper.o \
./src/v4l2_plugin.o \
./src/video_file_reader.o \
./src/video.o 

C_DEPS += \
./src/drm_helper.d \
./src/m2m_hw_pipeline.d \
./src/m2m_sw_pipeline.d \
./src/mediactl_helper.d \
./src/s2m_pipeline.d \
./src/sw_frame_processor.d \
./src/v4l2_helper.d \
./src/v4l2_plugin.d \
./src/video_file_reader.d \
./src/video.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Linux gcc compiler'
	arm-xilinx-linux-gnueabi-gcc -DVIDEO_FILE_INPUT -Wall -Wno-unused-function -O3 -I../include -I$(MISC)/include -I$(MISC)/include/libdrm -I$(ARM_OPENCV_FFMPEG)/include -I$(ARM_OPENCV_FFMPEG)/include/opencv -I../../../prj/solution1/impl/ip/drivers/image_filter_v1_0/src/ -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


