`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 		 Xilinx
//
// Create Date:    11:03:45 03/05/07
// Design Name:    Stopwatch
// Module Name:    debounce
// Project Name:   ISE In Depth Tutorial
// Target Device:  xc3sA700-4fg484
// Tool versions:  ISE 9.1i
// 
////////////////////////////////////////////////////////////////////////////////
module debounce(sig_in, clk, sig_out);
  input sig_in;
  input clk;
  output sig_out;

   reg [2:0] q;

   always @ (posedge clk)

         q <= {q[1:0], sig_in};

   assign sig_out = q[0] & q[1] & !q[2];

endmodule


				

				