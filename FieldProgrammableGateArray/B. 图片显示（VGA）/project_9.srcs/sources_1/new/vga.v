`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/07 16:23:44
// Design Name: 
// Module Name: vga
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


module vga(clock, switch, disp_RGB, hsync, vsync); 

input clock; //ϵͳ����ʱ�� 100MHz 
input [1:0]switch; 
output [11:0]disp_RGB; //VGA ������� 
output hsync; //VGA  ��ͬ���ź�
output vsync; //VGA ��ͬ���ź� 

reg [9:0] hcount; //VGA ��ɨ������� 
reg [9:0] vcount; //VGA ��ɨ������� 
reg [11:0] data; reg [11:0] h_dat; reg [11:0] v_dat; reg flag; 
reg [1:0]cnt; wire hcount_ov; wire vcount_ov; wire dat_act; 
wire hsync; wire vsync; reg vga_clk; //VGA �С���ɨ��ʱ������� 
wire [11:0] handler; reg [15:0] address;

parameter hsync_end  = 10'd20, 
          hdat_begin = 10'd140, 
          hdat_end   = 10'd386, 
          hpixel_end = 10'd799, 
          vsync_end  = 10'd1, 
          vdat_begin = 10'd35, 
          vdat_end   = 10'd195, 
          vline_end  = 10'd524,
          width      = 10'd246,
          height     = 10'd160;  
          
always @(posedge clock) begin 
  if(cnt==3)         
    cnt <= 0;      
  else         
    cnt <= cnt + 1; 
end 

always @(posedge clock) begin     
  if(cnt < 2)         
    vga_clk <= 1;      
  else         
    vga_clk <= 0;     
//vga_clk <= ~vga_clk;
end 

//************************VGA ��������*******************************//��ɨ�� 

always @(posedge vga_clk) begin 
  if (hcount_ov) 
    hcount <= 10'd0; 
  else
    hcount <= hcount + 10'd1; 
end 

assign hcount_ov = (hcount == hpixel_end); //��ɨ�� 
 
always @(posedge vga_clk) begin 
  if (hcount_ov) begin 
    if (vcount_ov) begin
      vcount <= 10'd0; 
    end else
      vcount <= vcount + 10'd1; 
  end 
end 

always @(posedge vga_clk) begin 
  if (hcount_ov && vcount_ov)
    address <= 16'd0;
  else if (dat_act)
    address <= address + 16'd1;
end

assign vcount_ov = (vcount == vline_end); //���ݡ�ͬ���ź��� 
assign dat_act = ((hcount >= hdat_begin) && (hcount < hdat_end)) 
              && ((vcount >= vdat_begin) && (vcount < vdat_end)); 
assign hsync = (hcount > hsync_end); 
assign vsync = (vcount > vsync_end); 
assign disp_RGB = (dat_act) ? data : 12'h00; 

//************************��ʾ���ݴ�����*******************************// 

blk_mem_gen_0 get_data (
  .clka(vga_clk),    // input wire clka
  .addra(address),   // input wire [15 : 0] addra
  .douta(handler)    // output wire [15 : 0] douta
);

always @(posedge vga_clk) begin    
  case(switch[1:0])             
    2'd0: data <= h_dat; //ѡ������             
    2'd1: data <= v_dat; //ѡ��������             
    2'd2: data <= (v_dat ^ h_dat); //�������̸�    
 // 2'd3: data <= (v_dat ~^ h_dat); //�������̸�          
    2'd3: data <= handler;
  endcase     
end 

always @(posedge vga_clk) begin         
  if(hcount < height / 8)             
    v_dat <= 12'hfff; //��         
  else if(hcount < height / 8 * 2)             
    v_dat <= 12'hccc; //��         
  else if(hcount < height / 8 * 3)             
    v_dat <= 12'h999; //��         
  else if(hcount < height / 8 * 4)             
    v_dat <= 12'h777; //��         
  else if(hcount < height / 8 * 5)             
    v_dat <= 12'h555; //��         
  else if(hcount < height / 8 * 6)             
    v_dat <= 12'h333; //��         
  else if(hcount < height / 8 * 7)             
    v_dat <= 12'h111; //��         
  else           
    v_dat <= 12'h000; //��     
end 

always @(posedge vga_clk) begin         
  if(vcount < width / 8)            
    h_dat <= 12'hfff; //��         
  else if(vcount < width / 8 * 2)           
    h_dat <= 12'hccc; //��         
  else if(vcount < width / 8 * 3)            
    h_dat <= 12'h999; //��         
  else if(vcount < width / 8 * 4)          
    h_dat <= 12'h777; //��         
  else if(vcount < width / 8 * 5)             
    h_dat <= 12'h555; //�� 
  else if(vcount < width / 8 * 6)           
    h_dat <= 12'h333; //��         
  else if(vcount < width / 8 * 7)           
    h_dat <= 12'h111; //��         
  else           
    h_dat <= 12'h000; //��      
end 
endmodule