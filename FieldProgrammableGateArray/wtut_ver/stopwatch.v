`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 		 Xilinx
//
// Create Date:    10:05:26 03/05/07
// Design Name:    Stopwatch
// Module Name:    Stopwatch
// Project Name:   ISE In Depth Tutorial
// Target Device:  xc3sA700-4fg484
// Tool versions:  ISE 9.1i
// Description:
//
////////////////////////////////////////////////////////////////////////////////
module stopwatch(strtstop, reset, clk, mode, lap_load, lcd_e, lcd_rs, lcd_rw, sf_d);
  input strtstop;          
  input reset;        
  input clk;
  input mode;
  input lap_load;    
  output lcd_e;          
  output lcd_rs;       
  output lcd_rw;          
  output [7:0] sf_d /* synthesis xc_loc = "Y15,AB16,Y12,AA12,AB12,AB17,AB18,Y13" */;
//exemplar attribute sf_d LOC "Y15,AB16,Y12,AA12,AB12,AB17,AB18,Y13"
//pragma attribute sf_d LOC Y15,AB16,Y12,AA12,AB12,AB17,AB18,Y13
//synthesis attribute LOC of sf_d is "Y15,AB16,Y12,AA12,AB12,AB17,AB18,Y13"

  wire [3:0] count1, count2, count3, count4, count5;
  reg [5:0] address;
  wire clk_26214k, clk_100, rst_int, locked;
  wire strtstop_debounced, ll_debounced, mode_debounced;
  wire load, mode_control, lap_trig; 
  wire [19:0] preset_time;
  wire [2:0] lcd_control;

// Place the Coregen module instantiation for ten_cnt here

	 
//Insert dcm1 instantiation here


lcd_control lcd_cntrl_inst ( 
    .clk(clk_26214k),
    .lap(lap_trig),
    .mode(mode_control),
    .rst(rst_int),
	 .minutes(count5),
    .tens(count4),
    .ones(count3),
	 .tenths(count2),
	 .hundredths(count1),
    .control(lcd_control),
    .sf_d(sf_d));

assign lcd_rs = lcd_control[2];
assign lcd_rw = lcd_control[1];
assign lcd_e = lcd_control[0];

debounce strtstop_debounce (
    .sig_in(strtstop),
    .clk(clk_100),
    .sig_out(strtstop_debounced));
	 
debounce lap_load_debounce (
    .sig_in(lap_load),
    .clk(clk_100),
    .sig_out(ll_debounced));
	 
debounce mode_debounce (
    .sig_in(mode),
    .clk(clk_100),
    .sig_out(mode_debounced));	 

time_cnt timer_inst (   
	.ce(clk_en_int),        
   .clk(clk_100),       
   .clr(rst_int),       
   .load(load),	  
   .up(mode_control),		  
   .q(preset_time),         
   .hundredths(count1),
   .tenths(count2),    
   .sec_lsb(count3),   
   .sec_msb(count4),   
   .minutes(count5));  

statmach timer_state (
    .clk(clk_100),
    .reset(reset),
	 .lap_load(ll_debounced),
	 .mode_in(mode_debounced),
    .dcm_lock(locked),
    .strtstop(strtstop_debounced),
    .clken(clk_en_int),
	 .lap_trigger(lap_trig),
	 .load(load),
	 .mode(mode_control),
    .rst(rst_int));

clk_div_262k clk_divider (
    .clk(clk_26214k),
    .div_262144(clk_100));
	 
always @ (posedge clk_100 or posedge mode_control) begin
   if (mode_control) 
      address <= 0;
   else if (load)
      if (address == 6'd63)
          address <= 0;
      else address <= address + 1;
end // always;		 

endmodule
