/*******************************************************************************************
**      Input file      : 
**      Component name  : img_process_tb.v
**      Author          : ZhengXiaoliang
**      Company         : WHUT
**      Description     : test module for image process basic  algorithms
**********************************************************************************************
*/

`timescale 1ps/1ps

module img_process_tb;
  
	/*image para*/
	parameter iw           = 640;  //image width
	parameter ih           = 512;  //image height
	parameter trig_value   = 100;
	/*video parameter*/
	parameter h_total      = 800;
	parameter v_total      = 600;
	parameter sync_b       = 5;
	parameter sync_e       = 55;
	parameter vld_b        = 65;
	parameter scan_freq    = 60;
	
	parameter clk_freq_1   = 1000000000/(h_total*v_total*scan_freq*2);
	parameter clk_freq     = clk_freq_1*1000;
	
	/*data width*/
    parameter dvd_dw       = 8  ;  //image source data width
	parameter dvd_chn      = 1  ;  //channel of the dvd data : when 3 it's rgb or 4:4: YCbCr
    parameter local_dw     = dvd_dw*dvd_chn ;  //local algorithm process data width
	parameter cmd_dw       = dvd_dw*dvd_chn ;  //local algorithm process data width

  
  /*test module enable*/
  parameter cap_en       = 0;

  /*signal group*/
  reg         clk=1'b0;
  reg         reset_l;
  reg  [3:0]  src_sel;
  wire [dvd_dw-1:0] test_data;
  wire        test_dvalid;
  wire        test_vsync;
  
  /*input dv group*/
  wire         dv_clk;
  wire         dvsyn;
  wire         dhsyn;
  wire   [dvd_dw-1:0]dvd;
  
   /*dvd sorce data generated for simulation */
	image_src #(iw*dvd_chn, ih+1,dvd_dw,h_total,v_total,sync_b,sync_e,vld_b)
	img_src_ins(
		 .clk(clk),
		 .reset_l(reset_l),
		 .src_sel(src_sel), 
		 .test_data(dvd), 
		 .test_dvalid(dhsyn), 
		 .test_vsync(dvsyn),
		 .clk_out(dv_clk)
		);   

	/*data captured*/  
  wire         cap_dvalid; 
  wire   [local_dw - 1:0]cap_data;
  wire         cap_vsync; 
	/*command line */
  wire         cmd_rdy;  
  wire  [cmd_dw-1:0]cmd_rdat;
  reg          cmd_rdreq;
  /*local clk :also clk of all local modules*/
  reg          cap_clk;
  /*img enable*/ 
  wire         img_en;
	
	/* video capture:capture image src and transfer it into  local timing*/
	video_cap //#(trig_value,iw,ih)/*default trig value 250*/
	  video(
			.reset_l(reset_l),          
      .DVD(dvd),       
      .DVSYN(dvsyn),    
      .DHSYN(dhsyn),   
      .DVCLK(dv_clk),      
      .cap_dat(cap_data),    
      .cap_dvalid(cap_dvalid),  
      .cap_vsync(cap_vsync),   
      .cap_clk (cap_clk),   
      .img_en(img_en),    
      .cmd_rdy(cmd_rdy),   
      .cmd_rdat(cmd_rdat), 
      .cmd_rdreq(cmd_rdreq) 
		);
		
		defparam  video_new.DW_DVD   = dvd_dw;
		defparam  video_new.DW_LOCAL = local_dw;
		defparam  video_new.DW_CMD   = cmd_dw;
		defparam  video_new.DVD_CHN  = dvd_chn;
		defparam  video_new.TRIG_VALUE = trig_value;
		defparam  video_new.IW = iw;
		defparam  video_new.IH = ih;	
  
generate
if(cap_en != 0)begin :capture_operation
  
	integer  fp_cap,cnt_cap=0;
	
  always @(posedge cap_clk or  posedge cap_vsync )
	if (((~(cap_vsync))) == 1'b0)
		cnt_cap=0;
	else 
	begin
		if (cap_dvalid == 1'b1) 
		begin	
		  fp_cap  = $fopen("txt_out/cap.txt", "r+");
		  $fseek(fp_cap,cnt_cap,0);
			if(local_dw==24)
			begin 
				$fdisplay(fp_cap,"%06x\n",cap_data);
				$fclose(fp_cap);
				cnt_cap<=cnt_cap+8;
			end 
			else 
			begin 
				$fdisplay(fp_cap,"%02x\n",v_data);
				$fclose(fp_cap);
				cnt_cap<=cnt_cap+4;
			end 
		end
	end

end
endgenerate

   
endmodule



/* end of file */

