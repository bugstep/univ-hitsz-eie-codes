set moduleName sobel_filter
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isOneStateSeq 0
set C_modelName sobel_filter
set C_modelType { void 0 }
set C_modelArgList { 
	{ inter_pix_data_V int 32 {fifo 0}  }
	{ inter_pix_strb_V int 4 {fifo 0}  }
	{ inter_pix_user_V int 1 {fifo 0}  }
	{ inter_pix_last_V int 1 {fifo 0}  }
	{ inter_pix_tdest_V int 1 {fifo 0}  }
	{ out_pix_data_V int 32 {fifo 1}  }
	{ out_pix_strb_V int 4 {fifo 1}  }
	{ out_pix_user_V int 1 {fifo 1}  }
	{ out_pix_last_V int 1 {fifo 1}  }
	{ out_pix_tdest_V int 1 {fifo 1}  }
	{ rows int 32  }
	{ cols int 32  }
}

# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ inter_pix_data_V_dout sc_in sc_lv 32 signal 0 } 
	{ inter_pix_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ inter_pix_data_V_read sc_out sc_logic 1 signal 0 } 
	{ inter_pix_strb_V_dout sc_in sc_lv 4 signal 1 } 
	{ inter_pix_strb_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ inter_pix_strb_V_read sc_out sc_logic 1 signal 1 } 
	{ inter_pix_user_V_dout sc_in sc_lv 1 signal 2 } 
	{ inter_pix_user_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ inter_pix_user_V_read sc_out sc_logic 1 signal 2 } 
	{ inter_pix_last_V_dout sc_in sc_lv 1 signal 3 } 
	{ inter_pix_last_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ inter_pix_last_V_read sc_out sc_logic 1 signal 3 } 
	{ inter_pix_tdest_V_dout sc_in sc_lv 1 signal 4 } 
	{ inter_pix_tdest_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ inter_pix_tdest_V_read sc_out sc_logic 1 signal 4 } 
	{ out_pix_data_V_din sc_out sc_lv 32 signal 5 } 
	{ out_pix_data_V_full_n sc_in sc_logic 1 signal 5 } 
	{ out_pix_data_V_write sc_out sc_logic 1 signal 5 } 
	{ out_pix_strb_V_din sc_out sc_lv 4 signal 6 } 
	{ out_pix_strb_V_full_n sc_in sc_logic 1 signal 6 } 
	{ out_pix_strb_V_write sc_out sc_logic 1 signal 6 } 
	{ out_pix_user_V_din sc_out sc_lv 1 signal 7 } 
	{ out_pix_user_V_full_n sc_in sc_logic 1 signal 7 } 
	{ out_pix_user_V_write sc_out sc_logic 1 signal 7 } 
	{ out_pix_last_V_din sc_out sc_lv 1 signal 8 } 
	{ out_pix_last_V_full_n sc_in sc_logic 1 signal 8 } 
	{ out_pix_last_V_write sc_out sc_logic 1 signal 8 } 
	{ out_pix_tdest_V_din sc_out sc_lv 1 signal 9 } 
	{ out_pix_tdest_V_full_n sc_in sc_logic 1 signal 9 } 
	{ out_pix_tdest_V_write sc_out sc_logic 1 signal 9 } 
	{ rows sc_in sc_lv 32 signal 10 } 
	{ cols sc_in sc_lv 32 signal 11 } 
}

set Spec2ImplPortList { 
	inter_pix_data_V { ap_fifo {  { inter_pix_data_V_dout fifo_data 0 32 }  { inter_pix_data_V_empty_n fifo_status 0 1 }  { inter_pix_data_V_read fifo_update 1 1 } } }
	inter_pix_strb_V { ap_fifo {  { inter_pix_strb_V_dout fifo_data 0 4 }  { inter_pix_strb_V_empty_n fifo_status 0 1 }  { inter_pix_strb_V_read fifo_update 1 1 } } }
	inter_pix_user_V { ap_fifo {  { inter_pix_user_V_dout fifo_data 0 1 }  { inter_pix_user_V_empty_n fifo_status 0 1 }  { inter_pix_user_V_read fifo_update 1 1 } } }
	inter_pix_last_V { ap_fifo {  { inter_pix_last_V_dout fifo_data 0 1 }  { inter_pix_last_V_empty_n fifo_status 0 1 }  { inter_pix_last_V_read fifo_update 1 1 } } }
	inter_pix_tdest_V { ap_fifo {  { inter_pix_tdest_V_dout fifo_data 0 1 }  { inter_pix_tdest_V_empty_n fifo_status 0 1 }  { inter_pix_tdest_V_read fifo_update 1 1 } } }
	out_pix_data_V { ap_fifo {  { out_pix_data_V_din fifo_data 1 32 }  { out_pix_data_V_full_n fifo_status 0 1 }  { out_pix_data_V_write fifo_update 1 1 } } }
	out_pix_strb_V { ap_fifo {  { out_pix_strb_V_din fifo_data 1 4 }  { out_pix_strb_V_full_n fifo_status 0 1 }  { out_pix_strb_V_write fifo_update 1 1 } } }
	out_pix_user_V { ap_fifo {  { out_pix_user_V_din fifo_data 1 1 }  { out_pix_user_V_full_n fifo_status 0 1 }  { out_pix_user_V_write fifo_update 1 1 } } }
	out_pix_last_V { ap_fifo {  { out_pix_last_V_din fifo_data 1 1 }  { out_pix_last_V_full_n fifo_status 0 1 }  { out_pix_last_V_write fifo_update 1 1 } } }
	out_pix_tdest_V { ap_fifo {  { out_pix_tdest_V_din fifo_data 1 1 }  { out_pix_tdest_V_full_n fifo_status 0 1 }  { out_pix_tdest_V_write fifo_update 1 1 } } }
	rows { ap_none {  { rows in_data 0 32 } } }
	cols { ap_none {  { cols in_data 0 32 } } }
}
