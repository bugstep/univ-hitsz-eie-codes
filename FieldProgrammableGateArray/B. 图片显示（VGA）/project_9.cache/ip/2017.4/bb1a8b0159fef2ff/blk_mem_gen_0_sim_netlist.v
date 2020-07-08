// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jul  8 10:23:41 2020
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [15:0]addra;
  wire clka;
  wire [15:0]douta;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [15:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_18K_BRAM = "3" *) 
  (* C_COUNT_36K_BRAM = "16" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     16.77951 mW" *) 
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
  (* C_READ_DEPTH_A = "36000" *) 
  (* C_READ_DEPTH_B = "36000" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "36000" *) 
  (* C_WRITE_DEPTH_B = "36000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
  output [7:0]ena_array;
  input [3:0]addra;

  wire [3:0]addra;
  wire [7:0]ena_array;

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
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (douta,
    addra,
    clka);
  output [15:0]douta;
  input [15:0]addra;
  input clka;

  wire [15:0]addra;
  wire clka;
  wire [15:0]douta;
  wire [8:0]ena_array;
  wire [8:0]p_11_out;
  wire [8:0]p_15_out;
  wire [8:0]p_19_out;
  wire [8:0]p_23_out;
  wire [8:0]p_27_out;
  wire [8:0]p_31_out;
  wire [8:0]p_35_out;
  wire [8:0]p_3_out;
  wire [3:0]p_51_out;
  wire [8:0]p_7_out;
  wire ram_douta;
  wire ram_ena_n_0;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_0 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[15:12]),
        .ena_array({ena_array[8:4],ena_array[2:0]}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram (\ramloop[1].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[5].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[7].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[8].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 (\ramloop[9].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 (ram_douta),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 (\ramloop[2].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 (\ramloop[4].ram.r_n_0 ),
        .DOADO(p_51_out),
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
        .ena_array(ena_array[0]),
        .p_35_out(p_35_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[1]),
        .p_31_out(p_31_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[2]),
        .p_27_out(p_27_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.addra(addra),
        .clka(clka),
        .p_23_out(p_23_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[4]),
        .p_19_out(p_19_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14 \ramloop[15].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[5]),
        .p_15_out(p_15_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized15 \ramloop[16].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[6]),
        .p_11_out(p_11_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized16 \ramloop[17].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[7]),
        .p_7_out(p_7_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized17 \ramloop[18].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[8]),
        .p_3_out(p_3_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .clka(clka),
        .\douta[0] (\ramloop[1].ram.r_n_0 ));
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
       (.addra(addra[14:0]),
        .\addra[15] (ram_ena_n_0),
        .clka(clka),
        .\douta[3] (\ramloop[5].ram.r_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.DOADO(p_51_out),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[8]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.addra(addra[14:0]),
        .\addra[15] (ram_ena_n_0),
        .clka(clka),
        .\douta[4] (\ramloop[7].ram.r_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.addra(addra[14:0]),
        .\addra[15] (ram_ena_n_0),
        .clka(clka),
        .\douta[5] (\ramloop[8].ram.r_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.addra(addra[14:0]),
        .\addra[15] (ram_ena_n_0),
        .clka(clka),
        .\douta[6] (\ramloop[9].ram.r_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    p_3_out,
    p_31_out,
    p_23_out,
    p_35_out,
    p_27_out,
    p_15_out,
    p_7_out,
    p_19_out,
    p_11_out,
    DOADO,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 );
  output [15:0]douta;
  input [3:0]addra;
  input clka;
  input [8:0]p_3_out;
  input [8:0]p_31_out;
  input [8:0]p_23_out;
  input [8:0]p_35_out;
  input [8:0]p_27_out;
  input [8:0]p_15_out;
  input [8:0]p_7_out;
  input [8:0]p_19_out;
  input [8:0]p_11_out;
  input [3:0]DOADO;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ;
  input [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 ;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 ;
  wire [3:0]DOADO;
  wire [3:0]addra;
  wire clka;
  wire [15:0]douta;
  wire \douta[10]_INST_0_i_1_n_0 ;
  wire \douta[10]_INST_0_i_2_n_0 ;
  wire \douta[11]_INST_0_i_1_n_0 ;
  wire \douta[11]_INST_0_i_2_n_0 ;
  wire \douta[12]_INST_0_i_1_n_0 ;
  wire \douta[12]_INST_0_i_2_n_0 ;
  wire \douta[13]_INST_0_i_1_n_0 ;
  wire \douta[13]_INST_0_i_2_n_0 ;
  wire \douta[14]_INST_0_i_1_n_0 ;
  wire \douta[14]_INST_0_i_2_n_0 ;
  wire \douta[15]_INST_0_i_1_n_0 ;
  wire \douta[15]_INST_0_i_2_n_0 ;
  wire \douta[15]_INST_0_i_3_n_0 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire \douta[8]_INST_0_i_1_n_0 ;
  wire \douta[8]_INST_0_i_2_n_0 ;
  wire \douta[9]_INST_0_i_1_n_0 ;
  wire \douta[9]_INST_0_i_2_n_0 ;
  wire [8:0]p_11_out;
  wire [8:0]p_15_out;
  wire [8:0]p_19_out;
  wire [8:0]p_23_out;
  wire [8:0]p_27_out;
  wire [8:0]p_31_out;
  wire [8:0]p_35_out;
  wire [8:0]p_3_out;
  wire [8:0]p_7_out;
  wire [3:0]sel_pipe;
  wire [3:0]sel_pipe_d1;

  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[0]_INST_0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .I1(sel_pipe_d1[2]),
        .I2(sel_pipe_d1[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3 ),
        .O(douta[0]));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[10]_INST_0 
       (.I0(\douta[10]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[3]),
        .I3(\douta[10]_INST_0_i_2_n_0 ),
        .I4(sel_pipe_d1[2]),
        .I5(sel_pipe_d1[3]),
        .O(douta[10]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[10]_INST_0_i_1 
       (.I0(p_31_out[3]),
        .I1(p_23_out[3]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_35_out[3]),
        .I5(p_27_out[3]),
        .O(\douta[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[10]_INST_0_i_2 
       (.I0(p_15_out[3]),
        .I1(p_7_out[3]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_19_out[3]),
        .I5(p_11_out[3]),
        .O(\douta[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[11]_INST_0 
       (.I0(\douta[11]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[4]),
        .I3(\douta[11]_INST_0_i_2_n_0 ),
        .I4(sel_pipe_d1[2]),
        .I5(sel_pipe_d1[3]),
        .O(douta[11]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[11]_INST_0_i_1 
       (.I0(p_31_out[4]),
        .I1(p_23_out[4]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_35_out[4]),
        .I5(p_27_out[4]),
        .O(\douta[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[11]_INST_0_i_2 
       (.I0(p_15_out[4]),
        .I1(p_7_out[4]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_19_out[4]),
        .I5(p_11_out[4]),
        .O(\douta[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[12]_INST_0 
       (.I0(\douta[12]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[5]),
        .I3(\douta[12]_INST_0_i_2_n_0 ),
        .I4(sel_pipe_d1[2]),
        .I5(sel_pipe_d1[3]),
        .O(douta[12]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[12]_INST_0_i_1 
       (.I0(p_31_out[5]),
        .I1(p_23_out[5]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_35_out[5]),
        .I5(p_27_out[5]),
        .O(\douta[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[12]_INST_0_i_2 
       (.I0(p_15_out[5]),
        .I1(p_7_out[5]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_19_out[5]),
        .I5(p_11_out[5]),
        .O(\douta[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[13]_INST_0 
       (.I0(\douta[13]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[6]),
        .I3(\douta[13]_INST_0_i_2_n_0 ),
        .I4(sel_pipe_d1[2]),
        .I5(sel_pipe_d1[3]),
        .O(douta[13]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[13]_INST_0_i_1 
       (.I0(p_31_out[6]),
        .I1(p_23_out[6]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_35_out[6]),
        .I5(p_27_out[6]),
        .O(\douta[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[13]_INST_0_i_2 
       (.I0(p_15_out[6]),
        .I1(p_7_out[6]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_19_out[6]),
        .I5(p_11_out[6]),
        .O(\douta[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[14]_INST_0 
       (.I0(\douta[14]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[7]),
        .I3(\douta[14]_INST_0_i_2_n_0 ),
        .I4(sel_pipe_d1[2]),
        .I5(sel_pipe_d1[3]),
        .O(douta[14]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[14]_INST_0_i_1 
       (.I0(p_31_out[7]),
        .I1(p_23_out[7]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_35_out[7]),
        .I5(p_27_out[7]),
        .O(\douta[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[14]_INST_0_i_2 
       (.I0(p_15_out[7]),
        .I1(p_7_out[7]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_19_out[7]),
        .I5(p_11_out[7]),
        .O(\douta[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[15]_INST_0 
       (.I0(\douta[15]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[8]),
        .I3(\douta[15]_INST_0_i_3_n_0 ),
        .I4(sel_pipe_d1[2]),
        .I5(sel_pipe_d1[3]),
        .O(douta[15]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[15]_INST_0_i_1 
       (.I0(p_31_out[8]),
        .I1(p_23_out[8]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_35_out[8]),
        .I5(p_27_out[8]),
        .O(\douta[15]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \douta[15]_INST_0_i_2 
       (.I0(sel_pipe_d1[1]),
        .I1(sel_pipe_d1[0]),
        .O(\douta[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[15]_INST_0_i_3 
       (.I0(p_15_out[8]),
        .I1(p_7_out[8]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_19_out[8]),
        .I5(p_11_out[8]),
        .O(\douta[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe_d1[2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [0]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[3]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4 ),
        .O(douta[1]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe_d1[2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 [1]),
        .I2(sel_pipe_d1[1]),
        .I3(sel_pipe_d1[3]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5 ),
        .O(douta[2]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \douta[3]_INST_0 
       (.I0(DOADO[0]),
        .I1(sel_pipe_d1[2]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[3]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \douta[4]_INST_0 
       (.I0(DOADO[1]),
        .I1(sel_pipe_d1[2]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[3]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \douta[5]_INST_0 
       (.I0(DOADO[2]),
        .I1(sel_pipe_d1[2]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[3]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .O(douta[5]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \douta[6]_INST_0 
       (.I0(DOADO[3]),
        .I1(sel_pipe_d1[2]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[3]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2 ),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[0]),
        .I3(\douta[7]_INST_0_i_2_n_0 ),
        .I4(sel_pipe_d1[2]),
        .I5(sel_pipe_d1[3]),
        .O(douta[7]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[7]_INST_0_i_1 
       (.I0(p_31_out[0]),
        .I1(p_23_out[0]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_35_out[0]),
        .I5(p_27_out[0]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[7]_INST_0_i_2 
       (.I0(p_15_out[0]),
        .I1(p_7_out[0]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_19_out[0]),
        .I5(p_11_out[0]),
        .O(\douta[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[8]_INST_0 
       (.I0(\douta[8]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[1]),
        .I3(\douta[8]_INST_0_i_2_n_0 ),
        .I4(sel_pipe_d1[2]),
        .I5(sel_pipe_d1[3]),
        .O(douta[8]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[8]_INST_0_i_1 
       (.I0(p_31_out[1]),
        .I1(p_23_out[1]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_35_out[1]),
        .I5(p_27_out[1]),
        .O(\douta[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[8]_INST_0_i_2 
       (.I0(p_15_out[1]),
        .I1(p_7_out[1]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_19_out[1]),
        .I5(p_11_out[1]),
        .O(\douta[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[9]_INST_0 
       (.I0(\douta[9]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[2]),
        .I3(\douta[9]_INST_0_i_2_n_0 ),
        .I4(sel_pipe_d1[2]),
        .I5(sel_pipe_d1[3]),
        .O(douta[9]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[9]_INST_0_i_1 
       (.I0(p_31_out[2]),
        .I1(p_23_out[2]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_35_out[2]),
        .I5(p_27_out[2]),
        .O(\douta[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[9]_INST_0_i_2 
       (.I0(p_15_out[2]),
        .I1(p_7_out[2]),
        .I2(sel_pipe_d1[0]),
        .I3(sel_pipe_d1[1]),
        .I4(p_19_out[2]),
        .I5(p_11_out[2]),
        .O(\douta[9]_INST_0_i_2_n_0 ));
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
   (\douta[0] ,
    clka,
    addra);
  output [0:0]\douta[0] ;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [0:0]\douta[0] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .\douta[0] (\douta[0] ));
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_31_out(p_31_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11
   (p_27_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_27_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_27_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_27_out(p_27_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12
   (p_23_out,
    clka,
    addra);
  output [8:0]p_23_out;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [8:0]p_23_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .p_23_out(p_23_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_19_out(p_19_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized14 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_15_out(p_15_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized15
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized15 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_11_out(p_11_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized16
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized16 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_7_out(p_7_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized17
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized17 \prim_init.ram 
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
   (\douta[3] ,
    clka,
    \addra[15] ,
    addra);
  output [0:0]\douta[3] ;
  input clka;
  input \addra[15] ;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[3] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .clka(clka),
        .\douta[3] (\douta[3] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5
   (DOADO,
    clka,
    ena_array,
    addra);
  output [3:0]DOADO;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [3:0]DOADO;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.DOADO(DOADO),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6
   (\douta[4] ,
    clka,
    \addra[15] ,
    addra);
  output [0:0]\douta[4] ;
  input clka;
  input \addra[15] ;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[4] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .clka(clka),
        .\douta[4] (\douta[4] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7
   (\douta[5] ,
    clka,
    \addra[15] ,
    addra);
  output [0:0]\douta[5] ;
  input clka;
  input \addra[15] ;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[5] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .clka(clka),
        .\douta[5] (\douta[5] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8
   (\douta[6] ,
    clka,
    \addra[15] ,
    addra);
  output [0:0]\douta[6] ;
  input clka;
  input \addra[15] ;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[6] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .clka(clka),
        .\douta[6] (\douta[6] ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_35_out(p_35_out));
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
    .INIT_00(256'h2B00E446749CB94264641EAC7601D50BF1EB6C146BB8B5570D81702B07ED8C21),
    .INIT_01(256'h25878264C28E9C4F4D85EB791D60B60A9878FFE24972119FB7DA0D467E41E383),
    .INIT_02(256'h0D67E6F291D82CFEEBFFE15704644D094C844C1CE0EF1884917EA737DA11DED4),
    .INIT_03(256'hFE1EAB033384102F7321264753723CCFF3B21003676A7B6F876E1D1BA3F75131),
    .INIT_04(256'h3E2F58A0F9BA233E2F04D38085E00F82CCDA15EBBC40DFF4C8D1E89960361235),
    .INIT_05(256'hC97FF401BE4C01BAAE34805002D48C26928213C7F03F228C901DEFAED417D9DC),
    .INIT_06(256'h97FFF920FCEF7735FFF866B703002681851348342E662A03D1825AF00EAAF37B),
    .INIT_07(256'hF151420886E0FA27FCE213FDB978080601BED6E300009002A2E41230083524A3),
    .INIT_08(256'h96808781603FE3501B43ED8A9C9823FDED34F328C32D2373CC9217010533883A),
    .INIT_09(256'h21BE983EF2FFEF80C000000874C71E24DF55190A106ABB922450665F5C002EC9),
    .INIT_0A(256'h16A518282DED9AE6FB280F4BE78BA2004F0A377FBD9603FBDE8BDA82EB219E01),
    .INIT_0B(256'hD9BEE5AEE35C0589C7410E69C773FDFA275C44BDA19001FC0278FBFAE71E11CF),
    .INIT_0C(256'hA1BF95B5023FFB17FFC33FB9C6084AD2734003D7E1E06B2D679D64C9B10C17CA),
    .INIT_0D(256'hFC3E0E59061D4DDD4327550EC7F573FFF32E1901A4C5943B902433C7B6337CF8),
    .INIT_0E(256'h519C1C5BF260A8FC8003C13980201B05E55007E713D1FFFB8D51905AF9E9F884),
    .INIT_0F(256'h183B8C1097F303D9129708A725827CC0034053DC8182E9B8547E63C170BFFA99),
    .INIT_10(256'hCFC4419100790B09683DA204E0DCB99E438735A4B0780003E70731B550C038E4),
    .INIT_11(256'hBC52FF9C8067BFCA7780D600001C1109C8C78565605F91CEDB08001AFC400343),
    .INIT_12(256'h00086060447C0FAC32BA410071C155F3900031F8735A3AA02151078A5842A242),
    .INIT_13(256'h80FF2FF8C7F0ED780180BC20FE17436F7F000060A3E3809AAA20002BE24CF0C0),
    .INIT_14(256'hC0320084BDC1B6E0FF4E018DA01801DA89441AE50CCE9BFA0110C802001347BF),
    .INIT_15(256'hC948C0436A0E8C040384E33FFFFFFFFFFFFFE5FF7F02CFED03CB24C7C3637D84),
    .INIT_16(256'hF9FFF7A3001E0A1B2ED4E3432CA31876FE7718EFFFFF7FFFFFF7FFFEC00E9C84),
    .INIT_17(256'hC3FEF7FFFFFFFFFFFFFFE7CFFE16559607038306940A900F000E7FFFFFFFFFFF),
    .INIT_18(256'hCFB5BE7800FF01E7B7F7FFFFFD96786EFFF7DFBF6EF902A72CC18AF122067F00),
    .INIT_19(256'hFFF68389D073A6B640F5FD81F804BFB536FEFF18B82007FFFFFFF19B8296369B),
    .INIT_1A(256'h200AE11290BE1FEB0B0CFE5DFFBEB043E7FE83F84013A110F3F85CFD12413FFF),
    .INIT_1B(256'hC3F00008780D8F525D681401300FC0EE94658BD6C3F4B901BE83F00600C1A168),
    .INIT_1C(256'hB9B8378967407E21080531FA3BEFF9F78D0101DC03880ED9F6FD8D20892CE1E1),
    .INIT_1D(256'hE180BF158CA7785AFDC310021C0478820120C90FE22002032FB103E310BD85B0),
    .INIT_1E(256'h004E4C90B82215C9FA3800FC4D02D3EBB666CC7C4BFE017A5C2006DF347EB6A7),
    .INIT_1F(256'h2F49C7700501F6061F69FD260122F37DFC15E54C616FFF9A7027491FFC05D32F),
    .INIT_20(256'h44049EAC0FEFD40F665FE02158CA3CEC24FA48407161CFEE8684AD0A040F15E1),
    .INIT_21(256'hD02931DF9BBE90FF0FEF70BD3D1DDE21BDC113476F11107160A000B567DFFF62),
    .INIT_22(256'h8CB1C2546061DE01C16F38ADFE59FC87B56E340FF327ADC00FD7EB7422109863),
    .INIT_23(256'h1C6D240BE30BFC6B74DFC2C0567771AF552E76CEF57C09E35D6EE80D06A2100F),
    .INIT_24(256'h535961202E2FD7E4021FE565924BEF154C76A2D6BDE6C2071261917D092F10DE),
    .INIT_25(256'h0ADA1ACA717C6287711A00E322FCD31D2FC736C25FE71CA152EB9D7B331EA81B),
    .INIT_26(256'hA7E25114D225EB94EE7676B05247F8ECF828A570AA40DAE0AA423EE002439F90),
    .INIT_27(256'h5202FB58E3490483EF1F428498B00BDA1FD05406691C6D6FE3F260BF58AB8E2C),
    .INIT_28(256'h221444311FD91E42845E1764138285022A7747066A93C41CD9212508746E4691),
    .INIT_29(256'hB6B973E350504EC71033B32C595510E05FE5C0004B99E997C005338743B4C172),
    .INIT_2A(256'hFCDA83B15531BBB97C7397EAF470C76DB080C5F39C964FBAEFD888DC0D73C0EE),
    .INIT_2B(256'h43A458C00A4EF352B960E8AEE6510E637E18F41074534A1C983D7D6E13035BAF),
    .INIT_2C(256'h01D8351E14615244C273219FAF1680812012FB4E011F3A980346A0590B190C15),
    .INIT_2D(256'h94DB72995FFF4F839BC2F2CE66C8F4EF7C1FDFBF8F04A7CFE0496BE1561E33CE),
    .INIT_2E(256'h663FB32748F3C28A5081C3647D93C324A00704BC0EC79827D767FEAF2C831679),
    .INIT_2F(256'h52560D1EE5DACD489AC6371B228F844FA8C02F3862C96F2120806A368FBAA71D),
    .INIT_30(256'h877F758C8ED31E31FA329DEAC104CFDA173220488C683FD03D43F7DB646B7714),
    .INIT_31(256'hC764033B7D01319B2D4E101A0BE467F8C227E0F78837F67417440E42044A28AE),
    .INIT_32(256'hB8CBD644E87D80ADC2ABADFFDC5347C68D86B103466F9DC5A7B33AE6BA78FEA2),
    .INIT_33(256'hC25AB815F8C81FF9E76AFFC47AB2E8051B42813E52F3D80E85C15E0610ECD87D),
    .INIT_34(256'hC395A7F198A4A261A88F100D6A5BB1628258B7F7F79320137063E6EF303C7E61),
    .INIT_35(256'h64F1730B81F7E45201F27F87C21831E737AF75E0EBE85DC7E312E17454EA538E),
    .INIT_36(256'h84B37C68E5BF103BD0A5085828F94038BE7307C883FF261E0AA6BC3760E17672),
    .INIT_37(256'h61427D6197206A3041132607F10179F2CFFD51142AF3980AD39354F25E2110B5),
    .INIT_38(256'hBD36DC5C1A792953301C1E18FA2930024E43083551F66ADF42178FD0220A5E07),
    .INIT_39(256'h7B729C83BB45DD04B7F6A829586BBBA008B642382712BFA78F6767F7C82A4744),
    .INIT_3A(256'hF7C7AF27F0CC5F9BB9CBA749180628E760082200C1842CC0D337A217A26A2AC4),
    .INIT_3B(256'hCC80BA8DBEB8F5823B14D90094EC3667E1E8CC300441724CD4F6001763ACF447),
    .INIT_3C(256'hE13808FCA1C37523C3863A334EE719F23A56808B8805A21BF1E2FE0061658DF5),
    .INIT_3D(256'h81E574F79114EB63BE35311343F587330FCB282F7FD19B936E03DC12278606BC),
    .INIT_3E(256'h1C943D9AA97B300F7D00308208BFE6DE9B610657F5BE187E6D39D9329BF11B18),
    .INIT_3F(256'h7B4BF8F2054F4009317B68F430200BF11086751D1D93BA1271606BF5A03A5E28),
    .INIT_40(256'h19E3205D814EA592CBFF2206148807C161E80F830673C48209D4FBA799E152E0),
    .INIT_41(256'hCCD3407A7ED62D98F3503F8D86DAD3CBF1430415FFFB7195F171824E2979D4B0),
    .INIT_42(256'h0067FFFBB880088A427FFFA07E8D9166E49E91C208C47A43128029FD8A72F001),
    .INIT_43(256'hC2C9FD1174C903805FFF6E5998CABBC06FFE3B939197E6A5ADE76B79F810270D),
    .INIT_44(256'h91821914D36193E0F3F2F015210781BCDFFB3770DB15E000380D9802EA07239B),
    .INIT_45(256'h4B58DD6262461067D3BE3007C630407B655EF68A21C37CFBD0DEC018EA600009),
    .INIT_46(256'h47FA5F043BFFCB92FB08E07B46301FB381E890C0B309FD88F8B406BF825FFFF6),
    .INIT_47(256'hB7D88406EBFC9463FA1F448A9961E7A318581E38114FF1C7E051DA4303A7BE59),
    .INIT_48(256'h9CBBFF663CB4B130918C219B68A4B1793E86470D0070EFDE60064668003D8A25),
    .INIT_49(256'h04CE03C76F808013CE9C8E27A2227FA00933FAB9C441F7DE8667E402A2689045),
    .INIT_4A(256'h47FBE47CE2F1008040031BF70BA079BBDCCCC7A141C3D62631BA0F0E3DA27E01),
    .INIT_4B(256'h19A1BEF7CFE07073DC9480F5FF01C1E0010F347CBF0C971182EEE82F57B80C4B),
    .INIT_4C(256'h914D749C3DDC04FA0D86E7DE0164D5A3D51761B734E0200014E1D6281F53D2A5),
    .INIT_4D(256'h616C4F7C010041337F55FF8F5631AEDB3067C208687FF7B5C3FAEFFCEE020029),
    .INIT_4E(256'h9689E406F0739D739D3B7001B11C834ABCF1DBD69C3BBDB0BF850077347FDCE6),
    .INIT_4F(256'hCF411EBA07E1CFCD3EE827C7E0F508DE4888008DD2A5BB4BFDCDE5997F4651EF),
    .INIT_50(256'h00389DDD6DDBAEC96E5CF00A2CBBE1880ACFD7D191709F1E40000A7CBDB3FDB8),
    .INIT_51(256'hF74D3D542BB68400004697AF8C5C15F1C597BF43FB02C3C78CAB83B59B80AEC4),
    .INIT_52(256'h6F9FDBB43A5D3E65A1AA7712EB580003D6753CF07CE19C4D9104F7FF538AC7FF),
    .INIT_53(256'hAA3DD867E86E21E7EEC7C785F3EBFB78314C09179000079817BDF251B6688878),
    .INIT_54(256'h065C0C40F3F18C6E1DEDC561490B8F9F3ECAE16329CC0425C161EED98021C757),
    .INIT_55(256'h4258F2EAE6EBA5205DCEA3ADBC11EDB7A103E9C17D817CFCF5036421FF472CDD),
    .INIT_56(256'h8DA1F20FDF52C012BEFBABAE6D0CF5FFDB02DE9F7292CF00B695044083AB7B46),
    .INIT_57(256'h2CC3FE151E20039C4B2F0A7F15B860D4EE9500B6335DBF92702DD54A23B7134F),
    .INIT_58(256'hBD99E2E685823DBFAAEA4FF806628C00DD0F2F966A9409D77B71FBA1D42FA4B0),
    .INIT_59(256'h78DF6840EEBFC3247DA912373BE9DFBC5FEE748C029D62D0CD140293549F6F35),
    .INIT_5A(256'h24537088425258F82759EB87CF8A7EC308EA3D246FFFD6746F0D50A1526A3027),
    .INIT_5B(256'h7BA1FAE7F83634C377BE922BA1206438A4294C4F60F93AEF9D0DB4A4DFE2006D),
    .INIT_5C(256'hC571CDF8FF9E6F52216BC43BF80489E7808CE061FB0AF087C5E2E64C494C66DC),
    .INIT_5D(256'h4625B2F07BBE2B866C6C9D36BE66645059F27209BB81C34E818509F430D692C9),
    .INIT_5E(256'h7BE1D1420AC00F46F8A92E291B03A373AADCB3130CFCA07C7E71BFC30FCC8501),
    .INIT_5F(256'h367A137E38EFC3F083B127F3B4E31EF9BC08426B18FE716A2258DDDA7FB07FBE),
    .INIT_60(256'h84C09DF639B07E74A32378CD27E9A0DFE091E8A057523DFF00074B03F833141B),
    .INIT_61(256'h4E81099D858FA584F79CF2410FD5B24DAB10F030FCFFFF41A9C7C21B1802FF33),
    .INIT_62(256'h10FC38800012B7806F0C9F13DF4F17FA51C2087FA59E81EB18333FC33FFF4277),
    .INIT_63(256'hC73BC4A742509BAFC819E0005CCCC8928DD74BFF1F0389C9CE15A1D74E63B110),
    .INIT_64(256'h93D2120DF674D0E67DB7BBA7F2CFCD900A0827D98A0803FF1BBFB7AB4323DB50),
    .INIT_65(256'hF4699D85BB9086DF34AE16C6ECEFD83DC7D15630F789440403C430DBF707F053),
    .INIT_66(256'h7747C7C281C3B86055F5020989796BFDA56407DC7F33F3FF5FAE51A7D4430077),
    .INIT_67(256'h331B45D72FE8DBCF0D47ED7CF4F32847571EB9FCE0A7DCC0FF0D3F66597D7A7C),
    .INIT_68(256'hD9FE6566623A4E6A329E3AB792BEA2CC57F9F800DC1EE7D208723F742B7404D6),
    .INIT_69(256'hFF005E3B59AC89DBF84D3F128C421C09FE25503EE3EA514BBBFF3840EEE5C413),
    .INIT_6A(256'hAEC96D14805BFE6E06306C5F8C44363E6693E88244AC0B94DFFA9A9FDA7183E6),
    .INIT_6B(256'hF46C78208AFD5B3FAFE73D0D5BF06BC30E700A3A34DC1F2FB782F400200394F7),
    .INIT_6C(256'h3840E731DF1CAD78EA616191789BFFE78D1E0F2013BBB8FC715D8EF7FD17E4CF),
    .INIT_6D(256'h25791BB77B8FA939859FF4FBE5ED4B88C75D636EF14B84CE1E584A64E3B7EB8D),
    .INIT_6E(256'h19D9DB40FA0F8F9E01FFF8310E7C425077FED921BB3DAEF20000FE10CCF9C624),
    .INIT_6F(256'hF98114642B41A1F0456FE1DDCA88103EA8FF81ECCC721CA1801D00014BE7400C),
    .INIT_70(256'hDC858E4B88A6002D893FB9A4400089677D4FC273B63A1AE876D09F920EAAE061),
    .INIT_71(256'hE6C53C48EE491C53EFCAECAD000498737E7D75440E1BEEA153F5EFD6E557246E),
    .INIT_72(256'h0F00017DA4B1578335765CA5FE11EAE1F567804000CFE05B70A2C6007D4D5B27),
    .INIT_73(256'h50142C01206971702002074E22BEFA5B7E43404AB014095F5CD0A0060438E2F0),
    .INIT_74(256'h6B718C80269F05020060481F7FF6E88000606C31F6185C107A2D84880027FEC8),
    .INIT_75(256'h3248D892E2522906C1E69EEF324841C0010D1F47FD8A0006C0644C7179BE136C),
    .INIT_76(256'h9B9FC3C403C8CF91E7B20F1CC26817397D7BCC2EAA52006106DB4FD286400D99),
    .INIT_77(256'hBBBD3600C01053CA1F87D0257126BEE53504956F680FF2EBB7D7FF6218E4344B),
    .INIT_78(256'hA40F27B96C2CA995FF4312AB066F886FEE8136BA13CAFF0C4677476E7FFC761E),
    .INIT_79(256'hE269C0ADFA0EDF005D209DFFE5C7FFFF4002130D40D35E9F40136881D3B13A47),
    .INIT_7A(256'h0858AD33C41E1E63930BA9F8344F1D494C1FDB65873FF6A9855C81453B7D1E87),
    .INIT_7B(256'h0F28FDDA6C7B138C241267EB97396410E9FBA7A47F8043BB4EB83DC2BC3D9521),
    .INIT_7C(256'h3EBFFBFC4B38383CF71FED9F86068600B460F0B7B8CA01D06366FCB5B7C4A88C),
    .INIT_7D(256'hD2393E142009B93FF01F24538C0F5741ED1DDE5291060C4903DE1F0C1032F440),
    .INIT_7E(256'hEF208448DA0348EC22E68894568D4A0444C81FA84E2060381F7D58960150809F),
    .INIT_7F(256'hFA064E10E71053FE1862410A4864443BF200009BD96290EBD4771F280102F8BF),
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
   (\douta[0] ,
    clka,
    addra);
  output [0:0]\douta[0] ;
  input clka;
  input [15:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__0_n_0 ;
  wire [15:0]addra;
  wire clka;
  wire [0:0]\douta[0] ;
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
    .INIT_00(256'hE0644B044DF39F168A6FF092513B73BD854284F2404815CB1304318D5D9FC9C6),
    .INIT_01(256'hA55612E188E240E07C9D0460C135304119D09A2817ACE691038E28AAD01047F6),
    .INIT_02(256'hCDA40815E80C76442E3C854C2920302061012FDBBDCF0BE1F6281009032C8488),
    .INIT_03(256'h71BCE1CD0FE789802000061277700E1459166CC546406DDD308F6CFB5B000BEF),
    .INIT_04(256'h75401F832464C37D3BA7BF0B96EE4A3875200080EFF930840006C10F20439972),
    .INIT_05(256'hDAA28DEE0ACB00367CD052356FE48DE4E9BE0087FDE00082D0109BF5FAC74400),
    .INIT_06(256'h64F5F378B0442FD5213FE5A70E001C388CC033AC4BBFE1EED340E9FFF7E9EF2A),
    .INIT_07(256'h1D1E9F421C7F3C449DF3A1A0C0B8BB90BFFB1BA6507E59D8487698E6D0C3CF4C),
    .INIT_08(256'h8980025DAAA25041C23208DEFA99866BFFFE11341125031E5850D8004BAB3704),
    .INIT_09(256'hA18BC611E32801279042806D9C603835670EE97B312CC1FF5E794B182413BC48),
    .INIT_0A(256'hDCAD718450757F88806200F120000328A030336EB0468C4D8EADFB710280FEBD),
    .INIT_0B(256'h1CC0395D204166FC927AB4E443FF840F3E6CB2A0000059A13810B0B27B7EB9BF),
    .INIT_0C(256'h000000000000000000000000050F5D79B0C2CCA5EF232BD8F5C162000013C318),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],\douta[0] }),
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
    .INIT_00(256'h7FC000807BF54E092CB7C7338D01EF2868413078BBD328D78C73800E83F0FA4C),
    .INIT_01(256'hF180F572260D82DBC041407EF7F7A47657EB32BE84EF3A14AA22CC0007EC6780),
    .INIT_02(256'h19FBCB6E6B52DFA093277ED28D1EF10C986B4AFF4FE2084FB98BFE8BC6A5F190),
    .INIT_03(256'h3FFE84726B5C0B1B7C7C21F5C7DEB57391A1B6811D2A8C4A22A4FEC335F0BF08),
    .INIT_04(256'h46F8B0188790F3E96D052383BC1819B99CE46E0E7C7AEBFF3D70E37322CEB8C4),
    .INIT_05(256'h80E4F9F2F6B5FFEEF41FC12431F4B32593CE1FE438226FDD6C7B32F4ECE823DE),
    .INIT_06(256'hF87EDAB629538CC97EFCFD5000001E868F018C02441DA201AC324A09EF43250B),
    .INIT_07(256'h230119A881C258FDC58BCD2A67888FF9FE41301C000163FCEFF6C44858A12510),
    .INIT_08(256'hE0810783603FC0B06A92D93DF88ACB04359FD46BF8121C801FD008010100000F),
    .INIT_09(256'hFE00903989012FD4C00006087CC71E81BFCC79E9C7B3F1F22FDF80D6F8C8311E),
    .INIT_0A(256'hA1A9764C03ADE701001C4F9B11DFD0004F0E377FBEAD7FCCCBC04AB3023A9213),
    .INIT_0B(256'h9FFFFFC661AEC77BF3674EA3F81700002FEEE12339F001FC02FFFBFE5F03E48C),
    .INIT_0C(256'h065201D503FFF7BFFFFC477A99E203C273008C280E400B3F66E43BC9D10FF7CA),
    .INIT_0D(256'h8000098906F2EFA41827F50FFFFBBFFFFC37FEFF3B058DFB8D69CC21FC1377F8),
    .INIT_0E(256'hAE22E1AA0FE14E00000079FBB3DF7B9FFDF007FFFF5BFFFC37BE4621E066F8C6),
    .INIT_0F(256'hF83FF39EFFFC54268C408601C7C8000000BC7CDF7F9BAEB8BC7FFFFF9AFFFD37),
    .INIT_10(256'hFFE44E1EFF8127F8E43C0DFFFC708621300C3118400000016737FE7BD8C1BF1F),
    .INIT_11(256'h71CD00000062FFCA8400313800C0DDCFC6D707F851C0403151A342C100000143),
    .INIT_12(256'h010E766010832C821500000070C199F149FDDEFEBF39C307334E85DB40024C82),
    .INIT_13(256'h80FF4FFFF80FE33BF2D984300453CBC300000002FDE6E0DCF3C001EFE1C580F8),
    .INIT_14(256'h14CDE6553FCFFFFFFFBFFFFFFFFFFFB65D147207A62B2B00010E97075C5187FF),
    .INIT_15(256'hFBDDB1BB63006DA2D81D7F3FFFFFFFFFFFFFE5FFFFFFFD679D225615E3C30003),
    .INIT_16(256'hFFFFFFFFFFFFFBE790951DC3236B602EF1F718FFFFFFFFFFFFF7FFFFFFFF9C65),
    .INIT_17(256'hC3FEF7FFFFFFFFFFFFFFFFFFFF5FAE95A831431FBFA65FFF000E7FFFFFFFFFFF),
    .INIT_18(256'h0A186E8800FF01E7B7F7FFFFFD96786EFFFFFFBFC314CF7A4A837AE795867F00),
    .INIT_19(256'hFFF1BDDF27BE8D2FF03BFA01F804BFB532F6FF0AA0A007FFFFFFF0559DFFD6F9),
    .INIT_1A(256'h60A1308D003E1FEB071C91F987BA8DBFE7FE03F840138014F3F858E3E0013FFF),
    .INIT_1B(256'hC3F000079DD7D04FA7B834FE000FC0057812944FF3B77901BE83F00600540460),
    .INIT_1C(256'hCF56F616D0807FE108000C23686C00E7D5B998600387F016301E4B2552CC01E1),
    .INIT_1D(256'hA1197B09B2AB7FEEE7319F0D8007F88200D1EF1AEBF88AD3BF7F1C1B1F80E38E),
    .INIT_1E(256'h0D4E6D8370F23C3BFFFC1CE255F2AC38F62220804BFE0101E6BCACDFED9ED5B3),
    .INIT_1F(256'h0DB1C7700000C112AFF7C5C7AB33571DFE2BFB516B471DE7F026B11FFC002E8F),
    .INIT_20(256'h50FED1B78BD62A00F85FE002E79A9AEFAAFFEDF8A1D937FB338BC7FE36E7037C),
    .INIT_21(256'h5BF7DD89F43D447FDE047CADFDED9E7E3DC08F37867E907BE0E45E555367F88E),
    .INIT_22(256'h796831DCDEE86BFDF41961F7FFE0FEA30CAA3AFE5967AE00080D7B2C96ACF273),
    .INIT_23(256'h1F9B991B93F003E483C9305D0DBBFEBBA7CB8BCD2E7D53BA486F1C3A26A3E000),
    .INIT_24(256'h5EF1766A542AFFAFE2009629EDFF93FBD576FBF5C7259AB0B383826B0F079420),
    .INIT_25(256'hF71F9E722BA15FDFBCBF92E520D018EC814FB4FD401F18504A9FBAF9694839C7),
    .INIT_26(256'hAC016E7F3392FD7ACA1CBCCBF195CACC7AECE7E50E093281C2843E1FF83E11BD),
    .INIT_27(256'h570192FB83DE21FC8ABCA67CF2BCF7CB7C1E5B67A95D7EFD1BFFE588D9FBC44A),
    .INIT_28(256'h1B67D36117F9D05A03DD5711E49FE7E73BF0FFFAFBE406EDFE0E46297D977FFD),
    .INIT_29(256'h7E77C4248256ACBBADC2B50CDFA5E81BAF25EE570FE7F4F7C1FD6BF4DE6CFF67),
    .INIT_2A(256'h607A7CE56200E079D714E022628C79B279F0A3FEE09C31FA8EF86F10695174E1),
    .INIT_2B(256'h839F9F0DDB3018FC38ED72D9C7C0E7647E8A248EECBC5FF0B9DB7EF030FF720A),
    .INIT_2C(256'h221851E971FEEBC1FD9FDDC8A0127E00BF37944F808FB69364843AD03E8873CD),
    .INIT_2D(256'h2B13E0DA980EA001C3D598F9F2E0F3C99C654301812E251F05E66FE0539EBD84),
    .INIT_2E(256'h7808F60C31B00575A3B18174D6400128D15E64EA0707FFD6B1258001EE029607),
    .INIT_2F(256'h46EA0C733DFA301EE1E7EC32A705BFB708B414E8D00322573D406A0876FF76CD),
    .INIT_30(256'h843D040020F07331FDB61636FD7D4D30EF200146871FC003FDAB36A000204447),
    .INIT_31(256'h206676FBFEF83D636A8F3000EE967E55AFEB1785F844B27724A0036E77BC7795),
    .INIT_32(256'h4532FB32C91B188842C4B9FFC1AB3FD50FB780CFE7EE73E7A80F02FF720E6334),
    .INIT_33(256'hF87C9A8ED43024071557DDD26501C801CCC08000A9CB980EF7F01FCA1A93787E),
    .INIT_34(256'hFF86200C20FF7FECAC72B0CD145C02E31FE8022C2071253977807EE125787FBD),
    .INIT_35(256'h9C8C8340877D1BD1F973CEF7FFFFF817F5BF66167C1C720FE3BB5E8034E8C901),
    .INIT_36(256'h4733C7B60DF77BB25F47C506FB885F3D3F90B7FFFFF8DEF7B529F6F80081BE66),
    .INIT_37(256'h41BFE13A69BBEFBC6FE30EC1D73760070F64344E29096E8EDC23BF67FCC59EDC),
    .INIT_38(256'h81E2C5F3EC0F2663FFFA79E2943724027E7B00C341F7817E0C23772FF9EC9E0A),
    .INIT_39(256'hE531F4821B74B1A236BE27CE6064CB83FFA1FA61E9E2603B000735E6CEB49683),
    .INIT_3A(256'h9993BF3FB008A00FB03E217DD8D21ACE201FC3872EC000B1CCA0F277D9DE4D39),
    .INIT_3B(256'h331C90F9CFB44CA8F41FBF4FE6F30F881B9D9C00FBDB3A23170061A5CF0DFFCF),
    .INIT_3C(256'hE0C0AB4ADCAFF6DFF4477E5FD8B06F043DF68EB26FFD5400DBE00601BBACA3F6),
    .INIT_3D(256'h79E648FB7E1CB860C2B0E22E2FF67F3BB12B7E31E3FFB59FE14FD86AB9C80B1C),
    .INIT_3E(256'h0F67BE9FAF80FBC041C133F400FFE1A093F4B633F67E1E7C63FEE49ED7D60F62),
    .INIT_3F(256'hDE27FE72077FB23EB503C2963050040DE0FB82061D91E2552BD527F6603BFF93),
    .INIT_40(256'hFC0FFFDD9B8E8036A7FC62061568DC7F68F3707D080C3EFD17EA035F9BDB9AEB),
    .INIT_41(256'hCC73BFFFFF1809FC8D98FC1546D55EA7FE43041387FDC9A5FB7F7C41F6F9773D),
    .INIT_42(256'h0077EC0292E01688C27FFFFFBF0E1D9880FF9992253D37BC93803C000991301D),
    .INIT_43(256'h601ACC34D3F68F807FCE008698CCB8C06FFFFFD3121918C33CB3982461B7D88B),
    .INIT_44(256'hFE7C6F976D80D3806E812ECCC00E81FF035B64F0DC10E00037FFE0637C7D411B),
    .INIT_45(256'hFED8DE81E2461FF83CC3DF7DD8F0C064E56A4E093CC2FD83C9EDC01F11E0000F),
    .INIT_46(256'h2FF67807480607FB7B0F91FBC63F83FCFF00EEF0B0106A9A926C02B88374CAC1),
    .INIT_47(256'hB8E0E3346794A457F620C606989B98641F8BFFF81EBFFEFBBC6EE46010553AEB),
    .INIT_48(256'h7FC7FCE1FEBAC5FFE6633067311A677BC104918E03CF5FFF03FE7E6F1FFE5249),
    .INIT_49(256'h0230680D98FF60FCB1FEFDF1B3C47DC5467C6881AED7F3E2070028714DB8DF00),
    .INIT_4A(256'h302DFD2BF68300C8186806C9EFFF86F03EFC07BA85FDCDA05E3614FAEBB64781),
    .INIT_4B(256'hA1C62EFBE809982DFDFD95F396000000C007DBC37FA0E4721FD0913069BF723B),
    .INIT_4C(256'hB69AF8F3EC03E403EE2BB1EFE8BF47E1BA92EFCC7F8000108A568DEFBDF8BF3B),
    .INIT_4D(256'h233F4B8200005A8C000E00B885FDDF1C41FDF786BB6DFD2949668FF3D000012B),
    .INIT_4E(256'hD9E70923DFC3C2D0209E40004E010C7DDB0C7F097DFC39C4C3F4DF2CBDAD81AF),
    .INIT_4F(256'h5C68FC34210FB7E86EF92EDBAD74D993BC60003C716244200975047C787DAA7B),
    .INIT_50(256'h10005C46310EBCBF7EE0F9F3FFEFC008FADE3AF3F3220B129800029782859E33),
    .INIT_51(256'hFA5E2338407BC00000853F9DE87DDF4585E7C27F67E18B724724E97BB30DF308),
    .INIT_52(256'h16641FFB33F595DB04D8B548D15000015C9B8783AED7D357E7A763BFF523F6C8),
    .INIT_53(256'h719A71A8EA70FEE8DD0749356B19CFC90063AE27C20002B46D620DE0B1DEB73F),
    .INIT_54(256'h074BC8003026C9C7D77A33D8FB1459D89FF75DCE8C434F2737828FBA001EE859),
    .INIT_55(256'hFBF451FC8CDB7543400EC16CB820CAC5876B46F762A1CEFED5FBC4B5A65D5B48),
    .INIT_56(256'h9EFE7DEFC37037CBBAFFD2B57555861CF9014EB08A820D82CFFAF77EA1FE792F),
    .INIT_57(256'h60A7D66AE640678B29A91DBBEE071FF20E9E2E9E68C473E4BBA55AD7AEA98197),
    .INIT_58(256'h241FD62EFDE20289A75DBE45C09C9388186EDFE1067FDA8A04D9DA6C44B3EC30),
    .INIT_59(256'hFBE270CBBF1F37363B9B388D3259891BE2594FC1FD012CCC1F547D1FFFE77BD1),
    .INIT_5A(256'hBC8CB3E43FB7C3FF33F7A7D33A12C1D31A29F7E46966ADFE99A2189B8E0399C7),
    .INIT_5B(256'h34F09C63D8C7F2BD13A2E9EFBB32F772C5371D16B96F07EB7D05F4ABD743FB1B),
    .INIT_5C(256'hB290064DA2BC1DED996C0191D2B400A3E8E3E38F5DFEBA3EC79399857C66D23D),
    .INIT_5D(256'h072B3FFD12FF31E3F24FE4120DD1FFE0EE00218A9A0FFFB36B860E107C78C7D3),
    .INIT_5E(256'h041F8081745CEF07412FEC98C549E0E3D2DACA18BB7FB02F800C07B122F8783F),
    .INIT_5F(256'hF36570FE2843FC0F7F008D5C7BE01C3BBFDEF31312A2C18FFCD064B9FFA147C0),
    .INIT_60(256'hFE92CFE11FE0FA40A810F8D183FE7FFE2393E77C105FE36FCF731A01E45FDED1),
    .INIT_61(256'hB9EEF61E5E87D8FCB20ED61F2E75155C98F0E9870FFFF88081D831241FEA2FD5),
    .INIT_62(256'h0623C20FFFE413AF5EF314299F7D5FEFABED5F3AE7328558F835400EC000600B),
    .INIT_63(256'h99FC5F352EC87BAE1EE006E080BE346F7218479F9D7A8FC3FAC29CC4A6E648F0),
    .INIT_64(256'h1B1BAC0FB11650B24A3D44E96E3FCEA871F7C0501F61FC001D5557ED7E2E1EC8),
    .INIT_65(256'hDB5454327C6008B7B6E01FAE504688562EC9026C0F80F80A001312A980F8001D),
    .INIT_66(256'h0B2C3FC78E084F992EB5C1FE707DB61C247FCB2CD5F28AC5C5AA4C1FD9980C09),
    .INIT_67(256'h17A3CD533EA73F69A53FE6DF030DE7AAB761FE007E03EDBB7F57D3A353E144AC),
    .INIT_68(256'hDE0079BFDEA14F21A299843330197FF72FF97FF723A0456507FDC178B3B1EB5F),
    .INIT_69(256'h0F93F176FCD277DC0071BA26CF43E790E5E019671CFF9F37B43F87F228AC4D0F),
    .INIT_6A(256'hB646F1F34F27FC978FFD576A923BF9C07B30613944BFECF821D3C1FF8B1BBFEB),
    .INIT_6B(256'h58FA7BF3FB2F5B0FD19F0AB177F3D417D5FCC22E0FDFE132752F0700B35B1E54),
    .INIT_6C(256'hB9101FFE20A1CD40B667D31DC13BE1AE91983DEF922680924494EE0FFEE0FAF9),
    .INIT_6D(256'h5DFBFACC61044C9C103FFF03B74BE73EC7E23BD6B250D5E330EE41E40B93C2C8),
    .INIT_6E(256'h04080AF67CB530FF3678DD49008089409FFF01F42CB2D0FEED1D7C6AB868D6F9),
    .INIT_6F(256'h29E3DDBBFC7FF77CBE048B81D356009E78DA52780270FC5FFFE1F449CC987E76),
    .INIT_70(256'h28162EBE5859FFD02FB837977FECB6AFDAE2FD07425E8018E1C5B630D2781FFF),
    .INIT_71(256'h368ECD2C11DD8CC66803F9EC7FFB6023FF43067FF87C6061C0C1396D1CBF9C29),
    .INIT_72(256'h53FFF40DA3540C1FB69A3A55C34029C02F0580BFFF2FF7C20F9CFFF372028B0A),
    .INIT_73(256'h706FD3E41C368EC7FFFC9706F58F07F98D3DBA160008075136D05FFFB7EDDC8F),
    .INIT_74(256'hD760580000EEE3207F99873BA40ACFFFFF0963F2AE18FDFA0DFED390000B703B),
    .INIT_75(256'hDE181470FEB416BFDA92A3AEEFC6603FFD1C3FCA077BFFFEF13716D079E95F1E),
    .INIT_76(256'h38DC37FBF0359517A0180618ED12B5F6838850FD8672FF9F9D73302BFFBFFE2D),
    .INIT_77(256'h3BBF8E002C64762A1463FFC88EEEF20BEA0250660ABD5410BD37FD0E1019C3D9),
    .INIT_78(256'h6464057DBB78C69DFFBF00140CD56AA06EFEC146B2164023DBFB0E073DCFC0F4),
    .INIT_79(256'h01958D88CC7685A947437F44C1E0FFFEB414450AFA63B9CEAFE09455A687B0BE),
    .INIT_7A(256'h086E3C767FA7F1806E6D14DAC3E0A7FBA57DA542A03FFE74801AB20B3CB3BFF8),
    .INIT_7B(256'h405E2DDE197F221CFAAEE23ECBC680EEE96BF021D003F6823F8F00E1BC39D004),
    .INIT_7C(256'h1BDC84631D07781E6E2A6B99FE749AFEEC5D170BC705F7340BED1BD4D517817C),
    .INIT_7D(256'hF5C1F00BDE33388FF048489FE6FF08EE2DBFDB3AE5C1C33C5C3FE7F38FCFDCFC),
    .INIT_7E(256'h6EFABC354B053F03C2F887F87A1A7FA06504F3413E38F801FCFEB95D8B884C66),
    .INIT_7F(256'hBF86BE15F8D00C70E529BA991A78D7C3FC0FF96B53EE1F23E224C09802510318),
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
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0090081FFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'h000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80C0007FFFFFFFFFF),
    .INITP_02(256'hFFFFBFFFFFFE10001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFC1C),
    .INITP_03(256'h000000000000003FFFFEFFFFFE08003FFFFFFFFFFFFFFFFFF00000500007FFFF),
    .INITP_04(256'hFFFFFFF8000000000000000000000007DC1FFFFF18007FFFFFFFFFFFFFFC0000),
    .INITP_05(256'h1FFF80007FFFFFFFFFFC000000000000000000000000012383DFFF98007FFFFF),
    .INITP_06(256'h00000000000007FFFFC8007FFFFCFFFCC000000000000000000000000000003E),
    .INITP_07(256'h0000000000000000000000000001FFFFF800FFFF8FFF00000000000000000000),
    .INITP_08(256'hFFEFF800000000000000000000000000000000000FFFFFFE00FFFDFFC0000000),
    .INITP_09(256'h00003FFFFFFFC0FFBF0000000000000000000000000000000000001FFFFFFF80),
    .INITP_0A(256'h000000000000000000037FFFFFE0FDF800000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000810000000000000BFFFFFF8F7E0000000000000000000),
    .INITP_0C(256'hFFFFFCDC00000000000000036000000058B2200000000003FFFFFFFCD6000000),
    .INITP_0D(256'hDA240000003FFFFFFFFCD800000000000001FFFA200488DCC0C00000000007FF),
    .INITP_0E(256'hFFFE427D73FFFFF6000800003FFFFFFFFE700000000000003FFFBC401498DBDD),
    .INITP_0F(256'h000000000007FFFFFFEE79FFFFFFE4EA3C0000BFFFFFFFFE70180000000001FF),
    .INIT_00(256'hABBBBBBBABBBCCCCBBABBBCCBBBBCCABABBCBBBBBBABABABACDE9CBCDDABABAB),
    .INIT_01(256'hCD9BBBABBCBBBBBBBBBB9AABBBABBBBBABABBBBBABABAB9A9AABBBABAB9AABBB),
    .INIT_02(256'hDEBCCCCCBCBCBCBBBCCCBCBCCCBCBCBCBCBCBCBCBCBCBCBCBBBBBCBCBBBBCDDE),
    .INIT_03(256'hAB7ABC7AA510313173E7E7E718F6E607C572424252B5E7845AB562633131E7FF),
    .INIT_04(256'hABABABABAB9A8A68AA791669BCBCBCBCAB7A8AAA9A9A9AAAAABBCCAA9A9AAAAB),
    .INIT_05(256'h5979798A9AABBBCCCCBBBBBBBBBBBBAA9A7A9ABBAB9A8A9AABABABABABABABAB),
    .INIT_06(256'h5969696969595959595858585848483769FF6AABBC1637371616161637374858),
    .INIT_07(256'hABBBABABBBBBBBBBBBBBABBBBBBBBBBBBBBBCCBBABAB9A9A9A8A8A6969695958),
    .INIT_08(256'hBCBCBCBCCCBCBCBCBCBCBCBCBCBCBCBCBBBCBCBCBBBBDEDEBD9BBBBBBBBBBBBB),
    .INIT_09(256'h31B4E7E60707D5F6C672315273E7C67331214210947BEEDDACACABACBCBCACAC),
    .INIT_0A(256'h8A47169ABCBCBB9B9A797A8A9AAAAAAAAACBCCAA8A8A8AAAAC8A9A8A9CD53121),
    .INIT_0B(256'h373737485859594879798AABBBBBABABCCCCCCCCBBABABABABABBBABABAA8A68),
    .INIT_0C(256'hEEEEEEEEDDEEEEEEDDDDABACCCCCEEEEDDCCBBABAB9A7A695948483737161637),
    .INIT_0D(256'hCBBBBB9A8A7968685848484848484848585859697A7A8A9BBBBCCCDDDDDDEEEE),
    .INIT_0E(256'hBCBCBBBBBBBBBBBCBCABABBCBBACCDDECDABBBBBBBBBBBBBBBBBCCCCBBBBBBBB),
    .INIT_0F(256'h8351626273B5A573214210B5CEEECDACACBCACACACACACACBCBCBCBCBCBCBCBC),
    .INIT_10(256'h7A797A8A8A8A8A9A9ABBCC9A8A8A899ABC9B8A698AACB5103173E7070707B4C5),
    .INIT_11(256'h4837171637371637373737585948698AABBBCCCCCCBBAA7937D4069AABBBAB9A),
    .INIT_12(256'h387A598B6A2849597A8A8AABABBBCCCCDDCCBCCCCCBBAB8A7A7A7A7A69694848),
    .INIT_13(256'h8A9BBBBCDDEEEEEEEEEEEEEEEEEEEEDDDDCCAC9B9B7A6A594949492828383837),
    .INIT_14(256'hBBBBABBBBBBBDDDECDABCCCCCCCCBBBBAB9A7A69695848473737374748485869),
    .INIT_15(256'h4210B5DEDDACCDBCACBCACACACBBACBBBCBCBCBCBCBCBCBCBCBCBBBBBBBBBBBB),
    .INIT_16(256'h8AAACC9A8A8A8A8ACC8A8A7A7A7A6A311072C607F6F683835172737273738394),
    .INIT_17(256'h3737373737484848483748483716164806E537487A9A697A7A69697A7A8A8A8A),
    .INIT_18(256'h828282828292A3B4B4C4D5E5E606272849595959696969695959484848373737),
    .INIT_19(256'h59281706E6D5C4B4B4B4A382828282827272727272727251B438F627C4516262),
    .INIT_1A(256'hCD9B796969695847474737374859698AABCCDDEEEEEEEEDDCDAC9B8B8B7A7A69),
    .INIT_1B(256'hABACACACACACACACBCBCBCBCBCBCBCBCBCBCBCBCBBBCBBBBBCCCCCBCCCBCDDEE),
    .INIT_1C(256'hCC8A8A7A7A697AE71031A5E607D5625183B45272839484842184BDDDAC9CCDCD),
    .INIT_1D(256'h383848383737161637693716593706D417698A8A8A798A9A9A9ABB9A7A7A8A8A),
    .INIT_1E(256'h6262515151313131313131315151515162628292A3A3B4C4D5E6060606374848),
    .INIT_1F(256'h6272727272727272626262626262626282938382626262626262626262515151),
    .INIT_20(256'hBCDDEEEEEEEEEEDDAB7A69492707E6C493838282726262626251626262626262),
    .INIT_21(256'hBCBCBCBCBCBCBBBBBBBBBCCCCCDDCCBCAB8A7A6958168ADDEE6906484848699A),
    .INIT_22(256'hF710830707E68372B5733152A4B58473315ACEACBBABCDCDACBCACACACBBACBC),
    .INIT_23(256'h9A06E5380606E58292B3E51637799A9A8ACBAB698A7A798ABC8A8A697A7948AD),
    .INIT_24(256'h62516251515151515151516262515151515151515151518282A3B4C4E606177A),
    .INIT_25(256'h5151515151515151513151516262625151515151515151515151515162625162),
    .INIT_26(256'h8372826262625162626272725151516262515151515151515151515151515151),
    .INIT_27(256'hCCBCBBAB7A5937371616161616168ADDCC8AABEEEEEEEEEEBC9B693827F6C5B4),
    .INIT_28(256'hB442315252A5A4A483AC9CBBBBABCDCDABCCACACACACBCACACBCBCBCBCBCCCCC),
    .INIT_29(256'h06E5D5D4C4C416375858D448AA8A798ABC9A8A696969487BAD31721807E6D5B4),
    .INIT_2A(256'h51626262626262625151515151516251626251518262A306E6C406E5A3C40606),
    .INIT_2B(256'h6262626262625151626262516251626262515152526272626262626262626262),
    .INIT_2C(256'h6262626262626251626262625162626262626251625151515151515151515162),
    .INIT_2D(256'h599ABCCCDDEEBCBCCCBCAB8A3806E5B4A3826251515162627272626262626262),
    .INIT_2E(256'hA5BCABABAC9BCDDDABBCBBBBACACACBBCCCCDDCCBBABBB9A5937160606161637),
    .INIT_2F(256'hF5E5D4375868796969798A6969693728DE9431F7E7E7E7C68331313131528493),
    .INIT_30(256'h626251515151515151515151626262516282726262829292A3C40637373706C4),
    .INIT_31(256'h6262626262626262625151515262626262626262626262626262626262626251),
    .INIT_32(256'h6262626262626251516251516251625151515151515162516262626262626251),
    .INIT_33(256'h1706C46231313151518282827282826272727262627272726262625162626262),
    .INIT_34(256'hABBBABBBACCCCCCCBCAB69481606E5E50616488ABCEEEEEEEECCBB7A3806C4D5),
    .INIT_35(256'h4768787968685848CD2972E607E6D6C673313131313173A4C6CDABABAB9BCDCD),
    .INIT_36(256'h5151515151515151513131626262625151515151820647374747674646677857),
    .INIT_37(256'h6262626262515162626262626262626262626262516262626251625151516251),
    .INIT_38(256'h5162516262516262515151515151626262626262626262626262626251626251),
    .INIT_39(256'h7272728282827272727272726262627272626262626262626251626262516251),
    .INIT_3A(256'h37E5D4E5063748ABDDEEEEEEAC7A5927E6B48262515151515151515162626262),
    .INIT_3B(256'h898A593716E6E6D552103131525273A407BCBBAB9B9BCDCDABBBBBCCCCAB6938),
    .INIT_3C(256'h626262626262625172938282D4F5F54747576757677867577888887888789989),
    .INIT_3D(256'h6262626262626262626262626262626262626251516262625151515151626262),
    .INIT_3E(256'h5151515151516262626262626262626262626262626262626262626262626262),
    .INIT_3F(256'h6262727272726262626262626262627262626262726262625151626262516251),
    .INIT_40(256'h7A27E6B482513151517282727262627272626262626262627272727272827272),
    .INIT_41(256'h72317352426383A549BCBBAB9B9BBCCDBCDDAB693706E5063769ABBCEEEEEECD),
    .INIT_42(256'h93B4A3E5161658474678997899A98899A9A98888A9A9BAA999A9BAA9797847E6),
    .INIT_43(256'h6262626262626262626262625151515151515162626262626272626262626282),
    .INIT_44(256'h6262626262627262628272627262627272626262627272727262627262626272),
    .INIT_45(256'h6272626272626262626262627262626262516262625151625151515151626262),
    .INIT_46(256'h8272827272727272626262626262626272727272727272626262627272626262),
    .INIT_47(256'h49BCBBAB9B9CCDDE7A3716E5168ABCCCBCAC9B7A49E6A4825131313162727282),
    .INIT_48(256'h57686879A9A999A9BAA9A9BAA9BABAA9A9A999BABABABA8A2883315151427393),
    .INIT_49(256'h6262626262516251626262626262626262626262727272A3A3C4E54726375858),
    .INIT_4A(256'h6282628383727272737262828272727272727272726262626262626262626262),
    .INIT_4B(256'h7272626272626272625151626262627262515151516262627272728362729382),
    .INIT_4C(256'h6262626262727272727272727262727262726262626262626272626282625262),
    .INIT_4D(256'h8AC469DDEEBC7A37E6B382825131315151515162626273838372727282827262),
    .INIT_4E(256'h9999A99988A9A9A9A999BABAA9A9BABBBB6983103151738349AB9BACCC9B28AC),
    .INIT_4F(256'h6262626262626262626262628283A3B4C4D50616161616474747364778676778),
    .INIT_50(256'h9393B48372828372828382727272826272726262626262626262626262625162),
    .INIT_51(256'h62625162527262626262516262727282726272A462838282B46262D5A38393A4),
    .INIT_52(256'h7262727272727282727272627272626262728372728272837282726272937252),
    .INIT_53(256'h8282827272626262625151515151517273727272827262626262626262727272),
    .INIT_54(256'h7899999999BABABABACC9BE66231849549ABBCAC3806D57AEEAC9B4806B48282),
    .INIT_55(256'h7272828283B4C4C4D5E5D5C4E5E50606E5162615464646676778675778998878),
    .INIT_56(256'hB39292A382827292837262626262627272827282626262626262627262726262),
    .INIT_57(256'h7251628282929292B47293C583C58393D5A3C4B4D5D5D5A3B4D5D5A3B4B4B3C4),
    .INIT_58(256'h72827272828272828362729382938283A3828382729382737262627283727282),
    .INIT_59(256'h6252515151515152627272727272626262626262727272727272827272626272),
    .INIT_5A(256'hBABACBCC0753C7C749BC9B06E5068AAC597A0682628272827282828282727262),
    .INIT_5B(256'hB3C4C4C4C4A3D5E506B3163736464757156868474667574657788899A9BABAA9),
    .INIT_5C(256'h82728383728272728282828282626262626272828282828283A3A382A3C4B3B4),
    .INIT_5D(256'hB48393D5D5B493C4B4D5C4C437E5D5D5E5E5C406D5C4E5E5C4C4C4C4B4B4B4B3),
    .INIT_5E(256'h93A383B4B4B4D5B4B4B4C5B483B493A4B4938293A3A3A3A3828282A3B4C4C4B4),
    .INIT_5F(256'h5162728272726262626262627272727272727272727272728272728283939393),
    .INIT_60(256'h499BE506E669ACE6B4B4838262627292A3838382827272626251514242424242),
    .INIT_61(256'h16161515364646684646577857576746466788887899A9BABABABA9A6918D7B6),
    .INIT_62(256'h829292929272626262728272839393B4B4B4B4B4A3B3A392B3A392C4B3C41616),
    .INIT_63(256'hC406D50616E5E5E506E50606C4E506E5D4E506D4D4D5D5B3B3C4B4A3A3A39282),
    .INIT_64(256'hE50606E6C4D5E6D5D5C4B4D5C4C4B3B3A3B3B3A3B3D5E5B3C4C4C4D5D5B4C4C4),
    .INIT_65(256'h7282727262727272727272728283828382828383B4B4D5D5D5E6F6E6D5D50606),
    .INIT_66(256'hB4623151828383A3B48382828272727252515151515151313131627272727262),
    .INIT_67(256'h5747464658476757576757575767A9BACBCB9A9ABA59C7A64927E5067AACB4A3),
    .INIT_68(256'h7272826293B493B4C4D5A3A3A3A392B3C4C4C4D5E51637474748264647474768),
    .INIT_69(256'h1606F5D4F5E5E5E51616E5E5D4D4D4E5E5D5D5C4D4D4B3B3B3B3B3C4C4928282),
    .INIT_6A(256'hC4C406D5C4E5E5D4C4D4E5C4D406D5D506E5D5E506D5C4E50606E5160606E5F5),
    .INIT_6B(256'h72828282828292A3C4C4B3C4E5E5E50617173827170606173727370617E606E6),
    .INIT_6C(256'hB492828383737272525252525251313131515162627272726272727272726272),
    .INIT_6D(256'h575757575778A9BA997889899A69A6851807E559ACB4939382827282B4B4A3B4),
    .INIT_6E(256'hC4D5B4B4B3B3C4D5C4E506061658373748474758474737373757474658475768),
    .INIT_6F(256'h3716E50606E506E5B3E506D4D406E5C4B3C4E5E5E5B3828282827283B4A3D5C4),
    .INIT_70(256'hD4D4F516D406E5C406E6E61717C4C4E50606E60606F516163706F5163716F537),
    .INIT_71(256'hD4E5061616171627383737483838373738E548370617E6D5C417D5C4E5E5F5E5),
    .INIT_72(256'h72625252515251515151516262626272727272727282828272A3A3A3A392B3C4),
    .INIT_73(256'h5847787888790652E79C1769D5A3B48283A393C5D5D5C5C5B4A3838383737272),
    .INIT_74(256'hE5F5061616374837161659594848370637263726473726585858584757687878),
    .INIT_75(256'hF5F5F5F5E5D4E5D4C4D4E5F504D49292928282B4B4B4D5D5C4C4C4A3B3B3C4E5),
    .INIT_76(256'hE6061706E6E527270606171637373737060616371637061616161616F50616E5),
    .INIT_77(256'h696937375948694869173769171706D5E517C4E5F5E506C4E50606160606C406),
    .INIT_78(256'h51515162626272728282727282A392A3A3A3C4B3C4C4E5161606164847473706),
    .INIT_79(256'hC6BC9B1782C582828272C40727F6F6D5B4A39393837272625252525151515151),
    .INIT_7A(256'h3706373716374837373716062647474758585858575726155747475757795993),
    .INIT_7B(256'hE5E504041515D4929292B4A3B4A3B4C4C4C4C4C4D4B3C4F506F5061626163748),
    .INIT_7C(256'h38371637483738370648471648483716164716E5E516F5F5061616F504F506E5),
    .INIT_7D(256'h4869387A59061717061717C4161616E5E515261616E5E5170606160606171706),
    .INIT_7E(256'h7282828282A392A3D5D5D5E5E50606264747262668585838697A6938697A7969),
    .INIT_7F(256'h727283C5F6F6D5C4B4A393938372726262625252525151515262626272828272),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11
   (p_27_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_27_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
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
    .INITP_00(256'h507EC1F7FC3E6000000000007FFFFFFFEF13FFFFFFFEFECC00007FFFFFFFFE70),
    .INITP_01(256'hFFFFFFFFFFFF807F9E007FFE00600000000000FFFFFFFFDE12FF7FFFFDFBFF00),
    .INITP_02(256'h07FFFFFFFFFF9FFFFFFFFFFFFFC0FF800213FE00E00000000002FFFFFFFFFF9E),
    .INITP_03(256'hF00200000000001FFFFFFFFFFBDFFFFFFFFFFFFFC03FC00013E0026000000000),
    .INITP_04(256'hFFFFF87FC00009780000000000007FFFFFFFFFFBFBFFFFFFFFFFFFF07FC00009),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFC1FE0000F7C00000000003FFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_06(256'h0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FF00045F80000000001FFFFFFFFFF),
    .INITP_07(256'h600007F8001E000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE03E00047F8000000),
    .INITP_08(256'hFFFFFFFFFFFFC0000003F000060000EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFC0000001C000000008FFFFFFFFFFFFFFFFFFFF),
    .INITP_0A(256'h00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000058000000009FFFFFF),
    .INITP_0B(256'hFFFFE00000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000400),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFE00000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFF10000000000000001FFFFFFFFFFFFFF),
    .INITP_0E(256'h9FC00000000003FFFFFFC08FFFFFFFFFFFFFFFFFFFFFFFF9809A000000000001),
    .INITP_0F(256'hFFFFFFFFFFFFF3FF640000000003FFFFFFE083FFFFFFFFFFFFFFFFFFFFFFFFC2),
    .INIT_00(256'h3748161606374848485959482615150436363646365838A573285906B4B48283),
    .INIT_01(256'hA392B4B492A3C4B4C4E5D5D5C4B3C4C4F5161606163706063806060606061737),
    .INIT_02(256'h695847684806483716471637160606F516263737261504E51504E5D40426F5C4),
    .INIT_03(256'h060617E516161606E5E5F537E5C4061606370606173827063817165948376937),
    .INIT_04(256'hC4061626264737374768684747487969597A8A59598A69696959596906373838),
    .INIT_05(256'hB4B4B49393837372726252515151515151516272727282827292A3929292C4B3),
    .INIT_06(256'h383737483716F5F5E5E54647263706A631496AB3B48393828282828283838383),
    .INIT_07(256'hE506E506E5B3E5E5C4061606060606E50606E5C4E6E6E60617373716E6063838),
    .INIT_08(256'h483726370626F5155858372616F515041504040415161616D4B3A392B4C4C4D5),
    .INIT_09(256'hD4F5E506E5E537E50648172737382737E50669485959598A5869583706374837),
    .INIT_0A(256'h375858485869697A69488A9B7A8A8A7A8A696959373737272717F537060616F5),
    .INIT_0B(256'h73726262626252626262728272828283B49292B3C4C4E5F50616374768585758),
    .INIT_0C(256'hD4D4E5E5F5F6E7C7C64A1883C4B4C58262837262626262728293B4B493938383),
    .INIT_0D(256'h06C4D506171706E6D5E6E6C5D5F6E6D5D50617170606273717273758473706F5),
    .INIT_0E(256'h4737374726371626263615041515263716C492B3D5C4D5D5E617170617061717),
    .INIT_0F(256'h1637375938373848065969697A38597959591647696948474726061647161647),
    .INIT_10(256'h8A697A8A9B9B9BAB7A698A7A48483727175916371606160606E5E516060637F5),
    .INIT_11(256'h7272728293A3A3A3B3B392B3C4F516E516474737586847476858586859797A69),
    .INIT_12(256'h5AAD18A594C5D5C472516272726262626282B4C5B4A493838383727272727282),
    .INIT_13(256'hD5C5D5D5C6E607D5B4D5F607F6E6172707271706161606E5D4C4C4C4C4E6C7F8),
    .INIT_14(256'h04041515151515474715D4B3B3D5D5E6060617060617383717E5B4E5D5D5F6E6),
    .INIT_15(256'h69796969696948587A5858694758264768374758584848371537474726154747),
    .INIT_16(256'h7A597A9A38484837163747061606061626F5C416061637371616484838487A79),
    .INIT_17(256'hB3C4C4D4F516063726475726476868686868798969697A8A8A8B9B8B7A8B9BAB),
    .INIT_18(256'hC5725172726262726282B4C5C5C5B493939393838282828282828292B3B3B3B3),
    .INIT_19(256'hC5B4C507F6D50707070617E5E5E5C4D4B3B3B3C4C4C618D7955A1964427394D5),
    .INIT_1A(256'h5746F5B3C4C4B4E6D5C41717061737482706D5B4837293B4A473B4C6C6A5E6D5),
    .INIT_1B(256'h6958695848154789373758484716373737582616372658470415363604154647),
    .INIT_1C(256'h3716481616F526374726E5370616474737475959488A9A9A698AAB69599A6969),
    .INIT_1D(256'h372678786868798979899A9A597A7A8BACACACAC9B9B9C9B9C8B698A59486969),
    .INIT_1E(256'h62838393C5C5C4B4B4B4B49383828383A3A3A3B3B3B3C4C4C4E5F50616372626),
    .INIT_1F(256'h07072706E5E5C4D4C4B3B3C4C4F819A52242638383735393C5C5825162726262),
    .INIT_20(256'hE5273737063859172727D5C583625162837272A4A583C5C5D5D593D507D5E607),
    .INIT_21(256'h47683747484837474726166868684715573636463636474636575716E5B3C4C4),
    .INIT_22(256'h5737265816F5373768586969699BBC4859ACBB9A8A7AAB8A898A696948266826),
    .INIT_23(256'h79797AABAC9B9B7A9BBCBCACBDACACBDBCAC8B7A9B7A69593737593748F52647),
    .INIT_24(256'hB4B493A393938393B4C4D4D4E5D4E5E5F5162637262647474747475879688989),
    .INIT_25(256'hD4C4C4D5C5D7C795534242636363637484B5B5937262513182836272B4D5C5B4),
    .INIT_26(256'h2728E69383623152727262528473B4D5A4E6B4B418F6F606F607172706E5C4C4),
    .INIT_27(256'h684768583747152647154757463636153657574706C4C4B3E506173738273837),
    .INIT_28(256'h8A69697A8AAB5949ABACAB7A8BAC8A7A9A8A7989476868797937686868894747),
    .INIT_29(256'h7BACBDBDCDBDACBDBC9C8B7A9B9A796937486937375847263758473747061647),
    .INIT_2A(256'hD5F506162616162626262637474747476868685857688A8A68699A9BAB9BAB9C),
    .INIT_2B(256'h2242635363636385A6C7955293B462629382626272B4D5C5B4B4B493B4B4A3B4),
    .INIT_2C(256'h52526252525283C5B4F6D5B407070707E60727171606B3B3C4C4C4D5B48595A6),
    .INIT_2D(256'h3746575747473646473647584737E5C4C4D5E50637373837171717C572513151),
    .INIT_2E(256'hDD9C8B9CAC9B8AAB9A9A69686868687968587879473789795847687979585758),
    .INIT_2F(256'h8B9CAC7A7A9A79696858483737894737476868374737374868698A8A9C9B499B),
    .INIT_30(256'h373737474768686868787989898989AAAA8A8AAB9C9C9CACACBDCDCECDCDBD9C),
    .INIT_31(256'h8564634273A5B4A5938372727293D5C5C5C5B4B4C4C4C4061616263737373747),
    .INIT_32(256'hD507E6C5E618E6070707273706D5D5C4B3B3B4B47495C7D64263634242424264),
    .INIT_33(256'h46575857586837E5C4B4C4E50638372737161707C56231513142626242317293),
    .INIT_34(256'h8AAB697968686889896868476889684747476868476889685858463615153636),
    .INIT_35(256'h47476848475857686878263737475848899A9B8BAC8B8BBDBC8B8BBD9C9BBC7A),
    .INIT_36(256'h7899899A9A9A8989898AAAAB9B9C9CBDCECECEBDBDADBDAC8B9CAC8B9B7A699A),
    .INIT_37(256'h4252627283A4D5D5D5D5D5D5E506164768584746474747463647375747588989),
    .INIT_38(256'h2828271706E5D5C4C4C4C493A5D7C7A54264D7D7A6846353422263B584638352),
    .INIT_39(256'hB3A3B3C4C4E50606173717E6C68351313151625252317293B407D5D5E6070707),
    .INIT_3A(256'h796858689A9A68586879684757586879685857475757474647585837585726F5),
    .INIT_3B(256'h6837474737375858689A9B8BAC9C9CBDBDADBDAD9CCDAC7AAB9B9A8A68899A79),
    .INIT_3C(256'h9A8989BBAC9B9CBDDEDEDEBDADBD9CBD8B8BACAC7A9A79895858685847488989),
    .INIT_3D(256'hE6D5D5D5F51657576768675757575757474647686847576899898979899A9A9A),
    .INIT_3E(256'hC4D5D5A5D7B5A584224295398C6B39A642428394426342224231313183C6D5D5),
    .INIT_3F(256'hD50607F6C57351315252525272727393A4D5D5E6D50728072849280606E5C4C4),
    .INIT_40(256'h9A8989897958688979574647465758476857373737575847F5D4B4C4C4B4D5C4),
    .INIT_41(256'h698BAC6AAD8B9CBDBDBDBDBDCECEAC9CAB9A8A8A8A9A89786868799A89686889),
    .INIT_42(256'hBDCECECDADBDAC8BAC9C9C9C699A686868584848688989688937476858576879),
    .INIT_43(256'h68685767586857474758575768787878798989A9899A9ABACBAB59488A9CADBD),
    .INIT_44(256'h22222263D73929A6324242226464322232222142D6C7C6F6060606E506475767),
    .INIT_45(256'h625252727273939393A4C5E6E6F6072827282706E5C4C4C4D5E6D5C6A5634231),
    .INIT_46(256'h686868574657575757574758586868574716D5C4A3A3A3827282829393525152),
    .INIT_47(256'hBDBDCDCECEBDBC9CAB9B69689A9A797979899A89687889796847587868686858),
    .INIT_48(256'h9CBC9B6A8A9A7968688979588989686858584779797979797A8BBC9C7B8BACAD),
    .INIT_49(256'h575868686868687989798989899A9A9A9AABAB7A7A9BACDECEADCDCDBDAC8B8B),
    .INIT_4A(256'h4263425384643232322221A618C6C6F617060616164768787867475768575857),
    .INIT_4B(256'h938393D5F6F6F6490707F6D5E5C4D5C4E6E69352313121314222422210212122),
    .INIT_4C(256'h47576857574747573716D4A39282726251515131315252526262627373729393),
    .INIT_4D(256'hACBB9AAA89899A79897978786868897858685857687978576868463657583636),
    .INIT_4E(256'h89AA8A589A8A7968684768896879798A8A9C9C7B6AACBD9C8CBDCDCDCDBDADAC),
    .INIT_4F(256'h78799A898989899AAAABAB9BACAC9CACCDCEBDBDBD8B8B8B9C9C8B69699AAA68),
    .INIT_50(256'h422221D608A6A506373726476868787878786767686768685857576878787879),
    .INIT_51(256'h06E6E6E5C4C4C4D5F6A431516272523163222252422222226363538463635342),
    .INIT_52(256'h5737D4B3A3A38252425252513151625252627373838383A4A49393A4E607F607),
    .INIT_53(256'h78899A9A896868799A8979896868686858464768684647575757575847475757),
    .INIT_54(256'h586989786878898A8A9C8B8B9C9CBD9CADBDBDBDCDBDBDACACACAB6958687978),
    .INIT_55(256'hABBB9A597A8B9C9C9CBDBDACBD8B9C9C8B6A8A7A7A9A9A689AAA798AAA9A9A68),
    .INIT_56(256'h37374746687879786868787868686878584757787868787878899A9A9A686879),
    .INIT_57(256'hB55142626262524263423142425242426364646422226363322242B5956494F6),
    .INIT_58(256'h5252315152526262738373739393A4A4A5A473A4D507F6E6E6E5D5D5C4B3C4E6),
    .INIT_59(256'h5768799A8968687989897858574647576858587878786757675815D4B3A38372),
    .INIT_5A(256'h9B8B8B8B8BACBDBDBDADADBDBDCDBD8B9BAB6959798957798979898978786868),
    .INIT_5B(256'hBDACACACACAC8B9B8A697A9A798A9A8ABBAA79AA9A899A68378A9A787989898A),
    .INIT_5C(256'h7878788888787867475768786868687889897968788989898ABBAB7A697A8BBD),
    .INIT_5D(256'h6342424242424263648585423131428363323264635293E54747466778789989),
    .INIT_5E(256'h8393A583B4C5B493A5D59393D5D5D5E5D5D5D5C4B4D5E6D58342315173836252),
    .INIT_5F(256'h89786868686857575768996767786767675736E5C4B4B4938373525283835283),
    .INIT_60(256'h8C8CADADBDBDAC8B6A697A9A899A9ABB9A797979787889897989687889899A9A),
    .INIT_61(256'h7A69898A8AABAABBCBBB9A9A9A89689A78689A797968898A8A9BAB9B9C8C9CAD),
    .INIT_62(256'h676868686868687879686878899A9A89898AABAB8A8A8B7BACBDBDAC8B7B7A8A),
    .INIT_63(256'h6495852231313183944222325283C4164726577899A999998878888878787867),
    .INIT_64(256'hB4C5E6A5D5D5D5E6D5C5C5C4C5E6E6A573313173738373526353425252424274),
    .INIT_65(256'h5858676767675767675746F5C4C4C4C4B49373938383A5A4A493A5B5B4D5D5D5),
    .INIT_66(256'h9B7A8ABBCCBB9A89899A897979897978799A7978796857474757686868463647),
    .INIT_67(256'h9A9A899A9A8A89BBBB689A8989688A7A699AAC9B9B8B8C8C7BCDBDADCEBD8B9C),
    .INIT_68(256'h6857685868788989798ABABB9B59497B9CBDACAC8B6A7A6969688A8AAABB9A9A),
    .INIT_69(256'h636333525294E5164757678899A9A99988787888786778787858576868686878),
    .INIT_6A(256'hC4C5C5C5D5D5D5B45252735273A4735263534252524263857463532242424242),
    .INIT_6B(256'h67575715E5E5E506E5B4938383A4D5E6D5E6C5D5D5D5F6E6D5C5D5D5D5D5D5C4),
    .INIT_6C(256'h8989898968789A68578989687868686858585857364667677857578878575778),
    .INIT_6D(256'h89899AAAAA8A79797979BB8A9B8B8B6B8CADADCEAD9C8B9B8B8B9BAB79686879),
    .INIT_6E(256'h16588AAB8B7A597A9C8B9C9C8B9B79687978899AAABBAABBAA9A8A8A9A9ABB9A),
    .INIT_6F(256'h466889998999A9A999998878998878786758587868687868573706E5F5371616),
    .INIT_70(256'h93835152A4A4735263424252524285A664424242524242425263636373B4D415),
    .INIT_71(256'h06D5B4A4C5D5D5E607D5E60707F607F6E6D5D5D5D5E6D5D5D5C58382D5D5B5A4),
    .INIT_72(256'h6868686878899A79787868686857575757676778786767676767574736F5F516),
    .INIT_73(256'h79898A8A9B7B5A6B8C7B8C6B8BACBC9C9B7A384848799A9A8979897858787968),
    .INIT_74(256'h7A8B7A9B8A6989687889BABB9A9AAABBBBAA8A9A9A9AAA9A9A9A898ACBAA698A),
    .INIT_75(256'hA999A999888867675768797968686857571692728282A3F607C4C4B4379BAB69),
    .INIT_76(256'h53636483734295B685634242525263637373525272C416475767A98999A999A9),
    .INIT_77(256'h07F6F628280707070707D5E6F6D5D5E6B4936262C5C6E6B5A552315283A47363),
    .INIT_78(256'h7889797978787878576778787867786757677867360415261606E5D5E6F607E6),
    .INIT_79(256'h7B7BAC7BAD8B7BAC9C6A697A7A8A9A9ABA89899A896857686868787879787868),
    .INIT_7A(256'h7989BBCB9A9ABB9AAABB9A9ABB9A89899AAA798AAAAABB9A8A799A8A696A4AAC),
    .INIT_7B(256'h7868786858686868471606B47251A5E707A5739383B47ABC8A8A695869686868),
    .INIT_7C(256'h64424252526484646352527283E516587888898989BAA9A9A99989A999787878),
    .INIT_7D(256'hF62828D5D507D59362B49372C5E6E6C68331516293A4736342536484634285A6),
    .INIT_7E(256'h5757576767788878787867575736153626261606E6E607070707072849281827),
    .INIT_7F(256'h6959699A8A89896889BA7978A999786868686868575868786847475757575867),
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
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12
   (p_23_out,
    clka,
    addra);
  output [8:0]p_23_out;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [3:3]ena_array;
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
    .INITP_00(256'h003FFFFFFFFFFFFFFFFFFFFFFFFFBFE00000000003FFFFFFF001FFFFFFFFFFFF),
    .INITP_01(256'h000007FFFFFFFFE00FFFFFFFFFFFFFEFFFFFFFFFFF8FC02000000007FFFFFFFC),
    .INITP_02(256'hFFFFFFF820100000000FFFFFFFFFFC0FFFFFFFFFFF8000FFFFFFFFFF0DE02000),
    .INITP_03(256'hFFF8800001FFFFFFFFFFF000100000000FFFFFFFFFFF0FFFFFFFFBFC0000FFFF),
    .INITP_04(256'hFFFFFFFFFFFFFFFFF800001FFFFFFFFFFFFFC0080000000FFFFFFFFFFFDFFFFF),
    .INITP_05(256'h80040000003FFFFFFFFFFFFFFFFFFFFC007F7FFFFFFFFFFFFF800C0000001FFF),
    .INITP_06(256'hFFFFFFFFFFFFFF80000000001FFFFFFFFFFFFFFFFFFFFE07FFFFFFFFFFFFFFCF),
    .INITP_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E00020001FFFFFFFFFFFFFFFFFFFFFBFFF),
    .INITP_08(256'h001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07C1C000007FFFFFFFFFFF),
    .INITP_09(256'hFFFFFC00008000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0600C000),
    .INITP_0A(256'hFFFFFFFFFFFFFFFFFFFC00000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000010007FFFFFFFFFFFFFFFFFFF),
    .INITP_0C(256'h0000078FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000F3E0FFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFC00000000017FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00),
    .INITP_0E(256'h3FFFFFFFFFFFFFFFFFFFFFFFFC00000000007FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0F(256'h3FFFFFFFFFFFE003FFFFFFFFFFFFFFFFFFFFFFF800000000003FFFFFFFFFFFFF),
    .INIT_00(256'h9AAABB9A9AAA8A8A8AAA798A9A8AAAAA8A899A9A6959598B7B6A7B8B5A6A6A6A),
    .INIT_01(256'h16166959F6B4C5625162837331106206597A69584857577889BBCBBBBBBABBAA),
    .INIT_02(256'h42425272A3F5374788997879BA8989A9A9A99999999999787878687868688979),
    .INIT_03(256'h31C6C67494E6E6B4525251629494634253426353425353644242424263646453),
    .INIT_04(256'h7878676767473615363737160606272807F6072728494928070728F6E6C58372),
    .INIT_05(256'h58787878786799A9676858576889586878686857465747465757576757677888),
    .INIT_06(256'hAA8A898AAAAAAA8A898989697A6959497B6A6A6A59594938374869799A9A9A58),
    .INIT_07(256'hA45252525251313182E6063715577889BABBBBBB9A9A9AAAAA9A8A8ABBAA8A9A),
    .INIT_08(256'h88898989BA9A89A9A99989A9BAA97868687989797879897947488A9A7A49D583),
    .INIT_09(256'h52523162948463636463645342635342424252426363423152736372B4165768),
    .INIT_0A(256'h153737373737272707C6D5E6274959492807F6E6C583515252C728A553A5C694),
    .INIT_0B(256'h5757476879895847797958686757577857464667886767677899999988574615),
    .INIT_0C(256'h89797968474859594959597A690638696959594838173758263726F526376867),
    .INIT_0D(256'h725162920478CBBBCBBBBABA9A9A9A898A8A79898A8A8A8A8A8A8AAA9A9AAA8A),
    .INIT_0E(256'hA9BABABABA89797879898979898A8A68488ABBAB9A8A6928071818B5B5C5B4A4),
    .INIT_0F(256'h6363644242636363424242425332315252838393E54778788989899A9A9A9ABA),
    .INIT_10(256'hD5C6F6F60727F627270707D56231313163C728F87474A5947352517394836342),
    .INIT_11(256'h5868576867575746463646576767787888889999998857361515154747373706),
    .INIT_12(256'h485948372717496A38B4B4C5A4B4B4D5D5B4B4F6E6B3C4F54747476868577958),
    .INIT_13(256'hBB9ABA9A9A897989898A89898A798989798AAA9A8A9A9AAA8979686837165959),
    .INIT_14(256'h899A9AAA9A9A8A896968899A9A7A9BAB695928382806F6C4A49352B468BABBCB),
    .INIT_15(256'h6342524253534252513183D5164799999A9A9A899ABBBABABABABABA9A9A9A9A),
    .INIT_16(256'hF6F607C55152523142A6F828A57494B473424264645342534242635332635363),
    .INIT_17(256'h46675757466788675799A9A99988785715153757472637382707182827D593C5),
    .INIT_18(256'h524231A483A5C6A5A4833193833151C416474715586868686857575757786746),
    .INIT_19(256'h898989899A8989899A9A89799A8A9ABB9A78685715F51716483827274859E682),
    .INIT_1A(256'h8978899AABBB8A9AAB697A7A6A694906F6D592E589BA9ABABA9A9A9A8989898A),
    .INIT_1B(256'h315172B315679978899ABABA9A9ABBBABABABABABA9ABAAA8A9AAABBAA9A9A8A),
    .INIT_1C(256'h42A5C749F8947494744263635353636432326342325353425242524253635242),
    .INIT_1D(256'h999999A988789978361526474637373849494949F6C4D5F6F6F6E79352638352),
    .INIT_1E(256'hE6B483B4D593D506161637372668686868684757575757465746575757676778),
    .INIT_1F(256'h899A7979899ABBBABA89895715D4B3D506D5D5F6F672311021314262316273B5),
    .INIT_20(256'hBBBBBB9A7A59698A6906E5479ABBBA9A9A9A9A89899A89897968798979899A9A),
    .INIT_21(256'h9A899A9ABACBCBCBCBBBBBBABABABBBBAAABABABABBBAB8A9A9A898AAAAAAABB),
    .INIT_22(256'h7474846353636363636464324294A68452524242536495645272B4E53768999A),
    .INIT_23(256'h573636474747370606497A59170727270707B573527384736374A5F84AC77374),
    .INIT_24(256'h061616472637786868586878576757575736575788886799A978788888887867),
    .INIT_25(256'h9A9A896847D492828373515131316273837273A47272828293B4F53759597A37),
    .INIT_26(256'h9A3769BBBBBA9A9A9A89897989897989688989897989897979899A9A79798AAA),
    .INIT_27(256'hBBBBCBCBCBABBBBBABBBBCBCBBBB9AAABB9A9A8A9AAABBAAAAAA9A6889898ABB),
    .INIT_28(256'h426364325384B594424242424242635283B4E5164788999ABB9A9A9AAABBBBAB),
    .INIT_29(256'h060606272737595928E783423194C794634263B6393994739474636353635353),
    .INIT_2A(256'h7858576778675757574657677867888888786778999967574646363647583706),
    .INIT_2B(256'h3131516272A4D5F6F627062817171706E506497A7ABBAB681616264768474768),
    .INIT_2C(256'h9A89798979899A89898989898979798989799A89899A8AAAAAAA9A896858F582),
    .INIT_2D(256'hDDDDDDCCBCBCBBBBAA89899ABABA9A89899A78789A8989BB7969ABAB9A9A9A89),
    .INIT_2E(256'h424242424221214273C417586778999ABBBBAACBABBBABABABBBCCBBCCCCCCCC),
    .INIT_2F(256'h28D563313184D7D7A57474A6B619D77494746363535332325364534263536363),
    .INIT_30(256'h3646578888888888789999888888887867461515475847372717C4E637485969),
    .INIT_31(256'h387A59387A8A7A8A8A7A799AABAAAA7947474758788979688979575767575746),
    .INIT_32(256'h8989798979798989899A89899AAA9A9AABAB9A79799A58D5938393C4D5060638),
    .INIT_33(256'hBB9A9A899A9A9AA9897878BA9A9AAA8A699ACBCB9A899A9A9A89898989898989),
    .INIT_34(256'h83B4E5477888A9899ABBBBBBBBBBCCCCBBBBBBCCDDCCCCDDDDDDCDCDCDCCCCAB),
    .INIT_35(256'hF8F7D7C7B6B6B694749463534242223264B69453636494645263526363213152),
    .INIT_36(256'h99999988677888787867151546574747373838174869481606C585856353C7F8),
    .INIT_37(256'h8A9A9A9A9A8989797868585868689A9A899A999999786767675778A999676788),
    .INIT_38(256'h799A89899A89AA8AABABAA8A8A79683706E507174838487AAB9A8AAB9BABBB8A),
    .INIT_39(256'h9A89BA9ACBCBAA68AACCABAA9A9A9A9A897889898989897978899A7868798989),
    .INIT_3A(256'h9A9ABBBBBBBCCCCCCCCCACACACDDCDCDCDCECECDCDCCCCBBAB9A9A9A89899A9A),
    .INIT_3B(256'hE6D552424242423263C708A663849463526383845231728382B4E5266778799A),
    .INIT_3C(256'h78784615364747474837595948594806C5A585A6A695D7F8080808F8D7B68594),
    .INIT_3D(256'h685747687989899A89798978888878788888998867787888A9A9888888999978),
    .INIT_3E(256'hAAABABAA8958584716060648697A9A9A9ABBBBBCABABBBABAB8A798979896868),
    .INIT_3F(256'hCCBBAA9A8A9A9A9A8978798979798989898989787878685868788979799AAB9A),
    .INIT_40(256'hCCDDCDACACBDCDCECECECEDDCDCCCCBCABAA9A9A9A9A9ABABABABABACBAA79AA),
    .INIT_41(256'h53A6D7D7646463524252837352626262A306164778BA9A9AAABBABCCDDDDCCCC),
    .INIT_42(256'h4847486848373706B4858585950829191908F8D7A69574068A17834242424233),
    .INIT_43(256'h9A89897978787888887867676788787888888888998888886767574636464757),
    .INIT_44(256'h471626799A9A9A8A8A8A79AB9A6989799A9A8968687968686868689ABA9A9A9A),
    .INIT_45(256'h897989898979897989898989897879686889898989AA9AABAB9A9A9A9A8A8968),
    .INIT_46(256'hCECECECDCDBCCCBCBBBBBBBB9A89899ABABA9ABABB69ABCCBBBBABAA8A9A9A9A),
    .INIT_47(256'h425273636373526293D4F54668999ABABBBBBBBCCCCDDDDDDDCDBCCDCDCDCECE),
    .INIT_48(256'hA5859595C73919D7B6958564636463E5CC7A82315242323364A6D79553636464),
    .INIT_49(256'h99888888999999998899998888787878889978673615575757474758481706D5),
    .INIT_4A(256'h8979898A89686889798979686868576878799AAABBAAAAAAAABA9A7979997878),
    .INIT_4B(256'h89797989897989899A8A89BB9A9AAAABABABAB9A9A8A794868895778AA8A8A89),
    .INIT_4C(256'hBCBBCBBBBBBABABABABABABAAAABBCCCBBABAAAA9A9A9A89899AAA8A8A8A8979),
    .INIT_4D(256'hA3E5577868789AAABBACCDCDACBCCDBDCDDDCDBDBDCECECECECECDBDCDDDDDCC),
    .INIT_4E(256'h63536385A595846227F631315242423384A6B684636353423152837252627382),
    .INIT_4F(256'hA9BABA9999A999788899785736364647574737475817E5C5A5959595D7D78563),
    .INIT_50(256'h8979787979687889899AAAABBBABBBBBCCABBB9A897978899999A9A9A99988A9),
    .INIT_51(256'h89899ABBABAB9A9A9ABBAB7A7A9A9A6847799A799A8A899A9A89899A8A89899A),
    .INIT_52(256'hBBBBCBBA9ACCCCBCAB9A8A9A9AAA9A8A8A8A9A8AAA9A8A9A8978898968686879),
    .INIT_53(256'hBBCCCDDDDDBDBDBDBDBDBDCECECECECECECEBDBDDDDDCDCCCCCCCCCCCCCBCBCB),
    .INIT_54(256'h3131524242525242222110649463421010526331425283A5C4F55788799ABABB),
    .INIT_55(256'hBA88787846363646464637474706C4D5A6958553536363859585646485645242),
    .INIT_56(256'h9AAABBBBBBCCBBABACACBBBBBBBBBABA8999A9999999999999888899BAA9BABA),
    .INIT_57(256'h9BACAC9B9A9A9A9A58588A699AAA9A899A9A9A89899A9A898A9A89797989899A),
    .INIT_58(256'hABBB9A8A9A9AAB79688A9A7A79798A69797969797989897989898A7AABBB9B9B),
    .INIT_59(256'hCDBDBDCEDEDECECECDCDCDCDBDCDCDDDDDDDCCCCCCCCCCCBCBBBABACBDCDCCAB),
    .INIT_5A(256'hD6E7F718C663312121425231314283A4D526577889BA9A9ABBBCCCDDCDBDCDCE),
    .INIT_5B(256'h4646263737E5B4B4C7A663648564536485634222424252524252637352525242),
    .INIT_5C(256'hCDCCCCCCBCBBCBBABABABAA99999A9A988889999A9BABAA9A999998867574646),
    .INIT_5D(256'h798979796889BBAA9A9A9A9A899A7989896879899A7979899ACBCCCCCCDDCCDD),
    .INIT_5E(256'h699A9A9A79697969698A696968898A8A68799A7A8A9BABAC9BABCCBB9A7A9A9A),
    .INIT_5F(256'hCDCDCECECDCDCECECDDDDDCCCCCCCCBBBBBBACCDCDDDACABBBAB9AABABAA8A79),
    .INIT_60(256'h6B5A29F78394C6E606265788A9BABABBBBBCCCDDCDBDCDDEDEDECEDEDEDECECD),
    .INIT_61(256'hA585638564422232323232424252735273747373734242429C9C5A18E7D61839),
    .INIT_62(256'hAACBCBBABAA9A989A9A9A989A9BA887899899989886746363636362626E5B383),
    .INIT_63(256'h9ABA9A9A89799989898989899A9A9A9ABBCCBBBBCCDDDDDDCDDDDDCCBCBCBBAA),
    .INIT_64(256'h59697A59799A9A8A799AAB9B9B9C9C9C9BACACAC9B8A9AAB9A6868AA9A89AA9A),
    .INIT_65(256'hDEDECECEEEDDACCCBCACBDBDBDBCBCBCAB9AABBBAB9A797A698A7A5969696969),
    .INIT_66(256'h5937466779A9BABBABCCDDDDCECDCEDECECEDEDEDEDECECDCECDCDCECECEDEDE),
    .INIT_67(256'h32323242525253739494637373525252C69463528418196B5AF7B5B5085A6B7B),
    .INIT_68(256'hCBBABAA9A99999BABAA9888867574636363636363716C4B48353633232324242),
    .INIT_69(256'h899A898AAAAABBCBBBCCBCBCDDDDCDCDCDCDDDCDCDBCBBBCBCABCBBBCBBABABA),
    .INIT_6A(256'h9AAB9B9C9C9CBCBCBCBCACCDAC8A9BBBAB8A8989BBCBAA9A9A9ABA9A89A9BABA),
    .INIT_6B(256'hACBDCDBDBDBDCDCD9CACAC9B8B695959695959596969487A697A699A9A9A9A69),
    .INIT_6C(256'hBBACBCDDCECDCEDEDEDEDEDEDEDECECDCDCDCDCECECEDEDEDECEDEDECEDDCDBC),
    .INIT_6D(256'hA594747373748452839484739463526331214263D6B5F707E506377889A9BABB),
    .INIT_6E(256'h9989897867676746363636153737E5D5B4743222324233334232424252527374),
    .INIT_6F(256'hCCCCCCBCBCDDDDCDCDCDCDBDBDBCBCCCBCABAAAACBBBBABA9ABABABAA999BABA),
    .INIT_70(256'hBC9CBDBC9C9B9BABABBBAA898AABCBBB9A9ABABB9AA9BABABACBCBBBAA9AABBB),
    .INIT_71(256'hBDBCBC7B49492849382849495948387A59598A7A7A8A7A8A9BABACBC9CACACBD),
    .INIT_72(256'hCECEDEDEDEDECECDBDCDCEDEDECEDEDEDECECEDECECDCEBDBDDEDEBDCECECDBD),
    .INIT_73(256'hB4A59484635284423142846410215273B4064767689ABA9ABBACACCDBDBDCECE),
    .INIT_74(256'h363636362606E5D5B4834232323232323242425252637494A5A6946373747353),
    .INIT_75(256'hBDCDCDCDCDCDDDCDDDCCBCBCBBBCBBCBBA9A9A9ABA9AA9A9BA89898988675736),
    .INIT_76(256'hABBBABBBBBABABBBCBBBBBBBBB9ABBBBABCBBBABABBCCCDDDDDDDDDDCDCDCDCD),
    .INIT_77(256'hE7E737292828286A596A7A7A699B8A9BACBDBCADACBCCEBDAC9CBDBCBCAC9B9B),
    .INIT_78(256'hBDCDDEDEDEDEDEDEDECEDEDEDEDEBDADBDCECDCECECECEADAD8C5A3929181818),
    .INIT_79(256'h5263847331426484B4E526676889BAABBBACBCBDBDCDDEDEDEDEDEDEDEDECEBD),
    .INIT_7A(256'h827252323232423232424242525274A5A5B6A57474524252A5C6944252839483),
    .INIT_7B(256'hBCBCCCBCBBBBBCCCBBCBCBCBCBBBBAA989787899889967463636362626F5C4B3),
    .INIT_7C(256'hCCCCBBBBCCCCCCCCCCCCCCDDEEDDDDDDDDDDDDDDCDCECDCDCDCDCDCDCDCEBDBC),
    .INIT_7D(256'h6A7BACBC9BACBDBCBDBDBDBDBDBDACACBDCEBDBDBDDDACAB9BACACABBBABABBB),
    .INIT_7E(256'hDECEDEDEDEDEADBDDEDEBDBDBDCECEBD9C4A19E7D6D6E7D6D6D6D6D6F7F71829),
    .INIT_7F(256'hB4F526575889BABBBBACBCBDBDCDDEDEDEDEDEDEDECDCDBDBDCECEDEDEDEDEDE),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13
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
    .INITP_00(256'hFFFE00000000007FFFFFFFFFFF8007FFFFFFFFFFFFFFFFFFFFFFFC0000000000),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFE00000000003FFFFFFFFFFC0003FFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'hFFE000003FFFFFFFFFFFFFFFFFFFFFFF00000000007FFFFFFFFFF000007FFFFF),
    .INITP_03(256'h0000003FFFFFFFFF8000001FFFFFFFFFFFFFFFFFFFFFFF00002000003FFFFFFF),
    .INITP_04(256'hFFFFFFFFFF00000000003FFFFFFFFF00000007FFFFFFFFFFFFFFFFFFFFFF8000),
    .INITP_05(256'h01FFFFFFFFFFFFFFFFFFFFFF80000000003FFFFFFFFF00000003FFFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFE00000001FFFFFFFFFFFFFFFFFFFFFF80000000000FFFFFFFFE000000),
    .INITP_07(256'hFF80000000000FFFFFFFFE00000001FFFFFFFFFFFFFFFFFFFFFF80000000000F),
    .INITP_08(256'hFFFFFFFFFFFFFFFF800000000007FFFFFFFE00000000FFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'h00000000FFFFFFFFFFFFFFFFFFFFFF000000000007FFFFFFFE00000000FFFFFF),
    .INITP_0A(256'h000003FFFFFFFF00000001FFFFFFFFFFFFFFFFFFFFFF080000400007FFFFFFFE),
    .INITP_0B(256'hFFFFFFFE300601400003FFFFFDFF00000000FFFFFFFFFFFFFFFFFFFFFFFF8000),
    .INITP_0C(256'hFFFFFFFFDFFFFFFFFFFFFF00163F800003FFFFFFFE00000001FFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFE00000003FFFFFFFFEFFFFFFFFFFFFF8000F0040000FFFFFDFE00000001),
    .INITP_0E(256'h8000000000227FFFFFFF00000007FFFFFFFF9FFFFFFFFFFFFE8000000000007F),
    .INITP_0F(256'h83FFFFFFFFFFF9C0000000001FFFFFFDFF00000007FFFFFFFF8FFFFFFFFFFFFD),
    .INIT_00(256'h32424242425294A5A5C7A69494522142C6B55242835284948484845231426494),
    .INIT_01(256'hCCCCBBABAACBCBBA9A898999A999A988574646462606F5E5B393732222423232),
    .INIT_02(256'hDDBDBDDDCECDCDBDBDCDCDBDCECECDCDCDCDCDCDCDCECDBDACACACBCCCCCCCCC),
    .INIT_03(256'hDEBDBDDECD8C8CADBDCEBDCDBDBDACAC9BACBCACBCACBCACBCDDDDDDDDDDBCCD),
    .INIT_04(256'hDEDEDEBDCEFFBD6B08D6D6B5A5B5D6B5D6E7D6E7E70818295A396BBDADADADCE),
    .INIT_05(256'hABBCBCBDCDCDDEDEDEDEDEDEDECEBDBDBDBDDECECEDECECEDEDECECECEBDBDCE),
    .INIT_06(256'hA5E7E79494522142947394A5844284958495A695526395B5D506375768899A9A),
    .INIT_07(256'hA98989BABAA9885757574636473715E5C49362312122222222324242424253A5),
    .INIT_08(256'hCECEDECECDCDCDCDCDCECECECECEDEDEBDAC9CCDDDCDDDCCCCBBABABCBCB9AA9),
    .INIT_09(256'hCECEBDBDCDBD9CACBDACBCCDCCBCBCCDCDCECECECECECDBDBDCDDDDDCDDEDECE),
    .INIT_0A(256'h7384949494A5A594A5A5A5A5A5D6082919394A7C9CBDBDADADBD9CADBDBDCEBD),
    .INIT_0B(256'hCECECECECDCDCDBDBDBDCECECECEDECECECEDECEBDBDCECECECECEFFBD4AD673),
    .INIT_0C(256'h7394949452428495858594847364B5C6D5F5367889A99AAABBBCBCBDBDCDCECE),
    .INIT_0D(256'h57464626473716E5D4A37242313131312231424242423174D5E7E79474423142),
    .INIT_0E(256'hCDDECECECECECECDBDBDBDBCAC9CACABABBBCCBCBBAA8A9A898989BABAA98888),
    .INIT_0F(256'hBCBCBDBDCDBCBDDDCDCECDCEDEDEDEDECEDECECECECECDCDCDCEDEDECECDCECD),
    .INIT_10(256'h84737373737394D6D6084A6BBDBD8C5A8C8C6BADDEDEDECECECECEADADADBDAC),
    .INIT_11(256'hCDCECEBDBDBDBDADADCECECEBDBDCECECEDEFF5A946373848494848484847384),
    .INIT_12(256'h94956453636495C6E6164789899A9AABBBBCBCCDCDCDCECDCDBDCDBDBDADBDBD),
    .INIT_13(256'hE5B37342526352424231314242424231A5E7E7A583525242A5A6948352528494),
    .INIT_14(256'hCDBDCDCDCDCDBCACBCBCBCBBABABABAAAABABABAA9A988786757463737261606),
    .INIT_15(256'hCDDEDEDECECEDEDEDEDEDEDEDECECECECECECEDECECEDEDECECEDECECECECDCD),
    .INIT_16(256'hA5B5186B8CBD9C7BBDADADDECECECEBDBDCECEBDADADADBDACBDBDBDBCBDBDBD),
    .INIT_17(256'hBDCECECEBDBDCECEDEFF29637394949494949484949484848494848484737384),
    .INIT_18(256'hD5E54778788A9A9A9AABCCBCBDCDBDBDBDBDBDBDADADADADBDCECEBDAD8C9CAD),
    .INIT_19(256'h635242314242523142B528C672638442C6A6B5836272737494A68563636495A6),
    .INIT_1A(256'hCCBBBBABBBBBABAAAA9A9A9AA99999785746464737262606E5C4835252738373),
    .INIT_1B(256'hDEDEDEDEDEDEDEDEDECECECEDEDECEBDCDCDCEDEDECEDEDEDECEBDBCBDBDCDCD),
    .INIT_1C(256'hADBDBDADBDBDCEBDBDBDBDCEBDADADBDACBDACACBCBDBDCDDEDEDEDECECEDEDE),
    .INIT_1D(256'hDEF7639494949494949484849494948473849473848484736384B5084A9C9C8C),
    .INIT_1E(256'hABABBCBCBDBDCDCDCECECDCDBDADADADADCECEBD9C9CADADADCEDEBDBDCEBDDE),
    .INIT_1F(256'h3142F7E752727352B5A6A59362728374A5A56363848495B5C5E5165868898AAA),
    .INIT_20(256'hAA9A89899AA97868686747374747261506D4A37252527384B594524242524242),
    .INIT_21(256'hDECECEBDBDADBDBDCDCDCDCDCECECEDEDECECECDCDBDBDDDDDDDCCBCBCBBBBAB),
    .INIT_22(256'hBDBDBDBDBDBDADBD9C9C9CACBDBDBDCDDECEDECECECEDEDEDEDEDEDEDEDEDEDE),
    .INIT_23(256'h848473848484A594849494737373737373637384B5298C8C9CADADADBDBDBDBD),
    .INIT_24(256'hCDCDBDBDBDBD9CADBDCEBDBD9CADBD8CADCECEBDCECECEFFF763A5949494D6D6),
    .INIT_25(256'h6385A57393C6A574856363A69542639483D537787979898AABABABACACACBDBD),
    .INIT_26(256'h7857474647472615D4B3B372525252638483524252524242423173A552525252),
    .INIT_27(256'hCECECECECDCDCDBDBDCDCECECECDCDDDDDDDCCBCABABABBBAB9A9A9A9ABA8989),
    .INIT_28(256'hADADADADBDBDBDCDCDCEDEDECECECECEDEDECECECECEDEDECECECECECECDCDCE),
    .INIT_29(256'h94947384637373637373635273A5085AADADBDBDBDBDCEBDCECEBDADADBDBDAD),
    .INIT_2A(256'hCECEAD9C9C9C8C8CBDBDBDBDCEBDFF4A639494949494B5D6948484848473A594),
    .INIT_2B(256'h94A5C7D7943253A5C5E616465778899AAAABACACACADADBDBDBDBDBDBCBDADAD),
    .INIT_2C(256'h04E5D593837373522131424252525252314252527252525242A5C76374B67474),
    .INIT_2D(256'hBDBDCECECDCDCDCDCDBCBCAC9CACBBABABCBBB9A897989896847473737472615),
    .INIT_2E(256'hCDCECECECEBDBDBDCEBDBDCECEBDBDCECECECEDECDBDBDCDCDDECECDCDBDBDBD),
    .INIT_2F(256'h637363637363A54A9CADBDADADCECEBDADADBDADBDADADADADADAD9CBDBDBDCD),
    .INIT_30(256'hADCEBDBDCEBDFFD6427363738494848494A584949494A5849494848473848463),
    .INIT_31(256'hB4D5D5E52668898A9A9AABACACBCBDBDBDBDBDBDBDBDBDBDADBDADADAD8C8C8C),
    .INIT_32(256'h42524242525262625252728363525263A6C7C7A685742274A5D7D7B685422142),
    .INIT_33(256'hCDBCBCACACCCCCBBAABBBB9A78686868584737263747373615E5C49372525252),
    .INIT_34(256'hBDADBDCECEBDBDCECECECECEBDADADADBDBDBDBDBDBDCEDEDECECEDECECECDCD),
    .INIT_35(256'h7CADADADBDBDADADBDBDBDBDAD9C9C9CADADADADBDBDBDCDCDCEBDCECECEBDBD),
    .INIT_36(256'h426352527373848484948484849494849484737384637373736363736342A55A),
    .INIT_37(256'h8AAAABABACBCBCACACADADADBDCDBDBDBDAD9CADAD8C8C8CBDBDBDBDCEFF9C63),
    .INIT_38(256'h5252728372526263A6B6A6B6D7A56385A6D7C7C7A563424294B494D537687979),
    .INIT_39(256'hBBAA898989896868685737263747472604F5D483838373525242315252526262),
    .INIT_3A(256'hBDCECECEBDADBDADADBDCDCDCECEDEDEDEDEDEDECECECECDADBCBCBCACACABAB),
    .INIT_3B(256'hBDBDBDADAD9C9C9C9CAD9CADAC9CBDCDBDBDBDBDBDBDBDADADADADBDBDCECECE),
    .INIT_3C(256'h7373737373737394635252636342637373525263635284087C9CADBDBD9C7C8C),
    .INIT_3D(256'hACACADADBDCDCECECEBD9C8C8C8C7C8C9CADBDCECEFF19105242313152637373),
    .INIT_3E(256'h74A5A5D7F8B6C7A585A6A6C7A68494A5A5A594D5065868686889AA9AABACBCAD),
    .INIT_3F(256'h476858473726262615F5C4A38372725242213152526273735272938372626252),
    .INIT_40(256'h9CBDBDCDCDCDCDCDCDCDCEDEDEDECECDCDCEDDACBCBBABBBBBABAA8A79786857),
    .INIT_41(256'h8CADAD9CBDBDBDBDBDBDBDBDBDADADBDBDAD9C9C9CADADBDBDADBDDECEBDBDAD),
    .INIT_42(256'h423131313142636363735252636363E74A6B8C9CADADADADADAD9CADADADAD9C),
    .INIT_43(256'h9C9C7C7C7C7C8C5A7CBDBDCECEFF081063524221425252736373737373736352),
    .INIT_44(256'h4263A5B6A65394C6737273B4D426476878799AAABBAC9CADBDADACADADBDBDAD),
    .INIT_45(256'h15D4D4B37251316363313152636273735272A493727272637394B6F8A6B6C785),
    .INIT_46(256'hCDCDDEDEDEDECEBDADBDBCBCCCCCCCBCABABAAAA8A7968473737474747373747),
    .INIT_47(256'hADBDBDBDBDBD9C9CAD9C8C7C7C9CADADADADBDBDDECEADADBDACACBDBDBDBDCD),
    .INIT_48(256'h52635242636384E7198CAD9CADBDBDBDAD9CBDAD9C9C9C9C9CAD9C9CBDAD9CAD),
    .INIT_49(256'h7CCEBDBDCEFF6B21315252314252525252527373635242423121212131315263),
    .INIT_4A(256'h42627382D4153768A9BABAABBBACBCADACACACADBDBDBDADADAD9C8C7C8C6B4A),
    .INIT_4B(256'h52835252627373625283A4938373627374C7C7A6A5D7A65342426374745394A5),
    .INIT_4C(256'hADBDCDACABABAB9BABAB9A9A8A8978686847575758472615F5D4B38272311021),
    .INIT_4D(256'h6B7C9C9C7C8C8C9CAD9C9CADADBDBDBDAC8B8B9CADADBDCDCECECEBDBDBDBDAD),
    .INIT_4E(256'h5A7C7C9CAD8C7C8CAD9C9C9C9C9CAD9CADBDAD9C9C9C8C9CADBDBDBDBDAD8C7C),
    .INIT_4F(256'h10314242315263425252636352525242312121312131525252524242637384F7),
    .INIT_50(256'h89899ABBBBACACACACBDBC9C9CBDBDBDBDAD8C8C8C6B6B5A9CCEBDBDBDBDDEF7),
    .INIT_51(256'h5283B5A473837373D507C78574B685535353532263857373839393B4E5265768),
    .INIT_52(256'h9A9A8A8A8A7968585857473737472615F5F5D5D528E663648394847272626252),
    .INIT_53(256'h7C8C9CADADADBD9CACAC9C9CACADBDBDBDBDBDBDBDACACADBCBDCDACACAB9B8A),
    .INIT_54(256'h9C9C9C8C8CADBDBDBDBDBDBDADBDBDADADADADADAD9C9C8C8C5A6B6B8C7B7C7C),
    .INIT_55(256'h4252316363424231312121312142525242424252946373086B6B7C8C9C7C8CAD),
    .INIT_56(256'hACBCBC9C8CADBDBDAD8C8C8C7B4A196BCEBDBDBDBDBDCE4A7321313121314242),
    .INIT_57(256'hC5E6C694526363636374A563859473A4A4A4A493B4F536476878899AABACACAC),
    .INIT_58(256'h6857472637161615040606288B9C6B6B5AD68373736283525273838362726262),
    .INIT_59(256'hAD8C8C9C8B9CAC9CACADBDCDBDBDBDBDBC9C9CACBCBBBB9A8A8A797968787878),
    .INIT_5A(256'h8C7B8C8C8C8C8C8C7B8C9C8C8C8C7B7B6B5A5A4A7B6B7C8C7B9C9CADBDBDADAD),
    .INIT_5B(256'h212131313131425231423142947394F7195A7CAD9C8C9C9C9CAD8C8C8C8C9C9C),
    .INIT_5C(256'hAD8C8C6B4A29F77CCEBDBDBDBDBDBD0884524231313142525252524242424231),
    .INIT_5D(256'hA5A5B68542427293B49393B4B4E50637576868798A9AABACBCBCACAC9CADADAD),
    .INIT_5E(256'hF5F50607F6B5B5B5948494D6F71818933173736293E7E707C507E68351317385),
    .INIT_5F(256'h9CBDCEBDBDBDBDCDCDBCACABAB9B9A8A9A8A79685858576857585715372615F5),
    .INIT_60(256'h6B7B9CAD8C8C7C8C5A39196B5A7B8C7C6B8C9CAD9C9CBDADAD8C8C9C9C8B9CAC),
    .INIT_61(256'h213131526384D64A7C6B7C9C7B9C9C7CAD8C7B8C9C6B4A5A5A6B8C8C8C7B7B6B),
    .INIT_62(256'hBD9CADAD9CAD9CD6A59452423131424242425242314242423131312131314231),
    .INIT_63(256'hC4A37393B4E60616376868898A9ABBACACACADBDADBDADADAD9C7C4A5A29188C),
    .INIT_64(256'h2163E718F71818B594B5284A8BBC8B6A07E6C58372A594A5C7B68552525283B4),
    .INIT_65(256'hACBCCCAB9B9B9A8AAA8A8968797858371526574736261615F5E5C48362514231),
    .INIT_66(256'h5A5AF7086B6B7B8C7C4A7B8C8C7C9CADBDADADBDBDADBDBDBDCDBDBDCDBDBCBC),
    .INIT_67(256'h6B7B9CAD7B9C9C8C9C8C7B5A6B4A5A8C9CADBDBDADAD9C9CBD9C9CAD7C4A5A5A),
    .INIT_68(256'h94A584635252523142424242424252423131313131424221313173737373D629),
    .INIT_69(256'h26576868898A9AABACBCADBDBDBDBDBDAD8C7C7B6B29F76BADADADAD7C7C9CD6),
    .INIT_6A(256'h18496A28E6C58373C5B4B483E628F8C7C7C78584C6B4D5F6A382628393D5D5E5),
    .INIT_6B(256'h8A79686868686847371515473715161504E5D4B47283A431214242527394C6E7),
    .INIT_6C(256'h9C8C7B8C8C8C8CADADADCECECDCDBDACBCAC8B8BACBCACACAC9CAB9B9B8A8A8A),
    .INIT_6D(256'h7B7C8C7C8C7C7C7C7B7C7B8CADBD9C8C8C8C8C7C7C7C4A4A294A19E7294A4A8C),
    .INIT_6E(256'h3142314242424252423131313131314273A5B56363B51908197B7C7C9C9C8C8C),
    .INIT_6F(256'h9B9CACBDBDBDADADBD8C6B5A2929199CCEADBDBDAD7CADF76394949494946331),
    .INIT_70(256'h94C5E6A4C6E6E7B6B6A6C7F8C7E6B5A46262C5E683A3E5D4F51658687989899A),
    .INIT_71(256'h47472616162615F504D4C49352A4A57331211031838393937273623151627362),
    .INIT_72(256'hADADBDCECECE9C9C9CACACACAC9C9C9CACAB9B9B9B8A7A697989586868476868),
    .INIT_73(256'hAD9C7C6B8CAD9C9C8C7C7C7C5A5A7B4A18F7E708295A29397C8C7B8CADADAD9C),
    .INIT_74(256'h5263525263636394B5B5735294084A5A7C7B7B7B5A5A7C8C7B6B9C9CAD9C7C9C),
    .INIT_75(256'h7C7B6B4A4A5A4A8C9C7B7CADAD9CAD1842738484737342314242424242314252),
    .INIT_76(256'h8585F8C794C6835131A407D592E506E5F53768787868899A9B8B9CBCBDBDAD8C),
    .INIT_77(256'h04D492623173738384213152738393A47383837293B5A583C5E7C694A5A6A5B6),
    .INIT_78(256'hBDBCACBCBC9C9CAC9B9B9B8A9BAB8A696968797879684778785757471516F504),
    .INIT_79(256'h8C7C7C8C8C4A4A3908A563E718294A394A4A4A7B7B8C8C8CADADBDDEDECDBDBD),
    .INIT_7A(256'h84736373B54A4A5A4A5A6B7B7B7C9C7C7C9C7C8C8C9C8C8C7B8C9C7B8C8C8C8C),
    .INIT_7B(256'h9C7C9C9CAD9C7B4A8421637352424242423131313142424252736363A5A5B584),
    .INIT_7C(256'h62D5F627383827061657575868899AAA9A9BABACBCBD9C7B8C8C8C8C5A18F75A),
    .INIT_7D(256'h9464426384A4A4A5A4A4A483A4A59473E7E78494B6A5A5F8C7C7D79494736262),
    .INIT_7E(256'hABAB9B7A7A8A8A7968685868797947155878474726E5F5040404B47251735231),
    .INIT_7F(256'h18F7D6D6F7F74A4A4A395A7B6B7B8C8C9C9CADBDCECEBDBDCDBDBCBC9CAC9C9B),
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

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized14
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
    .INITP_00(256'h000007FFDFFFFE0FFFFFFFFFFFFFC0000000003CFFFFFFFF0000000E7FFFFFFF),
    .INITP_01(256'h01803FFFFFFF80000003FDFFFFF80FFFFFFFFFFFFDC000000000081FFFFFFF80),
    .INITP_02(256'hFFFFE9800003000000FFFFFFFFC000000BFFFFFFF003FFFFFFFFFFFDC0000100),
    .INITP_03(256'hFFFFE007FFFFFFFFFFFF000000000081FFFFFFFFC000000FDFFFFFF007FFFFFF),
    .INITP_04(256'hFFFF00000005FFFFFEC004FFFFFFFFFFE600000C8000FFFFFFFFFFC0000007FF),
    .INITP_05(256'h00002000003FFFFFFFC0000007FFFFFE0004FFFFFFFFFB1800000080007CFFFF),
    .INITP_06(256'hFFFFFFFFFC800000000000013FFFFFFF8000000FFEFFFB0075FFFFFFFFFD8800),
    .INITP_07(256'h0001FDBFFE00FFFFFFFFFFE4000000000000F00FFFFFFF00000005FFFFFE007F),
    .INITP_08(256'h4307FFFFFF80000000F7DFF800FFFFFFFFFFF0000000000000E00FFFFFFF8000),
    .INITP_09(256'h800000001000008F0FFFFFFE000000001DE63000FFFFFFFFFFE8000000008000),
    .INITP_0A(256'h0003FFFFFFFFFE004000001000018CEFFFFFFE00000000006E00037FFFFFFFFC),
    .INITP_0B(256'hFFC000000000040007FFFFFFFFFE00E0000010000030C7FFFFFF800000000064),
    .INITP_0C(256'h080001F301FFFFFFE000000000000007FFFFFFFFFE00604000000000F0F7FFFF),
    .INITP_0D(256'hFFFFE003F0A000190001F181FFFFFFC000000000000007FFFFFFFFEF81F02000),
    .INITP_0E(256'h000000001FFFFFFFFFF003F80200170401C483FFFFFFC020000000000047FFFF),
    .INITP_0F(256'h07FFFFFFE0E00000000000BFFFFFFFFFE007F802001E00201627FFFFFFE02000),
    .INIT_00(256'hF74A7C7C7C7C9C8C6B7B7C8C7B5A4A39294A7CADBDBDAD7C8C8C8C6B5A4A1919),
    .INIT_01(256'hD6523163633142314231313131424242424242739473734263525294083919D6),
    .INIT_02(256'h06374758686879899ABBAB9CBDBD8B9CAD9C8C5A3929296BBDBDBDAD8C7C6B4A),
    .INIT_03(256'h83938373A4A58442C7A594C6854285F8F8F8B6B49383B473A4F628596927B4A5),
    .INIT_04(256'h897958475858793704375726473704040404B3725272523173A5525273A5A5A5),
    .INIT_05(256'h4A39297B8C8C8C9CADADADADADADBDBDBCBCBCBCAC9B9B9B8A9B9B8A9A8A7979),
    .INIT_06(256'h7B08F75A8C8C4A294A4A4A4A6B6B6B7C8C7B6B6B392908D69484D6E739191929),
    .INIT_07(256'h4231312131314231313152525242314252637394F7294A0818394A7C8C6B5A7C),
    .INIT_08(256'h9A9A9A9B9C9BACACAD9C5A5A7B6B7B9CAD9CAD9C7C7C6B190894313163524242),
    .INIT_09(256'h746495946385B6B6F8D785C5D59483B5F6B4B4E5068273E6D5C4E5587958899A),
    .INIT_0A(256'h260415261637F5044343C472315273315163524283A5A4A483A48373C5D5C483),
    .INIT_0B(256'h8C8C8C8C8C8C9CACBCBCAC9C9B9B9B9BAB8A8A8A9A9A79686858898947374758),
    .INIT_0C(256'hAD9C9C7B6B4A4A4A4A29193929F7B563636331A5192919395A39185A7B6B7B8C),
    .INIT_0D(256'h31313131313131426384D6D6B5A54A5A184A5A6B9C39F7396B4A0819296B8CAD),
    .INIT_0E(256'h9C6B5A7B7C7B4A4A8C9CADAD9C7C6B5A29D67331315242424242314242313131),
    .INIT_0F(256'hC7A585A5C673B40707E67251626293E6E5E547686868799A9A9A9AAB7A9CBDBD),
    .INIT_10(256'h4304C462103173423152644273A5A493A4A49393D5C4E51685857463A5F8F8A6),
    .INIT_11(256'hACACAC9C9B8A8A9B9B7A697A7A6969796847476868684747471604040404F514),
    .INIT_12(256'h5A4A2918F7732142737394E7D6E71929396B4A294A5A6B6B7B8C9CADBDBDBDAC),
    .INIT_13(256'h949473A519F7084A5A080839194A19295A7B7C7C4A395A5AAD8C7C7C7B7B5A5A),
    .INIT_14(256'h6BAD7C9C7C7B7C6B4A29B5735231313131314231313142313131314231425273),
    .INIT_15(256'hD5C5837282B492D51769AA7958687868799AABABABBCCDAD8C7B8CAD7B5A5A4A),
    .INIT_16(256'h10A5844263A5B49393B4B482A3E50615B6956385A6C7F8B6B6C7A6949474C6E6),
    .INIT_17(256'h697A8A59586979586879372626475826262606F504D4E51414D4C49331317331),
    .INIT_18(256'h7373A5A5D608181919294A19395A5A7B8C8CADBDBDBDCDCDBD9C8B8B8B7A8A8A),
    .INIT_19(256'h7B19D608196B7C6B7C5A6B7C8C8C5A4A4A7C7C4A5A5A4A5A5A6B5A1873313152),
    .INIT_1A(256'h6B19D694737363423131313131423142313142314252739494B563A518194A4A),
    .INIT_1B(256'h37485868686868789ABBABBBBC9C9C9C9C9CAD8C8C7B6B4A7B7B9C7C7B6B6B6B),
    .INIT_1C(256'h83A493A3C4E5F5F5F8A674B685537485A5A57463A594A5C728F6D5E6F6E5E548),
    .INIT_1D(256'h58586837151526371626060606040404B382C5733131624231A5642252A4C5A4),
    .INIT_1E(256'h2929394A394A5A7B8C8C8C8B8B5A5A7B9C8B8B6A7A8A8A7A6969797A59586868),
    .INIT_1F(256'h7C5A6B9C7C7B4A5A5A4A4A29294A5A4A4A3919F794734221638494B5E7081818),
    .INIT_20(256'h52424231313131424242526363636394A5A5D6B5D60808184A6B4A6B5A4A4A6B),
    .INIT_21(256'hAA9A9A9AABACACAC9CBDBD9C8C8C6B7C6B7C7C7B6B6B6B5A2908E7A594736352),
    .INIT_22(256'h7BD763D7852253A6A6A54253A6A6B6B62748273728060606373737688878799A),
    .INIT_23(256'h370616F5E50404C48251837331315131318463212183C5A493A4A3D50606C4B3),
    .INIT_24(256'h6B8C7B6B6A5A4A6A7B7B9B8A7A8A7A8A8A694869696858475847685815261626),
    .INIT_25(256'h5A5A4A394A6B19F74A2973637394D6845294E7E7D608E7F7193918396B5A5A5A),
    .INIT_26(256'h5262737373B584849494A594B519D6086B5A4A4A6B4A4A195A6B4A4A7C6B2919),
    .INIT_27(256'hBDBDBDBDBD8C8C5A7B6B7B7C6B7C5A19E7D6D6D6948473737352313131314242),
    .INIT_28(256'h85A68574A6C7A563C53727060617E6A5271616475878898978798A8AABBC9B9C),
    .INIT_29(256'h6242629342515262317373312172A4A493B4A39282B4C5824AD7A5B642B6D7A5),
    .INIT_2A(256'h9B8B8B7A8A8A9B7A597A4837484848584747265847F54706F5F5E50404E5D492),
    .INIT_2B(256'hF7B55231312163A5B5F7E7D6D618F7F7183929184A7B395A8C8C6B6B8C8B8BAC),
    .INIT_2C(256'h73B59494F7084A4A7B7B19084A7B4A08396B4A4A394A5A4A295A7C7C4A2918F7),
    .INIT_2D(256'h7B6B7B4A8C7C4A180808B5B5A5A5A57373635231313152735263947373A5B594),
    .INIT_2E(256'hA5E6E682B4F6D5E7F6A516374768787878899AABBCAB9BBCBDBDBDBDBD9C7B7B),
    .INIT_2F(256'h31A483212152A49393A493623131727263C749A542D7F894858585B6A5947453),
    .INIT_30(256'h5969593737485847583747474737E51606F5E5E504E5A382727383A573516273),
    .INIT_31(256'hA5392929F708F71939193939195A6B5A7B7B7B6B8CAD9C8B9B8B7A7A8A8A8A7A),
    .INIT_32(256'h194A1818194A29B5297B4A084A4A397B4A4A7B7B39F7186BD631424242312110),
    .INIT_33(256'h29F7E7A5A5B59494737373423131526352737384737394B5A5B5D6A508080808),
    .INIT_34(256'hC5C437162657687868798AAB8A69ABACACBDBDBDBDAC7BAD7C7C4A6B6B6B4A18),
    .INIT_35(256'hA4A5A4A4A4734252A5C7A5A5C7B6C78585B6A6B6A6534273B4D5F6B483B4D518),
    .INIT_36(256'h374706161616F5E506E5D4F5E5D5A382837383C6A583738383C652312152A483),
    .INIT_37(256'h395A5A3939296B5A396B8C8B8B9C9C9C9C8B9B9B8A8A7A484848383737374737),
    .INIT_38(256'h194A6B4A5A5A394A6B4A3918194A08A56331425242425273D6295A3929080839),
    .INIT_39(256'h6384A57321426363637373739473739494A5B594E708D60819294A194A192919),
    .INIT_3A(256'h6879799A597AACACACBCBDBDBDACBDADAD9C6B394A4A3939F7D6D694B5D694B5),
    .INIT_3B(256'hB5A6A6D7C7C7A553A5D7D7C7C6A593D507072807B4B493C5B482A3F547575868),
    .INIT_3C(256'hC4D4D4B3C4C49373837273B5B5938373A5B5313131318383A4A473A4E7B53152),
    .INIT_3D(256'h5A5A7B8C8C7B8BACAC9B9BAB9B8A7A693737483837161637371637E5F516F5E5),
    .INIT_3E(256'h191919181839297310215242314273B51839395A5A393929395A5A29395A6B6B),
    .INIT_3F(256'h73637373848473B59484D6B5B5D6F72939394A390829F74A4AD6197C5A4A5A4A),
    .INIT_40(256'hACBCBDBDBDACBD9CBDBD6B194A08296B29E7A5D6E7A5B5D694B5A57331317373),
    .INIT_41(256'h95F8F8A674C6D5D5282807F6B47272A4A48283E5153657787879797A69ABBBAC),
    .INIT_42(256'h728383A5B5836272B58321423151838393837283E6A53162E6A6D7F8B6A6A563),
    .INIT_43(256'h9C9CAB9B9B7A697A7A4848373737371637161616F5F5F5F5E5C4D4B392A38383),
    .INIT_44(256'hE7633142316294D6395A5A7B6B6B5A4A394A5A395A5A6B6B7B5A7BBD8B7B7B7B),
    .INIT_45(256'hA57394B584D6F7D618291819F71918191918E75A393939180808181818D673D6),
    .INIT_46(256'hBDAD5A5A19294A2908D6D6D6B573A5B5B5B5945252526394A5738484739484A5),
    .INIT_47(256'hD507F6D5E6C407078382D5C4F5476758575878799AABABBBACBCBCBD9CACADBD),
    .INIT_48(256'hC6A4214231628393B48393B5B5A4626227A5A5B68574A5A5B6B6633242737262),
    .INIT_49(256'h7A7A693837371637061606F506F5E5E5E5C4C4C4B4938383737272A4C6935162),
    .INIT_4A(256'h197B6B6B6B7B5A5A5A5A5A5A5A5A5A6A7B8B6A7B9C8B8B7B8B8B9BAC9B8A6969),
    .INIT_4B(256'hE7F7D6081808F708082918D6F71818E7D6F70818D6732121A5E773315294D6E7),
    .INIT_4C(256'hD6B5F79484D6A59494A58463734231A5A59473849494947384B594A59484D6D6),
    .INIT_4D(256'hC5E6F6F649684757576878899A8A9A9BABABACAD9CBDCDBDBD8C7C8C192908F7),
    .INIT_4E(256'hB473B418E6B4B483E65374A58585A5A5A6A6B6B69594B4F607C5B49307492807),
    .INIT_4F(256'h16F5F5F5E5E5D4C4E5E5C4B3A383B48372626283B5C57252C6A4525231528393),
    .INIT_50(256'h7B5A5A5A6B6B6A5A7B8B8B7B8BBDAC9CAC9B7A9B9B69694838487A694837F5E5),
    .INIT_51(256'hE70818D6080818F7E7B5D673948421524252B5A563B51818F75A5A6B6B8C7B8C),
    .INIT_52(256'hB5A594D6A552629484A5A59494949494A5846394D6A594D6D6F7F7F7E7F7E7B5),
    .INIT_53(256'h68686889898AABABACCCCDBDADBDBDCDAD7BBDAD7C6B19F7D6D6F7B5D6F7D6B5),
    .INIT_54(256'h7363B6B68574A5A6A6D7D7B6A6A5B40728E6D5D50749D5B4492807C607274757),
    .INIT_55(256'hE506C4B4823142B493513162B5C683A4E67342523131A4A4B483A518E7B5E6E6),
    .INIT_56(256'h7B8B8B8B8B9CBCACACAC9B59699A594848373758584816C4E5F5E5F5F5D4D4C4),
    .INIT_57(256'hD6B5732121A5734263623194D6F718183929398C8C8C7B7B8C7B6B5A5A6B7B7B),
    .INIT_58(256'h73A5B594949494A594945273B5B5A5D6D6E7D6D6D6B5E7E7D60808E7F718E7F7),
    .INIT_59(256'hACCCBCBCBCBCBDDE9C8CDE9CADAD7B3929E7A594B5A5B5B5A5B5A5B5D6947363),
    .INIT_5A(256'hB6A6C7B66452829383F66A49F6C683622727D5D5D5063747585757689ABBBBAB),
    .INIT_5B(256'hE6833152A5E6A593A5A54221313193B4C583C518E6B4A5935363D7B6A6C785A6),
    .INIT_5C(256'hCDAB9B8A487A9A6948373716484816E5C4E5E5D4E5E5C4D4061606C483523172),
    .INIT_5D(256'h42626273D6183939295A395AADAD8C8C8C6B7B5A395A8B8B8B9CACBDAC9CBCBC),
    .INIT_5E(256'h73A59494A5B5B573D6D68494B5A5A5E7D6D6F7F7D608D6D69484632121219473),
    .INIT_5F(256'h9CADCEACADAD8C8CBD5A946373317394A55284F7A47362425273737373849494),
    .INIT_60(256'h07BCCE4AB493A5D527170607D5063736475878899ABBBBBBBCCCCCCDBCBCBDCE),
    .INIT_61(256'h51844242525173A4B483B5F7E7C562518574A664B6F863B6B6A6D7D774428293),
    .INIT_62(256'h58371637371616F5D4D4D4D4E5D4E5E5F51617F6935264427307933183E6E683),
    .INIT_63(256'h296B6B5A7B9C8C8C8C7B6B5A5A5A6B8BACACBCBDBDBDACACACBCACAB9A485979),
    .INIT_64(256'h94A584A594B5D6B5D6B5D6D6B5A5B57394423142524242947352A5B5D6183939),
    .INIT_65(256'h9CDE082163103173B573A5B59373626252524242426273632173947384B59473),
    .INIT_66(256'hF6E6F6D5D5E6F5465868799A9A9AAABBBBBCACACADACBDCEADBDBDADADBDADAD),
    .INIT_67(256'hA483C6F707D551B5B6A674849442427463A6D7D763429459DEAD8B8BE6940718),
    .INIT_68(256'h06D4E5E5C4D4E50616373817B483737282E4378352C6E69362B49464735283B4),
    .INIT_69(256'h5A8B6B5A6B8C8BACADBDBDBDBDBCBC9CABABABAB9B9A5968685816F506160606),
    .INIT_6A(256'hA5B5847373427352624231316363637373A5D6E7D61939295A5A7B6B5A5A8C6B),
    .INIT_6B(256'h63A5D6B3937373626252525242316242105273527373526363737373A4B5D6B3),
    .INIT_6C(256'h78687878899AAAABABBBACACBDBDBDCDADCECEBDBDBDAD9C9CBDE75242314242),
    .INIT_6D(256'hB6C7A5C6B573944253A5A6D78442C6ACAC9C9C49D5E6E70707C5D5F6C5A3E568),
    .INIT_6E(256'h48585837E68262B314E414F662B4E69382C5B483735262A4B493C60707D5B44A),
    .INIT_6F(256'hBDBDBDBDBDBCBCACABAB9BAB8A9A9A79584847F5C4D4F5D4E5F5E5F5D4C40616),
    .INIT_70(256'h424221315252A5527308E7D6F74A7B4A5A7B6B6B6B5A5A5A5A5A6B7B8B9C9CAC),
    .INIT_71(256'h7362625252525242315252527373425252426252629393939394632131426273),
    .INIT_72(256'hABBCBCBCBCBDCDCDBDDEDECEBDBDADADADBDF76331423131109408B393937373),
    .INIT_73(256'hB49483947352B47BAC28C5E6E607C6E728C6D5D594D5375868686858899AAAAA),
    .INIT_74(256'hE4E492D5D5B407B482C4D5C5945262A4A493E607E7074949B6C7A573D618E6B4),
    .INIT_75(256'hACABACCC9A69696968483706E5C4D4F5D4D4E5E5E5E5164859485859068272B3),
    .INIT_76(256'hD6D6D6194A5A5A4A4A8C7B6B7B6B5A5A6B6B7B8CACACBCBCBDBDBDBDBDCDBCCC),
    .INIT_77(256'h42626262627362625262627373737393A4947352314242626352314231738463),
    .INIT_78(256'hCDCEDECECECEBDBDBDDE39947331422131F716B3B39393939373626262525242),
    .INIT_79(256'hC694B418C61849C594E607E6B527374858576778999A9AAABBCCCCCDADBDBDCD),
    .INIT_7A(256'hD5E5E5C4745283C5A483F607070728C5B6857473A5A5A5B493D5078251C6E6C6),
    .INIT_7B(256'h374837F5F5E5D4D4D4D4E5C4E51616486979695927D5937372A3D59483C549E6),
    .INIT_7C(256'h5A6B8C8C7B5A7B7B8C8C8C9CBDBDBDCDBDBDBDBCBCCDCCABACACABABAB695947),
    .INIT_7D(256'h6273737373739393B3B59452313131526342624263A552A518F708295A6B5A5A),
    .INIT_7E(256'hBDDE3984A5313131082916F5B3B3A49393937373737362525262626273737373),
    .INIT_7F(256'h93C6E6E6E7070638485778997889AACBCCCCDDCDBDBDCDBDCDDEDECECEBDBDBD),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized15
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
    .INITP_00(256'hF831001C0063E771FFFFFFF0E00000000000FFFFFFFFFFF003F801001E006066),
    .INITP_01(256'hFFFFFFFFFFF801FC08802C00F3EEF1FFFFFFF1F00000000001FFFFFFFFFFF001),
    .INITP_02(256'hF7FFF880000007FFFFFFFFFFE081FC01803C03C1C8A0FFFFFFF3FFC000000003),
    .INITP_03(256'h06018710FFFFFFFFFFF9E000000FFFFFFFFFFFE041FE46C03D0ECC000DFFFFFF),
    .INITP_04(256'hFFE401FF02602C06100E007FFFFFFFFFFBFFE7800FFFFFFFFFFFE801FE60E03C),
    .INITP_05(256'hFF807FFFFFFFFFFFCA03FF83203000C07C06BFFFFFFFFFFFFFF7801FFFFFFFFF),
    .INITP_06(256'h3FFFFFFBFFFFFFEF80FFFFFFFFFFFFE013FFC72001F0C0008E3FFFFFFFFFFFFF),
    .INITP_07(256'h818020F19801A11FFFFFFBFFFFFFEF81FFFFFFFFFFFFF03BFF87C019F4C28180),
    .INITP_08(256'hFFFFFFFFE60FFF880000C1187001FFFFFFFBFFFFFFC706FBFFFFFFFFFFCE1FFF),
    .INITP_09(256'hFFFFFFC00F8FFFFFFFFFFFF42FFFFC000002BFE218F7FFFFFBFFFFFFC20FE3FF),
    .INITP_0A(256'h5E3FB812FFFFFCFFFFFF80071FFFFFFFFFFF9463FFFFC000027FCFB183FFFFF9),
    .INITP_0B(256'h8C63FFFFF820BFCFFFB838FFFFFC7FFFFF800E3FFFFFFFFFFFCE63FFFFF00008),
    .INITP_0C(256'h18FFFFFFFFFFFEDC7FFFFE7800FFC3CFFEF1FFFFFC7FFFFE000C7FFFFFFFFFFF),
    .INITP_0D(256'h1FFFFC0FFFF80033FFFFFFFFFFFE3C7FFFFCF810FFDC0FF3F03FFFFC3FFFFC00),
    .INITP_0E(256'hF8008E7021F1FC1FFFFC03FFE00077FFFFFFFFFFFFB87FFFF9F830FE700FFB18),
    .INITP_0F(256'hFFFFFFC01FFFF7F820FCFFE007CC0FFFFC000000007FFFFFFFFFFFFFF07FFFF3),
    .INIT_00(256'hB4A4F60707180782953173848383B4B4946A9BB4C6E693C5C61807E6D50759F6),
    .INIT_01(256'hC4D4E5E5D4D406486959594827E6A4938283C5946282F607D5E5E582527283A4),
    .INIT_02(256'h9CAD9CACBDCDCDBDBDCDBDBCACBCBCAC8A8AAB9A9A9A694716373716E5F5E5E5),
    .INIT_03(256'hB3B573313131216373313173B57363F73929295A5A6B7B6B4A6B8C8B7B7B8C9C),
    .INIT_04(256'h6B3716F5F5B3A493A4A4937393737352627373737373737393937393939393B3),
    .INIT_05(256'h47687868899AAABBBBBCBCBCBDBDCDCDCDCEDEDEDECEBDCEBDADCE19945210F7),
    .INIT_06(256'h424273B4B49494B4F69C49D5E7A507274A6A49F6F6492807C5288B07C5D5C527),
    .INIT_07(256'h5959484848F69382B4D50718C582B407F6C4E5A3625173A4A4A4F6070707D593),
    .INIT_08(256'hBDBDBDCDBCBCACCCCC8A9A7A598A794816163716F5E5F5E5D4C4B3C4D5B4D549),
    .INIT_09(256'h733152B58442B52929394A6B6B5A5A5A5A5A7B7B8C9CADADBDBDCDBDCDCEBDBD),
    .INIT_0A(256'hB3B3B3B393937373939393939393939393939393A4B3B3B3E4B3313131423152),
    .INIT_0B(256'hBBBBBCBCADBDCDCDCDCDCDCECECECECEBDBDFF4A6373B57B77371616F5E4E4E4),
    .INIT_0C(256'h7BBD2807B4B428599CAD9CE6074907E6077BCD285294A3063757688989899ABB),
    .INIT_0D(256'hB4D5E6F607D562D507D5E5D5625193A5A4A407F60728B48242627293949394F6),
    .INIT_0E(256'hCC8A7A9A593769583706060616E5F5F5E5C4B3B49473C5595969595948068272),
    .INIT_0F(256'h194A5A7B8C5A5A6B8C7B7B9CADADADBDCDCDCDCDCDCECECDBDBDBDCDCDCDBCBC),
    .INIT_10(256'hE4E4B3B3B3B3B3B3B3B3B3B3B3B3B3B3F5A42131314252314262949463942929),
    .INIT_11(256'hCDCDBDCECECECECEBDBDFF2910635A6A56361616161616161616F5F5E4E493B3),
    .INIT_12(256'h284AE6C507C4B4F649E718E6B5D5C4E53768686868898A799AABACACBCBDCDCD),
    .INIT_13(256'h28E6C4E6937273A4A4A418272828D5B494837294E6F71818BD8BE6F6B4D5F607),
    .INIT_14(256'h371606F5F5F5F5F506F5C4B48432B58B696969594817B4B4A4B4B4B5E6C6B428),
    .INIT_15(256'h8C8C8CBDBDBDBDBDCECECECECDCDCECEBDBDBDBCCCCDCCCCAB7A9A9A69371647),
    .INIT_16(256'hE4E4E4E4E4E4E4E4E4732152426352315273847373083939294A6B8C7B6B7B7B),
    .INIT_17(256'hCEBDDE8CB5198B9877451416161636363636161616F5E4F516F5F5F5E4E4E4E4),
    .INIT_18(256'hC67393E74928F607484757686879799A9A9BBCCCCCBDBDBDCDCDCDCECECECECE),
    .INIT_19(256'hA4A4186A4907F607C6947273185A39D56A0783B42818C5D5E6F6C5D5C5C4D5D5),
    .INIT_1A(256'hD406E5A48432A68B69695959482706E6C407E7A5A41818F64928D5D5D58273B4),
    .INIT_1B(256'hCDCECECECDCDCECDCDBDBDCDACCCCCACBBAB697A58694737371616F5E5E5F5E5),
    .INIT_1C(256'hE462315262624231739463630839194A4A4A6B6B5A6B9C9CADADADADADCDCECD),
    .INIT_1D(256'h77775636143636563636361616F5F516161616F5F5E4E4F5E4E4E4F5F5F5F5F5),
    .INIT_1E(256'h371637687989899AABABBBCCCCBDBDBDBDCECDCECECECEBDBDBDBDCEFFFFBDA9),
    .INIT_1F(256'hA5737293C65A5AB493B4E6F6F693D50707B4C5B4B449AC28D5C5F618E7E6E6F6),
    .INIT_20(256'h69595959483806E6E50728E7C6C6F683075907B4B493A4B593B407071807C5C5),
    .INIT_21(256'hBDDDDDCDCDACACAB9A9A9A6958376837161616F506F5E5F5E5D4C4A58422A68B),
    .INIT_22(256'h847342E7291939395A7B7B5A5A8C9CADBDADADADADCDCDBDCDCDCDCDCDCDCDCD),
    .INIT_23(256'h5636363616F516363636363645363636363616F5F51616161673317352424252),
    .INIT_24(256'hBBABABBCBCBCCDBDCDCDCECECEDECECECEBDBDBDADADBDA99856777736565656),
    .INIT_25(256'hC5B4E607B483B4D5D5C5F6F628BC59B4D5C6D5E6A3B4D5D5F606376889686889),
    .INIT_26(256'hC4D5F6B452830793C55907B4C5A493A583B407E607078292B473B4C6A54928C5),
    .INIT_27(256'h9A698A6969484737161606F5D406F5D4D4D593736421A69B6969696959594817),
    .INIT_28(256'h395A5A5A8CADADADBDBDBDBDBDBDBDCDCDCDBDCDBDBDBDBDBDCDDDCDBCCCBC9B),
    .INIT_29(256'h565656565656777777775636F516363637A552A5314263737352E74A294A4A39),
    .INIT_2A(256'hCDCDBDBDCDDEDEDEDECECEDE8C7BBDA9C9987777777756565656565636163656),
    .INIT_2B(256'hD50728072859C483F6E6C5D5B40707E607E627586858898A8A9AABACACBCDDDD),
    .INIT_2C(256'hD5F607B4D5D5C5A583E64907D5F6B4A3B4D5C5E6E6E7C5C50728D5B4D5B4B4D5),
    .INIT_2D(256'h3706E5F506F506E5C493B4953333297B696969595959593817E6937231B42827),
    .INIT_2E(256'hADBDBDBDCECDBDCDCDCECECDBDBDBDBDCDDDDDDDBCBCCCBCAB9A697958474747),
    .INIT_2F(256'h989845143616363637E652635263735284194A394A294A5A5A5A397B9CADBDAD),
    .INIT_30(256'hCECEBDFF5A29BD77C9A998363656777756565656363656565677777777777798),
    .INIT_31(256'h4AF6C5D5074907E6E6C506485868798A8AABBCACBCBCDDCDCDBDBDCDCDDEDECE),
    .INIT_32(256'h93B4D5F6D5B4D5066A7A4906C5C5E6D5289CE68393C5E6D5F6E6D5D5D5C483C4),
    .INIT_33(256'hD572E69C73737B5969595948595948383828E79451074928E6D528D5B4B4A5A5),
    .INIT_34(256'hCDCECECECDBDBDCDBDCDCDCDCDBCBCAB9A9A798968474746262616F5F5E5E5E6),
    .INIT_35(256'h37B5216263736394294A29394A395A39396B8C8C9C9CADADADBDADBDCECDCDCD),
    .INIT_36(256'hCA98989877777777777756563656777777777777987777C9C97745E436565636),
    .INIT_37(256'h82A31626376879798AAAABABACCDCDCDCDBDCDCDCDCECECECEBDBDDE4AE7CA77),
    .INIT_38(256'h9BBCDD17D507C6F66A49B4D5D5D507F607E6D5D5D5B483078BD5F6D5F6F68282),
    .INIT_39(256'h7A6959595959595907C6D7B6B52828496A28E6E6D5D5A4A493D5E6070783B406),
    .INIT_3A(256'hCDCDCDBCACCCDDBB9A8A9A484868585715151616F5F5E5C4C48339AD19B57B6A),
    .INIT_3B(256'h191839294A3929295A7BADADADADADBDBDBDCECECECECECDCDCDCDCDCDCDBDBD),
    .INIT_3C(256'h7777777756777777777777777777A9CA7777149216363636366263736384A508),
    .INIT_3D(256'h697A9AABACCDBDBCBDCDCDCDCDCECECECECECEDE4A9377A9C998779898987777),
    .INIT_3E(256'h07C5F64A28E6F6E6E6E6F6D5A3B4B42849D528B46293C417E6C4D40637585847),
    .INIT_3F(256'h27C563A5E783B44918D5B4D5D5C5A4B493E607C593628282598B9B06C5D5E649),
    .INIT_40(256'hAB8A7969584847584716F5E5061606D4B483E77B5A4A6B7A8A69695969595959),
    .INIT_41(256'h8C9C9C9CADADADBDBDBDCECECDCDCDCECECECDCDCDCDCDADBDCDCDCDBCBCBCBC),
    .INIT_42(256'h777777777777C9C97798E431B3161637B3739473B50829F71839392918E7187B),
    .INIT_43(256'hBDCDCDBDCDCECECECECECEFF6B4237CAA9989898987777777777773656777777),
    .INIT_44(256'hE6077A1782C5D5F5D5C5D5E6F6A3B3385948170606163737699BAB9B9CCDBCAC),
    .INIT_45(256'h9382C4D58272A4C5A4C5C5B4B4A383B42807D583A3B4E607E6C5F64907D5F6F6),
    .INIT_46(256'h374716D4D41606D5B49473944A7B5A6A7A6969695959595927D5C4D5169283C6),
    .INIT_47(256'hCECEBDCECECECECDCDBDCDCDCDCDCDBDBDCDCDBCACACBCBBABAA796989473737),
    .INIT_48(256'h7777931051B316B5739473D619395A4A5A3918E7D6F75AAD9C9C9CADADBDBDBD),
    .INIT_49(256'hCECECEFF7C6316A9A9A99898989898987798A97777777777779877779898C998),
    .INIT_4A(256'hB3E6E6287AB431E617061706E50637699A8A7A9BACACBCCDBDCDCECDBDCDCECE),
    .INIT_4B(256'hA4B4B4D5D5C4A3B49351627282D507D507E607496A270728373806E6D5C406E4),
    .INIT_4C(256'h51E74A1008AD396A7A69696969695959380636454514E4E4E4D5C5933172C5D5),
    .INIT_4D(256'hCDBDCDCDCDBDBDBDBDCDBCBCBCACABAB9A8A79794758471606061616E506F6A5),
    .INIT_4E(256'h637363A508195A5A39F7B5C6295A7B9CADADBDADADADBDBDCECEBDCECECECDCD),
    .INIT_4F(256'hA9A9A9A998989898779898779898777777987798A9A9A9775636625162739352),
    .INIT_50(256'h06A382B3C4E5376948589AAB9B9BBCCDADBDCECDCDBDCEBDCECECEDE9C94E66A),
    .INIT_51(256'h838393A383D507F6F649498B9C9B59381706C5D51656777514E43828F6C4C406),
    .INIT_52(256'h7A7969696959696959271475A6A675434343E4825173D5D5A49373A493839292),
    .INIT_53(256'hBDCDCDCCCCAC9B9A8A8A69794848581616E5F506E627E783634A9C4364D65A7A),
    .INIT_54(256'hA594D6395A5A7B8C8CADADADADADADBDBDBDBDCECDCDCDCECECECDCDBDCDCDBD),
    .INIT_55(256'h779898987798987777779898C9C9987737F631315293732142736384F7183918),
    .INIT_56(256'h16598A698AACACACBDCDCEBDBDCDCECECECEBDBDFF3994F577A9A9C9A9989877),
    .INIT_57(256'hF607F628598B59E5E6F6075677C9C9D74382176A07E6D5C4B451B406E5E606D4),
    .INIT_58(256'h692714759595757573757313E4A5A4B4A3C5D5C4B4B4B482D5B4D5F607F6D5E6),
    .INIT_59(256'h9AAB7937485858471606D4D506280821948C7C8410848B8A7A69696969696969),
    .INIT_5A(256'h9C9CADADADBDBDBDBDCECECECECECECECECECECDCDCDBDADBDBDBCBCBCAC9B8A),
    .INIT_5B(256'h777798C9A9CAA93636A4517363734242636373B5184A39B5A5E7285A8C7B8C9C),
    .INIT_5C(256'hBDAD9CADBDBDCECECEBDBDBDDEDED631E4CAA9C9A9C9A97777A9987798779898),
    .INIT_5D(256'h5938073677D7D7A602C116286AF6B4C482E57AAC17A3B4A33869598AAC9C9BBC),
    .INIT_5E(256'h0243434314C5A4B4A3E606E6C4B4936207E60706060717172707E6D549491717),
    .INIT_5F(256'h16F5E6F61829D610E7AD6BD632B58B7A69595959596959485938144395954313),
    .INIT_60(256'hCECECEBDCECECDCDCECECECDBDCDCDCDADACBCBCBCAC9A7A69799A6937262637),
    .INIT_61(256'hF562529473634252736273F74A29D6B5E6184A7B8C8C8C8CADADADADADBDBDBD),
    .INIT_62(256'hBDCECEBDCEDEF7626237CAA9A9C9CAA99898A9A9A998989898A9A9CAA9A977F5),
    .INIT_63(256'h17373706070707F638ABAB59C4A3E6072727488AAB8B9CBC9C9CADBDCDBDADAD),
    .INIT_64(256'hB4F6E6E6D5728293072728060627498B8B49F6E6E6D507284907F68213989877),
    .INIT_65(256'hA57C395A29188B6969595969695948495959454373731382C173730213E4C5B4),
    .INIT_66(256'hCDCDCECDCDCDBDBDCEBD9C9CACACBB9A6959587A694706E50606D507295A9510),
    .INIT_67(256'h6373F73939D6B5F718297B8B8C8C8C8CADADADADADBDBDBDBDBDBDBDCDCDCDCD),
    .INIT_68(256'h94B51698C998CACACA98A9CA98A9CACACACAA998A95693949373737373523152),
    .INIT_69(256'h27272849D583D5C594E6287A798AAC9B9BBCBDBDBDBDADADBDBDBDBDCEFFD673),
    .INIT_6A(256'h8B9C8B4969AB7A590706D5285907D5E6E6F7A59306377A8A8B8B9A69E6D5496A),
    .INIT_6B(256'h6959697A69595959695948454545E4C173D7A64313F5B4B493C4E606D5626282),
    .INIT_6C(256'hADCDBCAC9B9B9BAB8A695837796816F5C4E618184A193232334A5A6B6A6A6A69),
    .INIT_6D(256'h295A7B8B9CAD9CADAD9CADBDBDBDBDBDCECEDECECDCECECECDBDCDCDCDBDADAC),
    .INIT_6E(256'h989898A9A998A9CAA998989877933152627362427363425263B52939F7F71829),
    .INIT_6F(256'hA5C6D50669AB7A9BACACACACACBDCDBDADADADADBDBDA594A56331B336CAA9A9),
    .INIT_70(256'h827A8A06C4D5C5C5D5E6B4D51706489AABBBCC8A07F64927B493E68B4AB5A583),
    .INIT_71(256'h6948383738E492437373734313E4D5C673C41706C46283729B7A6A599BAB6A92),
    .INIT_72(256'h8A4869583769581606E708397C94213332197C6B49597A696959595959595969),
    .INIT_73(256'hADADADBDBDBDBDBDCECEBDCECEDEDECECDBDBDCDCDBDBDAD9C9CBCACAB8A698A),
    .INIT_74(256'h989837F5B3526373736262528484424263185A18E71829395A6A7B8B8C8C8C9C),
    .INIT_75(256'h9B9B8B8BBDCECDADADBDBDBDBD7C8494A57394A593E456779877777777989898),
    .INIT_76(256'hD5F628F6C4B4D527597A5916E6B4E6170707397B5A18B573849393066969698A),
    .INIT_77(256'h9595957745E4E5D583D5E5E6B482C5A349E6C5E649AB0631B49BDD38729394A5),
    .INIT_78(256'h28294A4AA5213333320808396A7A7A7A7A6959595959696969594848E6821395),
    .INIT_79(256'hCEBDBDBDBDCDCDCDCDCDCDBDBDCDBDAC9C9CACACAB8A69696948483716373737),
    .INIT_7A(256'h5262737394946352B53939081818185A6B6B7B8C8C8C8C8CADADADADBDBDBDCE),
    .INIT_7B(256'hADBDBDADBDDEB542A5A58473A55282B3B3E4F5E4F5F5E4B3B393517384527394),
    .INIT_7C(256'hB4C4D5B4D52749281636E7E75A3983425272A5D5277A7A697A9B9CACACACAC9C),
    .INIT_7D(256'h93E606B493E693837B4907070728D5D5287A8A6938071828280707D5D5D5C5B4),
    .INIT_7E(256'h43E773398B8A7A7A7A6959595959696959595948E50677A6D7A6A69836E4E5D5),
    .INIT_7F(256'hBDBDCEBDADBDBDADAC9C9C9B9B9B7A5948483737160606061829F76421334343),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized16
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
    .INITP_00(256'h000001CFFFFFFFFFFFF8001FFFFFFA00FFEFFF0ECC0FFFFE00000000EFFFFFFF),
    .INITP_01(256'hFEFFFC0FFFFF00000003EFFFFFFFFFFFF0003FFFFBF800FFEFFFF1FE0FFFFE00),
    .INITP_02(256'h7FFFFDF024FFFFFFFFE60FFFFF00000007FFFFFFFFFFFFC0003FFFFBF23CFFFF),
    .INITP_03(256'hFFFFFFFFFFA000FFFFFFC000FFFFFFFFFE0FFFFF8000001FFFFFFFFFFFFFC000),
    .INITP_04(256'hFFFFE00000FFFFFFFFFFFFFF8001FFFFFFD04DFFFFFFF0080FFFFFC000001FFF),
    .INITP_05(256'h3EFC1FFFFFFE07FFFFFC0001FFFFFFFFFFFFFFC001FFFFFF087EF79FFFF11C0F),
    .INITP_06(256'hFC0007FFFFFF000CFFFFFFFFFE07FFFFFF000FFFFFFFFFFFFFFE0003FFFFFF80),
    .INITP_07(256'hFFFFFFFFFFFFFFF4000FFFFFFF0000FFFFFFFFE207FDFFFFF6FFFFFFFFFFFFFF),
    .INITP_08(256'hFE3F07FEFFFFFFFFFFFFFFFFFFFFF4001FFFFFFE3000FF3FFFFF0607FEFFFFFF),
    .INITP_09(256'hFFFEC0787BBFFFBFFE07FF7FFFFFFFFFFFFFFFFFFFFB801FFFFFFEF0707F7FFF),
    .INITP_0A(256'hFFFFFD83C07FFFFFFE007AF73FFFE7CE07FF3FFFFFFFFFFFFFFFFFFFC7C03FFF),
    .INITP_0B(256'hD3FFFFFFFFFFFFFFFFFC03E0FFFFFFFF00704FFFFFFFB707FF9BFFFFFFFFFFFF),
    .INITP_0C(256'h3EF37FFFF707FFE0FFFFFFFFFFFFFFFFFC01FFFFFFFFFF20601FE77FFFF707FF),
    .INITP_0D(256'hFFFFFFFFFFC060B5BFFFFCFF07FFE07FFFFFFFFFFFFFFEF003FFFFFFFFFF4071),
    .INITP_0E(256'hFFFFFFFFFF001C7FFFFFFFFF8040CBDFFFFFFF87FFF0DFFFFFFFFFFFFFFF000F),
    .INITP_0F(256'hFF87FFFC07FFFFFFFFFFF7FA00303FFFFFFFFF0080C1FFFFFFFF87FFF81FFFFF),
    .INIT_00(256'h393918F71829295A5A7B8C7B8C9CAD9CADADADADADBDBDADBDBDBDBDADADBDCE),
    .INIT_01(256'h639494523152527393514252732131735142637352737352625273A573736294),
    .INIT_02(256'h1677B3830759F6424283636217AB697A8A9B9B9C8B7B8BBDBDADADADBDDE4A31),
    .INIT_03(256'h8B6A496A6A596A8B7A4906D57ABC9BAC9B49384838387A28C5D5D5D5076A49F6),
    .INIT_04(256'h7A695959596969695948483706489895A673437516E406E693E6F682B4F662B4),
    .INIT_05(256'hCDBD9C7B8B8A8A593837170606E6E6D5B573323233434332A595B59C7B8B8A8A),
    .INIT_06(256'h5A7B8C7B8C8C9C9CADADADADADADADADADADBDBDBDBDCDCDCDCDBDCDCDBDBDBD),
    .INIT_07(256'h94526362A55242736231426373736352524263737373A5183918F7F70839395A),
    .INIT_08(256'h5252523106BB7A7A8A7A7A8B9CACACAC9C9CADAD9CADBDB53152737373945263),
    .INIT_09(256'h6A4927E6378AA9A99898A9A98AA9565959492818E6D5D5144598754537375963),
    .INIT_0A(256'h5948483806E645959543131414C4E6D583C4F6C5E6D583728B4A6A7B7B7B9B8B),
    .INIT_0B(256'h48171717F6F6B493A5846333333343329563499C7B8B7A7A6969696969596969),
    .INIT_0C(256'h9CADBDADADBDADBDBDBDADADBDBDBDCDBDCDCDBDCDBDBDBDBDBDAD8B7B695959),
    .INIT_0D(256'h62737373735252525262427394D63939080808F708295A7B8C7B8C8C8C8C8CAD),
    .INIT_0E(256'h7A7A7A7A9C9C9C8B9CACBDADAD9CCE396342425273A5B5736373736242737352),
    .INIT_0F(256'hD7D7A675BA9802E56A5A7B7B4A492845757545265804E57342526352069A6969),
    .INIT_10(256'h95A69814B3B306D572A307070707C6626B5A5A5A6A7B8B8B7B7B8B9B7777A6D7),
    .INIT_11(256'h526333334343434332E79C7A7A7A7A6969696969696969594848484837E51375),
    .INIT_12(256'hBDBDBDADBDBDBDCDBDBDCDBDADADACADADADAC9C7B6A48383817D5D5E6C5B473),
    .INIT_13(256'h6284A584D62919081829291818295A8C8C8C8C8C8C9C8C9CADADADBDADADADBD),
    .INIT_14(256'hACACBDAD8C8CAD9CD6634252424273949484A5D6A5D694637373624242424252),
    .INIT_15(256'h4A5A6A8B7B9B9AA9C9A978E5D416068242526351068A59697A8A7A7A9B8B9BAD),
    .INIT_16(256'h82D517927207F7835A6B5A8C7B4A7B8B7B5A7BA977A6D7D7D795734375431417),
    .INIT_17(256'h947B7B7A7A7A79696948596969595959595959694838F54598A97716F6B4C5B4),
    .INIT_18(256'hAD9CADAD8CAC9C9C9C8BAD9C8B7A69380617E6C4C49363733233333343434322),
    .INIT_19(256'h1829392929396B8C8C8C8C8C8C9C8C9CADADADADADADBDBDADADADBDADBDBDCD),
    .INIT_1A(256'h8CD6525242423131424242626362314242424242526363737373B50818181808),
    .INIT_1B(256'h897868580637599331526331069A58699A9A7A7A7A7BAC7B7BBD8C7B7C9CADBD),
    .INIT_1C(256'h6B7B6A4A9B7A7A7A6A7B8BA998A6A677777745454536496A6A6A4A6A59372678),
    .INIT_1D(256'h59696969595959595959594828280737775692B4E7A4B4B492B3E5D5A3B4B4E7),
    .INIT_1E(256'h7B7B8B9C7A6A696907E606C4A38343334333333343432263396A597A69696969),
    .INIT_1F(256'h8C8C7B8C8C8C9C9C9CADADADADBDBDBDBDADADADADADADCDADADADBD9C9CBD8B),
    .INIT_20(256'h4242424242314242424252426384A5A594A5F7291818181818293939395A6B8B),
    .INIT_21(256'h42525231069A58598A9A8B6A288B6A49BC8B7B6B8CAD9C9CBD4A736352424242),
    .INIT_22(256'h59598B8B8B8B8B7B7B9B9B8B8B7B7B7B4A6A4A28F6C492D4D4C4D4E506E5B472),
    .INIT_23(256'h48485959482818393716E607C6A5C5B4D506E5E50707C6186B7B8B1769BBAB9A),
    .INIT_24(256'h48D5C4D57332333352333333433332186A495969696969696969695959696959),
    .INIT_25(256'h9CADADADADADADBDADADADADAD9C8CADBDAD9CBDBD8B9C9C7B7B6A8B8B595949),
    .INIT_26(256'h42425273738494B508191918082939293939395A5A5A7B8C8C8C7B8C8C8CAD9C),
    .INIT_27(256'h8AAB9C6A596A288B7B6A6A5A9C9C8C7C8C9C4AD6A55242425242424242424242),
    .INIT_28(256'h7B6A6A6A6A7B5A6A6A6A6A49F6D5D506D5B4D5062806F6A44252523106694869),
    .INIT_29(256'hA4A4C6C607A5A5B4E558580607286AF75A8B7B18E617383706B4B5287B7B7B8B),
    .INIT_2A(256'h333333333332E76A59596969697A695959595969594848485959485969492807),
    .INIT_2B(256'hADADADADBDAD8C8C9C9C9C7BADAD7B9C7B7B7A49495949170617C57263333233),
    .INIT_2C(256'h191929181919293939395A5A5A6B7B8C8C8C7B8C8C8C8CADADADADADADBDADAD),
    .INIT_2D(256'h496A5A8B7B8C7B7CAD8C8C9C7B18A573733163525252736373947373A5A5F718),
    .INIT_2E(256'h6A6A6A4A4A4A6A7B6A496ABCDD7A8BD631426251E669487A8AABACAC6A288B6A),
    .INIT_2F(256'hC4D41617284A28A5182918182837F5D5E6E6E72829397B7B8B6A6A6A7B7B295A),
    .INIT_30(256'h69596959486969694858695948595948484848485949280707C531316293C5C4),
    .INIT_31(256'h8B9C8C7B8BAC8B6A9C8B6A28492706F6D5D5C664333333333333433322B56A6A),
    .INIT_32(256'h395A5A5A5A7B8C9C8C8C7B8C9C8C8C9CADADADADADADADBDBDADADADBDBDBD8C),
    .INIT_33(256'h9C8C7C8C8C7C5A29D69494527373849484A5D6E718184A4A1919391929291819),
    .INIT_34(256'h6A8BAC9B38389CF731525231E66948698AABACBC9B2849496A4A6A6A8B6B6B8C),
    .INIT_35(256'h28292837567777777798A96A395A5A5A7B7B7B7B5A6A6A8B7B7B7B6A6A8B7B7B),
    .INIT_36(256'h59596959484858585858595958482718E6B5A58362A4D5B4A39282C4274AC6B4),
    .INIT_37(256'h599B6A282827E6D5B483A5843232333333334321954A49595969696959585959),
    .INIT_38(256'h8C8C8C8CAD9C8C9CADADADADADAD9CADBDADADAD9CADADAD7B8C8C9C6A7B8B6A),
    .INIT_39(256'h6B4A2908D60818F7080819394A29292939392929292918394A4A5A5A6B7B8C9C),
    .INIT_3A(256'h42625231F66948699BABACACBC49D5284949296A7B4A5A9C8C7C7C9C8C7B7C7C),
    .INIT_3B(256'h77361416398B6B5A7B7B7B7B7B8B8B7B497A7B6A7B8B7B8B7B4959E5B3E517B5),
    .INIT_3C(256'h59585858594828079383A4E7F7B4B4C5B4B46262D5B5E6E71829293736777798),
    .INIT_3D(256'hA542528433323333334322945A59595969696969695959595969584869584858),
    .INIT_3E(256'hADADAD9CADAD9C9C9CADADAD9C7B8C9C9C8C8BAC7B4A6A8B49496A27F607E6E7),
    .INIT_3F(256'h4A4A3929394A3929394A3939292919395A4A5A5A7B8C8C8C8C9C9C8C8C9C9C8C),
    .INIT_40(256'hABACBCBCBCCD07F62828492928286B7B6B6B7C8C7B7C7C7B5A5A5A6B4A294A4A),
    .INIT_41(256'h396A5A4A39494928284949596A595917E5B39292C40417D552525231D569698A),
    .INIT_42(256'h93E71828E7A5B4D5D5A382B4D593A4941808292916161616F5F5363729293939),
    .INIT_43(256'h333232186A5959695959594848595958595958584858585958485858585949C5),
    .INIT_44(256'h8C8C9C9CAD8C5A9CAD8C8B8B8B6A494959282827F607F7E7E733324233333333),
    .INIT_45(256'h39393939292929396B4A6B6B6B7B8C8C8C9C9CAD8C8CAD8CAD9CADADADBDADAD),
    .INIT_46(256'h1849281828494A6A7B6B8C6B6B8C7B7B6B5A4A4A4A5A5A4A394A4A3919294A39),
    .INIT_47(256'h072817372706069292C416481615580752425231C5698A9BACACBCCDCDCE9BE6),
    .INIT_48(256'hB4074A49C593A473F718081818181808E71839392918295A3929394A4A492807),
    .INIT_49(256'h4858484848595959695959584848585848585859584807C5494A0718A593C5A4),
    .INIT_4A(256'hAD8C7B7B7B7B6A070749280727E7080819942232323333433221D62928595959),
    .INIT_4B(256'h6B4A7B7B5A7B8C8C8C8C9CAD8C7BAD8C8CAD8CAD9CADAD8C9C8C8C9C8CAD6B5A),
    .INIT_4C(256'h496A5A5A7B8C7B6B6B6B5A4A4A4A4A4A3939393939293939292929292929294A),
    .INIT_4D(256'h6959697A581537F652635231C5698A9BACACACBCBCBCEE28D528072949284959),
    .INIT_4E(256'hF708080808F7295A18F739392929395A392918494928294918E7060616374848),
    .INIT_4F(256'h585858484848585959585859584827F66A49E7E79393C593F6BDCDFF2883C573),
    .INIT_50(256'h0707F6F6E6181818190832323333433222D64A28284959485959485959585858),
    .INIT_51(256'h8C8C9C9C8C5A8CAD8CAD8C8C8CADAD8C8C9C7B7B9C9C7B5A9C8B5A7B7B292849),
    .INIT_52(256'h6B7B5A4A4A4A4A4A4A4A392939393939393929291939394A4A6B8C6B5A6B9CAD),
    .INIT_53(256'h73526342D5597A8AABACACBCCDCDCDBCE6B51849592849492728495A8C7C5A4A),
    .INIT_54(256'hF7F7292918293919192919182929295A391818E6E63748593806D4D4474816F6),
    .INIT_55(256'h58595958384849E6C5C694A5A493D5C4E69B9CEE49C607B508080808F7181918),
    .INIT_56(256'h1839E72121322121F77B6A594949594848595969685858595958584837485858),
    .INIT_57(256'h9C8C8C8C8C8C9C8C8C8C7B5A8C6B7B5A5A7B6A4A6A28E70707B4B4A4A5D63908),
    .INIT_58(256'h294A392929394A4A4A4A2929294A4A29397B8C8C7B5A8C8C8C8C7C8C8C7B8CAD),
    .INIT_59(256'hAB9CACACBCCDCDEEAD95A6296AC628180727495A5A5A4A4A6B6B5A4A4A4A4A5A),
    .INIT_5A(256'h19295A39292918295A5A18373727383806E51616E5386959A4315252D569798A),
    .INIT_5B(256'hF6F6F6A56282C5B4D58B8B49E6C5A4A4F719F7E7181808181818081818181839),
    .INIT_5C(256'h6A6A69596A596969594858586869595859585848485848485969595848484827),
    .INIT_5D(256'h7B7B8C6B6B5A6B5A397B4A294A4AE6A5C6B4A45252940818180829D6736485F8),
    .INIT_5E(256'h4A4A1819294A4A194A8C8C8C8C7B8C8C8C7B6BAD8C5A8CADAD9C9C7B8C8C8C8C),
    .INIT_5F(256'hFF6B5318F8A607072728594A2839395A5A4A6B4A39394A6B29294A292919294A),
    .INIT_60(256'h393929397B8B59597A8A7A48E5069A6AA4315242D5698A9AACACACACBCCDBDBD),
    .INIT_61(256'hC55959C593C5B4B4E7F7F71819081819185A18F7F7181919F7195A3918081818),
    .INIT_62(256'h696958585859695958584848585958596959595969694828E6D528B47293C5C5),
    .INIT_63(256'h6A4A28291828D694948463632121B519081818294A39394A59697A7A6A595969),
    .INIT_64(256'h396B7B7B7B8C8C7B8C7B6B7B9C395A8C8C9C9C7B7B5A8C9C6B6B6B7B7B7B395A),
    .INIT_65(256'h07284907282828295A5A5A4A394A394A4A29394A29181939394A4A29394A4A39),
    .INIT_66(256'h698A3706F6387A28A5315252D548699AABACBCBCBCBDBDBDBDFF183285C7C6E7),
    .INIT_67(256'hD6D61829081808E708391808F7F71808F7081818183929182939391829493848),
    .INIT_68(256'h59484858596959696959585859595928F606E6A48393A5C5B449AC6A9494E707),
    .INIT_69(256'h9464312143E71818181819292928494A6A6A6A59595959696969596958585959),
    .INIT_6A(256'h8C6B5A5A8C6B5A8C6B7B9C5A5A5A5A7B6B6B5A5A5A5A6BF718291818E6F7D652),
    .INIT_6B(256'h2929294A39394A395A4A19293929192929394A39394A6B5A4A5A6B8C6B8C8C7B),
    .INIT_6C(256'hF7216342D55969699BACACACACADADADBDCDDEA622A6A6A6C649282738281807),
    .INIT_6D(256'h08F70808373737373777372939292929183929183929F5E5165848176A6A378B),
    .INIT_6E(256'h69595859595948372707B493B5C593B4D50728E6B4C5C5D518E71818F708F708),
    .INIT_6F(256'h292919291818496A6A6A59595969696969696969686858484848485859585969),
    .INIT_70(256'h6B5A8C5A395A6B8C6B4A5A18395A5A18B5F7E7E7C6C694423363219418292918),
    .INIT_71(256'h39191929292918181929292939395A5A6B4A6B8C8C9C7B7B7C6B5A397B8C5A6B),
    .INIT_72(256'hBCBCACACBCADADBDBDBDDECD645395951828F628482707071818182929185A39),
    .INIT_73(256'h98A67556370818192918181829393727282828498B49499B07215242D5697A9A),
    .INIT_74(256'h07B493A49383B4C5D507C5C6E6B5C6D50749E7E708E708193918F73798A99898),
    .INIT_75(256'h6A6A596969696969796969695958584847484848585959696959596959584837),
    .INIT_76(256'h5A395A29085A393994A5D6D6A58363321033E7193919D6639408181818494A6A),
    .INIT_77(256'h1829394A2929395A5A5A8C6B7B8C5A7B8C5A3939398C5A5A5A297B3929395A7B),
    .INIT_78(256'hBDBDBDFF8C5364A6D6C6E71827270718072929291818394A2918182929181808),
    .INIT_79(256'h3939392918293937372928497B6A498A48314252E67A7AAAABAB9CACCDBDBDBD),
    .INIT_7A(256'h07E6C5E6B5C5C6F62828A5D6E7E7F71829183798C9C9C9C9D7D7A69577370829),
    .INIT_7B(256'h697979796969584848484848596969595969696959484838E6B493D5E6A5A4A4),
    .INIT_7C(256'h946394837352214295F73919E784313121A518395A6A6A6A6A7A7A7A7A696969),
    .INIT_7D(256'h6B6B6B5A5A7B5A5A9C29085A395A293939293939F718395A3918183908D618E7),
    .INIT_7E(256'h8585C7C6F707070718391828181818181818181819190818183939394A4A5A4A),
    .INIT_7F(256'h285949282839498A8A524242C559698AABBCACBCACACADBDBDBDBDADDE6B4264),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized17
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
    .INITP_00(256'hFF8000187FF7FFFF87FFFE01FD6FFFFF9DF7C000C07FFFFFFFFF800019BFFFFF),
    .INITP_01(256'h800603FFFFFFFFFF8000007CFFFB8F87FFFF00F815BFFF9903800380FFFFFFFF),
    .INITP_02(256'hCF21001CF80000001C07FFFFFFFFFFC0180D07DE7F0F87FFFF801080BFFC8801),
    .INITP_03(256'h033FFFFF87FFFFFF20000610000000301FFFFFFFFFFFD89231C67FFE7F87FFFF),
    .INITP_04(256'hFFFFFFFFF880FE5E7BBFFFC7FFFFFE00000000000000407FFFFFFFFFFFF082FF),
    .INITP_05(256'h0000000603FFFFFFFFFFFFFC3CF0F0E0BB03C7FFFFFE0000000000000081FFFF),
    .INITP_06(256'hC7FFFFFF000002000000030FFFFFFFFFFFFFFC3C90E001FE3FC7FFFFFF000002),
    .INITP_07(256'hF8F0300019ECFFC7FFFFFF00000000000001EFFFFFFFFFFFFFFC78300003FF7F),
    .INITP_08(256'h0FFFFFFFFFFFFFF3E1E000BC59B7C7FFFFFF801000000380003FFFFFFFFFFFFF),
    .INITP_09(256'hF061C00001E000007FFFFFFFFFFFF30980024F5B7FE7FFFFFFE001000003C000),
    .INITP_0A(256'h3008C7E7FFFFFFF8C8100000E000001FFFFFFFFFFFFFF880034767F7E7FFFFFF),
    .INITP_0B(256'hFFFFFFFFE100021C13D3E7FFFFFFF90C3E18007000000FFFFFFFFFFFFFE10102),
    .INITP_0C(256'h0000000000000000000000000003C85363E7FFFFFFF70FFFF80038000003FFFF),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hC5B5D61818F7D60808E73798D7D7D7D7D7D79573453618292939391839292918),
    .INIT_01(256'h4848485859696969696969595958483827C5B4E6A57393A4F6C59493B5E6A5A4),
    .INIT_02(256'h1929E77322213152C6294A5A6A7B6A6A6A6A7A7A697A7A696979696969696858),
    .INIT_03(256'h8CF7E75A5A29F71818081818F71829392918F7F7F784B5B563424242642273E7),
    .INIT_04(256'h4A4918071818F708F71808F708190818181839394A4A5A5A4A7B5A5A39394A39),
    .INIT_05(256'hAC833131D559688AAB9B9CACADADADADADADADAD9CDE3922639594B5D6C5F618),
    .INIT_06(256'hF7083777A6A6954545141416F536080829191929291818297A3827281829498A),
    .INIT_07(256'h797969695959483828D5D5C5726293C59383A5C5E6C6A431A5D6E71919F7D6D6),
    .INIT_08(256'h49494A6A7B7B7A7A7A7A8A7A69697A697A79696969685858585858586969797A),
    .INIT_09(256'hD6F7F7E7E7F7282929E7D6C6B56384955222422132B5191908B53221322284F7),
    .INIT_0A(256'hF7F7F708E708F71808E74A6B4A394A6B4A4A5A6B191808195AF7D61839F7F708),
    .INIT_0B(256'h7A8A9B9CBCBDBDADADADBDADBDBDDE39324295A56393D5E74A4A281807F7F7F7),
    .INIT_0C(256'h1616185A393718081818182918F7192938D4A3D518394A8ACCB52131C5698979),
    .INIT_0D(256'h27E6D5A4B4E6A5A5B5A5A5E6D5A48374C6D6E7D6E7F7E7E7F71808373736F5F5),
    .INIT_0E(256'h8B7A6A6A7A69697A69696969695958484858596969697A7A6979696948484838),
    .INIT_0F(256'h089473737352526342322173E72918D664212232439528394949496A7B7B7B8B),
    .INIT_10(256'h18C6186B5A1908395A19295A0808C6E729F7C6F718B5F7E7B5D6E7C6B5E7F718),
    .INIT_11(256'hACACACACBDBDADDE6B95335284D6C6A5F7E7F729F7F7E7F718D6E7F7E6D6E7F7),
    .INIT_12(256'hF718181808081908A38292B40607499BDDC61042D5696868699BACACBCBDBDAD),
    .INIT_13(256'hC6B5E64A189383A4D6D6D6E71818F708E7E7F7E7F70808082908E718181918F7),
    .INIT_14(256'h69696969584848585959697A7A7A7A7A7A7A7969484848482728D5C6F7C6A5A5),
    .INIT_15(256'h2121A51929088422224232A6F8494A4A6A4A4A4A6A6A7B8B8A8B7A6A7A7A6969),
    .INIT_16(256'h1818291808F7C6D6D6B5D6C6E6B5E7D6A5B5B5B5A5B5B5B5B584314263523153),
    .INIT_17(256'hCEADE7948CCE6B18B5B508F7D6E6C618E7C6E7C6E6C6D6D6E7C6C6083929D6F7),
    .INIT_18(256'hE558697A5927499BEEE71042C569598AABACBCBCCDBDADADACACADBDBDBDBDAD),
    .INIT_19(256'hC6D60808E7D6F7180818F7D6F71818F7D60839190818181818080818181918E6),
    .INIT_1A(256'h69697A7A7A8A8A9A8A796959596959484807A318297372B407D5E749B4E618A4),
    .INIT_1B(256'h2273E729597A7B6A7B7B7B6A6A6A6A7A7A8B8B8A7A7A7A697979696969584858),
    .INIT_1C(256'hD6B5B5B5C6B5B5B5A5B5848494949494944221315252522222D61918D6522122),
    .INIT_1D(256'hD7D718D69494C6D794F7C6A5A595B5B5D6D6D6A5E71808B5F7F7F708F7E7B5D6),
    .INIT_1E(256'hEEF72142D55969AAABACBCBCBCADADADADBDBDBDBDBDBDADADADBD7B6B6BBDAD),
    .INIT_1F(256'hE5E6D5E6E7F75A08B5F72939391819192908081918181859ABBBAB9A8B8B7A9B),
    .INIT_20(256'h8A7A69695948594848141356E48373D549C5E7E662C639B51828290818182928),
    .INIT_21(256'h7B7B7B7B7B7B6A6A6A7A7A7A7A7A6969696959596969595859697A7A698A8A9A),
    .INIT_22(256'hB5847383636363635232323232421033E719F79431212142A5184A4A7B8B7B7B),
    .INIT_23(256'h95A685A65384D6A5B5D6B5A5D6B5E7E7C6E7C6C6C6C6D6D6B5A5A5A5C6A5A594),
    .INIT_24(256'h8A9BABACACACADBDADACADBDADACADBDBDAC8B9C8B3939B6536433638464B664),
    .INIT_25(256'hC518292908D6180818E708391808298B4927060617498BACEE182142C4696879),
    .INIT_26(256'h3856A69513A352E718D5F693C5B5A5947A4927386A6A49C4D404F507282828B4),
    .INIT_27(256'h6A59597A8A7A6969696969595959695959597A8A8A8A8A9A8A7A7A7A69485858),
    .INIT_28(256'h32323263732163E718A564212163A60839497B7B7B8B7B7B7B7B7B7B7B7B7B7A),
    .INIT_29(256'hB5B594B594D6E7D6A5C6D6B59494C6C684A5C6B5B5C684738442636342424232),
    .INIT_2A(256'hADACACADADADBDADACACAC9C9C7B8CD622644343436464648553955364B6A5B5),
    .INIT_2B(256'h08F7081808F71807E6C6D5D5D5E659ABEE4A2131935948698A8A9BABACBCADAD),
    .INIT_2C(256'h94F66A9BAC59B48358161638E5B3B49204678927F6D5B4E6070707E7C6A5D6D6),
    .INIT_2D(256'h69685858585859596969697A8A8A7A8A8A7A7A69695958483777D7A675028274),
    .INIT_2E(256'h52101052A5F7294A6A6A7B7B8B7B8B8B7B7B7B7B7B7B7B7B7B6A59597A7A7A69),
    .INIT_2F(256'h94A595B58483B5948494A5B5C6D69431525242423232423232333231A51808D6),
    .INIT_30(256'hACADADAC9CACCE5A323333433343438433636322848484849594849494C608B5),
    .INIT_31(256'hF7F71808182859ABEE8B312183384869798A9BBBACACBCBCBCADADADADADADAD),
    .INIT_32(256'h06F5D406D5B4A3B3153617E6A3D5E6F6E6D5A4A5B5B5D60808181818080808F7),
    .INIT_33(256'h69697A8A8B9B8A8A7A8A7A69595959483777D7D79543B37431B4CDFFBC59C5B4),
    .INIT_34(256'h8B7B7B7B8B8B8B7B7B7B7B7B7B7B7B7B7B7A7A59696969697A69585858596969),
    .INIT_35(256'h94836383A5A5B55221423232323333323333323121A54A4AA55263E71918296A),
    .INIT_36(256'h842233334343434343332143953364646464639484B50884849495A56463A584),
    .INIT_37(256'hDDBC632183494859698A9B9BABACACBCBCADADADBDBDADADBDADADADAC9C9C9C),
    .INIT_38(256'hF5B351315193C593D5E6C6F7E7D608180808181818080808F708181808297ABB),
    .INIT_39(256'h8A7A7A7A796948484877D7D79502B382A37ABC9C49C57292E5B3163882A3B3C4),
    .INIT_3A(256'h7B6A7B8B7B7B7B7B7B8B8B7A595959696979595858596969597A8A9B9B8A8A9B),
    .INIT_3B(256'h631032333333333333333333332133189C9C4AF7185A5A6A8B9C8B7B7B8B8B7B),
    .INIT_3C(256'h333222D7B54343423243338432E7E7228473738463648484734252424294D6D6),
    .INIT_3D(256'h699B9B9BACACACBCADADADADBDBDADADADBDAD9C9C9C8CDEF810334343434343),
    .INIT_3E(256'hE7E7F71818F7E718190808F70808F7F71818180808296ABBDDCD941083494848),
    .INIT_3F(256'h4848564502C1D5B4CCEEAB0683A4D5E5B3E5CC063162A3A482839383A5A5B5C6),
    .INIT_40(256'h7B8B7A7A7A6959595969695968596969697A8B9B9B8B8B9B8A7A7A7A69594848),
    .INIT_41(256'h433343333343223173F77BAD8C7B7B8B8B8B8B8B8B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_42(256'h2143433322E7953264437363433253635242524221B539294A95223333333343),
    .INIT_43(256'hACADADADADADADADADAC8B8BACADAC9CADD61032434343334321853995856422),
    .INIT_44(256'hF708F70818E7F71808F71808F7187ABCCCFFD61083595959697A8A9B9BABCDBC),
    .INIT_45(256'h0659067294C5D536273849835283A4A5A5B5E7E7F7E7E7F708F719180808F7E7),
    .INIT_46(256'h5969697A796969697A7A8B9B9B9B8B9B8A8A7A694859593848580606C4E56A49),
    .INIT_47(256'h321043D618393929ACBD8B8B7B7B7B7B7B7B7B7B7B7B6A6A6A8B6A7A8A7A6959),
    .INIT_48(256'h4364844321639522424242332243397C7C7B3332333343434333434333434363),
    .INIT_49(256'h9C8B8BACADADAC8BBDDE0832324343332232D7D7A664C78C9522433332B54343),
    .INIT_4A(256'hF718291818186AACCCFF291062597A48697A8A8AABACACBCBCADADADADACACAC),
    .INIT_4B(256'hACD55163738494A5D6D6D6D6F7F708E7F708F7E708184A29E708F71808E71818),
    .INIT_4C(256'h8A7A7A8B9C9C9B9B9B9B7A696959694848483737F592378AB4B4C4D507D5C517),
    .INIT_4D(256'h8439BDAC7B7B7A7B7B6A7B7B7B7B8B8A59697A69696969696969696969697A7A),
    .INIT_4E(256'h333333434310847CADDE18103343434343434343434343334343332121326332),
    .INIT_4F(256'hAC8BCE5A2121433284DE1995C7643329FF292210213333436464643322D67332),
    .INIT_50(256'hCCFF4A10424A8B698A9A8A9BABABABACBCBCBCADADACAC8B8B9CACADADAC9CAC),
    .INIT_51(256'hF7E7E7E7F7F70818F718F7E7F7081908F71808F7F718080818080808F7187AAC),
    .INIT_52(256'h8B8A8A696969483848374859481637593706060707F6B4E54A51316394A5B5F7),
    .INIT_53(256'h6A7B6A7A7A7A7A7A7A69597A69696969697A696969697A7A8A8B8B7B9C9C9C9B),
    .INIT_54(256'h7BADFFD610434343434343434343434343434343434333332122A65AAD7B7B6A),
    .INIT_55(256'hAD1922D74A6422219584A54A9522322222222110D6D622433233333343432184),
    .INIT_56(256'h7A8A8AABABABABACACBCACAC9CAC8B8B9CACADADACACACACAC8B8BAD4A6410D6),
    .INIT_57(256'hF7F71808F7F7E7E7F7E7F7E708F7E7F71808F7F7F7187AACBCEE8B313149AC69),
    .INIT_58(256'h37374758798A6858695806A38382823783317394A5B5D608F7E7F7F7F7F708F7),
    .INIT_59(256'h8A7A59597A696969697A696969697A7A8B9B8B8B8B8B8B9B8B8A8A6959695837),
    .INIT_5A(256'h4343434343434343434343434343434343331032086B6B6A6A7B6A6A6A6A6A7A),
    .INIT_5B(256'h2173ADFFAD4A18D6B584A519ADA521433343333343433310845AADBD64214343),
    .INIT_5C(256'hAC9C9C9C9C8B8BACADACADADACACACADAC8B8BCD8C84B55AD62122B67C298432),
    .INIT_5D(256'hF7D6D608E7D608191808F708F7F759ABACDDDE841029BD697AABAB9B9BACACAC),
    .INIT_5E(256'h694837C4B492E5595294B5D6D6D6E7F7E7F7F7E7E7F718E7F7F7F7080808E7E7),
    .INIT_5F(256'h697A7A69697A7A7A8B8B8B8B9C8B8B9B9B9B8A79695948373747163769AA8A79),
    .INIT_60(256'h43434343434343434343433310E78C5A6A6A6A6A6A6A5959697A694959696969),
    .INIT_61(256'h087CADCE9C841033333343434343433310A54A9C7B4332434343434343434343),
    .INIT_62(256'hADACAC9CACACACAC9C9CAC9CF75AAD294364336429BD8C6B6BADBD8CADDEDE19),
    .INIT_63(256'hF71929F7D6F76AABACCDFFB51018BD7A8B9B9B8A9BACABABACAC9C9C9C8B9CAD),
    .INIT_64(256'hB5D6D6D6E7F7E7F7D6D6E7E7F7F708081808E7F708F7E7F7E708F708F7D61808),
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
    .INIT_00(256'hFA8C30F10FFA95DF5C5A46655403FFFAAAFFFFEB8D3F4F13083FF1AAA2B11440),
    .INIT_01(256'hFFFBC09CE05C2D7FF15296BF14407B0DBA385BFFFF2580874EFFCFDC05AA8A59),
    .INIT_02(256'h1AC3F30961B25FBFFFFCFB9BAB4DB87FBEBC292C9565255F05A554003FEAAAFC),
    .INIT_03(256'hCC2A97D3D5CD01A95500FFFAAFC0FFEF83D0013E7FFFC03AA2430034F815C63F),
    .INIT_04(256'h45FFAF0FFFF07C13C0F79B6DD20ADBC3FF02CAE4ECFB2B6F139192F7770F292C),
    .INIT_05(256'h5CDC2F94995BD75F00F7A94A0002BAEA5571648555595500FFAAFC000FEFB1D0),
    .INIT_06(256'h7C19A9555500FFEAF0013FFFEB2B88DF6FECCEC3F5C03C1110ED220C7FCFFC00),
    .INIT_07(256'h01FB31457D005555763C6BFFC003D7F5A206340AE8CEFFE280400F0026A964A5),
    .INIT_08(256'h0CB9A0AE655A00403BAA9562DC9645AAAAA5554FFFFEF0C00FFFD478C954F303),
    .INIT_09(256'h4043FFFFF00000FAC46AC7033B5FFEFF30F33D31E57606CB1AFCFCFC3F95BAF7),
    .INIT_0A(256'hFCFE500E16FB16FFFFF3FFF27FFFE2D6002E1805C41EDA9956DB1D634AAAAAA9),
    .INIT_0B(256'h10F0C662AA59664282715AAAAAAA9000EAAFF05543FA99FAD6BE832EDE4CAA5F),
    .INIT_0C(256'hC55503FE9A1A32C33D3AC5810CAFC0FFF3F129FBC6BFFFFFFFF66BBFA93F0C1E),
    .INIT_0D(256'hF9FFC5AFFF0F3FF0DAFFE72FF8CFC1E33B0A6569A65A6B41EAAAAAAA94F03ABF),
    .INIT_0E(256'h86AAAA985B29BAAA99AA94FC3EBFC55540FFCA3A9E0AE3ABE47317F0F00FF0C6),
    .INIT_0F(256'hF2E3D9B08D1BAF01AC3C7FFF03C6C0FFD5AFFF0FCFF18BFF96BE7B7D0CBFE98B),
    .INIT_10(256'hFFFFFAFC71FEDD3D7E71FFDAAA6586ABEEB6313BAEAAAAAA950FFFBF1595403F),
    .INIT_11(256'h4E14CFAAAAA55403FCFC16A543FFE1C776C3BEBC2FFFF4CFFC3CF3F6ACCF016F),
    .INIT_12(256'hC701BFFFCFC9FCF0C036E087C5BFFFFFEFFF117E5A341E6FF361AA7409AFEFBF),
    .INIT_13(256'hF65D2479D46BFE71ABCC60BFFFFEF959D3A69AA504003CF015AA93FFA5E9FC81),
    .INIT_14(256'h655540000FC056AA53FF9B87469C5B1BFFFCCFF7CFCF33F6E49415ABFFFFBFFF),
    .INIT_15(256'hF3FFFFFF3FF69E4C05ABFFFEFFFFFDB356B5361554F76AF41F3FFFFFFFFA5229),
    .INIT_16(256'h47638557BAF832DFFFFFFFFFE1FD6554500003C56AFE53FA96CAE6969C6CFFFF),
    .INIT_17(256'h03C56FFE93F995C3E7E38AEFFFF3FF3FFFFD3FF28700156FEFFBFFFFFD3BD51D),
    .INIT_18(256'hD7B6BA01556ABBEFFFFFFFE5FB63D8690572AFFE1937FFFFFFFFFE3E555013C0),
    .INIT_19(256'h000000000000000000000000000000000000000000000000BFFFFFFF3F3FFFF0),
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
    .INIT_00(256'hFC2FFFFFFF22B1CFF3D02F2FC7FF1F3787FF0587FBF38FE873B8FFF1FFFF28B3),
    .INIT_01(256'h33FCEEF7FDF67F3C3FFEFFFF22386869C817FF03FC3FCCEC4A1FFE7EC7AF987F),
    .INIT_02(256'hEF077702FAB42E61972799E574FF3EFFFFFF0F22304403E0745F833F3C8D37BD),
    .INIT_03(256'hC0207F039E23F5FD91BABBF73F70B673F1AD7193FEF5FFADFF6B223CC9F080F7),
    .INIT_04(256'h876ADF07FE7C1216B1FB3C7C83F7EF4789C06C1A7E76CBFF0E66FA0CDDFF7C3D),
    .INIT_05(256'hC764F5FFB6FDFFEEE5DE88FBFE017EF96C31E0DBF5FD99BEC27932F4F0F803DD),
    .INIT_06(256'h02FFEC292A630CC37EFCFF37FFFFFE9C87EEF3FFACFA7CFE73C9FB960F03300F),
    .INIT_07(256'h25AEE65F593D3A46FBF6212863088FFFFFFF37FFFFFFF7FAD3A83FB5BF39DB7F),
    .INIT_08(256'h977FF87C9FC03FDFA46D26C13E6515FBF6F5FC6BFFFFFFFFE0B7FFFEFEFFFFC6),
    .INIT_09(256'h7FFF6FC667FED0B33FFFF9F78338FF9B80B3A707C1434C1E7C7FFF294737C7E0),
    .INIT_0A(256'hC6A28D0FA93DFE7FFFF3F0E4FE00B1FFB0F1C880405DFB9D6E9524DC03C27230),
    .INIT_0B(256'hA000018E9848EA03F118F115FFEE7FFFD4319EDCC6B7FE03FD0004000FFF8F5C),
    .INIT_0C(256'h79E9FEB2FC0000C000010F862116F96D8CFCF7FFFE3FF4C09803C036B6F00835),
    .INIT_0D(256'hFFFFF4B6F900141BE7D8B2F000008000017F805509F94A0478AFFFFC83EC8000),
    .INIT_0E(256'h8061326D0D9E9BFFFFFC06044C00846002B7F800000000017F8061549F178715),
    .INIT_0F(256'h07C0000100013F8061F176FD78AFFFFFFC43802000641047BB8000000100017F),
    .INIT_10(256'h001BB01FFFFE5807E3C21000015F0060A0F94BF37FFFFFFC18C80000273E40B8),
    .INIT_11(256'h8901FFFFFF9E803507FFF0F800FCE1F03FC8F8010E4020886C5DA4FFFFFFFC3C),
    .INIT_12(256'hFFF152602080537E85FFFFFF8CBE1E0F3801E0FFA707FC07CCBE79444022847E),
    .INIT_13(256'h7F00F00000001F07FC6D04008508FB4FFFFFFFFEBE1E60E0C3FFFED81FC380FF),
    .INIT_14(256'hE7018099C0300000000000000000007010CC1287BB5B57FFFEFF191EC09DF800),
    .INIT_15(256'hE7DF1E875FFFF2C1BBE980C00000000000001A000000024C1CF297399BFFFFFF),
    .INIT_16(256'h00000000000000007FAA837FDFB3284A2008E7000000000000080000000063D9),
    .INIT_17(256'h3C010800000000000000000000EE006BB08FFFFB328B6000FFF1800000000000),
    .INIT_18(256'h7653CB07FF00FE18480800000269879100000040E06FFFFCB6FFD251587980FF),
    .INIT_19(256'h000F8000FFFE235B754007FE07FB404ACD0900F75FDFF80000000FC27FFFF6C7),
    .INIT_1A(256'h9FEB719FFFC1E014FF1C90067FC2F8541801FC07BFEC7FEF0C07B78FFFFEC000),
    .INIT_1B(256'h3C0FFFFFFDDFFFBFE7B024FEFFF03FFFFC40E03FDCC106FE417C0FF9FFBFFF9F),
    .INIT_1C(256'h000234478FFF801EF7FFFC00086FF9E7850999FFFC7FFFFC3100372602F3FE1E),
    .INIT_1D(256'h2199FCFDBE84800103F1DFFFFFF8077DFFF030E0CBF802033F3F1FFCEFBFE041),
    .INIT_1E(256'h3D202D82030D0009FFFFFCFE423C01C70DC7E0FFB401FEFFC1DFB09FE906042A),
    .INIT_1F(256'hE1FE388FFF000F12A811C400DE4C131DFFFFFF439680E1074BF8FEE003FFFE10),
    .INIT_20(256'h04801043F3C01FFFFFA01FFF80669AE300EC069DDA0107FBFF8F8081C3F707EF),
    .INIT_21(256'h3F77CE00003C740040000351FA3C61FFC23FFF087E401FA1E25F1EE28387F8FE),
    .INIT_22(256'hF807F0234F00603DF7749E84FE7803200291C0F9D9986FFFFFFD04DC090F4061),
    .INIT_23(256'hEFFD7F2473FFFFE03FC8FF8DA420389BFD3040CC3E439FE0538FF9565963FFFF),
    .INIT_24(256'hA241071FD9DEB857E4FF98D9FFFF800FCAF6C32C14E3E0BA4C1D000F76C8F429),
    .INIT_25(256'hE3E461CF5C3FB33800038F08DE9F63EC7F1CCCFF4000E4CFC2E3640065E437BC),
    .INIT_26(256'h5C008003F38E01E235C38AEE3FEE370C04E7101B45F1F97FFAFC3E0007FE0F81),
    .INIT_27(256'h24FF87E38D0CEE08084019FCEE40F33783AE5A8FDAE38001F8041BC7E1FC77BF),
    .INIT_28(256'h03B7DF9EE0061FBDFFC3E706186C1800C40FFF360BF3FF93AE0387EF7B8080FD),
    .INIT_29(256'hFE0F07C193BE7483CDFF4EC0203A07FFE1C531A0FC0003083FFD0607E3FF1F3E),
    .INIT_2A(256'h1F85F3048FFF1FFF13170123FE7C01DFFFFF18003F63FFF50E4790FF988E8B1F),
    .INIT_2B(256'hFC601FFFDB30188FC7F39E07383FFF027D08251E1C019DFF7FE0803FCFFF740E),
    .INIT_2C(256'h225C2D8389FFFC38001FFDC880109FFFA14E0FB07FFF819C6006FE2803087FFD),
    .INIT_2D(256'h7FEC1F1C40F3E001C3EF830FFF7F00101C7C000181FFDBE0FC1F901FAF87B9C0),
    .INIT_2E(256'h9FC0C05FFCCFFC3FFC7E3EFA07C00120CF5FBCF7FFF80006309A0031DFFEE9FF),
    .INIT_2F(256'h47FDF380020203FF65709FFEDFFC7FF8F719BD3FC0032041F7806DFFF9000602),
    .INIT_30(256'hF88B040020F083F0034DE0010103BDE319D3FFBF7CFFFFFF34602980002045B8),
    .INIT_31(256'hFF99F1FBFFF981E39C0F3000F68279121CD00879878CC5BDD7FFFCF9F7FFFF45),
    .INIT_32(256'h027CC1FA26BFFF77BD23B9FFC1E039FC0FB780F3FAEE671A5000FCE00DE1BFD7),
    .INIT_33(256'hF86E04727407C000FA41D43FCFFF37FE3BC08000E442380EF7F06CF9F8D91780),
    .INIT_34(256'h0078201C60FFFFECB7C1FFEC03A00D9C0047DFF3FFE9DDF7700000E0C4287FFD),
    .INIT_35(256'hA7E3FCFF78C3002FFE73FEC7FFFFF81A0C50210980038C001FE1A3FFEE17C700),
    .INIT_36(256'h07CFF819F230EA3DE1F89DF9E787BF3E3FF087FFFFF81CF1B0210FC01F7E31AE),
    .INIT_37(256'h81FFFEF80E18103F9FFCF1FE10FE631B30ADFBC217F90F0ED143FFFFFC062E02),
    .INIT_38(256'h7EEE3DF00F8F2583FFFFF80310273FE27184FF00BEF43221BFFC8F1FF80F1E02),
    .INIT_39(256'hFEC0088FFA8B9E7F8A7E200F80630B83FFA003D1EFFDE03CFFF8C418C13EA9AF),
    .INIT_3A(256'h6153BF3F8FF0FFFFC0023F7E271466DEE00003F8070000FFC0417277FFC18FFF),
    .INIT_3B(256'h001F73018FBCC370FC1FFF3FF8FFFFF0033FE3FFF4270AE008007E56018DFFC0),
    .INIT_3C(256'h1FFF39CF8C60080007C7821FD88FF0643FF67EBC0FFEF803FC1FF92CD81C6008),
    .INIT_3D(256'hF9E780FFE010C79FFFB71F1EE00800C381F37E211FF8319FE0FFDF823FF003E3),
    .INIT_3E(256'hCE00BC9C500007C041FE33F800C01FBF9E338EF00801E00073FEC07ED8100F01),
    .INIT_3F(256'hC6E0000DF8805FFE7D030369CFF00001FF03FC07E26FBD0DF7CCE0081FC40023),
    .INIT_40(256'hFE03C023FCCA8C0E60001DF9EF77FCA09003FFFF000000FFE1FF03E0679C2EF7),
    .INIT_41(256'hCC0C0000001FF1FF01E7017ACADC4E60003CFBFF80042642037F0040000677C1),
    .INIT_42(256'hFFD00002541FE0883D8000003FF01E00FF00FE9E3C1CF0006C7FF40009BD2FE1),
    .INIT_43(256'h3F17FC0C3000707FE00000A86730B83F90000013EC1E00FFC22E173C58700070),
    .INIT_44(256'h0000701781FFEC2FFBE79E3C00F07FC3001B680F20101FFFC000007C7F817F24),
    .INIT_45(256'hFD2720001DB9E00000FC1F81DF0F3FDBD3063E08C03F830009F93FE0001FFFF0),
    .INIT_46(256'h1FF180FDF80007FD04F0000439C00000FE0F00FF4FFF0DED961C01407FF00001),
    .INIT_47(256'h40FF1FFBF984A3CFF1C03CFE98FFFC18E0080007E00000FC3F80FF9FFF0F4DE7),
    .INIT_48(256'h0000006000BF0600F99FFFD1E4F9EF78017CEF8FFFFFC0000001819000001D8E),
    .INIT_49(256'h7FFF97FD800000008000FC01BC0781F8FFFF8D7D7DCFF0037EFFEF8FFD072000),
    .INIT_4A(256'h1FFFFCE7F105FFB7FF97F6C0080000F000FC07BC0601CBBFDF5BEFF9E7B1877F),
    .INIT_4B(256'h81F83113D0196F53D3FC73F01AFE7FFF3FF540007F80F40C1FC0FE3F8197FFF4),
    .INIT_4C(256'h801E0007EC400403F03C81F068AE9F3FF871E018813FFFEF7B4007EF8D98803F),
    .INIT_4D(256'hE0B0B183FFFF3C00000003560401FFE07E65FE7D937634D938E10B011FFFFEEA),
    .INIT_4E(256'hE79FF942EA69BE303E00C3FFFED30C40180D740001FFC1FB03FD0FC392114D9E),
    .INIT_4F(256'h7FA8003FC1FD47F65EF9E73C1E0C399B012FFFB27FE000000E32E4007F81FD8B),
    .INIT_50(256'hEFFFCA2632FEB1309E00FE03C283FEB8FB4BDFB70F1211E3FFFFE3E1C086403C),
    .INIT_51(256'h77A21F0463035FFFFFBB72C40F87E09585F803B0633E7BF3CCE6666F8F3C023F),
    .INIT_52(256'h1FC21E722BED321C3E578D4F81BFFFFF05848B03CDDC6F41F8279C3E627BF6FE),
    .INIT_53(256'h63E79298167FC0EF2C07822DFBAFFE81FF1F8F07A3FFFE6325639FE788268040),
    .INIT_54(256'h074AF07FF40AFEF4EDBABB0FF4E07E281F3065E3FA70F8DB0F828F23FFFE38FF),
    .INIT_55(256'h67E39FEF9944EB035230FFCACB0A7749FAFB0DF780BE14FF3A67FD6BB32187C7),
    .INIT_56(256'h637F81F00373E7A7BDB1859D42C7863E641FCD60452CC5FC0E07F780BE027AE9),
    .INIT_57(256'h613E23CF003D1867EFD1F01BFFE703F913E6FEF1EBC42CED97A42A287DC4FFA6),
    .INIT_58(256'h47D831EE32F9DE0817083045FD7F6FEFE0700FFFE543F13368EFB9EBC4695B5C),
    .INIT_59(256'h7BFF9377F77F06BF0C78F801E41E0143E219CC5B7FFEDF3010147FF443E4EF2E),
    .INIT_5A(256'hE1EC13FFFFD3BDFF398353D8CE6389ECF9E845FF960029FF99E1ECFBFDFBC1CB),
    .INIT_5B(256'h10545FE086C9FB21F852F7EFC9CCF71D510355E20F82C018FC204B5BA02DFF9B),
    .INIT_5C(256'hD837BA77027DFC004BDFFD1507FA7ED878FFE3F781FE8FE97BD8D63BCC9031FC),
    .INIT_5D(256'h07D1DFFCE405BFDA27D9E387FC30003FAFFF738E5FFFB8FFFB87F3D07C2F195F),
    .INIT_5E(256'hFFFF9FF9EFDFEF07B1CFEDF627CFDC39FFC589E878007F2FFFFFFFAFDDFDFFFF),
    .INIT_5F(256'h8D9CF001C733FFFFFF5FFA4FFFE01FC25FD9FBDA1EDE71B074A79C780046E7FF),
    .INIT_60(256'hFBB753DDFF6B237158F00725BBFFFFFE3DFB1FFC105F020FCD7BD51FDF3FB264),
    .INIT_61(256'h7FE0001F8B07FCFB8882EFFEBEEEDEBC780F3B380FFFF83FF63FF0001F8B0FF5),
    .INIT_62(256'hEB5FFDF0005F906F40001F8C1F785BE3AFFD77498E627D3807E67FF20000DFC8),
    .INIT_63(256'hF7C5DF189E38045D16FFF91F7FB9FC00001F8C1F987CEEC7ED747C04759E380F),
    .INIT_64(256'h1C1BB90E9F36EFE25E0D0C1F1E0031087FFFFFFF30F800001E1A17E87C71BEFC),
    .INIT_65(256'h2F3D2BD000000F3834ED1F37309384D67F0EBE1C0071800E001F2EF67000001E),
    .INIT_66(256'hC71C003EF00801A91E4A4000007E381C447FE72CC420D8070E163C0038F80C00),
    .INIT_67(256'hBFA3AA21880F36669D001D8000031FE808C000007F1CCDC67FA7439EC4628783),
    .INIT_68(256'h20007E3818AA4FAEEE9FDD184907408F001D801003464D050000017F3C31EE5F),
    .INIT_69(256'hF06C0E4FEB460020007E34006843B814E79AB7C494090F0057C0600F23B39E00),
    .INIT_6A(256'h522709A147000978700E0EE82E0000007C3E67DE44D214FFFA4F093679C78010),
    .INIT_6B(256'h4AB27BC0838EA4CCF6D397AF700E7E683FDFD57E0020013C2A260600D3E39F48),
    .INIT_6C(256'hA7300000003EE9141467ECF187E643D06EFDE3E06FBF7F7DA7DA5E000000FCD0),
    .INIT_6D(256'h08F8044F9FF5FFCC70000003B87DA8F0C7FDC7C154945002F4ABC01E3FFFFACF),
    .INIT_6E(256'h088D0CBE2DA4D9EEF0004886D6F3A8B0000001F8766110FEFAE0CB8508222BD1),
    .INIT_6F(256'h09FDE0B7E07FF0889BBC8FE1D7FBC87E07142C5CC391FC000001F876B3007E70),
    .INIT_70(256'h76F7EC39D800000031C00E187FF6589981457D0A99E27E079FB37FE211F80000),
    .INIT_71(256'hD277E5F00FC2FADFEFE4FBEC0000003B837E587FF204C39E6B3530B1E00F83EB),
    .INIT_72(256'h63FFFFD51FFBF3A849F9E20BC0FC15FF89038000000FFB83FF60FFF904FDF4F1),
    .INIT_73(256'h70000005F09FFD07FFFE3FCFC8703E0CF1E307917FFFFF7102D0000007F11E7E),
    .INIT_74(256'h229037FFE1881F20000007C3ABFC4FFFFE512DC499E717F3E308F05FFFF82007),
    .INIT_75(256'hCA1A338D0113E674BA00FFA2003E6000011FDE1DFA7BFFFFC94DF35F860049E6),
    .INIT_76(256'h5CD3E3FFFFFF1DF9A067F9E73FE27D0E029833007E7200019E941FF4FFFFFF85),
    .INIT_77(256'hC440FE00000479157BCBFFFFFFFEC10857FF2FECF27D4A00DD0800FE100000D6),
    .INIT_78(256'hD9D7F4FAB8F8FF6200FF0000067977DF86FFFFFEFA764FE023F27CF6FECFC0FB),
    .INIT_79(256'hFFFE3D1DCD4105C74CF0FD64B1FF0001FC04010B7DFF072EFFFFFE35C7878107),
    .INIT_7A(256'h087FC7F420C7FFFFFE2D62D8C00123B4F4FD25D3BFC001FC8418B37BC40E5FFF),
    .INIT_7B(256'hEBC9F321C6FF261CFF407A1F03FFFFFF0503B02020C746F2FE83DFFF43C65404),
    .INIT_7C(256'hCB9C80032576F849FEF590667E729EFD2E720803FFFFF73C0BE458A40910F0FC),
    .INIT_7D(256'h0401FFFFFFF368CFF0000260B67F207F12C027FAF7DFFF376C0607FFFFFF1CEF),
    .INIT_7E(256'h11FAC7A3AC36630002FF7FFFFE40FE2FA401FAB0FE0CDF020003F96FD7E671C0),
    .INIT_7F(256'hBA767E1FCF90000FFF34090D5D4B0803FFFFFF6380DE0FC20028B07816BF8000),
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
   (\douta[3] ,
    clka,
    \addra[15] ,
    addra);
  output [0:0]\douta[3] ;
  input clka;
  input \addra[15] ;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[3] ;
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
    .INIT_00(256'h00100000001F0030000819503800E0C00000F800040C7000007C000000001700),
    .INIT_01(256'hCE730FF860000000000000001F001F90300FC07C03C00703FA03FF81F8700000),
    .INIT_02(256'hF0FC80E20475C01E60D80018020000000000F01F0027FC300CE07CC003620863),
    .INIT_03(256'h001F009C01C00FF0ECC9DC08E88C4A8C0E5E68E00000001000D01F004E0F600F),
    .INIT_04(256'hF81CE00000030C001E00C000400FF0FE73FF93E5818B0400F06F0C0000000302),
    .INIT_05(256'h3C9B08004902001103E0F000000E001E000000000DC0866AB986CD0A0307FC23),
    .INIT_06(256'h1280061FD79CF33C810300C80000017B78F4000013001F000007846FEEFCCEF0),
    .INIT_07(256'hD9C001803E0084270009FED79CF770000000C8000000080114300003001E0080),
    .INIT_08(256'h480000000000000FC800C07E01191E001D520394000000000048000000000001),
    .INIT_09(256'h8000000000000048000000000000007D00601E19187C80BEF380000040000000),
    .INIT_0A(256'hF9A200F043C201800000000000004800000000000002070236C61905FCC0EDCF),
    .INIT_0B(256'h80000181033A1C07F280004E000180000400000000480000000000000005103C),
    .INIT_0C(256'h00000048000000C0000100002F0C06300000F800018000000000000048000000),
    .INIT_0D(256'h0000030000000400000048000000C000013000108602300002D0000300000000),
    .INIT_0E(256'h00008190F0004400000380000000000000480000004000013000008300F8000F),
    .INIT_0F(256'h00000000000130000000F9024170000003800000000000004000000000000130),
    .INIT_10(256'h0000001FFFFF47FFE000000001700000087F8643800000038000000000000040),
    .INIT_11(256'h061E00000001000007FFF007FF0301FFFFC00001604000043F860B0000000380),
    .INIT_12(256'hFFFFB26000003C013A00000003001FFF07FE00FFA7000007FFFE01A04002023D),
    .INIT_13(256'h00000000000000FFFFFE8400053C0430000000013FFE1F00FC000070003F80FF),
    .INIT_14(256'h07FC1F1E00000000000000000000000E7E3C12069C84200000001CBE3F1E0000),
    .INIT_15(256'h1FDFDF00800000FF840E00000000000000000000000001B3E3D2169E04000000),
    .INIT_16(256'h00000000000007FFFF1F0080003CE78DC000000000000000000000000000003E),
    .INIT_17(256'h0000000000000000000000000001FFFFBF008003CE7380000000000000000000),
    .INIT_18(256'h01680C00000000000000000000000000000000001FFFFFFF01801DCE60000000),
    .INIT_19(256'h00007FFFFFFE0002298000000000000000000000000000000000003FFFFFF680),
    .INIT_1A(256'h00148E600000000000E36FFFFF918E9800000000000000000000001000000000),
    .INIT_1B(256'h0000000002200000184FDB010000000003BF7FFFCB9C20000000000000000000),
    .INIT_1C(256'hFFFE377000000000000003FFF79006187AF6660000000003CFFFFF2739000000),
    .INIT_1D(256'hDE660002417FFFFFFFF2F00000000000000FFFFF3407FDFCC0C0E00000401FFF),
    .INIT_1E(256'h3D6FD27DFFFFFFF600000301BFFFFFFFFEA81F00000000003FFFFF6016F9FBDD),
    .INIT_1F(256'h1E00000000FFFF12AFEE3BFFFFFFECE2000000BFFFFFFEFE941F0000000001FF),
    .INIT_20(256'hFB7FEFFFFC3F0000000000007FFE9AEFFF13FFFDFFFEF80400707FFFFFF8FE70),
    .INIT_21(256'hFFF7FFFFFFC38BFFBFFFFFFE07A20000000000FFFE401FDE1FFFDEFFFCF80701),
    .INIT_22(256'h07FFF0004FFF9FFDF77FFF7B0187FFDFFF7FFF07060010000002FFFC000FFF9E),
    .INIT_23(256'hF00400C00C00001FFFC8000DFBDFF89BFBFFFF33C1BFE01FBFF00581801C0000),
    .INIT_24(256'hFDBEF8FFE0014FF81F00600600007FFFC00903FBFBE180BFFFFEFFF0FFF00BDF),
    .INIT_25(256'h03FFFFC2803FFFFFFFFC7FF0016FFC1300E00300BFFFFCC03D03FFFF61003FFF),
    .INIT_26(256'h03FFFFFFF381FE02FFFF81103FFFFFF3FF1FF800FFFE07000503C1FFFFFE007E),
    .INIT_27(256'hF8007FFC7E211007F7FFFFFCE1FF03FFFF81A40FFBFFFFFE07F8007FFE073810),
    .INIT_28(256'hFC37DFFFFFFFE000003FF8F809000FFFFFFFFF31F403FFFF81FC07EF7FFFFF02),
    .INIT_29(256'hFE00F80193FE037C0DFFFFFFFFC000001FFAC0000017FFFFFFFD01F803FFFF01),
    .INIT_2A(256'h8000001BFFFFFFFF10E80123FE03FE1FFFFFFFFFC000000FF18000001FFFFFFF),
    .INIT_2B(256'hFFFFE00024CFE700000001FFFFFFFF018008259E03FE1FFFFFFFFFC000008FF1),
    .INIT_2C(256'h225C027C01FFFFFFFFE002377FEF00004081FFFFFFFF80606006FE07FC087FFD),
    .INIT_2D(256'hFFFFFFE7C003E001C3C07C0FFFFFFFFFE383FFFE7E00000003FFFFFFFF8641C0),
    .INIT_2E(256'hFFFF0F80030003FFFFFFC18807C00120C0A03CFFFFFFFFF9CFFFFFCE00010000),
    .INIT_2F(256'h47FFFFFFFFFDFFFFFE0F00010003FFFFFFE3C03FC003204008006FFFFFFFF9FF),
    .INIT_30(256'h0077040020F003F1FFFFFFFFFEFFFDFC660C000003FFFFFFFA113F8000204400),
    .INIT_31(256'h00000FFBFFF981FC040F3000FE867FEFFFFFFFFE7FFCF86208000007F7FFFFC6),
    .INIT_32(256'hFFFF3FFDF0700000001FB9FFC1E03E0C0FB780FFFE9198FFFFFFFF1FFFF07008),
    .INIT_33(256'hF871F8018BFFFFFFFFBFDBE02800000007C08000E043C80EF7F073FA0700EFFF),
    .INIT_34(256'h0000201C60FFFFECB800002DFFFFFFFFFFCFE0140006020F700000E004587FFD),
    .INIT_35(256'hC31A0000003F00000073FEC7FFFFF81C03FFE1FFFFFFFFFFFFC6100003003F00),
    .INIT_36(256'h07FFFFFFFFCFFBC3FE0062001F8000C03FF087FFFFF81F0FB021FFFFFFFFCFDE),
    .INIT_37(256'h01FFFFF80FF8003FFFFFFFFFEFFF9F1CC072003E0006F00ED103FFFFFC07FE00),
    .INIT_38(256'h001E020FF00F2403FFFFF803F0273FE27FFFFFFFFF0C3D4070007F0007F01E02),
    .INIT_39(256'hFFFFFF7C04C060007E01DFF000600B83FFA003F1EFFFE03FFFFFFBFF39C10070),
    .INIT_3A(256'h01D3BF3F8000FFFFFFFDC0800008013E1FFFFC00000000FFC001F277FFC00FFF),
    .INIT_3B(256'hFFE00C018FBCC000FC1FFF0000FFFFFFFCC00000F800FA1FFFFF8008018DFFC0),
    .INIT_3C(256'h0000C078FC1FFFFFF838021FD88000643FF601400FFFFFFC000000CC17FC1FFF),
    .INIT_3D(256'h061800FFFFEF000000480FFE1FFFFFFC7E037E210000319FE00020023FFFFC00),
    .INIT_3E(256'hCE0043600000003FBE0033FFFF00004060007E0FFFFFFFFF83FEC00120100F00),
    .INIT_3F(256'h3E1FFFFFFFFF9FFE02FCFC00000FFFFE0003FFF8000040E2003C1FFFFFFFFFC3),
    .INIT_40(256'hFFFC0000603173FE1FFFFFFFFE7FFC1FFFFC0000FFFFFF0001FFFC000060C100),
    .INIT_41(256'h33FFFFFFFFE001FFFE0000E03123BE1FFFFFFFFA7FFC1FFFFC80FFBFFFFF8801),
    .INIT_42(256'hFFCFFFFDCFFFFF77FFFFFFFFC0001FFF00006061C3FC0FFFFFFFEBFFF78EDFFE),
    .INIT_43(256'h30E003FC0FFFFFFFDFFFFF67FFFF47FFFFFFFFEC001FFF000070E0C3B80FFFFF),
    .INIT_44(256'hFFFF8017FE00001004187E03FFFFFFBFFFE49BFFFFEFFFFFFFFFFF807FFE80C0),
    .INIT_45(256'h02FFFFFFFFFFFFFFFF001FFE2000002438FE01F7FFFE7FFFF604FFFFFFFFFFFF),
    .INIT_46(256'h000FFFFE07FFF802FFFFFFFFFFFFFFFF000FFF000000F0706E03FFFFFF0FFFFE),
    .INIT_47(256'hFF0000001E7B5FC00FFFFC01670002FFFFF7FFFFFFFFFF003FFF000000F8F01F),
    .INIT_48(256'hFFFFFF9FFF4007FF0000003E1B07E087FEFC007000013FFFFFFFFFFFFFFFE00F),
    .INIT_49(256'h000000037FFFFFFF7FFF03FE4007FE000000760203C00FFCFC001000037FFFFF),
    .INIT_4A(256'hE00003E00FF8FE000000083FF7FFFF0FFF03F84007FE3C4020E40007E04FF8FF),
    .INIT_4B(256'h7E003FEC3FF807E02003F00FE3FE8000000B3FFF807F0BFFE03F003FFE704000),
    .INIT_4C(256'h7FE1FFF823BFFBFC003F7E002960E0C007F01FE1FFC0000006BFF81072077FC0),
    .INIT_4D(256'h1FC1FF7C0000E47FFFFFFC11FBFE00007F9A00039C8FCB06F81FF2FFE0000016),
    .INIT_4E(256'h000006FD34367E0FC1FE3C0001E8F3BFE7F270FFFE0001FFFC0200006FFE327E),
    .INIT_4F(256'h7C17FFC001FEF8008106D9E07FFC0662FE90004F881FFFFFF0501BFF8001FFF4),
    .INIT_50(256'h00003819AC0141F001FF0003FF7C004704B1E074FF0DE0FC80001C11BF783FC0),
    .INIT_51(256'h89C1FF039CFC6000007C0A03F006100A7A0003FF9CC0040C33D9999F80C3FC40),
    .INIT_52(256'h1FFFE1804402CFE3C1DF82B07E200000F40070FC083C00BE0027FFC180040907),
    .INIT_53(256'h9C001C78018000EFF3F8304204D001FFFF0070F83C0001D0A29C600878017F80),
    .INIT_54(256'hF8B4FF800FFA000801077B0000007FF7E000021C518FFFFF007D703C0001F800),
    .INIT_55(256'h0000461067BFE0FCAC3F003778C40031C1FB000800BFFB00000002564CFEFFC0),
    .INIT_56(256'h000001FFFC8C1840404E7863BFC479C07FE033F0014134808E000800BFFD8410),
    .INIT_57(256'h9FFE0250010300001001FFE40018C00CFC79F10FE83BC0FF605BFA0000010086),
    .INIT_58(256'hFB27F011C0FFE1F7FF08204783000010007FF00018800CFCF7F007E83BC07FE3),
    .INIT_59(256'h84000C801880F9CFFFF807F1FFE1FEFFE219C8E7000000001FEB8008801890C0),
    .INIT_5A(256'hC61C0C000013FE00C00C803F31FDFAFFF817B9FFF9FFDFFF99FC3484000401CC),
    .INIT_5B(256'hEFABB01F7FFFFBC2080D001009FF08E08EC0BA3DF04CFFF803FE7FFC7FDFFF9B),
    .INIT_5C(256'h3DC8708BFDFC03FFC0B0026EFFFF813807001C07FE017046003C2DF0A3FFF003),
    .INIT_5D(256'hF801E003F9F2403CD8320FF9FC0FFFE070000C77E0007800047803EF83F04620),
    .INIT_5E(256'h00006006E02010F801F013F9DA303CCA007FF7F807FFE07000000040027A0000),
    .INIT_5F(256'h7FFC0FFFD83C000000E00540001FE003E027FC27E13F8E679D7FFC07FFD87800),
    .INIT_60(256'hFC79A03E00BF3BDFF80FFFE93C000001C00D0003EFA003F0337C23E03E800DFD),
    .INIT_61(256'h001FFFE00FF802FC7DF13C01721FB1FC07FFE63FF00007C01A000FFFE00BF00B),
    .INIT_62(256'hF87FFFFFFF806810BFFFE00FE0825C1DD03E8FB7B97DFD07FFE07FFDFFFF8034),
    .INIT_63(256'h083BA5FFFE07FFFE1EFFFFFF804803FFFFE00FE0627F77F82F814FFB97FE07FF),
    .INIT_64(256'h1FE4420F62A93C1BB1F8F3FF01FFFE087FFFFF80D007FFFFE01FE8127FFEA13F),
    .INIT_65(256'h3F42800FFFFFF03FCB101FC3EF5C7FE9FCF7FE03FFFE000E001F51200FFFFFE0),
    .INIT_66(256'h3F03FFF40008003941003FFFFF803FE3BA7FF7F33B3FA7F87FFE03FFF2180C00),
    .INIT_67(256'hC9DC701FEFF1619F82FFF00000002F96003FFFFF801F32147FFF7C793F5FF97C),
    .INIT_68(256'hFFFF803FE7544FD91160E3FFD7F97F80FFF00010002EBD04FFFFFE803FCE305F),
    .INIT_69(256'h000000401871FFFFFF803FFF4C43FFE31807F7FB71F700FFFA00000007501DFF),
    .INIT_6A(256'hF3E0AE1EC0FFFB0000004018E1FFFFFF803F9E2444F3E30007C3F9F987C07FFE),
    .INIT_6B(256'hBAD47BF37C70FFFFF03448A08FFE8000018031E1FFFFFEC03FDEF000F3FC60BF),
    .INIT_6C(256'h670FFFFFFFC0EEF2C467FE6E78FE7FE8FF93E01FFE0000019833C1FFFFFF00DF),
    .INIT_6D(256'hF807FF980000004C0FFFFFFC407E6000C7FE9C3810F7EC0EFB683FFFE0000130),
    .INIT_6E(256'h0F727A11F3BBC21E0FFFB400190C080FFFFFFE007FEC20FEFDFF300017DE0F26),
    .INIT_6F(256'hF601FFA0407FFC0F643F8FFE2FF03801FEE9FF833C9003FFFFFE007F88007E7A),
    .INIT_70(256'h8908123827FFFFFFC1FFC0E07FFC7F6400707DFBAA0A01FC6008001D1007FFFF),
    .INIT_71(256'h1107FA08003E0720101CF813FFFFFFC3FC80807FFE7B3C0078013FBC08007F14),
    .INIT_72(256'h83FFFF1A6600003F00260A003F83FE0079007FFFFFF003FC0040FFFF1B3E0000),
    .INIT_73(256'h8FFFFFFA00E00007FFFE083100003E0FFC0B006FC00000B1012FFFFFF801E100),
    .INIT_74(256'h020FD8001F8800DFFFFFF803D0004FFFFE7EDF108000180C0B080FA00007E000),
    .INIT_75(256'h3B1BF00000090E0485FB005E00019FFFFEE01FE0027BFFFF3EFD1FB0000FBE0E),
    .INIT_76(256'h1F200BFFFFFFE20AA00000000D0A0501FCE7F000018DFFFE6017E004FFFFFFC2),
    .INIT_77(256'h000001FFFFFB801F8013FFFFFF190F08700000730A0741FF1D000001EFFFFF20),
    .INIT_78(256'hFE3B0C05B80700000000FFFFF9817F8006FFFFFF7D894FE003F3830E03CC3F00),
    .INIT_79(256'hFFFF32FACC4005FF4B0803E48E00000003FBFEF481FF402EFFFFFF3A48878007),
    .INIT_7A(256'hF780078C2087FFFFFFD297D8C0003FCF0C02E5CC400000037BE74C83FC005FFF),
    .INIT_7B(256'h8FC800000000D9E30003861103FFFFFFF28CB0200007BE0A0167C00000002BFB),
    .INIT_7C(256'hCB9C80033D8E07C7FE000000018961002F820003FFFFF7E394E41884011C0803),
    .INIT_7D(256'h0401FFFFFFCCF7CFF00003F28E00F7FF000000050820013E840607FFFFFFE343),
    .INIT_7E(256'h0005000008F8228002FFFFFF81FFFE202401F28801F3FF00000006802000FE10),
    .INIT_7F(256'hBA0E01E83F90000000A0080DA0CC4003FFFFFF9CFFFE000200208807F9FF8000),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\douta[3] }),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5
   (DOADO,
    clka,
    ena_array,
    addra);
  output [3:0]DOADO;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [3:0]DOADO;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [15:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
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
    .INIT_00(256'h5559159955511955D18510C091CC9510195AA9D115E26666662D95662EE6E226),
    .INIT_01(256'h2916629A6166912E269994DD44440085265D048C1226A26666A6E6299D5595D9),
    .INIT_02(256'h2C8891D2262622222222BBE0C5D951912A1911919619121A6AEE22EEAFEEEE2E),
    .INIT_03(256'hDD9511551991C4C1C4115100155229DD91EEAA299DD1151122226AA2A5DD621E),
    .INIT_04(256'h599119D221519445C0448D226D848049AA2A22AAAAE6EE2E2D555D99999959D2),
    .INIT_05(256'h2EA2A772227233BE8C554CD122D199999991519A15A6AE26AAE62A12E95AE991),
    .INIT_06(256'hD1D085119115D0C41D5D59559A6EE5111166EE6166A26922588D6E2EE948155D),
    .INIT_07(256'h1D8DD844C84856AD040885DEAAA622222A666EE29995519559155E229D95D5D5),
    .INIT_08(256'hAAAA373B650C451191929919651955596166626E622611156919699595119196),
    .INIT_09(256'h19521CC055D5669155959166615AA2A996AA112180C0D91661C0D6DD9626E772),
    .INIT_0A(256'h4452615000819A22A2226A22E2A666EE559595591192222222D9D5DDD1D19111),
    .INIT_0B(256'h375D236A9D1955161111515D5111E6D9AA26191D5D5159151999199DD4800884),
    .INIT_0C(256'h1511559616959AA9D1E21A66A11AA2A591665D1631C0161226EE2722AA237773),
    .INIT_0D(256'h0852EA2A222A6AAAA22E662EDD55595959222AAE2D51151DD98128C8991A8510),
    .INIT_0E(256'hDDA5DD1DD91115DDD5515A1D99919195599919991944DDDDDC488880052A5840),
    .INIT_0F(256'h91D55961992EEA226112666E2A6E22A6F940959EA26EE2222777733227BA66B7),
    .INIT_10(256'h662662666AAAA6959911551915229AA622951D1DDDDE5C8D111541E91D216621),
    .INIT_11(256'h51014455D5915D51111111559111111D948C444488888CC05299844C56222A22),
    .INIT_12(256'h11221DA1A51E61221DDD11223640C6DDA6E26A232A272A277AE6AEED400440D0),
    .INIT_13(256'h6EE6E6E959511151112AAAA6A2225D995EA2D8C1199C191C61D5661C8C89DD18),
    .INIT_14(256'h99D9D5551159DD11411991484444C4C888848445A5044411EA262A666666662A),
    .INIT_15(256'h1916191951D9915E3248C155AE6E6A222AA22272AAA66A750088800004540D5D),
    .INIT_16(256'h5D99991199E6EEAEE6295195DE6A98C4C9AA258495559C0CCD5D9901999115DD),
    .INIT_17(256'h95594C9D4D5D159884CC880880885A65CCCC5922AA26A6AA6666666626EE266E),
    .INIT_18(256'h996111EA3A84C555DA6E26EAA2222222A22A6A3E80080884044054445D4D911D),
    .INIT_19(256'h9EAE26EE6A251115DE662DC400FBAE101885908CC51589191901DDD11AA61119),
    .INIT_1A(256'hDC4C11D84C8880080088452A5C452A2AE626AAA6226666662AAE99EE25999155),
    .INIT_1B(256'h6A44C1D19A66E26AA22233223222A6BB4000888880485000004D491449550414),
    .INIT_1C(256'hE622D5DDD66628CC8AE2A18C0C55C8C48C808C1C95195D6A1166A611916612AE),
    .INIT_1D(256'h4C8000000000040AFF29A6EAA6A26AA62A2222222226555E6D19915956E66EE6),
    .INIT_1E(256'h9666226A22223322272666779C088888080DD88C880485505D8540448CC4CD5D),
    .INIT_1F(256'hDDE98C18EFED4099C9ED0080C4CC1191119AA9562119119966A1126E6FDCC1DD),
    .INIT_20(256'h80800808D9F77A6EAAEAA6622222222222AA6E555591D199EA26A226E222E5DD),
    .INIT_21(256'hA22222222AAAA2AB7DC88880840E50004880055808808844CC4C4DE625000008),
    .INIT_22(256'hD558C1D5D5144C011D559559192A16959196A596196191A66BDCCE51E6A66E2A),
    .INIT_23(256'h8C85AEE2A7EE6626222222A66266A6E55592D59E6A2AAA26EA29D115D9154961),
    .INIT_24(256'h6AEA22AE3768888008DD101B50808D8880584450CCC008E33F08008880880880),
    .INIT_25(256'h69C0D5955DDD991596951626519A15AA962A6162EB2C8EAD96EEE66AA2222AAA),
    .INIT_26(256'h4E3A22A22A22222EEEAEEEEEE99E9926AAA222AAA665515D55558CDE00C91D11),
    .INIT_27(256'hAE3644885B251006B60C400800000DD800088C437BAC08888888888088044848),
    .INIT_28(256'h95559916969591219A199611616191A2EB2C022EAEE6EEE6AAA22AAEA6A22A6A),
    .INIT_29(256'hA2AAAAAAAEE6EEEEE2995E66E226222A2EA955D555515551515199092C8095D9),
    .INIT_2A(256'h720D200454525080004CDD0880008845F7BDC888888888888888880040163626),
    .INIT_2B(256'h9961995595951959619991A26FE8CA6E2AEAEEE66AAA6AEA6A22AAAAAEE7A0CD),
    .INIT_2C(256'hEAEE6EEEE2E95EAA2AAAEEEA2EA9159DD599D2D959D8400D4C895DD695999919),
    .INIT_2D(256'h4D7B7AADD55275480800880C5E3F0488888888888888888880C8166AA2A66666),
    .INIT_2E(256'h9DD15D12619199EE2B74C27E6AA6626662666EAA2A22AAA2AEEF74DED40D3648),
    .INIT_2F(256'hE22996AA2AEE6EEAA6AD9155D9D59E2D55540C9149D5D559599559A599916155),
    .INIT_30(256'h6373F4C000888880C5AFF88888888888888888888880C52EAA6666EEEAE15EEE),
    .INIT_31(256'h9269596E22BDC67A266E62EE26266A622AA6AAAA66A6967680006FB667FB7BB2),
    .INIT_32(256'h00000000000000000000000000000000DDDD5959DD5599116159695951919D66),
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
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:4],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6
   (\douta[4] ,
    clka,
    \addra[15] ,
    addra);
  output [0:0]\douta[4] ;
  input clka;
  input \addra[15] ;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[4] ;
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
    .INIT_00(256'h0000000000000000000000800000000000000000000000000000000000000000),
    .INIT_01(256'hFFFFF000000000000000000000000000000000000000000005FC000000000000),
    .INIT_02(256'h0000001DFFFBFFFFFFFFFFE000000000000000000018000003000000001FFFFF),
    .INIT_03(256'h00000060000000000007FFFFF7FFFDFFFFFF9F00000000000000000030000000),
    .INIT_04(256'hFFFF0000000000000000000000000001FF3FFFFFFFFDFFFFFF9FF00000000000),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFF0000000000000000000002007FF77FFFFFFDFFFFFFFF),
    .INIT_06(256'h0D0001FFFFFFFFFFFFFFFFFFFFFFFFE7FFF80000000000000000000011FFFFFF),
    .INIT_07(256'hFE000000000000180007FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFC0000000000000),
    .INIT_08(256'hFFFFFFFFFFFFFFFFF00000000000E0000EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000380007DCFFFFFFFBFFFFFFF),
    .INIT_0A(256'h005C000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80013800020001FFFF),
    .INIT_0B(256'h7FFFFE7FFCF400000C00003FFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFF8E003),
    .INIT_0C(256'hFFFFFFFFFFFFFF3FFFFEFFFFDE00000000007FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFBFFFFFFFFFFFFFF3FFFFECFFFEF0000000001FFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFC00000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFECFFFFF8000000003),
    .INIT_0F(256'hFFFFFFFFFFFECFFFFFE0000080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECF),
    .INIT_10(256'hFFFFFFE00000F8001FFFFFFFFE8FFFFFF0000081FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'h000FFFFFFFFFFFFFF8000FFFFFFFFE00003FFFFE9FBFFFF8000007FFFFFFFFFF),
    .INIT_12(256'h00000D9FFFFE00001FFFFFFFFFFFE000FFFFFF0058FFFFF80001FE1FBFFDFC00),
    .INIT_13(256'h000000000000000000007BFFFA00003FFFFFFFFFC001FFFF0000000000007F00),
    .INIT_14(256'hF803FFE00000000000000000000000018003EDF900007FFFFFFFE3C1FFE00000),
    .INIT_15(256'h002080007FFFFF007FF00000000000000000000000000000000DE980007FFFFF),
    .INIT_16(256'h000000000000000000C0007FFFC01FF000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000040007FFC01FC00000000000000000000),
    .INIT_18(256'hFF87F0000000000000000000000000000000000000000000007FE03F80000000),
    .INIT_19(256'h000000000001C0FD9E0000000000000000000000000000000000000000000900),
    .INIT_1A(256'h000000000000000000000000006071E000000000000000000000000000000000),
    .INIT_1B(256'h00000000000000000000000000000000000000003063C0000000000000000000),
    .INIT_1C(256'h0001C88C0000000000000000000000000000000000000000000000D8C6000000),
    .INIT_1D(256'h0000000000000000000C08000000000000000000000000000000000000000000),
    .INIT_1E(256'hC290000000000000000000000000000000500000000000000000000000000000),
    .INIT_1F(256'h00000000000000ED500000000000000000000000000000006000000000000000),
    .INIT_20(256'h0000000000006000000000000001651000000002000000000000000000000000),
    .INIT_21(256'h000800000000000000000000004000000000000001BFE0000000210000000000),
    .INIT_22(256'h00000FFFB0000002088000000000000000000000E000000000000003FFF00000),
    .INIT_23(256'h00020000000000000037FFF20000076400000000000000000000026000000000),
    .INIT_24(256'h000000000000000000000000000000003FFFFC00001E7F400000000000000000),
    .INIT_25(256'hFC00003DFFC000000000000000000000000000000000033FFFFC00009EFFC000),
    .INIT_26(256'h000000000C7FFFFD00007FFFC00000000000000000000000000000000001FFFF),
    .INIT_27(256'h00000000001E0000000000031FFFFC00007FFFF0040000000000000000000000),
    .INIT_28(256'hFFC82000000000000000000006000000000000CFFFFC00007FFFF81080000000),
    .INIT_29(256'h01FFFFFE6C01FFFFF20000000000000000000000000800000002FFFFFC0000FF),
    .INIT_2A(256'h0000000000000000EFFFFEDC01FFFFE000000000000000000000000000000000),
    .INIT_2B(256'h000000000000000000000000000000FFFFF7DA61FFFFE0000000000000000000),
    .INIT_2C(256'hDDA3FFFFFE00000000000000000000000000000000007FFF9FF901FFFFF78002),
    .INIT_2D(256'h000000003FFC1FFE3C3FFFF0000000000000000000000000000000000079FE3F),
    .INIT_2E(256'h000000000000000000000007F83FFEDF3FFFC300000000000000000000000000),
    .INIT_2F(256'hB8000000000000000000000000000000000003C03FFCDFBFFFFF900000000000),
    .INIT_30(256'h0000FBFFDF0FFC0E000000000000020000000000000000000000C07FFFDFBBFF),
    .INIT_31(256'h0000000400067E0003F0CFFF0179800000000000000300000000000008000038),
    .INIT_32(256'h0000000000000000000046003E1FC003F0487F00010000000000000000000000),
    .INIT_33(256'h07800000000000000000200010000000003F7FFF1FBC07F1080F800400000000),
    .INIT_34(256'hFFFFDFE39F000013400000120000000000300008000000008FFFFF1FFB878002),
    .INIT_35(256'h000400000000FFFFFF8C0138000007E000001E000000000000000C00000000FF),
    .INIT_36(256'hF80000000000040000000000007FFFFFC00F78000007E0004FDE000000000001),
    .INIT_37(256'hFE000007F007FFC000000000000000E000000001FFFFFFF12EFC000003F801FF),
    .INIT_38(256'h0001FFFFFFF0DBFC000007FC0FD8C01D800000000003C080000000FFFFFFE1FD),
    .INIT_39(256'h000000000000000001FFFFFFFF9FF47C005FFC0E10001FC0000000000600C000),
    .INIT_3A(256'hFE2C40C07FFF00000000000000000001FFFFFFFFFFFFFF003FFE0D88003FF000),
    .INIT_3B(256'hFFFFFFFE70433FFF03E000FFFF00000000000000000005FFFFFFFFFFFE72003F),
    .INIT_3C(256'h0000078703FFFFFFFFFFFDE0277FFF9BC009FFFFF0000000000000F3E003FFFF),
    .INIT_3D(256'hFFFFFF000000000000000001FFFFFFFFFFFC81DEFFFFCE601FFFFFFDC0000000),
    .INIT_3E(256'h31FFFFFFFFFFFFFFFFFFCC0000000000000001FFFFFFFFFFFC013FFFFFEFF0FF),
    .INIT_3F(256'h01FFFFFFFFFFE001FFFFFFFFFFFFFFFFFFFC0000000000000003FFFFFFFFFFFC),
    .INIT_40(256'h0000000000000001FFFFFFFFFF8003FFFFFFFFFFFFFFFFFFFE00000000000000),
    .INIT_41(256'hFFFFFFFFFFFFFE0000000000000001FFFFFFFFFC0003FFFFFFFFFFFFFFFFFFFE),
    .INIT_42(256'hFFE000003FFFFFFFFFFFFFFFFFFFE000000000000003FFFFFFFFF000007FFFFF),
    .INIT_43(256'h00000003FFFFFFFF8000001FFFFFFFFFFFFFFFFFFFE000000000000007FFFFFF),
    .INIT_44(256'hFFFFFFE800000000000001FFFFFFFF00000007FFFFFFFFFFFFFFFFFF80000000),
    .INIT_45(256'h01FFFFFFFFFFFFFFFFFFE000000000000001FFFFFFFF00000003FFFFFFFFFFFF),
    .INIT_46(256'hFFFFFFFE00000001FFFFFFFFFFFFFFFFFFF000000000000001FFFFFFFE000000),
    .INIT_47(256'h000000000000003FFFFFFE00000001FFFFFFFFFFFFFFFFFFC000000000000000),
    .INIT_48(256'hFFFFFFFFFFFFF8000000000000001FFFFFFE00000000FFFFFFFFFFFFFFFFFFF0),
    .INIT_49(256'h00000000FFFFFFFFFFFFFFFFFFF8000000000000003FFFFFFE00000000FFFFFF),
    .INIT_4A(256'h0000001FFFFFFF00000001FFFFFFFFFFFFFFFFFFF8000000000000001FFFFFFE),
    .INIT_4B(256'hFFFFC0000006000000000FFFFDFF00000000FFFFFFFFFFFFFFFFFFC0000F8000),
    .INIT_4C(256'hFFFFFFFFDFFFFFFFFFC00000161F0000000FFFFFFE00000001FFFFFFFFFFFFFF),
    .INIT_4D(256'hFFFFFE00000003FFFFFFFFEFFFFFFFFF800000006000000007FFFDFE00000001),
    .INIT_4E(256'h00000000000001FFFFFF00000007FFFFFFFF8FFFFFFFFE000000000000000001),
    .INIT_4F(256'h83FFFFFFFE000000000000000003FFFDFF00000007FFFFFFFF8FFFFFFFFE0000),
    .INIT_50(256'h000007FFDFFFFE0FFFFFFFFC000000000000000800FFFFFF0000000E7FFFFFFF),
    .INIT_51(256'h000000FFFFFF80000003FDFFFFF80FFFFFFFFC0000000000000000007FFFFF80),
    .INIT_52(256'hE00000000000000000207FFFFFC000000BFFFFFFF003FFFFFFD8000000000000),
    .INIT_53(256'hFFFFE007FFFFFF10000000000000000000FFFFFFC000000FDFFFFFF007FFFFFF),
    .INIT_54(256'hFFFF00000005FFFFFEC004FFFFFF80000000000080000000FFFFFFC0000007FF),
    .INIT_55(256'h0000200000001FFFFFC0000007FFFFFE0004FFFFFF400000000000800000003F),
    .INIT_56(256'hFFFFFE000000000000000000003BFFFF8000000FFEFFFB0071FFFFFF40000000),
    .INIT_57(256'h0001FDBFFE00FFFFFFFE0000000000000000000017FFFF00000005FFFFFE0079),
    .INIT_58(256'h00000FFFFF00000000F7DFB800FFFFFFFF8000000000000000000017FFFF8000),
    .INIT_59(256'h00000000000000000007FFFE000000001DE63000FFFFFFFFE000000000000000),
    .INIT_5A(256'h0003FFFFFFEC0000000000000000040007FFFE00000000006600037FFFFFFE30),
    .INIT_5B(256'hFFC000000000040007FFFFFFF60000000000000000300007FFFF800000000064),
    .INIT_5C(256'h000001F00003FFFFE000000000000007FFFFFFF8000000000000000070000FFF),
    .INIT_5D(256'hFFFE0000000000010001F00003FFFFC000000000000007FFFFFFFC0000002000),
    .INIT_5E(256'h000000001FFFFFFFFE0000000000030401800007FFFFC000000000000007FFFF),
    .INIT_5F(256'h0003FFFFE0C00000000000BFFFFFFFFC0000000000000000020003FFFFE00000),
    .INIT_60(256'h000000000040C42007FFFFF0C00000000000FFFFFFFFFC000080000000006002),
    .INIT_61(256'hFFFFFFFFF000010000000000C1E06003FFFFF1C00000000001FFFFFFFFF40000),
    .INIT_62(256'hF7800000000007FFFFFFFFF00001A000000000C0408002FFFFF3800000000003),
    .INIT_63(256'h0600020001FFFFFFE10000000007FFFFFFFFF00001800000100E80000801FFFF),
    .INIT_64(256'hE00001F00040000400060000FFFFFFF7800000000FFFFFFFFFE0000180004000),
    .INIT_65(256'hC0807FFFFFFFFFC00003E00000200000000001FFFFFFFFF1FFE0801FFFFFFFFF),
    .INIT_66(256'h00FFFFFBFFF7FFC680FFFFFFFFFFC0001380000000C040008001FFFFFFE7F3FF),
    .INIT_67(256'h000000E0100080007FFFFBFFFFFFC001FFFFFFFFFFE0003B80008000E0800080),
    .INIT_68(256'hFFFFFFC0000FB000000000002000807FFFFBFFEFFFC102FBFFFFFFFFC0001FA0),
    .INIT_69(256'hFFFFFF80078FFFFFFFFFC00027BC0000000008000800FFFFF9FFFFFFC00FE3FF),
    .INIT_6A(256'h0C1F10003FFFFCFFFFFF80071FFFFFFFFFC00063BB0C0000003C0600003FFFF9),
    .INIT_6B(256'h0463840C000000000F08305FFFFC7FFFFE000E1FFFFFFFFFC00063FF0C000000),
    .INIT_6C(256'h18FFFFFFFFFF100C7B9800000001800700601FFFFC7FFFFE000C3FFFFFFFFF20),
    .INIT_6D(256'h07FFFC07FFF80033FFFFFFFFFF801C7F38006000EF0803F10017FFFC1FFFFC00),
    .INIT_6E(256'hF000846000403C01FFFC03FFE00077FFFFFFFFFF80187F01000000FE6001F018),
    .INIT_6F(256'hFFFE00401F8003F000C07000000C07FFFC000000006FFFFFFFFFFF80707F8181),
    .INIT_70(256'h000001C7FFFFFFFFFE00001F80038000FF8F82044405FFFE00000000EFFFFFFF),
    .INIT_71(256'hECF80007FFFF0000000307FFFFFFFFFC00003F80018000FF87FEC04207FFFE00),
    .INIT_72(256'h7C0000E000FFFFC0FFC005FFFF00000006FFFFFFFFFFFC00003F0000E000FFFF),
    .INIT_73(256'hFFFFFFFFFF0000F80001C000FFFFC1F00204FFFF8000000EFFFFFFFFFFFE0000),
    .INIT_74(256'hFDFFE0000077FFFFFFFFFFFC0001B000018000EF7FFFE00004F7FFC000001FFF),
    .INIT_75(256'h04E40FFFFFFE01FB7FFC0001FFFFFFFFFFFFE000018400000002E00FFFF00001),
    .INIT_76(256'hE0000400000000045FFFFFFFF205FAFFFF000FFFFFFFFFFFFFE8000300000000),
    .INIT_77(256'hFFFFFFFFFFFFFFE0000C0000000000F78FFFFF8005F8BFFFE2FFFFFFFFFFFFFF),
    .INIT_78(256'h000003FE47FFFFFFFFFFFFFFFFFE8000190000000000B01FFC0C0001FC33FFFF),
    .INIT_79(256'h0000C07033BFFA00B007FE1B7FFFFFFFFFFFFFFFFE008011000000C030787FF8),
    .INIT_7A(256'hFFFFF803C0780000000078273FFFC00003FF1A3FFFFFFFFFFFFFFFFC03C02000),
    .INIT_7B(256'hD037FFFFFFFFFFFFFFFC01E0FC00000000704FDFFFF80105FF983FFFFFFFFFFF),
    .INIT_7C(256'h34637FFCC201FFE001FFFFFFFFFFFFFFD001FFFC00000800601BE77BFEE307FF),
    .INIT_7D(256'hFBFE0000000000300FFFFC0D01FFE000FFFFFFFFFFFFFEC003F9F80000000030),
    .INIT_7E(256'hFFFFFFFFF7001C7FFD000000000001DFDBFE0D07FFF000FFFFFFFFFFFFFF000F),
    .INIT_7F(256'h4581FFFC006FFFFFFFDFF7F200303FFC000000000001FFFDFFDF07FFF8007FFF),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\douta[4] }),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7
   (\douta[5] ,
    clka,
    \addra[15] ,
    addra);
  output [0:0]\douta[5] ;
  input clka;
  input \addra[15] ;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[5] ;
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
    .INIT_00(256'hBBFFFF7F8470FFF6FF48209C3BFCE2778FBF83DBE4274B68738C7FF37C0E60BF),
    .INIT_01(256'hD50361E51FF67D7C7FBFBF8061ECE99DA80C0E7F7DECCBC8A2060D3F81AB987F),
    .INIT_02(256'h15FAFB636A4EC31F7DF81E92FEE50FFB67D4B96070D0E7B04CB6FFF7043C2942),
    .INIT_03(256'hC064FB5DB473EE056CB745B04FCDBFFF93D3651DC73FD3B7FD9964BF6C0820CE),
    .INIT_04(256'h7D540F59796DFD0040FE9D7F43FFF6B9603E7FEFDC7E9FFFFED18377BFF744DB),
    .INIT_05(256'h0AFF6BFEDAB1FE7C7A3A8FFBCFFBC021FEBDF81FDDDCCB507C74DFDDBCEFDAD6),
    .INIT_06(256'hF40737D6FDCCFFFDF76C9BC3FFFFFE1F8F1AFBFFD4E020FFD3DDBF9FF9FDC671),
    .INIT_07(256'hFD6FBC57E1FFE7203F79DFFDDEF087FFFFF3F1FFFFFFF7FCCF2DFDCEE760FEEF),
    .INIT_08(256'h437FF87E9FC03FA066BEC6C5AB653CF6489B4F433CF7FFFF3745FFFEFAFC77E7),
    .INIT_09(256'hDFE56FC74FF119D33FFFFBF78338EFA6BFD7F8ECA81575A31A2FFFE5EBFFDB3F),
    .INIT_0A(256'h405D89DB9AEE77BF9FF7F0F5B9FC57FFB0F1C880417FFC49C0B021EF15368C31),
    .INIT_0B(256'h6200199E1EB96279FB98B79A3E8FBBFFDCB3BF777E67FE03FD8304041EE5CEA3),
    .INIT_0C(256'hFFD4FE56FC000448003F5EC67E7BFB5F8CFF0FFE7FDFB4D2997EFF3656F0E835),
    .INIT_0D(256'h7FFFF7EEF9CFB666FED9E2F1380EC0000A5DE1FE70FC4784724FFFFF4DCC8B0D),
    .INIT_0E(256'hA86322279E7E97FFFFFFFE466C73ACFA1AE7F818A8C2000366AC67A4E77E8776),
    .INIT_0F(256'hA7C46D87000F6FBFEF680EF93C4FFFFFFF3FAF23FE7D5747EB819C3E610007E6),
    .INIT_10(256'h303BBB8C7807BFFE6FC3B50004EF1FFEE40079C8FFFFFFFFD8F8CFC6A73FC65B),
    .INIT_11(256'hB0E740FFFF9B0035977F05F800ECEC7FF1D8F81D3FCFF13512705EEDFFFFFFFC),
    .INIT_12(256'hFFFF3600709FC3D3D745FFFF8D3ECAEC79FDDB1FE927FDAFDFE67B9541B3DD80),
    .INIT_13(256'h80C6F6000000113FFFF445D09AD3BFE280FFFFFEFC386043921F00581C467FFF),
    .INIT_14(256'hE3FDC6F880C036E0FF00018000000014DCDF429667324645FEFF175DDCA9F001),
    .INIT_15(256'h00D6A0BF13F1F3677BFC0038C1DFFFFE03D47DC0000001678F1ADA26789EC27F),
    .INIT_16(256'h00000001006000FEAD361C3AD798685E600118E693FF7D01C078D0000006437D),
    .INIT_17(256'hCB9F07FFFE003CC2F38000C80C61FF9498FC70F98EA320011C0E17D5BFFC0209),
    .INIT_18(256'h7BEBF507FC8701E617BF7FF8FB4F702EC0C7C4068DD4CF74DE73F896482E0104),
    .INIT_19(256'h840CBE7F27BE7D6FF543F9FDC004AEEFFBF6FCDBDF3B0700C50600400DFFDEFD),
    .INIT_1A(256'h1F2BA003EDBE402A3B105FE987F36CB807FF7A184103A77FFFE1EF06D6E21CC2),
    .INIT_1B(256'h93F0009FA00A70A6633834F1B4F1DF96F86FFFCFF477AC7FFFE3B0264D9F76BD),
    .INIT_1C(256'h76EFCC5C0E7FFFE14C0FF08B68CF69E3D8B801C3F9AE05BFFFF3CBFB56357F61),
    .INIT_1D(256'hC081C4D18EAB84351F4C1BD07BFFE8827EF136F2E8908AD080C013FC7A83E45E),
    .INIT_1E(256'hF7B2211353DF3DF2008BE0EE1FCE88137711A83BFFF606073BFFB8901586D39D),
    .INIT_1F(256'h233FFFF67A0009BFFC9E58E1FF5FA4683DC1F617FFE0017B2BA83FFFFCCA3DB3),
    .INIT_20(256'h54FED177FC3637FF1DFFE35FE4571B7F8E17E7AF9BA886C94A8F6FFDF797FA73),
    .INIT_21(256'hFF9D2E16027CF414D2014F64001858CF7FD77C5011F7FF9A02DF7057C10BFF56),
    .INIT_22(256'hE449DF817FC93EFD7E108696FFD8DB0115415E7C892143FF18FA8495F77F3A12),
    .INIT_23(256'h32F87B29F21F1F8835FE3037F89C3F1CAF1611FFDC4BCA020042FBCB0641FFFF),
    .INIT_24(256'h26EF975F9DF8411B65FF98E02F4040E7440948D9099FB8BA8FB37F977CCFE470),
    .INIT_25(256'hEFBCD3B00ADC2A604FE19F01FE002BE27E3BC010160864FA980EFA125EF0B43C),
    .INIT_26(256'hFBC3BFCA8FA30E6F30D1E95ABFFE333F80AFC7E70A39CDFE30FC0EC11FCF802D),
    .INIT_27(256'h43FD3A1B8F76FEFBE5E3FD0362B8FF062CCFAEE444001380BB57FD2869F5B7BF),
    .INIT_28(256'h25F87ED2C824D13F7B98B7251C6038E5D58F5198116FB6B02732C31BF3790119),
    .INIT_29(256'h9796B41FC8B0B27CFEBF4AF386480F07E005FEAEF8207FE8200291709FEC210D),
    .INIT_2A(256'h62FF832AFDBD5BC13B6477EC348C4E95CE507E0D13FD8E688F3E98FFB1CBFF1E),
    .INIT_2B(256'h5C1FE9BFD17E10F5FF1F8E7CE7B30F0900DA7E3288362CBD4AA69FABFC4C000E),
    .INIT_2C(256'hFA78D2452BA1119F3FEF5C47201265FF4FCF344FF359850162BF82F4F8DE8F16),
    .INIT_2D(256'h8313920787077ACCFBF5082EE54B0FAFF039CD3586D1FEEFDDA66F918F2C8E4B),
    .INIT_2E(256'h00265259D77F3FE5A3006C6F33AE5EEED3B83FB43CF87FF9C760DA34F1FC7FF1),
    .INIT_2F(256'hF65A116DDDE730011B36E9DC7AFA8797A0601BC65DB7ED3C4F63F976CF7FFED9),
    .INIT_30(256'h7CBB8BC5AEE6EDDE7DC8ABDEFF9E19039EEFFEF9B129C1DAD13FC9A5DC6B7E4B),
    .INIT_31(256'hDFFBF725FD298F001EB1101E876FFA43650DF7838F0A97A9EF5FFF95099EAA5B),
    .INIT_32(256'hFDB3CB8A0F9667F7FFEC43F0BDFAD56D75B7B797F98186385FFF01FF059EAD6F),
    .INIT_33(256'h85CAA38CA4C0FBFF15DB041F87FE37FF9D3DFF6EFD3D6FFEFF2AE9FF8859B487),
    .INIT_34(256'h3C7B4DFCE76DF6516382839D7217F2E3FF930AC1FF8DFA84CF9C982ED3C39B76),
    .INIT_35(256'h3F6BFCBFFF4C3BAFFEEC36F955F995F0F06153D79FFC73FBFF3DFEFFCFFF9879),
    .INIT_36(256'h7E8807F60DF8EF8C2FFC7AFF9A07BF07517EFC7FD3B760FF9F3E4C0FE081F9AF),
    .INIT_37(256'hB6D3FCE7D8BB913530130EC1FECB06ED3E8FFF8DD7CB97F96FFCFED336E18E4A),
    .INIT_38(256'hDB9139AC1780D594BAFC7FFB5E2FF35DCE7B00FEBF0A573EB3EB7CBFDE07E1FF),
    .INIT_39(256'hE52F407DE6BEBFF915099837A7FB75E21A2F9BD9AF5097C300073E0B35CAFC3C),
    .INIT_3A(256'h9E1D59664F33200FBFD65E83FF6FFEA2C6E031FF3F5E2DF0EFD70BE6A235DA39),
    .INIT_3B(256'hCC9F49657B0CFEFB7DE8D1FF7BF30F8FC0226FEFC7FE15EEC4FE7FEA2DADD6C3),
    .INIT_3C(256'h1EE75D87B6653563C5E9C6FC0ED06EFFC8F97E3DFEED07E3241D4737ED8E6FD5),
    .INIT_3D(256'hF85BBB7B1FF444BD67EFFC16A5F5E370AE27A69EA02E36672DFC47EFF9CFF6E3),
    .INIT_3E(256'h2DDFC1075284C7CFFCFFCF87F0607F353FEE33AC35DA7573108FFCCD6636E7ED),
    .INIT_3F(256'h02BFFE9247499FF086F82B89CFF00BFAFF7B63E3E27E5F3DED139FF5E07B21F4),
    .INIT_40(256'h9DFAF83E1FAFDE017FFB393F1BFFF8EE6EBF7AFE67F3FB7FFF4AF0C47E1F3FFD),
    .INIT_41(256'h12A343B5C1E9F49C6A387D1D7F30B57C0F7EDFEA47FF4FE73A0E83CE2F85A3CF),
    .INIT_42(256'hFF2FFFBDD7EFE603CE781323C1F1FDE25EFF0F3FDA6ACDE7FFFF9BBFF5DD31FC),
    .INIT_43(256'h4D1F3E2D2F3EFFDE1FFFDF76FFFC03CC6F8CDBACEDE9F07AFEAF159A1BEC287B),
    .INIT_44(256'h0FC672ECBD7FFF8F896FF229E0FEFE3FFFC49CFFF905BC005CF19E7DA6E91D7F),
    .INIT_45(256'h02FFFE839FFFF9DFCF60C0E199FFFF9F9A778881FEFC7FFFF607FFF91BAF3CF6),
    .INIT_46(256'h580FF8FA07BF78037FFF99A77FC71D937E9945BFFCFF057762C89FF8FD0FEBFE),
    .INIT_47(256'h40ABF8FD9406227C0DE0F9016600037CFF811FFFE4F3F13878869DFCFD5A47A9),
    .INIT_48(256'h1FC7F807FD4F300993F8DF64D6429E01C17B107000015FFF8007FFE11FDD9DE6),
    .INIT_49(256'h8000680298FF2294B1FC73065D370137F0D885FE94FE07E27B001070033FFF00),
    .INIT_4A(256'h1FD413731F89FE48006801C9F7A986743C31C05EC02516F9C48DE8E00253C7FC),
    .INIT_4B(256'hDE5EB112205798342F60470394FF8000C0025BC30073ECFE7D3F1F2FA7B7E3BF),
    .INIT_4C(256'hFEBAF8F3DE2363FDFEA49B37B6AB5A5E93548BCCFF800010865EADD1F0DCBF5A),
    .INIT_4D(256'h03BDFA000000E54C80AE0098A9CC513C3D778D940A1C127C2A1B9DF3E0000117),
    .INIT_4E(256'hB9F679110A8A3F8064DE3C0000E57CFDD30E2F2941C478DF5AB8FF84A5848857),
    .INIT_4F(256'h307EF2C4E1C371DAB812383ADF87F029BED0004F897A44B401D51A5D8079D39D),
    .INIT_50(256'h10003546D10E7FF960E009FA9083FE30E2242C1CA18E3BF28000141D02CD9E58),
    .INIT_51(256'h00421CE0747BE000007D3DADF85A15DE38674F3869E5F8A3BB4E0DC27037F280),
    .INIT_52(256'hC28009B9B981E19D2A624AA6D560000072F1C78FA21DD79C67A29C7DED513530),
    .INIT_53(256'h759A457CEB97D7232C879908A8363421D5BBB2EFAC0000D0B5620DE87C4F6B83),
    .INIT_54(256'h01EAFF800F2BC8C6D4433E5F945E746A27677C8F7233F7F4FEEE9FFC0000FE59),
    .INIT_55(256'hBDB78D171023D820E0FF003674D5CAC445BC533E13BE8219D79C995E1178F4C4),
    .INIT_56(256'hFFDE3FFD9C01A5AD0304560A7303701CBDE033FF03D33983C0B71B0EDC110826),
    .INIT_57(256'h9FFDDC4A07C3FFEFD0BAFE649EC61F031163024930B8736D68537F422EA300B1),
    .INIT_58(256'h14D62958F57FC0F3FD403E8781EEBF693F7F705BE77FFAA98A422DAA3067FF63),
    .INIT_59(256'h8135F33F09603C100623EE46DE61B8DFB5D1ABE33BFE1D0FFF4077663F6394E8),
    .INIT_5A(256'hDE08AC3EBDBFE7012AF2B443747070442957B4DBF9E6CD8BD4F6377C7D01BFFC),
    .INIT_5B(256'h04EAA01F5FEFCFDC0BF15DC47AFE827FD53649F09782CF006347FFF8775FFFF2),
    .INIT_5C(256'h40BFBF8C1143D2C9B4B802CCF7FF003BF33F1FDD7E004D3FFC424BBF04ADA9E2),
    .INIT_5D(256'hF1FF480595E39444839D6401FB9F87E078008C77E0007BDDFE7AFDA408E57B26),
    .INIT_5E(256'h00012006E637D0F11FE4034DF0CC608E7458BA67F7EFC09C000007902232BFEE),
    .INIT_5F(256'hB3ABEFE7B8CDC00003C0053FC407E304E017EA391E42A0DA40D73367A3A91F80),
    .INIT_60(256'hBB4444018641024176FFBFE2C52800DF820CFD520FADDEF08399D41E01DCC61A),
    .INIT_61(256'h270FF9E3D68869CE610601BEC3313D8E77EFC6C7FCFFF7C01BDFC93BE7E3F070),
    .INIT_62(256'hCAA3C20FFFA06FB48F0CEBBEC028F8082C12F8A4A4128197C7DAC00FFFFF2003),
    .INIT_63(256'h36A40284C73FA5F3FFE006E080043C6D8DEEA5E008CE804C106E20862493FFEF),
    .INIT_64(256'hCDC024FE8D4293020582A07F1DC47D7FF1F7C000DB9D7FFF84E7E028CE214480),
    .INIT_65(256'h1BC295E0379F8F7002D1F72B04C8080887512A4CFFE5BFFBFFF39129F807FFCF),
    .INIT_66(256'hA75BF8678FFFF7DFA0B7F1A78F86FD206BF79100AB939B7F11B62DFE29DFFFFE),
    .INIT_67(256'hA418CA920C800648B2F807A3FFFFF79737A081FF9FBCF1F5BF349CA500904283),
    .INIT_68(256'h21FF9AFA26473EE6E80210000813DE53F80B87FFFFA9986C864E3ECFB4C47A3E),
    .INIT_69(256'hF093AFF213845523FFBAB134D73EE7941C8D0CE780579EDC41C0BFB2FD16EB0B),
    .INIT_6A(256'h0A1F91129FDC34F989CD9512FDBA2E3F9B3D85A67FE1FB4FE80356F7BBAA590B),
    .INIT_6B(256'h83F2FD73782B5880DE69A0D0A873FFD4DFA033300CA01EDAF8891F7FE0B81182),
    .INIT_6C(256'h5E9F1F3FDF630067B1FA5EEC035C011970F8F0DB787F387E4826910F131F1A79),
    .INIT_6D(256'h3983FE9F1B8C0052703F28FC561ED0376FE3D8D90D4A9531CEDE297B0BB7EEB0),
    .INIT_6E(256'h14840676A91028F1327A9F782B0C3D8E9726FEDE4D921773FFFC5B3F7C433171),
    .INIT_6F(256'hD661FD085702B68CAF07D990445FD9003AE9D3EB31EDC35007FEFFFF4C7F03B2),
    .INIT_70(256'h09081387A459C3FFF7D840D3077C6690862EBE6475F0849860CC805DE380196C),
    .INIT_71(256'hC840041FE19F0720101702125A35FFCF8160C1BF787CC714AB37A90619C89F10),
    .INIT_72(256'h8ED81C6011E07BB647E719E023827C007C9E7AAE11E01F80C00338FA1E00F00D),
    .INIT_73(256'h8C6C53E6973401BF5011E0C08211C58D6F1CC267400000A0B72A5CEFBBC39F00),
    .INIT_74(256'h9E1258001D06FCDC7E9B0FE6A0013766C980408FC98216490CDA7BA00007513F),
    .INIT_75(256'hA2AC156901A107FD349B001C23FD9E3BF602849002B0172A0016A3908647141B),
    .INIT_76(256'hBC5019B02C069078BFAF78822C17E4868386F02CF884FE10A936400529A9F82D),
    .INIT_77(256'h3BBDB1992C622832701F285A04C0021EEBE2222807F30A14A8D7FD38E2194334),
    .INIT_78(256'h1DFC814129DBC695FFB88D10CA9090901798084090250033A81E7D8980CEC9F4),
    .INIT_79(256'h1C060D6C31B7A42FF48763453BE0FFFE8BD9E4638208006FB88C84040468F5A2),
    .INIT_7A(256'h7595C4077B73881C0C2510250A51C7C605E288DAE03FF65C4EA3012008405BA0),
    .INIT_7B(256'h70AFADDA0800EC031FC218707C4C1B4F0C881A5B70FFB506B1405CE1BC39AEDA),
    .INIT_7C(256'hD1414463B70FC78046EA6999C1A704E327EE96FE42308F0C6890403AD3970573),
    .INIT_7D(256'hD9FECDE1839230000FE8D8AE47F0C0182D9DDB6D7E9EFE8A941CFED065824C3C),
    .INIT_7E(256'h6FD77B96E7B6AA51FD9171032C8834D41A37014DF1F74CC79C7FA273FEAF0326),
    .INIT_7F(256'hDDC471E6007FA272FB1DB7F5F7ACFBBC7DF67738507D6FCDEBA0C7D1EC8C0659),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\douta[5] }),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8
   (\douta[6] ,
    clka,
    \addra[15] ,
    addra);
  output [0:0]\douta[6] ;
  input clka;
  input \addra[15] ;
  input [14:0]addra;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]\douta[6] ;
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
    .INIT_00(256'h91BD674404AC04629264372C770FD3778B1A0F8E80278E1F5D362F09050CAC94),
    .INIT_01(256'hE37987E1E57A9D3321922B00308C481A807F7D7C45FEE1E517DA0D5EDB8A7BE6),
    .INIT_02(256'hFE7D3D9345BDD900092CE0059A01401041540338100C06A4EDBC3CF03ECC302D),
    .INIT_03(256'h7E3E505184665FDC7D91B9112FCDF673918CC01EA0D1A36075C53DA4ED88319E),
    .INIT_04(256'hCC9A555918AFD8288D7AD6F805DFFF8B8B24CE8E5F5EBBF5398EAB6EC3C046E9),
    .INIT_05(256'h1CE46B4CD282B06D69D887AB8D2862C56CB22319BDFD9067EA100685A14902D7),
    .INIT_06(256'h03C0DEBF2F488CC9766F00407830077E8FE0C10BFA2C4A78D041958FF1EA1EA1),
    .INIT_07(256'h214E5A4223038142C985ED7846877470DE41981C261E0F88A6696FFAC6514AA2),
    .INIT_08(256'h61E53FF5FDFFC00FC6D12F4927611D39E55242573CD0148C3B65C82DB348655B),
    .INIT_09(256'h9E01D239990036FEE1DECBFEF7FFEF592091A1E7A151483D5B0D99B2C3D46032),
    .INIT_0A(256'h16749141BF3C671900175DAA187055E1FFFBFFFFFDE4E7101C832D0900177824),
    .INIT_0B(256'hBBBEE5B7733D6621BC5908EEA89A8200FF6BC2425C6FCFFFFFEAFFFAE6E695E3),
    .INIT_0C(256'h5E42625BFE3FFF57FFC3263BAADBB15FFFE778280E9F9BFDFE629BDA5DFCDFFF),
    .INIT_0D(256'h00009925BF0257A2ACFE8FFEC7F993FFF16598B4D411413F82D9CC20E9DFF5E0),
    .INIT_0E(256'hF8BE32749C182C0000F8AD3DCC00B677E70FFFE71313FFF986D057721EFF7EB7),
    .INIT_0F(256'h1DFB859797F3206F9D590E4658680000E828CCFD0DFE983F07FE63C111BFFA50),
    .INIT_10(256'hCFDFD2110078D4F5627F1704E5F0B7F2B48544E9410000CEB7EB302174AC3810),
    .INIT_11(256'h4C3600003E6A3FCF0780D2A40820755628CD0D6552D791744B689B2000008C3F),
    .INIT_12(256'hF946146054E1CCFFEB05003FFE431513A1FC4519006D47035EB5475F58023BC2),
    .INIT_13(256'h7F00D007380F1D3F2E353C3064C5DC1280000B00A3D3C125023FFF3C1E567E3F),
    .INIT_14(256'h23CEC62C423E7FFFFFB1FFF25FE7FE502AFC1A76EBE40E0403CACE471DE9B840),
    .INIT_15(256'hA54A70BC76B14F6350369CC0010817FE0314620080FD337D50EB6623A8DE8003),
    .INIT_16(256'h0600085DFFE1F23D6E209E3EF32870266188E71001B5FD01007000013FF16398),
    .INIT_17(256'h3C0108C5FC000000000018F801EE2A6919F6FCFE62252FF0FFF18045A4FC0009),
    .INIT_18(256'hB24C0187FF00FE18480846F802698791000FE040F0C6FD56E23F0066CDF980FF),
    .INIT_19(256'h000A9D862F8CDFCAC14BE47E07FB4048CD6978E7475FF80005000FBAED69C8FE),
    .INIT_1A(256'hDF61E112FF41E014F3403FB200004190187FFC07BFEC5EEE2C27A39ACDBEC002),
    .INIT_1B(256'hBC0FFFF7D806FFB23F64D701CFF03F7E95448D29101EE6FE3E7C0FF9FF3EDF97),
    .INIT_1C(256'hB35708E1193F7FDEF7FAC1AAA9EFFBF78244D9DFFC760FFA36CFF2CBA4139E60),
    .INIT_1D(256'h04DA84E58CEC6852E27423F26787E77DFF2E10E2E5485331B84E8FE4EABF89B1),
    .INIT_1E(256'h35229800171D283AF55FE0FDD0C053CF0F176C478BE1FEFE83537092EE07953A),
    .INIT_1F(256'hCF76070FFF19F60A840662007C314F1C3FD5ED5BDE8FEF814BEF761FE3FFD08D),
    .INIT_20(256'hEF25B054632A53F07B9FDFFD78EA24881A23022D70C94EDECEC4C109B28F15C2),
    .INIT_21(256'h252111C999BE3014028D4359CC0C21EEC03E710A6EEECFA3CFDB90A02797F8F2),
    .INIT_22(256'h98B7C9AB97A8C8F5C16F38ADFE78D956B1695989BBD86A3FF7F46355D9EF2211),
    .INIT_23(256'h316D5D341314FC237CC00D368E434E83552864CE744B87615D53E9077963EFFF),
    .INIT_24(256'hC359619590D717D0846E7A95BD74AF0543F69206B4F13807504D9165F8E2E4FC),
    .INIT_25(256'h96C228F587BEA20271082D0D0CFC6B186E0CCED249E78C8E4AB705292EA22A1B),
    .INIT_26(256'h1BE81111A2281980EF6602E7D247FC2CD53B43978070D01E1ABE3E20025391AC),
    .INIT_27(256'h530F6B1CEC12FA7B6ABC42681456C73B93A005AC52BAAD07E707C7B76CBC3293),
    .INIT_28(256'h2290441C3FC35FBE9F86BF211CE2911332377818938FCD169400E1CC702CC4D1),
    .INIT_29(256'h9E81871751588D3970331328793AE8E7BEED2DA8E38971559EB82E376FB70126),
    .INIT_2A(256'hDCA1809395733F8740942169FEB1790D800F45E2BE1E40429FB510C181B6B46E),
    .INIT_2B(256'hE3DB895FDB7FF1B6C71F67B5395DDE4E7DCA75141C9DCA1E8C6D02BDB74C0A6E),
    .INIT_2C(256'h005C4CE2F02516643DB37C5F8E10E4B60FDFC4B18D390C9B0206C4A20F080C7C),
    .INIT_2D(256'hEB249F8EC2434A809BFE070E7CFC175092A29EBF8F9092401F76942F663039CC),
    .INIT_2E(256'h662EC10A5D0CF875AFCFBF6B8DE24224B84EC4B5CCC7E7C6C6477A9EE0F4690B),
    .INIT_2F(256'h8399EB913A3AE1419B70FA8440307BB0F78C34F940816E193420EEB789C557B4),
    .INIT_30(256'h04AF81848ED71CB00595DD353916DBD189BD48B01CA7C1F4ECFDA78544634B14),
    .INIT_31(256'h1896F9E085412F9ADC3010121D7D11B9901A7F0F872BE2B5B909D156FBB728B3),
    .INIT_32(256'hCF34D4CEEDBBE26810C01200904847002586A124B86795C429ACC6E0BFF733AD),
    .INIT_33(256'h89FEBF595C0F054618682FD3DD72D9D2FDB17B284745ED8E85005DBD2812537B),
    .INIT_34(256'hC3CF05D04424A2413F31CF900BAC0E9D0033B5B2079CD040481C842FE1121A60),
    .INIT_35(256'h5B8AB31078C820511BEDB681401819CAEBE1C528B457A2C1FC2DBF84D315E408),
    .INIT_36(256'hC4C483971A7F8B09EF6962A3870CF6C411E3044883B400FE05A6ADB95F1EF3AC),
    .INIT_37(256'h60427E6097B3EA32C6BCD9F83143431D7182AEB83907970C639054DA16224A77),
    .INIT_38(256'h24F9E22C1486D0D0301D9C60B42138A861BCF7D5578030A031FCA883821441F7),
    .INIT_39(256'h84929A8DA8F224FDE984C0204798B1A089221A38271F97C0709895F3858BB220),
    .INIT_3A(256'h084509267B3BA06449CB0602C12D96D098000D801EC408CEC0C18206A7AB0B3B),
    .INIT_3B(256'hCCFDCDA5CEB8CA783901D10A6513C99BE52060D1A21E6CBA88F7A0414D8CF444),
    .INIT_3C(256'hFDFE40F4369409600007D643488886724950B95397FA5E1EA5FFB9C15C7ABA09),
    .INIT_3D(256'h7E4673086F12ACD6D9DA879CB409E08532140AB183C5122CACC06205587A023F),
    .INIT_3E(256'h2CAA2CD8F900323F7E4A8B7C0ADF89BAA48B1880094184126C04255290702489),
    .INIT_3F(256'h74A4060DB9B9C03C3903851D3047FBF9EC81EB1DFFE5E5279C3EA4085F86A030),
    .INIT_40(256'hE622506198E0099CAC0044C6F67582D0F8B0A0009663FA9D286B7AE3E39C6D1D),
    .INIT_41(256'hC5AC03858111CCE7F0EF4092F82ACDA40E402C1FB9046E65396E82780F824971),
    .INIT_42(256'h8CCFEC466F919088B1800003821DEEA472619EB58010ADB89E0C7A427FAFCE01),
    .INIT_43(256'h2696F16153301C3BDFCEB12F6DE8B9339001C0107D88661F10683690B9F7D096),
    .INIT_44(256'h0E47A903D3FE4028BA675024C2BB119F217FAB8FFCF103FF93F019A6B7477AC0),
    .INIT_45(256'h49A1281187660F980F420B079F4399D4DD3EC0081DF77F85E6D93D260190C306),
    .INIT_46(256'h5787A7F63C46B3910CF701A3A6088003678E109A033000F5EC64034737549CC8),
    .INIT_47(256'h97D72C7B7D02B1FAC47DA5BBFF61E45DE7AFFE188A300173E751E623BA5E49F5),
    .INIT_48(256'h7F6430E1C03AB330FE745EF4F2ED9822C365477D7870B02113F9B9B69FC1A7A5),
    .INIT_49(256'hCCCE97C5957D5D7A3766E1100E02F7FED9CB0C635DAAE23434F7F48EA0576FB2),
    .INIT_4A(256'h1FB614E0E3787CB461931A1AE3F6074C63C806858243D0DE65840BE7C9AFB9BF),
    .INIT_4B(256'h005B32B7CFA9E84EE3F0A6F86A7E5DE13DAF4FBFC0AF79EC0A90872F51B06F74),
    .INIT_4C(256'h6FF7B3E7E37A804B7394E58509EE8F5DC032445BCB6C28ED721E7B8660CE6E05),
    .INIT_4D(256'hA0D1317DA17EA44FA8B7E307F20DBE273265AD0C626607CCD14752038F02F8FE),
    .INIT_4E(256'hEF2E9D132BBE9C115DC54D05B1F97DB5438FC571223845B0A7D1BFCB81924787),
    .INIT_4F(256'hDF75D0B1C7F14BDE80121F3C726DAB4FB61878C25BDA5FFB9509F924789655EB),
    .INIT_50(256'h6DFAB8CABCD048A85100F69200BBF698E061FB458D2358E8E5781E75835F4C88),
    .INIT_51(256'h5732FC28B7C97C27FE0BAF02741621FA43C8F382F3DBB8261BCD9684274B5074),
    .INIT_52(256'hAF9FDDE983C9A3989B271E4A143FDDEBE494CF4FDCE08CA78E04F7BFCE19341E),
    .INIT_53(256'h57A7DC332B1E4EE72E479A081790DE6FBB5045E81CFAD7C8A04F9FBFC22F1707),
    .INIT_54(256'h01A24BFCFCDA44A0D9AEC17129358F0D166704A3F063F4C8B910110D9E21390E),
    .INIT_55(256'hA5A7BF1C96CC8747B931BFBBF8C4AF43F8CBCF078C307CDB2494FD7F0321C7DA),
    .INIT_56(256'h99980DD2423B658105B451A65C8E862347EEEF607143FEC54AB5E1BE1B284EE4),
    .INIT_57(256'hB3BEF24F1DAB668C6355C40A777E5F0792E702F4A0445FFF107FB2080F345391),
    .INIT_58(256'hB55AA324B06DFD4C77AA5F3F2EF29C8822705F3D8DCFF33B63760BA245C802DF),
    .INIT_59(256'hF61A9A2BE713373035F2C291718A6F6B6A3E5C3C479D6624025785E60BF8F3FE),
    .INIT_5A(256'hE27FA3487A0DBA5EA9EA44C4F2723E47D90161F5A71F1BF5337964A2D26A4542),
    .INIT_5B(256'h93EF52FBB7D8F28377303BAB5B53197341070570977AF8737CB31B5CBEFDBC0D),
    .INIT_5C(256'h178EBB34BB038464C7D3C6778FFBA9D70C4DE01D85F59DB8B4B10FB34D8C332C),
    .INIT_5D(256'h06DBB75965B5BAC6AF509934BA411DD431F6FE775BB1AAECC306F5D04603216B),
    .INIT_5E(256'h7BE0796C6EA82F034083D02F3B8A43B1DAC4B98B3B0C6BD07EF1B84B1D9EC519),
    .INIT_5F(256'h864E4287E70C03F080FF22CB8F1119211BE648F0763E91F8628EF1A183FCD83E),
    .INIT_60(256'h3FC4B437BF915E758A93828F4401A001FCFD8A9DB616C1047D18977CB96FB20B),
    .INIT_61(256'h7670F90251032D0FD5B633FF0F00B6FCD3E0F7C0F000077BF247F4280DE20AB2),
    .INIT_62(256'h7B6000000013DB0B3E0C10A51F460B720C12F45F858F7D4BE0EB80013FFF1B74),
    .INIT_63(256'hF79FC0A1926821EE290000007DC4CB058D808A12A40E814D067781576EEA08E0),
    .INIT_64(256'h121BB1C2F37243E659B7AB870CC0726780080079436A86FF615A55608AA2DDD0),
    .INIT_65(256'h30AB19BA7590F89F15E0803FEC2FC03DC2903667C81C3BF1FC20A9D3F0F9D06C),
    .INIT_66(256'hD753B8717E344626D5558C578905ABDADF921D5CFF5189BD5A260F983924F388),
    .INIT_67(256'hB6198AB42A28D66731781A030B0CF0506441C1FC9505EEA6403C0CC2E93D38FF),
    .INIT_68(256'h21BE11645E7E40E4FC1C28272AAEC482681207EF20C9F9E371CE3E482A215DC0),
    .INIT_69(256'h00FFA19941E72323B833BE2A92401C157EDD04AE8840C2541000C7BD1DE5CCE7),
    .INIT_6A(256'hA950895908443E81F9C3D84F5E01EE3619922533407FDB4B37A4159FFC461D1C),
    .INIT_6B(256'h511E0133F8AE189021C7C513047F003CE0303B35C7801C312320CB0073F195F6),
    .INIT_6C(256'h7B1007FFDC03AC7131023EF94FDC27786D6CF10C97C047023979000713177AE6),
    .INIT_6D(256'h207B0D108471A95C1A5F08B969FF0B29803DBBC90F4A5124CA8DC0F5D448153F),
    .INIT_6E(256'h0B6D860EFB14BF7FF27963CEED7041511F20982FB2148D8053F8D9D52CB05555),
    .INIT_6F(256'h009EEC23B4411B628A6FB1DDCC0FD9DF6E1581A7FCE2200E7FE50FDE00904032),
    .INIT_70(256'hD5CD9CF7D3003FD88659F7234076F0B5FD80107167C2EA0D7E5A9F8FD8D506F2),
    .INIT_71(256'h3BC1F64D11451B73FFDB1140A5CB68148F0322C06A7965A22802E7B2F4A74BFE),
    .INIT_72(256'hD340018D1FA14C3E222B5D5ACD1382E188020511EF2222138F9DC6FF5DCD583A),
    .INIT_73(256'h238781092B2E8CE82013E3EE6DA73856FBD7B815B31609EE240503174446858E),
    .INIT_74(256'hCA7CD4803B12E6218104A404FC8AB880C9805C4458605FA56EC9C3A80420AEB9),
    .INIT_75(256'h420C1490E25EB2C45A7DDEF311CA200408F02012058A072200C5417179BE127F),
    .INIT_76(256'hDDCC204403CE5BF9B85A0F1C91F7DE39DAFD0C22AD29018EDE1F40268EC9F1A5),
    .INIT_77(256'hAAB1B866138DB3D86454D02575CE8C92AD06D5197F4B939C0B10C3650502888B),
    .INIT_78(256'h9DA736226C076F91F1446044333E9A30681936F893ED8013CC04F57FBBED19EA),
    .INIT_79(256'hE26FCDB984729C0D0DB61FEF6E27FB017424089138985989E813EC84D59030A3),
    .INIT_7A(256'h8232AD26C4999E6B94275908C201827B49935AE3672FC68A34007FC833331927),
    .INIT_7B(256'h8BAEDC0064044070C4805D99B779641FE590A585329C3B7B89087D232404CD04),
    .INIT_7C(256'h246EBD75697DB870D63FA58FB95E7D1EA58266C5B8CA035C6B62FCB1D25E6908),
    .INIT_7D(256'h023F3E14239BA93A4FE849C0890860110D885D4130670D05ABC4190C1030C80C),
    .INIT_7E(256'hA3CB3835C3858AAC3FE688956A8500BBF8470CAD08106C21830F471A0858C319),
    .INIT_7F(256'hDD821C0A0F5051FE1D89BB92BD631447F200003089422024E3B7D140100E8A26),
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
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\douta[6] }),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9
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
    .INITP_00(256'h000000000002000000000F800401C00000000000000000000000000000000000),
    .INITP_01(256'hFFFFF070000000000000000006000000000FD03C00C000000FFECE0000000000),
    .INITP_02(256'hF87C001FFFFFFFFFFFFFFFE00000000000000006001800000FE83C00003FFFFF),
    .INITP_03(256'h0004006000000FF87C0FFFFFFFFFFFFFFFFFFF8000000000000006003000000F),
    .INITP_04(256'hFFFFC0000000000000000000000FF98BFFFFFFFFFFFFFFFFFFFFF80000000000),
    .INITP_05(256'hFFFFFFFFFFFFFFFFFFFF800000000008000000000FE0FFFFFFFFFFFDFFFFFFFF),
    .INITP_06(256'h0D000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000C000000000FFFFFFFFF),
    .INITP_07(256'hFF0000001000001C0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE0000000180000),
    .INITP_08(256'hFFFFFFFFFFFFFFFFF00000040000E0001EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000002000380007FFFFFFFFFFFFFFFFF),
    .INITP_0A(256'h80FC000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8007B800020001FFFF),
    .INITP_0B(256'hFFFFFFFFFFFC0803FC00003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE00F),
    .INITP_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF0000200000FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000001FFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFC00000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000700007),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFE0000080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_00(256'h64535353536385A58585856463635333322183C6B4D5C6A55222635221315263),
    .INIT_01(256'h224253423232536363C6F7F7D694518273636363424242425353635332224263),
    .INIT_02(256'h836384648595858585646385A69483837395C7A6837352636484533242323232),
    .INIT_03(256'hC182823131534263748574426353638495A6C7C6B57310425221224231735252),
    .INIT_04(256'h7362B3B3E402B38353535353727272021414E473648594B4A59494726292C1C1),
    .INIT_05(256'h42638442214242536463326495322222222242B51602027577D5B4E4C1C17373),
    .INIT_06(256'h5385858564636464322183E6D5F607C663216363423121635363949564536364),
    .INIT_07(256'h4264848384644251312152944252534263636353536342426463535353637453),
    .INIT_08(256'hD7F8A6B5B5A4B49393C7E7A58373726363323242422232323242425353426363),
    .INIT_09(256'hE6E7E6D51849284949494A8B8B7B28E71818E7E7282807D5A573534242636395),
    .INIT_0A(256'h646353536383A5B31314C4739494A5B492825182C4F5E4B3B392726274A5A6B5),
    .INIT_0B(256'h636495C76322222222323262147375759958F502C1C1936262B3141313139352),
    .INIT_0C(256'h222183F6E61718E63142846452312222425284A6D7C7A695956464B663213253),
    .INIT_0D(256'h2242425363635363636453425363524263856353635363635385858585646433),
    .INIT_0E(256'h73F8F75252836242635242423284632232535363636364422242528384633232),
    .INIT_0F(256'hEEEEBC9CBDDEFFCDADFFFFFF9B9CDECDAC9C9C4AE7F7F8B6D7282818A583B482),
    .INIT_10(256'h828272737394F6D5D4E5067AABCCEECD8B8B8BACDE9C9CACCDDEFFCD9B8BBDFF),
    .INIT_11(256'h324243A4137395A6679946C102C1937393E4141313149363B694636364638493),
    .INIT_12(256'h31426342222222224284C71818F8C7A6959595A6C79442536364D79522322222),
    .INIT_13(256'h6463536485635242638364426463646495C7959584334342222183F6F61728C6),
    .INIT_14(256'h3152525231849422536363646484644222326464636352425353534284645363),
    .INIT_15(256'hADDEDEAC597BCDCDDEDECDDECDBCADAD8B6A6A9C9C6A6A9C9CAD7BE6C5736262),
    .INIT_16(256'hACCCDDACACDDAC6A8BDEFFFF59279BDDEEEE9C7AACCDAC8A8B9CCDDEDEDEDE7B),
    .INIT_17(256'h8888884302C17293E414141313459373A584635231738494D5E6E6494A4A2869),
    .INIT_18(256'h73D73919D7B6A6A5A585858594A6A6A664A6B632222222324253337313737399),
    .INIT_19(256'h6352834253638563B6F8859563323342222183F6F60628B53122526363524242),
    .INIT_1A(256'h5263736464846342315284524252425294747374856463635332639585634263),
    .INIT_1B(256'hCD9C9CCDEEEEDECDCDBDADDEFFFFDEAC7A2738CDEE6A4A7B18C5A57210107384),
    .INIT_1C(256'hCEDEFF9C27BCCDCDEECD9CCDEEEE8B69BCDDCDCDDECD276ADECDBCBCDEDECDCD),
    .INIT_1D(256'hF514140213133173D7C68494186A7BCDFFBDACFFFFDE9CCCDDCDACBCEECD9CAC),
    .INIT_1E(256'h42224274644285C7A6B642212232425353425373137343758888997502C18293),
    .INIT_1F(256'h6363323232323222222183F6F606F6C54242635263646363C53919B695958563),
    .INIT_20(256'h52524252525231529494747464848453224264856442B5A53131736342859563),
    .INIT_21(256'hDEDEEEEECD9C7B7A5959599BDDFFFFDECDCDAC7B07C583313131314273523142),
    .INIT_22(256'hDEBCCDCDCDCD9BDDEECDACBCEEAB48EECDCD7A59CDDECDCDCDCDCDCDDDCDACBC),
    .INIT_23(256'hACBDBDCEBC8BDDFF4949EEDEDEEEDEEEDDBCACDEBCCDEEDECDDEDE7BCDEECDDE),
    .INIT_24(256'h859522222232536363637494137373737373734302C1C10214F5E4E413F5078B),
    .INIT_25(256'h3121A4E7F6F6E6B45252525252424264D5B56463534232423242424252532121),
    .INIT_26(256'h8574746363646442325363856342B59431314283949585422222323332333322),
    .INIT_27(256'hFFEEDEDECDCDAD7B7AACCDEEFFDE8B291807C6A5747252523110313131424242),
    .INIT_28(256'hCDCDBCBC9B9BEEDDDDBCAC9CBCDEDECDDEDECEDEDEEEBCCDCDCDEECDCDCDEEFF),
    .INIT_29(256'h07BCEEDEEE6A9BEEEEACACCDCDDECEADDEDECD9CDECDCDDECD9CCDACDECDE669),
    .INIT_2A(256'h6374A5C413739573737302C1C1C182A3276A8B9BACCEDE9CADEEFFAC49BCFF7A),
    .INIT_2B(256'h4242524242424222512242422121325353534242212232328585224242426363),
    .INIT_2C(256'h42536464425263314242314294C795524242436433334322313184E707F6E694),
    .INIT_2D(256'hCDBCCD9B59CDDEFFFFFFDECDBCAD9C4A28C6A5A5521010317274947442224242),
    .INIT_2E(256'hCDEECDCDDECDCDEEBC9CACACACCDDDDDCCDDCCCCDDDDDDCDCDBCCDDECDBCCDDD),
    .INIT_2F(256'hCDACEEDDCDFF7B9CEECDCDDEDECDDEDECDCDCDCDEE9C69BCACBCDDDDABABDD9C),
    .INIT_30(256'h434343565949498BCDEECDBDCDBDAC9CDEDEAD8BDDEECD8BDDDECDDEAD7BCDCD),
    .INIT_31(256'h5163646322225363634222215395C7D7D78553638494844263A6A68343737343),
    .INIT_32(256'h423173947384B5A55263636443323322223184E70707F6A55242424242536342),
    .INIT_33(256'hCDEEEEEEEECDBCCDFFFFFFDE7BE7746294635353422253425353636342638352),
    .INIT_34(256'hBCBBBBBBBBBCCCBCBCBCBBBBBCBCBCBCBCBCBCDDDDCDCDDDCDDDDD2727BCEEDE),
    .INIT_35(256'hDECDCDCDCDCDCDDECDCDCDCDCDBCDDDDDDCDCDDDDDCDCCACDEEE9CCDEEACBCBC),
    .INIT_36(256'hDEDECDDECDCDFFEEDECD9CCECDDECDCDEEDEDEDEBCCDDEDEBCBCDEDEEEDE7BCD),
    .INIT_37(256'h422121A51908F818F8A5858585848474A5A57451027343777769BCEEFFEEEEFF),
    .INIT_38(256'h72315364854242532210840707E6C5B45242425252424264B353636453536363),
    .INIT_39(256'hCDDD6AE79BEECD9CAD6A28C652422210213152634283735252317373315294E7),
    .INIT_3A(256'hCCCCBBCCCCBBBBBCBCBCBCABABABABACBCACACCCDDABBCBCBCDDDDDDBC9B9CEE),
    .INIT_3B(256'hBCCCDDCCCCCCCCCCCCBCBCBCACACBCBCCDDEACCDDDACACBCBCBCBCCCCCCCCCBC),
    .INIT_3C(256'hDEBCCDDEDEEEBCCDEEDEDEDECDDDDDDDDDDDDDDDCDBCDDDDDDCCCCBCDDBCBCDD),
    .INIT_3D(256'hA5A5747463425294A5747452E498CDEEEEEEFFDEEEEEDECDDECDCDCDCDDECEDE),
    .INIT_3E(256'h42529407E7E6D5944242635252523152B3427485859563102243A5191908F8C7),
    .INIT_3F(256'hDEDECDDEBD7B4A28E7D552314252724252735231315273C6C652225385534253),
    .INIT_40(256'hBBBCBBBBBCACABABBCBBBCBCBBBCACACACBBABBCACBBBCBBBCBB7A8AABDDCDEE),
    .INIT_41(256'hACACAB8AAB9B9A8AADEE9BCDEEABACBBBBBBBCBCCCCCBCCCCCCCBBCCBBBBCCBB),
    .INIT_42(256'hCDCDBCBCBCABACACBBBBBCCCACCCDDCCBCBCCCCCDDCCCCCCCCCCBCBCBBBBBCCC),
    .INIT_43(256'h7363A518BDFF7BF69CFF9C289BCDEE9CCDCD9CAD7B9CCDDEEEBCCDDDCDDDBCBC),
    .INIT_44(256'h422283A484625294824242A6C75322B5191908D7B6D7C7A57474636373425273),
    .INIT_45(256'hFFEE9C29C75251313173523152524273E6E673223263423263B5C6C6F606E694),
    .INIT_46(256'hBBABBBBBBBBBCCBBBBBBBBBBABABABABABBBCCCCBCBCBCCCACAC9BCDFFFFFFFF),
    .INIT_47(256'hADEE7A9CEEACBCBBBBBBBBBCBCBBBCCCCCBCBBBBBBBBBBABABBBBBBBBCBB9BBB),
    .INIT_48(256'h9A79ABAB9BACABAB8A8ABCBB9BBBBCBCBCBBAB9B7AACBCACACACAB8A9B9B9A7A),
    .INIT_49(256'hEEFF4927BCCDEEBDCECD7BCDBCCCDDCCCCCCBCABABBCCCAB8A9BBBABAC9BABCC),
    .INIT_4A(256'h936410A69522197B19F8C7B6A6958594C794424273523142E64ACDFFFFFF5969),
    .INIT_4B(256'h843131424242424294E6E76322425363422183E6E6E707B4313131C5E67273F7),
    .INIT_4C(256'hBBBBBBBBABBBBBBBBBBBBBBBBBBBBBBBBBABABCDCDCDCDABACDDDEFFFFBD5AF7),
    .INIT_4D(256'hBBABBBBCBCBCBCBBBBBBBCBBBBBBBBBCBBBBBCCCBBAB9ABBBBBBBBBBBBBBBBCC),
    .INIT_4E(256'hABCCAC8A8ABCBCCCBCCCBCBCACACAC9BACACABBB9BABBB9BCDEE9BBCDD7AABBC),
    .INIT_4F(256'hCD9CCDCCCCCCCCCCCCBCBCACACCCACBBABBBCCBBCCCCBBCCCCCCBBABBBCCBC9A),
    .INIT_50(256'hA6A6A695A6958574E7E7423122108349DEFFFFACCDDECDEEEEEEABDDEEDDCEDE),
    .INIT_51(256'h4284E7B5A507494A28C6185A29E7B573316282E6F67262948453216442D629B6),
    .INIT_52(256'hABBBBBBBBBBBABAAABBB8ABCDDCDDEACABBCBCACACEEFFFFAD4231738464A674),
    .INIT_53(256'hBBBBBBBBBBBBBBBBBBBBBBBBABABBBBBBBBBBBBBBBBBBBBBBBABABABABBBABAB),
    .INIT_54(256'hBCACCCCCABACAC9B9B9A698A9B9BABABADEE9CBCEE697ABBBBBBBBBCBCBCBCBB),
    .INIT_55(256'hCCACACBCCCBCBCCCCCCCCCCCAB9ABBBBCCCCCCBBABBBABABCCCCBB9BABBCAB9B),
    .INIT_56(256'h72A573106349EEFFDEDECD9BCDCDBDCDCDBCCCBCACBCCDEEBD9CCCBBBBBCBCCC),
    .INIT_57(256'h18D6C6B5A57373C6496969696A59E742522222326364224295B6A69584645342),
    .INIT_58(256'h8AAB8A9BDDCDCDCDABABABACAC68F569BC9B4AB552835252517394E749495959),
    .INIT_59(256'hBBBBBBBBBBBBABBB9ABBBBABBBAB9AABBBABABABABBBABABABBBBBBBBBABBB8A),
    .INIT_5A(256'hACBB9B8A8ABBCCABADEEBCCDDDABBBBBBBBBBCBCBBBBBBABABBBBBBBBBBBBBBB),
    .INIT_5B(256'hBBBBABBB9A79BBBBABBBCCCCABAB8ABBCCAB9BBCBCCCBB9BACAB9BBCACBC8A9B),
    .INIT_5C(256'hBCCDBCDDCCCCBC9CABACACABBBACCDDECD9CCCCCBCACABCCCCCCCCCCBCBCBCBC),
    .INIT_5D(256'h285948486949E6849532224242222232536453533242425231B56A7BCDFFEECD),
    .INIT_5E(256'hACABABBBBC9A46479BACEECD286AC610738352C507F694623121312142A51828),
    .INIT_5F(256'h699ABBBBBBAB9ABBABABABABABABABABABABBBABABBBAB7979AB8A69BCCDCDDD),
    .INIT_60(256'hADEE9CCDDDABBCBBBBBBBBBBABABABAB9A9AABBBBBBBBBBBBBBBBBBBBBBBABBB),
    .INIT_61(256'hBBBBBBBBBBABAB7AAB9A8A7A7A9BABACABBC9B8A8A7A8A8AABABBCBBABBCBBAB),
    .INIT_62(256'hACCCCCCCCCCCBCDECD9BACBBBBABABABABACCCABABBCABBBBBBBAB9ABBBBABBB),
    .INIT_63(256'h4232323242423232426342535352101018FFFFFFEEDDCCCCCCCCCCBCCCCCBCAC),
    .INIT_64(256'hAB7A279BEEDECD2851312152D5E783104263424263A5E69362C407D582725152),
    .INIT_65(256'hBBABABABABABABABABABABABABABAA688AAB8A7ABCCDCDCDBC9BABABBBCCCC8A),
    .INIT_66(256'hBBBBBBBBBBBBBBABABABBBBBBBBBBBBBBBBBBBBB8A9AABBB5937ABBBABABABBB),
    .INIT_67(256'h7ABBCCABAB8A8ABCCCCCAC9BAC7AABACCCBBBBCCBCBCBBABADEE9CCDDD9BABBB),
    .INIT_68(256'hAC8ABBAB8A9BACABABABACBBBBBBBBABBBABABAB9ABBAB9ABBBBBBAB9B697A69),
    .INIT_69(256'h325353636422944AFFEECDDDCCBCCCCCCCCCCCBCCCCCCCCCBCCCCCCCCCCCDEDE),
    .INIT_6A(256'hD510423173B5C664636352525262C5B46282D5E6B46252312122323232423232),
    .INIT_6B(256'hABABBBBBABAB9A588ABB6969BCCDCDBCCC9B9BABABABAB9A9ADD9A489BCC9BCD),
    .INIT_6C(256'hBBBBABABABBBBBBBBBBBBBBB9A9AABBB4816ABBBABABABBBBBABABABABABBBAB),
    .INIT_6D(256'hABCCAB9B9ABBCCACBBBBBBBBBBBBBB9BBCDE9CCDDDABBBABBBBBBBBBBBBBBBAB),
    .INIT_6E(256'hBBBCBBBBBBBBBBBBABABABAB9A9A9A9AABBBABBBAB799ABBBB9A8AACAC9BABAC),
    .INIT_6F(256'hCDCCCCCCCCCCBCBCBCCCBCBCBCBCBCBCBBBCCCBBBBCCDEEE9C7ABBAC9BBBBCBB),
    .INIT_70(256'h8442427373727283D5060627D5938362843232323242425332211042A528EEFF),
    .INIT_71(256'h8ABC6959ACCDBCCDCC8A9BAB9B9BABBBBBCCBC8A7A9A9ABBBD7331523152B5C6),
    .INIT_72(256'hABABABBBABABBBAB9A377ABBAB7A9ABBABABABABABBBABABABBBABBBABAB9A68),
    .INIT_73(256'hBBBBBBABABBBBBABACDE9CCDDDBBBBBBBBBBBBBBBBBBBBBBBBBBBBABABBBBBBB),
    .INIT_74(256'hBBBBABABBBBBABABABAB9AABABABABABBBAB9AAB9BBBABAB9BBBBB9AABBB9AAB),
    .INIT_75(256'hBCBCBCBCBCBCBCBCBBBBBBBBBBCCDEDECD9B9A9B8ABBCCBBABABABABBBBBABBB),
    .INIT_76(256'hD5E6E6D593834273644242424253532263C6497BBCEEDDBCCCCCCCCCCCCCBCBC),
    .INIT_77(256'hCC8A9A8A9AABABBB8ACCCC8A8A8A9ABCCE4A8362313172C6C67383B5A4724283),
    .INIT_78(256'hAB9A9AABAB7AABBBABABABABABBBABABABABBBABBBABAA699ABB6969ACDDACCD),
    .INIT_79(256'hACDEACCDDDABBBBBBBBBABBBBBBBBBABABBBBBABABABBBBBBBBBABABABABABAB),
    .INIT_7A(256'h9AABABAB9A9AABBBBBBBBB9A9ABBABABBB9AABBBBBABAB9AABBCBBBBBBBBBBBB),
    .INIT_7B(256'hBBBBBBBCBBCCDEDECEAC9A9B9AABBCBCBBBBABAB9A9A9A9ABBBBBBBBBBBBAB9A),
    .INIT_7C(256'h19F76352524222C7ADEEFFEECCBCBCBCCCCCCCCCCCBCBCBCCCBCBCBCBCBCBCBC),
    .INIT_7D(256'h9ABCCC8A9A9A9ABB9CBC7B6210313173C6E7E7E7D59493C5838283525273B584),
    .INIT_7E(256'hABABABABABABABABABABABABABABAA688AAB3759BCDDBCBCBC8A9A9AAA9A9AAA),
    .INIT_7F(256'hABABABBBBBBBCCBBBBBBBBBBBBABBBBBBBABABAB9AAAAB9A9A7A8ABBAB9A9ABB),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (douta,
    addra,
    clka);
  output [15:0]douta;
  input [15:0]addra;
  input clka;

  wire [15:0]addra;
  wire clka;
  wire [15:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "16" *) (* C_ADDRB_WIDTH = "16" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "3" *) 
(* C_COUNT_36K_BRAM = "16" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     16.77951 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "36000" *) (* C_READ_DEPTH_B = "36000" *) (* C_READ_WIDTH_A = "16" *) 
(* C_READ_WIDTH_B = "16" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "36000" *) (* C_WRITE_DEPTH_B = "36000" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) 
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
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [15:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
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
  input [15:0]s_axi_wdata;
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
  output [15:0]s_axi_rdata;
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
  wire [15:0]douta;

  assign dbiterr = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
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
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
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
  output [15:0]douta;
  input [15:0]addra;
  input clka;

  wire [15:0]addra;
  wire clka;
  wire [15:0]douta;

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
