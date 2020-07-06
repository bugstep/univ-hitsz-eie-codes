/***********************************************************
********* Company: WHUT
********* Engineer:         ZhengXiaoliang
********* Design Name:      
********* Module Name:      sort_2d
********* Project Name:     Image Process 
********* Dependencies:     sort filter 2d
***********************************************************/
`timescale 1ps/1ps

module sort_2d(
		rst_n, 
		clk, 
		din_valid, 
		din, 
		dout, 
		vsync,
		vsync_out, 
		dout_valid
	);
	
  parameter  DW  =  14;
  parameter  KSZ =   3;
  parameter  IH  = 512;
  parameter  IW  = 640;
	
	parameter  OUT_ID    = KSZ>>1;
	parameter  DW_MAX_NUM = 8;
	
  input  rst_n;
  input  clk;
  input  din_valid;
  input [DW-1:0]din;
  output[DW-1:0]dout;
  input  vsync;
  output vsync_out;
  output dout_valid;
  
  localparam    radius = ((KSZ >> 1));
  localparam    num_all = KSZ * KSZ;
  localparam    fifo_num = KSZ - 1;
  localparam    med_idx = ((num_all >> 1));
   
	wire cmp_result[0:KSZ-1][0:KSZ-1];
	reg  [DW_MAX_NUM-1:0]cmp_sum[0:KSZ-1];
	reg  [DW_MAX_NUM-1:0]cmp_sum_r[0:KSZ-1];
	wire [DW_MAX_NUM-1:0]cmp_sum_r2[0:KSZ-1];
	wire [DW_MAX_NUM-1:0]cmp_sum_r3[0:KSZ-1];
	reg  [DW_MAX_NUM-1:0]cmp_sum_temp[0:KSZ-1];

	wire [KSZ+2:0]sort_din_valid_r;
	wire [DW-1:0] sort_din_r[0:KSZ+1];

	wire          sort_din_valid;
	wire [DW-1:0] sort_din;
   
	reg           rst_all;
	reg [DW-1:0] line_din[0:KSZ-2];
	wire [DW-1:0] line_dout[0:KSZ-2];
	wire [KSZ-2:0]line_empty;
	wire [KSZ-2:0]line_full;
	wire [KSZ-2:0]line_rden;
	reg  [KSZ-2:0]line_wren;
	wire [9:0]    line_count[0:KSZ-2];

	wire [DW-1:0] sort_value;
	wire [DW-1:0] sort_value_r;
	wire          din_valid_r;
	wire[DW-1:0]  sort_row_temp[0:KSZ-1];
	reg [DW-1:0]  sort_r[0:KSZ-1];
	reg [DW-1:0]  sort_r2[0:KSZ-1];

	reg [KSZ-2:0] buf_pop_en;
	reg           valid_r;

	reg [10:0]    in_line_cnt;
	reg [15:0]    flush_cnt;
	reg           flush_line;
	reg [15:0]    out_pixel_cnt;
	reg [10:0]    out_line_cnt;
	reg [DW-1:0]  dout_temp_r;
	reg           dout_valid_temp_r;
	//reg           dout_valid_temp_r2;
	reg [DW-1:0]  dout_temp;
	wire          dout_valid_temp;
	wire          is_boarder;
	wire          valid;
	reg           din_valid_r2;

	integer       j;
	integer       k;

	wire          rst_all_low;
	wire [DW-1:0] data_tmp2;
	wire [DW-1:0] data_tmp3;
  
	//frame sync signal 
	always @(posedge clk or negedge rst_n)
	if (((~(rst_n))) == 1'b1)
		rst_all <= #1 1'b1;
	else 
	begin
		if (vsync == 1'b1)
			rst_all <= #1 1'b1;
		else
			rst_all <= #1 1'b0;
	end
   
  assign rst_all_low = (~(rst_all));
	//global valid signal 
  assign valid = din_valid | flush_line;
	//comare the 1st data with the others 
  generate
  begin : xhdl1
    genvar  i;
    for (i = 1; i <= KSZ - 1; i = i + 1)
    begin : CMP_1st
      assign cmp_result[0][i] = ((sort_row_temp[0] >= sort_row_temp[i])) ? 1'b1 
																: 1'b0;
    end
  end
  endgenerate
	
  //self compare clear to 0 
  assign cmp_result[0][0] = 1'b0;
  //comare the other data with the others  
  generate
	begin : xhdl2
		genvar i,j;
		for (i = 2; i <= KSZ; i = i + 1)
		begin : CMP_Others
		
			for (j = 1; j <= i - 1; j = j + 1)
			begin : CMP_Previous //the data previous
				 assign cmp_result[i - 1][j - 1] = ((sort_row_temp[i - 1] > sort_row_temp[j - 1])) ? 1'b1 : 
																					 1'b0;
			end
			
			assign cmp_result[i - 1][i - 1] = 1'b0;//self copare result clear to 0
			
			for (j = i + 1; j <= KSZ; j = j + 1)//the data after 
			begin : CMP_After
				 assign cmp_result[i - 1][j - 1] = ((sort_row_temp[i - 1] >= sort_row_temp[j - 1])) ? 1'b1 : 
																					 1'b0;
			end
		end
	end
	endgenerate
  
	//add the cmp result 	
	generate
	begin : xhdl3
		genvar i;
		for (i = 0; i <= KSZ - 1; i = i + 1)
		begin : CMP_r_sum
			if (KSZ == 3)
			begin : SUM_ksz_3
				//buffer the sort result in row direction
				always @(posedge clk or negedge rst_n)
					if (((~(rst_n))) == 1'b1)
					begin
						sort_r[i]  <= {DW{1'b0}};
						sort_r2[i] <= {DW{1'b0}};
					end
					else 
					begin
						sort_r[i]     <= sort_row_temp[i];
						sort_r2[i]    <= sort_r[i];
					end
					
				always @(posedge clk or negedge rst_n)
					if (((~(rst_n))) == 1'b1)
					begin
						cmp_sum[i]   <= {DW_MAX_NUM{1'b0}};
						cmp_sum_r[i] <= {DW_MAX_NUM{1'b0}};

					end
					else 
					begin
						cmp_sum_r[i]    <= #1 (cmp_result[i][0]) + (cmp_result[i][2]);
						cmp_sum_temp[i] <= #1 (cmp_result[i][1]);
						cmp_sum[i]      <= #1 cmp_sum_r[i] + cmp_sum_temp[i];
					end
			end
		end
	end
	endgenerate
   
	generate
	if (KSZ == 3)
	begin : dout_ksz_3
		always @(posedge clk or negedge rst_n)
		if (((~(rst_n))) == 1'b1)
			dout_temp <= {DW{1'b0}};
		else 
		begin
			if (cmp_sum[0] == OUT_ID)
				dout_temp <= sort_r2[0];
			else if (cmp_sum[1] == OUT_ID)
				dout_temp <= sort_r2[1];
			else if (cmp_sum[2] == OUT_ID)
				dout_temp <= sort_r2[2];
		end
	end
	endgenerate
   
  sort_1d #(DW, KSZ,OUT_ID,DW_MAX_NUM) 
		sort_row(
			.rst_n(rst_all_low),
			.clk(clk), 
			.din(din), 
			.din_valid(valid), 
			.dout_valid(din_valid_r), 
			.dout(sort_value)
		);
   
   
  always @(posedge clk)
    din_valid_r2 <= #1 din_valid_r;
   
  assign sort_row_temp[0] = sort_value;
   
  assign sort_row_temp[KSZ - 1] = line_dout[KSZ - 2];
   
	generate
	begin : xhdl4
		genvar	i;
		for (i = 0; i <= KSZ - 2; i = i + 1)
		begin : buf_cmp_inst					
			if (i == 0)
			begin : MAP12
			  
				always @(*) line_din[i] <= sort_row_temp[i];
				
				always @(din_valid_r)
					line_wren[i] <= din_valid_r;
			end

			if ((~(i == 0)))
			begin : MAP13
				assign sort_row_temp[i] = line_dout[i - 1];
				always @(posedge clk)
				begin
					if (rst_all == 1'b1)
					begin
						line_wren[i] <= 1'b0;
						line_din[i] <= {DW{1'b0}};
					end
					else
					begin
						line_wren[i] <= #1 line_rden[i - 1];
						line_din[i] <= sort_row_temp[i];
					end
				end
			end
					
			assign line_rden[i] = buf_pop_en[i] & din_valid_r;
			
			always @(posedge clk)
			begin
			if (rst_all == 1'b1)
				buf_pop_en[i] <= #1 1'b0;
			else if (line_count[i] == IW)
				buf_pop_en[i] <= #1 1'b1;
			end	
			
			line_buffer #(DW, IW) 
				line_buf_inst(
					.rst(rst_all), 
					.clk(clk),
					.din(line_din[i]), 
					.dout(line_dout[i]), 
					.wr_en(line_wren[i]), 
					.rd_en(line_rden[i]),
					.empty(line_empty[i]), 
					.full(line_full[i]), 
					.count(line_count[i])
				);
				
		end
	end
	endgenerate
   
  assign is_boarder = (((dout_valid_temp == 1'b1) & (out_pixel_cnt <= ((radius - 1)) | out_pixel_cnt >= ((IW - radius)) | out_line_cnt <= ((radius - 1)) | out_line_cnt >= ((IH - radius))))) ? 1'b1 : 
                      1'b0;
   
endmodule




