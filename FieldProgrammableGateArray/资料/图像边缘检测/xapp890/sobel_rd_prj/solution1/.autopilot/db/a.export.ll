; ModuleID = 'C:/WORK/sobel_variable/axi_sobel/axi_sobel/sobel_rd_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32"
target triple = "i386-pc-mingw32"

%sobel_operator_ret = type { i8, i8, i8 }
%struct.RGB = type { %"struct.ap_uint<8>", %"struct.ap_uint<8>", %"struct.ap_uint<8>" }
%"struct.ap_axiu<32,1,1,1>" = type { %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_int_base<1,false>" = type { %"struct.conv_cint<1,false,true>" }
%"struct.ap_int_base<32,false>" = type { %"struct.conv_cint<32,false,true>" }
%"struct.ap_int_base<4,false>" = type { %"struct.conv_cint<4,false,true>" }
%"struct.ap_int_base<8,false>" = type { %"struct.conv_cint<8,false,true>" }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1,false>" }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32,false>" }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4,false>" }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8,false>" }
%"struct.ap_window<unsigned char,3,3>" = type { [3 x [3 x i8]] }
%"struct.conv_cint<1,false,true>" = type { %"struct.ssdm_int<1,false>" }
%"struct.conv_cint<32,false,true>" = type { %"struct.ssdm_int<32,false>" }
%"struct.conv_cint<4,false,true>" = type { %"struct.ssdm_int<4,false>" }
%"struct.conv_cint<8,false,true>" = type { %"struct.ssdm_int<8,false>" }
%"struct.ssdm_int<1,false>" = type { i1 }
%"struct.ssdm_int<32,false>" = type { i32 }
%"struct.ssdm_int<4,false>" = type { i4 }
%"struct.ssdm_int<8,false>" = type { i8 }
%"struct.std::ios_base::Init" = type <{ i8 }>

@p_str20 = private constant [1 x i8] zeroinitializer, align 1 ; <[1 x i8]*> [#uses=32]
@p_str24 = private constant [14 x i8] c"aesl_label_11\00", align 1 ; <[14 x i8]*> [#uses=2]
@p_str25 = private constant [14 x i8] c"aesl_label_10\00", align 1 ; <[14 x i8]*> [#uses=2]
@p_str26 = private constant [8 x i8] c"ap_fifo\00", align 1 ; <[8 x i8]*> [#uses=2]
@p_str27 = private constant [5 x i8] c"AXIS\00", align 1 ; <[5 x i8]*> [#uses=4]
@p_str28 = private constant [25 x i8] c"-bus_bundle INPUT_STREAM\00", align 1 ; <[25 x i8]*> [#uses=1]
@p_str29 = private constant [126 x i8] c"{inter_pix_data_V TDATA} {inter_pix_strb_V TSTRB} {inter_pix_user_V TUSER} {inter_pix_last_V TLAST} {inter_pix_tdest_V TDEST}\00", align 4 ; <[126 x i8]*> [#uses=1]
@p_str30 = private constant [14 x i8] c"aesl_label_13\00", align 1 ; <[14 x i8]*> [#uses=2]
@p_str31 = private constant [14 x i8] c"aesl_label_12\00", align 1 ; <[14 x i8]*> [#uses=2]
@p_str32 = private constant [26 x i8] c"-bus_bundle OUTPUT_STREAM\00", align 1 ; <[26 x i8]*> [#uses=1]
@p_str33 = private constant [116 x i8] c"{out_pix_data_V TDATA} {out_pix_strb_V TSTRB} {out_pix_user_V TUSER} {out_pix_last_V TLAST} {out_pix_tdest_V TDEST}\00", align 4 ; <[116 x i8]*> [#uses=1]
@p_str34 = private constant [14 x i8] c"aesl_label_14\00", align 1 ; <[14 x i8]*> [#uses=2]
@p_str35 = private constant [8 x i8] c"ap_none\00", align 1 ; <[8 x i8]*> [#uses=2]
@p_str36 = private constant [14 x i8] c"aesl_label_15\00", align 1 ; <[14 x i8]*> [#uses=2]
@p_str37 = private constant [14 x i8] c"aesl_label_16\00", align 1 ; <[14 x i8]*> [#uses=2]
@p_str38 = private constant [10 x i8] c"AXI_SLAVE\00", align 1 ; <[10 x i8]*> [#uses=3]
@p_str39 = private constant [24 x i8] c"-bus_bundle CONTROL_BUS\00", align 1 ; <[24 x i8]*> [#uses=3]
@p_str40 = private constant [14 x i8] c"aesl_label_17\00", align 1 ; <[14 x i8]*> [#uses=2]
@p_str41 = private constant [14 x i8] c"aesl_label_18\00", align 1 ; <[14 x i8]*> [#uses=2]
@p_str42 = private constant [66 x i8] c"{ap_start START} {ap_done DONE} {ap_idle IDLE} {ap_return RETURN}\00", align 4 ; <[66 x i8]*> [#uses=1]
@p_str43 = private constant [14 x i8] c"aesl_label_19\00", align 1 ; <[14 x i8]*> [#uses=2]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I__Z5rgb2y6ap_rgbILi8ELi8ELi8EE] ; <[1 x void ()*]*> [#uses=0]
@llvm_global_dtors_0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm_global_dtors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__D__Z5rgb2y6ap_rgbILi8ELi8ELi8EE] ; <[1 x void ()*]*> [#uses=0]

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecFifo(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

declare void @_ssdm_SpecDependence(...) nounwind

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @_GLOBAL__I__Z5rgb2y6ap_rgbILi8ELi8ELi8EE() nounwind

declare void @_GLOBAL__D__Z5rgb2y6ap_rgbILi8ELi8ELi8EE() nounwind

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; <i32> [#uses=1]
  %empty_12 = trunc i32 %empty to i8              ; <i8> [#uses=1]
  ret i8 %empty_12
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %1 to i16                      ; <i16> [#uses=1]
  %empty_13 = zext i8 %2 to i16                   ; <i16> [#uses=1]
  %empty_14 = shl i16 %empty, 8                   ; <i16> [#uses=1]
  %empty_15 = or i16 %empty_14, %empty_13         ; <i16> [#uses=1]
  %empty_16 = zext i8 %0 to i24                   ; <i24> [#uses=1]
  %empty_17 = zext i16 %empty_15 to i24           ; <i24> [#uses=1]
  %empty_18 = shl i24 %empty_16, 16               ; <i24> [#uses=1]
  %empty_19 = or i24 %empty_18, %empty_17         ; <i24> [#uses=1]
  ret i24 %empty_19
}

define void @sobel_filter(i32* %inter_pix_data_V, i4* %inter_pix_strb_V, i1* %inter_pix_user_V, i1* %inter_pix_last_V, i1* %inter_pix_tdest_V, i32* %out_pix_data_V, i4* %out_pix_strb_V, i1* %out_pix_user_V, i1* %out_pix_last_V, i1* %out_pix_tdest_V, i32 %rows, i32 %cols) nounwind {
entry:
  %temp = alloca i8                               ; <i8*> [#uses=2]
  %tempx_B_V = alloca i8                          ; <i8*> [#uses=2]
  %tempx_G_V = alloca i8                          ; <i8*> [#uses=2]
  %tempx_R_V = alloca i8                          ; <i8*> [#uses=2]
  %buff_C_M_2_2 = alloca i8                       ; <i8*> [#uses=3]
  %buff_C_M_0_1 = alloca i8                       ; <i8*> [#uses=2]
  %buff_C_M_0_2 = alloca i8                       ; <i8*> [#uses=2]
  %buff_C_M_2_1 = alloca i8                       ; <i8*> [#uses=2]
  %buff_C_M_1_1 = alloca i8                       ; <i8*> [#uses=2]
  %buff_C_M_1_2 = alloca i8                       ; <i8*> [#uses=2]
  %cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %cols) nounwind ; <i32> [#uses=4]
  %rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %rows) nounwind ; <i32> [#uses=3]
  %buff_A_M_0 = alloca [1920 x i8], align 1       ; <[1920 x i8]*> [#uses=2]
  %buff_A_M_1 = alloca [1920 x i8], align 1       ; <[1920 x i8]*> [#uses=1]
  %buff_A_M_2 = alloca [1920 x i8], align 1       ; <[1920 x i8]*> [#uses=2]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str24) nounwind ; <i32> [#uses=1]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str25) nounwind ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecFifo(i32* %inter_pix_data_V, i4* %inter_pix_strb_V, i1* %inter_pix_user_V, i1* %inter_pix_last_V, i1* %inter_pix_tdest_V, [8 x i8]* @p_str26, [1 x i8]* @p_str20)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str25, i32 %tmp_2) nounwind ; <i32> [#uses=0]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %inter_pix_data_V, i4* %inter_pix_strb_V, i1* %inter_pix_user_V, i1* %inter_pix_last_V, i1* %inter_pix_tdest_V, [1 x i8]* @p_str20, [5 x i8]* @p_str27, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [25 x i8]* @p_str28) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32* %inter_pix_data_V, i4* %inter_pix_strb_V, i1* %inter_pix_user_V, i1* %inter_pix_last_V, i1* %inter_pix_tdest_V, [1 x i8]* @p_str20, [5 x i8]* @p_str27, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [126 x i8]* @p_str29, [1 x i8]* @p_str20) nounwind
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str24, i32 %tmp_1) nounwind ; <i32> [#uses=0]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str30) nounwind ; <i32> [#uses=1]
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str31) nounwind ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecFifo(i32* %out_pix_data_V, i4* %out_pix_strb_V, i1* %out_pix_user_V, i1* %out_pix_last_V, i1* %out_pix_tdest_V, [8 x i8]* @p_str26, [1 x i8]* @p_str20)
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str31, i32 %tmp_4) nounwind ; <i32> [#uses=0]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %out_pix_data_V, i4* %out_pix_strb_V, i1* %out_pix_user_V, i1* %out_pix_last_V, i1* %out_pix_tdest_V, [1 x i8]* @p_str20, [5 x i8]* @p_str27, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [26 x i8]* @p_str32) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32* %out_pix_data_V, i4* %out_pix_strb_V, i1* %out_pix_user_V, i1* %out_pix_last_V, i1* %out_pix_tdest_V, [1 x i8]* @p_str20, [5 x i8]* @p_str27, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [116 x i8]* @p_str33, [1 x i8]* @p_str20) nounwind
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str30, i32 %tmp_3) nounwind ; <i32> [#uses=0]
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str34) nounwind ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecWire(i32 %rows, [8 x i8]* @p_str35, [1 x i8]* @p_str20) nounwind
  %empty_23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str34, i32 %tmp_5) nounwind ; <i32> [#uses=0]
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str36) nounwind ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecWire(i32 %cols, [8 x i8]* @p_str35, [1 x i8]* @p_str20) nounwind
  %empty_24 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str36, i32 %tmp_8) nounwind ; <i32> [#uses=0]
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str37) nounwind ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 %rows, [1 x i8]* @p_str20, [10 x i8]* @p_str38, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [24 x i8]* @p_str39) nounwind
  %empty_25 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str37, i32 %tmp_9) nounwind ; <i32> [#uses=0]
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str40) nounwind ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 %cols, [1 x i8]* @p_str20, [10 x i8]* @p_str38, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [24 x i8]* @p_str39) nounwind
  %empty_26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str40, i32 %tmp_6) nounwind ; <i32> [#uses=0]
  %tmp_10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str41) nounwind ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str20, [10 x i8]* @p_str38, [1 x i8]* @p_str20, [1 x i8]* @p_str20, [66 x i8]* @p_str42, [24 x i8]* @p_str39) nounwind
  %empty_27 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str41, i32 %tmp_10) nounwind ; <i32> [#uses=0]
  %tmp2 = add i32 %cols_read, 1                   ; <i32> [#uses=2]
  %tmp15_cast = trunc i32 %tmp2 to i31            ; <i31> [#uses=1]
  %tmp3 = add i32 %rows_read, 1                   ; <i32> [#uses=2]
  %tmp16_cast = trunc i32 %tmp3 to i31            ; <i31> [#uses=1]
  %tmp1 = icmp sgt i32 %tmp2, 0                   ; <i1> [#uses=1]
  %smax2 = select i1 %tmp1, i31 %tmp15_cast, i31 0 ; <i31> [#uses=1]
  %tmp4 = icmp sgt i32 %tmp3, 0                   ; <i1> [#uses=1]
  %smax = select i1 %tmp4, i31 %tmp16_cast, i31 0 ; <i31> [#uses=1]
  %tmp_14 = add nsw i32 %rows_read, -1            ; <i32> [#uses=1]
  %tmp_16 = add nsw i32 %cols_read, -1            ; <i32> [#uses=1]
  br label %bb23

bb1:                                              ; preds = %bb21
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str43) nounwind ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str20) nounwind
  %tmp_s = icmp slt i32 %ColIndex_assign_cast, %cols_read ; <i1> [#uses=5]
  br i1 %tmp_s, label %bb.i.0, label %bb3

bb.i.0:                                           ; preds = %bb1
  %buff_A_M_1_addr = getelementptr [1920 x i8]* %buff_A_M_1, i32 0, i32 %ColIndex_assign_cast ; <i8*> [#uses=2]
  %buff_A_M_1_load = load i8* %buff_A_M_1_addr, align 1 ; <i8> [#uses=1]
  %buff_A_M_2_addr = getelementptr [1920 x i8]* %buff_A_M_2, i32 0, i32 %ColIndex_assign_cast ; <i8*> [#uses=1]
  store i8 %buff_A_M_1_load, i8* %buff_A_M_2_addr, align 1
  %buff_A_M_0_addr = getelementptr [1920 x i8]* %buff_A_M_0, i32 0, i32 %ColIndex_assign_cast ; <i8*> [#uses=1]
  %return_value_5 = load i8* %buff_A_M_0_addr, align 1 ; <i8> [#uses=2]
  store i8 %return_value_5, i8* %buff_A_M_1_addr, align 1
  store i8 %return_value_5, i8* %temp
  br label %bb3

bb3:                                              ; preds = %bb.i.0, %bb1
  %tmp_12 = and i1 %tmp_s, %tmp_11                ; <i1> [#uses=1]
  br i1 %tmp_12, label %bb5, label %bb.i463.0_ifconv

bb5:                                              ; preds = %bb3
  %input_pixel_data_V = call i32 @_ssdm_op_FifoRead.volatile.i32P(i32* %inter_pix_data_V) nounwind ; <i32> [#uses=3]
  %input_pixel_strb_V_0 = call i4 @_ssdm_op_FifoRead.volatile.i4P(i4* %inter_pix_strb_V) nounwind ; <i4> [#uses=0]
  %input_pixel_user_V_0 = call i1 @_ssdm_op_FifoRead.volatile.i1P(i1* %inter_pix_user_V) nounwind ; <i1> [#uses=0]
  %input_pixel_last_V_0 = call i1 @_ssdm_op_FifoRead.volatile.i1P(i1* %inter_pix_last_V) nounwind ; <i1> [#uses=0]
  %input_pixel_tdest_V_0 = call i1 @_ssdm_op_FifoRead.volatile.i1P(i1* %inter_pix_tdest_V) nounwind ; <i1> [#uses=0]
  %new_pix_B_V = trunc i32 %input_pixel_data_V to i8 ; <i8> [#uses=2]
  %new_pix_G_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_pixel_data_V, i32 8, i32 15) ; <i8> [#uses=3]
  %new_pix_R_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %input_pixel_data_V, i32 16, i32 23) ; <i8> [#uses=3]
  %retval_i_i_cast1 = zext i8 %new_pix_R_V to i9  ; <i9> [#uses=1]
  %retval_i_i_cast = zext i8 %new_pix_R_V to i14  ; <i14> [#uses=1]
  %p_shl_i = shl i14 %retval_i_i_cast, 6          ; <i14> [#uses=1]
  %p_shl_i_cast = zext i14 %p_shl_i to i16        ; <i16> [#uses=1]
  %p_shl1_i = shl i9 %retval_i_i_cast1, 1         ; <i9> [#uses=1]
  %p_shl1_i_cast = zext i9 %p_shl1_i to i16       ; <i16> [#uses=1]
  %retval_i5_i_cast1 = zext i8 %new_pix_G_V to i9 ; <i9> [#uses=1]
  %retval_i5_i_cast = zext i8 %new_pix_G_V to i15 ; <i15> [#uses=1]
  %p_shl2_i = shl i15 %retval_i5_i_cast, 7        ; <i15> [#uses=1]
  %p_shl2_i_cast = zext i15 %p_shl2_i to i16      ; <i16> [#uses=1]
  %retval_i2_i_cast = zext i8 %new_pix_B_V to i13 ; <i13> [#uses=1]
  %tmp_2_i = mul i13 %retval_i2_i_cast, 25        ; <i13> [#uses=1]
  %tmp5 = add i16 %p_shl1_i_cast, %p_shl2_i_cast  ; <i16> [#uses=1]
  %tmp = add i16 %tmp5, %p_shl_i_cast             ; <i16> [#uses=1]
  %tmp6 = add i9 %retval_i5_i_cast1, 128          ; <i9> [#uses=1]
  %tmp31_cast = zext i9 %tmp6 to i13              ; <i13> [#uses=1]
  %tmp7 = add i13 %tmp31_cast, %tmp_2_i           ; <i13> [#uses=1]
  %tmp30_cast = zext i13 %tmp7 to i16             ; <i16> [#uses=1]
  %tmp_5_i = add i16 %tmp30_cast, %tmp            ; <i16> [#uses=1]
  %tmp_25 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_5_i, i32 8, i32 15) ; <i8> [#uses=1]
  %y = add i8 %tmp_25, 16                         ; <i8> [#uses=1]
  %buff_A_M_0_addr_1 = getelementptr [1920 x i8]* %buff_A_M_0, i32 0, i32 %ColIndex_assign_cast ; <i8*> [#uses=1]
  store i8 %y, i8* %buff_A_M_0_addr_1, align 1
  store i8 %new_pix_R_V, i8* %tempx_R_V
  store i8 %new_pix_G_V, i8* %tempx_G_V
  store i8 %new_pix_B_V, i8* %tempx_B_V
  br label %bb.i463.0_ifconv

bb.i463.0_ifconv:                                 ; preds = %bb5, %bb3
  %temp_load = load i8* %temp                     ; <i8> [#uses=1]
  %tempx_B_V_2 = load i8* %tempx_B_V              ; <i8> [#uses=1]
  %tempx_G_V_2 = load i8* %tempx_G_V              ; <i8> [#uses=2]
  %tempx_R_V_2 = load i8* %tempx_R_V              ; <i8> [#uses=2]
  %buff_C_M_2_2_load_1 = load i8* %buff_C_M_2_2   ; <i8> [#uses=2]
  %buff_C_M_0_1_load = load i8* %buff_C_M_0_1     ; <i8> [#uses=1]
  %buff_C_M_2_1_load = load i8* %buff_C_M_2_1     ; <i8> [#uses=1]
  %buff_C_M_1_1_load = load i8* %buff_C_M_1_1     ; <i8> [#uses=1]
  %buff_A_M_2_addr_1 = getelementptr [1920 x i8]* %buff_A_M_2, i32 0, i32 %ColIndex_assign_cast ; <i8*> [#uses=1]
  %return_value = load i8* %buff_A_M_2_addr_1, align 1 ; <i8> [#uses=1]
  %retval_i_i1_cast1 = zext i8 %tempx_R_V_2 to i9 ; <i9> [#uses=1]
  %retval_i_i1_cast = zext i8 %tempx_R_V_2 to i14 ; <i14> [#uses=1]
  %p_shl_i1 = shl i14 %retval_i_i1_cast, 6        ; <i14> [#uses=1]
  %p_shl_i1_cast = zext i14 %p_shl_i1 to i16      ; <i16> [#uses=1]
  %p_shl1_i1 = shl i9 %retval_i_i1_cast1, 1       ; <i9> [#uses=1]
  %p_shl1_i1_cast = zext i9 %p_shl1_i1 to i16     ; <i16> [#uses=1]
  %retval_i5_i1_cast1 = zext i8 %tempx_G_V_2 to i9 ; <i9> [#uses=1]
  %retval_i5_i1_cast = zext i8 %tempx_G_V_2 to i15 ; <i15> [#uses=1]
  %p_shl2_i1 = shl i15 %retval_i5_i1_cast, 7      ; <i15> [#uses=1]
  %p_shl2_i1_cast = zext i15 %p_shl2_i1 to i16    ; <i16> [#uses=1]
  %retval_i2_i1_cast = zext i8 %tempx_B_V_2 to i13 ; <i13> [#uses=1]
  %tmp_2_i1 = mul i13 %retval_i2_i1_cast, 25      ; <i13> [#uses=1]
  %tmp8 = add i16 %p_shl1_i1_cast, %p_shl2_i1_cast ; <i16> [#uses=1]
  %tmp9 = add i16 %tmp8, %p_shl_i1_cast           ; <i16> [#uses=1]
  %tmp10 = add i9 %retval_i5_i1_cast1, 128        ; <i9> [#uses=1]
  %tmp35_cast = zext i9 %tmp10 to i13             ; <i13> [#uses=1]
  %tmp11 = add i13 %tmp35_cast, %tmp_2_i1         ; <i13> [#uses=1]
  %tmp34_cast = zext i13 %tmp11 to i16            ; <i16> [#uses=1]
  %tmp_5_i1 = add i16 %tmp34_cast, %tmp9          ; <i16> [#uses=1]
  %tmp_26 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %tmp_5_i1, i32 8, i32 15) ; <i8> [#uses=1]
  %y_2 = add i8 %tmp_26, 16                       ; <i8> [#uses=1]
  %buff_C_M_1_2_3 = select i1 %tmp_s, i8 %temp_load, i8 %buff_C_M_1_1_1 ; <i8> [#uses=2]
  %buff_C_M_0_2_4 = select i1 %tmp_s, i8 %return_value, i8 %buff_C_M_0_1_2 ; <i8> [#uses=2]
  %buff_C_M_2_2_3 = select i1 %tmp_s, i8 %y_2, i8 %buff_C_M_2_2_load_1 ; <i8> [#uses=2]
  %tmp_27 = call i30 @_ssdm_op_PartSelect.i30.i31.i32.i32(i31 %col_1, i32 1, i32 30) ; <i30> [#uses=1]
  %icmp7 = icmp ult i30 %tmp_27, 1                ; <i1> [#uses=2]
  %or_cond = or i1 %icmp, %icmp7                  ; <i1> [#uses=2]
  %tmp_17 = icmp slt i32 %tmp_16, %ColIndex_assign_cast ; <i1> [#uses=2]
  %y_weight_cast = zext i8 %buff_C_M_0_1_load to i9 ; <i9> [#uses=2]
  %tmp_1_0_1_i_cast = zext i8 %buff_C_M_0_1_2 to i9 ; <i9> [#uses=1]
  %tmp_5_0_1_i = shl i9 %tmp_1_0_1_i_cast, 1      ; <i9> [#uses=1]
  %tmp_5_0_1_i_cast = zext i9 %tmp_5_0_1_i to i10 ; <i10> [#uses=1]
  %tmp_1_0_2_i_cast = zext i8 %buff_C_M_0_2_4 to i9 ; <i9> [#uses=2]
  %x_weight = sub i9 %tmp_1_0_2_i_cast, %y_weight_cast ; <i9> [#uses=1]
  %x_weight_cast = sext i9 %x_weight to i11       ; <i11> [#uses=1]
  %tmp12 = add i9 %y_weight_cast, %tmp_1_0_2_i_cast ; <i9> [#uses=1]
  %tmp36_cast = zext i9 %tmp12 to i10             ; <i10> [#uses=1]
  %y_weight = add i10 %tmp36_cast, %tmp_5_0_1_i_cast ; <i10> [#uses=1]
  %y_weight_2_cast = zext i10 %y_weight to i11    ; <i11> [#uses=1]
  %tmp_1_1_0_i_cast = zext i8 %buff_C_M_1_1_load to i9 ; <i9> [#uses=1]
  %p_shl_i2 = shl i9 %tmp_1_1_0_i_cast, 1         ; <i9> [#uses=1]
  %p_shl_i2_cast = zext i9 %p_shl_i2 to i11       ; <i11> [#uses=1]
  %x_weight_1 = sub i11 %x_weight_cast, %p_shl_i2_cast ; <i11> [#uses=1]
  %tmp_1_1_2_i_cast = zext i8 %buff_C_M_1_2_3 to i9 ; <i9> [#uses=1]
  %tmp_3_1_2_i = shl i9 %tmp_1_1_2_i_cast, 1      ; <i9> [#uses=1]
  %tmp_3_1_2_i_cast = zext i9 %tmp_3_1_2_i to i11 ; <i11> [#uses=1]
  %x_weight_2 = add i11 %tmp_3_1_2_i_cast, %x_weight_1 ; <i11> [#uses=1]
  %tmp_1_2_0_i_cast = zext i8 %buff_C_M_2_1_load to i11 ; <i11> [#uses=2]
  %x_weight_3 = sub i11 %x_weight_2, %tmp_1_2_0_i_cast ; <i11> [#uses=1]
  %y_weight_1 = sub i11 %y_weight_2_cast, %tmp_1_2_0_i_cast ; <i11> [#uses=1]
  %tmp_1_2_1_i_cast = zext i8 %buff_C_M_2_2_load_1 to i9 ; <i9> [#uses=1]
  %p_shl11_i = shl i9 %tmp_1_2_1_i_cast, 1        ; <i9> [#uses=1]
  %p_shl11_i_cast = zext i9 %p_shl11_i to i11     ; <i11> [#uses=1]
  %y_weight_2 = sub i11 %y_weight_1, %p_shl11_i_cast ; <i11> [#uses=1]
  %tmp_1_2_2_i_cast = zext i8 %buff_C_M_2_2_3 to i11 ; <i11> [#uses=2]
  %x_weight_4 = add i11 %x_weight_3, %tmp_1_2_2_i_cast ; <i11> [#uses=2]
  %x_weight_4_cast = trunc i11 %x_weight_4 to i8  ; <i8> [#uses=2]
  %y_weight_3 = sub i11 %y_weight_2, %tmp_1_2_2_i_cast ; <i11> [#uses=2]
  %y_weight_5_cast = trunc i11 %y_weight_3 to i8  ; <i8> [#uses=2]
  %neg_i_cast = sub i8 0, %x_weight_4_cast        ; <i8> [#uses=1]
  %tmp_28 = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %x_weight_4, i32 10) ; <i1> [#uses=1]
  %abs_i = select i1 %tmp_28, i8 %neg_i_cast, i8 %x_weight_4_cast ; <i8> [#uses=1]
  %neg7_i_cast = sub i8 0, %y_weight_5_cast       ; <i8> [#uses=1]
  %tmp_29 = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %y_weight_3, i32 10) ; <i1> [#uses=1]
  %abs9_i = select i1 %tmp_29, i8 %neg7_i_cast, i8 %y_weight_5_cast ; <i8> [#uses=1]
  %tmp_i2 = add i8 %abs9_i, %abs_i                ; <i8> [#uses=3]
  %edge_val = xor i8 %tmp_i2, -1                  ; <i8> [#uses=1]
  %tmp_8_i = icmp ult i8 %tmp_i2, 55              ; <i1> [#uses=2]
  %tmp_i = icmp ugt i8 %tmp_i2, -101              ; <i1> [#uses=1]
  %sel_tmp6_demorgan = or i1 %or_cond, %tmp_15    ; <i1> [#uses=2]
  %sel_tmp6 = xor i1 %sel_tmp6_demorgan, true     ; <i1> [#uses=1]
  %sel_tmp7 = and i1 %tmp_17, %sel_tmp6           ; <i1> [#uses=1]
  %sel_tmp9_demorgan = or i1 %icmp, %icmp7        ; <i1> [#uses=1]
  %sel_tmp9 = xor i1 %sel_tmp9_demorgan, true     ; <i1> [#uses=1]
  %sel_tmp = and i1 %tmp_15, %sel_tmp9            ; <i1> [#uses=1]
  %tmp_18 = or i1 %sel_tmp, %sel_tmp7             ; <i1> [#uses=1]
  %sel_tmp17_demorgan = or i1 %sel_tmp6_demorgan, %tmp_17 ; <i1> [#uses=2]
  %sel_tmp19_demorgan = or i1 %sel_tmp17_demorgan, %tmp_8_i ; <i1> [#uses=1]
  %sel_tmp2 = xor i1 %sel_tmp19_demorgan, true    ; <i1> [#uses=1]
  %sel_tmp3 = and i1 %tmp_i, %sel_tmp2            ; <i1> [#uses=1]
  %tmp_20 = or i1 %sel_tmp3, %or_cond             ; <i1> [#uses=1]
  %tmp_21 = or i1 %tmp_20, %tmp_18                ; <i1> [#uses=1]
  %sel_tmp5 = xor i1 %sel_tmp17_demorgan, true    ; <i1> [#uses=1]
  %sel_tmp8 = and i1 %tmp_8_i, %sel_tmp5          ; <i1> [#uses=2]
  %sel_tmp4 = sext i1 %sel_tmp8 to i8             ; <i8> [#uses=1]
  %tmp_30 = or i1 %sel_tmp8, %tmp_21              ; <i1> [#uses=1]
  %edge_G_V = select i1 %tmp_30, i8 %sel_tmp4, i8 %edge_val ; <i8> [#uses=3]
  %tmp_19 = icmp ne i31 %col_1, 0                 ; <i1> [#uses=1]
  %or_cond1 = and i1 %tmp_7, %tmp_19              ; <i1> [#uses=1]
  br i1 %or_cond1, label %bb16, label %bb20

bb16:                                             ; preds = %bb.i463.0_ifconv
  %tmp_22 = call i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8 %edge_G_V, i8 %edge_G_V, i8 %edge_G_V) ; <i24> [#uses=1]
  %p_Repl2_s = zext i24 %tmp_22 to i32            ; <i32> [#uses=1]
  %output_pixel_last_V = icmp eq i32 %ColIndex_assign_cast, %cols_read ; <i1> [#uses=1]
  call void @_ssdm_op_FifoWrite.volatile.i32P(i32* %out_pix_data_V, i32 %p_Repl2_s) nounwind
  call void @_ssdm_op_FifoWrite.volatile.i4P(i4* %out_pix_strb_V, i4 -1) nounwind
  call void @_ssdm_op_FifoWrite.volatile.i1P(i1* %out_pix_user_V, i1 true) nounwind
  call void @_ssdm_op_FifoWrite.volatile.i1P(i1* %out_pix_last_V, i1 %output_pixel_last_V) nounwind
  call void @_ssdm_op_FifoWrite.volatile.i1P(i1* %out_pix_tdest_V, i1 true) nounwind
  br label %bb20

bb20:                                             ; preds = %bb16, %bb.i463.0_ifconv
  %buff_C_M_2_2_load = load i8* %buff_C_M_2_2     ; <i8> [#uses=1]
  %empty_28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str43, i32 %tmp_13) nounwind ; <i32> [#uses=0]
  store i8 %buff_C_M_1_2_3, i8* %buff_C_M_1_2
  store i8 %buff_C_M_1_1_1, i8* %buff_C_M_1_1
  store i8 %buff_C_M_2_2_load, i8* %buff_C_M_2_1
  store i8 %buff_C_M_0_2_4, i8* %buff_C_M_0_2
  store i8 %buff_C_M_0_1_2, i8* %buff_C_M_0_1
  store i8 %buff_C_M_2_2_3, i8* %buff_C_M_2_2
  br label %bb21

bb21:                                             ; preds = %bb21.preheader, %bb20
  %col_1 = phi i31 [ 0, %bb21.preheader ], [ %col, %bb20 ] ; <i31> [#uses=5]
  %buff_C_M_0_1_2 = load i8* %buff_C_M_0_2        ; <i8> [#uses=3]
  %buff_C_M_1_1_1 = load i8* %buff_C_M_1_2        ; <i8> [#uses=2]
  %ColIndex_assign_cast = zext i31 %col_1 to i32  ; <i32> [#uses=8]
  %exitcond = icmp eq i31 %col_1, %smax2          ; <i1> [#uses=1]
  %col = add i31 %col_1, 1                        ; <i31> [#uses=1]
  br i1 %exitcond, label %bb23, label %bb1

bb23:                                             ; preds = %bb21, %entry
  %row = phi i31 [ 0, %entry ], [ %row_1, %bb21 ] ; <i31> [#uses=5]
  %row_cast = zext i31 %row to i32                ; <i32> [#uses=2]
  %exitcond3 = icmp eq i31 %row, %smax            ; <i1> [#uses=1]
  %row_1 = add i31 %row, 1                        ; <i31> [#uses=1]
  br i1 %exitcond3, label %bb24, label %bb21.preheader

bb21.preheader:                                   ; preds = %bb23
  %tmp_23 = call i30 @_ssdm_op_PartSelect.i30.i31.i32.i32(i31 %row, i32 1, i32 30) ; <i30> [#uses=1]
  %icmp = icmp ult i30 %tmp_23, 1                 ; <i1> [#uses=2]
  %tmp_7 = icmp ne i31 %row, 0                    ; <i1> [#uses=1]
  %tmp_11 = icmp slt i32 %row_cast, %rows_read    ; <i1> [#uses=1]
  %tmp_15 = icmp slt i32 %tmp_14, %row_cast       ; <i1> [#uses=2]
  br label %bb21

bb24:                                             ; preds = %bb23
  ret void
}

define weak i32 @_ssdm_op_WireRead.i32(i32) {
entry:
  ret i32 %0
}

define weak i32 @_ssdm_op_FifoRead.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; <i32> [#uses=1]
  ret i32 %empty
}

define weak i4 @_ssdm_op_FifoRead.volatile.i4P(i4*) {
entry:
  %empty = call i4 @_autotb_FifoRead_i4(i4* %0)   ; <i4> [#uses=1]
  ret i4 %empty
}

define weak i1 @_ssdm_op_FifoRead.volatile.i1P(i1*) {
entry:
  %empty = call i1 @_autotb_FifoRead_i1(i1* %0)   ; <i1> [#uses=1]
  ret i1 %empty
}

define weak void @_ssdm_op_FifoWrite.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1) ; <i32> [#uses=0]
  ret void
}

define weak void @_ssdm_op_FifoWrite.volatile.i4P(i4*, i4) {
entry:
  %empty = call i4 @_autotb_FifoWrite_i4(i4* %0, i4 %1) ; <i4> [#uses=0]
  ret void
}

define weak void @_ssdm_op_FifoWrite.volatile.i1P(i1*, i1) {
entry:
  %empty = call i1 @_autotb_FifoWrite_i1(i1* %0, i1 %1) ; <i1> [#uses=0]
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2) ; <i16> [#uses=1]
  %empty_29 = trunc i16 %empty to i8              ; <i8> [#uses=1]
  ret i8 %empty_29
}

define weak i30 @_ssdm_op_PartSelect.i30.i31.i32.i32(i31, i32, i32) nounwind readnone {
entry:
  %empty = call i31 @llvm.part.select.i31(i31 %0, i32 %1, i32 %2) ; <i31> [#uses=1]
  %empty_30 = trunc i31 %empty to i30             ; <i30> [#uses=1]
  ret i30 %empty_30
}

define weak i1 @_ssdm_op_BitSelect.i1.i11.i32(i11, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i11                    ; <i11> [#uses=1]
  %empty_31 = shl i11 1, %empty                   ; <i11> [#uses=1]
  %empty_32 = and i11 %0, %empty_31               ; <i11> [#uses=1]
  %empty_33 = icmp ne i11 %empty_32, 0            ; <i1> [#uses=1]
  ret i1 %empty_33
}

declare i32 @_autotb_FifoRead_i32(i32*)

declare i4 @_autotb_FifoRead_i4(i4*)

declare i1 @_autotb_FifoRead_i1(i1*)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i4 @_autotb_FifoWrite_i4(i4*, i4)

declare i1 @_autotb_FifoWrite_i1(i1*, i1)

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare i31 @llvm.part.select.i31(i31, i32, i32) nounwind readnone

!llvm.dbg.gv = !{!0, !361}

!0 = metadata !{i32 458804, i32 0, metadata !1, metadata !"y_op", metadata !"y_op", metadata !"", metadata !3, i32 78, metadata !360, i1 true, i1 true, null} ; [ DW_TAG_variable ]
!1 = metadata !{i32 458798, i32 0, metadata !2, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"_Z14sobel_operatorP9ap_windowIhLi3ELi3EE", metadata !3, i32 61, metadata !4, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!2 = metadata !{i32 458769, i32 0, i32 4, metadata !"sobel.pragma.2.cpp", metadata !"C:\5CWORK\5Csobel_variable\5Caxi_sobel\5Caxi_sobel/C:/WORK/sobel_variable/axi_sobel/axi_sobel/sobel_rd_prj/solution1/.autopilot/db", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 458769, i32 0, i32 4, metadata !"sobel.cpp", metadata !"C:\5CWORK\5Csobel_variable\5Caxi_sobel\5Caxi_sobel/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!4 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !5, i32 0, null} ; [ DW_TAG_subroutine_type ]
!5 = metadata !{metadata !6, metadata !333}
!6 = metadata !{i32 458774, metadata !2, metadata !"RGB", metadata !7, i32 176, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ]
!7 = metadata !{i32 458769, i32 0, i32 4, metadata !"ap_video.h", metadata !"C:\5CWORK\5Csobel_variable\5Caxi_sobel\5Caxi_sobel/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!8 = metadata !{i32 458771, metadata !2, metadata !"ap_rgb<8,8,8>", metadata !7, i32 54, i64 24, i64 8, i64 0, i32 0, null, metadata !9, i32 0, null} ; [ DW_TAG_structure_type ]
!9 = metadata !{metadata !10, metadata !321, metadata !322, metadata !323, metadata !330}
!10 = metadata !{i32 458765, metadata !8, metadata !"B", metadata !7, i32 55, i64 8, i64 8, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ]
!11 = metadata !{i32 458771, metadata !2, metadata !"ap_uint<8>", metadata !12, i32 134, i64 8, i64 8, i64 0, i32 0, null, metadata !13, i32 0, null} ; [ DW_TAG_structure_type ]
!12 = metadata !{i32 458769, i32 0, i32 4, metadata !"ap_int.h", metadata !"C:\5CWORK\5Csobel_variable\5Caxi_sobel\5Caxi_sobel/C:/Xilinx/Vivado_HLS/2012.2/common/technology/autopilot", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!13 = metadata !{metadata !14, metadata !253, metadata !257, metadata !260, metadata !263, metadata !266, metadata !269, metadata !272, metadata !275, metadata !278, metadata !281, metadata !284, metadata !287, metadata !290, metadata !293, metadata !296, metadata !299, metadata !302, metadata !309, metadata !314, metadata !318}
!14 = metadata !{i32 458780, metadata !2, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_inheritance ]
!15 = metadata !{i32 458771, metadata !2, metadata !"ap_int_base<8,false>", metadata !16, i32 1306, i64 8, i64 8, i64 0, i32 0, null, metadata !17, i32 0, null} ; [ DW_TAG_structure_type ]
!16 = metadata !{i32 458769, i32 0, i32 4, metadata !"ap_int_syn.h", metadata !"C:\5CWORK\5Csobel_variable\5Caxi_sobel\5Caxi_sobel/C:/Xilinx/Vivado_HLS/2012.2/common/technology/autopilot", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!17 = metadata !{metadata !18, metadata !43, metadata !47, metadata !51, metadata !55, metadata !59, metadata !63, metadata !67, metadata !71, metadata !75, metadata !79, metadata !83, metadata !87, metadata !90, metadata !94, metadata !98, metadata !104, metadata !107, metadata !112, metadata !117, metadata !122, metadata !123, metadata !127, metadata !130, metadata !133, metadata !136, metadata !139, metadata !142, metadata !146, metadata !149, metadata !152, metadata !155, metadata !159, metadata !162, metadata !165, metadata !166, metadata !170, metadata !173, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !183, metadata !184, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !197, metadata !198, metadata !201, metadata !205, metadata !206, metadata !207, metadata !211, metadata !212, metadata !215, metadata !216, metadata !220, metadata !221, metadata !222, metadata !223, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !247, metadata !250}
!18 = metadata !{i32 458780, metadata !2, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_inheritance ]
!19 = metadata !{i32 458771, metadata !2, metadata !"conv_cint<8,false,true>", metadata !16, i32 1269, i64 8, i64 8, i64 0, i32 0, null, metadata !20, i32 0, null} ; [ DW_TAG_structure_type ]
!20 = metadata !{metadata !21, metadata !31, metadata !35}
!21 = metadata !{i32 458780, metadata !2, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_inheritance ]
!22 = metadata !{i32 458771, metadata !2, metadata !"ssdm_int<8,false>", metadata !23, i32 10, i64 8, i64 8, i64 0, i32 0, null, metadata !24, i32 0, null} ; [ DW_TAG_structure_type ]
!23 = metadata !{i32 458769, i32 0, i32 4, metadata !"autopilot_dt.def", metadata !"C:\5CWORK\5Csobel_variable\5Caxi_sobel\5Caxi_sobel/C:/Xilinx/Vivado_HLS/2012.2/common/technology/autopilot/etc", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!24 = metadata !{metadata !25, metadata !27}
!25 = metadata !{i32 458765, metadata !22, metadata !"V", metadata !23, i32 10, i64 8, i64 8, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ]
!26 = metadata !{i32 458788, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!27 = metadata !{i32 458798, i32 0, metadata !22, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !23, i32 10, metadata !28, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, null} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{null, metadata !30}
!30 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !22} ; [ DW_TAG_pointer_type ]
!31 = metadata !{i32 458798, i32 0, metadata !19, metadata !"conv_cint", metadata !"conv_cint", metadata !"", metadata !16, i32 1275, metadata !32, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, null} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{null, metadata !34}
!34 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !19} ; [ DW_TAG_pointer_type ]
!35 = metadata !{i32 458798, i32 0, metadata !19, metadata !"operator ap_ulong", metadata !"operator ap_ulong", metadata !"_ZNK9conv_cintILi8ELb0ELb1EEcvyEv", metadata !16, i32 1276, metadata !36, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, null} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{metadata !38, metadata !41}
!38 = metadata !{i32 458774, metadata !2, metadata !"ap_ulong", metadata !39, i32 812, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ]
!39 = metadata !{i32 458769, i32 0, i32 4, metadata !"math.h", metadata !"C:\5CWORK\5Csobel_variable\5Caxi_sobel\5Caxi_sobel/c:/xilinx/vivado_hls/2012.2/win_x86/tools/llvm_gcc/bin/../lib/gcc/i686-pc-mingw32/4.2.1/../../../../include", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!40 = metadata !{i32 458788, metadata !2, metadata !"long long unsigned int", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!41 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !42} ; [ DW_TAG_pointer_type ]
!42 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !19} ; [ DW_TAG_const_type ]
!43 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !16, i32 1341, metadata !44, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!44 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, null} ; [ DW_TAG_subroutine_type ]
!45 = metadata !{null, metadata !46}
!46 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !15} ; [ DW_TAG_pointer_type ]
!47 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !16, i32 1363, metadata !48, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, null} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{null, metadata !46, metadata !50}
!50 = metadata !{i32 458788, metadata !2, metadata !"bool", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!51 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !16, i32 1364, metadata !52, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, null} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{null, metadata !46, metadata !54}
!54 = metadata !{i32 458788, metadata !2, metadata !"signed char", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!55 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !16, i32 1365, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, null} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{null, metadata !46, metadata !58}
!58 = metadata !{i32 458788, metadata !2, metadata !"unsigned char", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!59 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !16, i32 1366, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, null} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{null, metadata !46, metadata !62}
!62 = metadata !{i32 458788, metadata !2, metadata !"short int", metadata !2, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!63 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !16, i32 1367, metadata !64, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!64 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, null} ; [ DW_TAG_subroutine_type ]
!65 = metadata !{null, metadata !46, metadata !66}
!66 = metadata !{i32 458788, metadata !2, metadata !"short unsigned int", metadata !2, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!67 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !16, i32 1368, metadata !68, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!68 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, null} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{null, metadata !46, metadata !70}
!70 = metadata !{i32 458788, metadata !2, metadata !"int", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!71 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !16, i32 1369, metadata !72, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, null} ; [ DW_TAG_subroutine_type ]
!73 = metadata !{null, metadata !46, metadata !74}
!74 = metadata !{i32 458788, metadata !2, metadata !"unsigned int", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!75 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !16, i32 1370, metadata !76, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, null} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{null, metadata !46, metadata !78}
!78 = metadata !{i32 458788, metadata !2, metadata !"long int", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!79 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !16, i32 1371, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, null} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{null, metadata !46, metadata !82}
!82 = metadata !{i32 458788, metadata !2, metadata !"long unsigned int", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!83 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !16, i32 1372, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, null} ; [ DW_TAG_subroutine_type ]
!85 = metadata !{null, metadata !46, metadata !86}
!86 = metadata !{i32 458788, metadata !2, metadata !"long long int", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!87 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !16, i32 1373, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, null} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{null, metadata !46, metadata !40}
!90 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !16, i32 1374, metadata !91, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, null} ; [ DW_TAG_subroutine_type ]
!92 = metadata !{null, metadata !46, metadata !93}
!93 = metadata !{i32 458788, metadata !2, metadata !"float", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!94 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !16, i32 1375, metadata !95, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, null} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{null, metadata !46, metadata !97}
!97 = metadata !{i32 458788, metadata !2, metadata !"double", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!98 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !16, i32 1402, metadata !99, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, null} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{null, metadata !46, metadata !101}
!101 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !102} ; [ DW_TAG_pointer_type ]
!102 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !103} ; [ DW_TAG_const_type ]
!103 = metadata !{i32 458788, metadata !2, metadata !"char", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!104 = metadata !{i32 458798, i32 0, metadata !15, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !16, i32 1408, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, null} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{null, metadata !46, metadata !101, metadata !54}
!107 = metadata !{i32 458798, i32 0, metadata !15, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi8ELb0EE4readEv", metadata !16, i32 1428, metadata !108, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, null} ; [ DW_TAG_subroutine_type ]
!109 = metadata !{metadata !15, metadata !110}
!110 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !111} ; [ DW_TAG_pointer_type ]
!111 = metadata !{i32 458805, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !15} ; [ DW_TAG_volatile_type ]
!112 = metadata !{i32 458798, i32 0, metadata !15, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi8ELb0EE5writeERKS0_", metadata !16, i32 1434, metadata !113, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!113 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !114, i32 0, null} ; [ DW_TAG_subroutine_type ]
!114 = metadata !{null, metadata !110, metadata !115}
!115 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !116} ; [ DW_TAG_reference_type ]
!116 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ]
!117 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi8ELb0EEaSERVKS0_", metadata !16, i32 1446, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!118 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, null} ; [ DW_TAG_subroutine_type ]
!119 = metadata !{null, metadata !110, metadata !120}
!120 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_reference_type ]
!121 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !111} ; [ DW_TAG_const_type ]
!122 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi8ELb0EEaSERKS0_", metadata !16, i32 1455, metadata !113, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0EEaSERVKS0_", metadata !16, i32 1478, metadata !124, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, null} ; [ DW_TAG_subroutine_type ]
!125 = metadata !{metadata !126, metadata !46, metadata !120}
!126 = metadata !{i32 458768, metadata !2, metadata !"ap_int_base<8,false>", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_reference_type ]
!127 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0EEaSERKS0_", metadata !16, i32 1483, metadata !128, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, null} ; [ DW_TAG_subroutine_type ]
!129 = metadata !{metadata !126, metadata !46, metadata !115}
!130 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0EEaSEPKc", metadata !16, i32 1487, metadata !131, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!131 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, null} ; [ DW_TAG_subroutine_type ]
!132 = metadata !{metadata !126, metadata !46, metadata !101}
!133 = metadata !{i32 458798, i32 0, metadata !15, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi8ELb0EE3setEPKca", metadata !16, i32 1494, metadata !134, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!134 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, null} ; [ DW_TAG_subroutine_type ]
!135 = metadata !{metadata !126, metadata !46, metadata !101, metadata !54}
!136 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0EEaSEy", metadata !16, i32 1502, metadata !137, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!137 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, null} ; [ DW_TAG_subroutine_type ]
!138 = metadata !{metadata !126, metadata !46, metadata !40}
!139 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0EEaSEx", metadata !16, i32 1507, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!140 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, null} ; [ DW_TAG_subroutine_type ]
!141 = metadata !{metadata !126, metadata !46, metadata !86}
!142 = metadata !{i32 458798, i32 0, metadata !15, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi8ELb0EE6to_intEv", metadata !16, i32 1553, metadata !143, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!143 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, null} ; [ DW_TAG_subroutine_type ]
!144 = metadata !{metadata !70, metadata !145}
!145 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !116} ; [ DW_TAG_pointer_type ]
!146 = metadata !{i32 458798, i32 0, metadata !15, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi8ELb0EE7to_uintEv", metadata !16, i32 1554, metadata !147, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!147 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, null} ; [ DW_TAG_subroutine_type ]
!148 = metadata !{metadata !74, metadata !145}
!149 = metadata !{i32 458798, i32 0, metadata !15, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi8ELb0EE7to_longEv", metadata !16, i32 1555, metadata !150, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!150 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, null} ; [ DW_TAG_subroutine_type ]
!151 = metadata !{metadata !78, metadata !145}
!152 = metadata !{i32 458798, i32 0, metadata !15, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi8ELb0EE8to_ulongEv", metadata !16, i32 1556, metadata !153, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!153 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !154, i32 0, null} ; [ DW_TAG_subroutine_type ]
!154 = metadata !{metadata !82, metadata !145}
!155 = metadata !{i32 458798, i32 0, metadata !15, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi8ELb0EE8to_int64Ev", metadata !16, i32 1557, metadata !156, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!156 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, null} ; [ DW_TAG_subroutine_type ]
!157 = metadata !{metadata !158, metadata !145}
!158 = metadata !{i32 458774, metadata !2, metadata !"ap_slong", metadata !16, i32 65, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ]
!159 = metadata !{i32 458798, i32 0, metadata !15, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi8ELb0EE9to_uint64Ev", metadata !16, i32 1558, metadata !160, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!160 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, null} ; [ DW_TAG_subroutine_type ]
!161 = metadata !{metadata !38, metadata !145}
!162 = metadata !{i32 458798, i32 0, metadata !15, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi8ELb0EE9to_doubleEv", metadata !16, i32 1559, metadata !163, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!163 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, null} ; [ DW_TAG_subroutine_type ]
!164 = metadata !{metadata !97, metadata !145}
!165 = metadata !{i32 458798, i32 0, metadata !15, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi8ELb0EE6lengthEv", metadata !16, i32 1572, metadata !143, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!166 = metadata !{i32 458798, i32 0, metadata !15, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi8ELb0EE6lengthEv", metadata !16, i32 1573, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!167 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, null} ; [ DW_TAG_subroutine_type ]
!168 = metadata !{metadata !70, metadata !169}
!169 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !121} ; [ DW_TAG_pointer_type ]
!170 = metadata !{i32 458798, i32 0, metadata !15, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi8ELb0EE7reverseEv", metadata !16, i32 1578, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!171 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, null} ; [ DW_TAG_subroutine_type ]
!172 = metadata !{metadata !126, metadata !46}
!173 = metadata !{i32 458798, i32 0, metadata !15, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi8ELb0EE6iszeroEv", metadata !16, i32 1584, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!174 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, null} ; [ DW_TAG_subroutine_type ]
!175 = metadata !{metadata !50, metadata !145}
!176 = metadata !{i32 458798, i32 0, metadata !15, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi8ELb0EE7is_zeroEv", metadata !16, i32 1589, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!177 = metadata !{i32 458798, i32 0, metadata !15, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi8ELb0EE4signEv", metadata !16, i32 1594, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!178 = metadata !{i32 458798, i32 0, metadata !15, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi8ELb0EE5clearEi", metadata !16, i32 1602, metadata !68, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!179 = metadata !{i32 458798, i32 0, metadata !15, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi8ELb0EE6invertEi", metadata !16, i32 1608, metadata !68, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 458798, i32 0, metadata !15, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi8ELb0EE4testEi", metadata !16, i32 1616, metadata !181, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!181 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !182, i32 0, null} ; [ DW_TAG_subroutine_type ]
!182 = metadata !{metadata !50, metadata !145, metadata !70}
!183 = metadata !{i32 458798, i32 0, metadata !15, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi8ELb0EE3setEi", metadata !16, i32 1622, metadata !68, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!184 = metadata !{i32 458798, i32 0, metadata !15, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi8ELb0EE3setEib", metadata !16, i32 1628, metadata !185, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!185 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, null} ; [ DW_TAG_subroutine_type ]
!186 = metadata !{null, metadata !46, metadata !70, metadata !50}
!187 = metadata !{i32 458798, i32 0, metadata !15, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi8ELb0EE7lrotateEi", metadata !16, i32 1635, metadata !68, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!188 = metadata !{i32 458798, i32 0, metadata !15, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi8ELb0EE7rrotateEi", metadata !16, i32 1644, metadata !68, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!189 = metadata !{i32 458798, i32 0, metadata !15, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi8ELb0EE7set_bitEib", metadata !16, i32 1652, metadata !185, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!190 = metadata !{i32 458798, i32 0, metadata !15, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi8ELb0EE7get_bitEi", metadata !16, i32 1657, metadata !181, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 458798, i32 0, metadata !15, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi8ELb0EE5b_notEv", metadata !16, i32 1662, metadata !44, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!192 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi8ELb0EEppEv", metadata !16, i32 1733, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!193 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi8ELb0EEmmEv", metadata !16, i32 1737, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi8ELb0EEppEi", metadata !16, i32 1745, metadata !195, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!195 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !196, i32 0, null} ; [ DW_TAG_subroutine_type ]
!196 = metadata !{metadata !116, metadata !46, metadata !70}
!197 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi8ELb0EEmmEi", metadata !16, i32 1750, metadata !195, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!198 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator+", metadata !"operator+", metadata !"_ZN11ap_int_baseILi8ELb0EEpsEv", metadata !16, i32 1759, metadata !199, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, null} ; [ DW_TAG_subroutine_type ]
!200 = metadata !{metadata !15, metadata !46}
!201 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi8ELb0EEngEv", metadata !16, i32 1762, metadata !202, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!202 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, null} ; [ DW_TAG_subroutine_type ]
!203 = metadata !{metadata !204, metadata !145}
!204 = metadata !{i32 458771, metadata !2, metadata !"ap_int_base<9,true>", metadata !16, i32 1306, i64 0, i64 0, i64 0, i32 4, null, null, i32 0, null} ; [ DW_TAG_structure_type ]
!205 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi8ELb0EEntEv", metadata !16, i32 1769, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!206 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator~", metadata !"operator~", metadata !"_ZNK11ap_int_baseILi8ELb0EEcoEv", metadata !16, i32 1776, metadata !202, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!207 = metadata !{i32 458798, i32 0, metadata !15, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi8ELb0EE5rangeEii", metadata !16, i32 1901, metadata !208, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!208 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, null} ; [ DW_TAG_subroutine_type ]
!209 = metadata !{metadata !210, metadata !46, metadata !70, metadata !70}
!210 = metadata !{i32 458771, metadata !2, metadata !"ap_range_ref<8,false>", metadata !16, i32 871, i64 0, i64 0, i64 0, i32 4, null, null, i32 0, null} ; [ DW_TAG_structure_type ]
!211 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi8ELb0EEclEii", metadata !16, i32 1907, metadata !208, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!212 = metadata !{i32 458798, i32 0, metadata !15, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi8ELb0EE5rangeEii", metadata !16, i32 1913, metadata !213, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !214, i32 0, null} ; [ DW_TAG_subroutine_type ]
!214 = metadata !{metadata !210, metadata !145, metadata !70, metadata !70}
!215 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi8ELb0EEclEii", metadata !16, i32 1919, metadata !213, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi8ELb0EEixEi", metadata !16, i32 1978, metadata !217, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!217 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !218, i32 0, null} ; [ DW_TAG_subroutine_type ]
!218 = metadata !{metadata !219, metadata !46, metadata !70}
!219 = metadata !{i32 458771, metadata !2, metadata !"ap_bit_ref<8,false>", metadata !16, i32 1106, i64 0, i64 0, i64 0, i32 4, null, null, i32 0, null} ; [ DW_TAG_structure_type ]
!220 = metadata !{i32 458798, i32 0, metadata !15, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi8ELb0EEixEi", metadata !16, i32 1992, metadata !181, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!221 = metadata !{i32 458798, i32 0, metadata !15, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi8ELb0EE3bitEi", metadata !16, i32 2006, metadata !217, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 458798, i32 0, metadata !15, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi8ELb0EE3bitEi", metadata !16, i32 2020, metadata !181, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!223 = metadata !{i32 458798, i32 0, metadata !15, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi8ELb0EE10and_reduceEv", metadata !16, i32 2200, metadata !224, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!224 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !225, i32 0, null} ; [ DW_TAG_subroutine_type ]
!225 = metadata !{metadata !50, metadata !46}
!226 = metadata !{i32 458798, i32 0, metadata !15, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi8ELb0EE11nand_reduceEv", metadata !16, i32 2203, metadata !224, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!227 = metadata !{i32 458798, i32 0, metadata !15, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi8ELb0EE9or_reduceEv", metadata !16, i32 2206, metadata !224, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 458798, i32 0, metadata !15, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi8ELb0EE10nor_reduceEv", metadata !16, i32 2209, metadata !224, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!229 = metadata !{i32 458798, i32 0, metadata !15, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi8ELb0EE10xor_reduceEv", metadata !16, i32 2212, metadata !224, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!230 = metadata !{i32 458798, i32 0, metadata !15, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi8ELb0EE11xnor_reduceEv", metadata !16, i32 2215, metadata !224, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 458798, i32 0, metadata !15, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0EE10and_reduceEv", metadata !16, i32 2219, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!232 = metadata !{i32 458798, i32 0, metadata !15, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0EE11nand_reduceEv", metadata !16, i32 2222, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!233 = metadata !{i32 458798, i32 0, metadata !15, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0EE9or_reduceEv", metadata !16, i32 2225, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!234 = metadata !{i32 458798, i32 0, metadata !15, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0EE10nor_reduceEv", metadata !16, i32 2228, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!235 = metadata !{i32 458798, i32 0, metadata !15, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0EE10xor_reduceEv", metadata !16, i32 2231, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!236 = metadata !{i32 458798, i32 0, metadata !15, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0EE11xnor_reduceEv", metadata !16, i32 2234, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!237 = metadata !{i32 458798, i32 0, metadata !15, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi8ELb0EE9to_stringEPci8BaseModeb", metadata !16, i32 2241, metadata !238, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!238 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !239, i32 0, null} ; [ DW_TAG_subroutine_type ]
!239 = metadata !{null, metadata !145, metadata !240, metadata !70, metadata !241, metadata !50}
!240 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ]
!241 = metadata !{i32 458756, metadata !2, metadata !"BaseMode", metadata !16, i32 551, i64 32, i64 32, i64 0, i32 0, null, metadata !242, i32 0, null} ; [ DW_TAG_enumeration_type ]
!242 = metadata !{metadata !243, metadata !244, metadata !245, metadata !246}
!243 = metadata !{i32 458792, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!244 = metadata !{i32 458792, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!245 = metadata !{i32 458792, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!246 = metadata !{i32 458792, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!247 = metadata !{i32 458798, i32 0, metadata !15, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi8ELb0EE9to_stringE8BaseModeb", metadata !16, i32 2268, metadata !248, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!248 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !249, i32 0, null} ; [ DW_TAG_subroutine_type ]
!249 = metadata !{metadata !240, metadata !145, metadata !241, metadata !50}
!250 = metadata !{i32 458798, i32 0, metadata !15, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi8ELb0EE9to_stringEab", metadata !16, i32 2272, metadata !251, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, null} ; [ DW_TAG_subroutine_type ]
!252 = metadata !{metadata !240, metadata !145, metadata !54, metadata !50}
!253 = metadata !{i32 458798, i32 0, metadata !11, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !12, i32 137, metadata !254, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!254 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, null} ; [ DW_TAG_subroutine_type ]
!255 = metadata !{null, metadata !256}
!256 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !11} ; [ DW_TAG_pointer_type ]
!257 = metadata !{i32 458798, i32 0, metadata !11, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !12, i32 199, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!258 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !259, i32 0, null} ; [ DW_TAG_subroutine_type ]
!259 = metadata !{null, metadata !256, metadata !50}
!260 = metadata !{i32 458798, i32 0, metadata !11, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !12, i32 200, metadata !261, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!261 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !262, i32 0, null} ; [ DW_TAG_subroutine_type ]
!262 = metadata !{null, metadata !256, metadata !54}
!263 = metadata !{i32 458798, i32 0, metadata !11, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !12, i32 201, metadata !264, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!264 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !265, i32 0, null} ; [ DW_TAG_subroutine_type ]
!265 = metadata !{null, metadata !256, metadata !58}
!266 = metadata !{i32 458798, i32 0, metadata !11, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !12, i32 202, metadata !267, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!267 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !268, i32 0, null} ; [ DW_TAG_subroutine_type ]
!268 = metadata !{null, metadata !256, metadata !62}
!269 = metadata !{i32 458798, i32 0, metadata !11, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !12, i32 203, metadata !270, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!270 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !271, i32 0, null} ; [ DW_TAG_subroutine_type ]
!271 = metadata !{null, metadata !256, metadata !66}
!272 = metadata !{i32 458798, i32 0, metadata !11, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !12, i32 204, metadata !273, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!273 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !274, i32 0, null} ; [ DW_TAG_subroutine_type ]
!274 = metadata !{null, metadata !256, metadata !70}
!275 = metadata !{i32 458798, i32 0, metadata !11, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !12, i32 205, metadata !276, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!276 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, null} ; [ DW_TAG_subroutine_type ]
!277 = metadata !{null, metadata !256, metadata !74}
!278 = metadata !{i32 458798, i32 0, metadata !11, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !12, i32 206, metadata !279, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!279 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !280, i32 0, null} ; [ DW_TAG_subroutine_type ]
!280 = metadata !{null, metadata !256, metadata !78}
!281 = metadata !{i32 458798, i32 0, metadata !11, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !12, i32 207, metadata !282, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!282 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !283, i32 0, null} ; [ DW_TAG_subroutine_type ]
!283 = metadata !{null, metadata !256, metadata !82}
!284 = metadata !{i32 458798, i32 0, metadata !11, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !12, i32 208, metadata !285, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!285 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !286, i32 0, null} ; [ DW_TAG_subroutine_type ]
!286 = metadata !{null, metadata !256, metadata !40}
!287 = metadata !{i32 458798, i32 0, metadata !11, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !12, i32 209, metadata !288, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!288 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !289, i32 0, null} ; [ DW_TAG_subroutine_type ]
!289 = metadata !{null, metadata !256, metadata !86}
!290 = metadata !{i32 458798, i32 0, metadata !11, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !12, i32 210, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !292, i32 0, null} ; [ DW_TAG_subroutine_type ]
!292 = metadata !{null, metadata !256, metadata !93}
!293 = metadata !{i32 458798, i32 0, metadata !11, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !12, i32 211, metadata !294, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!294 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, null} ; [ DW_TAG_subroutine_type ]
!295 = metadata !{null, metadata !256, metadata !97}
!296 = metadata !{i32 458798, i32 0, metadata !11, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !12, i32 213, metadata !297, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!297 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !298, i32 0, null} ; [ DW_TAG_subroutine_type ]
!298 = metadata !{null, metadata !256, metadata !101}
!299 = metadata !{i32 458798, i32 0, metadata !11, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !12, i32 214, metadata !300, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!300 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, null} ; [ DW_TAG_subroutine_type ]
!301 = metadata !{null, metadata !256, metadata !101, metadata !54}
!302 = metadata !{i32 458798, i32 0, metadata !11, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi8EEaSERKS0_", metadata !12, i32 217, metadata !303, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!303 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !304, i32 0, null} ; [ DW_TAG_subroutine_type ]
!304 = metadata !{null, metadata !305, metadata !307}
!305 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !306} ; [ DW_TAG_pointer_type ]
!306 = metadata !{i32 458805, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !11} ; [ DW_TAG_volatile_type ]
!307 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !308} ; [ DW_TAG_reference_type ]
!308 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!309 = metadata !{i32 458798, i32 0, metadata !11, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi8EEaSERVKS0_", metadata !12, i32 221, metadata !310, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!310 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !311, i32 0, null} ; [ DW_TAG_subroutine_type ]
!311 = metadata !{null, metadata !305, metadata !312}
!312 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !313} ; [ DW_TAG_reference_type ]
!313 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !306} ; [ DW_TAG_const_type ]
!314 = metadata !{i32 458798, i32 0, metadata !11, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi8EEaSERVKS0_", metadata !12, i32 225, metadata !315, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!315 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !316, i32 0, null} ; [ DW_TAG_subroutine_type ]
!316 = metadata !{metadata !317, metadata !256, metadata !312}
!317 = metadata !{i32 458768, metadata !2, metadata !"ap_uint<8>", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_reference_type ]
!318 = metadata !{i32 458798, i32 0, metadata !11, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi8EEaSERKS0_", metadata !12, i32 230, metadata !319, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!319 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !320, i32 0, null} ; [ DW_TAG_subroutine_type ]
!320 = metadata !{metadata !317, metadata !256, metadata !307}
!321 = metadata !{i32 458765, metadata !8, metadata !"G", metadata !7, i32 56, i64 8, i64 8, i64 8, i32 0, metadata !11} ; [ DW_TAG_member ]
!322 = metadata !{i32 458765, metadata !8, metadata !"R", metadata !7, i32 57, i64 8, i64 8, i64 16, i32 0, metadata !11} ; [ DW_TAG_member ]
!323 = metadata !{i32 458798, i32 0, metadata !8, metadata !"operator=", metadata !"operator=", metadata !"_ZN6ap_rgbILi8ELi8ELi8EEaSERKS0_", metadata !7, i32 54, metadata !324, i1 false, i1 true, i32 0, i32 0, null, i1 true} ; [ DW_TAG_subprogram ]
!324 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !325, i32 0, null} ; [ DW_TAG_subroutine_type ]
!325 = metadata !{metadata !326, metadata !327, metadata !328}
!326 = metadata !{i32 458768, metadata !2, metadata !"ap_rgb<8,8,8>", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_reference_type ]
!327 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !8} ; [ DW_TAG_pointer_type ]
!328 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !329} ; [ DW_TAG_reference_type ]
!329 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 24, i64 8, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ]
!330 = metadata !{i32 458798, i32 0, metadata !8, metadata !"ap_rgb", metadata !"ap_rgb", metadata !"", metadata !7, i32 54, metadata !331, i1 false, i1 false, i32 0, i32 0, null, i1 true} ; [ DW_TAG_subprogram ]
!331 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !332, i32 0, null} ; [ DW_TAG_subroutine_type ]
!332 = metadata !{null, metadata !327}
!333 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !334} ; [ DW_TAG_pointer_type ]
!334 = metadata !{i32 458774, metadata !2, metadata !"WINDOW", metadata !335, i32 70, i64 0, i64 0, i64 0, i32 0, metadata !336} ; [ DW_TAG_typedef ]
!335 = metadata !{i32 458769, i32 0, i32 4, metadata !"sobel.h", metadata !"C:\5CWORK\5Csobel_variable\5Caxi_sobel\5Caxi_sobel/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!336 = metadata !{i32 458771, metadata !2, metadata !"ap_window<unsigned char,3,3>", metadata !7, i32 176, i64 72, i64 8, i64 0, i32 0, null, metadata !337, i32 0, null} ; [ DW_TAG_structure_type ]
!337 = metadata !{metadata !338, metadata !342, metadata !346, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !356, metadata !357}
!338 = metadata !{i32 458765, metadata !336, metadata !"M", metadata !7, i32 178, i64 72, i64 8, i64 0, i32 0, metadata !339} ; [ DW_TAG_member ]
!339 = metadata !{i32 458753, metadata !2, metadata !"", metadata !2, i32 0, i64 72, i64 8, i64 0, i32 0, metadata !58, metadata !340, i32 0, null} ; [ DW_TAG_array_type ]
!340 = metadata !{metadata !341, metadata !341}
!341 = metadata !{i32 458785, i64 0, i64 2}       ; [ DW_TAG_subrange_type ]
!342 = metadata !{i32 458798, i32 0, metadata !336, metadata !"ap_window", metadata !"ap_window", metadata !"", metadata !7, i32 180, metadata !343, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!343 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !344, i32 0, null} ; [ DW_TAG_subroutine_type ]
!344 = metadata !{null, metadata !345}
!345 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 64, metadata !336} ; [ DW_TAG_pointer_type ]
!346 = metadata !{i32 458798, i32 0, metadata !336, metadata !"~ap_window", metadata !"~ap_window", metadata !"", metadata !7, i32 184, metadata !347, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!347 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !348, i32 0, null} ; [ DW_TAG_subroutine_type ]
!348 = metadata !{null, metadata !345, metadata !70}
!349 = metadata !{i32 458798, i32 0, metadata !336, metadata !"shift_right", metadata !"shift_right", metadata !"_ZN9ap_windowIhLi3ELi3EE11shift_rightEv", metadata !7, i32 222, metadata !343, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!350 = metadata !{i32 458798, i32 0, metadata !336, metadata !"shift_left", metadata !"shift_left", metadata !"_ZN9ap_windowIhLi3ELi3EE10shift_leftEv", metadata !7, i32 240, metadata !343, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!351 = metadata !{i32 458798, i32 0, metadata !336, metadata !"shift_up", metadata !"shift_up", metadata !"_ZN9ap_windowIhLi3ELi3EE8shift_upEv", metadata !7, i32 258, metadata !343, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!352 = metadata !{i32 458798, i32 0, metadata !336, metadata !"shift_down", metadata !"shift_down", metadata !"_ZN9ap_windowIhLi3ELi3EE10shift_downEv", metadata !7, i32 276, metadata !343, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!353 = metadata !{i32 458798, i32 0, metadata !336, metadata !"insert", metadata !"insert", metadata !"_ZN9ap_windowIhLi3ELi3EE6insertEhii", metadata !7, i32 293, metadata !354, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!354 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !355, i32 0, null} ; [ DW_TAG_subroutine_type ]
!355 = metadata !{null, metadata !345, metadata !58, metadata !70, metadata !70}
!356 = metadata !{i32 458798, i32 0, metadata !336, metadata !"print", metadata !"print", metadata !"_ZN9ap_windowIhLi3ELi3EE5printEv", metadata !7, i32 198, metadata !343, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!357 = metadata !{i32 458798, i32 0, metadata !336, metadata !"getval", metadata !"getval", metadata !"_ZN9ap_windowIhLi3ELi3EE6getvalEii", metadata !7, i32 303, metadata !358, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!358 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !359, i32 0, null} ; [ DW_TAG_subroutine_type ]
!359 = metadata !{metadata !58, metadata !345, metadata !70, metadata !70}
!360 = metadata !{i32 458753, metadata !2, metadata !"", metadata !2, i32 0, i64 72, i64 8, i64 0, i32 0, metadata !103, metadata !340, i32 0, null} ; [ DW_TAG_array_type ]
!361 = metadata !{i32 458804, i32 0, metadata !1, metadata !"x_op", metadata !"x_op", metadata !"", metadata !3, i32 74, metadata !360, i1 true, i1 true, null} ; [ DW_TAG_variable ]
