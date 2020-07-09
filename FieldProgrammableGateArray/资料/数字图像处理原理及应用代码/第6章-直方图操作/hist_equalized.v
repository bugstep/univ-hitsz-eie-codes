/***********************************************************
********* Company: WHUT
********* Engineer:        ZhengXiaoliang
********* Design Name:      
********* Module Name:     hist_equalized.v
********* Project Name:    Image Process 
********* Description:     histogram equalized operation
********* Dependencies:    
***********************************************************/

`timescale 1ns/1ns

module hist_equalized(
		rst_n, 
		clk, 
		din_valid, 
		din, 
		dout, 
		vsync, 
		dout_valid, 
		vsync_out
	);
	
	parameter  DW = 8;   
	parameter  IH = 512;
	parameter  IW = 640;
	parameter  TW = 32;
	
	localparam TOTAL_CNT = IW * IH;
	localparam HALF_WIDTH = (TW>>1);

	localparam latency = 6;
	
	input  rst_n;
	input  clk;
	input  din_valid;
	input  [DW-1:0]din;
	output [DW-1:0]dout;
	input  vsync;
	output vsync_out;
	output dout_valid;
	
	reg [DW-1:0]hist_cnt_addr;
	wire [TW-1:0]hist_cnt_out;
	
	histogram_2d hist(
		.rst_n(rst_n), 
		.clk(clk), 
		.din_valid(din_valid), 
		.din(din), 
		.vsync(vsync), 
		.hist_cnt_addr(hist_cnt_addr),
		.hist_cnt_out(hist_cnt_out)
	);
	defparam hist.DW = DW;
	defparam hist.IH = IH;
	defparam hist.IW = IW;
	
	wire vsync_fall;
	wire valid;
	reg  [1:0]frame_cnt;
	reg  hist_valid_temp;
	reg  vsync_r;
	
	reg [latency:0]valid_r;
	
	always @(posedge clk or negedge rst_n)
	if (((~(rst_n))) == 1'b1)
	begin
		valid_r[latency:0] <= {latency+1{1'b0}};
	end
	else 
	begin
		valid_r <= #1 {valid_r[latency-1:0],valid};
	end
	
	reg [DW-1:0]din_r;
	
	
	always @(posedge clk or negedge rst_n)
	if (((~(rst_n))) == 1'b1)
	begin
		hist_cnt_addr <= {DW{1'b0}};
	end
	else 
	begin
		if(valid_r[0])
			hist_cnt_addr <= #1 din_r;
	end
	
	reg [2*TW-1:0]mul_temp[0:2];
	reg [DW-1:0]dout_temp;

generate
if((IW ==512) & (IH ==512) )begin :IW_512
	
	always @(posedge clk or negedge rst_n)
	if (((~(rst_n))) == 1'b1)
	begin
		mul_temp[0] <= {2*TW{1'b0}};
	end
	else 
	begin
		if(valid_r[1])
			//hist_cnt_out*255,DW must be 8 
			mul_temp[0] <= #1 {{TW-DW{1'b0}},hist_cnt_out[TW-1:0],{DW{1'b0}}} - {{TW{1'b0}},hist_cnt_out};
		if(valid_r[1])
			//hist_cnt_out/(512*512) IW = IH = 512 
			mul_temp[1] <= #1 {{18{1'b0}},mul_temp[0][2*TW-1:18]};
		if(valid_r[2])
			dout_temp <= #1 mul_temp[1][DW-1:0];
	end
end 
endgenerate 

generate
if(IW ==640 & IH ==512 )begin :IW_640
	
	wire [2*TW-1:0]dout_tmp ;
	
	assign dout_tmp = {{16{1'b0}},mul_temp[2][2*TW-1:16]};
	
	always @(posedge clk or negedge rst_n)
	if (((~(rst_n))) == 1'b1)
	begin
		mul_temp[0] <= {2*TW{1'b0}};
	end
	else 
	begin
		if(valid_r[1])
			//hist_cnt_out*51,DW must be 8 
			//hist_cnt_out*32 + hist_cnt_out*16
			mul_temp[0] <= #1 {{TW-5{1'b0}},hist_cnt_out[TW-1:0],{5{1'b0}}} + {{TW-4{1'b0}},hist_cnt_out[TW-1:0],{4{1'b0}}};
			//hist_cnt_out*2 + hist_cnt_out*1
			mul_temp[1] <= #1 {{TW{1'b0}},hist_cnt_out[TW-1:0]} + {{TW-1{1'b0}},hist_cnt_out[TW-1:0],{1{1'b0}}};
		if(valid_r[1])
			//hist_cnt_out/(64*2*512)  
			mul_temp[2] <= #1 mul_temp[0] + mul_temp[1];
			//
		if(valid_r[2])
			dout_temp <= #1 dout_tmp[DW-1:0];
	end
end 
endgenerate 
	
	
	assign dout = dout_temp;
	assign dout_valid  = valid_r[latency];
  assign vsync_out  = vsync;

endmodule
