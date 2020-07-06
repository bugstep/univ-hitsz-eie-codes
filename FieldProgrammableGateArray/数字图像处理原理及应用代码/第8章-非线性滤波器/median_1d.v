/***********************************************************
********* Company: WHUT
********* Engineer:         ZhengXiaoliang
********* Design Name:      
********* Module Name:      sort_1d
********* Project Name:     Image Process 
********* Dependencies:     sort filter 1d: this filter sort the continuous KSZ input data   
***********************************************************/

`timescale 1ps/1ps

module sort_1d(
		rst_n,
		clk,
		din, 
		din_valid, 
		dout_valid, 
		dout
	);
   
	parameter       DW  = 14;
	parameter       KSZ = 3;//must be 3 or 5 
	parameter       OUT_ID = (KSZ >> 1);//median output 
	parameter       DW_MAX_NUM = 8;//the ksz must not bigger than 256
	
	input           rst_n;
	input           clk;
	input  [DW-1:0] din;
	input           din_valid;
	output          dout_valid;
	output [DW-1:0] dout;

	localparam      med_idx = ((KSZ >> 1));
	localparam      latency = 2;

	reg [KSZ+3:0]   din_valid_r;
	reg [DW-1:0]    din_r[0:KSZ+2];
	wire            cmp_result[0:KSZ-1][0:KSZ-1];

	//compare sum regs
	reg [DW_MAX_NUM-1:0] cmp_sum[0:KSZ-1];
	reg [DW_MAX_NUM-1:0] cmp_sum_r[0:KSZ-1];
	reg [DW_MAX_NUM-1:0] cmp_sum_r2[0:KSZ-1];
	//output data reg 
	reg [DW-1:0]dout_temp;
   
  //buffer the din valid 
	always @(posedge clk or negedge rst_n)
	if (((~(rst_n))) == 1'b1)
		din_valid_r <= #1 {KSZ+4{1'b0}};
	else 
		din_valid_r <= #1 ({din_valid_r[KSZ + 2:0],din_valid});
  
	//buffer the data in 
	always @(posedge clk or negedge rst_n)
	if (((~(rst_n))) == 1'b1)
		din_r[0] <= #1 {DW{1'b0}};
	else 
	begin
		if (din_valid == 1'b1)
			din_r[0] <= #1 din;
	end
   
	generate
	begin : xhdl0
		genvar  i;
		for (i = 1; i <= KSZ + 2; i = i + 1)
		begin : DATA_REG1
			always @(posedge clk or negedge rst_n)
			if ((~(rst_n)) == 1'b1)
				din_r[i] <= #1 {DW{1'b0}};
			else 
				din_r[i] <= #1 din_r[i - 1];
		end
	end
	endgenerate
	
  //compare the 1st data with the other data 
	generate
	begin : xhdl1
		genvar  i;
		for (i = 1; i <= KSZ - 1; i = i + 1)
		begin : CMP_1st
			assign cmp_result[0][i] = ((din_r[0] >= din_r[i])) ? 1'b1:1'b0;
		 end
	end
	endgenerate
   
  assign cmp_result[0][0] = 1'b0;
  
	//the following data
	generate
	begin : xhdl4
		genvar	i;
		for (i = 2; i <= KSZ; i = i + 1)
		begin : CMP_Others
			begin : xhdl2
				genvar  j;
				for (j = 1; j <= i - 1; j = j + 1)
				begin : CMP_Previous //compare the current data with the previous data
					assign cmp_result[i - 1][j - 1] = ((din_r[i - 1] > din_r[j - 1])) ? 1'b1 : 1'b0;
				end
			end	
			
			assign cmp_result[i - 1][i - 1] = 1'b0;
	
			begin : xhdl3         //compare the current data with the after data
				genvar	 j;
				for (j = i + 1; j <= KSZ; j = j + 1)
				begin : CMP_After
					assign cmp_result[i - 1][j - 1] = ((din_r[i - 1] >= din_r[j - 1])) ? 1'b1 : 1'b0;
				end
			end
		end
	end
	endgenerate
   
	generate
	begin : xhdl5
		genvar	i;
		for (i = 0; i <= KSZ - 1; i = i + 1)
		begin : CMP_r_sum
		
			if (KSZ == 5)
			begin : sum_ksz_5 
				
				reg [DW_MAX_NUM-1:0] cmp_sum_r3[0:KSZ-1];
				reg [DW_MAX_NUM-1:0] cmp_sum_r4[0:KSZ-1];
				reg [DW_MAX_NUM-1:0] cmp_sum_r5[0:KSZ-1];
	
				always @(posedge clk or negedge rst_n)
				if (((~(rst_n))) == 1'b1)
				begin
					cmp_sum[i]    <= {DW_MAX_NUM{1'b0}};
					cmp_sum_r[i]  <= {DW_MAX_NUM{1'b0}};
					cmp_sum_r2[i] <= {DW_MAX_NUM{1'b0}};
					cmp_sum_r3[i] <= {DW_MAX_NUM{1'b0}};
					cmp_sum_r4[i] <= {DW_MAX_NUM{1'b0}};
					cmp_sum_r5[i] <= {DW_MAX_NUM{1'b0}};
				end
				else 
				begin 
					if (din_valid_r[KSZ - 1] == 1'b1)
					begin
						cmp_sum_r[i]  <= #1 (cmp_result[i][2]) + (cmp_result[i][1]);
						cmp_sum_r2[i] <= #1 (cmp_result[i][1]) + (cmp_result[i][2]);
						cmp_sum_r3[i] <= #1 (cmp_result[i][0]);
					end			 
					if (din_valid_r[KSZ] == 1'b1)
					begin
						cmp_sum_r4[i] <= #1 cmp_sum_r[i] + cmp_sum_r2[i];
						cmp_sum_r5[i] <= #1 cmp_sum_r3[i];
					end
					if (din_valid_r[KSZ + 1] == 1'b1)
						cmp_sum[i] <= #1 cmp_sum_r4[i] + cmp_sum_r5[i];
					end
					assign dout_valid = din_valid_r[KSZ + 2];
					assign dout = dout_temp;
				end
			
			
		if (KSZ == 3)
		begin : sum_ksz_3	 
			always @(posedge clk or negedge rst_n)
			if (((~(rst_n))) == 1'b1)
			begin
				cmp_sum[i]    <= {DW_MAX_NUM{1'b0}};
				cmp_sum_r[i]  <= {DW_MAX_NUM{1'b0}};
				cmp_sum_r2[i] <= {DW_MAX_NUM{1'b0}};
			end
			else 
			begin
				if (din_valid_r[KSZ - 1] == 1'b1)
				begin
					cmp_sum_r[i] <= #1 (cmp_result[i][0]) + (cmp_result[i][2]);
					cmp_sum_r2[i] <= #1 (cmp_result[i][1]);
				end
				if (din_valid_r[KSZ] == 1'b1)
					cmp_sum[i] <= #1 cmp_sum_r[i] + cmp_sum_r2[i];
				end
				assign dout_valid = din_valid_r[KSZ + 2];
				assign dout = dout_temp;
			end
		end
	end
	endgenerate
  
	//find the specific target output data 	
	generate
	if (KSZ == 3)
	begin : dout_ksz_3 
		always @(posedge clk or negedge rst_n)
		if (((~(rst_n))) == 1'b1)
			 dout_temp <= {DW{1'b0}};
		else 
		begin
			if (din_valid_r[KSZ + 1] == 1'b1)
			begin
				if (cmp_sum[0] == OUT_ID)
					dout_temp <= din_r[KSZ-1];
				else 
				if (cmp_sum[1] == OUT_ID)
					dout_temp <= din_r[KSZ];
				else 
				if (cmp_sum[2] == OUT_ID)
					dout_temp <= din_r[KSZ+1];
			end
		end
	end
	endgenerate
   
	generate
	if (KSZ == 5)
	begin : dout_ksz_5 
		always @(posedge clk or negedge rst_n)
		if (((~(rst_n))) == 1'b1)
			dout_temp <= {DW{1'b0}};
		else 
		begin
			if (din_valid_r[KSZ + 2] == 1'b1)
			begin
				if (cmp_sum[0] == OUT_ID)
					dout_temp <= din_r[3];
				else 
				if (cmp_sum[1] == OUT_ID)
					dout_temp <= din_r[4];
				else 
				if (cmp_sum[2] == OUT_ID)
					dout_temp <= din_r[5];
				else 
				if (cmp_sum[3] == OUT_ID)
					dout_temp <= din_r[6];
				else 
				if (cmp_sum[4] == OUT_ID)
					dout_temp <= din_r[7];
			end
		end
	end
	endgenerate
   
endmodule







