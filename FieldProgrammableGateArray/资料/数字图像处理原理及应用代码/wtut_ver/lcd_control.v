`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 		 Xilinx
//
// Create Date:    10:05:26 03/07/07
// Design Name:    Stopwatch
// Module Name:    lcd_control
// Project Name:   ISE In Depth Tutorial
// Target Device:  xc3sA700-4fg484
// Tool versions:  ISE 9.1i
// Description: controls LCD display for Spartan-3A demo board
//
////////////////////////////////////////////////////////////////////////////////

module lcd_control(rst,clk,lap,mode,hundredths,tenths,ones,
                     tens,minutes,control,sf_d); 
   input    rst; 
   input    clk;
   input    lap;
	input	 	mode;
	input	 	[3:0] hundredths;
	input	 	[3:0] tenths;
	input	 	[3:0] ones;
	input	 	[3:0] tens;
	input	 	[3:0] minutes; 
   output   [2:0] control; // LCD_RS, LCD_RW, LCD_E
   output   [7:0] sf_d; //LCD data bus

	reg [5:0] state,next_state;
	`define waiting 			6'b000000
	`define init1	         6'b000001
	`define init2	         6'b000010
	`define init3	         6'b000011
	`define init4           6'b000100
	`define init5           6'b000101
	`define init6	         6'b000110
	`define init7           6'b000111
	`define word1           6'b001000
	`define word2	         6'b001001
	`define word3           6'b001010
	`define word4           6'b001011
	`define word5			 	6'b001100
	`define alt_word5       6'b001101
	`define word6           6'b001110
	`define word7           6'b001111
	`define word8           6'b010000
	`define word9           6'b010001
	`define word10          6'b010010
	`define time_display1   6'b010011
	`define time_display2   6'b010100
	`define time_display3   6'b010101
	`define time_display4   6'b010110
	`define time_display5   6'b010111
	`define time_display6	6'b011000
	`define time_display7   6'b011001
	`define time_display8   6'b011010
	`define time_display9   6'b011011
	`define time_display10  6'b011100
	`define time_display11  6'b011101
	`define time_display12  6'b011110
	`define time_display13  6'b011111
	`define time_display14  6'b100000
	`define lap_display1    6'b100001
	`define lap_display2    6'b100010
	`define lap_display3    6'b100011
	`define lap_display4		6'b100100
	`define lap_display5    6'b100101
	`define lap_display6    6'b100110
	`define lap_display7    6'b100111
	`define lap_display8    6'b101000
	`define lap_display9    6'b101001
	`define lap_display10   6'b101010
	`define lap_display11   6'b101011
	`define lap_display12   6'b101100
	`define lap_display13   6'b101101
	`define lap_display14   6'b101110
	`define donestate       6'b101111
	
	reg [2:0] control;
	reg mode_state,next_mode_state;
	reg [7:0] sf_d_temp, sf_d;
	reg [3:0] lap_min,lap_tens,lap_ones,lap_tenths,lap_hundredths;
	reg [20:0] count, count_temp;
	reg state_flag;
	reg lap_flag, set_lap_flag;
	reg set_timer_flag, timer_flag;
	reg set_clock_flag, clock_flag;
	`define TIME1 20'd750000
	`define TIME2 1'b1
	`define TIME3 20'd210000
	`define TIME4 20'd420000

always @ (clk or state or count or minutes or tens or ones or tenths or hundredths or lap_flag or lap_min or lap_tens or
				lap_ones or lap_tenths or lap_hundredths or timer_flag or clock_flag or mode)
begin
   set_lap_flag <= lap_flag;
	set_timer_flag = timer_flag;
	set_clock_flag = clock_flag;
	next_state <= `init1;
	state_flag <= 1'b1;
	control = 3'b000;
	sf_d_temp = 8'b00000000;
	case (state) 	 
		// Initialization Starts --------------------------------
		`waiting : begin
			sf_d_temp = 8'b00000000;
			control = 3'b000; 								// RS, RW, E		 
			if (count >= `TIME1) begin
					next_state <= `init1;  state_flag <= 1'b1;  end
			else	begin next_state <= `waiting; state_flag <= 1'b0; end
			end // case
		`init1 : begin 
			sf_d_temp = 8'b00111100;	//Function set DL = 8bit, NL = 2, Font = 5x11
			if 	(count == `TIME4) begin
					next_state <= `init2;	control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) & (count <= `TIME4)) begin
					next_state <= `init1; control = 3'b000; state_flag <= 1'b0; end 
			else begin next_state <= `init1; control = 3'b001; state_flag <= 1'b0; end
			end // case
		`init2 : begin 
			sf_d_temp = 8'b00111100;	//Function set DL = 8bit, NL = 2, Font = 5x11
			if 	(count == `TIME4) begin
					next_state <= `init3;	control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) & (count <= `TIME4)) begin
					next_state <= `init2; control = 3'b000; state_flag <= 1'b0; end
			else begin next_state <= `init2; control = 3'b001; state_flag <= 1'b0; end
			end // case
		`init3 : begin
			sf_d_temp = 8'b00111100;	 //Function set DL = 8bit, NL = 2, Font = 5x11
			if 	(count == `TIME4) begin
					next_state <= `init4;	control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) & (count <= `TIME4)) begin
					next_state <= `init3; control = 3'b000; state_flag <= 1'b0; end
			else begin next_state <= `init3; control = 3'b001; state_flag <= 1'b0; end
			end // case
		`init4 : begin
			sf_d_temp = 8'b00111100;	 //Function set DL = 8bit, NL = 2, Font = 5x11
			if 	(count == `TIME3) begin
					next_state <= `init5;	control = 3'b001; state_flag <= 1'b1; end 
			else if ((count > `TIME2) & (count <= `TIME3)) begin
					next_state <= `init4; control = 3'b000; state_flag <= 1'b0;  end 
			else begin next_state <= `init4; control = 3'b001; state_flag <= 1'b0;  end
			end // case
		`init5 : begin
			sf_d_temp = 8'b00001100;	 //Set Display Display=on, Cursor=off, cursor_position=off
			if 	(count == `TIME3) begin
					next_state <= `init6; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) & (count <= `TIME3)) begin
					next_state <= `init5; control = 3'b000; state_flag <= 1'b0; end  
			else begin next_state <= `init5; control = 3'b001; state_flag <= 1'b0; end
			end //case
		`init6 : begin
			sf_d_temp = 8'b00000001;	 //Clear Display
			set_timer_flag = 1'b0; set_clock_flag = 1'b0;  //reset display flags			
			if 	(count == `TIME3) begin
					next_state <= `init7; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) & (count <= `TIME3)) begin
					next_state <= `init6; control = 3'b000; state_flag <= 1'b0; end  
			else begin next_state <= `init6; control = 3'b001; state_flag <= 1'b0; end
			end // case
		`init7 : begin
			sf_d_temp = 8'b00000110;	 //Entry Mode set ID=1, S=0
			if 	(count == `TIME3) begin
					next_state <= `word1; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) & (count <= `TIME3)) begin
					next_state <= `init7; control = 3'b000; state_flag <= 1'b0; end  
			else begin next_state <= `init7; control = 3'b001; state_flag <= 1'b0; end
			end // case
		// Initialization Ends -----------------------------------


//-----------------------Write out 'Time:'-----------------------
		`word1 : begin
			sf_d_temp = 8'b01010100; // T	 
			if 	(count == `TIME3) begin
					next_state <= `word2; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `word1; control = 3'b100; state_flag <= 1'b0; end
			else begin next_state <= `word1; control = 3'b101; state_flag <= 1'b0; end
			end // case	
		`word2 : begin
			sf_d_temp = 8'b01101001; // i	 
			if 	(count == `TIME3) begin
					next_state <= `word3; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) & (count <= `TIME3)) begin
					next_state <= `word2; control = 3'b100; state_flag <= 1'b0; end
			else begin next_state <= `word2; control = 3'b101; state_flag <= 1'b0; end
			end // case	
		`word3 : begin
			sf_d_temp = 8'b01101101; // m	 
			if 	(count == `TIME3) begin
					next_state <= `word4; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) & (count <= `TIME3)) begin
					next_state <= `word3; control = 3'b100; state_flag <= 1'b0; end  
			else begin next_state <= `word3; control = 3'b101; state_flag <= 1'b0; end
			end // case	
		`word4 : begin
			sf_d_temp = 8'b01100101; // e	 
			if (count == `TIME3) begin
				if (mode == 1'b1) begin  // Clock mode
					next_state <= `word5; control = 3'b101; state_flag <= 1'b1; end
				else begin 		// Timer Mode
					next_state <= `alt_word5; control = 3'b101; state_flag <= 1'b1; end
				end // if
			else if ((count > `TIME2) & (count <= `TIME3)) begin
					next_state <= `word4; control = 3'b100; state_flag <= 1'b0; end  
			else begin next_state <= `word4; control = 3'b101; state_flag <= 1'b0; end
			end // case	
		`alt_word5 : begin
			sf_d_temp = 8'b01110010; // r written if in timer mode		
			if 	(count == `TIME3) begin
					next_state <= `time_display1; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) & (count <= `TIME3)) begin
					next_state <= `alt_word5; control = 3'b100; state_flag <= 1'b0; end  
			else begin next_state <= `alt_word5; control = 3'b101; state_flag <= 1'b0; end
			end // case 	
		`word5 : begin
			sf_d_temp = 8'b00111010; // [colon]		
			if 	(count == `TIME3) begin
					next_state <= `word6; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) & (count <= `TIME3)) begin
					next_state <= `word5; control = 3'b100; state_flag <= 1'b0; end 
			else begin next_state <= `word5; control = 3'b101; state_flag <= 1'b0; end
			end // case	
//-----------------------Write out 'Lap:'-----------------------			
		`word6 : begin
			sf_d_temp = 8'b11000000; // Set Address hx40	 
			if 	(count == `TIME3) begin
					next_state <= `word7; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) & (count <= `TIME3)) begin
					next_state <= `word6; control = 3'b000; state_flag <= 1'b0; end  
			else begin next_state <= `word6; control = 3'b001; state_flag <= 1'b0; end
			end // case	
		`word7 : begin
			sf_d_temp = 8'b01001100; // L	 
			if 	(count == `TIME3) begin
					next_state <= `word8; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) & (count <= `TIME3)) begin
					next_state <= `word7; control = 3'b100; state_flag <= 1'b0; end 
			else begin next_state <= `word7; control = 3'b101; state_flag <= 1'b0; end
			end // case	
		`word8 : begin
			sf_d_temp = 8'b01100001; // a	 
			if 	(count == `TIME3) begin
					next_state <= `word9; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) & (count <= `TIME3)) begin
					next_state <= `word8; control = 3'b100; state_flag <= 1'b0; end  
			else begin next_state <= `word8; control = 3'b101; state_flag <= 1'b0; end
			end // case	
		`word9 : begin
			sf_d_temp = 8'b01110000; // p	 
			if 	(count == `TIME3) begin
					next_state <= `word10; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `word9; control = 3'b100; state_flag <= 1'b0; end  
			else begin next_state <= `word9; control = 3'b101; state_flag <= 1'b0; end
			end // case	
		`word10 : begin
			sf_d_temp = 8'b00111010; // [colon]		
			if 	(count == `TIME3) begin
					next_state <= `time_display1; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `word10; control = 3'b100; state_flag <= 1'b0; end
			else begin next_state <= `word10; control = 3'b101; state_flag <= 1'b0; end
			end // case	
	
//--------------------- Time Display--------------------------------------
		`time_display1 : begin
			sf_d_temp = 8'b10000110; // Set Address hx06	 
			if (count == `TIME3) begin
					next_state <= `time_display2; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `time_display1; control = 3'b000; state_flag <= 1'b0; end  
			else begin next_state <= `time_display1; control = 3'b001; state_flag <= 1'b0; end
			end // case
		`time_display2 : begin   // Display minute digit
			case (minutes)  
				4'b0000 : sf_d_temp = 8'b00110000; //0
      		4'b0001 : sf_d_temp = 8'b00110001; //1
      		4'b0010 : sf_d_temp = 8'b00110010; //2
      		4'b0011 : sf_d_temp = 8'b00110011; //3
      		4'b0100 : sf_d_temp = 8'b00110100; //4
      		4'b0101 : sf_d_temp = 8'b00110101; //5
      		4'b0110 : sf_d_temp = 8'b00110110; //6
      		4'b0111 : sf_d_temp = 8'b00110111; //7
      		4'b1000 : sf_d_temp = 8'b00111000; //8
      		4'b1001 : sf_d_temp = 8'b00111001; //9
				default : sf_d_temp = 8'b00101101; //[-]
			endcase
			if (count == `TIME3) begin
					next_state <= `time_display3; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `time_display2; control = 3'b100; state_flag <= 1'b0; end  
			else begin next_state <= `time_display2; control = 3'b101; state_flag <= 1'b0; end
			end // case
		`time_display3 : begin
			sf_d_temp = 8'b10000111; // Set Address hx07	 
			if (count == `TIME3) begin
					next_state <= `time_display4; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `time_display3; control = 3'b000; state_flag <= 1'b0; end 
			else begin next_state <= `time_display3; control = 3'b001; state_flag <= 1'b0; end
			end // case
		`time_display4 : begin
			sf_d_temp = 8'b00111010; // [colon]	 
			if (count == `TIME3) begin
					next_state <= `time_display5; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `time_display4; control = 3'b100; state_flag <= 1'b0; end  
			else begin next_state <= `time_display4; control = 3'b101; state_flag <= 1'b0; end
			end // case	
		`time_display5 : begin
			sf_d_temp = 8'b10001000; // Set Address hx08	 
			if (count == `TIME3) begin
					next_state <= `time_display6; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `time_display5; control = 3'b000; state_flag <= 1'b0; end  
			else begin next_state <= `time_display5; control = 3'b001; state_flag <= 1'b0; end
			end // case	
		`time_display6 : begin   // Display tens of seconds digit
			case (tens)
				4'b0000 : sf_d_temp = 8'b00110000; //0
      		4'b0001 : sf_d_temp = 8'b00110001; //1
      		4'b0010 : sf_d_temp = 8'b00110010; //2
      		4'b0011 : sf_d_temp = 8'b00110011; //3
      		4'b0100 : sf_d_temp = 8'b00110100; //4
      		4'b0101 : sf_d_temp = 8'b00110101; //5
      		4'b0110 : sf_d_temp = 8'b00110110; //6
      		4'b0111 : sf_d_temp = 8'b00110111; //7
      		4'b1000 : sf_d_temp = 8'b00111000; //8
      		4'b1001 : sf_d_temp = 8'b00111001; //9
				default : sf_d_temp = 8'b00101101; //[-]
			endcase
			if (count == `TIME3) begin
					next_state <= `time_display7; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `time_display6; control = 3'b100; state_flag <= 1'b0; end 
			else begin next_state <= `time_display6; control = 3'b101; state_flag <= 1'b0; end
			end // case
		`time_display7 : begin
			sf_d_temp = 8'b10001001; // Set Address hx09	 
			if (count == `TIME3) begin
					next_state <= `time_display8; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `time_display7; control = 3'b000; state_flag <= 1'b0; end  
			else begin next_state <= `time_display7; control = 3'b001; state_flag <= 1'b0; end
			end // case
		`time_display8 : begin   // Display seconds digit
			case (ones)    		 
				4'b0000 : sf_d_temp = 8'b00110000; //0 		
				4'b0001 : sf_d_temp = 8'b00110001; //1 		
				4'b0010 : sf_d_temp = 8'b00110010; //2 		
				4'b0011 : sf_d_temp = 8'b00110011; //3		
				4'b0100 : sf_d_temp = 8'b00110100; //4	
				4'b0101 : sf_d_temp = 8'b00110101; //5		 
				4'b0110 : sf_d_temp = 8'b00110110; //6	
				4'b0111 : sf_d_temp = 8'b00110111; //7	
				4'b1000 : sf_d_temp = 8'b00111000; //8	
				4'b1001 : sf_d_temp = 8'b00111001; //9	
				default : sf_d_temp = 8'b00101101; //[-]
			endcase
			if (count == `TIME3) begin
					next_state <= `time_display9; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `time_display8; control = 3'b100; state_flag <= 1'b0; end  
			else begin next_state <= `time_display8; control = 3'b101; state_flag <= 1'b0; end
			end // case
		`time_display9 : begin
			sf_d_temp = 8'b10001010; // Set Address hx0A	 
			if (count == `TIME3) begin
					next_state <= `time_display10; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `time_display9; control = 3'b000; state_flag <= 1'b0; end 
			else begin next_state <= `time_display9; control = 3'b001; state_flag <= 1'b0; end
			end // case
		`time_display10 : begin
			sf_d_temp = 8'b00111010; // [colon]	 
			if (count == `TIME3) begin
					next_state <= `time_display11; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `time_display10; control = 3'b100; state_flag <= 1'b0; end
			else begin next_state <= `time_display10; control = 3'b101; state_flag <= 1'b0; end
			end // case	
		`time_display11 : begin
			sf_d_temp = 8'b10001011; // Set Address hx0B	 
			if (count == `TIME3) begin
					next_state <= `time_display12; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `time_display11; control = 3'b000; state_flag <= 1'b0; end
			else begin next_state <= `time_display11; control = 3'b001; state_flag <= 1'b0; end
			end // case
		`time_display12 : begin   // Display tenths of second digit
			case (tenths)
				4'b0000 : sf_d_temp = 8'b00110000; //0
      		4'b0001 : sf_d_temp = 8'b00110001; //1
      		4'b0010 : sf_d_temp = 8'b00110010; //2
      		4'b0011 : sf_d_temp = 8'b00110011; //3
      		4'b0100 : sf_d_temp = 8'b00110100; //4
      		4'b0101 : sf_d_temp = 8'b00110101; //5
      		4'b0110 : sf_d_temp = 8'b00110110; //6
      		4'b0111 : sf_d_temp = 8'b00110111; //7
      		4'b1000 : sf_d_temp = 8'b00111000; //8
      		4'b1001 : sf_d_temp = 8'b00111001; //9
				default : sf_d_temp = 8'b00101101; //[-]
			endcase                                                                 
			if (count == `TIME3) begin
					next_state <= `time_display13; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `time_display12; control = 3'b100; state_flag <= 1'b0; end
			else begin next_state <= `time_display12; control = 3'b101; state_flag <= 1'b0; end
			end // case
		`time_display13 : begin
			sf_d_temp = 8'b10001100; // Set Address hx0C	 
			if (count == `TIME3) begin
					next_state <= `time_display14; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `time_display13; control = 3'b000; state_flag <= 1'b0; end
			else begin next_state <= `time_display13; control = 3'b001; state_flag <= 1'b0; end
			end // case
		`time_display14 : begin   // Display hundredths of second digit
			case (hundredths)
				4'b0000 : sf_d_temp = 8'b00110000; //0
      		4'b0001 : sf_d_temp = 8'b00110001; //1
      		4'b0010 : sf_d_temp = 8'b00110010; //2
      		4'b0011 : sf_d_temp = 8'b00110011; //3
      		4'b0100 : sf_d_temp = 8'b00110100; //4
      		4'b0101 : sf_d_temp = 8'b00110101; //5
      		4'b0110 : sf_d_temp = 8'b00110110; //6
      		4'b0111 : sf_d_temp = 8'b00110111; //7
      		4'b1000 : sf_d_temp = 8'b00111000; //8
      		4'b1001 : sf_d_temp = 8'b00111001; //9
				default : sf_d_temp = 8'b00101101; //[-]
			endcase                                            
			if (count == `TIME3) begin
				if ((mode == 1'b1) && (lap_flag == 1'b1)) begin // Clock mode lap_flag triggered
					next_state <= `lap_display1; control = 3'b101; state_flag <= 1'b1; end
				else if ((mode == 1'b1) && (lap_flag == 1'b0)) begin // Clock mode
					if (clock_flag == 1'b1) begin
						next_state <= `init6; control = 3'b101; state_flag <= 1'b1; set_clock_flag = 1'b0; end
					else begin next_state <= `lap_display1; control = 3'b101; state_flag <= 1'b1; end
					end // else if	
				else if (mode == 1'b0) begin // timer mode
					if (timer_flag == 1'b1) begin
						next_state <= `init6; control = 3'b101; state_flag <= 1'b1; set_timer_flag = 1'b0; end
					else begin next_state <= `time_display1; control = 3'b101; state_flag <= 1'b1; end
					end // else if
				else begin next_state <= `time_display1; control = 3'b101; state_flag <= 1'b1; end
				end // if	
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `time_display14; control = 3'b100; state_flag <= 1'b0; end
			else begin next_state <= `time_display14; control = 3'b101; state_flag <= 1'b0; end
			end // case

//--------------------- Lap Time Display--------------------------------------
		`lap_display1 : begin
			sf_d_temp = 8'b11000110; // Set Address hx46	 
			if (count == `TIME3) begin
					next_state <= `lap_display2; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `lap_display1; control = 3'b000; state_flag <= 1'b0; end
			else begin next_state <= `lap_display1; control = 3'b001; state_flag <= 1'b0; end
			end // case
		`lap_display2 : begin  // Display minute digit
			case (lap_min)  
				4'b0000 : sf_d_temp = 8'b00110000; //0
      		4'b0001 : sf_d_temp = 8'b00110001; //1
      		4'b0010 : sf_d_temp = 8'b00110010; //2
      		4'b0011 : sf_d_temp = 8'b00110011; //3
      		4'b0100 : sf_d_temp = 8'b00110100; //4
      		4'b0101 : sf_d_temp = 8'b00110101; //5
      		4'b0110 : sf_d_temp = 8'b00110110; //6
      		4'b0111 : sf_d_temp = 8'b00110111; //7
      		4'b1000 : sf_d_temp = 8'b00111000; //8
      		4'b1001 : sf_d_temp = 8'b00111001; //9
				default : sf_d_temp = 8'b00101101; //[-]
			endcase
			if (count == `TIME3) begin
					next_state <= `lap_display3; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `lap_display2; control = 3'b100; state_flag <= 1'b0; end
			else begin next_state <= `lap_display2; control = 3'b101; state_flag <= 1'b0; end
			end // case
		`lap_display3 : begin
			sf_d_temp = 8'b11000111; // Set Address hx47	 
			if (count == `TIME3) begin
					next_state <= `lap_display4; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `lap_display3; control = 3'b000; state_flag <= 1'b0; end
			else begin next_state <= `lap_display3; control = 3'b001; state_flag <= 1'b0; end
			end // case
		`lap_display4 : begin
			sf_d_temp = 8'b00111010; // [colon]	 
			if (count == `TIME3) begin
					next_state <= `lap_display5; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `lap_display4; control = 3'b100; state_flag <= 1'b0; end
			else begin next_state <= `lap_display4; control = 3'b101; state_flag <= 1'b0; end
			end // case	
		`lap_display5 : begin
			sf_d_temp = 8'b11001000; // Set Address hx48	 
			if (count == `TIME3) begin
					next_state <= `lap_display6; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `lap_display5; control = 3'b000; state_flag <= 1'b0; end
			else begin next_state <= `lap_display5; control = 3'b001; state_flag <= 1'b0; end
			end // case	
		`lap_display6 : begin  // Display tens of seconds digit
			case (lap_tens)
				4'b0000 : sf_d_temp = 8'b00110000; //0
      		4'b0001 : sf_d_temp = 8'b00110001; //1
      		4'b0010 : sf_d_temp = 8'b00110010; //2
      		4'b0011 : sf_d_temp = 8'b00110011; //3
      		4'b0100 : sf_d_temp = 8'b00110100; //4
      		4'b0101 : sf_d_temp = 8'b00110101; //5
      		4'b0110 : sf_d_temp = 8'b00110110; //6
      		4'b0111 : sf_d_temp = 8'b00110111; //7
      		4'b1000 : sf_d_temp = 8'b00111000; //8
      		4'b1001 : sf_d_temp = 8'b00111001; //9
				default : sf_d_temp = 8'b00101101; //[-]
			endcase
			if (count == `TIME3) begin
					next_state <= `lap_display7; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `lap_display6; control = 3'b100; state_flag <= 1'b0; end
			else begin next_state <= `lap_display6; control = 3'b101; state_flag <= 1'b0; end
			end // case
		`lap_display7 : begin
			sf_d_temp = 8'b11001001; // Set Address hx49	 
			if (count == `TIME3) begin
					next_state <= `lap_display8; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `lap_display7; control = 3'b000; state_flag <= 1'b0; end
			else begin next_state <= `lap_display7; control = 3'b001; state_flag <= 1'b0; end
			end // case
		`lap_display8 : begin   // Display seconds digit
			case (lap_ones)    		 
				4'b0000 : sf_d_temp = 8'b00110000; //0 		
				4'b0001 : sf_d_temp = 8'b00110001; //1 		
				4'b0010 : sf_d_temp = 8'b00110010; //2 		
				4'b0011 : sf_d_temp = 8'b00110011; //3		
				4'b0100 : sf_d_temp = 8'b00110100; //4	
				4'b0101 : sf_d_temp = 8'b00110101; //5		 
				4'b0110 : sf_d_temp = 8'b00110110; //6	
				4'b0111 : sf_d_temp = 8'b00110111; //7	
				4'b1000 : sf_d_temp = 8'b00111000; //8	
				4'b1001 : sf_d_temp = 8'b00111001; //9	
				default : sf_d_temp = 8'b00101101; //[-]
			endcase
			if (count == `TIME3) begin
					next_state <= `lap_display9; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `lap_display8; control = 3'b100; state_flag <= 1'b0; end
			else begin next_state <= `lap_display8; control = 3'b101; state_flag <= 1'b0; end
			end // case
		`lap_display9 : begin
			sf_d_temp = 8'b11001010; // Set Address hx4A	 
			if (count == `TIME3) begin
					next_state <= `lap_display10; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `lap_display9; control = 3'b000; state_flag <= 1'b0; end
			else begin next_state <= `lap_display9; control = 3'b001; state_flag <= 1'b0; end
			end // case
		`lap_display10 : begin
			sf_d_temp = 8'b00111010; // [colon]	 
			if (count == `TIME3) begin
					next_state <= `lap_display11; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `lap_display10; control = 3'b100; state_flag <= 1'b0; end
			else begin next_state <= `lap_display10; control = 3'b101; state_flag <= 1'b0; end
			end // case	
		`lap_display11 : begin
			sf_d_temp = 8'b11001011; // Set Address hx4B	 
			if (count == `TIME3) begin
					next_state <= `lap_display12; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `lap_display11; control = 3'b000; state_flag <= 1'b0; end
			else begin next_state <= `lap_display11; control = 3'b001; state_flag <= 1'b0; end
			end // case
		`lap_display12 : begin  // Display tenths of second digit
			case (lap_tenths)
				4'b0000 : sf_d_temp = 8'b00110000; //0
      		4'b0001 : sf_d_temp = 8'b00110001; //1
      		4'b0010 : sf_d_temp = 8'b00110010; //2
      		4'b0011 : sf_d_temp = 8'b00110011; //3
      		4'b0100 : sf_d_temp = 8'b00110100; //4
      		4'b0101 : sf_d_temp = 8'b00110101; //5
      		4'b0110 : sf_d_temp = 8'b00110110; //6
      		4'b0111 : sf_d_temp = 8'b00110111; //7
      		4'b1000 : sf_d_temp = 8'b00111000; //8
      		4'b1001 : sf_d_temp = 8'b00111001; //9
				default : sf_d_temp = 8'b00101101; //[-]
			endcase                                                                  
			if (count == `TIME3) begin
					next_state <= `lap_display13; control = 3'b101; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `lap_display12; control = 3'b100; state_flag <= 1'b0; end
			else begin next_state <= `lap_display12; control = 3'b101; state_flag <= 1'b0; end
			end // case
		`lap_display13 : begin
			sf_d_temp = 8'b11001100; // Set Address hx4C	 
			if (count == `TIME3) begin
					next_state <= `lap_display14; control = 3'b001; state_flag <= 1'b1; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `lap_display13; control = 3'b000; state_flag <= 1'b0; end
			else begin next_state <= `lap_display13; control = 3'b001; state_flag <= 1'b0; end
			end // lap_display13
		`lap_display14 : begin   // Display hundredths of second digit
			case (lap_hundredths)
				4'b0000 : sf_d_temp = 8'b00110000; //0
      		4'b0001 : sf_d_temp = 8'b00110001; //1
      		4'b0010 : sf_d_temp = 8'b00110010; //2
      		4'b0011 : sf_d_temp = 8'b00110011; //3
      		4'b0100 : sf_d_temp = 8'b00110100; //4
      		4'b0101 : sf_d_temp = 8'b00110101; //5
      		4'b0110 : sf_d_temp = 8'b00110110; //6
      		4'b0111 : sf_d_temp = 8'b00110111; //7
      		4'b1000 : sf_d_temp = 8'b00111000; //8
      		4'b1001 : sf_d_temp = 8'b00111001; //9
				default : sf_d_temp = 8'b00101101; //[-]
			endcase 
			if (count == `TIME3) begin
					next_state <= `time_display1; control = 3'b101; state_flag <= 1'b1; set_lap_flag <= 1'b0; end
			else if ((count > `TIME2) && (count <= `TIME3)) begin
					next_state <= `lap_display14; control = 3'b100; state_flag <= 1'b0; end
			else begin next_state <= `lap_display14; control = 3'b101; state_flag <= 1'b0; end
			end // lap_display14
		`donestate : begin
			control = 3'b100;				
			sf_d_temp = 8'b00000000;
			if (count == `TIME3) begin 
				next_state <= `donestate; state_flag <= 1'b1; end
			else begin next_state <= `donestate; state_flag <= 1'b0; end
			end // donestate
	endcase
end // always

// set lap time
always @(posedge clk)
begin
	if (rst & ~mode) begin
		lap_flag <= 1'b0;
		lap_min <= 4'b0000;
		lap_tens <= 4'b0000;
		lap_ones <= 4'b0000;
		lap_tenths <= 4'b0000;
		lap_hundredths <= 4'b0000; end
	else if (lap & mode) begin
		lap_flag <= 1'b1;
		lap_min <= minutes;
		lap_tens <= tens;
		lap_ones <= ones;
		lap_tenths <= tenths;
		lap_hundredths <= hundredths; end
	else begin
		lap_min <= lap_min;
		lap_tens <=lap_tens;
		lap_ones <= lap_ones;
		lap_tenths <= lap_tenths;
		lap_hundredths <= lap_hundredths;
		lap_flag <= set_lap_flag; end
end // always 	

// sets timer or clock mode
always @(posedge clk)
begin
		if (rst) begin
			timer_flag <= 1'b0;
			next_mode_state <= 1'b0;
			clock_flag <= 1'b0; end
		else if (mode_state) begin	 
				if (mode) begin
						next_mode_state <= 1'b1; clock_flag  <= set_clock_flag; end
				else begin next_mode_state <= 1'b0; timer_flag <= 1'b1; end
				end // if	
		else if (~mode_state) begin	 
				if (~mode) begin
						next_mode_state <= 1'b0; timer_flag <= set_timer_flag; end
				else begin next_mode_state <= 1'b1; clock_flag <= 1'b1; end
				end // if	
end // always	

//registers state variables
always @ (posedge clk)
begin
		sf_d <= sf_d_temp;
		count <= count_temp;
		if (rst) begin
			state <= `waiting;
			mode_state <= 1'b0;
			count_temp <= 0; end
		else if (state_flag) begin
 			state <= next_state;
			mode_state <= next_mode_state;
			count_temp <= 0; end
		else begin
			state <= next_state;
			mode_state <= next_mode_state;
			count_temp <= count_temp + 1; end
end // always 

endmodule //lcd_control  