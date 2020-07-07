`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/06 11:14:06
// Design Name: 
// Module Name: display
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module display(clk, lap, mode, rst,
	             in_5, in_4, in_3, in_2, in_1,
	             out_5, out_x, x_ctrl
); 
	             
input rst; 
input clk;
input lap;
input mode;
input [3:0] in_5; 
input [3:0] in_4; 
input [3:0] in_3; 
input [3:0] in_2; 
input [3:0] in_1; 
output reg [7:0] out_5; 
output reg [7:0] out_x; 
output reg [4:0] x_ctrl; 

reg [4:0] wei_ctrl = 5'b01110;
reg [3:0]duan_ctrl; 

reg [12:0] clk_cnt;
 
always @(posedge clk) begin
  if(clk_cnt >= 13'b1_0000_0000_0000) begin 
    clk_cnt  <= 13'b0; 
    wei_ctrl <= {wei_ctrl[4], wei_ctrl[0], wei_ctrl[3:1]};
  end else begin
    clk_cnt <= clk_cnt + 13'b1;
  end
end


always @(wei_ctrl) begin

case(in_5) 
  4'h0:out_5=8'b1011_1111; // 0 
  4'h1:out_5=8'b1000_0110; // 1 
  4'h2:out_5=8'b1101_1011; // 2 
  4'h3:out_5=8'b1100_1111; // 3 
  4'h4:out_5=8'b1110_0110; // 4 
  4'h5:out_5=8'b1110_1101; // 5 
  4'h6:out_5=8'b1111_1101; // 6 
  4'h7:out_5=8'b1000_0111; // 7 
  4'h8:out_5=8'b1111_1111; // 8 
  4'h9:out_5=8'b1110_1111; // 9 
  4'ha:out_5=8'b1111_0111; // a 
  4'hb:out_5=8'b1111_1100; // b 
  4'hc:out_5=8'b1011_1001; // c 
  4'hd:out_5=8'b1101_1110; // d 
  4'he:out_5=8'b1111_1000; // e 
  4'hf:out_5=8'b1111_0001; // f
  default : out_5 = 8'b0011_1111; //0 
endcase

case(wei_ctrl) 
  5'b01110:duan_ctrl=in_1; 
  5'b01101:duan_ctrl=in_2; 
  5'b01011:duan_ctrl=in_3; 
  5'b00111:duan_ctrl=in_4; 
  default: duan_ctrl=4'hf;  
endcase 

case(duan_ctrl) 
  4'h0:out_x=8'b0011_1111; // 0 
  4'h1:out_x=8'b0000_0110; // 1 
  4'h2:out_x=8'b0101_1011; // 2 
  4'h3:out_x=8'b0100_1111; // 3 
  4'h4:out_x=8'b0110_0110; // 4 
  4'h5:out_x=8'b0110_1101; // 5 
  4'h6:out_x=8'b0111_1101; // 6 
  4'h7:out_x=8'b0000_0111; // 7 
  4'h8:out_x=8'b0111_1111; // 8 
  4'h9:out_x=8'b0110_1111; // 9 
  4'ha:out_x=8'b0111_0111; // a 
  4'hb:out_x=8'b0111_1100; // b 
  4'hc:out_x=8'b0011_1001; // c 
  4'hd:out_x=8'b0101_1110; // d 
  4'he:out_x=8'b0111_1000; // e 
  4'hf:out_x=8'b0111_0001; // f
  default : out_x = 8'b0011_1111; //0 
endcase

x_ctrl = ~wei_ctrl;

if (wei_ctrl == 5'b01011)
  out_x = out_x + 8'b10000000;
  
end
endmodule 