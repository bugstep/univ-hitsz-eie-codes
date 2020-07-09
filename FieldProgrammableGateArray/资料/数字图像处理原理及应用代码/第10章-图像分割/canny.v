/***********************************************************
********* Company: WHUT
********* Engineer:        ZhengXiaoliang
********* Design Name:      
********* Module Name:     canny
********* Project Name:    Image Process 
********* Description:     canny detector
********* Dependencies:    
***********************************************************/
`timescale 1ns/1ns

module canny(
		rst_n,
		clk,
		din_valid,
		din,
		dout,
		vsync,
		vsync_out,
		dout_valid
	);
  
	parameter       DW  = 14;//
	parameter       KSZ = 3; //must be 3
	parameter       IH  = 512;
	parameter       IW  = 640;
	parameter       ThrHigh = 20;
	parameter       ThrLow  = 10;
	
	//cordic module data width
	parameter       DW_OUT = 20;//output data width : 20 bits,with 4 frac bits,can not be modified
	parameter       DW_IN  = 16;//input data width  : 16 bits,can not be modified

	localparam      NMS_LATENCY     = 5;  //Non-Maximum Suppression 
	localparam      HT_LATENCY      = 4;  //Hysteresis Thresholding Latency  
	
	localparam      radius   = 2;
	localparam      num_all  = KSZ * KSZ;
	localparam      fifo_num = KSZ - 1;
	localparam      med_idx  = ((num_all >> 1));
	localparam      latency  = 27;
	
	input           rst_n;
	input           clk;
	input           din_valid;
	input  [DW-1:0] din;
	output [DW-1:0] dout;
	input           vsync;
	output          vsync_out;
	output          dout_valid;

	wire [DW_OUT-1:0] soble_angle;
	wire [DW_OUT-1:0] sobel_mudule;
	wire [DW_OUT-1:0] sobel_x;
	wire [DW_OUT-1:0] sobel_y;
	wire [DW-1:0] sobel_data;
	wire sobel_valid;
	wire sobel_vsync;
	
	//1st gauss_sobel operation
	gauss_sobel #(DW,KSZ,IH,IW)
	gauss_sobel_ins(
		.rst_n (rst_n),
		.clk   (clk),
		.din_valid (din_valid),
		.din   (din),
		.dout(sobel_data),
		.dout_a(soble_angle),
		.dout_r (sobel_mudule),
		.dout_x (sobel_x),
		.dout_y (sobel_y),
		.vsync(vsync),
		.vsync_out(sobel_vsync),
    .dout_valid (sobel_valid)
	 );
	 
	reg [NMS_LATENCY:0]sobel_valid_r; 
	reg [DW-1:0]sobel_data_r[0:NMS_LATENCY];
	
	reg [DW_OUT-1:0]sobel_x_r[0:NMS_LATENCY];
	reg [DW_OUT-1:0]sobel_y_r[0:NMS_LATENCY];
	
	//buffer median result 
	integer i;
	integer j;
	
	always @(posedge clk)
	begin 
		
		sobel_valid_r[0] <= #1 sobel_valid;
		sobel_data_r[0]  <= #1 sobel_data;
		sobel_x_r[0]  <= #1 sobel_x;
		sobel_y_r[0]  <= #1 sobel_y;
		
		for(i=1;i<=NMS_LATENCY;i=i+1)
		begin 
			sobel_valid_r[i] <= #1 sobel_valid_r[i-1];
			sobel_data_r[i]  <= #1 sobel_data_r[i-1];
			sobel_x_r[i]  <= #1 sobel_x_r[i-1];
			sobel_y_r[i]  <= #1 sobel_y_r[i-1];
		end 
			
	end 
	
	wire [DW_OUT-1:0]sobel_abs_min;
	wire [DW_OUT-1:0]sobel_abs_max;
	wire sobel_abs_valid;
	wire [2:0]sobel_abs_info;
	//cal the abs of the sobel result(in both x and y direction)  
	cordic_pre abs_ins(
		.clk(clk),
		.rst_n(rst_n),
		.din_valid(sobel_valid), 
		.din_x(sobel_x), 
		.din_y(sobel_y), 
		.dout_x(sobel_abs_max), 
		.dout_y(sobel_abs_min),
		.dout_valid(sobel_abs_valid),		
		.dout_info(sobel_abs_info)
		);
		defparam abs_ins.DW = DW_OUT;
	
	wire [2*DW_OUT+2+DW-1:0]win_buf_din;
	
	assign win_buf_din = {sobel_abs_max,sobel_abs_min[DW_OUT-2:0],sobel_abs_info,sobel_data_r[2]};
	
	//buffer the window
	wire [KSZ*KSZ*(2*DW_OUT+3+DW)-1:0]win_data_temp;
	wire win_valid;
	wire win_vsync;
	wire [2*DW_OUT+3+DW-1:0]win_org;
	wire win_is_boarder;
	
	win_buf #(1*DW_OUT+3+DW,KSZ,IH,IW)
		buf_sobel(
			.rst_n(rst_n), 
			.clk(clk), 
			.din_valid(sobel_valid_r[0]),
			.din(win_buf_din), 
			.dout(win_data_temp),
			.dout_org(win_org),  
			.vsync(sobel_vsync), 
			.vsync_out(win_vsync), 
			.is_boarder(win_is_boarder),
			.dout_valid(win_valid)
	);
	
	wire [2*DW_OUT+2+DW-1:0]win_data[KSZ*KSZ-1:0];
	wire [DW_OUT-1:0]win_max[KSZ*KSZ-1:0];
	wire [DW_OUT-2:0]win_min[KSZ*KSZ-1:0];
	wire [2:0]win_info[KSZ*KSZ-1:0];
	wire [DW-1:0]win_r[KSZ*KSZ-1:0];	
	
	generate
	begin : xhdl1
		genvar i;
		for (i = 1; i <= KSZ*KSZ; i = i + 1)
		begin	: xhdl9
			assign win_data[i-1] = (win_valid==1'b1)?win_data_temp[(2*DW_OUT+2+DW)*i-1 -:2*DW_OUT+2+DW]:{2*DW_OUT+2+DW{1'b0}};	
			assign win_max[i-1]  = win_data[i-1][2*DW_OUT+2+DW-1-:DW_OUT];
			assign win_min[i-1]  = win_data[i-1][DW_OUT+2+DW-1-:DW_OUT-1];
			assign win_info[i-1] = win_data[i-1][2+DW -:3];
			assign win_r[i-1]    = win_data[i-1][DW-1 -:DW];
		end
	end
	endgenerate
  
	//buffer mudule value for future use
	reg [DW-1:0]mudule_reg[NMS_LATENCY:0];
	
	always @(posedge clk)
	begin 
		mudule_reg[0]  <= #1 win_r[med_idx];
		for(j=1;j<=NMS_LATENCY;j=j+1)
			mudule_reg[j]  <= #1 mudule_reg[j-1];
	end 
	//buffer valid for future use
	reg [NMS_LATENCY:0]win_valid_r;
	
	always @(posedge clk)
	begin 
		win_valid_r <= #1 {win_valid_r[NMS_LATENCY-1:0],win_valid};
	end 
	
	//cal nms result
	reg [7:0]nms_result;
	reg [2*DW_OUT-1:0]nms_max_a4;
	reg [2*DW_OUT-1:0]nms_max_a4_r;
	reg [2*DW_OUT-1:0]nms_add1;
	reg [2*DW_OUT-1:0]nms_add2;
	reg [2*DW_OUT-1:0]nms_add3;
	reg [2*DW_OUT-1:0]nms_add4;
	reg [2*DW_OUT:0]nms_add5;
	reg [2*DW_OUT:0]nms_add6;
	reg [3:0]add_index[3:0];
	
	//cal the four linear interpolation point index
	always @(posedge clk)
	begin 
		if(win_valid==1'b1)
		begin 
			if( (win_info[med_idx]==3'b000) | (win_info[med_idx]==3'b110) ) //1st quadrant
			begin 
				add_index[0] <= #1 4'd2;
				add_index[1] <= #1 4'd5;
				add_index[2] <= #1 4'd6;
				add_index[3] <= #1 4'd3;
			end 
			else if( (win_info[med_idx]==3'b001) | (win_info[med_idx]==3'b111) )//2nd quadrant
			begin 
				add_index[0] <= #1 4'd2;
				add_index[1] <= #1 4'd1;
				add_index[2] <= #1 4'd6;
				add_index[3] <= #1 4'd7;
			end 
			else if( (win_info[med_idx]==3'b011) | (win_info[med_idx]==3'b101) )//3th quadrant
			begin 
				add_index[0] <= #1 4'd0;
				add_index[1] <= #1 4'd1;
				add_index[2] <= #1 4'd8;
				add_index[3] <= #1 4'd7;
			end 
			else //4th quadrant
			begin 
				add_index[0] <= #1 4'd0;
				add_index[1] <= #1 4'd3;
				add_index[2] <= #1 4'd8;
				add_index[3] <= #1 4'd5;
			end 
		end 
		// Non-Maximum Suppression
		if(win_valid_r[0]==1'b1)
		begin 
			nms_max_a4 <= #1 win_r[med_idx]*win_max[med_idx];
			nms_add1   <= #1 win_r[add_index[0]]*win_min[med_idx];
			nms_add2   <= #1 win_r[add_index[1]]*(win_max[med_idx]-win_min[med_idx]);
			nms_add3   <= #1 win_r[add_index[2]]*win_min[med_idx];
			nms_add4   <= #1 win_r[add_index[3]]*(win_max[med_idx]-win_min[med_idx]);
		end 
		
		if(win_valid_r[1]==1'b1)
		begin 
			nms_max_a4_r <= #1 nms_max_a4;
			nms_add5 <= #1 nms_add1 + nms_add2;
			nms_add6 <= #1 nms_add3 + nms_add4;
		end 
		
		if(win_valid_r[2]==1'b1)
		begin 
			if(nms_max_a4_r == {2*DW_OUT{1'b0}})
				nms_result <= 8'd0;
			else if( (nms_max_a4_r >= nms_add5) && (nms_max_a4_r >= nms_add6))
				nms_result <= 8'd128;
			else 
				nms_result <= 8'd0;	
		end 
		
	end 
	
	//	nms output 
	//	assign dout = {{DW-8{1'b0}},nms_result};
	//	assign dout_valid = win_valid_r[3];
	//	assign vsync_out = vsync;
	
	wire nms_valid;
	wire nms_vsync;
	wire nms_is_boarder;
	wire [7:0]nms_data;
	wire [KSZ*KSZ*8-1:0]nms_data_temp;
	//buffer nms result 
	win_buf #(8,KSZ,IH,IW)
		buf_nms(
			.rst_n(rst_n), 
			.clk(clk), 
			.din_valid(win_valid_r[3]),
			.din(nms_result), 
			.dout(nms_data_temp),
			.dout_org(nms_data),  
			.vsync(vsync), 
			.vsync_out(nms_vsync), 
			.is_boarder(nms_is_boarder),
			.dout_valid(nms_valid)
		);
		
	//buffer mudule result 
	wire [KSZ*KSZ*DW-1:0]mudule_temp; 
	wire [DW-1:0]mudule_org;
	wire 	mudule_valid;
	wire 	mudule_vsync;
	wire 	mudule_is_boarder;
	win_buf #(DW,KSZ,IH,IW)
		mudule_buf(
			.rst_n(rst_n), 
			.clk(clk), 
			.din_valid(win_valid_r[3]),
			.din(mudule_reg[3]), 
			.dout(mudule_temp),
			.dout_org(mudule_org),  
			.vsync(vsync), 
			.vsync_out(mudule_vsync), 
			.is_boarder(mudule_is_boarder),
			.dout_valid(mudule_valid)
	);
	
	wire [DW-1:0]mudule_data[KSZ*KSZ-1:0];
	generate
	begin : xhdl5
		genvar i;
		for (i = 1; i <= KSZ*KSZ; i = i + 1)
		begin: xhdl7
			assign mudule_data[i-1] = mudule_temp[i*DW-1-:DW];
		end
	end
	endgenerate	
	
	reg [HT_LATENCY:0]nms_valid_r;
	always @(posedge clk)
	begin 
		nms_valid_r <= #1 {nms_valid_r[HT_LATENCY-1:0],nms_valid};
	end 
	
	wire mudule_result_temp[0:7];
	
	assign mudule_result_temp[0] = (mudule_data[0] >= ThrHigh)?1'b1:1'b0; 
	assign mudule_result_temp[1] = (mudule_data[1] >= ThrHigh)?1'b1:1'b0;
	assign mudule_result_temp[2] = (mudule_data[2] >= ThrHigh)?1'b1:1'b0;
	assign mudule_result_temp[3] = (mudule_data[3] >= ThrHigh)?1'b1:1'b0;
	assign mudule_result_temp[4] = (mudule_data[5] >= ThrHigh)?1'b1:1'b0;
	assign mudule_result_temp[5] = (mudule_data[6] >= ThrHigh)?1'b1:1'b0;
	assign mudule_result_temp[6] = (mudule_data[7] >= ThrHigh)?1'b1:1'b0;
	assign mudule_result_temp[7] = (mudule_data[8] >= ThrHigh)?1'b1:1'b0;
	
	wire mudule_result;
	reg mudule_result_tmp[0:6];
	always @(posedge clk)
	begin 
	
		if(nms_valid==1'b1)
		begin
			mudule_result_tmp[0] <= #1 mudule_result_temp[0] | mudule_result_temp[1] ;
			mudule_result_tmp[1] <= #1 mudule_result_temp[2] | mudule_result_temp[3] ;
			mudule_result_tmp[2] <= #1 mudule_result_temp[4] | mudule_result_temp[5] ;
			mudule_result_tmp[3] <= #1 mudule_result_temp[6] | mudule_result_temp[7] ;
		end
		
		if(nms_valid_r[0]==1'b1)
		begin
			mudule_result_tmp[4] <= #1 mudule_result_tmp[0] | mudule_result_tmp[1] ;
			mudule_result_tmp[5] <= #1 mudule_result_tmp[2] | mudule_result_tmp[3] ;
		end
		
		if(nms_valid_r[1]==1'b1)
		begin
			mudule_result_tmp[6] <= #1 mudule_result_tmp[4] | mudule_result_tmp[5] ;
		end
	
	end 
	
	assign mudule_result = mudule_result_tmp[6];
	
	reg [DW-1:0]dout_temp;
	reg [DW-1:0]mudule_org_r;
	reg [DW-1:0]mudule_org_r2;
	reg [8-1:0]nms_data_r;
	reg [8-1:0]nms_data_r2;
	
	always @(posedge clk)
	begin 
		nms_data_r    <= #1 nms_data;
		nms_data_r2   <= #1 nms_data_r;
		mudule_org_r  <= #1 mudule_org;
		mudule_org_r2 <= #1 mudule_org_r;
	end 
	
	always @(posedge clk)
	begin 
		if(nms_valid_r[1]==1'b1)
		begin
			if(nms_data_r2==8'd128)
			begin 
				if(mudule_org_r2 >= ThrHigh)
					dout_temp <= {{DW-8{1'b0}},8'd255};
				else if(mudule_org_r2 <= ThrLow)
					dout_temp <= {DW{1'b0}};
				else 
				begin 
					if(mudule_result == 1'b1)
						dout_temp <= {{DW-8{1'b0}},8'd255};
					else 
						dout_temp <= {DW{1'b0}};
				end 	
			end 
			else 
				dout_temp <= {DW{1'b0}};
		end
	end 
	
	assign dout = dout_temp;
	assign dout_valid = nms_valid_r[2];
	assign vsync_out = vsync;
	
endmodule




