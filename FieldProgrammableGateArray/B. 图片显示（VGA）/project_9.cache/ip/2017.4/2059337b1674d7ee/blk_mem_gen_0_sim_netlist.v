// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jul  8 12:05:38 2020
// Host        : stu32 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [15:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [15:0]addra;
  wire clka;
  wire [11:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [15:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "16" *) 
  (* C_ADDRB_WIDTH = "16" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "2" *) 
  (* C_COUNT_36K_BRAM = "13" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     8.275238 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "39360" *) 
  (* C_READ_DEPTH_B = "39360" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "39360" *) 
  (* C_WRITE_DEPTH_B = "39360" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[15:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[15:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec
   (ena_array,
    addra);
  output [8:0]ena_array;
  input [3:0]addra;

  wire [3:0]addra;
  wire [8:0]ena_array;

  LUT4 #(
    .INIT(16'h0001)) 
    ENOUT
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[0]));
  LUT4 #(
    .INIT(16'h0010)) 
    \ENOUT_inferred__0/i_ 
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[0]),
        .I3(addra[1]),
        .O(ena_array[1]));
  LUT4 #(
    .INIT(16'h0010)) 
    \ENOUT_inferred__1/i_ 
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[2]));
  LUT4 #(
    .INIT(16'h0010)) 
    \ENOUT_inferred__3/i_ 
       (.I0(addra[3]),
        .I1(addra[1]),
        .I2(addra[2]),
        .I3(addra[0]),
        .O(ena_array[3]));
  LUT4 #(
    .INIT(16'h1000)) 
    \ENOUT_inferred__4/i_ 
       (.I0(addra[3]),
        .I1(addra[1]),
        .I2(addra[2]),
        .I3(addra[0]),
        .O(ena_array[4]));
  LUT4 #(
    .INIT(16'h1000)) 
    \ENOUT_inferred__5/i_ 
       (.I0(addra[3]),
        .I1(addra[0]),
        .I2(addra[2]),
        .I3(addra[1]),
        .O(ena_array[5]));
  LUT4 #(
    .INIT(16'h4000)) 
    \ENOUT_inferred__6/i_ 
       (.I0(addra[3]),
        .I1(addra[2]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[6]));
  LUT4 #(
    .INIT(16'h0010)) 
    \ENOUT_inferred__7/i_ 
       (.I0(addra[2]),
        .I1(addra[1]),
        .I2(addra[3]),
        .I3(addra[0]),
        .O(ena_array[7]));
  LUT4 #(
    .INIT(16'h1000)) 
    \ENOUT_inferred__8/i_ 
       (.I0(addra[2]),
        .I1(addra[1]),
        .I2(addra[3]),
        .I3(addra[0]),
        .O(ena_array[8]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (douta,
    addra,
    clka);
  output [11:0]douta;
  input [15:0]addra;
  input clka;

  wire [15:0]addra;
  wire clka;
  wire [11:0]douta;
  wire [9:0]ena_array;
  wire [8:0]p_11_out;
  wire [8:0]p_15_out;
  wire [8:0]p_19_out;
  wire [8:0]p_23_out;
  wire [8:0]p_27_out;
  wire [8:0]p_31_out;
  wire [8:0]p_35_out;
  wire [8:0]p_39_out;
  wire [8:0]p_3_out;
  wire [8:0]p_7_out;
  wire ram_douta;
  wire ram_ena_n_0;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_0 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[15:12]),
        .ena_array({ena_array[9:4],ena_array[2:0]}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (ram_douta),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[2].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[4].ram.r_n_0 ),
        .DOADO(\ramloop[1].ram.r_n_0 ),
        .addra(addra[15:12]),
        .clka(clka),
        .douta(douta),
        .p_11_out(p_11_out),
        .p_15_out(p_15_out),
        .p_19_out(p_19_out),
        .p_23_out(p_23_out),
        .p_27_out(p_27_out),
        .p_31_out(p_31_out),
        .p_35_out(p_35_out),
        .p_39_out(p_39_out),
        .p_3_out(p_3_out),
        .p_7_out(p_7_out));
  LUT1 #(
    .INIT(2'h1)) 
    ram_ena
       (.I0(addra[15]),
        .O(ram_ena_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra[14:0]),
        .\addra[15] (ram_ena_n_0),
        .clka(clka),
        .\douta[0] (ram_douta));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[5]),
        .p_19_out(p_19_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[6]),
        .p_15_out(p_15_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[7]),
        .p_11_out(p_11_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[8]),
        .p_7_out(p_7_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[9]),
        .p_3_out(p_3_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DOADO(\ramloop[1].ram.r_n_0 ),
        .addra(addra),
        .clka(clka));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[14:0]),
        .\addra[15] (ram_ena_n_0),
        .clka(clka),
        .\douta[1] (\ramloop[2].ram.r_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra),
        .clka(clka),
        .\douta[2] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 }));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[14:0]),
        .\addra[15] (ram_ena_n_0),
        .clka(clka),
        .\douta[2] (\ramloop[4].ram.r_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[0]),
        .p_39_out(p_39_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[1]),
        .p_35_out(p_35_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[2]),
        .p_31_out(p_31_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.addra(addra),
        .clka(clka),
        .p_27_out(p_27_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[4]),
        .p_23_out(p_23_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
   (douta,
    p_3_out,
    p_7_out,
    addra,
    clka,
    DOADO,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    p_27_out,
    p_31_out,
    p_35_out,
    p_39_out,
    p_11_out,
    p_15_out,
    p_19_out,
    p_23_out);
  output [11:0]douta;
  input [8:0]p_3_out;
  input [8:0]p_7_out;
  input [3:0]addra;
  input clka;
  input [0:0]DOADO;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [8:0]p_27_out;
  input [8:0]p_31_out;
  input [8:0]p_35_out;
  input [8:0]p_39_out;
  input [8:0]p_11_out;
  input [8:0]p_15_out;
  input [8:0]p_19_out;
  input [8:0]p_23_out;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [0:0]DOADO;
  wire [3:0]addra;
  wire clka;
  wire [11:0]douta;
  wire \douta[10]_INST_0_i_1_n_0 ;
  wire \douta[10]_INST_0_i_2_n_0 ;
  wire \douta[10]_INST_0_i_3_n_0 ;
  wire \douta[11]_INST_0_i_1_n_0 ;
  wire \douta[11]_INST_0_i_2_n_0 ;
  wire \douta[11]_INST_0_i_3_n_0 ;
  wire \douta[3]_INST_0_i_1_n_0 ;
  wire \douta[3]_INST_0_i_2_n_0 ;
  wire \douta[3]_INST_0_i_3_n_0 ;
  wire \douta[4]_INST_0_i_1_n_0 ;
  wire \douta[4]_INST_0_i_2_n_0 ;
  wire \douta[4]_INST_0_i_3_n_0 ;
  wire \douta[5]_INST_0_i_1_n_0 ;
  wire \douta[5]_INST_0_i_2_n_0 ;
  wire \douta[5]_INST_0_i_3_n_0 ;
  wire \douta[6]_INST_0_i_1_n_0 ;
  wire \douta[6]_INST_0_i_2_n_0 ;
  wire \douta[6]_INST_0_i_3_n_0 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire \douta[7]_INST_0_i_3_n_0 ;
  wire \douta[8]_INST_0_i_1_n_0 ;
  wire \douta[8]_INST_0_i_2_n_0 ;
  wire \douta[8]_INST_0_i_3_n_0 ;
  wire \douta[9]_INST_0_i_1_n_0 ;
  wire \douta[9]_INST_0_i_2_n_0 ;
  wire \douta[9]_INST_0_i_3_n_0 ;
  wire [8:0]p_11_out;
  wire [8:0]p_15_out;
  wire [8:0]p_19_out;
  wire [8:0]p_23_out;
  wire [8:0]p_27_out;
  wire [8:0]p_31_out;
  wire [8:0]p_35_out;
  wire [8:0]p_39_out;
  wire [8:0]p_3_out;
  wire [8:0]p_7_out;
  wire [3:0]sel_pipe;
  wire [3:0]sel_pipe_d1;

  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[0]_INST_0 
       (.I0(DOADO),
        .I1(sel_pipe_d1[2]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .O(douta[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[10]_INST_0 
       (.I0(\douta[10]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[10]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[10]_INST_0_i_3_n_0 ),
        .O(douta[10]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[10]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[7]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[7]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_2 
       (.I0(p_11_out[7]),
        .I1(p_15_out[7]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[7]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[7]),
        .O(\douta[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_3 
       (.I0(p_27_out[7]),
        .I1(p_31_out[7]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[7]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[7]),
        .O(\douta[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[11]_INST_0 
       (.I0(\douta[11]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[11]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[11]_INST_0_i_3_n_0 ),
        .O(douta[11]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[11]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[8]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[8]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_2 
       (.I0(p_11_out[8]),
        .I1(p_15_out[8]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[8]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[8]),
        .O(\douta[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_3 
       (.I0(p_27_out[8]),
        .I1(p_31_out[8]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[8]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[8]),
        .O(\douta[11]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe_d1[1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [0]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[3]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .O(douta[1]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe_d1[1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [1]),
        .I2(sel_pipe_d1[2]),
        .I3(sel_pipe_d1[3]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .O(douta[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[3]_INST_0 
       (.I0(\douta[3]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[3]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[3]_INST_0_i_3_n_0 ),
        .O(douta[3]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[3]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[0]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[0]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_2 
       (.I0(p_11_out[0]),
        .I1(p_15_out[0]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[0]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[0]),
        .O(\douta[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_3 
       (.I0(p_27_out[0]),
        .I1(p_31_out[0]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[0]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[0]),
        .O(\douta[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[4]_INST_0 
       (.I0(\douta[4]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[4]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[4]_INST_0_i_3_n_0 ),
        .O(douta[4]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[4]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[1]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[1]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_2 
       (.I0(p_11_out[1]),
        .I1(p_15_out[1]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[1]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[1]),
        .O(\douta[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_3 
       (.I0(p_27_out[1]),
        .I1(p_31_out[1]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[1]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[1]),
        .O(\douta[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[5]_INST_0 
       (.I0(\douta[5]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[5]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[5]_INST_0_i_3_n_0 ),
        .O(douta[5]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[5]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[2]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[2]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_2 
       (.I0(p_11_out[2]),
        .I1(p_15_out[2]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[2]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[2]),
        .O(\douta[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_3 
       (.I0(p_27_out[2]),
        .I1(p_31_out[2]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[2]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[2]),
        .O(\douta[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[6]_INST_0 
       (.I0(\douta[6]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[6]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[6]_INST_0_i_3_n_0 ),
        .O(douta[6]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[6]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[3]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[3]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_2 
       (.I0(p_11_out[3]),
        .I1(p_15_out[3]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[3]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[3]),
        .O(\douta[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_3 
       (.I0(p_27_out[3]),
        .I1(p_31_out[3]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[3]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[3]),
        .O(\douta[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[7]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[7]_INST_0_i_3_n_0 ),
        .O(douta[7]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[7]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[4]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[4]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_2 
       (.I0(p_11_out[4]),
        .I1(p_15_out[4]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[4]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[4]),
        .O(\douta[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_3 
       (.I0(p_27_out[4]),
        .I1(p_31_out[4]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[4]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[4]),
        .O(\douta[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[8]_INST_0 
       (.I0(\douta[8]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[8]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[8]_INST_0_i_3_n_0 ),
        .O(douta[8]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[8]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[5]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[5]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_2 
       (.I0(p_11_out[5]),
        .I1(p_15_out[5]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[5]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[5]),
        .O(\douta[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_3 
       (.I0(p_27_out[5]),
        .I1(p_31_out[5]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[5]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[5]),
        .O(\douta[8]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[9]_INST_0 
       (.I0(\douta[9]_INST_0_i_1_n_0 ),
        .I1(sel_pipe_d1[3]),
        .I2(\douta[9]_INST_0_i_2_n_0 ),
        .I3(sel_pipe_d1[2]),
        .I4(\douta[9]_INST_0_i_3_n_0 ),
        .O(douta[9]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[9]_INST_0_i_1 
       (.I0(sel_pipe_d1[1]),
        .I1(p_3_out[6]),
        .I2(sel_pipe_d1[0]),
        .I3(p_7_out[6]),
        .I4(sel_pipe_d1[2]),
        .O(\douta[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_2 
       (.I0(p_11_out[6]),
        .I1(p_15_out[6]),
        .I2(sel_pipe_d1[1]),
        .I3(p_19_out[6]),
        .I4(sel_pipe_d1[0]),
        .I5(p_23_out[6]),
        .O(\douta[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_3 
       (.I0(p_27_out[6]),
        .I1(p_31_out[6]),
        .I2(sel_pipe_d1[1]),
        .I3(p_35_out[6]),
        .I4(sel_pipe_d1[0]),
        .I5(p_39_out[6]),
        .O(\douta[9]_INST_0_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[3]),
        .Q(sel_pipe_d1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[3]),
        .Q(sel_pipe[3]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (\douta[0] ,
    clka,
    \addra[15] ,
    addra);
  output [0:0]\douta[0] ;
  input clka;
  input \addra[15] ;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[0] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .clka(clka),
        .\douta[0] (\douta[0] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
   (DOADO,
    clka,
    addra);
  output [0:0]DOADO;
  input clka;
  input [15:0]addra;

  wire [0:0]DOADO;
  wire [15:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.DOADO(DOADO),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (\douta[1] ,
    clka,
    \addra[15] ,
    addra);
  output [0:0]\douta[1] ;
  input clka;
  input \addra[15] ;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[1] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .clka(clka),
        .\douta[1] (\douta[1] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10
   (p_15_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_15_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_15_out(p_15_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11
   (p_11_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_11_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_11_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_11_out(p_11_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12
   (p_7_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_7_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_7_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_7_out(p_7_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13
   (p_3_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_3_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_3_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_3_out(p_3_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (\douta[2] ,
    clka,
    addra);
  output [1:0]\douta[2] ;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [1:0]\douta[2] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[2] (\douta[2] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
   (\douta[2] ,
    clka,
    \addra[15] ,
    addra);
  output [0:0]\douta[2] ;
  input clka;
  input \addra[15] ;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[2] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .clka(clka),
        .\douta[2] (\douta[2] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4
   (p_39_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_39_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_39_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_39_out(p_39_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5
   (p_35_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_35_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_35_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_35_out(p_35_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6
   (p_31_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_31_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_31_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_31_out(p_31_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7
   (p_27_out,
    clka,
    addra);
  output [8:0]p_27_out;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [8:0]p_27_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .p_27_out(p_27_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8
   (p_23_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_23_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_23_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_23_out(p_23_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9
   (p_19_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_19_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_19_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_19_out(p_19_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
   (\douta[0] ,
    clka,
    \addra[15] ,
    addra);
  output [0:0]\douta[0] ;
  input clka;
  input \addra[15] ;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[0] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hE3F8F301E9BF667E72D78353CA304BCFEE08A4C1E99FB1FF9DD414818305D3F0),
    .INIT_01(256'h9E6F3C79C0F9B8BB9871B5F06A62A02DE1FA22DDB808B7F77FC3528AB030C196),
    .INIT_02(256'h9A98B5CE3C203F141EC6981B7C0D60CA16C03E9F3EA7C41CF1A1806B4183F20B),
    .INIT_03(256'hA1A49E1B230F800FED1B2352799F8C93FD79400F8C0358010614D8000CDA5D7C),
    .INIT_04(256'h0397345B25B3803800FCC6489BCF3FE3CD2251B0E3E660267E3E66EC0000C211),
    .INIT_05(256'h007FF2E61728AC6E33800FCEDBCB03C0F9FCEB6B8C7FB94E14D3BFCEB400000F),
    .INIT_06(256'h000001FCBB0D26D9B8F33001FC564D5FFE007FD68553E8006082B9F7FDFB0000),
    .INIT_07(256'hC3E0000BFE52C77CB181C326007FC5C6D7FFC03F718EC674FE03309AD0037105),
    .INIT_08(256'h4530FC000FFF14547F6C412732C00FFABF69FFF80FFC66A9C59FCB2432903C5A),
    .INIT_09(256'h94D16C7F0001FFA5D47FD3E0F3F2B003FEE0367FFFCFFF59F73EB7F52705ABF6),
    .INIT_0A(256'h83294FB63FC0007FC69D9F3D7380EE543CFFD6739FC3FFFFD66D408DFD690E63),
    .INIT_0B(256'hB01C435F2BCE6000FFF4A566868E213FDD0F1FF2E1C3E01FFFE5934F998F4540),
    .INIT_0C(256'hC39882C9D8DBC60C001FFD6F6BC0C46021E247E7FCC3E03007FFF944D21C9364),
    .INIT_0D(256'hAF903E0F01F1B383B9003C0FA424F010F20F8091D9FF9FC000007FFC51369E5E),
    .INIT_0E(256'h90AC64FD87FC0FE7C05F600FE3EAE23E07E28C0CD4F73FF3C0007E07FE34BACE),
    .INIT_0F(256'h579828090FF0FCD307F037981DD4FCBD0FE2526718C23CCFFE00007FC07F8D61),
    .INIT_10(256'hFE6A144BF4F80E3E46033C1BF3FE5A9FCF07BF64D986FC8F33FFC0E0381807E3),
    .INIT_11(256'h463FCD36E51D6FFC9E31C0DF8CFE0E3147FC1F83B585498463DC7FF9FF0CF319),
    .INIT_12(256'hD0698FF19E1232B830B718713FCF7FF39825E7FFE02A6149B073FF1FFFFFE367),
    .INIT_13(256'hFE29F503FE3C6DBD5F01D4CE3C0FC39F06E4F37807F8F507EA321FFFC7FF1BF8),
    .INIT_14(256'hC01FCA82B03F8BF76F54C1F5330C11F067E29025AC006646C27D46E3C0E3FF00),
    .INIT_15(256'h3FF80FE28F5387E7FFE7AA1216B4C20C1C19F2A0F99B0001AC7E6F50CC0338FF),
    .INIT_16(256'hCC8FFE01F8A66AFCF1FE8192791BA5618007067147CC68FF806A04643473C7F6),
    .INIT_17(256'h3F80B3FC000E289AA300FF9BED601D4E886400C09D93063A3FF9F281C67BFCFF),
    .INIT_18(256'h9CFFF1263C00010ABC88007FEEC2671962AA0BC0202CAB1F2CEFFF27230C61C8),
    .INIT_19(256'h7EC80FFCE4E0FFE00270541C3FFB81AD3643168260100A53DC354BFF96DF9FC3),
    .INIT_1A(256'h0E025BF1F99CC3871F0453EB1FC7921BC9AA6DC220D00822913402CDFFE3AC1C),
    .INIT_1B(256'hB5C381523E7E67E7F008F80D9B1FFCC073F59C06F749F0061FAB8D0CE107E113),
    .INIT_1C(256'h4CF2A03FAA0F3F0D03039D8181C71FFFC70709B7F97F87F8019CC9D74711FE77),
    .INIT_1D(256'h97E893583C2A720FC14FBF81BF90003FFFF9C3A0A5FABF9B00000C45CC284CC0),
    .INIT_1E(256'h815184B7D8380D7B07726A37C72799007FFFFF396A2D5C9DE59201FA0EE6DA02),
    .INIT_1F(256'hEA4154E1EFCC19F89D43CC0A84F81901A3FFFFFE0FDBF5333236A205EB2E3B66),
    .INIT_20(256'hF76AA14BF04B207D8FCEA8F302A3438CF3127FFFFF018A04AC9465B1407413A9),
    .INIT_21(256'h6E48C421983E7A17B8CC025F1FC04FA788CCF1AFFFFFF8668ECA3D0CF27018DE),
    .INIT_22(256'h8137AC2E50E6EFE7759EE4002A818008140F81BFD5FFFFFF313CC58452B87205),
    .INIT_23(256'h74F88BD6F41C7896E5DE0C23000B0F00397ACF3FB39A3FFFFF9C609E413C6892),
    .INIT_24(256'hDD8A875CE4466A2F0512A74363C00D73FFFFA161FC7263AFFFFFE60FB0604EF8),
    .INIT_25(256'h181899227439EE6B0DD965062B5C103EDF007833300F8F2DDBF001F3801BB020),
    .INIT_26(256'h7F05FC1A7A26DC7FCB7A2F5EB5D6A863BC4000000638073E75EE000003807CF8),
    .INIT_27(256'h5F887E31817ED7E06112A307D05EDDE998FE4E017803FE06798292C7C0039E7E),
    .INIT_28(256'h298BE1E14B1D9D36FBE38CD0C3DBC86202C9C32CC1FF80FF0321B05F3F1801D9),
    .INIT_29(256'h4E1B7D30778DF8EC12677EC20C32970C07FF348C4A307FF033E0D7D4C48EFB38),
    .INIT_2A(256'hCF50090733531A6235698F5F60FFFDC578003FF53C81261FF8181C2B14991041),
    .INIT_2B(256'h2BFFCC05A942DB6E195147B3F62183F16000000FFED9D159C00019F39902A658),
    .INIT_2C(256'h2B3B00F583D5F09630876F9F4CFFD4FFFE30000001FFC983AE303FF103754CA9),
    .INIT_2D(256'hD412753E3961C9003E00A18424A2BDC2FFF6B8020000FFF302139CF00F3F6F52),
    .INIT_2E(256'h0D04DC42A39CE7F9600B74ED37692C6DE07F15F801F0003FFCC079CFF3F0706D),
    .INIT_2F(256'hF003617FCEF048E6B5980EE0206826542D3BE10B64008E000FFFB00CF1C383E0),
    .INIT_30(256'h07F000D85FC7CB158996C63F4E0248E54935DCF8E5B5005C8003FFEC007E0F83),
    .INIT_31(256'hFF03E003E627C6040ABACD0011B9E0A18EAE524560049BE02FB000FFFB603F80),
    .INIT_32(256'h3E3F91FFFF618B07FF0D530300E0AB87F8586B98BF0C3877300A34003FC69CFC),
    .INIT_33(256'h35D81FCC1FF020E6CF0FC4581801A6ABCC1067EBF9EE3C0036AFC58D001FA197),
    .INIT_34(256'hE60D361FF30003E7F92E13FE6E77800B17C670E60801D860400CA9C763C00F98),
    .INIT_35(256'h00FDC7231FFE0E03E03FDB0CE067F0D000C4E467FCC84066370007AF137CA003),
    .INIT_36(256'h36003F7FEF8E0FC7C3F007F4C727EB970400546666206F80ED88F0FFA95F1BC8),
    .INIT_37(256'h01E9800FFFFC0E00F3F8FF037DB1CA0DEC5A3304D666705B1A7BE287E01A3630),
    .INIT_38(256'h6C30182403FFFF027801E63FCF03A44539FC3E8FB1EAE661F4E17FE8BE03FCB3),
    .INIT_39(256'h30798E1807FFFFFBC0A6003F079FFCF50350C69164047B6663F7B89C43A0C380),
    .INIT_3A(256'hF9373F3601CBFFFFFDF80981CFC197FC9D41ACC0958D96665663F05044EF3CCF),
    .INIT_3B(256'hAEF130FFED303F3FFFFFF8166071E00A41D7504AE1958E25F44A67F80820C7DF),
    .INIT_3C(256'h280631B87FFD5F200FFF8FFC79181C020571B5543531F8482AC1922700030430),
    .INIT_3D(256'hA78CF1C06C4DA04BD201FFC00F30EC0707C15025950E91FFF84A67C1D700005E),
    .INIT_3E(256'h0199FC3E4E59F0BF9A75597DF83C11FE00060FAC0925668CFFC12AFFCAE5C000),
    .INIT_3F(256'hE0039C03C02BCC05C07E5DED577E70CDFE0C0371CB06A0DE543FC245700D2740),
    .INIT_40(256'h61F8201FFC7EB6EC81A00FE81B6EC7B31B7E0F9CBE06C357A82A3FE35A5C0063),
    .INIT_41(256'h001D4E287FFFC7FA31BFE3F1E109B3F069E6CF0E372FC263BA95B51FF3D94A00),
    .INIT_42(256'hAE8E74C3BB47F0F8301483C3FE7724C0C41A71980E05CBFB61934282DFF9E427),
    .INIT_43(256'h701A449CFCD50CF81F000D3CE3FF1D1C019486C1C3E479B2FF2049505F6FBCE1),
    .INIT_44(256'hF760093516400CC30E07E0666FBBFFC6A39801719FC074FF60DFD032D40C33EE),
    .INIT_45(256'h00FF8207F1D71AE620F0803C1129DAFFE33C083894F00012FF0E10740CB581F1),
    .INIT_46(256'hD8003FD40FF8F4C704DB3E6007000B085C78D5DD10F3FFA07B4E00C609032B60),
    .INIT_47(256'hED367FBFF2AFFC3CBFFCFDC79801E00665295C6693642C2FF8F9633011936192),
    .INIT_48(256'h1C01248FCFFF341F0EBD05F2F1E61078415FB77712C485290040FCB1B2F0FC67),
    .INIT_49(256'hB8007032D3F7FF920007B14FFDAC31803E1953CD4BCC8D303FB9D5F05850BEF8),
    .INIT_4A(256'hE4381B9BFC9AFFFF70E00FCCB3FFE90CC00F8FD6CDFAE33AB2E08C7B60E40BAF),
    .INIT_4B(256'hAFA5070FCA30758FFF9FFC07DD3C0042233017F7E99E0010CF1019C73E580376),
    .INIT_4C(256'h729AB2BCC7EA7C0745FFEFFFFFFC81F80FB4C60FF9F2E7800073D31955BFF17B),
    .INIT_4D(256'hFFF0854BD1FF14F8FF0B73FBFFFFFEACC3081ABCC7FEF93CE8807ECE41C42FFF),
    .INIT_4E(256'h39FFFFD6E355202678C0FFA4BEFFFFCF92CCC6FC679FBFA0DF1C31FFBB483253),
    .INIT_4F(256'h3409FFFFF9FE2EE9FC3CC78C8B2FBFFF81C3399F0F28E3E7C837C07FFEEC9240),
    .INIT_50(256'hCF58007FFFFF0F853AC19F633053C7800F30F7CE302AD21C31F40CF077FC3D3C),
    .INIT_51(256'hC06B15F00107FFC01F8C4F19B6342A73F300A63B65C7E3F647E039073C3F7F01),
    .INIT_52(256'h3FE0267AB4F000FFE5F30C5C4AD334F56CF803979EE33FF638DCEC00DFCE007F),
    .INIT_53(256'hC01F800B634A3C007FFAA1C9161CED6282E3FC0F3DF1418F82F00B80C027E300),
    .INIT_54(256'hF0381FC003BCED06001FFFA8799206FAA6FCABC3F8E39FEC680060793F9009E0),
    .INIT_55(256'h8379FC1FF80071BA910007FF26604EC1DD56DFA4AE1C019664180FC7FF703204),
    .INIT_56(256'hFCD19EC387FC0016274220007FBAA80F80575A49D525C0E0C549031FF807DF06),
    .INIT_57(256'h0E9C8BEFA401FF80146431F1E001EA49787E2BDA484ECC0000F1625047FC0035),
    .INIT_58(256'hF44AA83907CBC017E005E6FF4A5E027D433CE00DEA6822B5007FFC486419FF80),
    .INIT_59(256'h9FFB6FA40323B59800FE23FF3E43FFF01F4AEAE0037A6409269FFFFF1866C27F),
    .INIT_5A(256'hA167FFFE1A04378D43001FFFD2CEA95A1C3FFC633800FECE01285FFFFF074629),
    .INIT_5B(256'h7366D8FFD39C81060350C000FFFF4095B94F0EFB5A860037908C35CFFFFFCDDD),
    .INIT_5C(256'hC0DD588F1FFB483CF03E14380001FBE39B194B073D3282000DEC0702FFFFFFE3),
    .INIT_5D(256'h8000F756DB67F3501E3E00C51F820065341D3C5C11F6C7DB0002F301C060FE03),
    .INIT_5E(256'h0FC0007CF04748FFF5881FFF9167FFF5F0FD95D0184635AE0E6000A57C79F03F),
    .INIT_5F(256'h01C1F0001F3C15B93FFE8C0FFFF45DFFFFFCF2D62007F68FCB819800155F63FC),
    .INIT_60(256'h263C307FD187CA85A367FF4007FFFE0BFFFFFE25AC74012351EAA000001694E6),
    .INIT_61(256'h690E3FC81FFFF0E8335AA9FF2FF1DFFF82FFFFFE0791A30061A7362400000744),
    .INIT_62(256'h01D6447FF20FFFFE3B1FD4D5433BF277BF689E3EFF86073CD00DE7B22C800001),
    .INIT_63(256'h000075197FCC87FFFB8CE7F404E761869FCFA2B70FBFC163C522038114CB3000),
    .INIT_64(256'hCF80001D677FC1B1FFF8E359FC2731935EAF61D0A5C1FFE021F8BEC0FFA9E90C),
    .INIT_65(256'h2F1840000FE9DFF067F2601C147F2D06132CABF87E2160FFF8307E1F903FF718),
    .INIT_66(256'hFE9C439C2003C4B7FC0CF00003851F8BD674CA2AFC38E8583FFE0B0307C20FFB),
    .INIT_67(256'h0FFF29A8B80400F8A5FF0191FFFE3EB3824A8E6A8B7C0F75360FFBC2A00388E7),
    .INIT_68(256'hD8C00FE996F1000031E5FFC031C007E65CC198B6355C5F032D79079EE0280FCB),
    .INIT_69(256'h821E3022FB84DB30000CA537F0C780000E2D90CE0C00CA6F81DA6E5F91085A0C),
    .INIT_6A(256'h472165CC1E3E9D5A380003B56DFC3C1FF718F620E3C12FC82BC07EE91AAF001E),
    .INIT_6B(256'h2013AEA5FF1AFFF8AB7A00006A5BFF0FF9E7FF830A37E01504F5E03FD20CBCC0),
    .INIT_6C(256'hD37300F6557FF985C01561000031B6FFE387033F7F060A000333EBF10DFCCE89),
    .INIT_6D(256'hEDEE760036C45FFD758F06CBC30000258FF8C63F300001853840053938E24A3B),
    .INIT_6E(256'hCFFB76006000664FEEC5044FB2F0E003C9501E3379F3C00E435F807C87CCF9BF),
    .INIT_6F(256'hC067FCFD3FE40083CB75AAA75E6C5FFE00F2D60399B80E3F0F9194701EC4E61C),
    .INIT_70(256'hB807CFFF3ECFFD005FF199739F29A634044039B580E6D86060FFF4EB07072187),
    .INIT_71(256'hCC31FFFFFFCF903F4017FFE01FC873CE86E5D00E4D60312C77C703F93280C318),
    .INIT_72(256'h018707000007F3E7001005FFFFFFF3E7FFBE71CB0332500CD3101E380278A00F),
    .INIT_73(256'h8B0003800000001CF9FF0C413FFFFFFFC0000FC7BEFCC9B46335E5C067C0DE28),
    .INIT_74(256'hE5E2C403C0040000073E7FFF38400FF7FFFFFFFD60EC51F26BF8CD7D7FC63E37),
    .INIT_75(256'h8E1D7CB001E017C00001CF9FFC1F9800007FDFFFFFFFFE953CB27E32DF5FF0C3),
    .INIT_76(256'hFFF0E15FAC00E07FF0000033E3C207F3000000FFFFFFFFFFE52F2C9F80AFCBFF),
    .INIT_77(256'hFEBFFE0E2BEB10307FFC00000CF87001FCC000003FFFFFFFFFFF19CB33C06BF2),
    .INIT_78(256'h087F0FFFF0EAFA800C7FFF0000033E0700FF20003E1FFFFFFFFFFFFC32CCE015),
    .INIT_79(256'hCE06BFD3FFFE059EA0023FF3C00000DD87FC3FC8000FEFFFFFFFFFFFFF90B338),
    .INIT_7A(256'h0A63835FE5FFFE7054A81E9FFCF0000036719F87F60003F3FCFFFFFFF3C07C29),
    .INIT_7B(256'h0022B8C1CF3AFFFE0725399FA7FE000000199C40E07980003E063FFFFFFFE007),
    .INIT_7C(256'hC0000CA8706BEEBFFF80E94B67E8FF3800000643300C0E60111F8003FFFFFFF8),
    .INIT_7D(256'hFFC0001C3A701AFF4C000078D2EDFA0F8E000001B8C801E0101DFFF0003FFFFF),
    .INIT_7E(256'hFFFFE0000705B0051FD0000EFF2A897E80000000006734000F8C037FFC0007FF),
    .INIT_7F(256'h000FFFF00003C16BF347E8000FFF8AE25FA00000000019FB00001E0000FFC000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\douta[0] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[15] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOADO,
    clka,
    addra);
  output [0:0]DOADO;
  input clka;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__0_n_0 ;
  wire [0:0]DOADO;
  wire [15:0]addra;
  wire clka;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h3F0001FFFE00007059BEA1F4C03FFFE2B80BE800000003C63D800400000007FC),
    .INIT_01(256'h000000003FFF00001C178190F27FFFFFF8AE1AFA000001FFF1C18000CC000000),
    .INIT_02(256'h0000001C0007FFE000FF041C5BFD3FFFFFFE57F6BE80003BFFFE1F80041A0680),
    .INIT_03(256'h000000000700013FC0017FC16B91FCCFFF3FFF95DDAFC00063FFFF8000010001),
    .INIT_04(256'h00000000000B80000F0000FFF072CB7E30479FFFF5476BF00C301FFFF0000000),
    .INIT_05(256'h000000000003C000000000003FF418E7201F0003FFFD52D97A0DFC00FFFC0000),
    .INIT_06(256'hF8000000000000F8000000000003FD077CB00FFE0003FF53907D8FFF000CFF00),
    .INIT_07(256'h002E0000000000003E000000000000180170EBFFFFC00003D32BC00FFFC00000),
    .INIT_08(256'h000003F0000000000003000000000000000010030160000000720DFFEFFFF800),
    .INIT_09(256'hFFD00020F800010FC000000000000000000003000018000000F03C70FFFFFFFF),
    .INIT_0A(256'hFFFFFE0000040003D0E000000000400000000000C70F0FF347FFFFFF01FFFFFF),
    .INIT_0B(256'hFFFFFFFFC00000003FFFFC000000C018000000000007C1C1FFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFE003FFFFFEC0001FE0FFC0000000000303FFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFC00FFFFFFF800FFFFFFFEF000000000C7FFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFF007FFFFFFF003FFFFFFFFFC000000033FFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00FFFFFFFFBF80000000FFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF803FFFFFFF0C00000001FFFFFFFF),
    .INIT_11(256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFC10000047FFFFDFF),
    .INIT_12(256'hDFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000FF03),
    .INIT_13(256'h0C30F0000007FFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFC000000000003F),
    .INIT_14(256'h38020000000000080C000007FFFFFFFFFFC3FFFFFFFFFFFFFFF80000000018E4),
    .INIT_15(256'h808E000000FC00000000000000FFFFFFFFF0003FFFFFFFFFFFFFFC000FE30006),
    .INIT_16(256'h00000100413FFFC3FF0C0001BE003FFFFFFFF0003FFFFFFFFFFFFFFF19CFFFFF),
    .INIT_17(256'h0000000000300000000000000000001FFFFFFFE00007FFFFFFFFFFFFFFC0000E),
    .INIT_18(256'h00203C0000C7FC0000000000000000000FFFFFFFF0000FFFFFFFFFFFFFFFF000),
    .INIT_19(256'h000000000000000000000003FFFFFFFFFFEFFFFFFFFC0001FFFFFFFFFFFBFFFF),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra[13:0]),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__0_n_0 ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__0 
       (.I0(addra[14]),
        .I1(addra[15]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[1] ,
    clka,
    \addra[15] ,
    addra);
  output [0:0]\douta[1] ;
  input clka;
  input \addra[15] ;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[1] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h1C00FCFE1B7C6181FCE7FF300CCFD8300B0587C1E7802A000333E7807C03E400),
    .INIT_01(256'h809FC07E3F076738600E39FFE6033FE41E034141F807F01D8000CE73700F007B),
    .INIT_02(256'h7CF8CC0C3FDFC0CC1E38F81C7FFCE0F3F23FC0D0AF3FCC1C04C00018C10FF1F3),
    .INIT_03(256'h9F9F21E6FC0FFFF01CFF1C61FE1FF38FFE7B3FF017D86FF4F806600003C79CFC),
    .INIT_04(256'hFC70F3931B73C03FFF03C1C713C03FFC3CE0608F1C0469CB84FF87B000003E1F),
    .INIT_05(256'h00000E1E1BE79C71C3FFF03E380DFFFFFE03D88C4380018366E1FFF318000000),
    .INIT_06(256'h0000000384F1DDC7BFFC3FFE03CE0E6001FF803279B008007FC3026FFEAC0000),
    .INIT_07(256'h0000000001CF0782707EC3C7FF8033C718003FC00CBF7E07FE03EF087BFFAA00),
    .INIT_08(256'h3B4000000000CC6780DC40203CFFF0067F8E0007F0032ECFC67FC43C35CD03E9),
    .INIT_09(256'h8C3130000000006C198037FFF0033FFC01DFC780003000CBFBFF0FF3C8FD764E),
    .INIT_0A(256'h5068C018000000003266E004FC7C1067FF003183E03C000032EE7F03FCF2015D),
    .INIT_0B(256'hC00BEB3FCC018000000D99B801BFDE0019FFE00E01FC1FE0001CB3901B8F3980),
    .INIT_0C(256'hFFE081CDC71C01F0000003204C002C7FE0037FF803C3FFCFF800072CE41D83E0),
    .INIT_0D(256'h601FC00F01F03C007E0003F06C37000A03FF80DFDE007FFFFFFF8003CB3B1EC0),
    .INIT_0E(256'h2063870007FFFFF8003F8003FC19FBC0029CF3FCE7F7C00FFFFFFFF801F27C8E),
    .INIT_0F(256'h301067F1F000FF0FF8000FE003270381F0010FB8E7FBFCF001FFFFFFFF807CDE),
    .INIT_10(256'h01E61827F8FFF03F81FC0007FC013CE03FF840D3EE3800FF3C003F1FF81FF81F),
    .INIT_11(256'h79C03CF8D31E6FFF1FC03F0003FFFF919803E07C6C798E007FDF800600FC03E6),
    .INIT_12(256'hCF8E700F8009033830C7E00FC000FFF0083600001FE61E71C07FFFE000001F18),
    .INIT_13(256'h01E7F9FC01FC64819F0018F003F0007F01FC05800007F3000C3C1FFFF800E407),
    .INIT_14(256'h3FE039833FC07FF2E067C0063C03FE001FE18019300001C1C2018703C0FC00FF),
    .INIT_15(256'hC007F01E4063F81FFD6033F1E8C701FFE007F19F062C000063FFE060F0003F00),
    .INIT_16(256'h30F001FE07918CFF0FFE201C849C39807FF801F0DFF38D000019FF9C387C0007),
    .INIT_17(256'hC07F3C03FFF1E4633FFFFFA80E41418F301FFF007C4F07C340000E7E01FCFF00),
    .INIT_18(256'h73000FC7C3FFFEF980CFFFFFEA03B75642CC07FFC01C670030B000E71C0C1E3F),
    .INIT_19(256'hFE380003F8FFFFFFFE3067E3FFFA81C9E5931B01FFE00637C3C66C004F001FC0),
    .INIT_1A(256'h0FFE38F0007F03801FFBCFF3E03FFEBBF2DB09C3403FF0018B33FC960028301F),
    .INIT_1B(256'h7903FF31FE001FF80FF0FFFC63E003FFD7F922A4F0500FF800668CFF35F814E4),
    .INIT_1C(256'h724CC03F99FF000303FF9E01FFC7E0003FF2FED8567C6C07FE033B473FE57F8D),
    .INIT_1D(256'hD80FB0600019FE0000C03F81C01FFFC00007FE9F36163F7EFFFFFC7CA1E7F160),
    .INIT_1E(256'h7E66788FE007FCFC008219C7C03861FF800000FF25C9859FDD5FFFF6165089FC),
    .INIT_1F(256'h313E671E1FF007F87E40300678F81EFE3C000001FFC8064173F22BFFE50BE842),
    .INIT_20(256'h410D9E6C0FB83F83803F300C019C7F8F0FE3800000FF8607304C7C847FF17D24),
    .INIT_21(256'h5F90479E2C0189E7BFC3FF90000020387F03FE30000007E18F0C0B0FACDFFABF),
    .INIT_22(256'hFFAFC81FCF34E002F980E3FFCC0000041800007FE6000000F0FF0602CCEBABFC),
    .INIT_23(256'hC9BF97E4F3F392F104BF03C0FFF20F0038FCFF3F8F9CC000007C1F1F8094BA66),
    .INIT_24(256'hAA58D7C7F97E19CA7CE3AF80FC3FF183FFFF9E7FFFF1E33000001E003F80242E),
    .INIT_25(256'h05420B3476FEB1E6F76719EDCF3FEFC0E3FFFFF03FFFFF1DEC0FFE0F801C401A),
    .INIT_26(256'h8002A1593CC2BFA8390370C0CCD867FC407FFFFFFE3FFF3FF3F3FFFFFF807F00),
    .INIT_27(256'h9FF7812EAF2F195F8A0E63A83061C1E47F0071FE87FFFFFE01FE7CFFFFFF807F),
    .INIT_28(256'hE3D3FFFEF7B64BFBA40503CF1407F01FFE4600303E007FFFFF1E3FC03F1FFFC9),
    .INIT_29(256'h71FA163FC7EFD51AF3507C81FC3B00F00000EC0C0C0F800FF3FFCFE73C0E03C7),
    .INIT_2A(256'h3F9FF845C3CC1AF94CD8C460400001000000000CFF8221E007F81FE718E7003E),
    .INIT_2B(256'hE7FFF7FC9E7CC8763EDF2C21263183F18000000001C631983FFFF803FB0339C7),
    .INIT_2C(256'h33F700F9FEB6FF0A3A8FA78A904BD8FFFFC000000000380FCE0FFFF0FC7CC0CE),
    .INIT_2D(256'hCC1C73003E7F66BFC4FDA3F21D4A917CFFF0C0000000000F01E383F000FF8F30),
    .INIT_2E(256'h0E03DF819C1F07B7AFF63F51FA9895E4287FF3A00000000003C001C0F00FF071),
    .INIT_2F(256'hF00380FFF1CF8F1F1BEBF15FCB5EBDC95C89FFF92800700000007000F0007FE0),
    .INIT_30(256'hFFF000E03FC7C7E603D5FAC0E0035744C663CE7FFC8E003F0000001C007E007F),
    .INIT_31(256'hFFFFE003F81FC003F33B2CFEA069FFC410618AFC400441001FC0000007003F83),
    .INIT_32(256'h3FFFFFFFFFFE070000F19E3CFF2867F8011F986A98F0001140063800000180FF),
    .INIT_33(256'h0C1FFFFFFFFFDF01C0F0389F6FFE4C67F01027F6036700000D70038E00000070),
    .INIT_34(256'h000307FFFFFFFC0000E1FC004E207FF1CFF87FEE0F015A4040025FF8E3000000),
    .INIT_35(256'h000000E3FFFFF1FC000038FF007748CFFE8CF87805C1C05698000094FC7CC000),
    .INIT_36(256'h380000001FFE0FF83C00000C3FC7F3D04BFF9C787820DFF0F5A30000663FD3F0),
    .INIT_37(256'hFEB200000003FE00FC070000838FF3F1CBB4FFF818787FC8E67D68F81FF9F1C5),
    .INIT_38(256'h1C0FED40000000FE000201C030FC63F9C1F1D2DFFE0CF87E0DE0FF4A3FFFFC70),
    .INIT_39(256'h000781FF680000003F9800C0F87FFF0CFC60FC9BCBFF82787C0087BC6A80FF80),
    .INIT_3A(256'h010800F1FFE600000007C600303E7000E33E30FFC6F96180987C00302C0A600F),
    .INIT_3B(256'h310E0F001CFFFB40000007F1800E1FF9FE18CF8CFE71FEA7FC6C7800042A3970),
    .INIT_3C(256'h9807CFC780033FDF10007003F8E003FFFCF1C633C63E07BBD8C09B380001028F),
    .INIT_3D(256'h607C0FFFF383FFC7E1C6003FF0F01000FFFF30390CF31E000AE18062980000C1),
    .INIT_3E(256'h007803FE3F861DBFF9F9298007FFF000003E0F9C0E4318CF003D96FFD0B60000),
    .INIT_3F(256'h40007C003FE7EDF7407E3EE09801F0FC00000F01C707304067C03E9F3FF93580),
    .INIT_40(256'hC9501FFFFC014DE87E600FE7D84B00701F00001F8001C39B9833C01F17CFFEA5),
    .INIT_41(256'hFFF764187FFFC00171FFE001FCF042401807C001C7E001E3CCF3B9E00FCC9BFF),
    .INIT_42(256'h5AFF8D490887FFF8004C03C000789F3F480601F801F9F800E1E27E7CE007E28D),
    .INIT_43(256'hF00B7D23AE6CF0FFFF001B00E0001E33FFED01C1FFE3FE3E00E0719FC07003E0),
    .INIT_44(256'h00E0083B95CBAC3C0FFFE062E0380007287FFCC07FFFF3FF83C0303CE7FC3C01),
    .INIT_45(256'hFF005C07FE6A06081F00FFFC10981E0003DE07C7080FFFF1FFF0F00C0F39FFFE),
    .INIT_46(256'h1FFFC03A8FFF1B7F0707C07FFF00270FC000E75CE00E005FF8CFFF3E0703CC7F),
    .INIT_47(256'hF1C780400B8FFFC64FFF03F81FFFE00DE619C07B4CD9E05007F8E3CFEF90E1E3),
    .INIT_48(256'h03FE38F0300197FFF101FA01FE07FFF8033F33901C8CD244607FFC71C1FFFC1F),
    .INIT_49(256'hF8000FC31C08004BFFF85070006FC1FFFE00CFEC800F2CCAD69019F038607FF8),
    .INIT_4A(256'hEC381B87FF1300000F1FF014BC0019F0FFFF8031C9FA03D3815AA002401C139F),
    .INIT_4B(256'h9EC3070FC6007930000003F8073FFFBE3C3FFFF0187F7D00F5F0568CFF93FF04),
    .INIT_4C(256'h83092580C7E6000796000000000281FFFF8707FFF80E1FDE807D6F0C837FFD83),
    .INIT_4D(256'hFFFF3CF2CE3FF200FFF24000000001E303F804C0FFFE0703F0407F51C2B79FFF),
    .INIT_4E(256'hC7FFFFE61C13CFDD00FF00280000003051F0FE03B81FBF9FC0FFF1FFD438AC4F),
    .INIT_4F(256'h0EFFFFFFFEFFCDF20280F80C760000007E28FE1F00CF03E7C7F03FFFFEF50E2B),
    .INIT_50(256'h50C6BFFFFFFFAFFB7C00C07C3FCD800000F0F23FC03623E031F3FC0FFFFC3F43),
    .INIT_51(256'hC05CF3AFFFFFFFE41F5F4F56383819E0000060391DF80B48780038FF03FFFF01),
    .INIT_52(256'hFFE033F9930FFFFFFCFCDB9FD11C38F3180000701E5F3FFA171F10003FC1FFFF),
    .INIT_53(256'h3FFF800E60D9C3FFFFFDBE3B1BF60E7CFE660000FC012F8F8373F3FF001FE0FF),
    .INIT_54(256'hF007FFC002C3E4F9FFFFFE8F877CFC8338C39A8007E3801BE0007FFE3FE007E0),
    .INIT_55(256'h00F803FFF800BF867EFFFFFF967FC0FF0198E06CF1FC01F1FDF80007FF803C03),
    .INIT_56(256'h00E07E3C7FFC00261F3C1FFFFFDA73FFFFE06C703337C000FCCF7F000007E007),
    .INIT_57(256'h0C830C1F9FFFFF80181C0E881FFFF61D7F83EC13703DC80000FF23CFC0000038),
    .INIT_58(256'h07CB27C1FFC7FFFFE0061E0056C1FFFF186100F90CB01E76007FFFD893F80000),
    .INIT_59(256'h800267C3FC3FB39FFFFE23FF006BA80FFFB400403E4348071F1FFFFFF4423E00),
    .INIT_5A(256'h84E000A2E1FFC78CC3FFFFFFCCC0CDB203FFECA3700F909400E79FFFFFFD16E7),
    .INIT_5B(256'hD266B80014407FF80330FFFFFFF780D9C5FCFFFF499C03E425000C0FFFFFF349),
    .INIT_5C(256'hFF3598A700027803FFC00C3FFFFFF9F3D3E0717FFEEE5900F9094001FFFFFFFC),
    .INIT_5D(256'hFFFF0D6606E00C6001FFFF031FFFFFE779E9C0104FFF4836803EC250001FFFFF),
    .INIT_5E(256'hFFFFFF827838D8000607FFFFE0E7FFFFF12109600C51FFE402400FB1A8060FFF),
    .INIT_5F(256'h01FFFFFFE09E0E0B0000F3FFFFF83DFFFFFCB76DE802F27FE6006003F86A1FFF),
    .INIT_60(256'hBE003FFFFFF82703C120007FFFFFFF07FFFFFE2BCD32009ECFF6C00000EC9A9E),
    .INIT_61(256'hC9AE000FFFFFFF1BC0D26400300FDFFFC1FFFFFE0D9FAC80106CFAB800003966),
    .INIT_62(256'h023A680003FFFFFFC6E036CCC033F1F7FFF07E3EFF8578F4A003E28CB700000E),
    .INIT_63(256'h00008E120030FFFFFBF3980C43DF7DFE7FFFDC8F0FBFC13C3CCC007F4CF24000),
    .INIT_64(256'h15000023A5803E3FFFF8FCC60308F060619F7FE323C1FFE06E07BF00006419A8),
    .INIT_65(256'h114120000049600F87F2601FF380E1FE1D3067FFF6C0E0FFF82B81FFE0000EFA),
    .INIT_66(256'h01802838000036D803F0F00003FCE07819F84C19FFFD50383FFE09FCFFFC0007),
    .INIT_67(256'hF000E62589000004B600FE1000003E7C7E33002306FFFE9E0E0FFBC23FFF8F00),
    .INIT_68(256'hF8FFF01BE65340000F29003FC03FF8063F3F872612633FFF8787079EE08FFFC3),
    .INIT_69(256'hFE1E3FE30688C8600003B6400FF87FFFF01DEFC1F60BEDDFFFF0F1DF810873FC),
    .INIT_6A(256'h453F07CFF741C199D000039DB003FFFFFFFF0E3FE03E42CDE7FFF42EFC600014),
    .INIT_6B(256'hC0134F99FFFA5057337C0000E66C00FFF807FFFF0DF01FE74173FFFD23FEEB00),
    .INIT_6C(256'hE10300D84E7FF8962BE67E0000303B001F80FC3F7F07F9FFFC1048FEFDB4FF3C),
    .INIT_6D(256'h0FEE080038FC9FFCF9FAF88C00000FC6F007C1FFC00001FCFFBFFCD0FF1E0E3F),
    .INIT_6E(256'hC003F1FF800079900E46053023000003F19FE1F0F9FC00007F3FFFFC743F0780),
    .INIT_6F(256'hFFE000FCFFF8007C0C0664D8C008600000FCE7FC78780FC0001F8C7FFE391FE3),
    .INIT_70(256'h3807C0003E3FFE003FFE018FDFE61BC7FB803E39FF1E38007F0007E707FF1EFF),
    .INIT_71(256'hC3C00000000F8FFF800FFFFFE00F8FFF0719E00F8E7FCF1C0807FC01F180FF07),
    .INIT_72(256'h0180F8FFFFF803E0FFE003FFFFFFFC00003F8E8C03C39FF3CF0FE03FFC78600F),
    .INIT_73(256'h8700007FFFFFFFE0F800F040FFFFFFFFFFFFF0002B00F1C7FCF3E3FF87FF1E18),
    .INIT_74(256'hF9E1C0003FFFFFFFF83E0000383FFFFFFFFFFFFFFFF69E3C73FF3CFCFFF83FC7),
    .INIT_75(256'hF01E7C70001FFFFFFFFE0F80001F87FFFFFFFFFFFFFFFF263F3C7FCE3F3FFF03),
    .INIT_76(256'hFFFF019F9C001FFFFFFFFFC3E00007F0FFFFFFFFFFFFFFFFF9CFCF1FFF9FC7FF),
    .INIT_77(256'hFE7FFFF033E7000FFFFFFFFFF0F80001FC3FFFFFFFFFFFFFFFFFE1F3C3FFE7F1),
    .INIT_78(256'hF9FF3FFFFF0CF98003FFFFFFFFFC3E0000FF1FFFFFFFFFFFFFFFFFFFFCF0FFF3),
    .INIT_79(256'h0FFE7FCFFFFFF91E6001FFFFFFFFFF1F80003FC7FFFFFFFFFFFFFFFFFFFF3C3F),
    .INIT_7A(256'hF383FF3FE3FFFFFF67981E7FFFFFFFFFC7F06007F1FFFFFFFFFFFFFFFFFFFFCE),
    .INIT_7B(256'hFFFCC0FFDFF9FFFFFFC9F41F9FFFFFFFFFE1FC3F00787FFFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hFFFFFF307FE7FE7FFFFFF27907E7FFFFFFFFF87F0FF00E1FFFFFFFFFFFFFFFFF),
    .INIT_7D(256'hFFFFFFFFCC7FF9FF3FFFFFFE9E51F9FFFFFFFFFE3FC7FE000FFFFFFFFFFFFFFF),
    .INIT_7E(256'hFFFFFFFFFFF93FFCFFCFFFFFFFB3A67E7FFFFFFFFF87F3FFF003FFFFFFFFFFFF),
    .INIT_7F(256'hFFFFFFFFFFFFFE4C0F3FE7FFFFFFECE99F9FFFFFFFFFE1F8FFFFE1FFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\douta[1] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[15] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10
   (p_15_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_15_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFF000F80001FFFC00000001FFFF),
    .INITP_01(256'h1FFFFFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFFFFC001E00001FFF000000007F),
    .INITP_02(256'h0007FFFFFFFFFFFFFFFFFC03FFFFFFFFFFFFFFFFFFFE0003000001FFC0000000),
    .INITP_03(256'h000001FFFFFFFFFFFFFFFFFF803FFFFFFFFFFFFFFFFFFF80000000003FFC0000),
    .INITP_04(256'hF80000007FFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFE00000000003FFC0),
    .INITP_05(256'h00FF8000001FFFFFFFFFFFFFFFFFFF01B1FFFFFFFFFFFFFFFFF0000000000007),
    .INITP_06(256'h00001FE0000007FFFFFFFFFFFFFFFFFFE0007FFFFFFE7FFFFFFFFC0000000000),
    .INITP_07(256'h00000003FC000001FFFFFFFFFFFFFFFFFFFE003FFFFFFF1FFFFFFFFF00000000),
    .INITP_08(256'h00000000003E0000007FFFFFFFFFFFFFFFFFFFC00FFFFFFFC7FFFFFFFFC00000),
    .INITP_09(256'h000000000060078000003FFFFFFFFFFFFFFFFFFFFC07FFFFFFF1FFFFFFFFF000),
    .INITP_0A(256'hFE00000000003E000000000FFFFFFFFFFFFFFFFFFFFF83FFFFFFFC7FFFFFFFF8),
    .INITP_0B(256'hFFFF80000001800FC00000000FFFFFFFFFFFFFFFFFFFFFFCFFFFFFFF1FFF3FFF),
    .INITP_0C(256'hFFFFFFE00000006007F80000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7),
    .INITP_0D(256'hFFFFFFFFFF0300000001FF0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFE0003800FFC0000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFF81F003FF0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'h0000000000000000444444224466AA1177BBDBBBB997724E2A0808282A2A4C4C),
    .INIT_01(256'h5577999BBDDDDDDDDFDFDDDD9935EE8844442222000000000000000020000000),
    .INIT_02(256'hF0CEAC8A8A8AAECE1335775713AC440000000000000000224488CCCCCCCCEE13),
    .INIT_03(256'hBBB9B9B9B9B9B9B9B9B9B9BBBBBBB9B9999999999999B9B9BBBB9933CEACCEF0),
    .INIT_04(256'hB7B7B7B7B7B9B9B9B9B999999999999999B9B9B9B9D9B9B9B7B5B5B5B7B9B9BB),
    .INIT_05(256'h50EEAA888888AAEE33559999BBDDDDDDDDDDDDDDDDDDDDDDDBB9B79797979595),
    .INIT_06(256'h4C4C4C4C4C4C4C4C4C4C4C4C4A2A2A28282A4C6E90B2B49290906E7070707072),
    .INIT_07(256'h704E2A2A2A4C4C4C6E6E7070706E6E6E6E6C4C4A4A4A4C4C4C4C4C4C4C4C4C4C),
    .INIT_08(256'h000000000000000000000000000000000000444444224266A81077BBDBBBB995),
    .INIT_09(256'h00222466888AAAAACCEEF01355779BBDDDDDDDDDBD9B5511CC88664444222220),
    .INIT_0A(256'hB9BBBBBB7712AC8A8A8A8A8A6868688AACAEF013575733AC4602000000000000),
    .INIT_0B(256'hB9B9B7B5B5B5B7B7B9BBBBBBB9B9B9B9B9B9B9B9BBBBBBBBB9B99999999999B9),
    .INIT_0C(256'hDDDBD9B795959595959595B7B7B7B7B9B9B9B9B99999999997999999B9B9B9B9),
    .INIT_0D(256'h92929090707070707292730ECA88666688CCEE11557799BBBBDDBBBBDDDDDDDD),
    .INIT_0E(256'h4A4A4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4A2A2A2A282A4C9092B2),
    .INIT_0F(256'h4466AA1177BBBBBBB995704E2C2C4C6E6E6E6E9090907070706E6E4C4C4A2A4A),
    .INIT_10(256'h3511CEAAAA666644222220000000000000000000000000000000000044444422),
    .INIT_11(256'hF0AA46220000000000000022244466686868888A8AACF03377999BBDBDBD9B77),
    .INIT_12(256'hBBB9B9B999999999B9B9BBBBBB9957F0AA686868686868686A8A8CACCEF01313),
    .INIT_13(256'h97977797999999979797B9B9B7B59595B7B7B9BBBBBBB9B9B9B9B9B9B9B9B9BB),
    .INIT_14(256'h557799B9BBBBBBDBBBBBBBB9B79592727292929295959797B7B9B9B9B9B99999),
    .INIT_15(256'h4A4A2A2A2A4A6E909292929070909090907072927550EEAA666688AACCEE1133),
    .INIT_16(256'h7070706E6E4C4C2A2A4A4A4C4C4C4C4C4C4C6C6C4C4C4C4C4C4C4C6C6C4C4C4C),
    .INIT_17(256'h000000000000444242224466CC3399BBDBB9B795704E4C4E6E6E6E6E6E709070),
    .INIT_18(256'h8ACE133557777999775755353311EEAA88664222202000000000000000000000),
    .INIT_19(256'h68686A8A8C8CACCECECEAC886644220200000000000224244646664646466668),
    .INIT_1A(256'hBBBBBBBBBBBBB9B9B9BBBBB9B999B9B9B9B9BBBBBBBBBB9935CE8A6868686868),
    .INIT_1B(256'h97B7B9B9B9B9B9B999999777777799999775757797B9B7B59495B5B7B9B9BBBB),
    .INIT_1C(256'h33EEAA8888AACCCCEEEE33555577779999999997779797949272707092929295),
    .INIT_1D(256'h4C4C4C4C6C6E6C6C4C4C4A4A2A2A2A4C6E909292929070909090909072929573),
    .INIT_1E(256'h4E4E6E706E6E707070709090706E6E4C4C2A2A4A4C4C4C4C4C6C6C6C6C6E6C4C),
    .INIT_1F(256'h00000000000000000000000000000000442222224466CC3399BBDBB9B795704E),
    .INIT_20(256'h24244646464646464646688AACCE111333353555577979775511CCA866222020),
    .INIT_21(256'hBB7710AC68686868686868686A8A8A8CACAA8A8A886866464422020000000002),
    .INIT_22(256'hB7B59495B5B7B9B9BBBBBBBBBBBBBBB9B9B9B9B9B9B9B9B9B9B9B9B9BBBBBBBB),
    .INIT_23(256'h95929270707092929295B7B7B9B9B9B9B9999997977777979999775331539797),
    .INIT_24(256'h909090929090707295757531EEAAAAAACCCCEEEEEF1111333355555333335575),
    .INIT_25(256'h4C6C6E4E4E6E6E4C4E4C4C4C4C6E6E6E6E6C4C4C4C4A2A2A2A4C6E9090929290),
    .INIT_26(256'hCC3399BBDBB9B772704E4E6E7070707070707090909070706E6E4C4C2A4A4C4C),
    .INIT_27(256'h9B9B795533EEAA66222000000000000000000000000000000000422222224266),
    .INIT_28(256'h6866464424220200000224244646464644444446666888AACCCECEEEF0135799),
    .INIT_29(256'hB9B9B9B9B9BBBBBBBBBB9955F0AA68686868686868686A8A8A8A8A8A8A888868),
    .INIT_2A(256'h9797999755300E337797B7B7959595B7B9B9BBBBBBBBB9B9B9B9B999B9B9B9B9),
    .INIT_2B(256'h0FEF110EEECCEC0E337592929070707090929295B7B9B9B9B9B9B99999979797),
    .INIT_2C(256'h4A4A4A4C6E9092929290909090929090909292757575330ECCCCCCCCCCEEEE0F),
    .INIT_2D(256'h7070706E4E4C4C4C4C4C4E6E6E6E6E6E6E6E6E4E4E6E6E6E6E6E6E6E4C4C4C4A),
    .INIT_2E(256'h00000000222222222264AA1197BBDBB9B79270704E7070707070707070709290),
    .INIT_2F(256'h8AAAACACACAAACCE1357999BBB9977550FA84420000020202020000000000000),
    .INIT_30(256'h6A8A8A8A8A8A8A8A8A8868686866462422020222242444464646464646666868),
    .INIT_31(256'hB9B9B999999999999999B9B9B9B9B9BBBBBBBBBB9933CE8A686868686A686868),
    .INIT_32(256'hB9B9B9B99997979777979797977531ECEC3075B9B797959595B7B9B9BBBBBBBB),
    .INIT_33(256'h755531EECCAAAACACCEEEEEEECCAA8A8CC103353727270706E70909292B5B7B9),
    .INIT_34(256'h6E6E6E6E6E6E6E4C4C4C4A4A4C4C7092B2B29290909090929290929272759595),
    .INIT_35(256'h70707070707070909292707070706E4C4C4C4C4C6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_36(256'h0020222200000000000000000000222222222244881077BBDBB9B59270707070),
    .INIT_37(256'h4444444646464668888AAAACACAC8A8A8AAACE1357799BBBBB9955CC66220000),
    .INIT_38(256'hCC8A8A6868888A6868888A8A8A8A8A8AACACAC8A886888686646442422242424),
    .INIT_39(256'h9595B5B7B9B9BBBBBBBBB9B99999999999999999B9BBBBB9B9B9BBBBBBBB7733),
    .INIT_3A(256'h706E6E70909294B7B9B9B9B9B99997979777779797999753EECACA3097B9B9B7),
    .INIT_3B(256'h909292929292729595959777553310ECAAA888A8AAAAAA8888CA0E3353537270),
    .INIT_3C(256'h7070707070707070707070707070706E6E6E4E4C4C4C4C6E9092B4B492929090),
    .INIT_3D(256'h97B9D9B7959270706E7070707070707070707292729290706E4E4C4C4C4E6E70),
    .INIT_3E(256'h7999BBBB770F884400000000202222220000000000000000222222222244AA11),
    .INIT_3F(256'h8A6868684644242424242444444446464668888AACCCCCACAA8A6888AACE1155),
    .INIT_40(256'hB9B9B9B9BBBBBBB97711CCAA8A8868686888888A8A8A8A8A8A8AACACCCAC8A8A),
    .INIT_41(256'h7531CCA8CA3097B9B9B79795B7B7B9BBBBBBBBB9B9B999999999B9999999B9B9),
    .INIT_42(256'h8888AAEE33557575957270707070929295B7B9B9B9B999999777777777979797),
    .INIT_43(256'h4E7092B4B4B49292929092929292929294959595979777755531EECA88668688),
    .INIT_44(256'h9290706E4E4E4E6E70707090709070909092929090707070707070706E6E4E4E),
    .INIT_45(256'h0000222222224466CC53B9B9B9B79572706E4E6E6E6E6E707070707072929292),
    .INIT_46(256'hEECEACAA88686888ACF03557999955EE88442000000000202222200000000000),
    .INIT_47(256'h8A8A8A8AAAACACAC8A8A8A8A88686846464644444444444646464646688ACCEE),
    .INIT_48(256'h99B9BBBBBBBB9999B9B9B9B9B9B9BBBBBB995510CCAA8A68686868888AAAAAAA),
    .INIT_49(256'h977777777777779797977510CA88CA3197B9B9B9B7B7B7B7B9B9BB9977777797),
    .INIT_4A(256'h977777555310CCA8888888A8CC31557799B9B795727070709292B5B7B9B99999),
    .INIT_4B(256'h907070707070706E6E6E707092B4B5B494929292929292929294959595979797),
    .INIT_4C(256'h6E706E7070707292929292929070707070709292929292929292929292929292),
    .INIT_4D(256'h0000000000000000000000002222224446881077BBB9B9B795704E4E4E4E4E6E),
    .INIT_4E(256'h44444444444668AAEE1111F1CEAC8A8868688AACF013353511AC662220000000),
    .INIT_4F(256'h8A68686868888AACACAC8A8A8A8A8AAAACAC8A8A8A6A68686868888A8A886646),
    .INIT_50(256'hB7B7B9B999773333337599BBDDDDDDBB9999B9BBBBB99999B9BBBB9955EEACAA),
    .INIT_51(256'h70929295B7B7B999999777777777777797979777550ECAA8EC5399BBB9B9B7B7),
    .INIT_52(256'h9292949595959797979797979797775531EECAAAAACC1055779999DBDBB79572),
    .INIT_53(256'h9494929292929292929292929272729290707070929294B5B7B5949290929292),
    .INIT_54(256'hB9B792704E4E4E4E6E4E6E6E6E70707070729292929292927070929294949494),
    .INIT_55(256'hCECEAA6844022020000000000000000000000000000044446688AAEE5599BBB9),
    .INIT_56(256'h6868688AACEEEECC884644242424244688CC1133331311EECCAA8868688AAACC),
    .INIT_57(256'h9999B9BB997733EEAA8A886868688888AACCCCACAA8A688A8A8A8AAC8A8A8A68),
    .INIT_58(256'hCCCAEE55B9DBB9B9B7B7B7B9B9B97733EEEE105599BDDDDDDDBB9999B9BBBBB9),
    .INIT_59(256'h337799B9BBDDDBD99572727295B5B7B9B9999777777777777777979997775310),
    .INIT_5A(256'hB5B7B7B5949270929292929495B7B797979797979797979797977553310EEEEE),
    .INIT_5B(256'h9292929294B5B7B7B7B7B7B79594929292929292929292929292929292929294),
    .INIT_5C(256'hCCCCEEF1135599BBDBB9B7B592704E4E4E6E6E4E4E6E6E6E7070707292929492),
    .INIT_5D(256'h3311EECEAA8A68688A8A88886846220020202000000000000000000000000000),
    .INIT_5E(256'h68688A8A8A8A8A8A8A68688868AAEE1333EEAA66442222222466AAEE33353535),
    .INIT_5F(256'hDDBDBB99999999B9BBB9B9B9BBBB997733EEAA8A8868666688AACCEECEAC8A88),
    .INIT_60(256'h777777779999999977330E0E3377B9DBB9B9B9B9B9B999975511CECCF05599BB),
    .INIT_61(256'h97979997977775533333559799BBDDFDFDD9977572759797B9B9979777777575),
    .INIT_62(256'h95949492929292949595B5B7B7B4929292929292949597B7B7B9999797979797),
    .INIT_63(256'h6E6E70707092929294B5959595B7B7B7B9B9B9B9B9B7B7979595949494949494),
    .INIT_64(256'h0000000000000000000077777799BBBBDDDBBBB9B795927070707070706E6E4E),
    .INIT_65(256'h24224488CC1355555555353311EECCAA8A886868464646442200000020000000),
    .INIT_66(256'h8888AACCEEEECEAC8A6868688A8A8A8A8A8A8888888A8AACEE1111CC88664444),
    .INIT_67(256'h999955331313337799BBBBBB9B99999999BBB9BBB9B9BBBBB99935F0CCCCAA88),
    .INIT_68(256'h979799979777757575757575777799BBBBBBB999777597B9BBDBD9B9B9B9B9B9),
    .INIT_69(256'hB7B9B9B9999999999797979797979999977775757799BBDDDDFFFDD997757595),
    .INIT_6A(256'hB9B9B7979595959595B595959595959595959595B7B7B5B49292929292929595),
    .INIT_6B(256'h9272707070707070706E4E6E707070929294B5959595B7B7B9B9B9B9B9B9B9B9),
    .INIT_6C(256'h2422220000002000000000000000000000000000DDDDDDDDFFFFDDDBBBB9B7B5),
    .INIT_6D(256'hCCEEEEEECCAA66666666444466AAEE335555555555333311EEAC8A8868464424),
    .INIT_6E(256'hBBBBB99977553311F0EECCCCEEEE1111EEAC886868688A8A8A8A88686888AAAC),
    .INIT_6F(256'hBBDDDBDBDBB9B9B9B9B9B9BB99999999999BBBBBBDBBBB99999999B9B9BBBBBB),
    .INIT_70(256'hDDDDFFFDDBB995757597999997977775555575757575779799BBBBBBBBBBBBBB),
    .INIT_71(256'hB5949292929292949597B9B9B9B9B9B9999999979797979799999999999999BB),
    .INIT_72(256'hB9B9B9B9B9BBBBBBBBBBB9B9B9B7979797B7B7B5959595959595959597B7B7B7),
    .INIT_73(256'hFFFFFFFFDDDBBBB9B7B79592929070707070707070707070709292949595B7B7),
    .INIT_74(256'h1311EEAC8A88684624222202000000000000000000000000000000000000FFFF),
    .INIT_75(256'hACCCACAA8868688AACEE111311EECC8888888888888888CC1133553533333333),
    .INIT_76(256'hDDDDBBBBB999B9B9BBBBBBBBBBBBBB9B9999777755555555553311CEACAAAAAC),
    .INIT_77(256'h9799B9BBBBBBBBBBBBBBDDDDDBBBB9B9B9B9B9B9BBDBDDDDDDDDDDDDDDDFDFDD),
    .INIT_78(256'h97979999999999BBBBDDDDFFFDDDDB9795979797999997977575555575757577),
    .INIT_79(256'h95959595979797B7B7B7B5949292929294959597B9B9BBBBBBB9B9B999999797),
    .INIT_7A(256'h7070709292959597B7B9B9B9BBBBBBBBBBBBBBBBBBB9B9B9B7B7B7B7B7B79797),
    .INIT_7B(256'h0000000000000000FFFFFFFFFFFFDDDBBBB9B9B7959292929090909070707070),
    .INIT_7C(256'hCCEE11333333131111333311CEAA8A8A68664424220200000020022022220000),
    .INIT_7D(256'hBBBBBB99775533331333353313F0CCACAACCEE1133553311CCAAAACCCCAAAAAA),
    .INIT_7E(256'hFFFFFFFFFFFFFFFFFFFFFFFFDDDDBBB9B9B9BBBBBBBBBBBBDDDDDDDDDDDDDDBB),
    .INIT_7F(256'h9997777575757777779799BBBBBBBBBBBBBBBBBBBBDBBBBBB9B9B9B9B9B9BBDD),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_15_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_15_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11
   (p_11_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_11_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_11_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFE01FFC0000003FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD000000FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE003FFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hBBBBBBBBBBB9B99997979797999999B9BBBBDDDDDDFFDDBBB9979797B9B9B9B9),
    .INIT_01(256'hBBBBB9B9B9B7B7B7B7B797979797979797B7B7B795929292929494959797B9B9),
    .INIT_02(256'h9292909090907070707070707292949597B7B9B9B9BBBBBBBBDBDBBBBBBBBBBB),
    .INIT_03(256'h444444222222224422220000000000000000FFFFFFFFDFDDDDDBBBB9B9B79592),
    .INIT_04(256'h553311EEEEEEEEEECCCEEE1133353533131133335533EECCACACAA8A68464422),
    .INIT_05(256'hBBDDDDFFFFFFFFFFFFFFFFFFFFDDDDBBBB9B9BBBBB9B99775535133335557777),
    .INIT_06(256'hBBBBB9B9B9B9B9BBDBDDFFFFFFFFFFFFFFFFFFFFFFFFFFDDBBB9B9B9B9BBBBBB),
    .INIT_07(256'hDDBB9997B9BBDBDBBBBBB99999999999999999BBBBBBBBBBBBBBBBBBBBBBBBDB),
    .INIT_08(256'h92929494959597B9B9BBBBBBBBBBBBBBB9B9999997979999BBBBBBDBDDDDDDDD),
    .INIT_09(256'hBBBBDDDDDDDDDDDDDDDDDBDBBBB9B9B9B9B7B7B797979797979797B7B7B79594),
    .INIT_0A(256'hDDDDBBBBB9B9B9B7959292929292929270707070707072929595B7B7B9B9BBBB),
    .INIT_0B(256'h3311F111F1EECCAA8A88AAAAAA886644444444220000000000000000FFFFFFFF),
    .INIT_0C(256'hDDDDBDBB9B999BBBBBBB99997755555555333333555577777757555555777755),
    .INIT_0D(256'hFFDDBBB9B999B9BBBBBBBBDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDD),
    .INIT_0E(256'hDDDDDDBDBBBBBBBBBBBBBBBBB9B9B9B9B9B9BBDDDDDDFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hB9B9BBBBBBDDDDDDDDDDDDDBBBBBDBDDDDDDDDDDDDDBDBBBBBDBBBBBDDDDDDDD),
    .INIT_10(256'h9797979797B7B7B7959494949495959597B9B9BBBBBBBBBBBBBBBBBBB9B99999),
    .INIT_11(256'h92929595B7B9B9B9B9BBBBBBDDDDFFFDDDDDDDDDDDDDDDDBBBBBB9B9B9B99997),
    .INIT_12(256'h000000000000FFFFFFFFDDDDBBBBB9B9B7B79592929292929292907070707072),
    .INIT_13(256'hBDBBBB9B9B99BBBBBB997757575757553313111333553311CC8A886644220000),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDDDDFFFFDFDDDDBBBBBBBBBB999BBBBBBB),
    .INIT_15(256'hDDDDDDDDDDDDFFDFFFFFFDDDBBB9BBB9B9BBBBBBBBDDDFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBDDDBBBBBBB9B9B9B9B9B9BBDDDDDD),
    .INIT_17(256'hBBBBBBBBBBBBBBBBBBBBBBBBBBBBDDDDDDDDDDDDDDDDDDDDFDFFFDFDDDDDDDDD),
    .INIT_18(256'hFFDDDDDBBBB9B9B9B99999979997B9B9B797959494B49495959597B9B9B9BBBB),
    .INIT_19(256'h9292929290907070709292949597B7B9B9B99999BBBBDFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'h9B995511CC8A66442222020000000000FFFFFFFFDDBBBBB9B9B7979595929292),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDDDDDDDDDDBDBBBBBBBB9B99999999BBBB),
    .INIT_1C(256'hDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hB9B9B9B9B9BBBBBBDDBDBDDDDDDDDDDDDDDDDDDDDDDBBBB9999999B999BBBBDD),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFDFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBBBB),
    .INIT_1F(256'hB4B5959597B7B9B9BBBBBBBBBBBBBBBBBBDBDBBBBBBBBBDDDDDDDDDDDDDDDDFF),
    .INIT_20(256'hDDFFFFFFFFFFFFFFFFFFFFFFFFDDDBBBBBB9B9B9B999999999B9B797959494B4),
    .INIT_21(256'hBBB9B99797959492929292929292927070909092929495B7B9B9B99999999BBB),
    .INIT_22(256'hDFDFDFDDDDDDDDDDDDDFDDDD9B7733EFCC8A6666442422222222FFFFFFDDDDBB),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF),
    .INIT_24(256'hBB99999999999999BBBBDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hDDDDDDDDDDDDDDDDBBBBB9B9B999B9BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB),
    .INIT_26(256'hDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFDFFFDFDFDDDDDDDDDDDDDDDDDD),
    .INIT_27(256'h999999B9B79795949494B495959597B7B9B9BBBBBBBBBBBBDBDBDBDBBBDBDBDB),
    .INIT_28(256'h95B7B9B9B999999999BBDDFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDBBBBBBB9B9B9),
    .INIT_29(256'h88886666FFFFFFDDDDBBB9B99997979595929292929292929290909092929295),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDD9B79553311EEACAA),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hBBBBBBBBBBBBBBBBBBBB9999999999999999BBBBDDDDDDDDDDDDDFDFFFFFFFFF),
    .INIT_2D(256'hDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBBBBBB9B9B999B9B9BBBBBBBBBBBB),
    .INIT_2E(256'hBBBBDBDBDBDBBBDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hFFFFFFDDDDDDBBBBBBBBB9B9B9B9B997959494949494959597B7B9B9BBBBBBBB),
    .INIT_30(256'h9292929090909292929597B7B9B99999999999BBDDFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hFFFFDFDDBDBB997755353311EECEFFFFFFDDBDBBB9B997979795959494949292),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hDDDDDDDDDDDDDDDDDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hB999B9B9BBBBBBBBBBBBBBBBBBBBBBBBBBB999999999999999999999BBBBBDDD),
    .INIT_35(256'hFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBBBBBB9B9),
    .INIT_36(256'h949595B7B9B9BBBBBBBBBBBBBBBBDBBBBBDDDDDDDDFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDBBBBBBBBBBB9B9B997959492929292),
    .INIT_38(256'h9797979595959494929292929290909292929495B7B9B9B99999999999BBDDFF),
    .INIT_39(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDDDDBBBB9B997777FFFFFFDDBDBBB9B9),
    .INIT_3A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3B(256'h999999999999B9BBBBDDDDDDDDDDDDDDDDDDDDDFDFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'hDDDDDDDDDDDBBBBBB9B999999999BBBBBBBBBBBBBBBBBBBBBBBBBB9999999999),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDFFFDFDFDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_3E(256'hBBBBB997959592929292929595B7B9BBBBBBBBBBBBBBBBBBBBBBBBDDDDFFFFFF),
    .INIT_3F(256'hB9999797999999BBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDBBBB),
    .INIT_40(256'hBDBBFFFFFFDDBBBBB9B99797979795959494929292929292929292929597B7B9),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDDDDDDD),
    .INIT_42(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hBBBBBBBB9B9999999999999999999999BBBBBBDDDDDDDDDDDDDDDDDDDDDDDFFF),
    .INIT_44(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBBBB9B99999999999B9B999BBBBBBBBBB),
    .INIT_45(256'hBBBBBBBBBBDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFFFDFDFDD),
    .INIT_46(256'hFFFFFFFFFFFDDDDDDDDDBBBBB99797959492929292959597B9BBBBBBBBBBBBBB),
    .INIT_47(256'h92929292929595B7B9B999999797999999BBDDFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFDFDFDDDDDDDDDDDDFFFFFFDDBDBBB999979797979595949492929292),
    .INIT_49(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4A(256'hDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4B(256'h9999999999BBBBBBBBBBBBBBBBBBBB9999999999999999999999BBBBBBDDDDDD),
    .INIT_4C(256'hFFFFDFDFDFDFDFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBBBB999999797),
    .INIT_4D(256'h95B7B9BBBBBBBBBBBB99B9B999BBBBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDDDDDDBBB99795959272727275),
    .INIT_4F(256'h9797959594929292929292929292929597B7B999979777979999B9DBDDFFFFFF),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDDDDDDDDDDDDDDDFFFFFFDDBDBB99999797),
    .INIT_51(256'hFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'h99999999BBBBDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_53(256'hDDDDDDDBBBB99997979797999999BBBBBBDDDDDDBDBBBBBBBBBB999999999999),
    .INIT_54(256'hFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_55(256'hDBB9979795927272727395B9BBBBBBBBBBBB9999999999BBDBDDFFFFFFFFFFFF),
    .INIT_56(256'h77979999BBDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD),
    .INIT_57(256'hFFFFFFDDDDBB9997979797959595949292929292929272729595B7B9B9979797),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_59(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hDDBBBBBB999999999999999999B9BBBBDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFF),
    .INIT_5B(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDBBB9B999979797999999B9BBBBDDDDDDDDDDDD),
    .INIT_5C(256'h99B9DBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDDDDDDDDDDDDDDD),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFDFDDBBB99795927272727295B9BBDDDDBB999999999999),
    .INIT_5E(256'h7272959799999797779797999999BBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5F(256'hDDDDDDDDDDDDDDDDDDDDFFFFFFDDDDBBB9979797979595959292929292929292),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDD),
    .INIT_61(256'hDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFFFFFFFFFFFFF),
    .INIT_62(256'h99BBBBBBDDDDDDDDDDDDDDDDBBBBBBB999999999999999B9BBBBDDDDDDDDDDDD),
    .INIT_63(256'hDFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBBB999979797979799),
    .INIT_64(256'hDBDDDDBB99999997979999B9DBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDBBB99795927272727397B9),
    .INIT_66(256'h9572727292929272727272739597999997777797979999BBBDDDFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFDFDDDDDDDDDDDDDDDDDDDDDDDFDFFFFFFFDDDDBBB9B797959595),
    .INIT_68(256'hDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'h99B9BBBBDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDF),
    .INIT_6A(256'hDBBBB99997979797979999BBBBDDDDDDDDDDDDDDDDDDDDDDBBBBBBBBBBBBB999),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFDFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_6C(256'hB99795927272727397B9DDFDDDBB99999997979799B9DBDDFFFFFFFFFFFFFFFF),
    .INIT_6D(256'hB9BBDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDBB),
    .INIT_6E(256'hFFFFDDDBB9B99795957272727070709070707272729597979797777797979799),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDDDDDDDDDDDDDDDDDDDDFDFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hDDDDDDDDDDDDBBBBBBBBBBBBBBDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hDDDDDDDDDDDDDDDDDDDDDBBBB99999979797979999BBDDDDDDDDDDFFFFDDDDDD),
    .INIT_73(256'hDBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDDDDDDDDDDDDDDDDDDD),
    .INIT_74(256'hFFFFFFFFFFFFFFFFDDDBB99795959272727597BBDDFFDDBB99999997979799B9),
    .INIT_75(256'h97979777777777979999BBDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'hDDDDDDDFFFFFFFFFFFFFFFFFDDDBBBB997957272505070707070707072727395),
    .INIT_77(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDDDDDDDDDDDDDDDD),
    .INIT_78(256'hDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFFFFFFFFFFFFFFF),
    .INIT_79(256'hDDDDDFDFFFFFFFFFFFDFDFDFDFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_7A(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDFDFDFDFDDDDDDDBBBB9B9999997979999BBDD),
    .INIT_7B(256'hDDDDBB999997979799B9DBDDFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDBB99795959292729597BBDDFF),
    .INIT_7D(256'h4E707070707072729597979777777777779799BBDDDDFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'hDFDFDDDDDDDDDDDDDDDDDDDDDFDFFFFFFFFFDFDFFFDDDDDDBBB9979572504E4E),
    .INIT_7F(256'hDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_11_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_11_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12
   (p_7_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_7_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_7_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF),
    .INIT_01(256'hB9B9B9999999B9BBDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDD),
    .INIT_02(256'hFFFFDFFFFFFFFFFFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFDDDDDDBBBB),
    .INIT_03(256'h979592927295B7DBDDFFFFDDBB999997979799B9DBDDFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDBBB997),
    .INIT_05(256'hDDDDBBB99773704E4E4E4E6E6E707070727397979797777777777799BBDDDDFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFDFDFDDDDDDDDDDDDDDDDDDDFDFDFFFFFFFFFFFDDDDDDDD),
    .INIT_07(256'hDFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFDFDF),
    .INIT_09(256'hFFFFFFFFDFDDDDDDDDBBBBBBBBBBBBBBBBDDDDDFDFDFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFDDDBB9B9979594927295B7DBFDFFFFDDBB99999797979799BBDD),
    .INIT_0C(256'h7777777799BBDDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFDDDDDDDDDDDDDBB995724E4C4C4C4E4E6E6E7070739597979777),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDDDDDDDDDDDDDDDDDDDDDFDF),
    .INIT_0F(256'hDDDDDDDDDDDDDDDDDDDDDDDFDFFFFFFFFFFFFFFFFFFFDDDDDFDFDFDDDFDFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDD),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDDDFDFDFFFFF),
    .INIT_12(256'hBB99999997779999BBDDFFFFFFFFFFFFFFFFFFDFDFDFDFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDBB9B9979594927295B9DBFDFFFFDD),
    .INIT_14(256'h4E6E707295979997977777777779B9BBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hDFDFDDDDDFDFDFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDBB795504C2C2C2C4C4E),
    .INIT_16(256'hDFDDDDDDDDDDDDDDDFDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDF),
    .INIT_17(256'hFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFDFDFFFFFFFFFDFDF),
    .INIT_18(256'hDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDDDDDD),
    .INIT_1A(256'h94747597B9DDFFFFFFDDDDBB997777999999BBDDFFFFFFFFFFFFFFFFFFFFDFDF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDBB9B99795),
    .INIT_1C(256'hDBB7704E2C2A2A2C4C4C4E4E707397979999999777799999BBDDDDFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFDFDFDFDFDFDDDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDD),
    .INIT_1E(256'hDDDFFFFFFFFFFFFFFFDFDDDDDDDDDDDDDDDDDDDDDDDDDFDFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFDFDFDFDFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_20(256'hFFFFFFFFFFFFFFDFDDDDDFDDDDDDDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFDFDDBB99977595757597B9DDFFFFFFFFDDBB999999999999BBDDFFFF),
    .INIT_23(256'h9999BBDBDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFDDDDDDDDDDDBD995502C2A0A2A2C2C4C4E7072959799999999999999),
    .INIT_25(256'hDDDDDDDDDFDFDFDFDFDFDDDDDDDDDDDDDDDDDDDDDDDFDFDFDFFFFFFFFFFFFFFF),
    .INIT_26(256'hDDFFFFFFDFDFFFDFDFDFDFDFFFFFFFFFFFFFDFDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_27(256'hFFFFFFFFDFDFDFDFDFDFDFFFDFDFDFDFDDDDDDDDDFDFDDDDDDDDDDDDDDDDDDDD),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDDDDDDDFDDDDDDDFDFDFFF),
    .INIT_29(256'hBB99999999B9BBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDFDFFF),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDBB99977575757597B9DDFFFFFFFFDDBB),
    .INIT_2B(256'h95979999999999999999BBBBBBBBBBDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFF),
    .INIT_2C(256'hDDDFDFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDBB9954E2C0A2A2C2C2C2E4E70),
    .INIT_2D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_2E(256'hDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDDDDDDDD),
    .INIT_2F(256'hDDDDDDDDDDDDDFDFDDDDDDDDDFDFDFDFDFDFDFDFDFDFDFDFDFDDDDDDDDDDDDDD),
    .INIT_30(256'hDFDDDDDDDDDDDDDDDDDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDDDD),
    .INIT_31(256'h7797BBDDFFFFFFFFDDDDDDBBBBBBBBBBDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDBB9997979595),
    .INIT_33(256'h502E2E2E2E2E4E50507397B9B999BBBBBBBBBBBBBBBBBBBBBBBBBDDDDDDDDDDD),
    .INIT_34(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDFDFDFFFFFFFFFDFDFDFDDDDDDDDDDDDDBB995),
    .INIT_35(256'hDFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_36(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_37(256'hFFFFFFFFFFFFDFDFDDDDDDDDDDDDDDDDFFDFDDDDDDDDDFDFFFDDDDDDDDDDDDDD),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFDFDDDDDDDDDDDDDDDDDDDFDFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hFFFFFFDDBBB99999999999B9DDDDFFFFFFFFFFFFDDDDDDDDDDFDFFFFFFFFFFFF),
    .INIT_3A(256'hBBBBBBBBDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3B(256'hDDDDDDDDDDDDDDDDBBB995959595757575759597B9BBBBBBBBBBBBBBBBBBBBBB),
    .INIT_3C(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_3D(256'hDFDFFFFFFFFFFFFFFFDFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_3E(256'hDFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_3F(256'hDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDDDDDDDDDDDDFFFFFFFFDFDDDDDDDD),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDDDDDDDDDDDDDDDDDDDF),
    .INIT_41(256'hDFDFDFDFFFFFFFFFFFFFFFFFFFDDDDDBBBBBDBDBDBDDDDFFFFFFFFFFFFFFFFFF),
    .INIT_42(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_43(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBDBDBDBDBDBBBB9B9BBDBDBDD),
    .INIT_44(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_45(256'hDDDDDDDDDDDDDDDDDDDDDFDFDFFFFFFFFFDFDFDFDFDFDDDDDDDDDDDDDDDDDDDD),
    .INIT_46(256'hFDFFFFFFDFDFDFDFDDFFDFDFFFDDDDDDDDDDDDFFDDFFFFFFFFDFDDDDDFDDDDDD),
    .INIT_47(256'hFFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDDDDDDDD),
    .INIT_48(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'hDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDFDFDFDFFFF),
    .INIT_4A(256'hFDFDDDDDDDDDDDFDFFFFDFDFDFFFFFFFFFFFFDFDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_4B(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFDDDDDDDDDFD),
    .INIT_4C(256'hDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBDBDDDDDDDBDDDDDDDDDDDDDDDDDDDDD),
    .INIT_4D(256'hFFFFFFFFFFFFFFDFDDDDDDDDDDDDDDDDDDDDDDDDDFDFDFDFFFFFFFDFDFDFDFDF),
    .INIT_4E(256'hFFFFFFFFDFFFDFDDDDFDDDFFDFDFDDDFFFFFFFFFFFDFFFFFDDDDFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_51(256'hFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hFFFFFFFFFFFFDFDFDFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_53(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDBDBDBDBDBDBDBDBDBDBDBDDDDDDDDDDDDDDD),
    .INIT_54(256'hDDDFDFDFFFFFFFFFFFFFFFFFFFFFDFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDDDDDDDDDDDDDDFDFDFDF),
    .INIT_56(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDFDFFFDFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_58(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_59(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hBDBDBDBDDDDDDDDDDDDDDFFFFFFFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBDBDBDBDBDBD),
    .INIT_5C(256'hDFDDDDDDDDDFDFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDDD),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDF),
    .INIT_5E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFFFFF),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hDDDDDDDDDDDDBDBDBDBDBDBDBDBDBDDDDDDDDDDDDFDFDFFFFFFFFFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'hFFFFFFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBDBDBDBDBDDDDDDDDDDDDDDDDDDDDFDF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDDDDDDD),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hDDDDDDDDDDDDDDDDDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hFFFFFFFFFFDFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBDBDDDDDDD),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_77(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_79(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFDFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_7B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_7F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_7_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_7_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13
   (p_3_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_3_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_3_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'h0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFDFDFDFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDDDDDDDDD),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFDFDDDD),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFDFDFDFDFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hDDDDDDDFFFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBDBDDDDDDDBDBDDDDDDDDDDDDD),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDDDFDFDFDDDDDDDDDDDDDDDDDD),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFDFDDDFDFDFDFDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFDFDF),
    .INIT_27(256'hDDDDBDBBBDDDDDDDDDDDDDDDDDFFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_28(256'hDDDDDDDDDDDDDDDDBDBDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBDBDDD),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDD),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2D(256'hDDDDDDDDDDDDDDDDDDDDDDDFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_2E(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_2F(256'hDDDDDDDDDDDDDDDDDDDDDDDDBDBBBDDDDDDDDDDDDDDDDFFFDDDDDDDDDDDDDDDD),
    .INIT_30(256'hDFDDDDDDDDDDDDDDDDDDDDDDDDDDBDBDBDBBBBBBBBBDBDDDBBBDBDBDBDDDDDDD),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFDFDFDFDFDF),
    .INIT_34(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_35(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_36(256'hDFFFDDDDDDDDBDBDBDBDBDBDBDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_37(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_38(256'hFFFFFFFFFFFFFFFFFFFFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_39(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3A(256'hDFDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDF),
    .INIT_3C(256'hDFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFF),
    .INIT_3D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDF),
    .INIT_3E(256'hDDDDDDDDDDDDDDDDDDFFFFFFDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_3F(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFDFDFDFDDDDDDDDDDDDDD),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDD),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_42(256'hFFFFFFFFFFFFFFDFDFDDDDDDDDDDDDDDDDDDDDDDDFDFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_44(256'hFFFFFFFFDFDFDFFFFFFFFFFFDFDDDFDFFFFFDFDFDDDFDFDFDDDDDFDFFFFFFFFF),
    .INIT_45(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFDFDFDFDFDFDFDFFFFFFFFF),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDDDDDDDDDDDDDDDDDD),
    .INIT_47(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDDDDDDDDDDDDDDDDDDDDDDFDF),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'hDDDDDDDDDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_3_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_3_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
   (\douta[2] ,
    clka,
    addra);
  output [1:0]\douta[2] ;
  input clka;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1_n_0 ;
  wire [15:0]addra;
  wire clka;
  wire [1:0]\douta[2] ;
  wire [15:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0FC6FFA556BFFFFFFFFFFFFFFFFFFFEAA55ABFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE90EAAABC15555AFFFFFFFFFFFFFFFE5),
    .INIT_02(256'hFFFE50FC6FFA556BFFFFFFFFFFFFFFFFFFFEAAAABFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE93AAAAB05555ABFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFE94FC6FFA556BFFFFFFFFFFFFFFFFFFFFEAABFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9395AAF15555AFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFE94F06FFA555BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E556AC5555AAFFF),
    .INIT_08(256'hAAFFFFFFFFFFFFFFFFE94006FFA555BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E55ABC5556),
    .INIT_0A(256'h16AAAAAAFFFFFFFFFFFFFFFE94016FFE956BFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E56AB),
    .INIT_0C(256'hEAAFC1AAAAAAAAABFFFFFFFFFFFFE9501AFFEAAABFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4),
    .INIT_0E(256'hFFFE9000016AAAAAAAAAAFFFFFFFFFFFFEA556BFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFEAAAAAAFFFEEBFFFFFFFFFFFFFFFFFAAAAFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFABEF),
    .INIT_29(256'hFABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAABFAFFFFFFEB),
    .INIT_2B(256'hBFFFBFABFFFFFFFFFFFFAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEAFAAAAAAAAAA),
    .INIT_2D(256'hFFFFFFFFFFFEFFFFFFFEFAAAAAAAAFFAAAAAFFAFFFFFFFFEBAABFFFFFFFFFFFF),
    .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'h00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[12:0],1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:2],\douta[2] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1_n_0 ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h02)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1 
       (.I0(addra[15]),
        .I1(addra[13]),
        .I2(addra[14]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3
   (\douta[2] ,
    clka,
    \addra[15] ,
    addra);
  output [0:0]\douta[2] ;
  input clka;
  input \addra[15] ;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[2] ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFF00000700600000F800F00F0038000C0387C1E07FCC0000F00780000007FF),
    .INIT_01(256'h80FFFF800000E03800003E001E03C01C000380C1F8000FE600003E03F0000003),
    .INIT_02(256'h00F8FC0FC000003C1E00F81F8003E0FC0E0000E0603FC3E3F9000007C1FFF003),
    .INIT_03(256'h7F803FFE00F0000003FF007FFFE0007FFF87000018378FF3FFF88000003FE3FC),
    .INIT_04(256'h000FF01CFF0C3FC000003FC01C3FC00003E07F8000079BF3FDFFF8C0000001E0),
    .INIT_05(256'h000001FE1C1F838FFC000001F80E00000000380FC00001FEF8FF7FFC20000000),
    .INIT_06(256'h000000007FFE03C043FFC000003E0F800000000E01F008007FBC03DFFF300000),
    .INIT_07(256'h00000000003FF801F000C3F800000FC7E000000003807E07FE03E00777FFCC00),
    .INIT_08(256'hFD80000000003C78003C40203F000001FFF000000000E10FC7FFC03C33ECFFF2),
    .INIT_09(256'hFC0E40000000001C1E000FFFF003C000003FF8000000003803FFFFF00FFCFBC1),
    .INIT_0A(256'hCFB7C020000000000E070003FFFC007800000FFC000000000E107FFFFC03FF3E),
    .INIT_0B(256'hFFF80CFFF0000000000381C0007FFF001E000001FE00000000038C1FE78F01FF),
    .INIT_0C(256'hFFFF7FCE3FE00000000000E070001C7FE0038000003C0000000000E307E383E0),
    .INIT_0D(256'hE01FFFF0FE0FC000000000001C38000603FF80E0200000000000000038C3E1C0),
    .INIT_0E(256'h3FE007FFF8000000000000000007FC000180FFFCF808000000000000000E00F1),
    .INIT_0F(256'hF01FE001FFFF00000000000000F8007E0000C03FFFFC030000000000000003C0),
    .INIT_10(256'h001E1FE000FFFFC0000000000000FF00000000300FFFFF00C000000007E00000),
    .INIT_11(256'h800003FF30E06FFFE000000000000071E00000001C01FFFF802000000003FC00),
    .INIT_12(256'h3FF000007FF8FC3830F800000000000FF8380000001E007DFF800000000000FF),
    .INIT_13(256'h001FFE0000039C7E1F001F0000000000FFFC060000000F000F3FE00000000000),
    .INIT_14(256'h00000783C000000E1F87C007C0000000001F8001C000003FC201C7FC3F000000),
    .INIT_15(256'h00000001C07C0000031FC3F000F8000000000F80003000001FFFE070FFFFC000),
    .INIT_16(256'hFF00000000700F0000019FE0FC603E000000000FC0000E000007FFFC3C7FFFF8),
    .INIT_17(256'hFFFFC00000001C03C0000067F07F3E0FC000000003C0F803800001FFFFFFFFFF),
    .INIT_18(256'hFFFFFFF80000000780F0000019FC38CF82F000000003E0FFC0C00018FFF3FFFF),
    .INIT_19(256'h01FBFFFFFF00000001F0780000067E0E13E31C00000001F03FF870003FFFE03F),
    .INIT_1A(256'hF001F80FFFFFFC7FE0003FFC000001840306F1C38000000078CFFF1800183FE0),
    .INIT_1B(256'h01FC00F001FFFFFFFFFF0003FC0000003001C198F0600000001E73FFC6000C07),
    .INIT_1C(256'h81C0FFC07800FFFF03FF9FFE00380000000E00E0307C080000000738FFF98003),
    .INIT_1D(256'h1FF0707FFFF801FFFFC03F81FFE0000000000180380E3F03000003839E1FFE7F),
    .INIT_1E(256'hFF87FF7FFFFFFC00FFFDF807C03FFE0000000000E00E039FC260000E19CF07FF),
    .INIT_1F(256'hC0FF87FFFFFFFFF8007FFFFE00F81FFFC000000000380780F3F1CC001CF3E781),
    .INIT_20(256'h80F07F8FFFF83FFF80003FFFFF807F8FFFFC000000007E07C03C7C79800CFE23),
    .INIT_21(256'h3FE0387FCFFFF807BFC0001FFFFFE03FFFFFFFC00000001F8FF0070F9F60067F),
    .INIT_22(256'h009FF0003FC71FFE0180E0000FFFFFFC1FFFFFFFF80000000FFFF801C0E7CC03),
    .INIT_23(256'h3EC04FF8F00FE30FFB8000000003F0FFC7FF00C07F9F00000003FFE0007339FB),
    .INIT_24(256'h73C71833FE7E07F383FC6000000001FC00007F80000FE3C0000001FFC0001DCE),
    .INIT_25(256'h033CF8C78DFF3FE1F980FE1C0F000000FC00000FC00000FDF00000007FE00006),
    .INIT_26(256'h00019E6700FE7FCFF8FC403F03DFE000007F000001C000C00FFC0000007F8000),
    .INIT_27(256'hE000009F30E01F3FF3FE1C300F803E1C00007FC000000001FE01FF0000007F80),
    .INIT_28(256'h181C00002FD838039FF9FFC01800000001C0003FF000000000FFC03FC0E00039),
    .INIT_29(256'h8006E7C0381BE6060C4F80FFFC3C000000001C0C0FFC00000C003FF803F1FC00),
    .INIT_2A(256'hFFE00739FC3FE7FD83C703807FFFFE0000000003FF83DF000007E01F1F00FFFF),
    .INIT_2B(256'h1FFFF803807F38797F60E3C0C63E7C0E00000000003FF1E7C00007FC0703C03F),
    .INIT_2C(256'h3C0F00FE0188FFF9C35FC879E033DF0000000000000007FFF1F0000FFF83C0F0),
    .INIT_2D(256'h3C1F8F003F80DF3FFDFED7FBFCF28E7F000F000000000000FFFC7C0FFFFFF0F0),
    .INIT_2E(256'h0FFFDFFF801FF86FCFFEFF9CFCF879E3CF800FC000000000003FFE3F0FFFF07E),
    .INIT_2F(256'hF003FFFFFFC00FFFF7F3FF3FF33F3C3E7C7200073000000000000FFF0FFFFFE0),
    .INIT_30(256'hFFF000FFFFC7C007F813FCFFDFFC4F843FBFC0800388000000000003FF81FFFF),
    .INIT_31(256'h00FFE003FFFFC00003C6F3FF3FE60003E01FEDFC7FFBC2000000000000FFC07F),
    .INIT_32(256'hC0003FFFFFFFFF000001E17FFFCFE00000E007F37FFFFFF18001C00000007F00),
    .INIT_33(256'h03E0000FFFFFFFFFC00000E0DFFFF7E000101801FD9FFFFFFC4000700000000F),
    .INIT_34(256'h0000F80003FFFFFFFFE0000071EFFFFDC0007FE1F0FE667FBFFE10001C000000),
    .INIT_35(256'h0000001C0000FFFFFFFFF8000078C73FFF03007FFC3E3F999FFFFF87FF830000),
    .INIT_36(256'hC00000000001F03FFFFFFFFC0007FC4F87FFE3807FDFC00F0663FFFFE0001C00),
    .INIT_37(256'hFF3C0000000001FF0FFFFFFFFF8003FE27DDFFFFE07F8038018198FFFFF80FF9),
    .INIT_38(256'h03FFF18000000001FFFFFFFFFFFFE001FE0BE5BFFFF0FF8003E000763FFFFC0F),
    .INIT_39(256'h00007FFFB0000000007FFFFFFFFFFFFC007F026227FFFC7F80007F838D80FF80),
    .INIT_3A(256'h0100000FFFF4000000003FFFFFFFF000FF003F004704FFFF1F80000FE3F3E00F),
    .INIT_3B(256'hC000000003FFFD800000000FFFFFFFF8001FC00F000E0198038F800003D9FE70),
    .INIT_3C(256'h87F800000000FFFFA000000007FFFFFFFC0E07F007C00007F8C063C00000FE7F),
    .INIT_3D(256'h1FFC00000000003FFFE80000000FFFFFFFFF0FC1FC03E000060FFFDCE000003F),
    .INIT_3E(256'h0007FFFE00001C4007FEF20000000FFFFFFE0F83F07F00F000037B0037380000),
    .INIT_3F(256'h800003FFFFE00C073F81FF1EE0000F03FFFFFF01C0F83FC0780001BE4004C600),
    .INIT_40(256'h2660000003FFFC10001FF01FE78C000FE0FFFFE380003C1C783C0000CF900199),
    .INIT_41(256'h000C880780003FFF0E001FFE03FFFC8007F83FFFF8E0001C0F0FBE00003BEC00),
    .INIT_42(256'hC300033207F80007FFC3FC3FFF807FFF9001FE07FFFE38001E0381FF00001E76),
    .INIT_43(256'h0FFB83C06083FF0000FFF8FF1FFFE00FFFF6003E001FFFCE001F81E03F80001F),
    .INIT_44(256'h001FF7C0983833FFF0001F9E1FC7FFF827FFFE8000000FFFFFC00FC0F803C000),
    .INIT_45(256'h00003FF80023FE0FFFFF0003EF87E1FFFC1DFFFFD000000FFFFFF003F03E0000),
    .INIT_46(256'hE0000008F000087F07FFFF8000FFE0F03FFF0723FFF4000007CFFFFE00FC0F80),
    .INIT_47(256'h01F80000063000020FFFFFFFE0001FFC18063F83C03E1E800007E3FFFF901E03),
    .INIT_48(256'h00003F00000098000081FFFFFFF80007FF00300FE0FCCF83BF8003F1FFFFFC00),
    .INIT_49(256'hF8000003E000003C0000307FFFEFFE0001FFC00C07F033F9E6601E0FF87FFFF8),
    .INIT_4A(256'h1C381B80001C00000000000CBFFFF9FF00007FF031F9FC1C7F3C9FFC7FFC1C7F),
    .INIT_4B(256'h80FF070FC1FF81C000000000033FFFFE3FC0000FF8007CFF060FCF03FFE3FF07),
    .INIT_4C(256'hFC07C780C7E1FFF818000000000181FFFF87F80007FE001E7F8180FBE0FFFE03),
    .INIT_4D(256'hFFFFC3FCC03FF1FF000380000000006003F800FF0001FF00003F80603E787FFF),
    .INIT_4E(256'hFFFFFFF9FF900FFCFF000030000000003000FE003FE0407FC0000E0018079FBF),
    .INIT_4F(256'hFDFFFFFFFF000C03FE7F000C040000000018001F000FFC183FF00000010601E7),
    .INIT_50(256'h603E7FFFFFFFCFFF00FFBF803FC10000000F0E00003E03FFCE0FFC000003C180),
    .INIT_51(256'h3F900F9FFFFFFFF7E0C070CFC03FF84000001FC702000CC07FFFC7FF000000FE),
    .INIT_52(256'h001FC4078FFFFFFFF900381037E03F0F1000000FE1C0C003F01FFFFFFFC00000),
    .INIT_53(256'h00007FF39FC7FFFFFFFEC0071C0DF07F01E4000003FEE0707C7003FFFFFFE000),
    .INIT_54(256'hF000003FFCFFE3FFFFFFFF3000FF027C3F007B00001C7FF81FFF80003FFFFFE0),
    .INIT_55(256'hFFF8000007FF3F81FFFFFFFFD9803F00BE1F001CC003FE0FFC07FFF800003FFF),
    .INIT_56(256'h00FFFE000003FFC600FFFFFFFFEDFC00002F8F800F383FFF03CF00FFFFF80007),
    .INIT_57(256'hF0800FFF8000007FE003FF07FFFFFBC180001BE38003CFFFFF00E3C03FFFFFC0),
    .INIT_58(256'hF8342001FFC000001FF801FF9E3FFFFE77BE0004F0C001F7FF800038F007FFFF),
    .INIT_59(256'h7FFC6000003FB0600001DC00FF8C67FFFFDDF080013C7000FFE000000C7E01FF),
    .INIT_5A(256'h7C1FFF3E0000078C3C0000003F3F0E09FFFFF79CA0004F18001FE000000319E0),
    .INIT_5B(256'h339987FFE7C00000030F0000000FFF1E0303FFFDB8680013C60003F0000000CE),
    .INIT_5C(256'h000DE760FFFC7800000003C0000007FC1C00C0FFFF41C20004F1800000000000),
    .INIT_5D(256'h00000379FE1FFF8000000000E0000018FE0E00303FFF900F0001BC6000000000),
    .INIT_5E(256'h00000001FFFFC7FFF8000000001800000E1E0180044FFFC80180006E30000000),
    .INIT_5F(256'hFE000000007FFFF8FFFF0000000002000003307C3001F1FFF40000000B8C0000),
    .INIT_60(256'hC1FFC00000001FFFFF1FFF8000000000000001CFF304007E3FFB000000026301),
    .INIT_61(256'h2631FFF000000007FFDDE3FFC000200000000001F66061000FE3FCC0000000D8),
    .INIT_62(256'h00098FFFFC00000001FFF73C3FC3F008000001C10079800CC0001E7F38000000),
    .INIT_63(256'h000002E3FFFF000004007FFC7FC081FE00000080F0403E4003F00000C3038000),
    .INIT_64(256'hE600000099FFFFC00007003FFF0FF0007F808000203E001FB0004000001C0630),
    .INIT_65(256'hFF3E400000267FFFF80D9FE00FFFE1FE1F3FE00006001F0007CC0000000001F9),
    .INIT_66(256'h007FE7D000000D1FFFFF0FFFFC03FFF81FFFCFF80001C007C001F20000000000),
    .INIT_67(256'h00001FDC7200000247FFFFEFFFFFC1FFFE03FFE3FE0000F001F0043CC0007000),
    .INIT_68(256'h07000007F9CD80000091FFFFFFFFFFF9FFFF8039F07F00003C00F8611F30003C),
    .INIT_69(256'h01E1C01C018F38400000687FFFFFFFFFFFFDFFC007F80FC0001E00207EF79C03),
    .INIT_6A(256'hB9C0F8300F8041E7E00000723FFFFFFFFFFFFE3FE0007E31E0000790001FFFE7),
    .INIT_6B(256'hFFEC707E000660303C800000E18FFFFFF807FFFF0FF000073E700001EC00E7FF),
    .INIT_6C(256'h00FCFF1FBF80079818078000000FC3FFFF80003F7F07F800000F88000233003B),
    .INIT_6D(256'hF011FFFFC0FCE003FE0600F000000FF8FFFFC000000001FC000003E00001F1C0),
    .INIT_6E(256'h3FFC0FFFFFFF801FF1C7FB003C000003FE1FFFF0060000007F000003F800007F),
    .INIT_6F(256'h001FFF03FFFFFFFFF007E0FFC00F800000FF07FFF807F000001F838001FE0000),
    .INIT_70(256'hC7F83FFFC1FFFFFFFFFFFE001FE003F800003FC1FFFE07FF800007E0F800FF00),
    .INIT_71(256'h3FFFFFFFFFF07FFFFFFFFFFFFFF0000007FE000FF07FFF03FFF80001F07F00FF),
    .INIT_72(256'hFE7FFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFC000F003FC1FFFC0FFFFC000781FF0),
    .INIT_73(256'h80FFFFFFFFFFFFFF07FFFFBFFFFFFFFFFFFFFFFFCC00FE07FFF01FFFF8001E07),
    .INIT_74(256'h01E03FFFFFFFFFFFFFC1FFFFC7FFFFFFFFFFFFFFFFF8E03F83FFFC03FFFFC007),
    .INIT_75(256'hFFE07C0FFFFFFFFFFFFFF07FFFE07FFFFFFFFFFFFFFFFFC7CFC07FFE00FFFFFC),
    .INIT_76(256'hFFFFFE1F83FFFFFFFFFFFFFC1FFFF80FFFFFFFFFFFFFFFFFFE0FF01FFF803FFF),
    .INIT_77(256'h01FFFFFFC3E0FFFFFFFFFFFFFF07FFFE03FFFFFFFFFFFFFFFFFFFEFC03FFE00F),
    .INIT_78(256'hF800FFFFFFF0F87FFFFFFFFFFFFFC1FFFF00FFFFFFFFFFFFFFFFFFFFFF00FFF0),
    .INIT_79(256'h0FFE003FFFFFFE1E1FFFFFFFFFFFFFE07FFFC03FFFFFFFFFFFFFFFFFFFFFC03F),
    .INIT_7A(256'hFC03FF001FFFFFFF8787E1FFFFFFFFFFF80FFFF80FFFFFFFFFFFFFFFFFFFFFF0),
    .INIT_7B(256'hFFFF00FFC007FFFFFFF1F3E07FFFFFFFFFFE03FFFF87FFFFFFFFFFFFFFFFFFFF),
    .INIT_7C(256'hFFFFFFC07FE001FFFFFFFC78F81FFFFFFFFFFF80FFFFF1FFFFFFFFFFFFFFFFFF),
    .INIT_7D(256'hFFFFFFFFF07FF800FFFFFFFF1E3E07FFFFFFFFFFC03FFFFFFFFFFFFFFFFFFFFF),
    .INIT_7E(256'hFFFFFFFFFFFE3FFC003FFFFFFFC39F81FFFFFFFFFFF80FFFFFFFFFFFFFFFFFFF),
    .INIT_7F(256'hFFFFFFFFFFFFFF8FFF001FFFFFFFF0E7E07FFFFFFFFFFE07FFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\douta[2] }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\addra[15] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4
   (p_39_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_39_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_39_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000FF0FFFFF00000FE00007FFF000303E1FFFF000000FF87FFFFFF800),
    .INITP_01(256'h7E00000000001FC7FFFFC00001F80001FFFC001E043FFFF8000001FC1FFFF3FC),
    .INITP_02(256'hFF0503E000000003E1FF0FE000003E0001FFFF801F801FFFFC0000003E0187FC),
    .INITP_03(256'h007F8001FF00000000007F80000000000000FFFFE00FF00FFFFE000000000001),
    .INITP_04(256'h00000FE000FFC0000000003FE0000000001F007FFFF807FC03FFFF0000000000),
    .INITP_05(256'h00000001E0007FF00000000007F00000000007F03FFFFE01FF00FFFF80000000),
    .INITP_06(256'h000000000000001FFC0000000000F00000000001FE0FF1FFC07FF83FFFC00000),
    .INITP_07(256'h000000000000000007FF3C000000003800000000007F83F003FC1FFF8FFFF000),
    .INITP_08(256'hFE0000000000038000018FDFC00000000000000000001FF078007FC3CFF3FFF8),
    .INITP_09(256'h03FF800000000003E00000000FF800000000000000000007FC00001FF003FC3F),
    .INITP_0A(256'h3FC07F800000000001FC00000003FF80000000000000000001FF800007FC00FF),
    .INITP_0B(256'h0007F0040000000000007E00000000FFE00000000000000000007FE00071FF00),
    .INITP_0C(256'hC0000078000000000000001F800001801FFC0000000000000000001FF0003F3F),
    .INITP_0D(256'h1FE00000000000000000000003C00000F8003F00000000000000000007FC003F),
    .INITP_0E(256'hC01FF800000000000000000000000000007F000300000000000000000000FF00),
    .INITP_0F(256'h0FE01FFE00000000000000000000000000001FC000000000000000000000003F),
    .INIT_00(256'h333355555533131111111111133355777777573511CEACAAAAAAACAAAA8A8A8A),
    .INIT_01(256'h2222222222246688AAAACCEE113355555555553311EECCCEEE11111111111111),
    .INIT_02(256'hEEEEF011133335355777799BBBBBBBBB9B795511CC8846242424444444442422),
    .INIT_03(256'h55553311EECC884422000000002266AACEEF1111EFCECECCEEF01111111111EE),
    .INIT_04(256'h333311F1EECC88664444224244646444446688AAEE1111333333555555555555),
    .INIT_05(256'h7577777755553311EEEECCAA88666666666444444466668888AACCEE11113333),
    .INIT_06(256'h222244446688CCEE3153557777555333F1EEEEEF111333333333333331335355),
    .INIT_07(256'hAAACACCCCCCCACAAAAAAAAAAAA88888866666666444442224444646464444444),
    .INIT_08(256'hACCCEE1011111111111111333555553533131111EFF11133355557555533EECC),
    .INIT_09(256'h44222424444444242222222222222222446688AACCCEEE13335555353311EECC),
    .INIT_0A(256'hCECEEEF0F011F1F1F1F1111333353555553557577999BBBBBBBB995733EEAA66),
    .INIT_0B(256'h3333333555555555555533353311EECC88462202000022448ACCF111331311EE),
    .INIT_0C(256'h666688AACCCEEE111333331311F1EECCAA8866444444446464644466AACCEF11),
    .INIT_0D(256'h333333333311111111333355555555333311EECCCCAA88866666666644444444),
    .INIT_0E(256'h44444444646444444444222244446688AACCEE11335555533311EEEEEE111133),
    .INIT_0F(256'hEE111333333313EFCCAAAACCEEEEEEEECECCCCACAAAA88888866666666444444),
    .INIT_10(256'hCCEE1111111111EEAA8888AACCEEEE1010EEEEEEEF113335555535333311EEEE),
    .INIT_11(256'h9BBBBB997735F1AC68442422222222222222222222220022222224446688AAAA),
    .INIT_12(256'h4488EE335555555533F1CECECECEEEEEEEEEF111557799999999797757777999),
    .INIT_13(256'h4464666688AACC113333333335555555555555553355333310CC886644222222),
    .INIT_14(256'h8886666666666644444444446688AAAACCEE1011111111F1EEEECCAA88886644),
    .INIT_15(256'h111111EEEEEEF0113333333333333111EECCECEE0E111111111111EEEECCAAAA),
    .INIT_16(256'h886666666666444444444444444444444444444222222244446688AACCEE1111),
    .INIT_17(256'h3335555755553311EECCCCEEEE11F111EECCAAAACCEE1113333311F1EEEEAA88),
    .INIT_18(256'h0000000022224446666888AACCCCEEEECCAA88666688AAACCCEEEEEEEEEEEF11),
    .INIT_19(256'hDDDDDDDDBDBB999999999999997735F1AA684422222222222222222222220200),
    .INIT_1A(256'h333311CEAA886646464668CC35799B9999773511EECCACACCCCCCCCC115599BB),
    .INIT_1B(256'hEEEEEEEEEEEECCAA886666668688CAEE11333355553535555555555555533333),
    .INIT_1C(256'hCCEEEEEECCCCCCAAAA8886666666666666444444444444466688AAAACCEEEEEE),
    .INIT_1D(256'h42444444666688AACCCCECECECECEEEEF11333355535333311EECCAAA8A8AACC),
    .INIT_1E(256'h3555575755353313888888666666666666444444444444444444444444444442),
    .INIT_1F(256'h6888AACCCCCCCCCEEE1133355557555533F1CCAAAAAACCCCCCCCCCAAAAACEE11),
    .INIT_20(256'h2222222222222200000000000000000022224444446666888A88886646444466),
    .INIT_21(256'hAA8A8A8AAACE3599DDDFFFFFFFFFDFDDDDBB9B9979795735EEAA664422222202),
    .INIT_22(256'h33333555555533333333333311EEAA888888888AAC1379BDBDBD9B793513CECC),
    .INIT_23(256'h22444466668888AACCCCEE1111111111EFEECCA88888A8CAEE11333355555533),
    .INIT_24(256'h33110FCCAA886666668888AAAAAAAAAA88886666666666666666664444444442),
    .INIT_25(256'h4444444444444444444444442244444466668888AAAAAACCCCEE111133555533),
    .INIT_26(256'h888AAAAAAAAACCEE113557777979777757558888888888888868666666444444),
    .INIT_27(256'h44444646444424244444666688AAAAACCCCCCEF013335555553311EEAA886868),
    .INIT_28(256'h13F1AA6844222202020222222222220000000000000000000000002222222222),
    .INIT_29(256'h9BDDBDBD9B773511EECCACAA686888EE57BDFFFFFFFFFFFFFFFFDFDDBD9B7955),
    .INIT_2A(256'hAACC0F1133335555333313133333333333333333333111EECCAAAAAAACACF055),
    .INIT_2B(256'h666666666644444444222222224444446688AACCEE11333333333311EECAAAA8),
    .INIT_2C(256'hAACACCEEEE11333333331111EECCAA8664444444446666666666444444444464),
    .INIT_2D(256'hCCAAAAAA88886666664444444444444444444444444422222244444466666688),
    .INIT_2E(256'h133311F0CCAA8866444466688AAACCCCEE1133555777799979775755AAAAAACC),
    .INIT_2F(256'h000000000002222222222222222424222222244444668888AAAAAACCCCEEF011),
    .INIT_30(256'hFFFFFFFFFFDFDDBB7733EEAA6644222222022222222222222200000000000000),
    .INIT_31(256'h1110EECECCCCCECEF0579B9B9B9B79351311111313F1AC8A8AEE77BDDFFFFFFF),
    .INIT_32(256'h33555555553311CCAAAACCEE1111333333333311EEEFF1111111111111313311),
    .INIT_33(256'h2222222222222244444464646666644444442222222222222222446688CAEE11),
    .INIT_34(256'h2222222222424444666688AACCEEEEF111131311EEEECCAA8866442222222222),
    .INIT_35(256'h777977775755CACCEEEEEEEECCCCAAAA88666666444444444444444444444444),
    .INIT_36(256'h888AAAAAAACCACCCCCCCCCCCCCAA8866444424444668AACCCEEEF11133355577),
    .INIT_37(256'h2222220000000000000000000000020222222222222222222422222222244466),
    .INIT_38(256'h33CEACEE579BDDDFDFDFDDDFFFFFFFFFDFBB7713AC6844222222220222222222),
    .INIT_39(256'hCEEEEEEEEEEE1011111111111111F0F0CECEF035577957573513111357799977),
    .INIT_3A(256'h22222222446688AAEE1133557777553511EECCCCCCEE0E1111333311F1CCCCCC),
    .INIT_3B(256'hAAAA886644222222222222222222222222224444444444444444444222222222),
    .INIT_3C(256'h444444444444444444444222222222222244446688AACCEEEEEE111111F0EECC),
    .INIT_3D(256'hAACCEEEEF11113133333355555553533CCEE11111111EEEECCCCAA8868666644),
    .INIT_3E(256'h222424242422244446888ACCCCCEEECCCCAAAA8A888868664444222222224488),
    .INIT_3F(256'h2422222222222222222222222200000000000000000000022222222222222224),
    .INIT_40(256'h1313F0F011579BBDDDBD7913CECC1357999BBBBBBBDDDDDDDFFFDFBB57F18A46),
    .INIT_41(256'hEE0E111111EECCAAAAAACCCEEEEEEEEEEE0E1133335535331313F0CEEEF01313),
    .INIT_42(256'h4444444444222222222222222222446688AAEE113355777777553311EECCCCEC),
    .INIT_43(256'hCCCCEEEEEEEEEEEECCAAAA886666442222222222222222222222222244444444),
    .INIT_44(256'h1111EEEECCACAA68666644444444444444444444222222222222224244446688),
    .INIT_45(256'h44444422222222224466AACCEEEEF11111F0F1F1111113131111EE1111333333),
    .INIT_46(256'h00022222242424242424244444444444446688AACEF0111111EECCAA8A686646),
    .INIT_47(256'hBBBBDDDDDDBB55CE682422222222222222222222222222220000000000000000),
    .INIT_48(256'h57553313F0CECECECED0F0F0CEF01377BBDDDFDD9B57F0ACCEF0355557777799),
    .INIT_49(256'h777777553311EECCCCCCECEEEEEECCAA8A888AAACCCEEEEEEEEEEE0E11335577),
    .INIT_4A(256'h222222222222444444444444444442222222222222222222446688AAEE115577),
    .INIT_4B(256'h22222222222242446688AACCCEEECECCCCCCAAAA888866444422222222222222),
    .INIT_4C(256'hEEEEEECE111131333333331111EFEECCAA886666444444444444644444444422),
    .INIT_4D(256'h333311EECEAA88664444442422222222222244668AACCEEEEEEEEECCCCCCCCCE),
    .INIT_4E(256'h22220202000000000002022222222224244444444444444444446688CCEE1133),
    .INIT_4F(256'hF0AC8AACCEEE1133355557779999997711AA4624222222222222244444242222),
    .INIT_50(256'hEEEEEEEEEE103153557777573513F0CEACACACACAECECEF03579BBBDDDDDBB77),
    .INIT_51(256'h4244446688AAEE11557777777757553311CCCCCCCCCCCCCCAA8868888AAACCEE),
    .INIT_52(256'h6644444242422222222244444444444444424242222222222222222222222222),
    .INIT_53(256'h444466666666444444222222222222222244446688AACCCCCCACAAAA8A888866),
    .INIT_54(256'hCCCEEEEECECCACACACCCCCCCCCCC1111333333333333331111EECCAA88664444),
    .INIT_55(256'h4444446688ACEE11335555333310CEAA886644444422222222222222226688AA),
    .INIT_56(256'h2222224444464444442222220202020202020222222222222224244444444444),
    .INIT_57(256'hCEF013779B9BBBBB9B57F0AA8AACACCCEE1011133333333333F1AC6644242222),
    .INIT_58(256'hAA8866666688AACCEE111111EEEEEE103133555555351310CECEACACACACACAC),
    .INIT_59(256'h222222222222222222224244646688AACC11557779797757553311CCAAAAAAAA),
    .INIT_5A(256'hAAAAAAAA88888868666664444444444242424444444444444444444442422222),
    .INIT_5B(256'h331111EEEEAA8866444444666666666666444444222222222222222244646688),
    .INIT_5C(256'h22222200002222446688ACCCEEEEEECCCCCCACCCCCCCCCCC1111113333333333),
    .INIT_5D(256'h24242424444444444444444446668ACCF0333355553333F0CCAA886644442222),
    .INIT_5E(256'hCECCAA8866442424222222224444666868664624222222020202022222222222),
    .INIT_5F(256'hF0EECEACACACACACACACACCEF035575777797735CEAA8AAAACCCEEF0F010EEEE),
    .INIT_60(256'h77575533EFCCAA8888888866664668AACEF111331111100EEEEE0E1133331311),
    .INIT_61(256'h44444444444444422222222222222222222222424444646688AACC1155777979),
    .INIT_62(256'h2222222222224444666688888888886866666666444444444444444444444444),
    .INIT_63(256'hCCCCEE1111111111333333111111EECC88664444646666668866666444442222),
    .INIT_64(256'h11EECC8866464424222222222200000000224488ACEEF11111EEEECECCCCCCCC),
    .INIT_65(256'h22222222222222222222242444444444444444444444446688CCEE1133333333),
    .INIT_66(256'h8AACACCCEEEEEECECCAA886846444424222222222224446688888A6866442422),
    .INIT_67(256'h100EEEEEEEEEEEEEEEEECECECCACACACACACACACACACCEF0F010131312F0AC8A),
    .INIT_68(256'h646688AACC113577797977575533EECC8888888866666688AAEE111133333331),
    .INIT_69(256'h4444444444444444444444444444444444444222222222222222222222444444),
    .INIT_6A(256'h8688888866664444442222222222222242444466668888686666666646444444),
    .INIT_6B(256'h1333331311F1EECECCCCCCCCEEEEEEEEEEEF111111111111EECC886664646666),
    .INIT_6C(256'h444668AACCF011333311EECC886666444424222222222200000000224488CCF1),
    .INIT_6D(256'h6688AAAAAA8A6846442422222222222222222424444446664644444444444444),
    .INIT_6E(256'hACACACACACACAC8A8A8A8CACACCCCCCCACAA8866462424222222222222222444),
    .INIT_6F(256'h8ACCEE1113333333333111EEEECCCCCCCCCCCCAAACCCCCCCACACACACACACACAA),
    .INIT_70(256'h42224222422242444444666688AACCEF3355777757553311EEAA888866666688),
    .INIT_71(256'h6666664644444444444444444444444466666666666666444444444444444442),
    .INIT_72(256'hEEEECCAA88666466666688888888666644444422222222222222222244446666),
    .INIT_73(256'h0000000000224688CE11333535353311EECECCCCACACCCCCCCCCCCCCEEEE1111),
    .INIT_74(256'h8888664644444444444444446688AACCEEEEEECECC8866664444442222222222),
    .INIT_75(256'h22222222222222222446688AACACACAA8A684624242222222222222224446668),
    .INIT_76(256'hCCACACACACACACAC8A8A8A8A8A88686668688A8A8CACACACAAAA8A6846442422),
    .INIT_77(256'h3311CCAA88888888AAAAEE11133333333333333311EEEECCCCCCCAAAAAAAAAAC),
    .INIT_78(256'h6666664444444444444444444242224244444464666688AACCEE113555555535),
    .INIT_79(256'h2222222222224444444444444444444444444444444444444466666666666666),
    .INIT_7A(256'hCCCCCCAAAACCCCCCEEEEEECCCCAA866644646666888888888866664444422222),
    .INIT_7B(256'h4444444422222222222200000000222466AAEF13335555553513EECEACACACAC),
    .INIT_7C(256'h2222222222244688AACCCCAA8866444444444444244444668888AAAAAAAA8866),
    .INIT_7D(256'hACAC8A8A686846242422222222222222222444688AACAECEACAC8A6846462422),
    .INIT_7E(256'hEEEECCCCCCCCCAACCCCCCCCCACACACACACACAA8A8A8A6866442446688A8C8CAC),
    .INIT_7F(256'h88AACCEE11333333331111EEAA88888888CAEE111333353555555555331111EE),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_39_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_39_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5
   (p_35_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_35_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_35_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0001E00FFF800000000000000000000000000007F00000000000000000000000),
    .INITP_01(256'h000000000FFF9C18000000000000000E0000000003FE00000000000000000000),
    .INITP_02(256'h000000000007FFC7FF8000000000000007C000000000FF820000000000000000),
    .INITP_03(256'h00000000000003FFE1FFE000000000000001F0000000007FF0C0000000000000),
    .INITP_04(256'h0000007C00000001FFF83FFC00000000000078FE0000000039FE380000000000),
    .INITP_05(256'h000000003F80000000FFFC0FFF0000000000007FFF80000000003F8F00000000),
    .INITP_06(256'h00000000000FF00000007FFE03FFE000000000003FFFF00000000003E3800000),
    .INITP_07(256'h00000000000003FC0000001FFF80FFFC00000000001FFFFC0000000000300000),
    .INITP_08(256'h00000000000000007F00000007FFC03FFF80000000001FFFFE00000000000000),
    .INITP_09(256'h0000000000000000000F80000001FFF00FFFF0000000000FFFFF800000000000),
    .INITP_0A(256'h0000070000000000000000000000007FF801FF7C0000000003FFFFE00007C000),
    .INITP_0B(256'hFE00000FC000000000000000000000000FFE007F9F8000000001FFFFF80003F8),
    .INITP_0C(256'h003F00000FF000007C007000000000000001FF000FC7F000000000FFFFFE0000),
    .INITP_0D(256'hE0000F800007FC00001FC07E000000000000007FC003E1FC000000007FFFFF80),
    .INITP_0E(256'hFFF00000000003FF000007F83FC00000000000001FE000787F800000E03FFFFF),
    .INITP_0F(256'hFFFFF00000000027FF800001FE07E000000000000007F0001E1FF00003FC1FFF),
    .INIT_00(256'h4444666666888888888888666644444444444444444444442442444444646666),
    .INIT_01(256'h8888866664444422222222222222222224444444444444444444444444444444),
    .INIT_02(256'h55555533F0CEACACAA8ACCCCCCAAAA88AAAACCCCCCAAAA886666444466666888),
    .INIT_03(256'h444444666666666646444444444422224242222222000022244688CCF1333355),
    .INIT_04(256'hCECEAEAC8A6A6846464444444444444488AAEEEEEECCAA886644444442222222),
    .INIT_05(256'h6846242446686A8A8CACACAC8A8A684846242424222222222222244446688AAC),
    .INIT_06(256'h777757555533111110EEEEEEEEECCCCCCCEEEECECECECEACACACACAAAA8A8A8A),
    .INIT_07(256'h242424224244444466668888AACCEE11111111EECCAA886688AACCEF33335577),
    .INIT_08(256'h44444444444444444444444466668888AAAAAAAA888866664444444444444444),
    .INIT_09(256'h8866666644666666666688886666664444442222222222222222244444444444),
    .INIT_0A(256'h22446688CCEE113333555555553311EECCAC8A8AEECCCCAAAA8888AAAAAAAA8A),
    .INIT_0B(256'hCCAA684444442222222222222244444444444424222222224244444444442222),
    .INIT_0C(256'h222222242446688AACACAECEAEACAC8A88686868666666466688ACEE111111EE),
    .INIT_0D(256'hCEACACACAAAA8A8A8A68462422244648688A8A8CACACAC8A6A68464644242422),
    .INIT_0E(256'h6666AACC11335577777777777755331111EEEE111010EEEEEEEEEE1010F0EEEE),
    .INIT_0F(256'h8866444444444444444444444422224242444464666688AACCEEEEEECCCCAA88),
    .INIT_10(256'h22222242444444444444444444444444444444444444666688AAAACCCCAAAAAA),
    .INIT_11(256'hEECCAAAA88888888888866666666666666666666888666666644444422222222),
    .INIT_12(256'h222222444444444444444668AACCEEF1111133335555353311F0CECCAA8A11EE),
    .INIT_13(256'hAA8888AAEE1111131311EECC8866444422222222222222222222222222222222),
    .INIT_14(256'hAC8C8A68484646442422222224244668688AACACACACAEACAC8A8A8A8AAAAAAA),
    .INIT_15(256'h111110101113131310F0CECEACACAA8A8A886866462422244668686A8A8CACAC),
    .INIT_16(256'h668888AACAAAAA88886688A8CC0F335577999999997755351311EEEEEE111111),
    .INIT_17(256'h666688AACCCCCCCCCCAAAA886644444444444444444444422222224244446666),
    .INIT_18(256'h6666644444422222222222224444444444444444444444444444424244444444),
    .INIT_19(256'h33333311F0CEAC8A1111EEEECCCCAAAA88888888666666666666686668888666),
    .INIT_1A(256'h222222222222222222222222224244446666666688AACCEEF111111111333333),
    .INIT_1B(256'hAEACAC8A8AACCCCEEEEECCCCCCCEF11113333333F1CC8A664444222222222222),
    .INIT_1C(256'h022446686A8A8A8CACACAC8C8A6A6848464624222222242446688A8C8CACACAC),
    .INIT_1D(256'h553311EEEEEEEE101111111111113333353313F0CECEACAC8A8A886868462424),
    .INIT_1E(256'h4222222222424444446666666688888888868688AAEC1133557799BBBB999977),
    .INIT_1F(256'h444444424242444444666688AACCCCEEEEEEEEEECCAA88664444444444444444),
    .INIT_20(256'h6688888888888888666666664444444222222222222244444444444444444444),
    .INIT_21(256'hEEF0111111F1F01113333333333311EECCAA111111EEEECCCCAAAA8888888866),
    .INIT_22(256'hAA886644222222222222222222222222220200000022224244668888888AAACC),
    .INIT_23(256'h222446688A8C8C8CACACACACACACACCEF011111111F1EFF111113335553311EE),
    .INIT_24(256'hACAC8A8A686868462422022446688A8A8CACACACACAC8C8A6A68684624222202),
    .INIT_25(256'h55757799BBBBBB997757333311EECECCEEEE111111333333333355353512F0CE),
    .INIT_26(256'hAA88866664444444444442222222224242446466666666666666666686AAEE31),
    .INIT_27(256'h44444444444444444444444444444242444444666688AACCEE1111111111EECC),
    .INIT_28(256'hEEEECCCCAAAAAA88888888888888AAAA88888866664444444444222222222244),
    .INIT_29(256'h22446688AAAACCCCCECEEEF0F0EEEECECEEE10113333333311EECCAA11111111),
    .INIT_2A(256'h331311113335553313F1CCAA6644222222222222222222220200000000000000),
    .INIT_2B(256'h8C8C8A6A6846242202022224686A8A8C8C8C8CACACACACCEEE11333335353333),
    .INIT_2C(256'h5555553555553513F0EECEACAC8A6868464624020224468A8A8CACACACACACAC),
    .INIT_2D(256'h666666666666A8EC33557777999BBBBB999977553311EECCCCCCCCEE11113355),
    .INIT_2E(256'hAACC11113333333311EECCCCAA88666666666464444242224242444464666666),
    .INIT_2F(256'h4444444422222222224444444444444444444444444444444444444444666688),
    .INIT_30(256'h131110EECCAA111111EEEEEECCCCAAAAAAAAAAAAAAAAAAAAAAAAAAAA88666644),
    .INIT_31(256'h222222020200000000002244668AAACCCECECECECEEEEECECCACAACCEEEE1111),
    .INIT_32(256'hCEF0133555555555575755333333333535331311EEAC88664422222222222222),
    .INIT_33(256'h688AACACACACACACACACAEAC8C8A6846242202002224686A8C8C8CACACACACAC),
    .INIT_34(256'hCCAAAAAACCCC11335599997977555555351310F0CECEAC8A6868462422022224),
    .INIT_35(256'h42424242446464666666666666666688AA0F55779999999BBB997977553313F1),
    .INIT_36(256'h44444444444444666688AACC1133335555333311EECCAAA88866666666666444),
    .INIT_37(256'hAACCCCCCAAAA8888666444444442222222224444444444444444444444444444),
    .INIT_38(256'hACAAAAAAAAAACCCCEEEE1010EECCAAAAEEEEEEEEEEEECCCCAAAAAAAAAAAAAAAA),
    .INIT_39(256'h88664422222222222222222222220222222222222244688AACCCCECECECCCCAC),
    .INIT_3A(256'h686A8C8CACACACACCEEEF113355557777777797777775535553333331311EECC),
    .INIT_3B(256'hAC8A6A68462422022224488AACACAEACAC8C8CACAEAC8C8A6846240200000224),
    .INIT_3C(256'h999999997755353311CEAA888888AACC115599BDDDBB9977553533131010F0CE),
    .INIT_3D(256'hAA886666646666666464644444446464666666666686868666A8CC3175999999),
    .INIT_3E(256'h4444444444444444444444444444444444666688AACC1111335555333311EECC),
    .INIT_3F(256'hCCCCAAAAAAAAAAAAAACCCCCCCCCCCCCCAA886666444444222222222244444444),
    .INIT_40(256'h888AACCCCECCACACAA8A8A8888888888AAAACCCCCCCCCCACACACCCCCEECCCCCC),
    .INIT_41(256'h79775755331311F1CEAA68464422222222222222222222224446666666666666),
    .INIT_42(256'h8A6A4624020000000224686A8C8CACACAECEF013355557777779999999999999),
    .INIT_43(256'h997735331311101310F0CCAC8A68462402020224468AACAEAEAC8C8C8C8C8C8C),
    .INIT_44(256'h866666A8EC33779999999999997757553313EECC8A68666688CC1177BBDDDDBB),
    .INIT_45(256'hEE11333333333311EECCAA886664446464646464646464646666666666668686),
    .INIT_46(256'h444444444444444444666666464646466666666444444444444446666688AACC),
    .INIT_47(256'hAAACCCCEAAAACCCCAAAAAAAAAAAAAAAAAAAAAAAACCCCCCEECCCCAAAA88666644),
    .INIT_48(256'h446688AACCCCCCCCAAAA8AAAACCCCCACAAAA8888886868688888888888AAAAAA),
    .INIT_49(256'h77777999BBBBBBBBBBBBBB997957351311EECC88664444242222222222222222),
    .INIT_4A(256'hACAEAEAC8CACACAC8C8A68482422020002020224488A8CACACACCEF013355777),
    .INIT_4B(256'h464668AA1177DDDDDDBD99553313101013331310CEAC8A68462422020224466A),
    .INIT_4C(256'h64668686868666666686666666A8EC33557799997777777755553311EEAA8866),
    .INIT_4D(256'h444444444444668888AAEEEE1111111111EECCAA888666444444444444444464),
    .INIT_4E(256'hEEEEEECCCCAA8888666666664444446666666666686666666666666666664444),
    .INIT_4F(256'h6666666666888888AAAACCCEEEF1888888888888AAAAAAAAAAAAAAAAAAAACCCC),
    .INIT_50(256'h44444424442222222244668ACC1133333311EECCACAAAAAAAAAA8A8868666666),
    .INIT_51(256'h8CACACCED0F135577979777799BBBDBDDDDDDDDDBDBB9979553311CC8A664444),
    .INIT_52(256'h8A68462424222424466A8CAEACAC8C8C8C8C8A6A46240202000222222224688A),
    .INIT_53(256'h7777553513F1CC8A6644444466AAEE5599BDBDBB77351110F01013333313F0CE),
    .INIT_54(256'h444444444242424242424464668686866666666666646688CC11335577777777),
    .INIT_55(256'hAA888888666666666666444444444444446688AACCCCEEEEEEEEEECCAA886666),
    .INIT_56(256'hAAAAAAAAAA8888AAAACCCCEEEEEECCCCAAAA88888888668888888888AAAAAAAA),
    .INIT_57(256'h8A8A8A8A88686666666666666666668888AACCEEEE11113366666666888888AA),
    .INIT_58(256'hBB99773511CC884644444444444444222222444688CC11335555553311CEACAC),
    .INIT_59(256'h0200002244242446688A8AACCCCEF03357799979777799BDDDDDDDDDDDDDDDBD),
    .INIT_5A(256'h10F0EE103335353313EEAA68242424242446486A8CACAC8C8C8C8A8A6A484624),
    .INIT_5B(256'h4466AAEC1133555755555755553311EEAC88462422224488CC33779999775513),
    .INIT_5C(256'hAACCCCAAAA888866464444444442224242424242424464648686868666666444),
    .INIT_5D(256'hAAAAAAAACCCCCCCCEECECCCCAAAA8888888888666666444444444444666688AA),
    .INIT_5E(256'h333366666666668888AAAAAAAAAA88888888AACCCCEEEEEEEEEEEECCCCAAAAAA),
    .INIT_5F(256'h33555557553311EECCACAA8A8A8A8888686666666666666688AACCEE11113333),
    .INIT_60(256'h99BBDDDDDFDFDFDFDDDDBB99795511CC8A66666666686666444422244466AAEE),
    .INIT_61(256'h8C8C8C8C8C8A68462402000022244646464668888AACCEF03357799B99795777),
    .INIT_62(256'h4466AAEE335557553310F0F0F010335555553513CC68462446464648688A8CAC),
    .INIT_63(256'h42446464868686866444446488AAEE113355555555553313F0CCAA6844222222),
    .INIT_64(256'h6644444444444466666688888866666644444444444442222222222222424242),
    .INIT_65(256'hEF1111111111EEEECCCCCCCCCCCCEEEEEE111110EEEECCCCAAAA888888888888),
    .INIT_66(256'h88AACCEE1033335555555553666666668888AAAAAAAAAAAA8888888888AACCEE),
    .INIT_67(256'h8888664444446688CCF0333555553513F0CEACAA8A8A8A8A8A88888888686688),
    .INIT_68(256'hF03357799B9B7957555779BBBDDDDDDFDFDDDDBDBB99775511EEAA888888AAAA),
    .INIT_69(256'h68464668686A8A8C8CAC8C8C8C8C8C8A68464646466666888A886868688AACCE),
    .INIT_6A(256'h3311EECC8A66442222224466AAEC1033331110F0EEF0F010335577777735F0AC),
    .INIT_6B(256'h2222222222222222424242426464648686866664446466AAEE11333333555555),
    .INIT_6C(256'hEECCCCAAAAAAAAAAAAAA88886644444444444444444444444444444424222222),
    .INIT_6D(256'hAAAA8888888888AACCEEEF11333333331111EEEEEEEEEEEEEE111111331111EE),
    .INIT_6E(256'hAAAAACAAAAAAAA8A88AAAACCEE113355557777555533668888888888AAAAAAAA),
    .INIT_6F(256'h573511EECCAAAAAAACCCAAAA88664446668ACCEE1113331311EECCACACAA8AAA),
    .INIT_70(256'h111111EEAC8A8AAACCF03357799B9B9957331335779BBDDDDDDDDDDDDDBBBB99),
    .INIT_71(256'hF01033557799995733CE8A6868688A8A8C8CACAC8C8CAC8C8C8A8A8A8AACEEF1),
    .INIT_72(256'h88AAEE1133333333353313F1CEAA8866442222224466AACCEE11111010F0EEF0),
    .INIT_73(256'h4422222222222222222222222222222222222242424244646466868686666666),
    .INIT_74(256'hEEEE1111113333331111EECCCCCCCCCCCCCCCCCCAAAA88664444444444444444),
    .INIT_75(256'h8888888888AAAAAAAAAAAAAA888866668888AACCEE1133335555331111EEEEEE),
    .INIT_76(256'hF0EECCACAAAA8A8A8AAAACACCCCECEEECCCCCCCCEEEE11335555777777553311),
    .INIT_77(256'hBBBDDDDDDDBDBB9977553311F1CEACACACCCCCCCCCAA88886688AAACCEEEF0F0),
    .INIT_78(256'h8C8C8CACACEE3357999999997735F0CECCCEF03357999BBB9B77351313357799),
    .INIT_79(256'hAACCEE10111110EEEEEEF010335577999B995713CE8A68686A8A8C8CACAC8CAC),
    .INIT_7A(256'h44446466668686868686A8CCEE11131313333313EFCCACAA6846242202222466),
    .INIT_7B(256'hAA88664644442424222222222222222222222222222222222222222222424444),
    .INIT_7C(256'h33335555333311EFEEEEEEEEEE111111331111EEEECCCCCCCCCCCCCCCCCECCCC),
    .INIT_7D(256'h335555777777553311EE8A8888888AAAAAAACCAAAAAA888888888888AACCEE11),
    .INIT_7E(256'hAA8AAACCCEEEF0F0F0EECECCACACAAAA8A8AAAACCCCEEEEEF0F010EEEE111111),
    .INIT_7F(256'hBBBB99573513335779BBBDBDDDBDBB9979553313F1CECEACACACACCCCCCCCCAA),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_35_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_35_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6
   (p_31_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_31_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_31_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFE00007C0007FFFC000007F807800000000000001F80007C3FC0003FFFF),
    .INITP_01(256'hFFFFFFFFF00007F8403FFFE000000FC00000000000000000000000F8FF8001FF),
    .INITP_02(256'h007FFFFFFFF00001FE7F9FFFF0000001E000000000000000000000003F3FF000),
    .INITP_03(256'hFF003FFF3FFFF800007FFFFFFFFC0000000000000060000000000000000FE7FC),
    .INITP_04(256'hFC7FE00FFF83FFFC00001FEFFFFFFE000000000000001C0000000000000003F9),
    .INITP_05(256'h00FF0FF803FFE03FFE000003E0FFFFFF00000000000000020000000000000001),
    .INITP_06(256'h00007F81FF01FFF007FF000000201FFFFF800000000000000000000000000000),
    .INITP_07(256'h0000003FC03FF0FFFC03FFC000000003FFFF8000000000000000000000000000),
    .INITP_08(256'h03E000001FF00FFE7FFF00FFC0000000003FFFC0000000000000000000000006),
    .INITP_09(256'h0001F8000007F801FFFFFF801FC00000000001F3F00000000000000000000000),
    .INITP_0A(256'h0000007E000001FE007FFFFF8000000000000000007C000000000000E0000000),
    .INITP_0B(256'h000000003F8003807FC01FFFF1C000000000000000000E000000000000FC0000),
    .INITP_0C(256'hC000FC00007F0007FC1FF007FFFC300000000000000000000000000000003F00),
    .INITP_0D(256'h03E0007F80003FC003FF07FC03FFFF80000000000000000000000000000C000F),
    .INITP_0E(256'hF00000007FE0001FF001FFE1FF07FE7FF0000780000000000000000000000F80),
    .INITP_0F(256'h0FFE0000003FE0000FFC00FFFC7FC7FF9FFC0003E0000000000000000000001F),
    .INIT_00(256'h8A6A6A8A8C8C8CAC8C8C8C8CACCE13579BDDDDDDDDDDBB77351310113355799B),
    .INIT_01(256'hAA88664424220202224488CAEE1011111110F0EEEEF013357799BB9B7935F1AC),
    .INIT_02(256'h22222222222242444444444444646686888888A8AACCEE111111111111EECCAA),
    .INIT_03(256'hAAAACCCCCCCCEEEEEECCCCAA8A88664644442222222222222222222222222222),
    .INIT_04(256'h888888888888AACCEE1133335333333311EECCCCCCCCEEEEEE11111110EECCCC),
    .INIT_05(256'hF01113133333333333335555777757553311CECCAAAA88888AAAAAAAAAAAAAAA),
    .INIT_06(256'hACAAACACCCCCCCCCACACCCCCF01133331311F0CECECCCCCCCCACACACACCCCEEE),
    .INIT_07(256'hBB7935333333557799BB9B9B795735557799BBBDBDBDBBBB795733F1CCACAAAA),
    .INIT_08(256'h103577BBBBBB9B7935F0AC8A8A8A8A8A8C8C8A8C8CACD03579BBDDFFFFDFDDDD),
    .INIT_09(256'hEEF1F1F1EEEEEECCAA8A8868664422220202224466AACCEE1111331110F0EEEE),
    .INIT_0A(256'h222222222222222222222222222222222242444444444444668688A8AAAACCCC),
    .INIT_0B(256'hAACCCCCCEEEECCCCAAAAAAAAAAAACCEEEEEEEEEEEECCCCAAAA88664444222222),
    .INIT_0C(256'h888888AAAAAAAAAAAAAA88888888888888AACCEF113333333311EECCCCAAAAAA),
    .INIT_0D(256'hF011F0F0EECECECEEEF01133333555555555555555575555553311EEAA88AAAA),
    .INIT_0E(256'h9B775513CEAA68686888AAAAAAACACCCCCAAAAACCE1135555757553311F0CEEE),
    .INIT_0F(256'h3579BDDFDFDFDFDDBDBB99573533333555779B9B997957577799BBBDBDDDBBBB),
    .INIT_10(256'hCCEE113355553311EEEE103377BBBBBDBD9B7713CE8A8A8A8A8A8C8C8AACACCE),
    .INIT_11(256'h4466668688A8AAAACCCCEEEEEEEECECCACAA8888886846242202020202224688),
    .INIT_12(256'hEEEECCAA88664444222222222222222222222222222222222222224242424244),
    .INIT_13(256'h111111EECCAA888888888888AAAAAAAAAAAA8888888888AACCCCEEEEEEEEEEEE),
    .INIT_14(256'h55553311EECC8A88AA88888888888888888888888888888888888888AACCEF11),
    .INIT_15(256'h57777777573513F0F01113333333331310F0F011133355555757555555555557),
    .INIT_16(256'h557799BBDDDDDDBDBB997735F1CC8A6846466888AAACACAAAAAAAA8A8AAAEE33),
    .INIT_17(256'h8A8A8C8C8C8C8CACD03579BDDFDFDFDFDDDDBB9B773513131333355779797757),
    .INIT_18(256'h44222202000002224468AAEE33779999773310EEEE337799BBBBBDBB7935F0AC),
    .INIT_19(256'h222222424242424242446466868888A8AAAACCCCCCECCCCCAAAA886866666666),
    .INIT_1A(256'h8888AACCCCEEEEEEF01111EEEECCAA8866442222222222222222222222222222),
    .INIT_1B(256'h66666666666688AACCEEEEEEEECCAA8868666666666666888888886666666666),
    .INIT_1C(256'h5555575755555555555555353311CEAA8888AA88886666668888888888888866),
    .INIT_1D(256'hACAAAA8A886888AAEE3357777977775513111113333555555555331313133335),
    .INIT_1E(256'hF0F0121235555757553557799BBDDDDDBDBB995733EFAC886644466688AAACCC),
    .INIT_1F(256'h5599BBBBBBBB9955F0CE8C8C8C8C8A8C8CAE1379BDDFDFDFDDDDDDBB9B793513),
    .INIT_20(256'hAAAA886666444446464422020200000000224466AAEE3399BBBB995510EEEE11),
    .INIT_21(256'h224242424444444444424242424242424242424464668688888888AAAAAAAACC),
    .INIT_22(256'h66666666666666446666666688AAAACCEEEEF0111111EEEECCAA664442222222),
    .INIT_23(256'h666666666666666666666666666666666688AACCCCCCCCAA8888666644466666),
    .INIT_24(256'h5777775755353533333555555757555555555535333311EECCAAAA8A88886666),
    .INIT_25(256'h6846444446688AACCCCCCCAC8A886666668ACE1355777777573311F111133355),
    .INIT_26(256'hDFFFDFDDBDBB795713F0D0F0F0F21213333535357799BBBDBDBDBB995713CEAA),
    .INIT_27(256'h77BBDDBB9955EECCCC0E33759799BB99795513CEACAC8C8A8A8AACCE3579BDDF),
    .INIT_28(256'h8888888888888888AAAAAA88666644444444442422000200000202244488AC11),
    .INIT_29(256'hEEEECCAA88664442444444444444446444444444444444444444444464646666),
    .INIT_2A(256'h88888866666646666666666666666666666666666666668888AACCCCEEF011EE),
    .INIT_2B(256'hF0EECCACACAC666666444444444444444466666666444444444466668888AAAA),
    .INIT_2C(256'h553533F1CECCEEF0133557777757575755553535355555555555353333331311),
    .INIT_2D(256'hBBBBBBBB997733EE8A66442224446688AAAACCCCCCAC886846444688CCF03355),
    .INIT_2E(256'hAC8C8A8CACF0579BDDDFDFDFDFDDBDBB795512CECECED0F0F0F010133555779B),
    .INIT_2F(256'h00000002224488CC115599BBBB997531ECAAAAEC103355779999775513F0CEAC),
    .INIT_30(256'h6464646464646666868888888888888888888888888866464424244424222200),
    .INIT_31(256'h66666688AAAACCEEEEEEEEEECCAA886644444444446464646464646464646464),
    .INIT_32(256'h4444444444666688888888886666666666666666666666668888666666666666),
    .INIT_33(256'h353535333313131111EECECCCCCCCCCC66444444444444444444444444444444),
    .INIT_34(256'h6866442244668AACEEF011F0CEACAA8AAACCEE11355557575577775755353535),
    .INIT_35(256'hCECED0F0F01335579999BBBB99997735F1AA66442222222466888AAAAACCAAAA),
    .INIT_36(256'h3355779977553313F0CECEACACACF03379BBDDDFDFDFDDDDBDBB7935F0CECECE),
    .INIT_37(256'h664444444444442202020202022246AAEE33779BBBBB997531ECAAA888CAEC0E),
    .INIT_38(256'h866664646464646464646464646666868688A8AAAAAA88888866666666888886),
    .INIT_39(256'h88AAAAAAAA8888666666444444666688AACCCEEECCCCAAAA8866666466666666),
    .INIT_3A(256'h4422222222444444444444444444666666666666666666666666666666666688),
    .INIT_3B(256'h3555555757555535333333333333131111F0CECCACACACCCCCCE444444444444),
    .INIT_3C(256'h22444466888AAAAA886644242222224466688AAAAAAA886866668888AACE1133),
    .INIT_3D(256'hBDBDBD9B7935F0CECECECED0F0F0121335577779997977573311AC6844222222),
    .INIT_3E(256'h7733EECA868686A8CAEC10557779775555553310CECECEF03577BBBDDDDDDDDD),
    .INIT_3F(256'hCCAA886666666688886666444444444646442424222222448AF177BBDDDDDDBB),
    .INIT_40(256'hAA8866666666868888888886666464444444444444646464668688AAEE1111EE),
    .INIT_41(256'h66666646666666668888AACCCCCCCCCCAA886666444444444666888AAACCACAA),
    .INIT_42(256'hAACCCCCE44444444444222222222222222444444444444446666666666666666),
    .INIT_43(256'h4444444444466688CCEE11133355553533131313111333331311EECEACAA8AAA),
    .INIT_44(256'h3333F1CC88442222222222224466666868664644222200022222222444466666),
    .INIT_45(256'hF035799BBDBDBBBBBBBB9B9B99793512CECEAECECED0F0F21212353555555555),
    .INIT_46(256'h2466CC55BBDDFFFFDD99550ECCA886646488AACC1035777757577779773510EE),
    .INIT_47(256'h44646688AAEF5577775511CC8A88888686866666444444666888684646444424),
    .INIT_48(256'h44224444466688888A88888866668888AAAAAAAAAAA888666444424242424444),
    .INIT_49(256'h446666668888886666666666664666666688AACCCCEEEEEEEEEECCAA88666644),
    .INIT_4A(256'h13331311EECCAA888888AACCCCCC444444444242222222222222222244444444),
    .INIT_4B(256'h00000000020222222224242424242444446688AACCEEF11113131311F0F01111),
    .INIT_4C(256'hF2F0F010121011111111EEEECC88664422222222222222444444444422222200),
    .INIT_4D(256'h5777577799BB99571310337799BBBB9B997777777777553512CECEACAECED0F0),
    .INIT_4E(256'h66888AAA8868666666464468CE77DDFFFFFFDD9933EECA8664646488AACCEE33),
    .INIT_4F(256'h8866644442424244444444646688CC3397BB997733EECCAA8888888666644444),
    .INIT_50(256'h111111EEEECCAA8866444422224444668888888A88888888A8AACCCCCCCCCCAA),
    .INIT_51(256'h22222222444444444444666688888888888888886666666666666688AACCEEEE),
    .INIT_52(256'hCCEEEEEEEECECECEEE1113131311CEAC88888888AAAACCCC4444444444444444),
    .INIT_53(256'h22222222222202000000000000000000000222222222222222222244446688AA),
    .INIT_54(256'h13F0CECEACACCECED0D0D0D0CECECECECCCCCCCCACAA88664422222222222222),
    .INIT_55(256'hAA8664646688AACCCE1055577799BBBB995733115579BBBB9977353333353535),
    .INIT_56(256'hCCCCAAAAA8886666446688AAACCCACAA8A8A88664668EE77DDFFFFDFBD9933EE),
    .INIT_57(256'hAAAACCCCEEEEECECCCCCAA886644424242444444666688AAEF337999997733EE),
    .INIT_58(256'h6666666688AACCEE111111111111EECCAA88664444224444446688AAAACCCCCC),
    .INIT_59(256'hAACC4444444444444444444444444444444466666688AAAAAAAAAAAAAA888866),
    .INIT_5A(256'h222222222222244466688AAAACCCCCACACACCEF0111111EECCAA88686688AAAA),
    .INIT_5B(256'h6644222222202222202220200000000000000000000000000000000222222222),
    .INIT_5C(256'hBBBB7735F1EEF0133313F0EECEACACAEAECEAEAEAEAEACACACAA8A8888888868),
    .INIT_5D(256'hF179DDFFFFDFDD9B5510CA8666668688AAACCE115599BBBBBB99775513115599),
    .INIT_5E(256'hCCEF33555555333311EEECCCCCCCAA88666688AACCF1111311F0EECCAA684688),
    .INIT_5F(256'h44446688AACCCCEEEEEEEEEEEEEEEEEEEEEECCCCAA88664444444444444488AA),
    .INIT_60(256'hCCCCEEEECCCCCCAA88886666666688AACCEE111133331111EECCAA8866444444),
    .INIT_61(256'hEECEAC8A88668888AAAAAAAA44444444646466666666666666666666888888AA),
    .INIT_62(256'h000000000002222222222222222222222224446666888AAAACAA8AAACCCEEEEE),
    .INIT_63(256'hACACACACAA886866664644242222222020202020202000000000000000000000),
    .INIT_64(256'hBDBB9977553333335599BBBB7935F0EEEEF01310F0CEACACACACACACACACACAC),
    .INIT_65(256'h999977775511CC684688F179DDFFFFDFDDBD7733CCA88688A8AAAAACF03579BB),
    .INIT_66(256'h4644444444446688EE11557777775511EEEEEEEEEEECCCCCAA8888A8CC115577),
    .INIT_67(256'h1111EECCAA8866664444666688AACCEE111111111111F1EFEEEEEECECCAC8A68),
    .INIT_68(256'h88888888AAAAAACCCCCCEEEE1010EEEECCCCAA888866666688AACCEE11113311),
    .INIT_69(256'h8A8AAA8A8A8AAACCCECECCACAA8868668888AAAAAACC66666666868888888888),
    .INIT_6A(256'h0000000000000000000000000000002222222222222222222222222244446668),
    .INIT_6B(256'hACACACACACACACACACACACCCCEEEEEAC88664444242222222200002000202220),
    .INIT_6C(256'hA8AACCCCCEEE1357BBDDBD9957331013323375B9BBBB9B5733F0CECEF0F0CEAC),
    .INIT_6D(256'hCCCCCAAAAACC3399BBDDDDDDDDDD9955EE886688F179DDFFDFDDDDBD9933ECAA),
    .INIT_6E(256'h11F1EEEECCCCCCAA886646444444446688EE5599BBBBBB995511CCCCCCECECEC),
    .INIT_6F(256'h668888AACCEE1111111111EECCCCAA888866666688AACCEEF111133333331111),
    .INIT_70(256'h8686888888A8AAAAAAAAAAAACCCCCCCCCCEEEEEE1111111111EEEECCCCAA8888),
    .INIT_71(256'h222222222222444666688A8A8A8A8A8A8AACCCCCACAA88686668888AAAAAACAA),
    .INIT_72(256'h2222000000002222222222220000000000000000000000000022222222222222),
    .INIT_73(256'hBB9B7713CEACACACACAC8A8CACACACACACACACCCEE10325452EC886644242222),
    .INIT_74(256'hBBDDDFDFDDBB7733EECCCACCEE1111135599BDDDBD7913F0EE10527597B9DBDB),
    .INIT_75(256'hDDBB5711CCCCCCCCCCCCCCCACACAEE3399DBFFFFFFFFFFFDDB7713AC888ACF57),
    .INIT_76(256'hEE11333333333333131111EEEECCCCACAAAA8888886644446688EE55BBDDDFFF),
    .INIT_77(256'h11111111EEEECCAAAA88888888AACCEEEEEEF1EEEEEECCCCACAA88888888AACC),
    .INIT_78(256'h88686668888AAAAAAAAA88A8A8A8AACACCCCCCCCCCEEEEEEEEEEEE1111111111),
    .INIT_79(256'h00000022222222222222222222222222444666688A8A8A8A8A8A8AAAAAAAAA8A),
    .INIT_7A(256'h779752EC88462424222200000000002222444444442222000000000000000000),
    .INIT_7B(256'h13CECE1052749597B9B9BBBB9933EEAA8AAAAA8A8A8AAAAAACAAAACCCCEE3052),
    .INIT_7C(256'hFFFDFDB97511CCACCF35BBDDDDDDBD995511EEEEEE103355555779BBDDDD9B57),
    .INIT_7D(256'h886688EE55BBDDFFFFFFDDBB7711CCCACACACCCCCACACAEC3197DBDDFFFFFDFF),
    .INIT_7E(256'hCECECCCCAAAAAAACCCEE113355555555553311F1EECCCCAA888888AACCEEEEAA),
    .INIT_7F(256'hEEEEEEEE111111111111111111110EEECCCCAA88888888AACCEEEEEEEEEECECE),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_31_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_31_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7
   (p_27_out,
    clka,
    addra);
  output [8:0]p_27_out;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [3:3]ena_array;
  wire [8:0]p_27_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h002FFF0000103FF803CFFF007FFFBFFFFFC3FF8007F800000000000000000000),
    .INITP_01(256'h00003FFB80001FFFFC01FFFFC03FFFFFFFFFF0FFFFFFFC000000000000000000),
    .INITP_02(256'h00000006000000FFFFFC00FFFFF03FFFFFFFFFFC3FFFFFFF0000000000000000),
    .INITP_03(256'h00000000000000003FFFFE003FFFF83FFFFFFFFFFE0FFFFFFFC0000000000000),
    .INITP_04(256'h0000000000000000001FFFFF001FFFFE3FFFFFFFFFFF83FFFFFFE00000000000),
    .INITP_05(256'h0000000000000000000007FFFF803FFFFFFFFFFFFFFFFFE0FFFFFFFC00000000),
    .INITP_06(256'h000000000000000000000001FFF8003FFFFFFFFFFFFFFFFFF83FFFFFFFFFC000),
    .INITP_07(256'hFFC000000000000000000000007FFC000FE3FFFFFFFFFFFFFFFE0FFFFFFFFFFC),
    .INITP_08(256'hFFFFFC00000000000000000000000FFE0007F87FFFFFFFFFFFFFFF83FFFFFFFF),
    .INITP_09(256'hFFFFFFFFC00000000000000000000003FF0001FC0FFFFFFFFFFFFAFFF0FFFFFF),
    .INITP_0A(256'hFFFFFFFFFFF8000000000000000007FF00FFC0001803FFFFFFFFFFFE3FFC3FFF),
    .INITP_0B(256'hFFFFFFFFFFFFFE000000000000000003FFC03FE00000007FFFFFFFFFFFCFFFBF),
    .INITP_0C(256'hFFFFFFFFFFFFFFFF800000000000000001FFF80FF80000000701FFFFC007FFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFF00000000000000000FFFE03FC000001E0003FFF0001FF),
    .INITP_0E(256'h00FFFFFFFFFFF3FFFFFFF800000000000001E03FFF00FE000000FC000FFF0000),
    .INITP_0F(256'hE000FFFFFFFFFFFDFFFFFFFF00000000000000FC1FFFC03F8000007F8003FFC0),
    .INIT_00(256'h8A8A8A8A8A8A8A8A8A8868686868888AAAAAAAAAAAAAAAAACACCCCCCCCECEEEE),
    .INIT_01(256'h2202000000000000000000002222222242222222222222222222444666888AAA),
    .INIT_02(256'hCACCCCCCEC0C0E307497B99710AA664422220202020000000222446666664444),
    .INIT_03(256'h557779799BBBDDBD9B57F0CCCCEE5274729295B7B9B9B9730EEACACACACACACA),
    .INIT_04(256'hEC1075BBDDFDFDFDDBFBFDFBFDDBB97531EE115599DDDDBD9B77351111103133),
    .INIT_05(256'h88886688AAEF33777733EFEE1155BBDDFFFFDFDDDDBB5511CCAAAAAAAACACACA),
    .INIT_06(256'h88AACCEEEEEEEEEEEEEEEF11EFEEEEEEEEEE1111335555555555333311EECCAA),
    .INIT_07(256'hCCCCCCCCECEEEEEEEEEE10EE111111111111111111111111EEEECCCCAA888888),
    .INIT_08(256'h2222222244466888AAACACAA8A8A8A8A8A8A886868666868888A8A8A8A8ACCCC),
    .INIT_09(256'h0000224466666666664424220000000000000000000022222222222222222222),
    .INIT_0A(256'hB592502E2C2C2C2C0C2E2E2E2E2E2E50507295B99975EE884424222222220000),
    .INIT_0B(256'hBB997755333333335355779999999BBBBDBB7935EEACAAEC307272727292B5B5),
    .INIT_0C(256'h5511CCA8A8A8AACACCEE305597DBDBDBDBDBDBDBDBDBDBDBD9B97553337599BB),
    .INIT_0D(256'h555555553311EECCAA8866444688EE5599BBBB997755779BDDDDDDDDDDDDBB99),
    .INIT_0E(256'h0EEEEEEECCAAA8888888AACCCCEEEEEEEEEEEF11111313111111111111333555),
    .INIT_0F(256'h686888888A888888CCCCCCCCCCEEEEEEEEEE1011111111111111111111F11010),
    .INIT_10(256'h222222222222222222222222222224446688AAACACAC8A8A8888888888686866),
    .INIT_11(256'hAC66242222220000000000002244666868666644442200000000000000000022),
    .INIT_12(256'hAACC30729270709092929290906E6E6E6E6E70707070707070707294B7B99732),
    .INIT_13(256'hD9D9D9D9B7959597B9BB9977575555557555555577999B9999BBBB9B7713CEAA),
    .INIT_14(256'hDDDDDDDDDDDDDDDDBB99550FAA8888A8CAEE305397B9DBDBFBDBDBDBD9D9D9D9),
    .INIT_15(256'h3333333333333333355555353313F1EEAA886666444444881179DDDDDDDDBBBB),
    .INIT_16(256'hEEEEEEEEEEEEEEEEEEEEEEEECCCCCCAAAA888888AACCEEEE1111111111333333),
    .INIT_17(256'h8A8A68686868686868686868888888686868CCECCCCCCCEEEEEEEEEEEE1010EE),
    .INIT_18(256'h00000000000000002222222222222222222222222222222224446688AAACACAC),
    .INIT_19(256'h90909092B2B4B7B977108A462422222222220000000222446688888866664422),
    .INIT_1A(256'h9999999B9B7955F0CCAAAACC0E729492908E909090908E6E6E6E6E7070909090),
    .INIT_1B(256'hDBFBFBFBD9D9D9D7D7D7D7D6D7D7B7B7B5B7B9BB999977777777777555557799),
    .INIT_1C(256'h88CC55BBDDDDDDDDDDDDDDDDDDDDBBBBBBBBBB9933EEA888CAEE305397B9DBDB),
    .INIT_1D(256'hEEEE111133333333555555333333333333333333333311EFCCAA886644444444),
    .INIT_1E(256'hCCCCCCEEEEEEEEEEEEEEEEEECCCCCCCCCCCCCCCCCCCCCCCCAAAAAA888888AACC),
    .INIT_1F(256'h222222446688AAACACAC8A8868666666666868688888888888686868EEEECCCC),
    .INIT_20(256'h2244666888886644222200000000000002222222222222222222222222222222),
    .INIT_21(256'h8E6E6E6E6E6E7070709090909092B4B7B7B775EE884646464646444422222222),
    .INIT_22(256'h9999999999555555779999799999997735EEACAAAACC0E739592909090909090),
    .INIT_23(256'hAACC115597B9DBDBFBFBDBFBF9F9D9D7D7D6D6D6D4B4B4B4B4B4B4D7B9B9B9B9),
    .INIT_24(256'hEFCCAA886644466688AACC337799BBBBBBDDDDDDDDDDDDDDDDBDBBBB9B7733EE),
    .INIT_25(256'hAAAAAAAAAA8888AACACCEE0F1133333333555555555533333333333333333311),
    .INIT_26(256'h888888686868CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACAAAAAAAA8AAAAAAAAA),
    .INIT_27(256'h222222222222222222222222224446688AAAACAC8A8866666666686868888888),
    .INIT_28(256'hACCCCCCECCCCAA8A684644446666666666442200000000000002222222222222),
    .INIT_29(256'h105595B4B2B0909090908E6E6E6E707070706E7090909092B4B7B7B77510CCAA),
    .INIT_2A(256'hB2B2B2B2B2B4B5B7D9DBBBBBBB9979555555999999999999795733F0ACAA88CC),
    .INIT_2B(256'hDDDDDDDDDDBBBB995531113177B9DBDBFBFBFBFBD9D9D7D7D7D6D4D4D4B4B2B2),
    .INIT_2C(256'h333311111111111111EECCAA88666666AAEE1133557799777777799BBDDDDFDF),
    .INIT_2D(256'hAAAAAAAA888888888888AAAAAAAAAA8888AACCCCEE1133333355555577775555),
    .INIT_2E(256'h6666666888888A8A8A8A8A8A8A886868CCCCCCAAAAAAAACCCCCCCCCCCCCCAAAA),
    .INIT_2F(256'h0000022222222222222222222222222222222222222222244466888A8A8A8888),
    .INIT_30(256'h909294B5B7B7975533333557577757575533F1CC886646466644442222000000),
    .INIT_31(256'h9977775733F0CC8A88AC105597B5B2B292909090707070707070707070707090),
    .INIT_32(256'hD7D4B4B4B4B2B2B2B0B090909090909092B4B7D9B99997775755335577999999),
    .INIT_33(256'h993311115599DDDDDDDFDFDDDDDDDDDDBBBB99777797BBDBFDFBFBFBD9D9D9D7),
    .INIT_34(256'h33335355557777775555331111EEEEEEEEEEEECCAA88666666AA115799BBBBBB),
    .INIT_35(256'hAAAACCCCCCCCAAAAAAAAAAAA8A888888888888888AAAAAAAAAAAAAAACCECEF11),
    .INIT_36(256'h22224446668888886866666668888A8AAAAAAAAA8A8A8A8A8868CCCCAAAAAAAA),
    .INIT_37(256'h8866464424222200000000022222222222222222222222222222222222222222),
    .INIT_38(256'h7070707070707072929292929495B7B7979797999B9BBDBDBDBDBB997735F1AA),
    .INIT_39(256'h555555333355779777777777775533F0AC8A88AC105597B5B492929292927070),
    .INIT_3A(256'hDDFDDBDBD9D9D9D7D7B4B4B4B2B2B2909090908E8E8E6E6E6E6E8E9092B59775),
    .INIT_3B(256'h66668AEF57BBDDDDDDBB55EEAAAA1199DDDDFFDFDFDDDDDDDDDDDDDDBBBB99BB),
    .INIT_3C(256'hAAAAAAAAAAAACCCCEE11113355555575775555333311EECCCCCCCCACAA888866),
    .INIT_3D(256'h8A8A8A88CCAAAAAAAA8AAAAAAACCCCCCAAAAAAAA8A8AAA8A888888888888AAAA),
    .INIT_3E(256'h2222222222222222222222224444666666666666668888AAACACACAAAAAAAA8A),
    .INIT_3F(256'hBDDDDDDDDDDDBD9B7713CEAA8866442222020222222222222222222222222222),
    .INIT_40(256'h97B7B4B4B49292927070707070707272929292929494959597B7B9B9BBBBBBBD),
    .INIT_41(256'h6C6C4C6C6C6C6E707250301111111133557777777777775733F0AC8A88CC1075),
    .INIT_42(256'hDDDDDDDDDDDDDDBBBBDDDDFDDBD9D9B7B6B4B4B2B2B29090908E6E6E6E6E6C6C),
    .INIT_43(256'hCCCCAAAAAA88886666444666AA1199DDDDDDBB7711AA6666CC5599DDFFDFDDDD),
    .INIT_44(256'hAAAAAAAAAAAAAAAAAACCCCCCCAAAAAAAAACCEEEF1133335555555555553311EE),
    .INIT_45(256'hAACCCCCCCCACAAAAAAAA8A8A8A8AAAAAAAAA888888AAAACCCCCCAAAAAAAA8AAA),
    .INIT_46(256'h2222222222222222222222222222222222222222222224444446466666668888),
    .INIT_47(256'hB7B7B7B9D9DBBBBBBBBBBBBDBDBDBDBDBDBDBB995735F1CC6644222222222222),
    .INIT_48(256'h99773511CCAA8ACC3277B7B7B7B7B595949272705050727272939595B5B59597),
    .INIT_49(256'h706E6E6E6C4C4C4C4C4A4A4A4A4A4A4A4C4E4E2E0CEC0EEE0E31557777779999),
    .INIT_4A(256'h224488EF55BBDDDDDDDDDDDDDDDDDDDDBDBBBBDDDDDBDBD9B7B6B4B4B2929090),
    .INIT_4B(256'h3355555555533311EFEECCAA888888666666444444448811779999775511AA66),
    .INIT_4C(256'hACCCCCCCAAAAAAAAAAACCCEEEEEEEEEEEEEEEEEEEEEECCCCAAAAAAAACCEE1131),
    .INIT_4D(256'h444444464666666688AACCCCEECECCCCAAAAAAAAAAAAAAAACCACAAAA8A88AAAA),
    .INIT_4E(256'h7733CC6844222222222222222222222222222222222222222222222222222222),
    .INIT_4F(256'h737595959595B5B5B7B7B7B7B7B9D9DBDBBBBBBBBDBDBDBDBDBDBDDDDDDDBBBB),
    .INIT_50(256'hEAEC0E3175999999B9BBBB997735EEACAAEE54B7B9B7B7B7B7B5959572505052),
    .INIT_51(256'hD9B7B7B4929290906E6E6E4C4C4A4A2A2A2A2A282828282828282A4C2C2C0CEA),
    .INIT_52(256'h66CCF11111EECC886644224466AA117799BBBDBB99BBBBBBBDBB9999BBDDDDDB),
    .INIT_53(256'hEECCAAAAAAAACCEE11333355555533333311EECCAA8888666666444444444444),
    .INIT_54(256'hACACCCCCAAAAAA8AAAAACCCCCCCCACAAAAAACCCEEF1113331313111111111111),
    .INIT_55(256'h24222222222222222222444444464646666688AACCEEEECECCCCAAAAAAAAAAAA),
    .INIT_56(256'hDDDDBDBDBDDDDDDDDDDDBD9933AC662422222222222222222222222222444444),
    .INIT_57(256'hB7B7B7B7979573527375959797B7979595B5B7B7B7B7B7B9D9D9DBDBDBDDDDDD),
    .INIT_58(256'h06060606282A2C2C0C0AEAEC0E5397B9BBBBDBDDDDDDBB7733F00E5297D9D9D7),
    .INIT_59(256'h77777757555599DBDBDBD9B7B4929290906E6C4C4C2A2A282808282808060606),
    .INIT_5A(256'h666666444444442424444466888888664444444444446688AA11557799775555),
    .INIT_5B(256'h55555555553533333311EFEECCAAAAAACCEE113355555555333311EFCECCAA88),
    .INIT_5C(256'hEECCCCACAAAAAAAAAAACCCCCCCCCAAAAAAAAAACCCCCCCCCCAAAAAACCCCEF1333),
    .INIT_5D(256'h22222222244444444444444422222222222222444444466666666688AACCCCEE),
    .INIT_5E(256'hD7D9D9D9DBDBDDDDFFFFDFDDDDDDDDBDBDDDDDDFDDBB57EE8844242444442222),
    .INIT_5F(256'hDDBB79555597B9D9D9D7B7B7B7B9B79775737595979797979797B7B7B7D7D7D7),
    .INIT_60(256'h0606E6E4E4E4E4E4E4E4E4E4E406282A4C4E4E2E2C2E507397B9BBBBDDDDFDDD),
    .INIT_61(256'hAAAAAAAAEE111111EEEEEFEFEFEFEF1177BBDBDBD9B7B49290706E4C4A2A2808),
    .INIT_62(256'h5555331311EECCAA88686646444444242222222222244444442244446688AACC),
    .INIT_63(256'hCCCCCCACCCCCEF1133557777777777775555333311EEAAAA88AACCEE11333555),
    .INIT_64(256'h666666668888AACCCEEECCCCCCAAAAAAAAAAAAACCCCCCCCCCCACCCCCCCCCEECC),
    .INIT_65(256'h79F1884424444444442222222222444444444444444424222222222222444466),
    .INIT_66(256'h97979797B7B7B7D7D7D7D9D9B9B9DBDBDDFDFFFFFFFFFFDFDDBBBBBBDDDDDDBD),
    .INIT_67(256'h72959597B9B9DBDBDDDBDBDBBBB9B9B9D9D9D7B7B7B7B9B9B997957597979797),
    .INIT_68(256'h9492706E4C2A0808E6E6C4C4C4C2C2C2C2C2C2C4E4E4E6082A4C6E7070707070),
    .INIT_69(256'h222222224466CC11555533EFAA8888AACAAA888888888888AAEE55B9DBDBD9B7),
    .INIT_6A(256'hAA8888AACCEE1133335555553311EECCAA886866464444442222222222222222),
    .INIT_6B(256'hCCCCCCCCCCEEEEEEEEEECCCCCCCCCCEE113355777777999979775755333311EC),
    .INIT_6C(256'h44444444442444446666888888AAAAAACCCCCCCCCCAAAAAAAAAAAAAAAAAAAACC),
    .INIT_6D(256'hFFDFDDBB99999BBBBDBD79118844442444222422222222224444444444444444),
    .INIT_6E(256'h979999979797979797533133537597B9B9D9D9D9D9D9B9B9D9DBDBFDFDFFFFFF),
    .INIT_6F(256'h082A4C6E6E90909090929292B4B4B5B5B7D7D7D9D9D9D9D9D9D9D9D9D9B9B9B7),
    .INIT_70(256'h446688CC3399DBDBDBB79492704E4A08E6C4A4A2828282808082A2A2C2C4E4E6),
    .INIT_71(256'h442222222222222222222222444488EE3399BBBB9935CC886666666666666666),
    .INIT_72(256'h9999997755553311EFCCAA8888A8CCEE11333333333313F1CECC8A8866664444),
    .INIT_73(256'hAAAAAAAAAAAAAAAAAAAACCCCCCEEEE11111111EFEECECCCCEEEF113355777799),
    .INIT_74(256'h22222222444444444466666666666644464666888AAAAACCCCCCCCCCCCCCAAAA),
    .INIT_75(256'hB9B9D9DBDBDDDDFDFFFFDFDFDD9B7977799BBBBB77F188464424242244222222),
    .INIT_76(256'hB5B7D9D9D9D9D9B9977553557597979797975510ECEE317599B9BBDBDBDBDBD9),
    .INIT_77(256'h60608282A2C4C4E608082A4C6C8E90909090909090B2B2B2B2B4B4B4B4B4B4B5),
    .INIT_78(256'h11AA6664646464444444444466A80F77BBDBDBB9B794704E2A08C4A282806060),
    .INIT_79(256'h11EECCAA8866464444442222222222222222224444446688CC3399BDDDDDBB77),
    .INIT_7A(256'hEEEEEF111133557777779999997755553311EEAA88666688AAEE0F1133333311),
    .INIT_7B(256'hCCCCCCCCCCCCAAAAAAAAAAAAAAAAAAAA88888888CCCCEEEE111111111111EFEE),
    .INIT_7C(256'hCC8A88664424242222222222222244444666668888888A8888686666688AAAAC),
    .INIT_7D(256'h5397B9BBDBDBDBDBDBDBDBD9D9DBDBDBDBDDDDDFDFDFDD9B775777799B9B7713),
    .INIT_7E(256'hB2B2B2B2B2B2B292929292B5B7D9D9DBDBB9975510305397979797975310EE0E),
    .INIT_7F(256'h704C28E6C482806082828482A4C4C6E608282A4A4C6C6E8E8E8E909090909090),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_27_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_27_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h1000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[14]),
        .I1(addra[15]),
        .I2(addra[13]),
        .I3(addra[12]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8
   (p_23_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_23_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_23_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h1FF801FFFFFFFFFFFFFFFFFFFFF00000000000007F8FFFE007C000003FE0007F),
    .INITP_01(256'h0003FE0FFFFFFFFFFFFFFFFFFFFFFF0000000000001FFFFFF00000000007F000),
    .INITP_02(256'h3C0000FF1FFFFFFFFFFFFFFFFFFFFFFFC0000000000007FFFFF80000000001F8),
    .INITP_03(256'h000400003FFFFFFFFFFFFFFFFFFFFFFFFFF8000000000001FFFFFC0000000000),
    .INITP_04(256'h00000000F00FFFFFFFFFFFFFFFFFFFFFFFFFFF000000000C003FFFFF00000000),
    .INITP_05(256'h00000000003E1FFFFFFFFFFFFFFFFFFFFFFFFFFFC000000038000FFFFFC00000),
    .INITP_06(256'h0000000700000FFFFFFFFFFFFFFFFFFFFFFFFCFFFFF8000000380001FFFFE000),
    .INITP_07(256'hFE00000001C00003FFFFFFFFFFFFFFFFFFFFFFFF1FFFFF0000003E000007FFF8),
    .INITP_08(256'h7FFFC0000000600000FFFFFFFFFFFFFFFFFFCFFFFFC21FEFC000001F000001FF),
    .INITP_09(256'h031FFFFE0000000000001FFFFFFFFFFFFFFFFFF3FFFFE007F9FFE0000F800002),
    .INITP_0A(256'h03C3C03FFFF000000000000FFFFFFFFFFFFFFFFFFE67FFF800FE3FFF0003C002),
    .INITP_0B(256'h3F00F8701FFFFF000000000003FFFFFFFFFFFFFFFFFF83FFFE003FDFFFF800F8),
    .INITP_0C(256'hFF9FF07F000FFFFFE00000000000FFFFFFFFFFFFFFFFFFE1FFFF8007F7FFFFFC),
    .INITP_0D(256'hFFFFFFFF3FC007FFFFFE00000000007FFFFFFFFFFFFFFFFFFFFFFFC001FFFFFF),
    .INITP_0E(256'hFFFFFFFFFFEFF003FFFFFFE0000000003FFFFFFFFFFFFFFFFFFFFFFFF0007FFF),
    .INITP_0F(256'h03FFFFFFFFFFF3FC01FFFFFFF8000000000FFFFFFFFFFFFFFFFFFFFFFFFC001F),
    .INIT_00(256'h88AA1177BBDDDDDDBB7711A8666464646464644444444488CC5399DBDBD9B794),
    .INIT_01(256'h6688AACCEE1111111111EECCAA88664444444424222222222222224444446666),
    .INIT_02(256'hEE1133333333111111EFEFEF111133555577777777777775553311EECCA88666),
    .INIT_03(256'hAAAA8A886868888AAAACCCCCCCCCACAAAAAAAAAAACCCCCCCAAAA88888888CCCC),
    .INIT_04(256'hDDBB795757799B9B99573311EEAA664422222222222222224446668888AAAAAA),
    .INIT_05(256'h7597B79797977755557599BBBBDBDDDDDDDBDBDBDBDBBBDBBBB99999BBBDDDDD),
    .INIT_06(256'h6E6E6E6E6E6E8E909090B0B2B2B2B2B2B2B292909294B7D9D9DBDBBB99753353),
    .INIT_07(256'h6466AA1177B9DBDBD9B4704C08E4A2A2A2A4C4C6E8E8E808082A2A4C4C4C6E6E),
    .INIT_08(256'h2222224244446666666688AAEE5599BBDDBB9953EC8866646464646464444444),
    .INIT_09(256'h55553311EECCAA866644646688AACCEEEEEFEEEECCAA88664644442422222222),
    .INIT_0A(256'hCCCCCCAA88886666CCCCEE113333333333111111111133335555777777777777),
    .INIT_0B(256'h222244666888AAAAACACACAC8A8A6868888AAAACACACACAAAAAAAAAAAACCCCCC),
    .INIT_0C(256'hDBB9B99777577799BBDDDDDDBB9979999BBBBB9B99795713AA66222222020022),
    .INIT_0D(256'hB7D9D9DBDBBBBB99979797B9B9B9B9B999999999BBBBDBDDDDDDDDDDDBDBDBDB),
    .INIT_0E(256'h2C2C4C4C4C4C6E6E6E6E6E6C6C6E6E6E8E8E909090B0B2B2B2B2B2B090909092),
    .INIT_0F(256'h646464666664646444446466AAEE55B9DBDBD9B5702C08E4C4C4E6E80A2C2C2C),
    .INIT_10(256'h666644242222222222222222244444666666888888AACC115599BB9953EEAA66),
    .INIT_11(256'h55555577777777775555333311EFCCAA8866644444646688AACCCCCCCCCCAA88),
    .INIT_12(256'h8A8AAAAAACCCCCCEEEEEEEEECCAA88886666CCCCEE1133333333331111111133),
    .INIT_13(256'hBB77F188442202000022222244668888AAAAACACACAC8A88686868888AAAAA8A),
    .INIT_14(256'hDDDDDDDDDDDDDBDBDBDBDBB99975333355779BBBDDDDBDBBBBBBBBBDDDDDDDBD),
    .INIT_15(256'h9090B0B0B090908E9092B5D7D9DBDBBBBBBBBBB9BBB9B997B9B9B9B9BBBBBBDD),
    .INIT_16(256'hE8E6E6082A4C4E6E706E4E4E4E4C4E6E6E6E6E6E6C6C6C6C6E6E8E8E90909090),
    .INIT_17(256'hAAEE33757533EE886664646486A8888664444444446688CC3397BBDBD995702A),
    .INIT_18(256'h64668888AAAAAAAA8866664444222222222222222222444466668888888888AA),
    .INIT_19(256'h11333333331311333355557777777777775555333111EFECCCAA886664444444),
    .INIT_1A(256'h8A686868686888888888888AAACCCCCEEEEEEEEEEEEECCCCAA888866CCCCEE11),
    .INIT_1B(256'hDDDDDDBDBDDDDDDDDDDDBD9935CC6622220000002222446668888AAAAAAAAA8A),
    .INIT_1C(256'h979799B9BBBBBBDDDDDDDDDDDDDDDDDDDBDBDBDBBBB997551111335799BBBDDD),
    .INIT_1D(256'h6C6C6E8E8E8E8E8E90909090B0B0908E8E8E9092B4B7D9DBBBBBBBBBDBDBBBB9),
    .INIT_1E(256'h88CA0E55B9DBD995702C08082A4C6E6E7090927070706E6E6E6E6E6E6E6C6C6C),
    .INIT_1F(256'h446666668888A888AAAAA8AAEE11EECC886664446486CAECECCA866442446466),
    .INIT_20(256'hEECCAA8888666444444444646666888888886666444422222222222222222244),
    .INIT_21(256'hCCCCAAAA8888CCCCEEEE11111111111133335555777799977777775533331111),
    .INIT_22(256'h4446666888888888888868686868686868888888AAACCCEEEEEEEEF01010EEEE),
    .INIT_23(256'h975310113377999BBBBBBDDDDDBDBDDDDDDDDDDDDDBB9913AA44220200002222),
    .INIT_24(256'hB9B9B9BBBBBBDDBBBB99979797B9BBBBDBBBBBDDDDDDDDBDBDDBBBDBDBDBB9B9),
    .INIT_25(256'h906E6E6E6E8E6E6C6C6C6C6E6E8E8E8E8E8E8E8E909090908E8E8E909090B4B7),
    .INIT_26(256'h0E53532ECAA8648686A8A8CA0E5397B9D995704E4C4C6E6E7090909292907090),
    .INIT_27(256'h22222222222222224466668888888888AA88AA888888A8AA88666664444464A8),
    .INIT_28(256'h99977777755533331111EECCAA88886666444444444444666666666666444444),
    .INIT_29(256'hEEF0101010F0EEEEEEEECCCCCCAAAAAACCCCCCEE111111111111313355777797),
    .INIT_2A(256'h9B77F1884422000222222244444666666666666868666668686868888AAACCEE),
    .INIT_2B(256'hDDBDBBBBDBDBDBD9B9B975320E103377999979999BBDDDDDDDBBBBBBBBBBBDBD),
    .INIT_2C(256'h908E8E8E8E90909092B5D9B9B9BBBBBBBDBB997777757599BBBBBBBBBBBBBBDD),
    .INIT_2D(256'h908E9090B2B292929090909090906E6E6E6C6C6C6C6C6E6E6E6E6E8E8E8E9090),
    .INIT_2E(256'h666666444444444244880E75977530ECCAEAEA0C0C2E507397B7B7B59290908E),
    .INIT_2F(256'h44444444444444442422222222222222224488CCCCCC88888888888888866666),
    .INIT_30(256'h11111111113355557777777777777555333311EFEECCAA888866664444444444),
    .INIT_31(256'h8888888888AAACCCEEF0111110F0EEEECECCCCCCCCCCCCCCACAACCCCCCEEEE11),
    .INIT_32(256'hBBBDBDBB997977999BBBBB9933CC662202222222222224444444464666666668),
    .INIT_33(256'h537799BBBBBB9999BBDBDDBDBBDBDBDBDBB9B9977530EEEE135779775757799B),
    .INIT_34(256'h6E6E6C6C6E6E8E8E8E8E908E8E8E908E909092B5B7B9B9B9BBBBBB9977555533),
    .INIT_35(256'h959595B5B5B4B292B0B0909090B2B4B292929090909090906E6E6C6C6C6C6C6C),
    .INIT_36(256'hAA888886666666666666666644444444424242860E7597977552505050727272),
    .INIT_37(256'hAA888866664444444444444444444444444422222222222222222266CC333311),
    .INIT_38(256'hEECCCCACCCCCCCEEEEEFEFEEEF11113353557577777777775555333311EFCCCC),
    .INIT_39(256'h2222242444466666688888888888AAACCCEE1011111110EECECCCCACCCCCCEEE),
    .INIT_3A(256'hEECEF1355535131335779BBDBD9B7755353557799B9B77118844222422242422),
    .INIT_3B(256'hB9B9B9BB9B79551111113153779999777777B9DBDDDDDBDBDBDBB9B9B9975410),
    .INIT_3C(256'h906E6E6E6C6C6C6C6C6C6C6C6C6C6C6E6E8E8E8E8E8E8E90908E8E9092B4B7B7),
    .INIT_3D(256'h9797979592929292B494929492B2B292B2B2B0B09092B2B4B4B2929290909090),
    .INIT_3E(256'h222222222266EE555511AA666666666666666666666644444442424242860E73),
    .INIT_3F(256'h75555555331111EECCCCAAAA8888664444444222444444444444444422222222),
    .INIT_40(256'hEECCCCAAAAAACCCCEEEEEEEECCCCCCCCEEEEEEEEEEEEEF111133333355555575),
    .INIT_41(256'h9933CC886688888888664644444444466668888888888AAAACCCEE1011111110),
    .INIT_42(256'hDBDBDBDBB9B9B997520ECCAACEF011F1CECEF13579BBBDBB793511F11335799B),
    .INIT_43(256'h909090908E9092B4B5B7B9B9B9B99977330FEEEC0F33779775335377BBDBDDDB),
    .INIT_44(256'hB4B4B492929290909090906E6E6C6C4C4C6C6C6E6C6C6C6C6C6E6E8E8E8E8E6E),
    .INIT_45(256'h44444442424264860C5375957595B5B2929292929292929090909090909092B2),
    .INIT_46(256'h44444444444422222222222222222266CC1111EE886644444444446466666666),
    .INIT_47(256'hEF111111113333335355555555553333110FEEECCCAAA8886666444444424444),
    .INIT_48(256'hAAAACCEE1011111111EECCAA8A88888AAACCEEEEEEEEEECCEEEEEEEEEEEF11EF),
    .INIT_49(256'hBDBD9B5713EEEE135799997733111133333311EECCAA88666666666888888AAA),
    .INIT_4A(256'h535331115599DBDDDBDBDBDBDBB9B9B9B79530ECAA8A8AACCEACAAAACC115599),
    .INIT_4B(256'h6C6C6E6E6E6E8E8E707090B09090909092B4B5B7B7B9B9B999775531EEEC0F31),
    .INIT_4C(256'h70707090909090909292B4B5B492929292909090706E6E4C4C4C4C4C6C6C6C6C),
    .INIT_4D(256'h444444444444444444444444424242424286EC5295757595B5B4929292909070),
    .INIT_4E(256'hCCAA88666644444422224444444444242222222222222222224488AAAA886644),
    .INIT_4F(256'hEEEEEEEEEEEF1111EFEFEF0F1111111111313333555555557555553333110EEE),
    .INIT_50(256'hF1CEAC8A88888AAAAAAACCCCEEEE11111111F1CEAA886666888AAACCEEF010F0),
    .INIT_51(256'h686A8A8A8A8AAACE3379BBDDBD9935F1CEF135779999997999BBBBBB9B795733),
    .INIT_52(256'hB9B9B99997530FECEC0E0EEEEE3397BBBBDDDBDBBBBBDBB9B9B9B77430CCAA68),
    .INIT_53(256'h6E4C4C4C4C4C6C6C6C6C6C6C6E6E6E6E6E6E909090B0B090909092B4B5B7B7B9),
    .INIT_54(256'h7295949292929090707070707070707070909092B4B5B594929292909090706E),
    .INIT_55(256'h222222224444444422222244444444444444444442422242424242A60C527573),
    .INIT_56(256'h799999999797777755533310ECAA886444422222222244442222222222222222),
    .INIT_57(256'h66666888CCEE11111111EEEEEEEF11111111EFEEEEEFEEEEEEEF111133557777),
    .INIT_58(256'hBDDDDDFFFFFFDFDDBDBB795733F1CECCCCCECECCCECEEEEE1133333311EEAA88),
    .INIT_59(256'hB9B9B9B9977410CC886848688A8A8A8A8AAC11579BBDDD9B5713F111355799BB),
    .INIT_5A(256'h90909292B2B5B79797B7B9B9B9B997730FEACACACCEC3177BBBBBBBBBBBBBBBB),
    .INIT_5B(256'hB7B5949292929090706E6E4E4C4C4C4C6C6C6E6E6E6E6E6E6E6E6E6E90909090),
    .INIT_5C(256'h2222424264C82E729573727272727272929292929270707070707070707292B5),
    .INIT_5D(256'h2222222222222222222222222222222222222242224444444444444444424222),
    .INIT_5E(256'hEEEEEF113355779999BBBBBBDBDBDBBBBBB9999997755310CCA8664444222222),
    .INIT_5F(256'hEEF1335557775533EECCAA8888AACCEE1133331111EEEEEEEF111111EEEEEEEE),
    .INIT_60(256'hBDBB7933F11335779BDDDFFFFFFFFFFFFFFFFFDFDDBD9B79553333353311EEEE),
    .INIT_61(256'h75B9BBBBBBBBBBBBBBB9B9B9B9B997540EAA6846464868888A8A8AAAF05599BD),
    .INIT_62(256'h6E6E6E6E6E6E9090929090909292B4B5B7979797B9B9B9B9B77531ECEACAEC31),
    .INIT_63(256'h70707072729292729295B7B7B59492909090706E6E6E4C4C4C4C4C6C6E6E6E6E),
    .INIT_64(256'h444444444444424242424242426286EC50959595959575727272949494929272),
    .INIT_65(256'h977533EEAA884444222222222222222222222222222222222222222222222224),
    .INIT_66(256'hEEEEEFEFEFEEEEEEEEEEEEEF33557799BBBBDDDDDDDDDBDBDBDBDBDBDBDBDBB9),
    .INIT_67(256'hDDBDBB9B9B99775511F1F1337799BBBBBB995733F1CCAAACEE11333333331111),
    .INIT_68(256'h46688A8A8A8ACE3379BBDDBD995533335577BBDDFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hB9B9B997553331315577B9DBBBBBBBBBBBB9B9BBBBB9B9B99752EC8866462446),
    .INIT_6A(256'h6E4C4C4C4C6C6E6E8E6E6E6E6E6E6E6E9090929292929292B5B5B797979797B9),
    .INIT_6B(256'hB79795B5B5B5B4B4929272707295959595959595B7B9B7B592909090906E6E6E),
    .INIT_6C(256'h222222222222222222222444444444444242424242424264C82E7295B7B7B9B9),
    .INIT_6D(256'hFBFBFBDBDBDBDBDBDBD9D9B9977530ECAA664422222222222222222222222222),
    .INIT_6E(256'hEECE1133555555353333EEEEEEEEEEEECCCCCCEEEF335599BBBBDDDDDDDDDDFD),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFDFDDDDDDBB793533335799BBDDDDDDDDBB995711),
    .INIT_70(256'hB9B99752CC684624244646688A8A8AACCE1377BBBDBD9B7757577999DDFFFFFF),
    .INIT_71(256'h929295B5B7B7979797B9B9B9B997977777779799BBBBBBB9B9B9B9B9B9BBBBB9),
    .INIT_72(256'hB7B7929290909070706E6E6E6C4C6C6E6E8E8E8E6E6E6E6E6E6E909092929292),
    .INIT_73(256'h84A60C7295B7D7D9DBDBD9B9B7B7B7B7B4B4929292729295959597959597B7B9),
    .INIT_74(256'h2222222222222222222222222222222222222222224244646464646464646464),
    .INIT_75(256'h99BBDDDDDDFDFDDBDBDBFBDBDBD9D9D9D9D9D9D9D9D9D9B797530EAA44222222),
    .INIT_76(256'h9BBBBBBDBDBBBB9B773311EE1135575757553333CCCCCCCCCCCCCCCCCCEE3355),
    .INIT_77(256'hBDBBBB9BBBBDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDBB99777779),
    .INIT_78(256'h99999999B9B9BBBBBBBBB9B99732CC664424242646688A8AAAACCE11579BBDDD),
    .INIT_79(256'h6E6E6E8E909092929292949495B5B7B7979797999999999797979999B9B9B9B9),
    .INIT_7A(256'h737373739597979797B9B7959292709290707070706E6E6E6C6E6E8E908E6E6E),
    .INIT_7B(256'h86A6C8C8C8C8C8A6A6A6C8EA5095B7D7D9DBDBDBDBDBD9B9B7B7B5B494929272),
    .INIT_7C(256'hD9D9D9B955EE8642222222222222222222222222222222222222222222424264),
    .INIT_7D(256'hAAAAAAAAAAAACC115599BBDDDDDDDDDDDBDBDBDBD9D9D9D9D7D7D7B7B6D6D7D9),
    .INIT_7E(256'hFFFFFFFFFFDDBD9B777757577777775755553311EEEE3355777777553313CCAA),
    .INIT_7F(256'h8AACACACCEF05599BDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_23_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_23_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9
   (p_19_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_19_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_19_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hC001FFFFFFFFF000FF007FFFFFFF0000001FFFFFFFFFFFFFFFFFFFFFFFFFFF00),
    .INITP_01(256'hFFE0007FFFFFFFF8003F803FFFFFFFC000001FFFFFFFF87FFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFF8007FFFFFFFFE0007E00FFFFFFFF000001FFFFFFFFE1FFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFE003FFFFFFFFF0000E003FFFFFFF800003FFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFFFF001FFFFFFFFFC0000001FFFFFFFE00007FFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFC07FFFFFFFFFE00000007FFFFFFFC007FFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFF07FFFFFFFFFF00000001FFFFFFFF83FFFFFFFFFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFDFFFFFFFFFFFC3E000007FFF8FFFFFFFFFFFFFFFFFFFFFF),
    .INITP_08(256'hFFFFDFFFFFFFFFFFFFFFFFFFE1FFFFFF0FC00003FFF83FFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFF9FFFFFFFFFFFFFFFFFFFFFF01FFFFFE3FF0000FFFC0FFFFFFFFFFFFFFFFF),
    .INITP_0A(256'hF7FFFFC1FFFFFFFFFFFFFFFFFFFFF003FFFFF87FC0003FFE00FFFFFFFFFFFFFF),
    .INITP_0B(256'hFFF8FFFFF83FFFFFFFFFFFFFFFFFFFE000FFFFFE03F0000FFF800FFFFFFFFFFF),
    .INITP_0C(256'hFFFFFE1FFFFF07FFFFFFFFFFFFFFFFFFC0003FFFFF803C0003FFC000FFFFFFFF),
    .INITP_0D(256'hFFFFFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFF0000EFFFFC0000000FFF1803FFFFF),
    .INITP_0E(256'hFFFFFFFFFFF87FFFFFFFFFFFFFFFFFFFFFFFFE00031FFFF00000001FFCFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFE07FFFFFFFFFFFFFFFFFFFFEF83C0000FFFF800000007FF7FFF),
    .INIT_00(256'h99999999979799999999999999B9BBBBBBBBBBBBBBB99732CC68462424264668),
    .INIT_01(256'h6E6E6E6E6E8E908E6E6E6E6E6E90909292929292949495B5B7B7979797979999),
    .INIT_02(256'hD9B9B7B7B7B595959573500E0C0E307597979797959594929292929270707070),
    .INIT_03(256'h222222222242426486C8EA0C2C2E2E2C2C2C0A0A0C4E92B7D9D9D9DBDBDBDBDB),
    .INIT_04(256'hB7B7B4B4B4B2B4B4D4D6D7D9D9D9770E88442222222222222222222222220222),
    .INIT_05(256'h3355777777553311AAAA88888888AACAEE3399BBDDDDDDDDDDDBDBDBD9D9D9D7),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD995511F0EEEEEEEEEECCCCCCAACCEE),
    .INIT_07(256'h7710AA66464424264668AAACCCCECE115599BDDDDDBDDDDDDDDDDFFFFFFFFFFF),
    .INIT_08(256'h9595B7B797979797979999B999999999979999999999B9B9BBBBDBDBBBDBBBB9),
    .INIT_09(256'h95949292929292707070706E6E6E6E90908E6E6E6E6E6E90B292929294949494),
    .INIT_0A(256'hB7D9D9D9DBDBDBBBDBDBD9B9B9B7B7B7B7B795730ECAA8A8EC52759797979595),
    .INIT_0B(256'h2222222222222222222222222242426284A6EA2C4E707070706E6E6E4E4E7094),
    .INIT_0C(256'hDDDDDBDBD9D9D9D7D7B7B4B4B2929090B2B2B4D4D6D7D9D99710A84422222222),
    .INIT_0D(256'h8888888866666666AAEE13557777775513F088886666666688CC1177BBDDDDDD),
    .INIT_0E(256'hBDBDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDD7913CCAA88),
    .INIT_0F(256'hB9BBBBBBDBBBBBDBBB9955EE8A66464646466868ACACCECEF0335799BDDDBDBB),
    .INIT_10(256'h90909292B2B4B4B4B494959595B79797979797979999999799999999B9B9B9B9),
    .INIT_11(256'hA8A8EC30759797B7B7B7B79492929292927272707070706E6E8E908E8E8E6E6E),
    .INIT_12(256'h9290908E8E6E6E7092B6D9D9FBFBDBDBDBBBBBDBDBDBB9B9B9B9D9B997730ECA),
    .INIT_13(256'hD7B7750E8642222222222222222222222222222222426284A6C6E80A4E7092B2),
    .INIT_14(256'h446688CC3399BBDDDDDDDDDBDBD9D9D7B7B5B4B49292908E6E8E90B0B2B2B4D6),
    .INIT_15(256'hFFFFFFDFDD7711AA8866666666464444446688CCF0335555553311EE66664444),
    .INIT_16(256'hF011335779BBBDBDBB9BBBBBBDDDDDDDDDDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'h9999999999B9B9B9B9BBBBBBBBBBBBBBBBBBB97733CC8A68666868688A8AACCE),
    .INIT_18(256'h7070706E908E90908E7090929292B2B4B4B49495959595979797979799999999),
    .INIT_19(256'hDBDBDBDBDBBBB99753100E0E517397B7B9B9D9D9B79592929292929292727270),
    .INIT_1A(256'hA6E80A2C4C6E6EB0B2B2B2B0909090909090B4D7F9FBDBDBDBDBDBBBBBBBDBDB),
    .INIT_1B(256'h6C6C6C8C8E8E90B2B2B4B6B753EC864222222222222222222242424242626486),
    .INIT_1C(256'h131313F0CEAC666644444466AAEE55BBDDDDDDDDDBDBD9D9B7B6B4929292706E),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFDFDDBB57EE886666666644444444444466AACCF0),
    .INIT_1E(256'h8A88888A8AACACACCEF0133557999BBDBDBBBB999BBBBDBDDDDDDDDDDFDFDFDF),
    .INIT_1F(256'h9597979797979797979799999999B9B9B9BBBBBBBBBBBBBBBBBBBBBB997710CC),
    .INIT_20(256'h9595949292929292929292909070908E9090909090929292B4B4B4B5B5959595),
    .INIT_21(256'hDBDBDBDBDBBBBBDBDBDBDBDBDBDBDBBBBBB9977575759797B7B9B9D9D9D9B795),
    .INIT_22(256'h6464648486A6A6C8E80A2C4E6E906E8E8E90B0B2B2B0B2B2D2B2B2B4D6F9FBFB),
    .INIT_23(256'hD9B7B4B49290706E6E4C4A4A6A6C6C6E8E9092B4B49550EC8664424242424242),
    .INIT_24(256'h4444444444446688AACCEEEECECCAA8A444444444466AA1177BBDDDDDDDDDBDB),
    .INIT_25(256'hBDDDBDBDDDDDDDDFDDDFFFFFFFFFFFFFFFFFFFFFFFFFDFBB7711AC8866666644),
    .INIT_26(256'hBBBBBBBBBBBB7755F0CEACAAAAACAECEF0F0F0133557999BBDBDDDBBBBBBBBBD),
    .INIT_27(256'hB4B49494B5B7B7B795959597979797979797979999999999B9B9B9BBBBBBBBBB),
    .INIT_28(256'hB9B9B9B9D9D9D9B9B79595959595959595959492929290708E909090909092B2),
    .INIT_29(256'hB2D4F4D4D4D4D7FBFBDBDBDBDBDBDBBBDBDBDDDDDDDDDDDDDDDBBBBBB9B999B9),
    .INIT_2A(256'h500EC88664648486A6A6C8C8EA0A0C2C2C2C4E6E6E9090908E8E8E8EB0B0B2B2),
    .INIT_2B(256'hAA3399BBDDDDDDDBDBD9B7B4B292706E4E4C2A2A284A4A6A6C6C6E9092949595),
    .INIT_2C(256'hDD9913CC8866668888886644444444666666888AAAAAAA8A8866664444444466),
    .INIT_2D(256'h9BBDBDDDBDBBBBBBBBDDDDDDDDBDBDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFDF),
    .INIT_2E(256'h9999B9B9B9B9BBBBBBBBDBDBBBBBBBBB7733F0EECECECECEF013333333355779),
    .INIT_2F(256'h9270909090909092B2B4B4B4B4B5B7B7B7B79797979797979797979799999999),
    .INIT_30(256'hDDDDBDBDBBBBBBBBBBBBDBDBBBB9B9B9B9B99775759595959595959595949292),
    .INIT_31(256'h90B08E8C8C8EB0B2B2D4D7F7F6D4D4D4D7FBDBDBD9D9D9DBDBDBDBDBDDDDDDDD),
    .INIT_32(256'h4A4A4C6C6E7092929593724E0CE8C8E8EAEA0C2C2C4E4E6E7070709090909090),
    .INIT_33(256'h66664444664444444488CC5599DDDDDDDDDBD9B7B4B4926E6E4C2C2A08082828),
    .INIT_34(256'hDFFFFFFFFFFFDFFFFFDDBB57EE8A6688AAEEEEEEAA8846444466666666666666),
    .INIT_35(256'hF113335557575777799BBDBDDDBDBB999999BBBBBBBDBDBBBBBDBDDDDDDDDDDD),
    .INIT_36(256'h97979797979799999999999999B9B9B9BBBBBBBBBBBBBBBBBB995733F1F0F0F1),
    .INIT_37(256'h759595959797959594949290709090909092B4B4B4B4B4B5B7B7B9B9B7979797),
    .INIT_38(256'hD9DBDBDBDBDDDDDDDDDDDDDDBDDDBDBBBBBBDBBBDBBBBBBBBBB9B99775533353),
    .INIT_39(256'h909090B09090908E8E8E8E8E8E8C6C8E90B2D4D7F9F9D6B4B2B4D7D9DBDBD9D9),
    .INIT_3A(256'h6E4C2A2808E6E6E608284A4A4C6E70709292939392704E2C2C4E4E4E6E6E6E90),
    .INIT_3B(256'h8866666666464444442424242422664444446688EE55BBDDDDDDDBDBD9B7B492),
    .INIT_3C(256'hBBBBBBBBBDDDDDDDDDDDDDDFDFDFFFFFDFDFDFDDBB55CE8868AA1155775511EE),
    .INIT_3D(256'hBBBBBB995513F111111333355777797979999BBBBDBDBD9B573333335577999B),
    .INIT_3E(256'hB4B5B7B9B9B9B9B99797979797979797999999999999B9B9B9B9BBBBBBBBBBBB),
    .INIT_3F(256'hBBBBB9B9997733110E1153759797B7B7979595959492909090909292B4B4B4B4),
    .INIT_40(256'hB4929092B7B9D9B9B9B9D9DBDBDBDBDDDDDDDDDDDDDDDDDDBBBBBBBBB9B9B9BB),
    .INIT_41(256'h6E4E6E6E6E6E8E8E8E8E8E8E90B0908E8E8E8E8E8E8E8C6C6C8E90B2D6D9F9D7),
    .INIT_42(256'hBBDDDDDDDBDBB7B592704C2A08E6E6C4C4E6082A4A4C4C4E7070729293929070),
    .INIT_43(256'hF1AA88CC3399BBBB9933EEAAAAAA884424222202222202024444444466AA1177),
    .INIT_44(256'h9B5711CCAAACEE113577999BBBBBBBBBBBBDBDDDDDDDDDDDFFFFFFFFDFDDBB77),
    .INIT_45(256'h99B9B9B9BBBBBBBBBBBBBBBB99775513131333353557777999999B9B9BBBBBBD),
    .INIT_46(256'h9292929292B4B4B4B4B4B5B7B7B9B9B9B9B99997979797979797979797999999),
    .INIT_47(256'hDDBDBBBBBB9775757777999999999775330FEE1153979797B7B7979797959594),
    .INIT_48(256'h6C6C6C6E90B4D7F9D9D692706E7094959797B9B9B9DBDBDBDBDDDDDDDDDDDDDD),
    .INIT_49(256'h4C4E6E7072929292706E6E6E6E6E6E6E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E6C),
    .INIT_4A(256'h00004444444466AA1199DDDDDDDDDBD9B794904E2A06E4C4C4A4C4E606082A2A),
    .INIT_4B(256'hDDDDFFFFFFFFDFDFDD9935CC88AC1379BBBBBB7733111111AA66220200000000),
    .INIT_4C(256'h77799B9BBBBB9B9979795713CE88666688AACE337799BBBBBBBBBBBBBDDDDDDD),
    .INIT_4D(256'h979797979797979799999999B9B9B9B9BBBBBBBBBB9999775757775757575557),
    .INIT_4E(256'hB7B7B7B797979797979592929292B4B4B6B7B4B4B5B7B9B9B9BBBBB9B9999797),
    .INIT_4F(256'hDBDBDBDBDDDDDDDDDDDDDDDDBBBB995511EEEE11537797977755331111337597),
    .INIT_50(256'h8E8E8E8E8E8E6E6E6C6C6C6C4C6E90B4D7D9D7B4906E4E6E7050505395B7B9B9),
    .INIT_51(256'hE4C2C4A2A2C4C4E608082C4C4E70709270706E6E6C6C6E6E6E6E6E6E6E6E6E6E),
    .INIT_52(256'h7755CE6622000000000000004444444466AA3399DDDDDDDBDBB9B592704C08E4),
    .INIT_53(256'h79799999BBBBBDDDDDDDDDDFFFFFFFFFDFDFDDBB55CC6888CC33577779775777),
    .INIT_54(256'h997999BBBDBB9B79575777799B9B9B9979553313EECE8A664424446688EF5579),
    .INIT_55(256'hB9B9BBBBBBB9B99997979797979797979999999999999999B9B9B9B9B9B9B999),
    .INIT_56(256'h53757553311131559797B7B9B7979797979797979594B4B4B4B7B7B7B4B4B7B7),
    .INIT_57(256'h4C4E2E0CEC0E5375B7B9B9BBDBDBDDDDDDDDDDDDDDDDDBBB9953EECAA8CAEC31),
    .INIT_58(256'h6E6E6E6E6C6C6C6C6C6E6E6E8E8E6E6E6E6C6C6C4C4A4C6E90B4D7D7D4926E4C),
    .INIT_59(256'hDDDBD9B7B5924E2A06E4E4E4C4A4A2C2C2C4C4E6080A2C4E6E6E6E4E4C4C4C6C),
    .INIT_5A(256'h664466AACEF1133355779955CC6622000000000000004444444466AA1399DDDD),
    .INIT_5B(256'h68464422224488EE555755355577BBBBBDDDDDDDDDFFFFFFFFFFFFDFDDBB77CE),
    .INIT_5C(256'h999999999999999999999999BBDDDFDFDD9B797777797979573513EECCAC8A88),
    .INIT_5D(256'hB5B5B7B7B7B7B4B4B7B7B9B9BBBBBBBBB9B99997979797979799979799999999),
    .INIT_5E(256'hDDBBB97731ECA8A8A8EC0F315131313153759797B7B9B999979799999797B7B7),
    .INIT_5F(256'h4C6E92B4D7D7B4906E6C4C4E2CEAA8CA0E539799B9BBDBDBDDDDDDDDDDDDDDDD),
    .INIT_60(256'h0A2C2C4C4C4C4C4C4C6C6E6C6C6C6C6C6C6C4C6C6E6E6E6E6C6C4C4C4C4C4A4A),
    .INIT_61(256'h4444444466AA1177BBDDDDDBD9B7B5924E28E6E4E4E4E6C4C4C4A2A2A2C4C6E8),
    .INIT_62(256'hDFFFFFFFFFDFDDBB55CC44222244668888CC115555118A440000000000000000),
    .INIT_63(256'h5735F1CEAC8A6868464644242222222488EE35553311335799BBDDDDDDDDDDDF),
    .INIT_64(256'h97979999999999999999999999999999999999997799BBDFDFDFDDBB99797777),
    .INIT_65(256'hB9B9B999999999B997B7B7B7B7B7B7B7B7B7B7B7B9B9BBBBBBBBB9B9B9979797),
    .INIT_66(256'hBBDBDBDDDDDDDDDDDDDDDDBDBB9B7733EFECCACAEC0F2F2F2F5173759597B7B9),
    .INIT_67(256'h6C6C6C4C4C4C4A4A4A4A4A6E90B4B7B4B2906E6E4C4E2EEAA8CAEC115597B9B9),
    .INIT_68(256'h06E6E6E6E6C4C4C4E6E6082A2A4C4C4C4C4C4C6C6C6C6C4C4C4C4C4C4C4C6C6C),
    .INIT_69(256'h662200000000000000004444444466881077BBDDDDDBDBB7B5904C28E4E4E406),
    .INIT_6A(256'h115599BBDDDDDDDDDDDFFFFFDFDFDFDDBB77EF882200002222224466AACCEEAA),
    .INIT_6B(256'h9BDDDDDDDDBB795757573513CEAC88664644242422220200002288EE333311F1),
    .INIT_6C(256'hBBBBBBBBB9B9B999999999999999B9B9B99999B999999999999999B999777777),
    .INIT_6D(256'h0F2F517375959597B9B9B9B9B99999999999B9B9B9B9B9B9B9B7B7B7B5B7B9B9),
    .INIT_6E(256'h4E0CCACACCEE10537599B9BBDBDBDDDDDDDDDDDDDDDDDDBDBB995533110F0F0F),
    .INIT_6F(256'h4C4C4C4C4C4C4C4C4C6C6C6C4C4C4A4A4A4A2A2A4A6E92B4B5B4B2906E6E4E4E),
    .INIT_70(256'hB9B7926E4C08E6E6060608080808080808080808282A2A4A4C4C4C4C4C6C6C4C),
    .INIT_71(256'h0000002022426686886622000000000000000000444444444488EE75BBDDDDDB),
    .INIT_72(256'h0000002268CE1311F1EEF133799BBBBDDDDDDDDFDFDFDDDDDDBB7711A8442200),
    .INIT_73(256'h99999999B9B999773535779BBDBB9B7735131335353311EEAC68242202000000),
    .INIT_74(256'hB9D9B9B7B7B5B5B7B7B9B9BBBBBBB9B9B9B99999999999B9B9B9B9B999B99999),
    .INIT_75(256'hDDDDDDBBBB99755331313151739595979797B9B9B9B9B99999999999B9B9B9B9),
    .INIT_76(256'h92B4B4B4B2906E6E4E4E50300EECCCCACC0E337599B9BBDBDDDDDDDDDDDDDDDD),
    .INIT_77(256'h2A4A4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4A4A2A2A2828284A6E),
    .INIT_78(256'h44444486CC5399DBDDDBB995924E2A06E60608282A2A4C4C4C4C2C2A2A2A2A2A),
    .INIT_79(256'hDFDDBD9933AA6622220000000000002222444422220000000000000000004444),
    .INIT_7A(256'h5735F08A4402000000000000002266ACEEF0EEEE11337799BBBBDDDDDDDFDFFF),
    .INIT_7B(256'hB9B9B9B9B9B9999999999999B9B9B9BB995510F03357775733F0CECED0F03535),
    .INIT_7C(256'hB9999999999999B9B9B9B9D9B9B9B7B5B5B7B7B9B9BBBBB9B9B9B9B9999999B9),
    .INIT_7D(256'hBBBBDBDDDDDDDDDDDDDDDDDDDDDDDBB997977575757595B7B7B797B7B9B9B9B9),
    .INIT_7E(256'h4C4A2A2A2828282A4C6E90B2B4B492906E6E6E70705030ECAAAAAACAEE317599),
    .INIT_7F(256'h6E6E6E6E4E4C4C4C4C4A4A4A4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_19_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_19_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (douta,
    addra,
    clka);
  output [11:0]douta;
  input [15:0]addra;
  input clka;

  wire [15:0]addra;
  wire clka;
  wire [11:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "16" *) (* C_ADDRB_WIDTH = "16" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "2" *) 
(* C_COUNT_36K_BRAM = "13" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     8.275238 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "39360" *) (* C_READ_DEPTH_B = "39360" *) (* C_READ_WIDTH_A = "12" *) 
(* C_READ_WIDTH_B = "12" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "39360" *) (* C_WRITE_DEPTH_B = "39360" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "12" *) (* C_WRITE_WIDTH_B = "12" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [15:0]addra;
  input [11:0]dina;
  output [11:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [15:0]addrb;
  input [11:0]dinb;
  output [11:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [15:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [11:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [11:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [15:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [15:0]addra;
  wire clka;
  wire [11:0]douta;

  assign dbiterr = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[15] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[15] = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth
   (douta,
    addra,
    clka);
  output [11:0]douta;
  input [15:0]addra;
  input clka;

  wire [15:0]addra;
  wire clka;
  wire [11:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
