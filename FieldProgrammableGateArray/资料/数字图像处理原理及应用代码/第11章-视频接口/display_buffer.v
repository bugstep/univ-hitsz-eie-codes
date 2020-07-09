/*******************************************************************************************
**      Input file      : 
**      Component name  : display_buffer.v
**      Author          : ZhengXiaoliang
**      Company         : WHUT
**      Description     : dislay buffer for pal-d:dpram
**********************************************************************************************
*/

`timescale 1ps/1ps

module display_buffer(
		clk_in, 
		din, 
		dvalid, 
		vsync, 
		dout, 
		dout_valid, 
		clk_out,
		odd_even, 
		vsync_dis, 
		fetch_req
	);
	
	parameter    IW = 640;
	parameter    IH = 512;
	input        clk_in;
	input [7:0]  din;
	input        dvalid;
	input        vsync;
	output [7:0] dout;
	output       dout_valid;
	input        clk_out;
	input        odd_even;
	input        vsync_dis;
	input        fetch_req;
    
	reg [7:0]    din_r;
	reg          dvalid_r;
	reg [9:0]    wr_col_addr;
	reg [9:0]    rd_col_addr;
	reg [8:0]    wr_row_addr;
	reg [8:0]    rd_row_addr;
	reg [8:0]    rd_row_addr_r1;
	reg [8:0]    rd_row_addr_r2;
	reg [2:0]    rd_col_addr_r1;
	reg [2:0]    rd_col_addr_r2;
	reg          fetch_req_r1;
	reg          fetch_req_r2;
	reg          fetch_req_r3;
	reg          fetch_req_r4;
	wire [7:0]   q[0:19];

	wire [19:0]  wr_en;
	reg [7:0]    mux_q;

	wire [13:0]  data_tmp1;
	wire [13:0]  data_tmp2;
	wire [19:0]  data_tmp3;
	wire [1:0]   data_tmp4;
	wire [31:0]  data_tmp5;
	wire [31:0]  data_tmp6;
	wire [31:0]  data_tmp7;
	wire [31:0]  data_tmp8;
	wire [8:0]   HALF_ROW_MAX;
   
   
	always @(posedge clk_in)
	begin
		if (vsync == 1'b1)
			wr_col_addr <= #1 {10{1'b0}};
		else if (dvalid_r == 1'b1)
		begin
			if (wr_col_addr == ((IW - 1)))
				wr_col_addr <= #1 {10{1'b0}};
			else
				wr_col_addr <= #1 wr_col_addr + 10'b0000000001;
		end
	end
   
   
	always @(posedge clk_in)
	begin
		if (vsync == 1'b1)
			wr_row_addr <= #1 {9{1'b0}};
		else if (dvalid_r == 1'b1 & wr_col_addr == ((IW - 1)))
		begin
			if (wr_row_addr == ((IH - 1)))
				wr_row_addr <= #1 {9{1'b0}};
			else
				wr_row_addr <= wr_row_addr + 9'b000000001;
		end
	end
    
	always @(posedge clk_out)
	begin
		if (vsync_dis == 1'b1)
			rd_col_addr <= #1 {10{1'b0}};
		else if (fetch_req == 1'b1)
		begin
			if (rd_col_addr == ((IW - 1)))
				rd_col_addr <= #1 {10{1'b0}};
			else
				rd_col_addr <= #1 rd_col_addr + 10'b0000000001;
		end
	end
   
  assign HALF_ROW_MAX = ((IH >> 1) - 1);
   
	always @(posedge clk_out)
	begin
		if (vsync_dis == 1'b1)
			rd_row_addr <= #1 {9{1'b0}};
		else if (fetch_req == 1'b1 & rd_col_addr == ((IW - 1)))
		begin
			if (rd_row_addr == HALF_ROW_MAX)
				rd_row_addr <= #1 {9{1'b0}};
			else
				rd_row_addr <= #1 rd_row_addr + 9'b000000001;
		end
	end
   
   
	always @(posedge clk_out)
	begin
		 rd_row_addr_r1 <= #1 rd_row_addr;
		 rd_col_addr_r1 <= #1 rd_col_addr[9:7];
		 rd_row_addr_r2 <= #1 rd_row_addr_r1;
		 rd_col_addr_r2 <= #1 rd_col_addr_r1;
		 fetch_req_r1 <= #1 fetch_req;
		 fetch_req_r2 <= #1 fetch_req_r1;
		 fetch_req_r3 <= #1 fetch_req_r2;
		 fetch_req_r4 <= #1 fetch_req_r3;
	end
   
   
	always @(posedge clk_in)  
	begin
		din_r <= #1 din;
		dvalid_r <= #1 dvalid;
	end
   
	generate
	begin : xhdl1
		genvar  row;
		for (row = 0; row <= 3; row = row + 1)
		begin : gen_row_inst
			begin : xhdl0
			 genvar  col;
			 for (col = 0; col <= 4; col = col + 1)
			 begin : gen_col_inst
					assign wr_en[row * 5 + col] = (((({wr_row_addr[8], wr_row_addr[0]}) == row) & ((wr_col_addr[9:7]) == col))) ? 1'b1 : 
																				1'b0;
					assign data_tmp1 = ({rd_row_addr[6:0], rd_col_addr[6:0]});
					assign data_tmp2 = ({wr_row_addr[7:1], wr_col_addr[6:0]});
					assign data_tmp3[row * 5 + col] = dvalid_r & wr_en[row * 5 + col];
					
					dpram_128x128x8 dpram_inst(
						.data(din_r), 
						.rdaddress(data_tmp1), 
						.rdclock(clk_out), 
						.wraddress(data_tmp2), 
						.wrclock(clk_in), 
						.wren(data_tmp3[row * 5 + col]), 
						.q(q[row * 5 + col])
					);
					
			 end
			end
		end
	end
	endgenerate
   
	assign data_tmp4 = ({rd_row_addr_r2[7], odd_even});
	assign data_tmp5 = data_tmp4;
	assign data_tmp6 = data_tmp5 * 5;
	assign data_tmp8 = rd_col_addr_r2;
	assign data_tmp7 = data_tmp6 + data_tmp8;
    
  always @(posedge clk_out)
    mux_q <= #1 q[data_tmp7];
   
  assign dout = mux_q;
  assign dout_valid = fetch_req_r3;
   
endmodule
