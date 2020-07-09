`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company:        Xilinx
//
// Create Date:    10:08:15 03/05/07
// Design Name:    Stopwatch
// Module Name:    clk_div_262k
// Project Name:   ISE In Depth Tutorial
// Target Device:  xc3sA700-4fg484
// Tool versions:  ISE 9.1i
// 
// Description: Divides 26.2144 MHz clock by 262144 resulting in a 100 Hz output
//
////////////////////////////////////////////////////////////////////////////////
module clk_div_262k(clk, div_262144);
  input clk;
  output div_262144;

  reg div_262144;
  reg [19:0] cnt;

  always @(posedge clk)begin
  	  if (cnt >= 262144) begin
		  div_262144 <= 0;
		  cnt <= 0; end
	  else if (cnt < 131072) begin
		  div_262144 <= 0;
		  cnt <= cnt + 1; end
	  else if ((cnt >= 131072) && (cnt < 262144)) begin	
			div_262144 <= 1;
			cnt <= cnt + 1; end
  end // always	
  
endmodule

