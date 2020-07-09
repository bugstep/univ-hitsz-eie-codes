/*******************************************************************************************
**      Input file      : 
**      Component name  : pal_d_sync.v
**      Author          : ZhengXiaoliang
**      Company         : WHUT
**      Description     : pal-d standard
**********************************************************************************************
*/

`timescale 1ps/1ps

module pal_d_sync(
		reset_l, 
		clk, 
		sync, 
		blank, 
		vsync, 
		odd_even_flag
	);
	
	parameter       CLK_FREQ = 13.5;
	parameter       DW = 8;
	parameter       VALID_HLEN = 640;
	parameter       VALID_VLEN = 512;
	input   reset_l;
	input   clk;
	output  sync;
	output  reg   blank;
	output  reg   vsync;
	output  reg   odd_even_flag;
   
   
	parameter     H_TOTAL     = 864;
	parameter     H_SYNC      = 63;
	parameter     H_BP        = 76;
	parameter     H_FP        = 23;
	parameter     H_ACT       = 702;
	parameter     H_HALF      = 432;
	parameter     H_SYNC_HALF = 32;
	parameter     H_START     = H_SYNC + H_BP + 30;
	parameter     H_END       = H_START + VALID_HLEN;
	parameter     V_TOTAL     = 625;
	parameter     V_HALF      = 313;
	parameter     V_START     = 38;
	parameter     V_END       = V_START + ((VALID_VLEN >> 1));
	parameter 		H_MAX       = ((H_TOTAL - 1));
	parameter 		V_MAX       = V_TOTAL;
   
	reg [9:0]       h_cnt;
	reg [9:0]       v_cnt;
	reg             normal_sync;
	reg             v_sync;
	reg             v_sync1;
	reg             v_sync2;
	reg             v_sync3;
   
  //horizon counter 
  always @(posedge clk or negedge reset_l)
	if (((~(reset_l))) == 1'b1)
		h_cnt <= {10{1'b0}};
	else 
	begin
		if (h_cnt == H_MAX)
			h_cnt <= #1 {10{1'b0}};
		else
			h_cnt <= #1 h_cnt + 10'b0000000001;
	end
   
  //vertical counter  
	always @(posedge clk or negedge reset_l)
	if (((~(reset_l))) == 1'b1)
		v_cnt <= 10'b0000000000;
	else 
	begin
		if (h_cnt == H_MAX)
		begin
			if (v_cnt == V_MAX)
				v_cnt <= #1 10'b0000000001;
			else
				v_cnt <= #1 v_cnt + 10'b0000000001;
		end
	end
    
  always @(posedge clk or negedge reset_l)
	if (((~(reset_l))) == 1'b1)
		 normal_sync <= 1'b1;
	else 
	begin
		if ((v_cnt >= 10'b0000000110 & v_cnt <= 10'b0100110110) | (v_cnt >= 10'b0100111111 & v_cnt <= 10'b1001101110))
		begin
			if (h_cnt == 10'b0000000000)
				normal_sync <= #1 1'b0;
			else if (h_cnt == ((H_SYNC - 1)))
				normal_sync <= #1 1'b1;
		end
		else
			normal_sync <= #1 1'b1;
	end
   
   
	always @(posedge clk or negedge reset_l)
	if (((~(reset_l))) == 1'b1)
		v_sync <= 1'b1;
	else 
	begin
		if (v_cnt == 10'b0000000100 | v_cnt == 10'b0000000101 | v_cnt == 10'b0100110111 | v_cnt == 10'b0100111000 | v_cnt == 10'b0100111100 | v_cnt == 10'b0100111101 | v_cnt == 10'b1001110000 | v_cnt == 10'b1001110001)
		begin
			if (h_cnt == 10'b0000000000 | h_cnt == ((H_HALF - 1)))
				v_sync <= #1 1'b0;
			else if (h_cnt == ((H_SYNC_HALF - 1)) | h_cnt == ((H_HALF + H_SYNC_HALF - 1)))
				v_sync <= #1 1'b1;
		 end
		 else
				v_sync <= #1 1'b1;
	end
   
   
	always @(posedge clk or negedge reset_l)
	if (((~(reset_l))) == 1'b1)
		v_sync1 <= 1'b1;
	else 
	begin
		if (v_cnt == 10'b0000000001 | v_cnt == 10'b0000000010 | v_cnt == 10'b0100111010 | v_cnt == 10'b0100111011)
		begin
			if (h_cnt == 10'b0000000000 | h_cnt == ((H_HALF - 1)))
				v_sync1 <= #1 1'b0;
			else if (h_cnt == ((H_HALF - H_SYNC - 1)) | h_cnt == ((H_TOTAL - H_SYNC - 1)))
				v_sync1 <= #1 1'b1;
		 end
		 else
				v_sync1 <= #1 1'b1;
	end
   
   
	always @(posedge clk or negedge reset_l)
	if (((~(reset_l))) == 1'b1)
		v_sync2 <= 1'b1;
	else 
	begin
		if (v_cnt == 10'b1001101111)
		begin
			if (h_cnt == 10'b0000000000 | h_cnt == ((H_HALF - 1)))
					v_sync2 <= #1 1'b0;
			else if (h_cnt == ((H_SYNC - 1)) | h_cnt == ((H_HALF + H_SYNC_HALF - 1)))
					v_sync2 <= #1 1'b1;
		end
		else if (v_cnt == 10'b0000000011)
		begin
			if (h_cnt == 10'b0000000000 | h_cnt == ((H_HALF - 1)))
				v_sync2 <= #1 1'b0;
			else if (h_cnt == ((H_HALF - H_SYNC - 1)) | h_cnt == ((H_HALF + H_SYNC_HALF - 1)))
					 v_sync2 <= #1 1'b1;
		end
		else if (v_cnt == 10'b0100111001)
		begin
			if (h_cnt == 10'b0000000000 | h_cnt == ((H_HALF - 1)))
					v_sync2 <= #1 1'b0;
			else if (h_cnt == ((H_SYNC_HALF - 1)) | h_cnt == ((H_TOTAL - H_SYNC - 1)))
					v_sync2 <= #1 1'b1;
		end
		else
			v_sync2 <= #1 1'b1;
	end
   
   
	always @(posedge clk or negedge reset_l)
	if (((~(reset_l))) == 1'b1)
		 v_sync3 <= 1'b1;
	else 
	begin
		 if (v_cnt == 10'b0100111110)
		 begin
				if (h_cnt == 10'b0000000000)
					 v_sync3 <= #1 1'b0;
				else if (h_cnt == ((H_SYNC_HALF - 1)))
					 v_sync3 <= #1 1'b1;
		 end
		 else
				v_sync3 <= #1 1'b1;
	end
   
  assign sync = normal_sync & v_sync1 & v_sync2 & v_sync3 & v_sync;
    
  always @(posedge clk or negedge reset_l)
	if (((~(reset_l))) == 1'b1)
		 blank <= 1'b0;
	else 
	begin
		if ((v_cnt >= V_START & v_cnt <= ((V_END - 1))) | (v_cnt >= ((V_START + V_HALF)) & v_cnt <= ((V_END + V_HALF - 1))))
		begin
			if (h_cnt == H_START)
				blank <= #1 1'b1;
			else if (h_cnt == H_END)
				blank <= #1 1'b0;
		end
		else
			blank <= 1'b0;
	end
   
   
	always @(posedge clk or negedge reset_l)
	if (((~(reset_l))) == 1'b1)
	begin
		vsync <= 1'b1;
		odd_even_flag <= 1'b0;
	end
	else 
	begin
		if ((v_cnt <= 10'b0000000101 | v_cnt >= 10'b1001101111))
			vsync <= #1 1'b1;
		else
			vsync <= #1 1'b0;

		if (v_cnt <= 10'b0100111001 & v_cnt >= 10'b0000000101)
			odd_even_flag <= #1 1'b0;
		else
			odd_even_flag <= #1 1'b1;
	end
   
endmodule









