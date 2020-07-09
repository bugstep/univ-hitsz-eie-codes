/*******************************************************************************
Vendor: Xilinx 
Associated Filename: ap_interfaces.h
Purpose: Interface definiation header file for AutoESL
Revision History: February 13, 2012 - initial release
                                                
*******************************************************************************
© Copyright 2008 - 2012 Xilinx, Inc. All rights reserved. 

This file contains confidential and proprietary information of Xilinx, Inc. and 
is protected under U.S. and international copyright and other intellectual 
property laws.

DISCLAIMER
This disclaimer is not a license and does not grant any rights to the materials 
distributed herewith. Except as otherwise provided in a valid license issued to 
you by Xilinx, and to the maximum extent permitted by applicable law: 
(1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX 
HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR 
FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether 
in contract or tort, including negligence, or under any other theory of 
liability) for any loss or damage of any kind or nature related to, arising under 
or in connection with these materials, including for any direct, or any indirect, 
special, incidental, or consequential loss or damage (including loss of data, 
profits, goodwill, or any type of loss or damage suffered as a result of any 
action brought by a third party) even if such damage or loss was reasonably 
foreseeable or Xilinx had been advised of the possibility of the same.

CRITICAL APPLICATIONS
Xilinx products are not designed or intended to be fail-safe, or for use in any 
application requiring fail-safe performance, such as life-support or safety 
devices or systems, Class III medical devices, nuclear facilities, applications 
related to the deployment of airbags, or any other applications that could lead 
to death, personal injury, or severe property or environmental damage 
(individually and collectively, "Critical Applications"). Customer assumes the 
sole risk and liability of any use of Xilinx products in Critical Applications, 
subject only to applicable laws and regulations governing limitations on product 
liability. 

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT 
ALL TIMES.

*******************************************************************************/


#ifndef __AP__INTERFACES__
#define __AP__INTERFACES__

#include "ap_stream.h"

/*
 * Enum of available interfaces in AUTOESL
 */
enum AP_AUTO_INTERFACES {AP_NONE,AP_ACK,AP_VLD,AP_OVLD,AP_HS,AP_CTRL_NONE,AP_CTRL_HS,AP_MEM,AP_FIFO,AP_BUS};

/*
 * GCC pre-processor directive to insert pragmas from macro code
 * AutoESL requires that all hardware centric commands be either in the
 * form of a directive or pragma before hardware synthesis.
 */ 
#define PRAGMA_L1(x) _Pragma(#x)
#define STR(s) #s
#define PRAGMA(x) PRAGMA_L1(x)

/*
 * Allows the user to define the type of AP_INTERFACE to be used.
 * AutoESL generated block in an EDK environment.
 */
/* Array streaming required by AP_HS on arrays */
#define AP_ARRAY_STREAMING(var_name){		\
    PRAGMA(AP array_stream variable=var_name);	\
}

/* Set the unregistered interface */
#define AP_INTERFACE(var_name,interface_type){	\
    PRAGMA(AP interface interface_type port=var_name);	\
  }

/* Set a registered interface */
#define AP_INTERFACE_REG(var_name,interface_type){	\
    PRAGMA(AP interface interface_type port=var_name register);	\
  }

/* Special case for array streaming using ap_hs */
#define AP_ARRAY_STREAM(var_name){		\
    AP_ARRAY_STREAMING(var_name);		\
    AP_INTERFACE(var_name,ap_hs);		\
  }

/*
 * Allows the user to define their own bus type for connection of the 
 * AutoESL generated block in an EDK environment.
 */
/* Basic Definition of a User Declared Bus */
#define AP_BUS_DEFINE(bus_name,bus_standard,bus_type_name){		\
    PRAGMA(AP resource core=bus_name variable=void type=adapter metadata=STR(-bus_std bus_standard -bus_type bus_type_name)); \
  }

/* Connects a user defined bus to a function port variable */
#define AP_BUS_ATTACH(bus_name, var_name){				\
    PRAGMA(AP resource core=bus_name variable=var_name metadata=STR(-bus_bundle)); \
  }

/* Provides mapping of ports when the basic AutoESL interfae used is AP_HS */
#define AP_BUS_MAP_HS(bus_name,var_name,source_port,data_port,sync_port1,sync_port2){\
     PRAGMA(AP resource core=bus_name variable=var_name port_map={{source_port data_port} {source_port##_ap_vld sync_port1} {source_port##_ap_ack sync_port2}}); \
  }

/* Provides mapping of ports when the basic AutoESL interfae used is AP_FIFO on an input */
#define AP_BUS_MAP_FIFO_IN(bus_name,var_name,source_port,data_port,sync_port1,sync_port2){\
    PRAGMA(AP resource core=bus_name variable=var_name port_map={{source_port##_dout data_port} {source_port##_empty_n sync_port1} {source_port##_read sync_port2}}); \
  }

/* Provides mapping of ports when the basic AutoESL interfae used is AP_FIFO on an output */
#define AP_BUS_MAP_FIFO_OUT(bus_name,var_name,source_port,data_port,sync_port1,sync_port2){\
    PRAGMA(AP resource core=bus_name variable=var_name port_map={{source_port##_din data_port} {source_port##_full_n sync_port1} {source_port##_write sync_port2}}); \
  }

/* Provides mapping of ports when the basic AutoESL interfae used is AP_VLD */
#define AP_BUS_MAP_VLD(bus_name,var_name,source_port,data_port,sync_port){ \
    PRAGMA(AP resource core=bus_name variable=var_name port_map={{source_port data_port} {source_port##_ap_vld sync_port}}); \
  }

/* Provides mapping of ports when the basic AutoESL interfae used is AP_OVLD */
#define AP_BUS_MAP_OVLD(bus_name,var_name,source_port,data_port,sync_port){ \
    PRAGMA(AP resource core=bus_name variable=var_name port_map={{source_port data_port} {source_port##_ap_vld sync_port}}); \
  }

/* Provides mapping of ports when the basic AutoESL interfae used is AP_ACK */
#define AP_BUS_MAP_ACK(bus_name,var_name,source_port,data_port,sync_port){ \
    PRAGMA(AP resource core=bus_name variable=var_name port_map={{source_port data_port} {source_port##_ap_ack sync_port}}); \
  }

/* Provides mapping of ports when the basic AutoESL interfae used is AP_NONE */
#define AP_BUS_MAP_NONE(bus_name,var_name,source_port,data_port){	\
    PRAGMA(AP resource core=bus_name variable=var_name port_map={{source_port data_port}}); \
  }

/* Declaration of a function control bus */
#define AP_CONTROL_BUS(bus_name,bus_standard,bus_type_name){		\
    AP_BUS_DEFINE(bus_name,bus_standard,bus_type_name);			\
    AP_BUS_ATTACH(bus_name,return);					\
    PRAGMA(AP resource core=bus_name variable=return port_map={{ap_start START} {ap_done DONE} {ap_idle IDLE} {ap_return RETURN}}); \
  }

/* Declaration of a user custom data bus*/
#define AP_DATA_BUS(var_name,bus_name,bus_standard,bus_type_name){	\
    AP_BUS_DEFINE(bus_name,bus_standard,bus_type_name);			\
    AP_BUS_ATTACH(bus_name,var_name);					\
  }

/*
 * Create Standard XILINX bus interfaces
 */

/* AXI4 Interfaces - require axi4 library to be loaded in solution */
/* Create an AXI4 Lite interface at the system level layer */
#define AP_BUS_AXI4_LITE(var_name,bus_name){					\
    PRAGMA(AP resource core=AXI_SLAVE variable=var_name metadata=STR(-bus_bundle bus_name)); \
  }

/* Create an AXI4 master interface at the system level layer */
#define AP_BUS_AXI4(var_name){			\
    PRAGMA(AP resource core=xilaxi4_bus_rw variable=var_name);	\
  }

/* Create a basic AXI4 stream interface at the system level layer */
#define AP_BUS_AXI_STREAM(var_name,bus_name){					\
    AP_INTERFACE(var_name,ap_fifo);					\
    PRAGMA(AP resource core=AXIS variable=var_name metadata=STR(-bus_bundle bus_name)); \
    PRAGMA(AP resource core=AXIS variable=var_name port_map={{var_name TDATA}}); \
  }

/* Create an AXI4 stream input interface at the system level layer */
#define AP_BUS_AXI_STREAMD(var_name,bus_name){					\
    AP_INTERFACE(var_name,ap_fifo);					\
    PRAGMA(AP resource core=AXIS variable=var_name metadata=STR(-bus_bundle bus_name)); \
    PRAGMA(AP resource core=AXIS variable=var_name port_map={{var_name##_data_V TDATA} {var_name##_strb_V TSTRB} {var_name##_user_V TUSER} {var_name##_last_V TLAST} {var_name##_tdest_V TDEST}}); \
  }

/* Create an FSL interface at the system level layer */
#define AP_BUS_FSL(var_name,bus_name){				\
    AP_INTERFACE(var_name,ap_fifo);					\
    PRAGMA(AP resource core=FSL variable=var_name); \
  }

/* Create a PLBv46 slave interface at the system level layer */
#define AP_BUS_PLB_SLAVE(var_name,bus_name){				\
    PRAGMA(AP resource core=PLB_SLAVE variable=var_name metadata=STR(-bus_bundle bus_name)); \
  }

/* Create a PLBv46 master interface at the system level layer */
#define AP_BUS_PLB_MASTER(var_name){				\
    PRAGMA(AP resource core=xilplb46_bus_rw variable=var_name);	\
  }

/* Create an NPI interface at the system level layer */
#define AP_BUS_NPI(var_name){			\
    PRAGMA(AP resource core=npi64 variable=var_name);	\
  }

#define AP_CONTROL_BUS_AXI(bus_name){		\
    PRAGMA(AP resource core=AXI_SLAVE variable=return  metadata=STR(-bus_bundle bus_name) port_map={{ap_start START} {ap_done DONE} {ap_idle IDLE} {ap_return RETURN}}); \
  }



#endif

