/***********************************************************
********* Company: WHUT
********* Engineer:        ZhengXiaoliang
********* Design Name:      
********* Module Name:     histogram_2d
********* Project Name:    Image Process 
********* Description:     histogram_2d statistics
********* Dependencies:    
***********************************************************/

`timescale 1ns/1ns

module histogram_2d(
		rst_n, 
		clk, 
		din_valid, 
		din, 
		dout, 
		vsync, 
		dout_valid, 
		rdyOutput,
//`ifdef  Equalize
		hist_cnt_addr,
		hist_cnt_out,
//`endif 
//`ifdef  LinearTransfer	
		lowCnt, 
		highCnt,
		lowIndex, 
		highIndex,
//`endif 
		int_flag
	);
	
	parameter  DW = 14;
	parameter  IH = 512;
	parameter  IW = 640;
	parameter  TW = 32;
	
	localparam TOTAL_CNT = IW * IH;
	localparam HALF_WIDTH = (TW>>1);

	input  rst_n;
	input  clk;
	input  din_valid;
	input  [DW-1:0]din;
	input  rdyOutput;
	
	output reg [HALF_WIDTH:0]dout;
	input  vsync;
	output reg dout_valid;
	output reg int_flag;
	
//`ifdef  LinearTransfer		
	input  [TW-1:0]lowCnt;
	input  [TW-1:0]highCnt;
	output reg[DW-1:0]lowIndex;
	output reg[DW-1:0]highIndex;
//`endif 
 
//`ifdef  Equalize
	input  [DW-1:0]hist_cnt_addr;
	output reg [TW-1:0]hist_cnt_out;
//`endif
	
	reg  vsync_r;
	reg  dvalid_r;
	reg  dvalid_r2;
	reg  [DW-1:0]din_r;
	reg  [DW-1:0]din_r2;
	wire hsync_fall;
	wire hsync_rise;
	reg  [9:0]hsync_count;
	reg  count_en;
	wire [DW-1:0]mux_addr_b;
	wire [DW-1:0]mux_addr_b2;
	wire [TW-1:0]q_a;
	wire [TW-1:0]q_b;
	reg  [TW-1:0]counter;
	wire [TW-1:0]count_value;
	wire rst_cnt;
	wire inc_en;
	wire we_a;
	wire we_b;
	wire we_b_l;
	reg  we_b_h;
	
	reg  int_r;

	wire [DW-1:0]addr_a;
	wire [DW-1:0]clr_addr;
	reg  [DW-1:0]clr_addr_r;
	reg  [DW:0]out_pixel;

	reg  count_all;
	//reg  count_all_r;
	reg  count_en_r;

	reg  [TW-1:0]hist_cnt;
	wire       rstOutput;


	wire [TW-1:0]dataTmp2;
	wire clr_flag;

	assign #1 hsync_fall =  dvalid_r & (~(din_valid));
	assign #1 hsync_rise =  (~(dvalid_r)) & din_valid;
   
	always @(posedge clk or negedge rst_n)
	if (((~(rst_n))) == 1'b1)
		hsync_count <= #1 {10{1'b0}};
	else 
	begin
		if (vsync_r == 1'b1)
			hsync_count <= #1 {10{1'b0}};
		else if (hsync_fall == 1'b1)
				   hsync_count <= hsync_count + 10'b1;
	end
 
	always @(posedge clk or negedge rst_n)
	if (((~(rst_n))) == 1'b1)
		count_en <= #1 1'b0;
	else 
	begin
		if (hsync_count >= IH)
			count_en <= #1 1'b0;
		else if (hsync_rise == 1'b1)
			count_en <= #1 1'b1;
		else
			count_en <= #1 count_en;
	end
   
	assign mux_addr_b  = ((count_en == 1'b1)) ? din_r : 
										   clr_addr;
	assign mux_addr_b2 = ((count_en == 1'b1)) ? din_r : 
											 clr_addr_r;
   
   
	always @(posedge clk)
	begin
		din_r2 <= #1 din_r;
		dvalid_r2 <= #1 dvalid_r;
	end
      
	always @(posedge clk)
	begin
		if (rst_cnt == 1'b1)
			counter <= #1 {{TW-1{1'b0}},1'b1};
		else if (inc_en == 1'b1)
			counter <= #1 counter + {{TW-1{1'b0}},1'b1};
		else
			counter <= #1 counter;
	end
   
	assign #1 rst_cnt = (((din_r != din_r2) | ((dvalid_r2 == 1'b1) & (dvalid_r == 1'b0)))) ? 1'b1 : 
											1'b0;
	assign #1 inc_en = (((din_r == din_r2) & (dvalid_r2 == 1'b1))) ? 1'b1 : 
										 1'b0;
   
	assign #1 we_a = ((((din_r != din_r2) & (dvalid_r2 == 1'b1)) | ((dvalid_r2 == 1'b1) & (dvalid_r == 1'b0)))) ? 1'b1 : 
									 1'b0;
	assign #1 count_value = ((count_en == 1'b1)) ? counter + q_b : 
													{TW{1'b0}};
   
  assign #1 addr_a =  din_r2;
   
  assign dataTmp2 = {TW{1'b0}};
   
	hist_buffer dpram_bin_l(
		.address_a(addr_a), 
		.address_b(mux_addr_b), 
		.clock(clk),
		.data_a(count_value[HALF_WIDTH - 1:0]), 
		.data_b(dataTmp2[HALF_WIDTH - 1:0]), 
		.wren_a(we_a), 
		.wren_b(we_b_l), 
		.q_a(q_a[HALF_WIDTH - 1:0]), 
		.q_b(q_b[HALF_WIDTH - 1:0])
	);
	defparam dpram_bin_l.AW = DW;
	defparam dpram_bin_l.DW = HALF_WIDTH;
	
	hist_buffer dpram_bin_h(
		.address_a(addr_a), 
		.address_b(mux_addr_b2),
		.clock(clk), 
		.data_a(count_value[TW - 1:HALF_WIDTH]), 
		.data_b(dataTmp2[TW - 1:HALF_WIDTH]), 
		.wren_a(we_a),
		.wren_b(we_b_h), 
		.q_a(q_a[TW - 1:HALF_WIDTH]), 
		.q_b(q_b[TW - 1:HALF_WIDTH])
	);
	defparam dpram_bin_h.AW = DW;
	defparam dpram_bin_h.DW = HALF_WIDTH;
  
	always @(posedge clk or negedge rst_n)
	if (((~(rst_n))) == 1'b1)
		count_en_r <= #1 1'b0;
	else 
		count_en_r <= #1 count_en;
   
    assign rstOutput = count_en_r | (~(rdyOutput));
  
	reg  [DW-1:0]lowIndex_tmp;
	reg  [DW-1:0]highIndex_tmp;
	reg  [DW-1:0]highIndex_tmp2;
	reg  bFindMax;
	reg  bFindMin;
    
	always @(posedge clk or negedge rst_n)
	if ((~(rst_n)) == 1'b1)
	begin
		lowIndex_tmp <= {DW{1'b0}};
		highIndex_tmp <= {DW{1'b1}};
		bFindMin <= 1'b0;
		bFindMax <= 1'b0;
		highIndex_tmp2 <= {DW{1'b0}};
	end
	else 
	begin
		if (vsync_r == 1'b0 & vsync == 1'b1)
		begin
			lowIndex_tmp <= {DW{1'b0}};
			highIndex_tmp <= {DW{1'b1}};
			highIndex_tmp2 <= {DW{1'b0}};
			lowIndex <= lowIndex_tmp;
			if (bFindMax == 1'b1)
				 highIndex <= highIndex_tmp;
			else
				 highIndex <= highIndex_tmp2;
			bFindMin <= 1'b0;
			bFindMax <= 1'b0;
		end
		else
		begin
			if (out_pixel[0] == 1'b1)
			begin
				 if ((~(q_b == {HALF_WIDTH{1'b0}})))
						highIndex_tmp2 <= clr_addr - 4'h1;
				 if ((hist_cnt >= lowCnt) & bFindMin == 1'b0)
				 begin
						lowIndex_tmp <= clr_addr - 4'h1;
						bFindMin <= 1'b1;
				 end
				 if (hist_cnt >= (TOTAL_CNT - highCnt) & bFindMax == 1'b0)
				 begin
						highIndex_tmp <= clr_addr - 4'h1;
						bFindMax <= 1'b1;
				 end
			end
		end
	end
	
	hist_buffer hist_cnt_buf(
		.address_a(out_pixel_r2), 
		.address_b(hist_cnt_addr),
		.clock(clk), 
		.data_a(hist_cnt), 
		.data_b(), 
		.wren_a(dout_valid),
		.wren_b(1'b0), 
		.q_a(), 
		.q_b(hist_cnt_temp)
	);
	defparam hist_cnt_buf.AW = DW;
	defparam hist_cnt_buf.DW = TW;
	
	
endmodule
