--  ***************************************************************************
--  ** DISCLAIMER OF LIABILITY                                               **
--  **                                                                       **
--  **  This file contains proprietary and confidential information of       **
--  **  Xilinx, Inc. ("Xilinx"), that is distributed under a license         **
--  **  from Xilinx, and may be used, copied and/or disclosed only           **
--  **  pursuant to the terms of a valid license agreement with Xilinx.      **
--  **                                                                       **
--  **  XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION                **
--  **  ("MATERIALS") "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER           **
--  **  EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING WITHOUT                  **
--  **  LIMITATION, ANY WARRANTY WITH RESPECT TO NONINFRINGEMENT,            **
--  **  MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE. Xilinx        **
--  **  does not warrant that functions included in the Materials will       **
--  **  meet the requirements of Licensee, or that the operation of the      **
--  **  Materials will be uninterrupted or error-free, or that defects       **
--  **  in the Materials will be corrected. Furthermore, Xilinx does         **
--  **  not warrant or make any representations regarding use, or the        **
--  **  results of the use, of the Materials in terms of correctness,        **
--  **  accuracy, reliability or otherwise.                                  **
--  **                                                                       **
--  **  Xilinx products are not designed or intended to be fail-safe,        **
--  **  or for use in any application requiring fail-safe performance,       **
--  **  such as life-support or safety devices or systems, Class III         **
--  **  medical devices, nuclear facilities, applications related to         **
--  **  the deployment of airbags, or any other applications that could      **
--  **  lead to death, personal injury or severe property or                 **
--  **  environmental damage (individually and collectively, "critical       **
--  **  applications"). Customer assumes the sole risk and liability         **
--  **  of any use of Xilinx products in critical applications,              **
--  **  subject only to applicable laws and regulations governing            **
--  **  limitations on product liability.                                    **
--  **                                                                       **
--  **  Copyright 2010 Xilinx, Inc.                                          **
--  **  All rights reserved.                                                 **
--  **                                                                       **
--  **  This disclaimer and copyright notice must be retained as part        **
--  **  of this file at all times.                                           **
--  ***************************************************************************


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Library UNISIM;
use UNISIM.vcomponents.all;


entity clock_mux is
  generic (
    C_DATA_WIDTH                  : integer := 16
  );
  port (
    -- vtiming input interface
    video_clk_1                   : in  std_logic;    
    hsync_1                       : in  std_logic;    
    vsync_1                       : in  std_logic;
    hblank_1                      : in  std_logic;    
    vblank_1                      : in  std_logic;        
    de_1                          : in  std_logic;    
    -- vid_io input interface 
    video_clk_2                   : in  std_logic;
    hsync_2                       : in  std_logic;
    vsync_2                       : in  std_logic;
    hblank_2                      : in  std_logic;
    vblank_2                      : in  std_logic;
    de_2                          : in  std_logic;
    data_2                        : in  std_logic_vector((C_DATA_WIDTH-1) downto 0);
    -- vid_io output interface
    video_clk                     : out  std_logic;
    hsync                         : out  std_logic;
    vsync                         : out  std_logic;
    hblank                        : out  std_logic;
    vblank                        : out  std_logic;
    de                            : out  std_logic;
    data                          : out  std_logic_vector((C_DATA_WIDTH-1) downto 0);    
    -- select signal
    sel                           : in  std_logic
  );
end entity clock_mux;

------------------------------------------------------------------------------
-- Architecture section
------------------------------------------------------------------------------

architecture RTL of clock_mux is
begin
  de     <= de_1 when sel = '0' else de_2;
  hsync  <= hsync_1 when sel = '0' else hsync_2;
  vsync  <= vsync_1 when sel = '0' else vsync_2;
  hblank <= hblank_1 when sel = '0' else hblank_2;
  vblank <= vblank_1 when sel = '0' else vblank_2;
  data   <= (others => '0') when sel = '0' else data_2;
           
  BUFGMUX_INST : BUFGMUX
  generic map (
    CLK_SEL_TYPE => "SYNC"
  )
  port map (
    O  => video_clk,
    I0 => video_clk_1,
    I1 => video_clk_2,
    S  => sel
  );
end RTL;
