//  STATMACH.v
//  Verilog created by Xilinx's StateCAD 5.03
//  Mon Mar 05 11:37:02 2007

//  This Verilog code (for use with Xilinx XST) was generated using: 
//  binary encoded state assignment with structured code format.
//  Minimization is disabled,  implied else is enabled, 
//  and outputs are manually optimized.

`timescale 1s/1s

module statmach(clk,dcm_lock,lap_load,mode_in,reset,strtstop,clken,
	lap_trigger,load,mode,rst);

	input clk;
	input dcm_lock,lap_load,mode_in,reset,strtstop;
	output clken,lap_trigger,load,mode,rst;
	reg clken,next_clken,lap_trigger,next_lap_trigger,rst,next_rst;
	reg load,mode,state_reset;
	reg [3:0] sreg;
	reg [3:0] next_sreg;

	`define clear 4'b0000
	`define clock_init 4'b0001
	`define clock_run 4'b0010
	`define clock_start 4'b0011
	`define clock_stop 4'b0100
	`define load_state 4'b0101
	`define load_wait 4'b0110
	`define timer 4'b0111
	`define timer_init 4'b1000
	`define timer_run 4'b1001
	`define timer_start 4'b1010
	`define timer_stop 4'b1011
	`define zero 4'b1100

	reg [1:0] sreg1;
	reg [1:0] next_sreg1;

	`define end_trigger 2'b00
	`define lap_wait 2'b01
	`define trigger 2'b10


	always @(posedge clk or posedge state_reset)
	begin
		if ( state_reset ) begin
			sreg=`clear;
			clken = 0;
			rst = 1;
		end else
		begin
			sreg = next_sreg;
			clken = next_clken;
			rst = next_rst;
		end
	end

	always @(posedge clk)
	begin
		sreg1 = next_sreg1;
		lap_trigger = next_lap_trigger;
	end

	always @ (sreg or sreg1 or lap_load or mode_in or state_reset or strtstop)
	begin
		next_clken = 0; next_lap_trigger = 0; load = 0; mode = 0; next_rst = 0; 

		next_sreg=`clear;
		next_sreg1=`end_trigger;

		case (sreg)
			`clear : begin
				mode=0;
				load=0;
				if ( 1'h1) begin
					next_sreg=`zero;
					next_rst=0;
					next_clken=0;
				end
				else begin
					next_sreg=`clear;
					next_clken=0;
					next_rst=1;
				end
			end
			`clock_init : begin
				mode=1;
				load=0;
				if ( ~( ( mode_in  & ~strtstop  ) | ( strtstop  ) )) begin
					next_sreg=`clock_init;
					next_rst=0;
					next_clken=0;
				end
				if ( mode_in  & ~strtstop ) begin
					next_sreg=`timer;
					next_rst=0;
					next_clken=0;
				end
				if ( strtstop ) begin
					next_sreg=`clock_start;
					next_rst=0;
					next_clken=1;
				end
			end
			`clock_run : begin
				mode=1;
				load=0;
				if ( ~( ( strtstop  ) | ( ~strtstop  ) )) begin
					next_sreg=`clock_run;
					next_rst=0;
					next_clken=1;
				end
				if ( strtstop ) begin
					next_sreg=`clock_stop;
					next_rst=0;
					next_clken=0;
				end
				if ( ~strtstop ) begin
					next_sreg=`clock_run;
					next_rst=0;
					next_clken=1;
				end
			end
			`clock_start : begin
				mode=1;
				load=0;
				if ( ~( ( ~strtstop  ) | ( strtstop  ) )) begin
					next_sreg=`clock_start;
					next_rst=0;
					next_clken=1;
				end
				if ( ~strtstop ) begin
					next_sreg=`clock_run;
					next_rst=0;
					next_clken=1;
				end
				if ( strtstop ) begin
					next_sreg=`clock_start;
					next_rst=0;
					next_clken=1;
				end
			end
			`clock_stop : begin
				mode=1;
				load=0;
				if ( ~strtstop ) begin
					next_sreg=`clock_init;
					next_rst=0;
					next_clken=0;
				end
				else begin
					next_sreg=`clock_stop;
					next_rst=0;
					next_clken=0;
				end
			end
			`load_state : begin
				mode=0;
				load=1;
				if ( 1'h1) begin
					next_sreg=`load_wait;
					next_rst=0;
					next_clken=0;
				end
				else begin
					next_sreg=`load_state;
					next_rst=0;
					next_clken=0;
				end
			end
			`load_wait : begin
				mode=0;
				load=0;
				if ( ~lap_load ) begin
					next_sreg=`timer_init;
					next_rst=0;
					next_clken=0;
				end
				else begin
					next_sreg=`load_wait;
					next_rst=0;
					next_clken=0;
				end
			end
			`timer : begin
				mode=0;
				load=0;
				if ( ~mode_in ) begin
					next_sreg=`timer_init;
					next_rst=0;
					next_clken=0;
				end
				else begin
					next_sreg=`timer;
					next_rst=0;
					next_clken=0;
				end
			end
			`timer_init : begin
				mode=0;
				load=0;
				if ( ~( ( mode_in  & ~lap_load  & ~strtstop  ) | ( lap_load  ) | ( 
					strtstop  & ~lap_load  ) )) begin
					next_sreg=`timer_init;
					next_rst=0;
					next_clken=0;
				end
				if ( mode_in  & ~lap_load  & ~strtstop ) begin
					next_sreg=`zero;
					next_rst=0;
					next_clken=0;
				end
				if ( lap_load ) begin
					next_sreg=`load_state;
					next_rst=0;
					next_clken=0;
				end
				if ( strtstop  & ~lap_load ) begin
					next_sreg=`timer_start;
					next_rst=0;
					next_clken=1;
				end
			end
			`timer_run : begin
				mode=0;
				load=0;
				if ( strtstop ) begin
					next_sreg=`timer_stop;
					next_rst=0;
					next_clken=0;
				end
				else begin
					next_sreg=`timer_run;
					next_rst=0;
					next_clken=1;
				end
			end
			`timer_start : begin
				mode=0;
				load=0;
				if ( ~strtstop ) begin
					next_sreg=`timer_run;
					next_rst=0;
					next_clken=1;
				end
				else begin
					next_sreg=`timer_start;
					next_rst=0;
					next_clken=1;
				end
			end
			`timer_stop : begin
				mode=0;
				load=0;
				if ( ~strtstop ) begin
					next_sreg=`timer_init;
					next_rst=0;
					next_clken=0;
				end
				else begin
					next_sreg=`timer_stop;
					next_rst=0;
					next_clken=0;
				end
			end
			`zero : begin
				mode=1;
				load=0;
				if ( ~mode_in ) begin
					next_sreg=`clock_init;
					next_rst=0;
					next_clken=0;
				end
				else begin
					next_sreg=`zero;
					next_rst=0;
					next_clken=0;
				end
			end
		endcase

		if ( state_reset ) begin
			next_sreg1=`lap_wait;
			next_lap_trigger=0;
		end else begin
			case (sreg1)
				`end_trigger : begin
					if ( ~lap_load ) begin
						next_sreg1=`lap_wait;
						next_lap_trigger=0;
					end
					else begin
						next_sreg1=`end_trigger;
						next_lap_trigger=0;
					end
				end
				`lap_wait : begin
					if ( lap_load ) begin
						next_sreg1=`trigger;
						next_lap_trigger=1;
					end
					else begin
						next_sreg1=`lap_wait;
						next_lap_trigger=0;
					end
				end
				`trigger : begin
					if ( 1'h1) begin
						next_sreg1=`end_trigger;
						next_lap_trigger=0;
					end
					else begin
						next_sreg1=`trigger;
						next_lap_trigger=1;
					end
				end
			endcase
		end
	end

	always @(dcm_lock or reset)
	begin
		if ( ~( dcm_lock  ) & reset )  state_reset=1;
		else state_reset=0;
	end
endmodule
