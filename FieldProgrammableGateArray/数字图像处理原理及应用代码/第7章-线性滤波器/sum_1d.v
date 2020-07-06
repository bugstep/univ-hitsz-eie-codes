/***********************************************************
********* Company: WHUT
********* Engineer:         ZhengXiaoliang
********* Design Name:
********* Module Name:      sum_1d
********* Project Name:     Image Process
********* Description:      this module cal the sum of the input data  
*********							
***********************************************************/

`timescale 1ps/1ps

module sum_1d(
		clk,
		din,
		din_valid,
		dout_valid,
		dout
	);
   
  parameter         DW = 14;
  parameter         KSZ = 3;
  
  input             clk;
  input  [DW-1:0]   din;
  input             din_valid;
  output            dout_valid;
  output [2*DW-1:0] dout;
	
  reg    [KSZ:0]    din_valid_r;
  reg    [DW-1:0]   reg_din[0:KSZ];
  reg    [2*DW-1:0] sum;
  wire   [2*DW-1:0] sub_out;
  wire   [2*DW-1:0] diff;
  integer j;
   
  always @(posedge clk)  
	begin
	  din_valid_r <= #1 ({din_valid_r[KSZ - 1:0], din_valid});
	  reg_din[0]  <= #1 din;
	 for (j = 1; j <= KSZ; j = j + 1)
			reg_din[j] <= #1 reg_din[j - 1];
	end
  
  always @(posedge clk)   
	begin
	  if (din_valid == 1'b1 & ((~(din_valid_r[0]))) == 1'b1)
			sum <= #1 {2*DW-1+1{1'b0}};
	  else if ((din_valid_r[0]) == 1'b1)
			sum <= #1 sum + diff;
	end
  
  assign sub_out = ((din_valid_r[0] == 1'b1 & din_valid_r[KSZ] == 1'b1)) ? 
				({{DW{1'b0}},reg_din[KSZ]}) : ({2*DW{1'b0}});
				
  assign diff = ({{DW{1'b0}},reg_din[1]}) - sub_out;
   
  assign dout_valid = din_valid_r[0];
  assign dout = sum;
   
endmodule




