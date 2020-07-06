`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:			Xilinx 
// Engineer:		Premduth Vidyanandan
//
// Create Date:   15:45:44 02/05/2005
// Design Name:   stopwatch
// Module Name:   stopwatch_tb.v
// Project Name:  ISE In-Depth Tutorial
// Target Device: xc3s200-4ft256 
// Tool versions: ISE 7.1i 
// Description: 
//
// Verilog Test Fixture created by ISE for module: stopwatch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module stopwatch_tb;

	// Inputs
	reg STRTSTOP;
	reg LAP_LOAD;
	reg MODE;
	reg RESET;
	reg CLK;

	// Outputs
	wire [7:0] SF_D;
	wire LCD_RW;
	wire LCD_E;
	wire LCD_RS;


	// Instantiate the Unit Under Test (UUT)
	stopwatch uut (
		.strtstop(STRTSTOP), 
		.reset(RESET), 
		.clk(CLK), 
		.lap_load(LAP_LOAD), 
		.mode(MODE), 
		.sf_d(SF_D), 
		.lcd_rw(LCD_RW), 
		.lcd_e(LCD_E), 
		.lcd_rs(LCD_RS) 
		);

	initial begin
		// Initialize Inputs
		STRTSTOP = 0;
		RESET = 1;
		CLK = 0;
		LAP_LOAD = 0;
		MODE = 0;
      end    
	
		//define clock 
      always begin
		#10 CLK = ~CLK;
      end

		//Stimulus for RESET and STRTSTOP
	initial begin
		#105 RESET = 0; 
		#80 STRTSTOP = 1;
   	//#3000 $finish;
	end
      
endmodule

