/*
**********************************************************************************************
**      Input file      : None 
**      Component name  : image_src.v
**      Author          : ZhengXiaoliang
**      Company         : WHUT
**      Description     : to simulate dvd stream 
**********************************************************************************************
*/
`timescale 1 ns/1 ns

`define SEEK_SET 0
`define SEEK_CUR 1
`define SEEK_END 2

module  image_src(
		reset_l,
		clk,
		src_sel,
		test_vsync,
		test_dvalid,
		test_data,
		clk_out
	);

  parameter iw = 1280;//640*2 2 bytes per pixels
  parameter ih = 513;//512 plus one command line
  parameter dw = 8;   
  
  parameter h_total = 1440;
  parameter v_total = 600;
  
  parameter sync_b = 5;
  parameter sync_e = 55;
  parameter vld_b  = 65;
   
  input reset_l,clk;
  input [3:0]src_sel;//to select the input file  
  output test_vsync,test_dvalid,clk_out;
  output [dw-1:0]test_data;
  
  reg [dw-1:0]test_data_reg;
  reg test_vsync_temp;
  reg test_dvalid_tmp;
  reg [1:0]test_dvalid_r;
  
  reg [10:0]       h_cnt;
  reg [10:0]       v_cnt;
  
  integer fp_r;
  integer cnt=0;
	
	assign clk_out = clk;//output the dv clk
	
	assign test_data = test_data_reg;//test data output 
	
	//read data from file

	always @(posedge clk or  posedge test_vsync_temp )
	
	if (((~(test_vsync_temp))) == 1'b0)
		cnt<=0;//clear file pointer when a new frame comes
	else 
	begin
		if (test_dvalid_tmp == 1'b1) 
		begin
			case (src_sel)  
				4'b0000 :fp_r  = $fopen("txt_source/test_src0.txt",  "r");
				4'b0001 :fp_r  = $fopen("txt_source/test_src1.txt",  "r");
				4'b0010 :fp_r  = $fopen("txt_source/test_src2.txt",  "r");
				4'b0011 :fp_r  = $fopen("txt_source/test_src3.txt",  "r");
				4'b0100 :fp_r  = $fopen("txt_source/test_src4.txt",  "r");
				4'b0101 :fp_r  = $fopen("txt_source/test_src5.txt",  "r");
				4'b0110 :fp_r  = $fopen("txt_source/test_src6.txt",  "r");
				4'b0111 :fp_r  = $fopen("txt_source/test_src7.txt",  "r");
				4'b1000 :fp_r  = $fopen("txt_source/test_src8.txt",  "r");
				4'b1001 :fp_r  = $fopen("txt_source/test_src9.txt",  "r");
				4'b1010 :fp_r  = $fopen("txt_source/test_src10.txt", "r");
				4'b1011 :fp_r  = $fopen("txt_source/test_src11.txt", "r");
				4'b1100 :fp_r  = $fopen("txt_source/test_src12.txt", "r");
				4'b1101 :fp_r  = $fopen("txt_source/test_src13.txt", "r");
				4'b1110 :fp_r  = $fopen("txt_source/test_src14.txt", "r");
				4'b1111 :fp_r  = $fopen("txt_source/test_src15.txt", "r");
				default   :fp_r  = $fopen("txt_source/test_src0.txt",  "r");
			endcase 
			
			$fseek(fp_r,cnt,0);
			$fscanf(fp_r, "%02x\n", test_data_reg);
			cnt <= cnt + 4 ;
			$fclose(fp_r);
			//$display("%02x",test_data_reg);  //for debug use
		end
	end

//horizon counter
	always @(posedge clk or posedge reset_l)
  if (((~(reset_l))) == 1'b1)
	 h_cnt <= #1 {11{1'b0}};
  else 
  begin
	 if (h_cnt == ((h_total - 1)))
		h_cnt <= #1 {11{1'b0}};
	 else
		h_cnt <= #1 h_cnt + 11'b00000000001;
  end

//vertical counter
  always @(posedge clk or posedge reset_l)
  if (((~(reset_l))) == 1'b1)
	 v_cnt <= #1 {11{1'b0}};
  else 
  begin
	 if (h_cnt == ((h_total - 1)))
	 begin
		if (v_cnt == ((v_total - 1)))
		   v_cnt <= #1 {11{1'b0}};
		else
		   v_cnt <= #1 v_cnt + 11'b00000000001;
	 end
  end

//field sync
  always   @(posedge clk or posedge reset_l)
  if (((~(reset_l))) == 1'b1)
	 test_vsync_temp <= #1 1'b1;
  else 
  begin
	 if (v_cnt >= sync_b & v_cnt <= sync_e)
		test_vsync_temp <= #1 1'b1;
	 else
		test_vsync_temp <= #1 1'b0;
  end

  assign test_vsync = (~test_vsync_temp);

//horizon sync
  always @(posedge clk or posedge reset_l)
  if (((~(reset_l))) == 1'b1)
	 test_dvalid_tmp <= #1 1'b0;
  else 
  begin
	 if (v_cnt >= vld_b & v_cnt < ((vld_b + ih)))
	 begin
		if (h_cnt == 10'b0000000000)
		   test_dvalid_tmp <= #1 1'b1;
		else if (h_cnt == iw)
		   test_dvalid_tmp <= #1 1'b0;
	 end
	 else
		test_dvalid_tmp <= #1 1'b0;
  end

  assign test_dvalid = test_dvalid_tmp;

  always @(posedge clk or posedge reset_l)
  if (((~(reset_l))) == 1'b1)
	 test_dvalid_r <= #1 2'b00;
  else 
	 test_dvalid_r <= #1 ({test_dvalid_r[0], test_dvalid_tmp});

endmodule