`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company:        Xilinx
//
// Create Date:    11:48:23 03/05/07
// Design Name:    Stopwatch
// Module Name:    time_cnt
// Project Name:   ISE In Depth Tutorial
// Target Device:  xc3sA700-fg484
// Tool versions:  ISE 9.1i
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module time_cnt(ce,clk,clr,load,up,q,hundredths,tenths,sec_lsb,sec_msb,minutes);   
	input		ce;        
   input    clk;       
   input    clr;       
   input    load;		  
   input    up;		  
   input    [19:0] q;         
   output [3:0] hundredths;
   output [3:0] tenths;    
   output [3:0] sec_lsb;   
   output [3:0] sec_msb;   
   output [3:0] minutes;   

  reg [3:0] hundredths_cnt;
  reg [3:0]	tenths_cnt;
  reg [3:0] ones_cnt;
  reg [3:0]	tens_cnt;
  reg [3:0] mins_cnt;

  wire enable, tc_1up, tc_2up, tc_3up, tc_4up, tc_5up;
  wire tc_1dn, tc_2dn, tc_3dn, tc_4dn, tc_5dn; 
  
// assigning terminal counts
  assign tc_1up = (up && (hundredths_cnt == 4'd9));
  assign tc_1dn = (~(up) && (hundredths_cnt == 4'd0)); 
  assign tc_2up = (up && (tenths_cnt == 4'd9));
  assign tc_2dn = (~(up) && (tenths_cnt == 4'd0));
  assign tc_3up = (up && (ones_cnt == 4'd9));
  assign tc_3dn = (~(up) && (ones_cnt == 4'd0));
  assign tc_4up = (up && (tens_cnt == 4'd5));
  assign tc_4dn = (~(up) && (tens_cnt == 4'd0));
  assign tc_5up = (up && (mins_cnt == 4'd9));
  assign tc_5dn = (~(up) && (mins_cnt == 4'd0));

  assign enable = ~((tc_1up && tc_2up && tc_3up && tc_4up && tc_5up) ||
					 (tc_1dn && tc_2dn && tc_3dn && tc_4dn && tc_5dn)) && ce;

  always @(posedge clk or posedge clr)  // hundredths of seconds count
  begin
    if (clr)
      hundredths_cnt <= 0;
	 else	if  (load)
       hundredths_cnt <= q[3:0];
    else if (enable) 
       if (up)  // count up  
          if (hundredths_cnt == 4'd9)
				 hundredths_cnt <= 4'd0;
			 else hundredths_cnt <= hundredths_cnt + 1;
       else  // count down
            if (hundredths_cnt == 4'd0)
					hundredths_cnt <= 4'd9;
				else hundredths_cnt <= hundredths_cnt - 1;
  end //always 
  
  always @(posedge clk or posedge clr)  //tenths of seconds count
  begin
    if (clr)
      tenths_cnt <= 0;
	 else	if  (load)
       tenths_cnt <= q[7:4];
    else if (enable)
       if (tc_1up)// count up and hundredths TC
          if (tenths_cnt == 4'd9)
				 tenths_cnt <= 4'd0;
			 else tenths_cnt <= tenths_cnt + 1;
       else if (tc_1dn) // count down and hundredths TC
            if (tenths_cnt == 4'd0)
					tenths_cnt <= 4'd9;
				else tenths_cnt <= tenths_cnt - 1;
  end //always  

// change psedge to posedge
  always @(posedge clk or posedge clr)  // seconds count
  begin
    if (clr)
      ones_cnt <= 0;
	 else	if  (load)
       ones_cnt <= q[11:8];
    else if (enable)
       if (tc_1up && tc_2up) // hundredths and tenths TC up  
          if (ones_cnt == 4'd9)
				 ones_cnt <= 4'd0;
			 else ones_cnt <= ones_cnt + 1;
       else if (tc_1dn && tc_2dn) // hundredths and tenths TC down
            if (ones_cnt == 4'd0)
					ones_cnt <= 4'd9;
				else ones_cnt <= ones_cnt - 1;
  end //always  

  always @(posedge clk or posedge clr)  // tens of seconds count
  begin
    if (clr)
      tens_cnt <= 0;
	 else	if  (load)
       tens_cnt <= q[15:12];
    else if (enable)
       if (tc_1up && tc_2up && tc_3up) // hundredths, tenths, and ones TC up  
          if (tens_cnt == 4'd5)
				 tens_cnt <= 4'd0;
			 else tens_cnt <= tens_cnt + 1;
       else if (tc_1dn && tc_2dn && tc_3dn) // hundredths, tenths, and ones TC down
          if (tens_cnt == 4'd0)
				tens_cnt <= 4'd5;
			 else	tens_cnt <= tens_cnt - 1;
  end //always 
  
  always @(posedge clk or posedge clr)  // minutes count
  begin
    if (clr)
      mins_cnt <= 0;
	 else	if  (load)
       mins_cnt <= q[19:16];
    else if (enable)
       if (tc_1up && tc_2up && tc_3up && tc_4up) // hundredths, tenths, ones, and tens TC up  
          if (mins_cnt == 4'd5)
				 mins_cnt <= 4'd0;
			 else mins_cnt <= mins_cnt + 1;
       else if (tc_1dn && tc_2dn && tc_3dn && tc_4dn) // hundredths, tenths, ones, and tens TC down
          if (mins_cnt == 4'd0)
				mins_cnt <= 4'd5;
			 else	mins_cnt <= mins_cnt - 1;
  end //always 

  assign hundredths = hundredths_cnt;
  assign tenths = tenths_cnt;
  assign sec_lsb =  ones_cnt;
  assign sec_msb = tens_cnt; //{1'b0,tens_cnt};
  assign minutes = mins_cnt;

endmodule
