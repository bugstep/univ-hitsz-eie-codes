/***********************************************************
********* Company: WHUT
********* Engineer:        ZhengXiaoliang
********* Design Name:      
********* Module Name:     hist_equalized.v
********* Project Name:    Image Process 
********* Description:     histogram linear transform operation
********* Dependencies:    
***********************************************************/

`timescale 1ns/1ns

module hist_linear_transform(
		rst_n, 
		clk, 
		din_valid, 
		din, 
		dout, 
		vsync, 
		dout_valid, 
		vsync_out,
		lowCnt,
		highCnt
	);
	
	parameter  DW = 8;   
	parameter  IH = 512;
	parameter  IW = 640;
	parameter  TW = 32;
	parameter  DW_DIVIDE = 16;
	
	localparam TOTAL_CNT = IW * IH;
	localparam HALF_WIDTH = (TW>>1);

	localparam divide_latency = 19;
	localparam latency = divide_latency+2;
	
	input  rst_n;
	input  clk;
	input  din_valid;
	input  [DW-1:0]din;
	output [DW-1:0]dout;
	input  vsync;
	output vsync_out;
	output dout_valid;
	input  [TW-1:0]lowCnt;
	input  [TW-1:0]highCnt;
	
	reg [DW-1:0]hist_cnt_addr;
	wire [TW-1:0]hist_cnt_out;
	
	wire[DW-1:0]lowIndex;
	wire[DW-1:0]highIndex;
	
	histogram_2d hist(
		.rst_n(rst_n), 
		.clk(clk), 
		.din_valid(din_valid), 
		.din(din), 
		.dout(), 
		.vsync(vsync), 
		.dout_valid(), 
		.int_flag(), 
		.lowCnt(lowCnt), 
		.highCnt(highCnt),
		.rdyOutput(1'b1),
		.lowIndex(lowIndex), 
		.highIndex(highIndex)
	);
	defparam hist.DW = DW;
	defparam hist.IH = IH;
	defparam hist.IW = IW;

	
	wire vsync_fall;
	wire valid;
	reg  [1:0]frame_cnt;
	reg  hist_valid_temp;
	reg  vsync_r;
	
	reg [DW-1:0]diff;//cal (B-A)
	reg [DW-1:0]diff_r;
	always @(posedge clk or negedge rst_n)
	if (((~(rst_n))) == 1'b1)
	begin
		diff <= {DW{1'b0}};
		diff_r <= {DW{1'b0}};
	end
	else 
	begin
		diff_r <= #1 diff;
		if(valid == 1'b1)
			if(highIndex > lowIndex)
				diff <= #1 highIndex - lowIndex;
			else 
				diff <= {DW{1'b1}};
		else
			diff <= {DW{1'b1}};
	end
	
	reg [DW-1:0]diff_1;//cal (f(x,y)-A)
	always @(posedge clk or negedge rst_n)
	if (((~(rst_n))) == 1'b1)
	begin
		diff_1 <= {DW{1'b0}};
	end
	else 
	begin
		if(valid == 1'b1)
		begin 
			if(din <= lowIndex) //f(x,y)<=A
				diff_1 <= {DW{1'b0}};
			else 
				diff_1 <= #1 din - lowIndex;
		end
	end
	
	reg [2*DW-1:0]square;//cal (f(x,y)-A)*255
	
	always @(posedge clk or negedge rst_n)
	if (((~(rst_n))) == 1'b1)
	begin
		square <= {2*DW{1'b0}};
	end
	else 
	begin
		if(valid_r[0] == 1'b1)
		begin 
			square <= #1 diff_1*{DW{1'b1}};
		end
	end
	
	//计算商
	wire divide_en;
	wire [DW_DIVIDE-1:0]quotient;//商
	wire [DW_DIVIDE-1:0]nc_rem;  //余数
	wire [DW_DIVIDE-1:0]denom;   //分子
	wire [DW_DIVIDE-1:0]numer;   //分母
	
	assign denom = diff_r;
	assign numer = (valid_r[0]==1'b1)?square:{DW_DIVIDE{1'b0}};
	
	slope_cal#(DW_DIVIDE,divide_latency) 
		cal_slope(
			.clken(1'b1), 
			.clock(clk), 
			.denom(denom),      //分母
			.numer(numer),      //分子
			.quotient(quotient),//商
			.remain(nc_rem)     //余数
	);

	
	wire [DW-1:0]quotient_temp;
	wire [DW-1:0]quotient_temp1;
	assign quotient_temp1 = (nc_rem>=diff[DW-1:1])?(quotient+1):(quotient);
	assign quotient_temp = (quotient>={DW{1'b1}})?({DW{1'b1}}):(quotient[DW-1:0]);
	
	reg [DW-1:0]dout_temp;
	always @(posedge clk or negedge rst_n)
	begin
		if (((~(rst_n))) == 1'b1)
		begin
			dout_temp <= {DW{1'b0}};
		end
		else 
		begin
		  if(valid_r[latency-1])
			   dout_temp <= #1 quotient_temp;
		end
	end
	
	assign dout = dout_temp;
	assign dout_valid  = valid_r[latency];
  assign vsync_out  = vsync;

endmodule
