/***********************************************************
********* Company: WHUT
********* Engineer:         ZhengXiaoliang
********* Design Name:      
********* Module Name:      video_cap
********* Project Name:     Image Process 
********* Dependencies:     video_cap(LVDS interface input )
***********************************************************/
`timescale 1ns/1ns

module video_cap_new(
		reset_l, 
		DVD, 
		DVSYN, 
		DHSYN, 
		DVCLK, 
		cap_dat, 
		cap_dvalid, 
		cap_vsync, 
		cap_clk, 
		img_en, 
		cmd_rdy, 
		cmd_rdat, 
		cmd_rdreq
	);
	
  parameter     TRIG_VALUE = 250;
  parameter     IW = 640;
  parameter     IH = 512;
	 
	parameter     DW_DVD   = 8; //input data width 
	parameter     DVD_CHN  = 3; //input data channel:rgb format
	parameter     DW_LOCAL = 24; 
	parameter     CMD_EN   = 1;
	parameter     DW_CMD   = 24;
	parameter     VSYNC_WIDTH = 100;
	
	parameter     CMD_FIFO_DEPTH    = 1024;
	parameter     CMD_FIFO_DW_DEPTH = 10;
	parameter     IMG_FIFO_DEPTH    = 512;
	parameter     IMG_FIFO_DW_DEPTH = 9;
	
	input         reset_l;
  input [DW_DVD-1:0]DVD;
  input         DVSYN;
  input         DHSYN;
  input         DVCLK;
	
  output reg [DW_LOCAL-1:0] cap_dat;
	output reg cap_dvalid;
  output cap_vsync;
	
  input  cap_clk;
  output img_en;
	
  output reg cmd_rdy;
  output [DW_CMD-1:0]cmd_rdat;
  input  cmd_rdreq;
   
  wire pixel_clk;
	reg  [1:0]vc_reset;
	reg  dv_enable;
	
	reg [9:0]count_lines;
	reg  cmd_en;
	reg  cmd_wrreq;
  reg  cmd_wrreq_r;
  reg  rst_cmd_fifo;
  wire [DW_CMD-1:0]cmd_din;
  reg  [DW_CMD-1:0]cmd_dat;
	
	assign pixel_clk = DVCLK;
	
	always @(posedge pixel_clk or negedge reset_l)
	if (((~(reset_l))) == 1'b1)
	begin
		vc_reset  <= 2'b00;
		dv_enable <= 1'b0;
	end
	else 
	begin
		dv_enable <= #1 1'b1;
		if ((~(DVSYN)) == 1'b1 & dv_enable == 1'b1)
			vc_reset <= #1 ({vc_reset[0], 1'b1});
	end
  
	reg  [DW_DVD-1:0]vd_r[0:DVD_CHN-1];
	reg  [DVD_CHN*DW_DVD-1:0]data_merge;
 
  reg  vsync;
  reg  [DVD_CHN:0]hsync_r;
  reg  mux;

	always @(posedge pixel_clk or negedge reset_l)
	if (((~(reset_l))) == 1'b1)
	begin
		vsync <= 1'b0;
		hsync_r <= {DVD_CHN+1{1'b0}};
	end
	else 
	begin
		vsync <= #1 DVSYN;
		hsync_r <= #1 {hsync_r[DVD_CHN-1:0],DHSYN};
	end
  
	reg [DVD_CHN:0]pixel_cnt;
	
	always @(posedge pixel_clk or negedge reset_l)
	if (((~(reset_l))) == 1'b1)
	begin
		pixel_cnt <= {DVD_CHN+1{1'b1}};
	end
	else 
	begin
		if (hsync_r[1] == 1'b0)
			pixel_cnt <= #1 {DVD_CHN+1{1'b1}};
		else
			if(pixel_cnt == DVD_CHN-1)
				pixel_cnt <= #1 {DVD_CHN+1{1'b0}};
			else 
				pixel_cnt <= #1 pixel_cnt + 1'b1;
	end
	
	integer i;
	integer j;
	
	always @(posedge pixel_clk or negedge reset_l)
	if (((~(reset_l))) == 1'b1)
		for(i=0;i<DVD_CHN;i=i+1)
			vd_r[i] <= {DW_DVD{1'b0}};
	else 
	begin
		vd_r[0] <= #1 DVD;
		for(j=1;j<DVD_CHN;j=j+1)
			vd_r[j] <= vd_r[j-1];
	end
  
	
	wire mux_valid;
		
	always @(posedge pixel_clk or negedge reset_l)
	if (((~(reset_l))) == 1'b1)
		mux <= 1'b0;
	else 
	begin
		if (hsync_r[DVD_CHN-2] == 1'b0)
			mux <= 1'b0;
		else
			if(mux_valid==1'b1)
				mux <= #1 1'b1;
			else 
				mux <= #1 1'b0;
	end

	wire [DVD_CHN*DW_DVD-1:0]dvd_temp;
	wire mux_1st;
	
	assign mux_1st = (~hsync_r[DVD_CHN]) & (hsync_r[DVD_CHN-1]);
	
	generate
	if (DVD_CHN == 1)
	begin : xhdl1
		assign mux_valid = hsync_r[0];
		assign dvd_temp = vd_r[0];
	end 
	endgenerate
	
	generate
	if (DVD_CHN == 2)
	begin : xhdl2
		assign dvd_temp = {vd_r[0],vd_r[1]};
		assign mux_valid = mux_1st | (pixel_cnt == DVD_CHN-1);
	end 
	endgenerate
	
	generate
	if (DVD_CHN == 3)
	begin : xhdl3
		assign dvd_temp = {vd_r[0],vd_r[1],vd_r[2]};
		assign mux_valid = mux_1st | (pixel_cnt == 0);
	end 
	endgenerate
	
	generate
	if (DVD_CHN == 4)
	begin : xhdl4
		assign dvd_temp = {vd_r[0],vd_r[1],vd_r[2],vd_r[3]};
		assign mux_valid = mux_1st | (pixel_cnt == 1);
	end 
	endgenerate			
	
	
	always @(posedge pixel_clk or negedge reset_l)
	if (((~(reset_l))) == 1'b1)
		data_merge <= {DVD_CHN*DW_DVD{1'b0}};
	else 
	begin
		if (hsync_r[DVD_CHN] == 1'b1 & mux == 1'b1)
			data_merge <= #1 dvd_temp;
	end
  
	wire [DW_DVD*DVD_CHN-1:0]fifo_din;
  wire [DW_DVD*DVD_CHN-1:0]fifo_dout;
 
	wire [IMG_FIFO_DW_DEPTH-1:0]rdusedw;
  reg  [9:0]trig_cnt;
	wire fifo_empty;
  reg  fifo_wrreq;
  reg  fifo_rdreq;
  reg  fifo_rdreq_r1;
	reg  rst_fifo;
    
  cc_fifo #(DW_DVD*DVD_CHN,IMG_FIFO_DEPTH,IMG_FIFO_DW_DEPTH) 
		img_fifo(
			.data(fifo_din), 
			.rdclk(cap_clk), 
			.rdreq(fifo_rdreq), 
			.wrclk(pixel_clk), 
			.wrreq(fifo_wrreq), 
			.q(fifo_dout), 
			.rdempty(fifo_empty), 
			.rdusedw(rdusedw), 
			.aclr(rst_fifo)
		);
		/*
		defparam img_fifo.DW       = DW_DVD*DVD_CHN;
		defparam img_fifo.DEPTH    = IMG_FIFO_DEPTH;
		defparam img_fifo.DW_DEPTH = IMG_FIFO_DW_DEPTH;
		*/
	assign fifo_din = data_merge;
	
	//fifo write signal:when the dv data is ready,start wrting data into fifo 
	always @(posedge pixel_clk or negedge reset_l)
	if (reset_l== 1'b0)
		fifo_wrreq <= #1 1'b0;
	else 
		fifo_wrreq <= hsync_r[DVD_CHN] & mux;
	
	//fifo read signal:when fifo has enough data,start reading
	//when read a full line stop reading and wait for next reading operation  

	always @(posedge cap_clk or negedge reset_l)
	if (reset_l== 1'b0)
		fifo_rdreq <= #1 1'b0;
	else 
	begin 
		if ((rdusedw >= TRIG_VALUE) & (fifo_empty == 1'b0))
			fifo_rdreq <= #1 1'b1;
		else if (trig_cnt == (IW - 1))
			fifo_rdreq <= #1 1'b0;
	end 
		
	always @(posedge cap_clk or negedge reset_l)
	if (reset_l== 1'b0)
		trig_cnt <= #1 {10{1'b0}};
	else 
	begin
		if (fifo_rdreq == 1'b0)
			trig_cnt <= #1 {10{1'b0}};
		else
			if (trig_cnt == (IW - 1))
				trig_cnt <= #1 {10{1'b0}};
			else
				trig_cnt <= #1 trig_cnt + 10'b0000000001;
	end
  
	wire [DW_LOCAL-1:0]img_din;
	
  assign img_din = ((cmd_en == 1'b0)) ? fifo_dout[DW_LOCAL-1:0] : 
                    {DW_LOCAL{1'b0}};
  assign cmd_din = ((cmd_en == 1'b1)) ? fifo_dout[DW_CMD-1:0] : 
                    {DW_CMD{1'b0}}; 
  
	//generate output vsync signal 
	
	reg  vsync_async;
	reg  vsync_async_r1;
  reg [VSYNC_WIDTH:0]vsync_async_r;
  reg cap_vsync_tmp;
	
	always @(posedge cap_clk or negedge reset_l)
	if (reset_l== 1'b0)
	begin 
		vsync_async    <= #1 1'b0;
		vsync_async_r1 <= #1 1'b0;
		vsync_async_r  <= {VSYNC_WIDTH+1{1'b0}};
		cap_vsync_tmp  <= #1 1'b0;
	end 
	else 
	begin
		vsync_async    <= #1 (~vsync);
		vsync_async_r1 <= #1 vsync_async;
		vsync_async_r  <= {vsync_async_r[VSYNC_WIDTH-1:0], vsync_async_r1};
		if (vsync_async_r[1] == 1'b1 & vsync_async_r[0] == 1'b0)
			cap_vsync_tmp <= #1 1'b1;
		else if (vsync_async_r[VSYNC_WIDTH] == 1'b0 & vsync_async_r[0] == 1'b0)
			cap_vsync_tmp <= #1 1'b0;	
	end
	
	assign cap_vsync = cap_vsync_tmp;
	
	always @(posedge cap_clk or negedge reset_l)
	if (reset_l== 1'b0)
	begin
		cap_dat       <= #1 {DW_LOCAL{1'b0}};
		fifo_rdreq_r1 <= #1 1'b0;
		cap_dvalid    <= #1 1'b0;
		cmd_dat       <= #1 {DW_CMD{1'b0}};
		cmd_wrreq     <= #1 1'b0;
		cmd_wrreq_r   <= #1 1'b0;
	end
	else 
	begin
		cap_dat <= #1 img_din;
		fifo_rdreq_r1 <= #1 fifo_rdreq;
		cap_dvalid <= #1 fifo_rdreq_r1 & (~(cmd_en));
		cmd_dat <= #1 cmd_din;
		cmd_wrreq <= #1 fifo_rdreq_r1 & cmd_en;
		cmd_wrreq_r <= cmd_wrreq;
	end

  //frame count and img_en signal  
	
	reg [1:0]fr_cnt;
  reg img_out_en;
	
	always @(posedge cap_clk)
	if (vc_reset[1] == 1'b0)
	begin
		img_out_en <= 1'b0;
		fr_cnt <= {2{1'b0}};
	end
	else 
	begin
		if (vsync_async_r1 == 1'b0 & vsync_async == 1'b1)
		begin
			fr_cnt <= fr_cnt + 2'b01;
			if (fr_cnt == 2'b11)
				img_out_en <= 1'b1;
		end
	end

  assign img_en = img_out_en;
  
	always @(posedge cap_clk)
	begin
		if (cap_vsync_tmp == 1'b1)
		begin
			count_lines <= {10{1'b0}};
			cmd_en <= 1'b0;
			cmd_rdy <= 1'b0;
		end
		else
		begin
			if (fifo_rdreq_r1 == 1'b1 & fifo_rdreq == 1'b0)
				count_lines <= #1 count_lines + 4'h1;
			if (count_lines == (IH - 2))
				rst_cmd_fifo <= 1'b1;
			else
				rst_cmd_fifo <= 1'b0;
			if (count_lines >= IH)
				 cmd_en <= #1 1'b1;
			if (cmd_wrreq_r == 1'b1 & cmd_wrreq == 1'b0)
				 cmd_rdy <= 1'b1;
			if (cmd_wrreq_r == 1'b1 & cmd_wrreq == 1'b0)
				 rst_fifo <= 1'b1;
			else
				 rst_fifo <= 1'b0;
		 end
	end
  //instance a line buffer to store the cmd line   
  line_buffer_new 
		cmd_buf(
			.rst(rst_cmd_fifo), 
			.clk(cap_clk), 
			.din(cmd_dat), 
			.dout(cmd_rdat), 
			.wr_en(cmd_wrreq), 
			.rd_en(cmd_rdreq), 
			.empty(), 
			.full(), 
			.count()
	);
		defparam cmd_buf.DW       = DW_CMD;
		defparam cmd_buf.DEPTH    = CMD_FIFO_DEPTH;
		defparam cmd_buf.DW_DEPTH = CMD_FIFO_DW_DEPTH;
		defparam cmd_buf.IW       = IW;
		
endmodule




