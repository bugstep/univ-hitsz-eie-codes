`timescale 1 ps / 1 ps

module system_top_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    fmc_imageon_hdmii_clk,
    fmc_imageon_hdmii_data,
    fmc_imageon_iic_rst_b,
    fmc_imageon_iic_scl_io,
    fmc_imageon_iic_sda_io,
    hdmio_clk,
    hdmio_data,
    hdmio_active_video,
    hdmio_hsync,
    hdmio_int_b,
    hdmio_vsync,
    si570_clk_n,
    si570_clk_p);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input fmc_imageon_hdmii_clk;
  input [15:0]fmc_imageon_hdmii_data;
  output fmc_imageon_iic_rst_b;
  inout fmc_imageon_iic_scl_io;
  inout fmc_imageon_iic_sda_io;
  output hdmio_clk;
  output [15:0]hdmio_data;
  output hdmio_active_video;
  output hdmio_hsync;
  input hdmio_int_b;
  output hdmio_vsync;
  input si570_clk_n;
  input si570_clk_p;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire fmc_imageon_hdmii_clk;
  wire [15:0]fmc_imageon_hdmii_data;
  wire fmc_imageon_iic_rst_b;
  wire fmc_imageon_iic_scl_i;
  wire fmc_imageon_iic_scl_io;
  wire fmc_imageon_iic_scl_o;
  wire fmc_imageon_iic_scl_t;
  wire fmc_imageon_iic_sda_i;
  wire fmc_imageon_iic_sda_io;
  wire fmc_imageon_iic_sda_o;
  wire fmc_imageon_iic_sda_t;
  wire hdmio_clk;
  wire [15:0]hdmio_data;
  wire hdmio_active_video;
  wire hdmio_hsync;
  wire hdmio_int_b;
  wire hdmio_vsync;
  wire si570_clk_n;
  wire si570_clk_p;
  wire si570_clk_int;
  wire si570_clk;

IBUFDS ibufds_i
       (.I(si570_clk_p),
        .IB(si570_clk_n),
        .O(si570_clk_int));
BUFG bufg_i
       (.I(si570_clk_int),
        .O(si570_clk));
IOBUF fmc_imageon_iic_scl_iobuf
       (.I(fmc_imageon_iic_scl_o),
        .IO(fmc_imageon_iic_scl_io),
        .O(fmc_imageon_iic_scl_i),
        .T(fmc_imageon_iic_scl_t));
IOBUF fmc_imageon_iic_sda_iobuf
       (.I(fmc_imageon_iic_sda_o),
        .IO(fmc_imageon_iic_sda_io),
        .O(fmc_imageon_iic_sda_i),
        .T(fmc_imageon_iic_sda_t));
system_top system_top_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .fmc_imageon_hdmii_clk(fmc_imageon_hdmii_clk),
        .fmc_imageon_hdmii_data(fmc_imageon_hdmii_data),
        .fmc_imageon_iic_rst_b(fmc_imageon_iic_rst_b),
        .fmc_imageon_iic_scl_i(fmc_imageon_iic_scl_i),
        .fmc_imageon_iic_scl_o(fmc_imageon_iic_scl_o),
        .fmc_imageon_iic_scl_t(fmc_imageon_iic_scl_t),
        .fmc_imageon_iic_sda_i(fmc_imageon_iic_sda_i),
        .fmc_imageon_iic_sda_o(fmc_imageon_iic_sda_o),
        .fmc_imageon_iic_sda_t(fmc_imageon_iic_sda_t),
        .hdmio_clk(hdmio_clk),
        .hdmio_data(hdmio_data),
        .hdmio_active_video(hdmio_active_video),
        .hdmio_hsync(hdmio_hsync),
        .hdmio_int_b(hdmio_int_b),
        .hdmio_vsync(hdmio_vsync),
        .si570_clk(si570_clk));
endmodule
