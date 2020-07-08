-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Jul  8 13:46:46 2020
-- Host        : stu32 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.vhdl
-- Design      : blk_mem_gen_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec is
  port (
    ena_array : out STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec is
begin
ENOUT: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => addra(2),
      I1 => addra(3),
      I2 => addra(1),
      I3 => addra(0),
      O => ena_array(0)
    );
\ENOUT_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => addra(2),
      I1 => addra(3),
      I2 => addra(0),
      I3 => addra(1),
      O => ena_array(1)
    );
\ENOUT_inferred__1/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => addra(2),
      I1 => addra(3),
      I2 => addra(1),
      I3 => addra(0),
      O => ena_array(2)
    );
\ENOUT_inferred__3/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => addra(3),
      I1 => addra(1),
      I2 => addra(2),
      I3 => addra(0),
      O => ena_array(3)
    );
\ENOUT_inferred__4/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addra(3),
      I1 => addra(1),
      I2 => addra(2),
      I3 => addra(0),
      O => ena_array(4)
    );
\ENOUT_inferred__5/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addra(3),
      I1 => addra(0),
      I2 => addra(2),
      I3 => addra(1),
      O => ena_array(5)
    );
\ENOUT_inferred__6/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => addra(3),
      I1 => addra(2),
      I2 => addra(1),
      I3 => addra(0),
      O => ena_array(6)
    );
\ENOUT_inferred__7/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => addra(2),
      I1 => addra(1),
      I2 => addra(3),
      I3 => addra(0),
      O => ena_array(7)
    );
\ENOUT_inferred__8/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addra(2),
      I1 => addra(1),
      I2 => addra(3),
      I3 => addra(0),
      O => ena_array(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    p_3_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_7_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_27_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_31_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_35_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_39_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_11_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_15_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_19_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_23_out : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux is
  signal \douta[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal sel_pipe : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sel_pipe_d1 : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\douta[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => DOADO(0),
      I1 => sel_pipe_d1(2),
      I2 => sel_pipe_d1(3),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0),
      O => douta(0)
    );
\douta[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[10]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(3),
      I2 => \douta[10]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(2),
      I4 => \douta[10]_INST_0_i_3_n_0\,
      O => douta(10)
    );
\douta[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe_d1(1),
      I1 => p_3_out(3),
      I2 => sel_pipe_d1(0),
      I3 => p_7_out(3),
      I4 => sel_pipe_d1(2),
      O => \douta[10]_INST_0_i_1_n_0\
    );
\douta[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(3),
      I1 => p_15_out(3),
      I2 => sel_pipe_d1(1),
      I3 => p_19_out(3),
      I4 => sel_pipe_d1(0),
      I5 => p_23_out(3),
      O => \douta[10]_INST_0_i_2_n_0\
    );
\douta[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(3),
      I1 => p_31_out(3),
      I2 => sel_pipe_d1(1),
      I3 => p_35_out(3),
      I4 => sel_pipe_d1(0),
      I5 => p_39_out(3),
      O => \douta[10]_INST_0_i_3_n_0\
    );
\douta[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[11]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(3),
      I2 => \douta[11]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(2),
      I4 => \douta[11]_INST_0_i_3_n_0\,
      O => douta(11)
    );
\douta[11]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe_d1(1),
      I1 => p_3_out(4),
      I2 => sel_pipe_d1(0),
      I3 => p_7_out(4),
      I4 => sel_pipe_d1(2),
      O => \douta[11]_INST_0_i_1_n_0\
    );
\douta[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(4),
      I1 => p_15_out(4),
      I2 => sel_pipe_d1(1),
      I3 => p_19_out(4),
      I4 => sel_pipe_d1(0),
      I5 => p_23_out(4),
      O => \douta[11]_INST_0_i_2_n_0\
    );
\douta[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(4),
      I1 => p_31_out(4),
      I2 => sel_pipe_d1(1),
      I3 => p_35_out(4),
      I4 => sel_pipe_d1(0),
      I5 => p_39_out(4),
      O => \douta[11]_INST_0_i_3_n_0\
    );
\douta[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[12]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(3),
      I2 => \douta[12]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(2),
      I4 => \douta[12]_INST_0_i_3_n_0\,
      O => douta(12)
    );
\douta[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe_d1(1),
      I1 => p_3_out(5),
      I2 => sel_pipe_d1(0),
      I3 => p_7_out(5),
      I4 => sel_pipe_d1(2),
      O => \douta[12]_INST_0_i_1_n_0\
    );
\douta[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(5),
      I1 => p_15_out(5),
      I2 => sel_pipe_d1(1),
      I3 => p_19_out(5),
      I4 => sel_pipe_d1(0),
      I5 => p_23_out(5),
      O => \douta[12]_INST_0_i_2_n_0\
    );
\douta[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(5),
      I1 => p_31_out(5),
      I2 => sel_pipe_d1(1),
      I3 => p_35_out(5),
      I4 => sel_pipe_d1(0),
      I5 => p_39_out(5),
      O => \douta[12]_INST_0_i_3_n_0\
    );
\douta[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[13]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(3),
      I2 => \douta[13]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(2),
      I4 => \douta[13]_INST_0_i_3_n_0\,
      O => douta(13)
    );
\douta[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe_d1(1),
      I1 => p_3_out(6),
      I2 => sel_pipe_d1(0),
      I3 => p_7_out(6),
      I4 => sel_pipe_d1(2),
      O => \douta[13]_INST_0_i_1_n_0\
    );
\douta[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(6),
      I1 => p_15_out(6),
      I2 => sel_pipe_d1(1),
      I3 => p_19_out(6),
      I4 => sel_pipe_d1(0),
      I5 => p_23_out(6),
      O => \douta[13]_INST_0_i_2_n_0\
    );
\douta[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(6),
      I1 => p_31_out(6),
      I2 => sel_pipe_d1(1),
      I3 => p_35_out(6),
      I4 => sel_pipe_d1(0),
      I5 => p_39_out(6),
      O => \douta[13]_INST_0_i_3_n_0\
    );
\douta[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[14]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(3),
      I2 => \douta[14]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(2),
      I4 => \douta[14]_INST_0_i_3_n_0\,
      O => douta(14)
    );
\douta[14]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe_d1(1),
      I1 => p_3_out(7),
      I2 => sel_pipe_d1(0),
      I3 => p_7_out(7),
      I4 => sel_pipe_d1(2),
      O => \douta[14]_INST_0_i_1_n_0\
    );
\douta[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(7),
      I1 => p_15_out(7),
      I2 => sel_pipe_d1(1),
      I3 => p_19_out(7),
      I4 => sel_pipe_d1(0),
      I5 => p_23_out(7),
      O => \douta[14]_INST_0_i_2_n_0\
    );
\douta[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(7),
      I1 => p_31_out(7),
      I2 => sel_pipe_d1(1),
      I3 => p_35_out(7),
      I4 => sel_pipe_d1(0),
      I5 => p_39_out(7),
      O => \douta[14]_INST_0_i_3_n_0\
    );
\douta[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[15]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(3),
      I2 => \douta[15]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(2),
      I4 => \douta[15]_INST_0_i_3_n_0\,
      O => douta(15)
    );
\douta[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe_d1(1),
      I1 => p_3_out(8),
      I2 => sel_pipe_d1(0),
      I3 => p_7_out(8),
      I4 => sel_pipe_d1(2),
      O => \douta[15]_INST_0_i_1_n_0\
    );
\douta[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(8),
      I1 => p_15_out(8),
      I2 => sel_pipe_d1(1),
      I3 => p_19_out(8),
      I4 => sel_pipe_d1(0),
      I5 => p_23_out(8),
      O => \douta[15]_INST_0_i_2_n_0\
    );
\douta[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(8),
      I1 => p_31_out(8),
      I2 => sel_pipe_d1(1),
      I3 => p_35_out(8),
      I4 => sel_pipe_d1(0),
      I5 => p_39_out(8),
      O => \douta[15]_INST_0_i_3_n_0\
    );
\douta[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(0),
      I2 => sel_pipe_d1(2),
      I3 => sel_pipe_d1(3),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0),
      O => douta(1)
    );
\douta[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(1),
      I2 => sel_pipe_d1(2),
      I3 => sel_pipe_d1(3),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0),
      O => douta(2)
    );
\douta[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(0),
      I2 => sel_pipe_d1(2),
      I3 => sel_pipe_d1(3),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(0),
      O => douta(3)
    );
\douta[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(1),
      I2 => sel_pipe_d1(2),
      I3 => sel_pipe_d1(3),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(0),
      O => douta(4)
    );
\douta[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(2),
      I2 => sel_pipe_d1(2),
      I3 => sel_pipe_d1(3),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(0),
      O => douta(5)
    );
\douta[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => sel_pipe_d1(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(3),
      I2 => sel_pipe_d1(2),
      I3 => sel_pipe_d1(3),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(0),
      O => douta(6)
    );
\douta[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[7]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(3),
      I2 => \douta[7]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(2),
      I4 => \douta[7]_INST_0_i_3_n_0\,
      O => douta(7)
    );
\douta[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe_d1(1),
      I1 => p_3_out(0),
      I2 => sel_pipe_d1(0),
      I3 => p_7_out(0),
      I4 => sel_pipe_d1(2),
      O => \douta[7]_INST_0_i_1_n_0\
    );
\douta[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(0),
      I1 => p_15_out(0),
      I2 => sel_pipe_d1(1),
      I3 => p_19_out(0),
      I4 => sel_pipe_d1(0),
      I5 => p_23_out(0),
      O => \douta[7]_INST_0_i_2_n_0\
    );
\douta[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(0),
      I1 => p_31_out(0),
      I2 => sel_pipe_d1(1),
      I3 => p_35_out(0),
      I4 => sel_pipe_d1(0),
      I5 => p_39_out(0),
      O => \douta[7]_INST_0_i_3_n_0\
    );
\douta[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[8]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(3),
      I2 => \douta[8]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(2),
      I4 => \douta[8]_INST_0_i_3_n_0\,
      O => douta(8)
    );
\douta[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe_d1(1),
      I1 => p_3_out(1),
      I2 => sel_pipe_d1(0),
      I3 => p_7_out(1),
      I4 => sel_pipe_d1(2),
      O => \douta[8]_INST_0_i_1_n_0\
    );
\douta[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(1),
      I1 => p_15_out(1),
      I2 => sel_pipe_d1(1),
      I3 => p_19_out(1),
      I4 => sel_pipe_d1(0),
      I5 => p_23_out(1),
      O => \douta[8]_INST_0_i_2_n_0\
    );
\douta[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(1),
      I1 => p_31_out(1),
      I2 => sel_pipe_d1(1),
      I3 => p_35_out(1),
      I4 => sel_pipe_d1(0),
      I5 => p_39_out(1),
      O => \douta[8]_INST_0_i_3_n_0\
    );
\douta[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \douta[9]_INST_0_i_1_n_0\,
      I1 => sel_pipe_d1(3),
      I2 => \douta[9]_INST_0_i_2_n_0\,
      I3 => sel_pipe_d1(2),
      I4 => \douta[9]_INST_0_i_3_n_0\,
      O => douta(9)
    );
\douta[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => sel_pipe_d1(1),
      I1 => p_3_out(2),
      I2 => sel_pipe_d1(0),
      I3 => p_7_out(2),
      I4 => sel_pipe_d1(2),
      O => \douta[9]_INST_0_i_1_n_0\
    );
\douta[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_11_out(2),
      I1 => p_15_out(2),
      I2 => sel_pipe_d1(1),
      I3 => p_19_out(2),
      I4 => sel_pipe_d1(0),
      I5 => p_23_out(2),
      O => \douta[9]_INST_0_i_2_n_0\
    );
\douta[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_27_out(2),
      I1 => p_31_out(2),
      I2 => sel_pipe_d1(1),
      I3 => p_35_out(2),
      I4 => sel_pipe_d1(0),
      I5 => p_39_out(2),
      O => \douta[9]_INST_0_i_3_n_0\
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(0),
      Q => sel_pipe_d1(0),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(1),
      Q => sel_pipe_d1(1),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(2),
      Q => sel_pipe_d1(2),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => sel_pipe(3),
      Q => sel_pipe_d1(3),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(0),
      Q => sel_pipe(0),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(1),
      Q => sel_pipe(1),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(2),
      Q => sel_pipe(2),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(3),
      Q => sel_pipe(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init is
  port (
    \douta[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"E3F8F301E9BF667E72D78353CA304BCFEE08A4C1E99FB1FF9DD414818305D3F0",
      INIT_01 => X"9E6F3C79C0F9B8BB9871B5F06A62A02DE1FA22DDB808B7F77FC3528AB030C196",
      INIT_02 => X"9A98B5CE3C203F141EC6981B7C0D60CA16C03E9F3EA7C41CF1A1806B4183F20B",
      INIT_03 => X"A1A49E1B230F800FED1B2352799F8C93FD79400F8C0358010614D8000CDA5D7C",
      INIT_04 => X"0397345B25B3803800FCC6489BCF3FE3CD2251B0E3E660267E3E66EC0000C211",
      INIT_05 => X"007FF2E61728AC6E33800FCEDBCB03C0F9FCEB6B8C7FB94E14D3BFCEB400000F",
      INIT_06 => X"000001FCBB0D26D9B8F33001FC564D5FFE007FD68553E8006082B9F7FDFB0000",
      INIT_07 => X"C3E0000BFE52C77CB181C326007FC5C6D7FFC03F718EC674FE03309AD0037105",
      INIT_08 => X"4530FC000FFF14547F6C412732C00FFABF69FFF80FFC66A9C59FCB2432903C5A",
      INIT_09 => X"94D16C7F0001FFA5D47FD3E0F3F2B003FEE0367FFFCFFF59F73EB7F52705ABF6",
      INIT_0A => X"83294FB63FC0007FC69D9F3D7380EE543CFFD6739FC3FFFFD66D408DFD690E63",
      INIT_0B => X"B01C435F2BCE6000FFF4A566868E213FDD0F1FF2E1C3E01FFFE5934F998F4540",
      INIT_0C => X"C39882C9D8DBC60C001FFD6F6BC0C46021E247E7FCC3E03007FFF944D21C9364",
      INIT_0D => X"AF903E0F01F1B383B9003C0FA424F010F20F8091D9FF9FC000007FFC51369E5E",
      INIT_0E => X"90AC64FD87FC0FE7C05F600FE3EAE23E07E28C0CD4F73FF3C0007E07FE34BACE",
      INIT_0F => X"579828090FF0FCD307F037981DD4FCBD0FE2526718C23CCFFE00007FC07F8D61",
      INIT_10 => X"FE6A144BF4F80E3E46033C1BF3FE5A9FCF07BF64D986FC8F33FFC0E0381807E3",
      INIT_11 => X"463FCD36E51D6FFC9E31C0DF8CFE0E3147FC1F83B585498463DC7FF9FF0CF319",
      INIT_12 => X"D0698FF19E1232B830B718713FCF7FF39825E7FFE02A6149B073FF1FFFFFE367",
      INIT_13 => X"FE29F503FE3C6DBD5F01D4CE3C0FC39F06E4F37807F8F507EA321FFFC7FF1BF8",
      INIT_14 => X"C01FCA82B03F8BF76F54C1F5330C11F067E29025AC006646C27D46E3C0E3FF00",
      INIT_15 => X"3FF80FE28F5387E7FFE7AA1216B4C20C1C19F2A0F99B0001AC7E6F50CC0338FF",
      INIT_16 => X"CC8FFE01F8A66AFCF1FE8192791BA5618007067147CC68FF806A04643473C7F6",
      INIT_17 => X"3F80B3FC000E289AA300FF9BED601D4E886400C09D93063A3FF9F281C67BFCFF",
      INIT_18 => X"9CFFF1263C00010ABC88007FEEC2671962AA0BC0202CAB1F2CEFFF27230C61C8",
      INIT_19 => X"7EC80FFCE4E0FFE00270541C3FFB81AD3643168260100A53DC354BFF96DF9FC3",
      INIT_1A => X"0E025BF1F99CC3871F0453EB1FC7921BC9AA6DC220D00822913402CDFFE3AC1C",
      INIT_1B => X"B5C381523E7E67E7F008F80D9B1FFCC073F59C06F749F0061FAB8D0CE107E113",
      INIT_1C => X"4CF2A03FAA0F3F0D03039D8181C71FFFC70709B7F97F87F8019CC9D74711FE77",
      INIT_1D => X"97E893583C2A720FC14FBF81BF90003FFFF9C3A0A5FABF9B00000C45CC284CC0",
      INIT_1E => X"815184B7D8380D7B07726A37C72799007FFFFF396A2D5C9DE59201FA0EE6DA02",
      INIT_1F => X"EA4154E1EFCC19F89D43CC0A84F81901A3FFFFFE0FDBF5333236A205EB2E3B66",
      INIT_20 => X"F76AA14BF04B207D8FCEA8F302A3438CF3127FFFFF018A04AC9465B1407413A9",
      INIT_21 => X"6E48C421983E7A17B8CC025F1FC04FA788CCF1AFFFFFF8668ECA3D0CF27018DE",
      INIT_22 => X"8137AC2E50E6EFE7759EE4002A818008140F81BFD5FFFFFF313CC58452B87205",
      INIT_23 => X"74F88BD6F41C7896E5DE0C23000B0F00397ACF3FB39A3FFFFF9C609E413C6892",
      INIT_24 => X"DD8A875CE4466A2F0512A74363C00D73FFFFA161FC7263AFFFFFE60FB0604EF8",
      INIT_25 => X"181899227439EE6B0DD965062B5C103EDF007833300F8F2DDBF001F3801BB020",
      INIT_26 => X"7F05FC1A7A26DC7FCB7A2F5EB5D6A863BC4000000638073E75EE000003807CF8",
      INIT_27 => X"5F887E31817ED7E06112A307D05EDDE998FE4E017803FE06798292C7C0039E7E",
      INIT_28 => X"298BE1E14B1D9D36FBE38CD0C3DBC86202C9C32CC1FF80FF0321B05F3F1801D9",
      INIT_29 => X"4E1B7D30778DF8EC12677EC20C32970C07FF348C4A307FF033E0D7D4C48EFB38",
      INIT_2A => X"CF50090733531A6235698F5F60FFFDC578003FF53C81261FF8181C2B14991041",
      INIT_2B => X"2BFFCC05A942DB6E195147B3F62183F16000000FFED9D159C00019F39902A658",
      INIT_2C => X"2B3B00F583D5F09630876F9F4CFFD4FFFE30000001FFC983AE303FF103754CA9",
      INIT_2D => X"D412753E3961C9003E00A18424A2BDC2FFF6B8020000FFF302139CF00F3F6F52",
      INIT_2E => X"0D04DC42A39CE7F9600B74ED37692C6DE07F15F801F0003FFCC079CFF3F0706D",
      INIT_2F => X"F003617FCEF048E6B5980EE0206826542D3BE10B64008E000FFFB00CF1C383E0",
      INIT_30 => X"07F000D85FC7CB158996C63F4E0248E54935DCF8E5B5005C8003FFEC007E0F83",
      INIT_31 => X"FF03E003E627C6040ABACD0011B9E0A18EAE524560049BE02FB000FFFB603F80",
      INIT_32 => X"3E3F91FFFF618B07FF0D530300E0AB87F8586B98BF0C3877300A34003FC69CFC",
      INIT_33 => X"35D81FCC1FF020E6CF0FC4581801A6ABCC1067EBF9EE3C0036AFC58D001FA197",
      INIT_34 => X"E60D361FF30003E7F92E13FE6E77800B17C670E60801D860400CA9C763C00F98",
      INIT_35 => X"00FDC7231FFE0E03E03FDB0CE067F0D000C4E467FCC84066370007AF137CA003",
      INIT_36 => X"36003F7FEF8E0FC7C3F007F4C727EB970400546666206F80ED88F0FFA95F1BC8",
      INIT_37 => X"01E9800FFFFC0E00F3F8FF037DB1CA0DEC5A3304D666705B1A7BE287E01A3630",
      INIT_38 => X"6C30182403FFFF027801E63FCF03A44539FC3E8FB1EAE661F4E17FE8BE03FCB3",
      INIT_39 => X"30798E1807FFFFFBC0A6003F079FFCF50350C69164047B6663F7B89C43A0C380",
      INIT_3A => X"F9373F3601CBFFFFFDF80981CFC197FC9D41ACC0958D96665663F05044EF3CCF",
      INIT_3B => X"AEF130FFED303F3FFFFFF8166071E00A41D7504AE1958E25F44A67F80820C7DF",
      INIT_3C => X"280631B87FFD5F200FFF8FFC79181C020571B5543531F8482AC1922700030430",
      INIT_3D => X"A78CF1C06C4DA04BD201FFC00F30EC0707C15025950E91FFF84A67C1D700005E",
      INIT_3E => X"0199FC3E4E59F0BF9A75597DF83C11FE00060FAC0925668CFFC12AFFCAE5C000",
      INIT_3F => X"E0039C03C02BCC05C07E5DED577E70CDFE0C0371CB06A0DE543FC245700D2740",
      INIT_40 => X"61F8201FFC7EB6EC81A00FE81B6EC7B31B7E0F9CBE06C357A82A3FE35A5C0063",
      INIT_41 => X"001D4E287FFFC7FA31BFE3F1E109B3F069E6CF0E372FC263BA95B51FF3D94A00",
      INIT_42 => X"AE8E74C3BB47F0F8301483C3FE7724C0C41A71980E05CBFB61934282DFF9E427",
      INIT_43 => X"701A449CFCD50CF81F000D3CE3FF1D1C019486C1C3E479B2FF2049505F6FBCE1",
      INIT_44 => X"F760093516400CC30E07E0666FBBFFC6A39801719FC074FF60DFD032D40C33EE",
      INIT_45 => X"00FF8207F1D71AE620F0803C1129DAFFE33C083894F00012FF0E10740CB581F1",
      INIT_46 => X"D8003FD40FF8F4C704DB3E6007000B085C78D5DD10F3FFA07B4E00C609032B60",
      INIT_47 => X"ED367FBFF2AFFC3CBFFCFDC79801E00665295C6693642C2FF8F9633011936192",
      INIT_48 => X"1C01248FCFFF341F0EBD05F2F1E61078415FB77712C485290040FCB1B2F0FC67",
      INIT_49 => X"B8007032D3F7FF920007B14FFDAC31803E1953CD4BCC8D303FB9D5F05850BEF8",
      INIT_4A => X"E4381B9BFC9AFFFF70E00FCCB3FFE90CC00F8FD6CDFAE33AB2E08C7B60E40BAF",
      INIT_4B => X"AFA5070FCA30758FFF9FFC07DD3C0042233017F7E99E0010CF1019C73E580376",
      INIT_4C => X"729AB2BCC7EA7C0745FFEFFFFFFC81F80FB4C60FF9F2E7800073D31955BFF17B",
      INIT_4D => X"FFF0854BD1FF14F8FF0B73FBFFFFFEACC3081ABCC7FEF93CE8807ECE41C42FFF",
      INIT_4E => X"39FFFFD6E355202678C0FFA4BEFFFFCF92CCC6FC679FBFA0DF1C31FFBB483253",
      INIT_4F => X"3409FFFFF9FE2EE9FC3CC78C8B2FBFFF81C3399F0F28E3E7C837C07FFEEC9240",
      INIT_50 => X"CF58007FFFFF0F853AC19F633053C7800F30F7CE302AD21C31F40CF077FC3D3C",
      INIT_51 => X"C06B15F00107FFC01F8C4F19B6342A73F300A63B65C7E3F647E039073C3F7F01",
      INIT_52 => X"3FE0267AB4F000FFE5F30C5C4AD334F56CF803979EE33FF638DCEC00DFCE007F",
      INIT_53 => X"C01F800B634A3C007FFAA1C9161CED6282E3FC0F3DF1418F82F00B80C027E300",
      INIT_54 => X"F0381FC003BCED06001FFFA8799206FAA6FCABC3F8E39FEC680060793F9009E0",
      INIT_55 => X"8379FC1FF80071BA910007FF26604EC1DD56DFA4AE1C019664180FC7FF703204",
      INIT_56 => X"FCD19EC387FC0016274220007FBAA80F80575A49D525C0E0C549031FF807DF06",
      INIT_57 => X"0E9C8BEFA401FF80146431F1E001EA49787E2BDA484ECC0000F1625047FC0035",
      INIT_58 => X"F44AA83907CBC017E005E6FF4A5E027D433CE00DEA6822B5007FFC486419FF80",
      INIT_59 => X"9FFB6FA40323B59800FE23FF3E43FFF01F4AEAE0037A6409269FFFFF1866C27F",
      INIT_5A => X"A167FFFE1A04378D43001FFFD2CEA95A1C3FFC633800FECE01285FFFFF074629",
      INIT_5B => X"7366D8FFD39C81060350C000FFFF4095B94F0EFB5A860037908C35CFFFFFCDDD",
      INIT_5C => X"C0DD588F1FFB483CF03E14380001FBE39B194B073D3282000DEC0702FFFFFFE3",
      INIT_5D => X"8000F756DB67F3501E3E00C51F820065341D3C5C11F6C7DB0002F301C060FE03",
      INIT_5E => X"0FC0007CF04748FFF5881FFF9167FFF5F0FD95D0184635AE0E6000A57C79F03F",
      INIT_5F => X"01C1F0001F3C15B93FFE8C0FFFF45DFFFFFCF2D62007F68FCB819800155F63FC",
      INIT_60 => X"263C307FD187CA85A367FF4007FFFE0BFFFFFE25AC74012351EAA000001694E6",
      INIT_61 => X"690E3FC81FFFF0E8335AA9FF2FF1DFFF82FFFFFE0791A30061A7362400000744",
      INIT_62 => X"01D6447FF20FFFFE3B1FD4D5433BF277BF689E3EFF86073CD00DE7B22C800001",
      INIT_63 => X"000075197FCC87FFFB8CE7F404E761869FCFA2B70FBFC163C522038114CB3000",
      INIT_64 => X"CF80001D677FC1B1FFF8E359FC2731935EAF61D0A5C1FFE021F8BEC0FFA9E90C",
      INIT_65 => X"2F1840000FE9DFF067F2601C147F2D06132CABF87E2160FFF8307E1F903FF718",
      INIT_66 => X"FE9C439C2003C4B7FC0CF00003851F8BD674CA2AFC38E8583FFE0B0307C20FFB",
      INIT_67 => X"0FFF29A8B80400F8A5FF0191FFFE3EB3824A8E6A8B7C0F75360FFBC2A00388E7",
      INIT_68 => X"D8C00FE996F1000031E5FFC031C007E65CC198B6355C5F032D79079EE0280FCB",
      INIT_69 => X"821E3022FB84DB30000CA537F0C780000E2D90CE0C00CA6F81DA6E5F91085A0C",
      INIT_6A => X"472165CC1E3E9D5A380003B56DFC3C1FF718F620E3C12FC82BC07EE91AAF001E",
      INIT_6B => X"2013AEA5FF1AFFF8AB7A00006A5BFF0FF9E7FF830A37E01504F5E03FD20CBCC0",
      INIT_6C => X"D37300F6557FF985C01561000031B6FFE387033F7F060A000333EBF10DFCCE89",
      INIT_6D => X"EDEE760036C45FFD758F06CBC30000258FF8C63F300001853840053938E24A3B",
      INIT_6E => X"CFFB76006000664FEEC5044FB2F0E003C9501E3379F3C00E435F807C87CCF9BF",
      INIT_6F => X"C067FCFD3FE40083CB75AAA75E6C5FFE00F2D60399B80E3F0F9194701EC4E61C",
      INIT_70 => X"B807CFFF3ECFFD005FF199739F29A634044039B580E6D86060FFF4EB07072187",
      INIT_71 => X"CC31FFFFFFCF903F4017FFE01FC873CE86E5D00E4D60312C77C703F93280C318",
      INIT_72 => X"018707000007F3E7001005FFFFFFF3E7FFBE71CB0332500CD3101E380278A00F",
      INIT_73 => X"8B0003800000001CF9FF0C413FFFFFFFC0000FC7BEFCC9B46335E5C067C0DE28",
      INIT_74 => X"E5E2C403C0040000073E7FFF38400FF7FFFFFFFD60EC51F26BF8CD7D7FC63E37",
      INIT_75 => X"8E1D7CB001E017C00001CF9FFC1F9800007FDFFFFFFFFE953CB27E32DF5FF0C3",
      INIT_76 => X"FFF0E15FAC00E07FF0000033E3C207F3000000FFFFFFFFFFE52F2C9F80AFCBFF",
      INIT_77 => X"FEBFFE0E2BEB10307FFC00000CF87001FCC000003FFFFFFFFFFF19CB33C06BF2",
      INIT_78 => X"087F0FFFF0EAFA800C7FFF0000033E0700FF20003E1FFFFFFFFFFFFC32CCE015",
      INIT_79 => X"CE06BFD3FFFE059EA0023FF3C00000DD87FC3FC8000FEFFFFFFFFFFFFF90B338",
      INIT_7A => X"0A63835FE5FFFE7054A81E9FFCF0000036719F87F60003F3FCFFFFFFF3C07C29",
      INIT_7B => X"0022B8C1CF3AFFFE0725399FA7FE000000199C40E07980003E063FFFFFFFE007",
      INIT_7C => X"C0000CA8706BEEBFFF80E94B67E8FF3800000643300C0E60111F8003FFFFFFF8",
      INIT_7D => X"FFC0001C3A701AFF4C000078D2EDFA0F8E000001B8C801E0101DFFF0003FFFFF",
      INIT_7E => X"FFFFE0000705B0051FD0000EFF2A897E80000000006734000F8C037FFC0007FF",
      INIT_7F => X"000FFFF00003C16BF347E8000FFF8AE25FA00000000019FB00001E0000FFC000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \douta[0]\(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[15]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__0_n_0\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"3F0001FFFE00007059BEA1F4C03FFFE2B80BE800000003C63D800400000007FC",
      INIT_01 => X"000000003FFF00001C178190F27FFFFFF8AE1AFA000001FFF1C18000CC000000",
      INIT_02 => X"0000001C0007FFE000FF041C5BFD3FFFFFFE57F6BE80003BFFFE1F80041A0680",
      INIT_03 => X"000000000700013FC0017FC16B91FCCFFF3FFF95DDAFC00063FFFF8000010001",
      INIT_04 => X"00000000000B80000F0000FFF072CB7E30479FFFF5476BF00C301FFFF0000000",
      INIT_05 => X"000000000003C000000000003FF418E7201F0003FFFD52D97A0DFC00FFFC0000",
      INIT_06 => X"F8000000000000F8000000000003FD077CB00FFE0003FF53907D8FFF000CFF00",
      INIT_07 => X"002E0000000000003E000000000000180170EBFFFFC00003D32BC00FFFC00000",
      INIT_08 => X"000003F0000000000003000000000000000010030160000000720DFFEFFFF800",
      INIT_09 => X"FFD00020F800010FC000000000000000000003000018000000F03C70FFFFFFFF",
      INIT_0A => X"FFFFFE0000040003D0E000000000400000000000C70F0FF347FFFFFF01FFFFFF",
      INIT_0B => X"FFFFFFFFC00000003FFFFC000000C018000000000007C1C1FFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFE003FFFFFEC0001FE0FFC0000000000303FFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFC00FFFFFFF800FFFFFFFEF000000000C7FFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFF007FFFFFFF003FFFFFFFFFC000000033FFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00FFFFFFFFBF80000000FFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF803FFFFFFF0C00000001FFFFFFFF",
      INIT_11 => X"7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFC10000047FFFFDFF",
      INIT_12 => X"DFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000FF03",
      INIT_13 => X"0C30F0000007FFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFC000000000003F",
      INIT_14 => X"38020000000000080C000007FFFFFFFFFFC3FFFFFFFFFFFFFFF80000000018E4",
      INIT_15 => X"808E000000FC00000000000000FFFFFFFFF0003FFFFFFFFFFFFFFC000FE30006",
      INIT_16 => X"00000100413FFFC3FF0C0001BE003FFFFFFFF0003FFFFFFFFFFFFFFF19CFFFFF",
      INIT_17 => X"0000000000300000000000000000001FFFFFFFE00007FFFFFFFFFFFFFFC0000E",
      INIT_18 => X"00203C0000C7FC0000000000000000000FFFFFFFF0000FFFFFFFFFFFFFFFF000",
      INIT_19 => X"000000000000000000000003FFFFFFFFFFEFFFFFFFFC0001FFFFFFFFFFFBFFFF",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(13 downto 0) => addra(13 downto 0),
      ADDRBWRADDR(13 downto 0) => B"00000000000000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\(15 downto 1),
      DOADO(0) => DOADO(0),
      DOBDO(15 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__0_n_0\,
      ENBWREN => '0',
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => addra(14),
      I1 => addra(15),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  port (
    \douta[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"1C00FCFE1B7C6181FCE7FF300CCFD8300B0587C1E7802A000333E7807C03E400",
      INIT_01 => X"809FC07E3F076738600E39FFE6033FE41E034141F807F01D8000CE73700F007B",
      INIT_02 => X"7CF8CC0C3FDFC0CC1E38F81C7FFCE0F3F23FC0D0AF3FCC1C04C00018C10FF1F3",
      INIT_03 => X"9F9F21E6FC0FFFF01CFF1C61FE1FF38FFE7B3FF017D86FF4F806600003C79CFC",
      INIT_04 => X"FC70F3931B73C03FFF03C1C713C03FFC3CE0608F1C0469CB84FF87B000003E1F",
      INIT_05 => X"00000E1E1BE79C71C3FFF03E380DFFFFFE03D88C4380018366E1FFF318000000",
      INIT_06 => X"0000000384F1DDC7BFFC3FFE03CE0E6001FF803279B008007FC3026FFEAC0000",
      INIT_07 => X"0000000001CF0782707EC3C7FF8033C718003FC00CBF7E07FE03EF087BFFAA00",
      INIT_08 => X"3B4000000000CC6780DC40203CFFF0067F8E0007F0032ECFC67FC43C35CD03E9",
      INIT_09 => X"8C3130000000006C198037FFF0033FFC01DFC780003000CBFBFF0FF3C8FD764E",
      INIT_0A => X"5068C018000000003266E004FC7C1067FF003183E03C000032EE7F03FCF2015D",
      INIT_0B => X"C00BEB3FCC018000000D99B801BFDE0019FFE00E01FC1FE0001CB3901B8F3980",
      INIT_0C => X"FFE081CDC71C01F0000003204C002C7FE0037FF803C3FFCFF800072CE41D83E0",
      INIT_0D => X"601FC00F01F03C007E0003F06C37000A03FF80DFDE007FFFFFFF8003CB3B1EC0",
      INIT_0E => X"2063870007FFFFF8003F8003FC19FBC0029CF3FCE7F7C00FFFFFFFF801F27C8E",
      INIT_0F => X"301067F1F000FF0FF8000FE003270381F0010FB8E7FBFCF001FFFFFFFF807CDE",
      INIT_10 => X"01E61827F8FFF03F81FC0007FC013CE03FF840D3EE3800FF3C003F1FF81FF81F",
      INIT_11 => X"79C03CF8D31E6FFF1FC03F0003FFFF919803E07C6C798E007FDF800600FC03E6",
      INIT_12 => X"CF8E700F8009033830C7E00FC000FFF0083600001FE61E71C07FFFE000001F18",
      INIT_13 => X"01E7F9FC01FC64819F0018F003F0007F01FC05800007F3000C3C1FFFF800E407",
      INIT_14 => X"3FE039833FC07FF2E067C0063C03FE001FE18019300001C1C2018703C0FC00FF",
      INIT_15 => X"C007F01E4063F81FFD6033F1E8C701FFE007F19F062C000063FFE060F0003F00",
      INIT_16 => X"30F001FE07918CFF0FFE201C849C39807FF801F0DFF38D000019FF9C387C0007",
      INIT_17 => X"C07F3C03FFF1E4633FFFFFA80E41418F301FFF007C4F07C340000E7E01FCFF00",
      INIT_18 => X"73000FC7C3FFFEF980CFFFFFEA03B75642CC07FFC01C670030B000E71C0C1E3F",
      INIT_19 => X"FE380003F8FFFFFFFE3067E3FFFA81C9E5931B01FFE00637C3C66C004F001FC0",
      INIT_1A => X"0FFE38F0007F03801FFBCFF3E03FFEBBF2DB09C3403FF0018B33FC960028301F",
      INIT_1B => X"7903FF31FE001FF80FF0FFFC63E003FFD7F922A4F0500FF800668CFF35F814E4",
      INIT_1C => X"724CC03F99FF000303FF9E01FFC7E0003FF2FED8567C6C07FE033B473FE57F8D",
      INIT_1D => X"D80FB0600019FE0000C03F81C01FFFC00007FE9F36163F7EFFFFFC7CA1E7F160",
      INIT_1E => X"7E66788FE007FCFC008219C7C03861FF800000FF25C9859FDD5FFFF6165089FC",
      INIT_1F => X"313E671E1FF007F87E40300678F81EFE3C000001FFC8064173F22BFFE50BE842",
      INIT_20 => X"410D9E6C0FB83F83803F300C019C7F8F0FE3800000FF8607304C7C847FF17D24",
      INIT_21 => X"5F90479E2C0189E7BFC3FF90000020387F03FE30000007E18F0C0B0FACDFFABF",
      INIT_22 => X"FFAFC81FCF34E002F980E3FFCC0000041800007FE6000000F0FF0602CCEBABFC",
      INIT_23 => X"C9BF97E4F3F392F104BF03C0FFF20F0038FCFF3F8F9CC000007C1F1F8094BA66",
      INIT_24 => X"AA58D7C7F97E19CA7CE3AF80FC3FF183FFFF9E7FFFF1E33000001E003F80242E",
      INIT_25 => X"05420B3476FEB1E6F76719EDCF3FEFC0E3FFFFF03FFFFF1DEC0FFE0F801C401A",
      INIT_26 => X"8002A1593CC2BFA8390370C0CCD867FC407FFFFFFE3FFF3FF3F3FFFFFF807F00",
      INIT_27 => X"9FF7812EAF2F195F8A0E63A83061C1E47F0071FE87FFFFFE01FE7CFFFFFF807F",
      INIT_28 => X"E3D3FFFEF7B64BFBA40503CF1407F01FFE4600303E007FFFFF1E3FC03F1FFFC9",
      INIT_29 => X"71FA163FC7EFD51AF3507C81FC3B00F00000EC0C0C0F800FF3FFCFE73C0E03C7",
      INIT_2A => X"3F9FF845C3CC1AF94CD8C460400001000000000CFF8221E007F81FE718E7003E",
      INIT_2B => X"E7FFF7FC9E7CC8763EDF2C21263183F18000000001C631983FFFF803FB0339C7",
      INIT_2C => X"33F700F9FEB6FF0A3A8FA78A904BD8FFFFC000000000380FCE0FFFF0FC7CC0CE",
      INIT_2D => X"CC1C73003E7F66BFC4FDA3F21D4A917CFFF0C0000000000F01E383F000FF8F30",
      INIT_2E => X"0E03DF819C1F07B7AFF63F51FA9895E4287FF3A00000000003C001C0F00FF071",
      INIT_2F => X"F00380FFF1CF8F1F1BEBF15FCB5EBDC95C89FFF92800700000007000F0007FE0",
      INIT_30 => X"FFF000E03FC7C7E603D5FAC0E0035744C663CE7FFC8E003F0000001C007E007F",
      INIT_31 => X"FFFFE003F81FC003F33B2CFEA069FFC410618AFC400441001FC0000007003F83",
      INIT_32 => X"3FFFFFFFFFFE070000F19E3CFF2867F8011F986A98F0001140063800000180FF",
      INIT_33 => X"0C1FFFFFFFFFDF01C0F0389F6FFE4C67F01027F6036700000D70038E00000070",
      INIT_34 => X"000307FFFFFFFC0000E1FC004E207FF1CFF87FEE0F015A4040025FF8E3000000",
      INIT_35 => X"000000E3FFFFF1FC000038FF007748CFFE8CF87805C1C05698000094FC7CC000",
      INIT_36 => X"380000001FFE0FF83C00000C3FC7F3D04BFF9C787820DFF0F5A30000663FD3F0",
      INIT_37 => X"FEB200000003FE00FC070000838FF3F1CBB4FFF818787FC8E67D68F81FF9F1C5",
      INIT_38 => X"1C0FED40000000FE000201C030FC63F9C1F1D2DFFE0CF87E0DE0FF4A3FFFFC70",
      INIT_39 => X"000781FF680000003F9800C0F87FFF0CFC60FC9BCBFF82787C0087BC6A80FF80",
      INIT_3A => X"010800F1FFE600000007C600303E7000E33E30FFC6F96180987C00302C0A600F",
      INIT_3B => X"310E0F001CFFFB40000007F1800E1FF9FE18CF8CFE71FEA7FC6C7800042A3970",
      INIT_3C => X"9807CFC780033FDF10007003F8E003FFFCF1C633C63E07BBD8C09B380001028F",
      INIT_3D => X"607C0FFFF383FFC7E1C6003FF0F01000FFFF30390CF31E000AE18062980000C1",
      INIT_3E => X"007803FE3F861DBFF9F9298007FFF000003E0F9C0E4318CF003D96FFD0B60000",
      INIT_3F => X"40007C003FE7EDF7407E3EE09801F0FC00000F01C707304067C03E9F3FF93580",
      INIT_40 => X"C9501FFFFC014DE87E600FE7D84B00701F00001F8001C39B9833C01F17CFFEA5",
      INIT_41 => X"FFF764187FFFC00171FFE001FCF042401807C001C7E001E3CCF3B9E00FCC9BFF",
      INIT_42 => X"5AFF8D490887FFF8004C03C000789F3F480601F801F9F800E1E27E7CE007E28D",
      INIT_43 => X"F00B7D23AE6CF0FFFF001B00E0001E33FFED01C1FFE3FE3E00E0719FC07003E0",
      INIT_44 => X"00E0083B95CBAC3C0FFFE062E0380007287FFCC07FFFF3FF83C0303CE7FC3C01",
      INIT_45 => X"FF005C07FE6A06081F00FFFC10981E0003DE07C7080FFFF1FFF0F00C0F39FFFE",
      INIT_46 => X"1FFFC03A8FFF1B7F0707C07FFF00270FC000E75CE00E005FF8CFFF3E0703CC7F",
      INIT_47 => X"F1C780400B8FFFC64FFF03F81FFFE00DE619C07B4CD9E05007F8E3CFEF90E1E3",
      INIT_48 => X"03FE38F0300197FFF101FA01FE07FFF8033F33901C8CD244607FFC71C1FFFC1F",
      INIT_49 => X"F8000FC31C08004BFFF85070006FC1FFFE00CFEC800F2CCAD69019F038607FF8",
      INIT_4A => X"EC381B87FF1300000F1FF014BC0019F0FFFF8031C9FA03D3815AA002401C139F",
      INIT_4B => X"9EC3070FC6007930000003F8073FFFBE3C3FFFF0187F7D00F5F0568CFF93FF04",
      INIT_4C => X"83092580C7E6000796000000000281FFFF8707FFF80E1FDE807D6F0C837FFD83",
      INIT_4D => X"FFFF3CF2CE3FF200FFF24000000001E303F804C0FFFE0703F0407F51C2B79FFF",
      INIT_4E => X"C7FFFFE61C13CFDD00FF00280000003051F0FE03B81FBF9FC0FFF1FFD438AC4F",
      INIT_4F => X"0EFFFFFFFEFFCDF20280F80C760000007E28FE1F00CF03E7C7F03FFFFEF50E2B",
      INIT_50 => X"50C6BFFFFFFFAFFB7C00C07C3FCD800000F0F23FC03623E031F3FC0FFFFC3F43",
      INIT_51 => X"C05CF3AFFFFFFFE41F5F4F56383819E0000060391DF80B48780038FF03FFFF01",
      INIT_52 => X"FFE033F9930FFFFFFCFCDB9FD11C38F3180000701E5F3FFA171F10003FC1FFFF",
      INIT_53 => X"3FFF800E60D9C3FFFFFDBE3B1BF60E7CFE660000FC012F8F8373F3FF001FE0FF",
      INIT_54 => X"F007FFC002C3E4F9FFFFFE8F877CFC8338C39A8007E3801BE0007FFE3FE007E0",
      INIT_55 => X"00F803FFF800BF867EFFFFFF967FC0FF0198E06CF1FC01F1FDF80007FF803C03",
      INIT_56 => X"00E07E3C7FFC00261F3C1FFFFFDA73FFFFE06C703337C000FCCF7F000007E007",
      INIT_57 => X"0C830C1F9FFFFF80181C0E881FFFF61D7F83EC13703DC80000FF23CFC0000038",
      INIT_58 => X"07CB27C1FFC7FFFFE0061E0056C1FFFF186100F90CB01E76007FFFD893F80000",
      INIT_59 => X"800267C3FC3FB39FFFFE23FF006BA80FFFB400403E4348071F1FFFFFF4423E00",
      INIT_5A => X"84E000A2E1FFC78CC3FFFFFFCCC0CDB203FFECA3700F909400E79FFFFFFD16E7",
      INIT_5B => X"D266B80014407FF80330FFFFFFF780D9C5FCFFFF499C03E425000C0FFFFFF349",
      INIT_5C => X"FF3598A700027803FFC00C3FFFFFF9F3D3E0717FFEEE5900F9094001FFFFFFFC",
      INIT_5D => X"FFFF0D6606E00C6001FFFF031FFFFFE779E9C0104FFF4836803EC250001FFFFF",
      INIT_5E => X"FFFFFF827838D8000607FFFFE0E7FFFFF12109600C51FFE402400FB1A8060FFF",
      INIT_5F => X"01FFFFFFE09E0E0B0000F3FFFFF83DFFFFFCB76DE802F27FE6006003F86A1FFF",
      INIT_60 => X"BE003FFFFFF82703C120007FFFFFFF07FFFFFE2BCD32009ECFF6C00000EC9A9E",
      INIT_61 => X"C9AE000FFFFFFF1BC0D26400300FDFFFC1FFFFFE0D9FAC80106CFAB800003966",
      INIT_62 => X"023A680003FFFFFFC6E036CCC033F1F7FFF07E3EFF8578F4A003E28CB700000E",
      INIT_63 => X"00008E120030FFFFFBF3980C43DF7DFE7FFFDC8F0FBFC13C3CCC007F4CF24000",
      INIT_64 => X"15000023A5803E3FFFF8FCC60308F060619F7FE323C1FFE06E07BF00006419A8",
      INIT_65 => X"114120000049600F87F2601FF380E1FE1D3067FFF6C0E0FFF82B81FFE0000EFA",
      INIT_66 => X"01802838000036D803F0F00003FCE07819F84C19FFFD50383FFE09FCFFFC0007",
      INIT_67 => X"F000E62589000004B600FE1000003E7C7E33002306FFFE9E0E0FFBC23FFF8F00",
      INIT_68 => X"F8FFF01BE65340000F29003FC03FF8063F3F872612633FFF8787079EE08FFFC3",
      INIT_69 => X"FE1E3FE30688C8600003B6400FF87FFFF01DEFC1F60BEDDFFFF0F1DF810873FC",
      INIT_6A => X"453F07CFF741C199D000039DB003FFFFFFFF0E3FE03E42CDE7FFF42EFC600014",
      INIT_6B => X"C0134F99FFFA5057337C0000E66C00FFF807FFFF0DF01FE74173FFFD23FEEB00",
      INIT_6C => X"E10300D84E7FF8962BE67E0000303B001F80FC3F7F07F9FFFC1048FEFDB4FF3C",
      INIT_6D => X"0FEE080038FC9FFCF9FAF88C00000FC6F007C1FFC00001FCFFBFFCD0FF1E0E3F",
      INIT_6E => X"C003F1FF800079900E46053023000003F19FE1F0F9FC00007F3FFFFC743F0780",
      INIT_6F => X"FFE000FCFFF8007C0C0664D8C008600000FCE7FC78780FC0001F8C7FFE391FE3",
      INIT_70 => X"3807C0003E3FFE003FFE018FDFE61BC7FB803E39FF1E38007F0007E707FF1EFF",
      INIT_71 => X"C3C00000000F8FFF800FFFFFE00F8FFF0719E00F8E7FCF1C0807FC01F180FF07",
      INIT_72 => X"0180F8FFFFF803E0FFE003FFFFFFFC00003F8E8C03C39FF3CF0FE03FFC78600F",
      INIT_73 => X"8700007FFFFFFFE0F800F040FFFFFFFFFFFFF0002B00F1C7FCF3E3FF87FF1E18",
      INIT_74 => X"F9E1C0003FFFFFFFF83E0000383FFFFFFFFFFFFFFFF69E3C73FF3CFCFFF83FC7",
      INIT_75 => X"F01E7C70001FFFFFFFFE0F80001F87FFFFFFFFFFFFFFFF263F3C7FCE3F3FFF03",
      INIT_76 => X"FFFF019F9C001FFFFFFFFFC3E00007F0FFFFFFFFFFFFFFFFF9CFCF1FFF9FC7FF",
      INIT_77 => X"FE7FFFF033E7000FFFFFFFFFF0F80001FC3FFFFFFFFFFFFFFFFFE1F3C3FFE7F1",
      INIT_78 => X"F9FF3FFFFF0CF98003FFFFFFFFFC3E0000FF1FFFFFFFFFFFFFFFFFFFFCF0FFF3",
      INIT_79 => X"0FFE7FCFFFFFF91E6001FFFFFFFFFF1F80003FC7FFFFFFFFFFFFFFFFFFFF3C3F",
      INIT_7A => X"F383FF3FE3FFFFFF67981E7FFFFFFFFFC7F06007F1FFFFFFFFFFFFFFFFFFFFCE",
      INIT_7B => X"FFFCC0FFDFF9FFFFFFC9F41F9FFFFFFFFFE1FC3F00787FFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFF307FE7FE7FFFFFF27907E7FFFFFFFFF87F0FF00E1FFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFCC7FF9FF3FFFFFFE9E51F9FFFFFFFFFE3FC7FE000FFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFF93FFCFFCFFFFFFFB3A67E7FFFFFFFFF87F3FFF003FFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFE4C0F3FE7FFFFFFECE99F9FFFFFFFFFE1F8FFFFE1FFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \douta[1]\(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[15]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  port (
    p_35_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0404060606080808080808060604040404040404040404040204040404060606",
      INIT_01 => X"0808080606040402020202020202020202040404040404040404040404040404",
      INIT_02 => X"151515130F0C0A0A0A080C0C0C0A0A080A0A0C0C0C0A0A080606040406060608",
      INIT_03 => X"0404040606060606040404040404020204040202020000020204080C0F131315",
      INIT_04 => X"0C0C0A0A080606040404040404040404080A0E0E0E0C0A080604040404020202",
      INIT_05 => X"0604020204060608080A0A0A080806040402020202020202020202040406080A",
      INIT_06 => X"1717151515131111110E0E0E0E0E0C0C0C0E0E0C0C0C0C0A0A0A0A0A0A080808",
      INIT_07 => X"0202020204040404060608080A0C0E111111110E0C0A0806080A0C0E13131517",
      INIT_08 => X"040404040404040404040404060608080A0A0A0A080806060404040404040404",
      INIT_09 => X"0806060604060606060608080606060404040202020202020202020404040404",
      INIT_0A => X"020406080C0E1113131515151513110E0C0A08080E0C0C0A0A08080A0A0A0A08",
      INIT_0B => X"0C0A060404040202020202020204040404040402020202020404040404040202",
      INIT_0C => X"02020202020406080A0A0A0C0A0A0A08080606060606060406080A0E1111110E",
      INIT_0D => X"0C0A0A0A0A0A08080806040202020404060808080A0A0A080606040404020202",
      INIT_0E => X"06060A0C111315171717171717151311110E0E1111110E0E0E0E0E11110F0E0E",
      INIT_0F => X"08060404040404040404040404020204040404060606080A0C0E0E0E0C0C0A08",
      INIT_10 => X"020202040404040404040404040404040404040404040606080A0A0C0C0A0A0A",
      INIT_11 => X"0E0C0A0A08080808080806060606060606060606080806060604040402020202",
      INIT_12 => X"0202020404040404040404060A0C0E0F1111131315151313110F0C0C0A08110E",
      INIT_13 => X"0A08080A0E11111111110E0C0806040402020202020202020202020202020202",
      INIT_14 => X"0A08080604040404020202020202040606080A0A0A0A0A0A0A080808080A0A0A",
      INIT_15 => X"1111111111111111110F0C0C0A0A0A0808080606040202020406060608080A0A",
      INIT_16 => X"0608080A0C0A0A080806080A0C101315171919191917151311110E0E0E111111",
      INIT_17 => X"0606080A0C0C0C0C0C0A0A080604040404040404040404040202020404040606",
      INIT_18 => X"0606060404040202020202020404040404040404040404040404040404040404",
      INIT_19 => X"131313110F0C0A0811110E0E0C0C0A0A08080808060606060606060606080806",
      INIT_1A => X"0202020202020202020202020204040406060606080A0C0E0F11111111131313",
      INIT_1B => X"0A0A0A08080A0C0C0E0E0C0C0C0C0F11111313130F0C08060404020202020202",
      INIT_1C => X"00020406060808080A0A0A0808060604040402020202020204060808080A0A0A",
      INIT_1D => X"1513110E0E0E0E1111111111111113131313110F0C0C0A0A0808080606040202",
      INIT_1E => X"04020202020404040406060606080808080808080A0E11131517191B1B191917",
      INIT_1F => X"0404040404040404040606080A0C0C0E0E0E0E0E0C0A08060404040404040404",
      INIT_20 => X"0608080808080808060606060404040402020202020204040404040404040404",
      INIT_21 => X"0E0F1111110F0F11111313131313110E0C0A1111110E0E0C0C0A0A0808080806",
      INIT_22 => X"0A08060402020202020202020202020202000000000202040406080808080A0C",
      INIT_23 => X"02020406080808080A0A0A0A0A0A0A0C0F111111110F0E0F111113131513110E",
      INIT_24 => X"0A0A0808060606040202000204060808080A0A0A0A0A08080606060402020200",
      INIT_25 => X"151717191B1B1B1917151313110E0C0C0E0E1111111313131313151313110F0C",
      INIT_26 => X"0A080806060404040404040202020204040406060606060606060606080A0E13",
      INIT_27 => X"040404040404040404040404040404040404040606080A0C0E11111111110E0C",
      INIT_28 => X"0E0E0C0C0A0A0A080808080808080A0A08080806060404040404020202020204",
      INIT_29 => X"020406080A0A0C0C0C0C0E0F0F0E0E0C0C0E111113131313110E0C0A11111111",
      INIT_2A => X"1311111113131513110F0C0A0604020202020202020202020000000000000000",
      INIT_2B => X"080808060604020200000202060608080808080A0A0A0A0C0E11131313131313",
      INIT_2C => X"15151513151513110F0E0C0A0A080606040402000002040808080A0A0A0A0A0A",
      INIT_2D => X"0606060606060A0E1315171719191B1B1919171513110E0C0C0C0C0E11111315",
      INIT_2E => X"0A0C111113131313110E0C0C0A08060606060606040404020404040406060606",
      INIT_2F => X"0404040402020202020404040404040404040404040404040404040404060608",
      INIT_30 => X"1111110E0C0A1111110E0E0E0C0C0A0A0A0A0A0A0A0A0A0A0A0A0A0A08060604",
      INIT_31 => X"02020200000000000000020406080A0C0C0C0C0C0C0E0E0C0C0A0A0C0E0E1111",
      INIT_32 => X"0C0F1113151515151515151313131313131311110E0A08060402020202020202",
      INIT_33 => X"06080A0A0A0A0A0A0A0A0A0A0808060402020000020206060808080A0A0A0A0A",
      INIT_34 => X"0C0A0A0A0C0C111315191917171515151311110F0C0C0A080606040202000202",
      INIT_35 => X"040404040406060606060606060606080A101517191919191B1917171513110F",
      INIT_36 => X"040404040404040606080A0C11131315151313110E0C0A0A0806060606060604",
      INIT_37 => X"0A0C0C0C0A0A0808060604040404020202020404040404040404040404040404",
      INIT_38 => X"0A0A0A0A0A0A0C0C0E0E11110E0C0A0A0E0E0E0E0E0E0C0C0A0A0A0A0A0A0A0A",
      INIT_39 => X"0806040202020202020202020202000202020202020406080A0C0C0C0C0C0C0A",
      INIT_3A => X"060608080A0A0A0A0C0E0F111315151717171717171715131513131311110E0C",
      INIT_3B => X"0A08060604020200020204080A0A0A0A0A08080A0A0A08080604020000000002",
      INIT_3C => X"1919191917151313110C0A0808080A0C1115191B1D1B19171513131111110F0C",
      INIT_3D => X"0A0806060606060606060604040406060606060606080808060A0C1317191919",
      INIT_3E => X"04040404040404040404040404040404040606080A0C11111315151313110E0C",
      INIT_3F => X"0C0C0A0A0A0A0A0A0A0C0C0C0C0C0C0C0A080606040404020202020204040404",
      INIT_40 => X"08080A0C0C0C0A0A0A080808080808080A0A0C0C0C0C0C0A0A0A0C0C0E0C0C0C",
      INIT_41 => X"171715151311110F0C0A06040402020202020202020202020404060606060606",
      INIT_42 => X"08060402000000000002060608080A0A0A0C0F11131515171717191919191919",
      INIT_43 => X"1917131311111111110F0C0A080604020000000204080A0A0A0A080808080808",
      INIT_44 => X"0806060A0E131719191919191917151513110E0C08060606080C11171B1D1D1B",
      INIT_45 => X"0E111313131313110E0C0A080606040606060606060606060606060606060808",
      INIT_46 => X"0404040404040404040606060404040406060606040404040404040606080A0C",
      INIT_47 => X"0A0A0C0C0A0A0C0C0A0A0A0A0A0A0A0A0A0A0A0A0C0C0C0E0C0C0A0A08060604",
      INIT_48 => X"0406080A0C0C0C0C0A0A080A0A0C0C0A0A0A08080806060608080808080A0A0A",
      INIT_49 => X"171717191B1B1B1B1B1B1B1917151311110E0C08060404020202020202020202",
      INIT_4A => X"0A0A0A0A080A0A0A0808060402020000000000020408080A0A0A0C0F11131517",
      INIT_4B => X"0404060A11171D1D1D1B191513111111111311110C0A08060402020000020406",
      INIT_4C => X"060608080808060606080606060A0E131517191917171717151513110E0A0806",
      INIT_4D => X"0404040404040608080A0E0E11111111110E0C0A080806040404040404040406",
      INIT_4E => X"0E0E0E0C0C0A0808060606060404040606060606060606060606060606060404",
      INIT_4F => X"06060606060808080A0A0C0C0E0F0808080808080A0A0A0A0A0A0A0A0A0A0C0C",
      INIT_50 => X"0404040204020202020406080C11131313110E0C0A0A0A0A0A0A080806060606",
      INIT_51 => X"080A0A0C0D0F131517171717191B1B1B1D1D1D1D1B1B19171513110C08060404",
      INIT_52 => X"08060402020202020406080A0A0A080808080806040200000000020202020608",
      INIT_53 => X"17171513110F0C0806040404060A0E15191B1B1B171311110F11111313110F0C",
      INIT_54 => X"0404040404040404040404060608080806060606060606080C11131517171717",
      INIT_55 => X"0A0808080606060606060404040404040406080A0C0C0E0E0E0E0E0C0A080606",
      INIT_56 => X"0A0A0A0A0A08080A0A0C0C0E0E0E0C0C0A0A080808080608080808080A0A0A0A",
      INIT_57 => X"08080808080606060606060606060608080A0C0E0E111113060606060808080A",
      INIT_58 => X"1B191713110C0804040404040404040202020404080C111315151513110C0A0A",
      INIT_59 => X"00000002040202040608080A0C0C0F13151719171717191B1D1D1D1D1D1D1D1B",
      INIT_5A => X"110F0E1113131313110E0A060202020202040406080A0A080808080806040402",
      INIT_5B => X"04060A0E11131515151515151513110E0A080402020204080C13171919171511",
      INIT_5C => X"0A0C0C0A0A080806040404040404020404040404040406060808080806060604",
      INIT_5D => X"0A0A0A0A0C0C0C0C0E0C0C0C0A0A08080808080606060404040404040606080A",
      INIT_5E => X"1313060606060608080A0A0A0A0A080808080A0C0C0E0E0E0E0E0E0C0C0A0A0A",
      INIT_5F => X"131515151513110E0C0A0A08080808080606060606060606080A0C0E11111313",
      INIT_60 => X"191B1D1D1D1D1D1D1D1D1B191715110C08060606060606060404020204060A0E",
      INIT_61 => X"0808080808080604020000000202040404040608080A0C0F1315171919171517",
      INIT_62 => X"04060A0E1315151513110F0F0F111315151513110C060402040404040608080A",
      INIT_63 => X"040406060808080806040406080A0E1113151515151513110F0C0A0604020202",
      INIT_64 => X"0604040404040406060608080806060604040404040404020202020202040404",
      INIT_65 => X"0E11111111110E0E0C0C0C0C0C0C0E0E0E1111110E0E0C0C0A0A080808080808",
      INIT_66 => X"080A0C0E11131315151515150606060608080A0A0A0A0A0A08080808080A0C0E",
      INIT_67 => X"08080604040406080C0F1313151513110F0C0A0A080808080808080808060608",
      INIT_68 => X"0F131517191917151515171B1B1D1D1D1D1D1D1B1B191715110E0A0808080A0A",
      INIT_69 => X"0604040606060808080A08080808080806040404040606080808060606080A0C",
      INIT_6A => X"13110E0C08060402020204060A0E11131311110F0E0F0F111315171717130F0A",
      INIT_6B => X"02020202020202020404040406060608080806060406060A0E11131313151515",
      INIT_6C => X"0E0C0C0A0A0A0A0A0A0A08080604040404040404040404040404040402020202",
      INIT_6D => X"0A0A08080808080A0C0E0E111313131311110E0E0E0E0E0E0E1111111311110E",
      INIT_6E => X"0A0A0A0A0A0A0A08080A0A0C0E1113151517171515130608080808080A0A0A0A",
      INIT_6F => X"1513110E0C0A0A0A0A0C0A0A0806040406080C0E11111311110E0C0A0A0A080A",
      INIT_70 => X"1111110E0A08080A0C0F1315171919191513111317191B1D1D1D1D1D1D1B1B19",
      INIT_71 => X"0F11131517191915130C08060606080808080A0A08080A0808080808080A0E0F",
      INIT_72 => X"080A0E11131313131313110F0C0A08060402020204060A0C0E111111110F0E0F",
      INIT_73 => X"0402020202020202020202020202020202020204040404060606080808060606",
      INIT_74 => X"0E0E11111113131311110E0C0C0C0C0C0C0C0C0C0A0A08060404040404040404",
      INIT_75 => X"08080808080A0A0A0A0A0A0A0808060608080A0C0E11131315151311110E0E0E",
      INIT_76 => X"0F0E0C0A0A0A0808080A0A0A0C0C0C0E0C0C0C0C0E0E11131515171717151311",
      INIT_77 => X"1B1B1D1D1D1B1B19171513110F0C0A0A0A0C0C0C0C0A080806080A0A0C0E0F0F",
      INIT_78 => X"0808080A0A0E13151919191917130F0C0C0C0F131519191B1917131111131719",
      INIT_79 => X"0A0C0E111111110E0E0E0F1113151719191915110C080606060808080A0A080A",
      INIT_7A => X"040406060608080808080A0C0E111111111313110E0C0A0A0604020200020206",
      INIT_7B => X"0A08060404040202020202020202020202020202020202020202020202040404",
      INIT_7C => X"131315151313110E0E0E0E0E0E1111111311110E0E0C0C0C0C0C0C0C0C0C0C0C",
      INIT_7D => X"1315151717171513110E08080808080A0A0A0C0A0A0A0808080808080A0C0E11",
      INIT_7E => X"0A080A0C0C0E0F0F0F0E0C0C0A0A0A0A08080A0A0C0C0E0E0F0F110E0E111111",
      INIT_7F => X"1B1B191513111315171B1B1B1D1B1B19171513110F0C0C0A0A0A0A0C0C0C0C0A",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_35_out(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_35_out(8),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  port (
    p_31_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"080606080808080A080808080A0C1115191D1D1D1D1D1B171311111113151719",
      INIT_01 => X"0A080604020200000204080C0E11111111110F0E0E0F111317191B1917130F0A",
      INIT_02 => X"020202020202040404040404040606080808080A0A0C0E1111111111110E0C0A",
      INIT_03 => X"0A0A0C0C0C0C0E0E0E0C0C0A0808060404040202020202020202020202020202",
      INIT_04 => X"0808080808080A0C0E11131315131313110E0C0C0C0C0E0E0E111111110E0C0C",
      INIT_05 => X"0F11111113131313131315151717151513110C0C0A0A0808080A0A0A0A0A0A0A",
      INIT_06 => X"0A0A0A0A0C0C0C0C0A0A0C0C0F11131311110F0C0C0C0C0C0C0A0A0A0A0C0C0E",
      INIT_07 => X"1B17131313131517191B19191715131517191B1B1B1B1B1B1715130F0C0A0A0A",
      INIT_08 => X"1113171B1B1B1917130F0A080808080808080808080A0D13171B1D1F1F1D1D1D",
      INIT_09 => X"0E0F0F0F0E0E0E0C0A0808060604020200000204060A0C0E11111311110F0E0E",
      INIT_0A => X"0202020202020202020202020202020202040404040404040608080A0A0A0C0C",
      INIT_0B => X"0A0C0C0C0E0E0C0C0A0A0A0A0A0A0C0E0E0E0E0E0E0C0C0A0A08060404020202",
      INIT_0C => X"0808080A0A0A0A0A0A0A080808080808080A0C0E1113131313110E0C0C0A0A0A",
      INIT_0D => X"0F110F0F0E0C0C0C0E0F11131313151515151515151515151513110E0A080A0A",
      INIT_0E => X"191715110C0A060606080A0A0A0A0A0C0C0A0A0A0C11131515151513110F0C0E",
      INIT_0F => X"13171B1D1D1D1D1D1B1B191513131313151719191917151517191B1B1B1D1B1B",
      INIT_10 => X"0C0E1113151513110E0E1113171B1B1B1B1917110C08080808080808080A0A0C",
      INIT_11 => X"04060608080A0A0A0C0C0E0E0E0E0C0C0A0A0808080604020200000000020408",
      INIT_12 => X"0E0E0C0A08060404020202020202020202020202020202020202020404040404",
      INIT_13 => X"1111110E0C0A0808080808080A0A0A0A0A0A08080808080A0C0C0E0E0E0E0E0E",
      INIT_14 => X"151513110E0C08080A080808080808080808080808080808080808080A0C0E11",
      INIT_15 => X"151717171513110F0F11111313131311110F0F11111315151515151515151515",
      INIT_16 => X"1517191B1D1D1D1B1B1917130F0C0806040406080A0A0A0A0A0A0A08080A0E13",
      INIT_17 => X"080808080808080A0D13171B1D1D1D1D1D1D1B19171311111113131517171715",
      INIT_18 => X"040202000000000204060A0E131719191713110E0E1317191B1B1B1B17130F0A",
      INIT_19 => X"0202020404040404040406060808080A0A0A0C0C0C0E0C0C0A0A080606060606",
      INIT_1A => X"08080A0C0C0E0E0E0F11110E0E0C0A0806040202020202020202020202020202",
      INIT_1B => X"060606060606080A0C0E0E0E0E0C0A0806060606060606080808080606060606",
      INIT_1C => X"15151515151515151515151313110C0A08080A08080606060808080808080806",
      INIT_1D => X"0A0A0A080806080A0E1315171717171511111111131315151515131111111313",
      INIT_1E => X"0F0F11111315151515131517191B1D1D1B1B1915130E0A0806040406080A0A0C",
      INIT_1F => X"15191B1B1B1B19150F0C080808080808080A11171B1D1D1D1D1D1D1B19171311",
      INIT_20 => X"0A0A0806060404040404020000000000000204060A0E13191B1B1915110E0E11",
      INIT_21 => X"0204040404040404040404040404040404040404060608080808080A0A0A0A0C",
      INIT_22 => X"060606060606060406060606080A0A0C0E0E0F1111110E0E0C0A060404020202",
      INIT_23 => X"0606060606060606060606060606060606080A0C0C0C0C0A0808060604040606",
      INIT_24 => X"15171715151313131313151515151515151515131313110E0C0A0A0808080606",
      INIT_25 => X"060404040406080A0C0C0C0A0808060606080C11151717171513110F11111315",
      INIT_26 => X"1D1F1D1D1B1B1715110F0D0F0F0F11111313131317191B1B1B1B1B1915110C0A",
      INIT_27 => X"171B1D1B19150E0C0C10131719191B191715110C0A0A080808080A0C13171B1D",
      INIT_28 => X"08080808080808080A0A0A080606040404040402020000000000000204080A11",
      INIT_29 => X"0E0E0C0A08060404040404040404040604040404040404040404040406060606",
      INIT_2A => X"080808060606040606060606060606060606060606060608080A0C0C0E0F110E",
      INIT_2B => X"0F0E0C0A0A0A0606060404040404040404060606060404040404060608080A0A",
      INIT_2C => X"1513130F0C0C0E0F111315171715151515151313131515151515131313131111",
      INIT_2D => X"1B1B1B1B1917130E08060402020406080A0A0C0C0C0A0806040404080C0F1315",
      INIT_2E => X"0A0808080A0F15191D1D1D1D1D1D1B1B1715110C0C0C0D0F0F0F111113151719",
      INIT_2F => X"000000000204080C1115191B1B1917130E0A0A0E1113151719191715110F0C0A",
      INIT_30 => X"0606060606060606080808080808080808080808080806040402020402020200",
      INIT_31 => X"060606080A0A0C0E0E0E0E0E0C0A080604040404040606060606060606060606",
      INIT_32 => X"0404040404060608080808080606060606060606060606060808060606060606",
      INIT_33 => X"1313131313111111110E0C0C0C0C0C0C06040404040404040404040404040404",
      INIT_34 => X"060604020406080A0E0F110F0C0A0A080A0C0E11131515151517171515131313",
      INIT_35 => X"0C0C0D0F0F11131519191B1B191917130F0A0604020202020608080A0A0C0A0A",
      INIT_36 => X"13151719171513110F0C0C0A0A0A0F13171B1D1D1D1D1D1D1B1B17130F0C0C0C",
      INIT_37 => X"0604040404040402000000000002040A0E1317191B1B1917130E0A0A080C0E10",
      INIT_38 => X"0806060606060606060606060606060808080A0A0A0A08080806060606080808",
      INIT_39 => X"080A0A0A0A08080606060404040606080A0C0C0E0C0C0A0A0806060606060606",
      INIT_3A => X"0402020202040404040404040404060606060606060606060606060606060608",
      INIT_3B => X"13151515151515131313131313131111110F0C0C0A0A0A0C0C0C040404040404",
      INIT_3C => X"0204040608080A0A08060402020202040606080A0A0A0806060608080A0C1113",
      INIT_3D => X"1B1B1B1917130F0C0C0C0C0D0F0F1111131517171917171513110A0604020202",
      INIT_3E => X"17130E0C0808080A0C0E111517171715151513110C0C0C0F13171B1B1D1D1D1D",
      INIT_3F => X"0C0A08060606060808060604040404040404020202020204080F171B1D1D1D1B",
      INIT_40 => X"0A08060606060808080808080606060404040404040606060608080A0E11110E",
      INIT_41 => X"060606040606060608080A0C0C0C0C0C0A08060604040404040608080A0C0A0A",
      INIT_42 => X"0A0C0C0C04040404040402020202020202040404040404040606060606060606",
      INIT_43 => X"04040404040406080C0E111113151513131111111111131311110E0C0A0A080A",
      INIT_44 => X"13130F0C08040202020202020406060606060404020200000202020204040606",
      INIT_45 => X"0F1317191B1B1B1B1B1B1919191713110C0C0A0C0C0D0F0F1111131315151515",
      INIT_46 => X"02060C151B1D1F1F1D1915100C0A080606080A0C11131717151517171713110E",
      INIT_47 => X"040606080A0E15171715110C0808080808080606040404060608060404040402",
      INIT_48 => X"040204040406080808080808060608080A0A0A0A0A0A08060604040404040404",
      INIT_49 => X"0406060608080806060606060604060606080A0C0C0E0E0E0E0E0C0A08060604",
      INIT_4A => X"111311110E0C0A0808080A0C0C0C040404040404020202020202020204040404",
      INIT_4B => X"000000000000020202020202020202040406080A0C0E0F11111111110F0F1111",
      INIT_4C => X"0F0F0F111111111111110E0E0C08060402020202020202040404040402020200",
      INIT_4D => X"15171517191B191511111317191B1B191917171717171513110C0C0A0A0C0D0F",
      INIT_4E => X"0608080A08060606060404060C171D1F1F1F1D19130E0C08060606080A0C0E13",
      INIT_4F => X"08060604040404040404040606080C13191B1917130E0C0A0808080806060404",
      INIT_50 => X"1111110E0E0C0A08060404020204040608080808080808080A0A0C0C0C0C0C0A",
      INIT_51 => X"020202020404040404040606080808080808080806060606060606080A0C0E0E",
      INIT_52 => X"0C0E0E0E0E0C0C0C0E11111111110C0A080808080A0A0C0C0404040404040404",
      INIT_53 => X"020202020202000000000000000000000000020202020202020202040406080A",
      INIT_54 => X"110F0C0C0A0A0C0C0D0D0D0D0C0C0C0C0C0C0C0C0A0A08060402020202020202",
      INIT_55 => X"0A08060606080A0C0C11151517191B1B1915131115171B1B1917131313131313",
      INIT_56 => X"0C0C0A0A0A0806060406080A0A0C0A0A0808080604060E171D1F1F1D1B19130E",
      INIT_57 => X"0A0A0C0C0E0E0E0E0C0C0A0806040404040404040606080A0E1317191917130E",
      INIT_58 => X"06060606080A0C0E1111111111110E0C0A080604040204040406080A0A0C0C0C",
      INIT_59 => X"0A0C04040404040404040404040404040404060606080A0A0A0A0A0A0A080806",
      INIT_5A => X"02020202020202040606080A0A0C0C0A0A0A0C0F1111110E0C0A080606080A0A",
      INIT_5B => X"0604020202020202020202020000000000000000000000000000000002020202",
      INIT_5C => X"1B1B17130F0E0F1113110F0E0C0A0A0A0A0C0A0A0A0A0A0A0A0A080808080806",
      INIT_5D => X"0F171D1F1F1D1D1915110C08060608080A0A0C1115191B1B1B19171511111519",
      INIT_5E => X"0C0E131515151313110E0E0C0C0C0A080606080A0C0F1111110F0E0C0A060408",
      INIT_5F => X"040406080A0C0C0E0E0E0E0E0E0E0E0E0E0E0C0C0A080604040404040404080A",
      INIT_60 => X"0C0C0E0E0C0C0C0A080806060606080A0C0E1111131311110E0C0A0806040404",
      INIT_61 => X"0E0C0A08080608080A0A0A0A040404040606060606060606060606060808080A",
      INIT_62 => X"00000000000002020202020202020202020204060608080A0A0A080A0C0C0E0E",
      INIT_63 => X"0A0A0A0A0A080606060404020202020202020202020200000000000000000000",
      INIT_64 => X"1B1B19171513131315191B1B17130F0E0E0F11110F0C0A0A0A0A0A0A0A0A0A0A",
      INIT_65 => X"1919171715110C0604080F171D1F1F1D1D1B17130C0A08080A0A0A0A0F13171B",
      INIT_66 => X"04040404040406080E111517171715110E0E0E0E0E0E0C0C0A08080A0C111517",
      INIT_67 => X"11110E0C0A08060604040606080A0C0E1111111111110F0E0E0E0E0C0C0A0806",
      INIT_68 => X"080808080A0A0A0C0C0C0E0E11110E0E0C0C0A0808060606080A0C0E11111311",
      INIT_69 => X"08080A0808080A0C0C0C0C0A0A08060608080A0A0A0C06060606080808080808",
      INIT_6A => X"0000000000000000000000000000000202020202020202020202020204040606",
      INIT_6B => X"0A0A0A0A0A0A0A0A0A0A0A0C0C0E0E0A08060404020202020200000200020202",
      INIT_6C => X"0A0A0C0C0C0E11151B1D1B19151311111313171B1B1B1915130F0C0C0F0F0C0A",
      INIT_6D => X"0C0C0C0A0A0C13191B1D1D1D1D1D19150E0806080F171D1F1D1D1D1B19130E0A",
      INIT_6E => X"110F0E0E0C0C0C0A0806040404040406080E15191B1B1B1915110C0C0C0E0E0E",
      INIT_6F => X"0608080A0C0E11111111110E0C0C0A0808060606080A0C0E0F11111313131111",
      INIT_70 => X"08080808080A0A0A0A0A0A0A0C0C0C0C0C0E0E0E11111111110E0E0C0C0A0808",
      INIT_71 => X"02020202020204040606080808080808080A0C0C0A0A0806060608080A0A0A0A",
      INIT_72 => X"0202000000000202020202020000000000000000000000000002020202020202",
      INIT_73 => X"1B1917110C0A0A0A0A0A08080A0A0A0A0A0A0A0C0E111315150E080604020202",
      INIT_74 => X"1B1D1D1D1D1B17130E0C0C0C0E11111115191B1D1B17110F0E111517191B1D1D",
      INIT_75 => X"1D1B15110C0C0C0C0C0C0C0C0C0C0E13191D1F1F1F1F1F1F1D17110A08080C15",
      INIT_76 => X"0E111313131313131111110E0E0C0C0A0A0A08080806040406080E151B1D1D1F",
      INIT_77 => X"111111110E0E0C0A0A080808080A0C0E0E0E0F0E0E0E0C0C0A0A080808080A0C",
      INIT_78 => X"0806060608080A0A0A0A080A0A0A0A0C0C0C0C0C0C0E0E0E0E0E0E1111111111",
      INIT_79 => X"0000000202020202020202020202020204040606080808080808080A0A0A0A08",
      INIT_7A => X"1719150E08040202020200000000000202040404040202000000000000000000",
      INIT_7B => X"110C0C11151719191B1B1B1B19130E0A080A0A0808080A0A0A0A0A0C0C0E1315",
      INIT_7C => X"1F1F1F1B17110C0A0C131B1D1D1D1B1915110E0E0E1113151515171B1D1D1915",
      INIT_7D => X"0806080E151B1D1F1F1F1D1B17110C0C0C0C0C0C0C0C0C0E13191D1D1F1F1F1F",
      INIT_7E => X"0C0C0C0C0A0A0A0A0C0E1113151515151513110F0E0C0C0A0808080A0C0E0E0A",
      INIT_7F => X"0E0E0E0E11111111111111111111100E0C0C0A080808080A0C0E0E0E0E0E0C0C",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_31_out(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_31_out(8),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  port (
    p_27_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  signal ena_array : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"080808080808080808080606060608080A0A0A0A0A0A0A0A0C0C0C0C0C0E0E0E",
      INIT_01 => X"020000000000000000000000020202020402020202020202020204040608080A",
      INIT_02 => X"0C0C0C0C0E10101317191B19110A060402020000000000000002040606060404",
      INIT_03 => X"15171717191B1D1B19150F0C0C0E15171719191B1B1B1B17100E0C0C0C0C0C0C",
      INIT_04 => X"0E11171B1D1F1F1F1D1F1F1F1F1D1B17130E1115191D1D1B1917131111111313",
      INIT_05 => X"080806080A0E131717130E0E11151B1D1F1F1D1D1D1B15110C0A0A0A0A0C0C0C",
      INIT_06 => X"080A0C0E0E0E0E0E0E0E0E110E0E0E0E0E0E11111315151515151313110E0C0A",
      INIT_07 => X"0C0C0C0C0E0E0E0E0E0E110E1111111111111111111111110E0E0C0C0A080808",
      INIT_08 => X"02020202040406080A0A0A0A0808080808080806060606060808080808080C0C",
      INIT_09 => X"0000020406060606060402020000000000000000000002020202020202020202",
      INIT_0A => X"1B1915121212121210121212121212151517191B19170E080402020202020000",
      INIT_0B => X"1B19171513131313151517191919191B1B1B17130E0A0A0E1317171717191B1B",
      INIT_0C => X"15110C0A0A0A0A0C0C0E1315191D1D1D1D1D1D1D1D1D1D1D1D1B17151317191B",
      INIT_0D => X"1515151513110E0C0A08060404080E15191B1B19171517191D1D1D1D1D1D1B19",
      INIT_0E => X"100E0E0E0C0A0A0808080A0C0C0E0E0E0E0E0E11111111111111111111131315",
      INIT_0F => X"06060808080808080C0C0C0C0C0E0E0E0E0E11111111111111111111110F1111",
      INIT_10 => X"0202020202020202020202020202020406080A0A0A0A08080808080808060606",
      INIT_11 => X"0A06020202020000000000000204060606060604040200000000000000000002",
      INIT_12 => X"0A0C13171917171919191919191616161616171717171717171717191B1B1913",
      INIT_13 => X"1D1D1D1D1B1919191B1B1917151515151715151517191919191B1B1917110C0A",
      INIT_14 => X"1D1D1D1D1D1D1D1D1B1915100A08080A0C0E1315191B1D1D1F1D1D1D1D1D1D1D",
      INIT_15 => X"13131313131313131315151313110F0E0A0806060404040811171D1D1D1D1B1B",
      INIT_16 => X"0E0E0E0E0E0E0E0E0E0E0E0E0C0C0C0A0A0808080A0C0E0E1111111111131313",
      INIT_17 => X"0808060606060606060606060808080606060C0E0C0C0C0E0E0E0E0E0E11110E",
      INIT_18 => X"000000000000000002020202020202020202020202020202020406080A0A0A0A",
      INIT_19 => X"191919191B1B1B1B171108040202020202020000000002040608080806060402",
      INIT_1A => X"191919191917150F0C0A0A0C1017191919181919191918161616161717191919",
      INIT_1B => X"1D1F1F1F1D1D1D1D1D1D1D1D1D1D1B1B1B1B1B1B191917171717171715151719",
      INIT_1C => X"080C151B1D1D1D1D1D1D1D1D1D1D1B1B1B1B1B19130E0A080C0E1315191B1D1D",
      INIT_1D => X"0E0E1111131313131515151313131313131313131313110E0C0A080604040404",
      INIT_1E => X"0C0C0C0E0E0E0E0E0E0E0E0E0C0C0C0C0C0C0C0C0C0C0C0C0A0A0A0808080A0C",
      INIT_1F => X"0202020406080A0A0A0A0808060606060606060608080808080606060E0E0C0C",
      INIT_20 => X"0204060608080604020200000000000000020202020202020202020202020202",
      INIT_21 => X"18161616161617171719191919191B1B1B1B170E080404040404040402020202",
      INIT_22 => X"19191919191515151719191719191917130E0A0A0A0C10171919191919191919",
      INIT_23 => X"0A0C1115191B1D1D1F1F1D1F1F1F1D1D1D1D1D1D1D1B1B1B1B1B1B1D1B1B1B1B",
      INIT_24 => X"0E0C0A0806040406080A0C1317191B1B1B1D1D1D1D1D1D1D1D1B1B1B1917130E",
      INIT_25 => X"0A0A0A0A0A08080A0C0C0E101113131313151515151513131313131313131311",
      INIT_26 => X"0808080606060C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A0A0A0A0A080A0A0A0A",
      INIT_27 => X"02020202020202020202020202040406080A0A0A080806060606060606080808",
      INIT_28 => X"0A0C0C0C0C0C0A08060404040606060606040200000000000000020202020202",
      INIT_29 => X"1115191B1B1B1919191918161616171717171617191919191B1B1B1B17110C0A",
      INIT_2A => X"1B1B1B1B1B1B1B1B1D1D1B1B1B19171515151919191919191715130F0A0A080C",
      INIT_2B => X"1D1D1D1D1D1B1B1915131113171B1D1D1F1F1F1F1D1D1D1D1D1D1D1D1D1B1B1B",
      INIT_2C => X"1313111111111111110E0C0A080606060A0E111315171917171717191B1D1D1D",
      INIT_2D => X"0A0A0A0A0808080808080A0A0A0A0A08080A0C0C0E1113131315151517171515",
      INIT_2E => X"060606060808080808080808080806060C0C0C0A0A0A0A0C0C0C0C0C0C0C0A0A",
      INIT_2F => X"0000000202020202020202020202020202020202020202020406080808080808",
      INIT_30 => X"1919191B1B1B1915131313151517151515130F0C080604040604040202000000",
      INIT_31 => X"19171715130F0C08080A1115191B1B1B19191919171717171717171717171719",
      INIT_32 => X"1D1D1B1B1B1B1B1B1B1B191919191919191B1B1D1B1919171515131517191919",
      INIT_33 => X"1913111115191D1D1D1D1D1D1D1D1D1D1B1B191717191B1D1F1F1F1F1D1D1D1D",
      INIT_34 => X"131315151517171715151311110E0E0E0E0E0E0C0A080606060A1115191B1B1B",
      INIT_35 => X"0A0A0C0C0C0C0A0A0A0A0A0A0808080808080808080A0A0A0A0A0A0A0C0E0E11",
      INIT_36 => X"020204040608080806060606060808080A0A0A0A0808080808060C0C0A0A0A0A",
      INIT_37 => X"0806040402020200000000000202020202020202020202020202020202020202",
      INIT_38 => X"17171717171717171919191919191B1B1919191919191B1B1B1B1B1917130F0A",
      INIT_39 => X"1515151313151719171717171715130F0A08080A1115191B1B19191919191717",
      INIT_3A => X"1D1F1D1D1D1D1D1D1D1B1B1B1B1B1B19191919181818161616161819191B1917",
      INIT_3B => X"0606080E151B1D1D1D1B150E0A0A11191D1D1F1D1D1D1D1D1D1D1D1D1B1B191B",
      INIT_3C => X"0A0A0A0A0A0A0C0C0E111113151515171715151313110E0C0C0C0C0A0A080806",
      INIT_3D => X"080808080C0A0A0A0A080A0A0A0C0C0C0A0A0A0A08080A080808080808080A0A",
      INIT_3E => X"02020202020202020202020204040606060606060608080A0A0A0A0A0A0A0A08",
      INIT_3F => X"1B1D1D1D1D1D1B1917110C0A0806040202000002020202020202020202020202",
      INIT_40 => X"191B1B1B1B19191917171717171717171919191919191919191B1B1B1B1B1B1B",
      INIT_41 => X"161614161616161717151311111111131517171717171715130F0A08080C1117",
      INIT_42 => X"1D1D1D1D1D1D1D1B1B1D1D1F1D1D1D1B1B1B1B1B1B1B19191918161616161616",
      INIT_43 => X"0C0C0A0A0A080806060404060A11191D1D1D1B17110A06060C15191D1F1D1D1D",
      INIT_44 => X"0A0A0A0A0A0A0A0A0A0C0C0C0C0A0A0A0A0C0E0E11131315151515151513110E",
      INIT_45 => X"0A0C0C0C0C0A0A0A0A0A080808080A0A0A0A0808080A0A0C0C0C0A0A0A0A080A",
      INIT_46 => X"0202020202020202020202020202020202020202020202040404040606060808",
      INIT_47 => X"1B1B1B1B1D1D1B1B1B1B1B1B1B1B1B1B1B1B1B1915130F0C0604020202020202",
      INIT_48 => X"191713110C0A080C13171B1B1B1B1B191919171715151717171919191B1B1919",
      INIT_49 => X"1716161616141414141414141414141414141412100E100E1013151717171919",
      INIT_4A => X"0204080E151B1D1D1D1D1D1D1D1D1D1D1B1B1B1D1D1D1D1D1B1B1B1B1B191919",
      INIT_4B => X"13151515151513110E0E0C0A0808080606060404040408111719191715110A06",
      INIT_4C => X"0A0C0C0C0A0A0A0A0A0A0C0E0E0E0E0E0E0E0E0E0E0E0C0C0A0A0A0A0C0E1113",
      INIT_4D => X"0404040404060606080A0C0C0E0C0C0C0A0A0A0A0A0A0A0A0C0A0A0A08080A0A",
      INIT_4E => X"17130C0604020202020202020202020202020202020202020202020202020202",
      INIT_4F => X"1717191919191B1B1B1B1B1B1B1B1D1D1D1B1B1B1B1B1B1B1B1B1B1D1D1D1B1B",
      INIT_50 => X"0E0E1013171919191B1B1B1917130E0A0A0E151B1B1B1B1B1B1B191917151515",
      INIT_51 => X"1D1B1B1B1919191916161614141414121212121212121212121212141212100E",
      INIT_52 => X"060C0F11110E0C0806040204060A1117191B1B1B191B1B1B1B1B19191B1D1D1D",
      INIT_53 => X"0E0C0A0A0A0A0C0E111313151515131313110E0C0A0808060606040404040404",
      INIT_54 => X"0A0A0C0C0A0A0A080A0A0C0C0C0C0A0A0A0A0C0C0E1111131111111111111111",
      INIT_55 => X"020202020202020202020404040404040606080A0C0E0E0C0C0C0A0A0A0A0A0A",
      INIT_56 => X"1D1D1B1B1B1D1D1D1D1D1B19130A060202020202020202020202020202040404",
      INIT_57 => X"1B1B1B1B1919171517171919191B1919191B1B1B1B1B1B1B1D1D1D1D1D1D1D1D",
      INIT_58 => X"101010101212121210100E0E1015191B1B1B1D1D1D1D1B17130F1015191D1D1D",
      INIT_59 => X"171717151515191D1D1D1D1B1B19191919161614141212121210121210101010",
      INIT_5A => X"0606060404040402020404060808080604040404040406080A11151719171515",
      INIT_5B => X"151515151513131313110E0E0C0A0A0A0C0E1113151515151313110E0C0C0A08",
      INIT_5C => X"0E0C0C0A0A0A0A0A0A0A0C0C0C0C0A0A0A0A0A0C0C0C0C0C0A0A0A0C0C0E1113",
      INIT_5D => X"020202020204040404040404020202020202020404040406060606080A0C0C0E",
      INIT_5E => X"1D1D1D1D1D1D1D1D1F1F1D1D1D1D1D1B1B1D1D1D1D1B150E0804020204040202",
      INIT_5F => X"1D1B171515191B1D1D1D1B1B1B1B1B19171717191919191919191B1B1B1D1D1D",
      INIT_60 => X"10100E0E0E0E0E0E0E0E0E0E0E1012121414141212121517191B1B1B1D1D1F1D",
      INIT_61 => X"0A0A0A0A0E1111110E0E0E0E0E0E0E11171B1D1D1D1B1B191917161414121210",
      INIT_62 => X"15151311110E0C0A080606040404040202020202020204040402040406080A0C",
      INIT_63 => X"0C0C0C0A0C0C0E11131517171717171715151313110E0A0A080A0C0E11131315",
      INIT_64 => X"0606060608080A0C0C0E0C0C0C0A0A0A0A0A0A0A0C0C0C0C0C0A0C0C0C0C0E0C",
      INIT_65 => X"170F080402040404040202020202040404040404040402020202020202040406",
      INIT_66 => X"191919191B1B1B1D1D1D1D1D1B1B1D1D1D1F1F1F1F1F1F1D1D1B1B1B1D1D1D1B",
      INIT_67 => X"171919191B1B1D1D1D1D1D1D1B1B1B1B1D1D1D1B1B1B1B1B1B19191719191919",
      INIT_68 => X"19191716141210100E0E0C0C0C0C0C0C0C0C0C0C0E0E0E101214161717171717",
      INIT_69 => X"0202020204060C111515130E0A08080A0C0A0808080808080A0E151B1D1D1D1B",
      INIT_6A => X"0A08080A0C0E11131315151513110E0C0A080606040404040202020202020202",
      INIT_6B => X"0C0C0C0C0C0E0E0E0E0E0C0C0C0C0C0E1113151717171919171715151313110E",
      INIT_6C => X"040404040402040406060808080A0A0A0C0C0C0C0C0A0A0A0A0A0A0A0A0A0A0C",
      INIT_6D => X"1F1D1D1B1919191B1B1B17110804040204020202020202020404040404040404",
      INIT_6E => X"1919191919191919191513131517191B1B1D1D1D1D1D1B1B1D1D1D1F1F1F1F1F",
      INIT_6F => X"1012141616191919191919191B1B1B1B1B1D1D1D1D1D1D1D1D1D1D1D1D1B1B1B",
      INIT_70 => X"0406080C13191D1D1D1B1919171414100E0C0A0A0808080808080A0A0C0C0E0E",
      INIT_71 => X"0402020202020202020202020404080E13191B1B19130C080606060606060606",
      INIT_72 => X"19191917151513110E0C0A08080A0C0E111313131313110F0C0C080806060404",
      INIT_73 => X"0A0A0A0A0A0A0A0A0A0A0C0C0C0E0E111111110E0E0C0C0C0E0E111315171719",
      INIT_74 => X"0202020204040404040606060606060404040608080A0A0C0C0C0C0C0C0C0A0A",
      INIT_75 => X"1B1B1D1D1D1D1D1F1F1F1D1D1D19171717191B1B170F08040402020204020202",
      INIT_76 => X"1B1B1D1D1D1D1D1B1917151517191919191915110E0E1317191B1B1D1D1D1D1D",
      INIT_77 => X"060608080A0C0C0E101012141618191919191919191B1B1B1B1B1B1B1B1B1B1B",
      INIT_78 => X"110A06060606060404040404060A10171B1D1D1B1B19171412100C0A08080606",
      INIT_79 => X"110E0C0A08060404040402020202020202020204040406080C13191B1D1D1B17",
      INIT_7A => X"0E0E0E1111131517171719191917151513110E0A080606080A0E101113131311",
      INIT_7B => X"0C0C0C0C0C0C0A0A0A0A0A0A0A0A0A0A080808080C0C0E0E1111111111110E0E",
      INIT_7C => X"0C08080604020202020202020202040404060608080808080806060606080A0A",
      INIT_7D => X"15191B1B1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D191715171719191711",
      INIT_7E => X"1B1B1B1B1B1B1B191919191B1B1D1D1D1D1B1915111315191919191915110E10",
      INIT_7F => X"1714120E0C080806080808080A0C0C0E10121214141616181818191919191919",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_27_out(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_27_out(8),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(3),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => addra(14),
      I1 => addra(15),
      I2 => addra(13),
      I3 => addra(12),
      O => ena_array(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  port (
    p_23_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"080A11171B1D1D1D1B17110A0606060606060604040404080C15191D1D1D1B19",
      INIT_01 => X"06080A0C0E11111111110E0C0A08060404040402020202020202020404040606",
      INIT_02 => X"0E11131313131111110E0E0E1111131515171717171717171513110E0C0A0806",
      INIT_03 => X"0A0A0808060608080A0A0C0C0C0C0A0A0A0A0A0A0A0C0C0C0A0A080808080C0C",
      INIT_04 => X"1D1B171515171919191513110E0A0604020202020202020204040608080A0A0A",
      INIT_05 => X"17191B19191917151517191B1B1D1D1D1D1D1D1D1D1D1B1D1B1B19191B1B1D1D",
      INIT_06 => X"161616161616181919191B1B1B1B1B1B1B1B191919191B1D1D1D1D1B19171315",
      INIT_07 => X"06060A11171B1D1D1D1B1714100E0A0A0A0A0C0C0E0E0E101012121414141616",
      INIT_08 => X"02020204040406060606080A0E15191B1D1B19150E0806060606060606040404",
      INIT_09 => X"151513110E0C0A0806040606080A0C0E0E0E0E0E0C0A08060404040202020202",
      INIT_0A => X"0C0C0C0A080806060C0C0E111313131313111111111113131515171717171717",
      INIT_0B => X"0202040606080A0A0A0A0A0A0808060608080A0A0A0A0A0A0A0A0A0A0A0C0C0C",
      INIT_0C => X"1D1B1B19171517191B1D1D1D1B191719191B1B19191715110A06020202000002",
      INIT_0D => X"1B1D1D1D1D1B1B191919191B1B1B1B1B191919191B1B1D1D1D1D1D1D1D1D1D1D",
      INIT_0E => X"1212141414141616161616161616161618181919191B1B1B1B1B1B1B19191919",
      INIT_0F => X"0606060606060606040406060A0E151B1D1D1D1B1712100E0C0C0E0E10121212",
      INIT_10 => X"0606040202020202020202020204040606060808080A0C1115191B19150E0A06",
      INIT_11 => X"151515171717171715151313110E0C0A08060604040606080A0C0C0C0C0C0A08",
      INIT_12 => X"08080A0A0A0C0C0C0E0E0E0E0C0A080806060C0C0E1113131313131111111113",
      INIT_13 => X"1B170F080402000000020202040608080A0A0A0A0A0A080806060608080A0A08",
      INIT_14 => X"1D1D1D1D1D1D1D1D1D1D1D1B191713131517191B1D1D1B1B1B1B1B1B1D1D1D1B",
      INIT_15 => X"19191B1B1B19191819191B1D1D1D1D1B1B1B1B1B1B1B1B191B1B1B1B1B1B1B1D",
      INIT_16 => X"0E0E0E1012141416171614141414141616161616161616161616181819191919",
      INIT_17 => X"0A0E131717130E0806060606080A0808060404040406080C13191B1D1D191712",
      INIT_18 => X"060608080A0A0A0A08060604040202020202020202020404060608080808080A",
      INIT_19 => X"111313131311111313151517171717171715151313110E0E0C0A080606040404",
      INIT_1A => X"0806060606060808080808080A0C0C0C0E0E0E0E0E0E0C0C0A0808060C0C0E11",
      INIT_1B => X"1D1D1D1B1B1D1D1D1D1D1B19130C060202000000020204060608080A0A0A0A08",
      INIT_1C => X"1919191B1B1B1B1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B191511111315191B1B1D",
      INIT_1D => X"1616161818181818191919191B1B1918181819191B1B1D1D1B1B1B1B1D1D1B1B",
      INIT_1E => X"080C10151B1D1D19171210101214161617191917171716161616161616161616",
      INIT_1F => X"0406060608080A080A0A0A0A0E110E0C0806060406080C0E0E0C080604040606",
      INIT_20 => X"0E0C0A0808060604040404060606080808080606040402020202020202020204",
      INIT_21 => X"0C0C0A0A08080C0C0E0E11111111111113131515171719191717171513131111",
      INIT_22 => X"04040606080808080808060606060606060808080A0A0C0E0E0E0E0F11110E0E",
      INIT_23 => X"19151111131719191B1B1B1D1D1B1B1D1D1D1D1D1D1B19110A04020000000202",
      INIT_24 => X"1B1B1B1B1B1B1D1B1B191919191B1B1B1D1B1B1D1D1D1D1B1B1D1B1D1D1D1B1B",
      INIT_25 => X"1916161616181616161616161618181818181818191919191818181919191B1B",
      INIT_26 => X"101515120C0A0608080A0A0C1015191B1D191714141416161719191919191719",
      INIT_27 => X"020202020202020204060608080808080A080A0808080A0A080606060404060A",
      INIT_28 => X"191917171715131311110E0C0A08080606040404040404060606060606040404",
      INIT_29 => X"0E0F1111110F0E0E0E0E0C0C0C0A0A0A0C0C0C0E111111111111131315171719",
      INIT_2A => X"19170F08040200000202020404040606060606060606060606060608080A0C0E",
      INIT_2B => X"1D1B1B1B1D1D1D1D1B1B17131011131719191719191B1D1D1D1B1B1B1B1B1B1B",
      INIT_2C => X"1918181818191919191B1D1B1B1B1B1B1B1B1917171717191B1B1B1B1B1B1B1D",
      INIT_2D => X"191819191B1B1919191919191919161616161616161616161616161818181919",
      INIT_2E => X"0606060404040404040810171917130E0C0E0E1010121517191B1B1B19191918",
      INIT_2F => X"040404040404040402020202020202020204080C0C0C08080808080808080606",
      INIT_30 => X"111111111113151517171717171717151313110E0E0C0A080806060404040404",
      INIT_31 => X"08080808080A0A0C0E0F1111110F0E0E0C0C0C0C0C0C0C0C0A0A0C0C0C0E0E11",
      INIT_32 => X"1B1B1B1B19171719191B1B19130C060200020202020202040404040406060606",
      INIT_33 => X"1517191B1B1B19191B1D1D1B1B1D1D1D1D1B1B1917130E0E1115171715151719",
      INIT_34 => X"161616161616181818181918181819181919191B1B1B1B1B1B1B1B1917151513",
      INIT_35 => X"1919191B1B1B1B191B1B1919191B1B1B19191919191919191616161616161616",
      INIT_36 => X"0A08080806060606060606060404040404040408101719191715151515171717",
      INIT_37 => X"0A0808060604040404040404040404040404020202020202020202060C131311",
      INIT_38 => X"0E0C0C0A0C0C0C0E0E0E0E0E0E111113151517171717171715151313110E0C0C",
      INIT_39 => X"02020202040406060608080808080A0A0C0E11111111110E0C0C0C0A0C0C0C0E",
      INIT_3A => X"0E0C0F13151311111317191B1B19171513131517191917110804020202020202",
      INIT_3B => X"1B1B1B1B19171511111113151719191717171B1D1D1D1D1D1D1D1B1B1B191511",
      INIT_3C => X"19161616161616161616161616161616161818181818181919181819191B1B1B",
      INIT_3D => X"19191919191919191B191919191B1B191B1B1B1B19191B1B1B1B191919191919",
      INIT_3E => X"0202020202060E1515110A060606060606060606060604040404040404081017",
      INIT_3F => X"171515151311110E0C0C0A0A0808060404040402040404040404040402020202",
      INIT_40 => X"0E0C0C0A0A0A0C0C0E0E0E0E0C0C0C0C0E0E0E0E0E0E0E111113131315151517",
      INIT_41 => X"19130C08060808080806040404040404060608080808080A0A0C0E1111111111",
      INIT_42 => X"1D1D1D1D1B1B1B1915100C0A0C0F110F0C0C0F13171B1B1B1713110F11131719",
      INIT_43 => X"191919191819191B1B1B1B1B1B1B191713100E0E10131719171315171B1D1D1D",
      INIT_44 => X"1B1B1B1919191919191919161616161414161616161616161616161818181816",
      INIT_45 => X"04040404040406081015171917191B1B1919191919191919191919191919191B",
      INIT_46 => X"040404040404020202020202020202060C11110E080604040404040606060606",
      INIT_47 => X"0E11111111131313151515151515131311100E0E0C0A0A080606040404040404",
      INIT_48 => X"0A0A0C0E11111111110E0C0A080808080A0C0E0E0E0E0E0C0E0E0E0E0E0E110E",
      INIT_49 => X"1B1B1915110E0E1115191917131111131313110E0C0A0806060606060808080A",
      INIT_4A => X"1515131115191D1D1D1D1D1D1D1B1B1B1B19130E0A08080A0C0A0A0A0C111519",
      INIT_4B => X"16161616161618181717191B19191919191B1B1B1B1B1B1B191715130E0E1013",
      INIT_4C => X"171717191919191919191B1B1B19191919191919171616141414141416161616",
      INIT_4D => X"0404040404040404040404040404040404080E15191717191B1B191919191917",
      INIT_4E => X"0C0A080606040404020204040404040202020202020202020204080A0A080604",
      INIT_4F => X"0E0E0E0E0E0E11110E0E0E10111111111113131315151515171515131311100E",
      INIT_50 => X"0F0C0A080808080A0A0A0C0C0E0E111111110F0C0A08060608080A0C0E0F110F",
      INIT_51 => X"0606080808080A0C13171B1D1B19130F0C0F131719191917191B1B1B19171513",
      INIT_52 => X"1B1B1B191915100E0E10100E0E13191B1B1D1D1D1B1B1D1B1B1B1B17130C0A06",
      INIT_53 => X"1614141414141616161616161616161616161919191B1B191919191B1B1B1B1B",
      INIT_54 => X"17191919191919191717171717171717171919191B1B1B191919191919191716",
      INIT_55 => X"0202020204040404020202040404040404040404040402040404040A10151717",
      INIT_56 => X"1719191919191717151513110E0A080604040202020204040202020202020202",
      INIT_57 => X"060606080C0E111111110E0E0E0E111111110E0E0E0E0E0E0E0E111113151717",
      INIT_58 => X"1B1D1D1F1F1F1D1D1B1B1715130F0C0C0C0C0C0C0C0C0E0E11131313110E0A08",
      INIT_59 => X"1B1B1B1B1917110C0806040608080808080A1115191B1D1915110F111315191B",
      INIT_5A => X"191919191B1B1B19191B1B1B1B1B1917100E0C0C0C0E13171B1B1B1B1B1B1B1B",
      INIT_5B => X"1B1B191919191919171616141414141416161616161616161616161619191919",
      INIT_5C => X"02020404060C121719171717171717171919191919171717171717171717191B",
      INIT_5D => X"0202020202020202020202020202020202020204020404040404040404040402",
      INIT_5E => X"0E0E0E1113151719191B1B1B1D1D1D1B1B1B1919191715110C0A060404020202",
      INIT_5F => X"0E0F1315151715130E0C0A08080A0C0E11131311110E0E0E0E1111110E0E0E0E",
      INIT_60 => X"1B1B17130F111317191D1D1F1F1F1F1F1F1F1F1D1D1B19171513131313110E0E",
      INIT_61 => X"171B1B1B1B1B1B1B1B1B1B1B1B1B1915100A0604040406080808080A0F15191B",
      INIT_62 => X"16161616161619191919191919191B1B1B1919191B1B1B1B1B17130E0E0C0E13",
      INIT_63 => X"171717171719191719191B1B1B19191919191716161614141414141616161616",
      INIT_64 => X"0404040404040404040404040406080E15191919191917171717191919191917",
      INIT_65 => X"1917130E0A080404020202020202020202020202020202020202020202020202",
      INIT_66 => X"0E0E0E0E0E0E0E0E0E0E0E0E131517191B1B1D1D1D1D1D1D1D1D1D1D1D1D1D1B",
      INIT_67 => X"1D1B1B1919191715110F0F1317191B1B1B1915130F0C0A0A0E11131313131111",
      INIT_68 => X"0406080808080C13171B1D1B1915131315171B1D1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_69 => X"1B1B1B191513131315171B1D1B1B1B1B1B1B1B1B1B1B1B1B19150E0806040204",
      INIT_6A => X"1614141414161616181616161616161619191919191919191B1B1B191919191B",
      INIT_6B => X"1B19191B1B1B1B1B1919171717191919191919191B1B1B1B1919191919161616",
      INIT_6C => X"0202020202020202020202040404040404040404040404060C1217191B1B1B1B",
      INIT_6D => X"1F1F1F1D1D1D1D1D1D1D1D1B1917130E0A060402020202020202020202020202",
      INIT_6E => X"0E0C11131515151313130E0E0E0E0E0E0C0C0C0E0E1315191B1B1D1D1D1D1D1F",
      INIT_6F => X"1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1B1713131315191B1D1D1D1D1B191511",
      INIT_70 => X"1B1B19150C060402020404060808080A0C11171B1B1B1917151517191D1F1F1F",
      INIT_71 => X"1919191B1B1B1919191B1B1B1B191917171719191B1B1B1B1B1B1B1B1B1B1B1B",
      INIT_72 => X"1B1B191919191917171616161614161616181818161616161616191919191919",
      INIT_73 => X"080A1017191B1D1D1D1D1D1B1B1B1B1B1B1B1919191719191919191919191B1B",
      INIT_74 => X"0202020202020202020202020202020202020202020404060606060606060606",
      INIT_75 => X"191B1D1D1D1F1F1D1D1D1F1D1D1D1D1D1D1D1D1D1D1D1D1B1915100A04020202",
      INIT_76 => X"191B1B1B1B1B1B191713110E11131515151513130C0C0C0C0C0C0C0C0C0E1315",
      INIT_77 => X"1B1B1B191B1B1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1B19171717",
      INIT_78 => X"191919191B1B1B1B1B1B1B1B19130C0604020202040608080A0A0C1115191B1D",
      INIT_79 => X"161616181919191919191919191B1B1B1919191919191919191919191B1B1B1B",
      INIT_7A => X"1717171719191919191B1B191919171919171717171616161616161819181616",
      INIT_7B => X"080A0C0C0C0C0C0A0A0A0C0E15191B1D1D1D1D1D1D1D1D1B1B1B1B1B19191917",
      INIT_7C => X"1D1D1D1B150E0804020202020202020202020202020202020202020202040406",
      INIT_7D => X"0A0A0A0A0A0A0C1115191B1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B1D1D1D",
      INIT_7E => X"1F1F1F1F1F1D1B191717151517171715151513110E0E13151717171513110C0A",
      INIT_7F => X"080A0A0A0C0F15191B1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_23_out(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_23_out(8),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized14\ is
  port (
    p_19_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized14\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized14\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized14\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"191919191919191919191919191B1B1B1B1B1B1B1B1B19130C06040202020406",
      INIT_01 => X"16161616161819181616161616191919191919191919191B1B1B191919191919",
      INIT_02 => X"1D1B1B1B1B1B1919191715101010131719191919191919191919191917171717",
      INIT_03 => X"0202020202040406080C0E1012121212121210101014191B1D1D1D1D1D1D1D1D",
      INIT_04 => X"1B1B1B1B1B1B1B1B1D1D1D1D1D1D171008040202020202020202020202020002",
      INIT_05 => X"13151717171513110A0A080808080A0C0E13191B1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_06 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1915110F0E0E0E0E0E0C0C0C0A0C0E",
      INIT_07 => X"17110A060404020204060A0A0C0C0C1115191B1D1D1B1D1D1D1D1D1F1F1F1F1F",
      INIT_08 => X"19191B1B191919191919191B191919191919191919191B1B1B1B1D1D1B1D1B1B",
      INIT_09 => X"1919191919191917171717161616161919181616161616191B19191919191919",
      INIT_0A => X"1B1D1D1D1D1D1D1B1D1D1D1B1B1B1B1B1B1B1917100C0A0A0E15171919191919",
      INIT_0B => X"02020202020202020202020202040406080A0E12141717171716161614141719",
      INIT_0C => X"1D1D1D1D1D1D1D1D1D1B1B1B1B1919191B1B1B1D1D1D1D1D19110A0402020202",
      INIT_0D => X"08080808060606060A0E111517171715110F080806060606080C11171B1D1D1D",
      INIT_0E => X"1B1B1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D17110C0A08",
      INIT_0F => X"1B1B1B1B1D1B1B1D1B19150E08060404040406060A0A0C0C0F1315191B1D1B1B",
      INIT_10 => X"191919191B1B1B1B1B191919191B19191919191919191919191919191B1B1B1B",
      INIT_11 => X"0A0A0E131719191B1B1B1B191919191919171717171717161618191818181616",
      INIT_12 => X"1919191818161617191B1D1D1F1F1D1D1D1B1B1D1D1D1B1B1B1B1D1B1917100C",
      INIT_13 => X"1D1B171008040202020202020202020202020202020406080A0C0E101417191B",
      INIT_14 => X"0406080C13191B1D1D1D1D1D1D1D1D1D1B1B1B1B191919181618191B1B1B1B1D",
      INIT_15 => X"1F1F1F1D1D17110A08060606060404040406080C0F1315151513110E06060404",
      INIT_16 => X"0F111315171B1B1B1B191B1B1B1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_17 => X"19191919191B1B1B1B1B1B1B1B1B1B1B1B1B1B17130C08060606060608080A0C",
      INIT_18 => X"17171716191819191817191919191B1B1B1B1919191919191919191919191919",
      INIT_19 => X"1D1D1D1D1D1B1B19151110101517191B1B1B1D1D1B1919191919191919171717",
      INIT_1A => X"0A0E10121416161B1B1B1B1B1919191919191B1D1F1F1D1D1D1D1D1B1B1B1D1D",
      INIT_1B => X"161616181818191B1B1B1B1B150E080402020202020202020204040404060608",
      INIT_1C => X"1111110F0C0A0606040404060A0E151B1D1D1D1D1D1D1D1D1B1B1B1919191716",
      INIT_1D => X"1F1F1F1F1F1F1F1F1F1F1F1F1D1D1B150E0806060606040404040404060A0C0F",
      INIT_1E => X"08080808080A0A0A0C0F11131519191B1B1B1B19191B1B1B1D1D1D1D1D1D1D1D",
      INIT_1F => X"19191919191919191919191919191B1B1B1B1B1B1B1B1B1B1B1B1B1B1917110C",
      INIT_20 => X"1919191919191919191919191917191819191919191919191B1B1B1B1B191919",
      INIT_21 => X"1D1D1D1D1D1B1B1D1D1D1D1D1D1D1D1B1B1B1917171719191B1B1B1D1D1D1B19",
      INIT_22 => X"06060608080A0A0C0E1012141619161818191B1B1B1B1B1B1D1B1B1B1D1F1F1F",
      INIT_23 => X"1D1B1B1B1919171616141414161616161819191B1B19150E0806040404040404",
      INIT_24 => X"04040404040406080A0C0E0E0C0C0A080404040404060A11171B1D1D1D1D1D1D",
      INIT_25 => X"1B1D1B1B1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1D1B17110A0806060604",
      INIT_26 => X"1B1B1B1B1B1B17150F0C0A0A0A0A0A0C0F0F0F11131519191B1B1D1B1B1B1B1B",
      INIT_27 => X"1B1B19191B1B1B1B191919191919191919191919191919191B1B1B1B1B1B1B1B",
      INIT_28 => X"1B1B1B1B1D1D1D1B1B191919191919191919191919191917181919191919191B",
      INIT_29 => X"1B1D1F1D1D1D1D1F1F1D1D1D1D1D1D1B1D1D1D1D1D1D1D1D1D1D1B1B1B1B191B",
      INIT_2A => X"15100C08060608080A0A0C0C0E1010121212141616191919181818181B1B1B1B",
      INIT_2B => X"0A13191B1D1D1D1D1D1D1B1B1B19171614141212121414161616161919191919",
      INIT_2C => X"1D19110C080606080808060404040406060608080A0A0A080806060404040406",
      INIT_2D => X"191B1B1D1B1B1B1B1B1D1D1D1D1B1B1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1D",
      INIT_2E => X"19191B1B1B1B1B1B1B1B1D1D1B1B1B1B17130F0E0C0C0C0C0F11131313131517",
      INIT_2F => X"19171919191919191B1B1B1B1B1B1B1B1B1B1919191919191919191919191919",
      INIT_30 => X"1D1D1B1B1B1B1B1B1B1B1D1D1B1B1B1B1B1B1917171919191919191919191919",
      INIT_31 => X"191B181818181B1B1B1D1D1F1F1D1D1D1D1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_32 => X"141414161617191919191714100E0C0E0E0E1012121414161717171919191919",
      INIT_33 => X"060604040604040404080C15191D1D1D1D1D1D1B1B1B19161614121210101212",
      INIT_34 => X"1D1F1F1F1F1F1D1F1F1D1B150E0806080A0E0E0E0A0804040406060606060606",
      INIT_35 => X"0F1113151515151717191B1B1D1B1B1919191B1B1B1B1B1B1B1B1B1D1D1D1D1D",
      INIT_36 => X"191919191919191919191919191B1B1B1B1B1B1B1B1B1B1B1B1915130F0F0F0F",
      INIT_37 => X"1719191919191919191919191719191919191B1B1B1B1B1B1B1B1B1B1B191919",
      INIT_38 => X"1D1D1D1D1D1D1D1D1D1D1D1D1B1D1B1B1B1B1D1B1D1B1B1B1B1B1B1917151315",
      INIT_39 => X"1919191B191919181818181818181618191B1D1D1F1F1D1B1B1B1D1D1D1D1D1D",
      INIT_3A => X"16141212100E0E0E101214141416171719191919191714121214141416161619",
      INIT_3B => X"08060606060404040402020202020604040406080E151B1D1D1D1D1D1D1B1B19",
      INIT_3C => X"1B1B1B1B1B1D1D1D1D1D1D1D1D1D1F1F1D1D1D1D1B150C08060A11151715110E",
      INIT_3D => X"1B1B1B1915110F1111111313151717171719191B1B1B1B191513131315171919",
      INIT_3E => X"1B1B1B1B1B1B1B1B19191919191919191919191919191B1B1B1B1B1B1B1B1B1B",
      INIT_3F => X"1B1B1B1B191713111011151719191B1B1919191919191919191919191B1B1B1B",
      INIT_40 => X"1B1919191B1B1D1B1B1B1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B1B1B1B1B1B1B",
      INIT_41 => X"161416161616181818181818191B191818181818181818161618191B1D1D1F1D",
      INIT_42 => X"1B1D1D1D1D1D1B1B19171412100E0E0C0C0E1012141414141717171919191917",
      INIT_43 => X"0F0A080C13191B1B19130E0A0A0A0804020202000202000004040404060A1117",
      INIT_44 => X"1915110C0A0A0E11131719191B1B1B1B1B1B1B1D1D1D1D1D1F1F1F1F1D1D1B17",
      INIT_45 => X"191B1B1B1B1B1B1B1B1B1B1B19171511111113131315171719191919191B1B1B",
      INIT_46 => X"19191919191B1B1B1B1B1B1B1B1B1B1B1B1B1919191919191919191919191919",
      INIT_47 => X"1D1B1B1B1B191717171719191919191713100E11151919191B1B191919191919",
      INIT_48 => X"16161616191B1D1F1D1D19171617191919191B1B1B1D1D1D1D1D1D1D1D1D1D1D",
      INIT_49 => X"1414161717191919171616161616161618181818181818181818181818181816",
      INIT_4A => X"000004040404060A11191D1D1D1D1D1D1B19191412100E0C0C0A0C0E10101212",
      INIT_4B => X"1D1D1F1F1F1F1D1D1D19130C080A11171B1B1B17131111110A06020000000000",
      INIT_4C => X"171719191B1B1919171715110C080606080A0C1317191B1B1B1B1B1B1B1D1D1D",
      INIT_4D => X"1919191919191919191919191B1B1B1B1B1B1B1B1B1919171515171515151515",
      INIT_4E => X"1B1B1B1B191919191919191919191B1B1B1B1B1B1B1B1B1B1B1B1B1B1B191919",
      INIT_4F => X"1D1D1D1D1D1D1D1D1D1D1D1D1B1B1915110E0E11151719191715131111131719",
      INIT_50 => X"1818181818181616161616161416191B1D1D1D1B1916141617151515191B1B1B",
      INIT_51 => X"0E0C0C0A0A0C0C0E101012141417171917171616161616161616161616161616",
      INIT_52 => X"17150C06020000000000000004040404060A13191D1D1D1D1D1B1B191714100E",
      INIT_53 => X"171719191B1B1B1D1D1D1D1D1F1F1F1F1D1D1D1B150C06080C13151717171517",
      INIT_54 => X"1917191B1B1B19171515171719191919171513110E0C080604020406080E1517",
      INIT_55 => X"1B1B1B1B1B1B1B19191919191919191919191919191919191B1B1B1B1B1B1B19",
      INIT_56 => X"151717151311131519191B1B1B1919191919191919191B1B1B1B1B1B1B1B1B1B",
      INIT_57 => X"141412100E1015171B1B1B1B1D1D1D1D1D1D1D1D1D1D1D1B19150E0C0A0C0E13",
      INIT_58 => X"161616161616161616161616181816161616161614141416191B1D1D1D191614",
      INIT_59 => X"1D1D1D1B1B191412100E0E0E0C0A0A0C0C0C0C0E101012141616161414141416",
      INIT_5A => X"0604060A0C0F1113151719150C06020000000000000004040404060A11191D1D",
      INIT_5B => X"060404020204080E1515151315171B1B1B1D1D1D1D1F1F1F1F1F1F1D1D1B170C",
      INIT_5C => X"1919191919191919191919191B1D1D1D1D191717171717171513110E0C0A0808",
      INIT_5D => X"1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1919191919191919191919191919",
      INIT_5E => X"1D1B1B17130E0A0A0A0E101315131313151719191B1B1B191919191919191B1B",
      INIT_5F => X"1416191B1D1D1B1916161414120E0A0C101519191B1B1D1D1D1D1D1D1D1D1D1D",
      INIT_60 => X"1012121414141414141616161616161616161416161616161616141414141414",
      INIT_61 => X"04040404060A11171B1D1D1D1D1B1B1914120E0E0E0E0E0C0C0C0A0A0A0C0C0E",
      INIT_62 => X"1D1F1F1F1F1D1D1B150C040202040608080C1115151108040000000000000000",
      INIT_63 => X"15130F0C0A0806060404040202020202080E131513111315191B1D1D1D1D1D1D",
      INIT_64 => X"191919191919191919191919191919191919191917191B1D1D1D1D1B19171717",
      INIT_65 => X"1B1B1B191919191B191B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B191919",
      INIT_66 => X"1B1D1D1D1D1D1D1D1D1D1D1B1B1917130E0E0C0C0E1012121215171719191B1B",
      INIT_67 => X"161616141414141414141416191B1B1B1B1916161414120E0A0C0E1115191B1B",
      INIT_68 => X"100E0E0E0E0C0C0C0E0E10121214141414141416161616141414141414141616",
      INIT_69 => X"0602000000000000000004040404060811171B1D1D1D1D1B1B1914120E0E0E10",
      INIT_6A => X"1115191B1D1D1D1D1D1D1F1F1D1D1D1D1B170E0802000002020204060A0C0E0A",
      INIT_6B => X"191D1D1D1D1B1715151513110C0A080604040202020200000002080E1313110F",
      INIT_6C => X"1B1B1B1B1B1B1B191919191919191B1B1B19191B191919191919191B19171717",
      INIT_6D => X"10121517171919191B1B1B1B1B19191919191B1B1B1B1B1B1B1B1B1B1B1B1B1B",
      INIT_6E => X"14100C0C0C0E111517191B1B1D1D1D1D1D1D1D1D1D1D1D1B1B19151311101010",
      INIT_6F => X"14141414141414141416161614141414141412121416191B1B1B1B1916161414",
      INIT_70 => X"1B1B191614100E0E101010101010101010101010121212141414141414161614",
      INIT_71 => X"00000002020406080806020000000000000000000404040404080E171B1D1D1D",
      INIT_72 => X"00000002060C11110F0E0F1317191B1B1D1D1D1D1D1D1D1D1D1B17110A040200",
      INIT_73 => X"191919191B1B1917131317191B1B1917131111131313110E0A06020200000000",
      INIT_74 => X"1B1D1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B19191919191B1B1B1B1B191B1919",
      INIT_75 => X"1D1D1D1B1B191715131313151719191919191B1B1B1B1B19191919191B1B1B1B",
      INIT_76 => X"191B1B1B1B19161614141513100E0C0C0C101317191B1B1D1D1D1D1D1D1D1D1D",
      INIT_77 => X"1214141414141414141414141414141414141414141414141412121212121416",
      INIT_78 => X"040404080C15191D1D1D1B19191412100E101012121214141414121212121212",
      INIT_79 => X"1D1D1B19130A0602020000000000000202040402020000000000000000000404",
      INIT_7A => X"15130F0804000000000000000002060A0E0F0E0E111317191B1B1D1D1D1D1D1F",
      INIT_7B => X"1B1B1B1B1B1B1919191919191B1B1B1B1915110F13151715130F0C0C0D0F1313",
      INIT_7C => X"1B1919191919191B1B1B1B1D1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1919191B",
      INIT_7D => X"1B1B1D1D1D1D1D1D1D1D1D1D1D1D1D1B191917171717191B1B1B191B1B1B1B1B",
      INIT_7E => X"14141212121212121416191B1B1B1919161616171715130E0A0A0A0C0E131719",
      INIT_7F => X"1616161614141414141414141414141414141414141414141414141414141414",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_19_out(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_19_out(8),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized15\ is
  port (
    p_15_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized15\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized15\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized15\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"00000000000000000404040204060A11171B1D1B1B1917141210101212121414",
      INIT_01 => X"151719191B1D1D1D1D1D1D1D19130E0804040202000000000000000002000000",
      INIT_02 => X"0F0C0A0808080A0C11131715110A0400000000000000000204080C0C0C0C0E11",
      INIT_03 => X"1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1919191919191B1B1B1B19130C0A0C0F",
      INIT_04 => X"1B1B1B1B1B1B1B1B1B1B191919191919191B1B1B1B1D1B1B1B1B1B1B1B1B1B1B",
      INIT_05 => X"150E0A0808080A0E131519191B1D1D1D1D1D1D1D1D1D1D1D1D1B1B1919191919",
      INIT_06 => X"1414141414141414141414141412121212121416191B1B191919161717171717",
      INIT_07 => X"1714121212141414161617171716161616161414141414141414141414141414",
      INIT_08 => X"0000000000000000000000000000000000000404040204060A11171B1D1B1B19",
      INIT_09 => X"0002020608080A0A0C0E0F111517191B1D1D1D1D1B1915110C08060404020202",
      INIT_0A => X"1B1B1B1B17110A0808080808060606080A0A0F111515130A0400000000000000",
      INIT_0B => X"1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B19191919191B",
      INIT_0C => X"1D1D1D1B191919191919191B1B1B1B1B1B1B1B1B19191919191919191B1B1B1B",
      INIT_0D => X"1919191917171717171917100C080606080C0E111517191B1B1D1B1B1D1D1D1D",
      INIT_0E => X"141414141414141414141414141414141414141414141412121212121419191B",
      INIT_0F => X"04060A11171B1B1B1B1917141212141616161619191917171716161414141214",
      INIT_10 => X"13110C0A0A060604020202000000000000000000000000000000000004040402",
      INIT_11 => X"0F0A040200000000000000020204060606060808080A0F131719191B1B1B1917",
      INIT_12 => X"1B1B1B1B191919191B1B1B1B1B19150F0A060606060606060608080A0C0F1111",
      INIT_13 => X"191917191919191919191B1B1B1B19191B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B",
      INIT_14 => X"1517191B1B1B1B1D1B1B1B1B1B19191717191919191919191B1B1B1B1B1B1919",
      INIT_15 => X"141412121214161919191919171919191917171917150E0A0606080A0C0E1113",
      INIT_16 => X"1717171616141412121414141414141414141616141414141414141616141414",
      INIT_17 => X"0000000000000404040204060C13191B1D1B1B19171414141616161616171917",
      INIT_18 => X"080C1113151717191715151313110E0A08060402020200000000000000000000",
      INIT_19 => X"0606060808080A0C0C0C0A080604020000000000000002020404060404040606",
      INIT_1A => X"1B1B1B1B1B1B1B1B1B1B1B1B1B191B1B1B1B1B1B1B1B1B19130C080606060606",
      INIT_1B => X"191B1B1B1B1B1B1B191919171717191919171717191B1B1B19191B1B1B1B1B1B",
      INIT_1C => X"130E0A08080A0C0C0E0E13151517171919191919171919191917171719191919",
      INIT_1D => X"1414141416161616141414141212121416191919191917191919191917191917",
      INIT_1E => X"1414161716161717171719191716161414121214141414141416161616161614",
      INIT_1F => X"000000000000000000000000000000000402020204060C13191B1D1B1B191714",
      INIT_20 => X"0202040404040404040406080A0C1111131313151517171715110C0A06020202",
      INIT_21 => X"1B17110A0606060606060606060808080A0A0808080606040402000000000000",
      INIT_22 => X"1B1B19191B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B",
      INIT_23 => X"191919171717191919191B1B1B1B1B1B1B191919191717191919171513151919",
      INIT_24 => X"1919191919191717191717130E0A0A0A0C0C0E0E0E1111131315151513131517",
      INIT_25 => X"1416161414161614141414141416161616161414141412121214161919191919",
      INIT_26 => X"0C13191B1D1B1B17171414161717171717171719191917171616141412141414",
      INIT_27 => X"19191715130E0A06020200000000000000000000000000000000040202020406",
      INIT_28 => X"06060404020200000000020204040404040404040606080A0C0C0C0E0F111519",
      INIT_29 => X"1B1B1B1B1B1B1B1B1B1B19150F0A060606060606060606080808080808080806",
      INIT_2A => X"191919191513101317191B1B1919191B1B1B1B1B1B1B1B1B1B1B1B191B1B1B1B",
      INIT_2B => X"100E11100E0C0E101317191919171717191919191B1B1B1B1B1B1B1919191919",
      INIT_2C => X"1414141416191919191919191919191919191917171713100C0C0C0C0C0E0E10",
      INIT_2D => X"1717171614141414141414161616161616161614141616161616161614141414",
      INIT_2E => X"000000000202020202060A11191B1D1B1B191717141717171717171717171919",
      INIT_2F => X"080A0A0A0A0A0A0C111519191B191715100A0402000002020202000000000000",
      INIT_30 => X"0608080808080808080806060606040202000002020204040404040404060606",
      INIT_31 => X"1B1B1B191919191919191B1B1B1B1B1B1B1B1B1B19130C080606060606060606",
      INIT_32 => X"1B1B1B1B19191919171919191917130E0E13171B1B191919191B1B1B1B1B1B1B",
      INIT_33 => X"1715130E0C0A0A0C0C0E0E0E0E0C0A0A0C1113151717171716171919191B1B1B",
      INIT_34 => X"161616161616161414141414141417191B1B1919191919191919191917171919",
      INIT_35 => X"1717171717171719191917171717161414141414161616161616161616161616",
      INIT_36 => X"00020202000000000000000000000202020202040811171B1D1B1B1917171717",
      INIT_37 => X"040404040404040608080A0A0A0A0808080A0C111517191B1B19150C06020000",
      INIT_38 => X"0C0808060608080606080808080808080A0A0A08080608060604040202020202",
      INIT_39 => X"19191B1B1B1B1B1B1B1B1B1B19191919191919191B1B1B1B1B1B1B1B1B1B1713",
      INIT_3A => X"171616171919191B1B1B1B1B1B19191919171719191919150E0C0C13191B1B1B",
      INIT_3B => X"1919191919191719191919171513110E0A0A080A0A0A0A08080C101315151717",
      INIT_3C => X"17171717171717171717171717171716161614141414141619191B1B19191919",
      INIT_3D => X"191B1D1B19191717161717171717171717171719171919171614141414141617",
      INIT_3E => X"17191B1B17100804000000000202020200000000000000000202020202040A11",
      INIT_3F => X"08060606040402020202020404040404040608080A0C0C0A0A0806080A0C1115",
      INIT_40 => X"1B1B1B1B1B1B1B1B17110C0A08080606060808080808080808080A0A0C0A0808",
      INIT_41 => X"17130C0A0C13191B1B1B19191B1B1B1B1B1B1B1B1B1B191919191B1919191B1B",
      INIT_42 => X"08080A0E131517171917171717171919191B1B1B1B1B19191917171717191919",
      INIT_43 => X"1417191B1B1B19191919191919191919191919191919171715130E0C08060808",
      INIT_44 => X"1919171614141416171717191719171919191919191717171717171716161414",
      INIT_45 => X"00000202020204060C151B1B1B1B191717161416161616171717171717191919",
      INIT_46 => X"0E0C0A0A080606080A0F13151919150E08040200000000020202020000000000",
      INIT_47 => X"080808080A0A0A0A080808080806060404040404040404040404040406080C0E",
      INIT_48 => X"191B1B1B1B1B19191B1B1B1B1B1B1B1B1B1915110C0A080606060608080A0A0A",
      INIT_49 => X"1917171717171719191917110C080C13191B1B1B1B1B1B1B1B1B1B1917171719",
      INIT_4A => X"1917171515110C0A0808080A0C131517191B1B191717171719191B1B1B1B1919",
      INIT_4B => X"191717171717171616161717191B1B1B19191919191919191919191919191919",
      INIT_4C => X"1617161717171719191919191917171717171919191919191919191919191919",
      INIT_4D => X"00000000000000000000000002020204040811171B1B1B1B1917141414141416",
      INIT_4E => X"040404040404060A0E11110F0C0A08080606080A0F111313110A060202000000",
      INIT_4F => X"080606060608080A0A0A08080808080A0A0A0808080606060606080808080604",
      INIT_50 => X"1B1B1B1B191713131317191B1D1D1D1B19191B1B1B1B19191B1B1B19150E0A0A",
      INIT_51 => X"171919191B1B1B1919191717171717171919191715100C0A0E15191B1B1B1B1B",
      INIT_52 => X"19191919191919191919191919191715130E0C0A0A0C11151719191D1D1B1917",
      INIT_53 => X"19191919191919191919191919171719191717171919191B1B1B191919191919",
      INIT_54 => X"1B1B191714141414161416161617171717171919191919191717191919191919",
      INIT_55 => X"0C0C0A06040002020000000000000000000000000000040406080A0E15191B1B",
      INIT_56 => X"060606080A0E0E0C0804040202020204080C11131311110E0C0A080606080A0C",
      INIT_57 => X"19191B1B1917130E0A080806060608080A0C0C0A0A0806080808080A08080806",
      INIT_58 => X"0C0C0E151B1D1B1B1B1B1B1B1B1B17130E0E1115191B1D1D1D1B19191B1B1B1B",
      INIT_59 => X"1317191B1B1D1D1D19171717191B1B1B1B191917171717171717191919171511",
      INIT_5A => X"1B1B1B1B1919171919191919191B1B1919191919191919191919171513100E0E",
      INIT_5B => X"19191919191B1B1B1B1B1B1B1919191919191919191919191919191919191919",
      INIT_5C => X"0C0C0E0F1115191B1D1B1B1B1917141414161614141616161717171719191919",
      INIT_5D => X"13110E0C0A080606080808080604020002020200000000000000000000000000",
      INIT_5E => X"060608080808080808060608060A0E11130E0A060402020202060A0E13131313",
      INIT_5F => X"1D1B1B191919191B1B1B1B1B1B1B1917130E0A0808060606080A0C0E0C0A0808",
      INIT_60 => X"17171717191919191713101013171B1D1B1B1B1B1B1B191915110C0C0F15191B",
      INIT_61 => X"191919191917171513131519191B1D1F1F1D1917171719191B1B191917171717",
      INIT_62 => X"191919191919191919191B1B1B1B1919191919191919191B1B1B191919191919",
      INIT_63 => X"1616171717191919191B1919191B1B1B1B1B1B1B1B1B1B191919191919191919",
      INIT_64 => X"00000000000000000000171717191B1B1D1D1B1B1B1919171717171717161614",
      INIT_65 => X"020204080C11151515151313110E0C0A08080606040404040200000002000000",
      INIT_66 => X"08080A0C0E0E0C0A0806060608080808080808080808080A0E11110C08060404",
      INIT_67 => X"1919151311111317191B1B1B19191919191B1B1B1B1B1B1B1B19130F0C0C0A08",
      INIT_68 => X"1919191919171717171717171717191B1B1B1B191717191B1B1D1D1B1B1B1B1B",
      INIT_69 => X"1B1B1B1B1919191919191919191919191917171717191B1D1D1F1F1D19171719",
      INIT_6A => X"1B1B1B1919191919191B191919191919191919191B1B1B1B1919191919191919",
      INIT_6B => X"1917171717171717171614161717171919191B1919191B1B1B1B1B1B1B1B1B1B",
      INIT_6C => X"02020200000002000000000000000000000000001D1D1D1D1F1F1D1D1B1B1B1B",
      INIT_6D => X"0C0E0E0E0C0A060606060404060A0E1315151515151313110E0A080806040402",
      INIT_6E => X"1B1B1B19171513110F0E0C0C0E0E11110E0A0806060608080808080606080A0A",
      INIT_6F => X"1B1D1D1D1D1B1B1B1B1B1B1B1919191919191B1B1B1B1B191919191B1B1B1B1B",
      INIT_70 => X"1D1D1F1F1D1B191717191919191917171515171717171719191B1B1B1B1B1B1B",
      INIT_71 => X"1B1919191919191919191B1B1B1B1B1B1919191919191919191919191919191B",
      INIT_72 => X"1B1B1B1B1B1B1B1B1B1B1B1B1B1B1919191B1B1B1919191919191919191B1B1B",
      INIT_73 => X"1F1F1F1F1D1D1B1B1B1B19191919171717171717171717171719191919191B1B",
      INIT_74 => X"11110E0A08080604020202000000000000000000000000000000000000001F1F",
      INIT_75 => X"0A0C0A0A080606080A0E1111110E0C08080808080808080C1113151313131313",
      INIT_76 => X"1D1D1B1B1B191B1B1B1B1B1B1B1B1B1919191717151515151513110C0A0A0A0A",
      INIT_77 => X"19191B1B1B1B1B1B1B1B1D1D1D1B1B1B1B1B1B1B1B1D1D1D1D1D1D1D1D1D1D1D",
      INIT_78 => X"191919191919191B1B1D1D1F1F1D1D1919191919191919191717151517171717",
      INIT_79 => X"191919191919191B1B1B1B1919191919191919191B1B1B1B1B1B1B1B19191919",
      INIT_7A => X"17171719191919191B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1919",
      INIT_7B => X"00000000000000001F1F1F1F1F1F1D1D1B1B1B1B191919191919191917171717",
      INIT_7C => X"0C0E111313131111111313110C0A080806060402020000000002000202020000",
      INIT_7D => X"1B1B1B191715131311131313110F0C0A0A0C0E11131513110C0A0A0C0C0A0A0A",
      INIT_7E => X"1F1F1F1F1F1F1F1F1F1F1F1F1D1D1B1B1B1B1B1B1B1B1B1B1D1D1D1D1D1D1D1B",
      INIT_7F => X"19191717171717171719191B1B1B1B1B1B1B1B1B1B1D1B1B1B1B1B1B1B1B1B1D",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_15_out(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_15_out(8),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized16\ is
  port (
    p_11_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized16\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized16\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized16\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"1B1B1B1B1B1B1B19191919191919191B1B1B1D1D1D1F1D1B1B1919191B1B1B1B",
      INIT_01 => X"1B1B1B1B1B1B1B1B1B1B191919191919191B1B1B191919191919191919191B1B",
      INIT_02 => X"19191919191917171717171717191919191B1B1B1B1B1B1B1B1D1D1B1B1B1B1B",
      INIT_03 => X"0404040202020204020200000000000000001F1F1F1F1D1D1D1D1B1B1B1B1919",
      INIT_04 => X"1513110E0E0E0E0E0C0C0E11131313131111131315130E0C0A0A0A0806040402",
      INIT_05 => X"1B1D1D1F1F1F1F1F1F1F1F1F1F1D1D1B1B19191B1B1919171513111313151717",
      INIT_06 => X"1B1B1B1B1B1B1B1B1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1D1B1B1B1B1B1B1B1B",
      INIT_07 => X"1D1B19191B1B1D1D1B1B1B19191919191919191B1B1B1B1B1B1B1B1B1B1B1B1D",
      INIT_08 => X"191919191919191B1B1B1B1B1B1B1B1B1B1B1919191919191B1B1B1D1D1D1D1D",
      INIT_09 => X"1B1B1D1D1D1D1D1D1D1D1D1D1B1B1B1B1B1B1B1B191919191919191B1B1B1919",
      INIT_0A => X"1D1D1B1B1B1B1B1B1919191919191919171717171717171919191B1B1B1B1B1B",
      INIT_0B => X"13110F110F0E0C0A08080A0A0A0806040404040200000000000000001F1F1F1F",
      INIT_0C => X"1D1D1B1B1919191B1B1B19191715151515131313151517171715151515171715",
      INIT_0D => X"1F1D1B1B1B191B1B1B1B1B1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D",
      INIT_0E => X"1D1D1D1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1D1D1D1F1F1F1F1F1F1F1F1F1F",
      INIT_0F => X"1B1B1B1B1B1D1D1D1D1D1D1D1B1B1D1D1D1D1D1D1D1D1D1B1B1D1B1B1D1D1D1D",
      INIT_10 => X"19191919191B1B1B1919191919191919191B1B1B1B1B1B1B1B1B1B1B1B1B1919",
      INIT_11 => X"191919191B1B1B1B1B1B1B1B1D1D1F1F1D1D1D1D1D1D1D1D1B1B1B1B1B1B1919",
      INIT_12 => X"0000000000001F1F1F1F1D1D1B1B1B1B1B1B1919191919191919191717171717",
      INIT_13 => X"1B1B1B1919191B1B1B1917151515151513111111131513110C08080604020000",
      INIT_14 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1D1F1D1D1F1F1D1D1D1B1B1B1B1B19191B1B1B",
      INIT_15 => X"1D1D1D1D1D1D1F1D1F1F1F1D1B1B1B1B1B1B1B1B1B1D1D1F1F1F1F1F1F1F1F1F",
      INIT_16 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1D1B1B1B1B1B1B1B1B1B1B1D1D1D",
      INIT_17 => X"1B1B1B1B1B1B1B1B1B1B1B1B1B1B1D1D1D1D1D1D1D1D1D1D1F1F1F1F1D1D1D1D",
      INIT_18 => X"1F1D1D1D1B1B1B1B1B19191919191B1B1B191919191B19191919191B1B1B1B1B",
      INIT_19 => X"19191919191917171719191919191B1B1B1B19191B1B1D1F1F1F1F1F1F1F1F1F",
      INIT_1A => X"191915110C08060402020000000000001F1F1F1F1D1B1B1B1B1B191919191919",
      INIT_1B => X"1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1B1B1B1B1B19191919191B1B",
      INIT_1C => X"1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_1D => X"1B1B1B1B1B1B1B1B1D1B1B1D1D1D1D1D1D1D1D1D1D1D1B1B1919191B191B1B1D",
      INIT_1E => X"1F1F1F1F1F1F1F1F1F1F1D1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B",
      INIT_1F => X"1B1B1919191B1B1B1B1B1B1B1B1B1B1B1B1D1D1B1B1B1B1D1D1D1D1D1D1D1D1F",
      INIT_20 => X"1D1F1F1F1F1F1F1F1F1F1F1F1F1D1D1B1B1B1B1B1B191919191B1B191919191B",
      INIT_21 => X"1B1B1B19191919191919191919191917171919191919191B1B1B1B191919191B",
      INIT_22 => X"1D1D1D1D1D1D1D1D1D1D1D1D1917130E0C0806060402020202021F1F1F1D1D1B",
      INIT_23 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D",
      INIT_24 => X"1B191919191919191B1B1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_25 => X"1D1D1D1D1D1D1D1D1B1B1B1B1B191B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B",
      INIT_26 => X"1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1D1F1D1D1D1D1D1D1D1D1D1D1D",
      INIT_27 => X"1919191B1B19191919191B191919191B1B1B1B1B1B1B1B1B1D1D1D1D1B1D1D1D",
      INIT_28 => X"191B1B1B1B191919191B1D1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1B1B1B1B1B1B",
      INIT_29 => X"080806061F1F1F1D1D1B1B1B1919191919191919191919191919191919191919",
      INIT_2A => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D19171513110E0A0A",
      INIT_2B => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_2C => X"1B1B1B1B1B1B1B1B1B1B19191919191919191B1B1D1D1D1D1D1D1D1D1F1F1F1F",
      INIT_2D => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B1B1B1B191B1B1B1B1B1B1B1B",
      INIT_2E => X"1B1B1D1D1D1D1B1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_2F => X"1F1F1F1D1D1D1B1B1B1B1B1B1B1B1B191919191919191919191B1B1B1B1B1B1B",
      INIT_30 => X"19191919191919191919191B1B1B19191919191B1D1F1F1F1F1F1F1F1F1F1F1F",
      INIT_31 => X"1F1F1D1D1B1B1917151313110E0C1F1F1F1D1B1B1B1B19191919191919191919",
      INIT_32 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_33 => X"1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_34 => X"1B191B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B191919191919191919191B1B1B1D",
      INIT_35 => X"1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B1B1B",
      INIT_36 => X"1919191B1B1B1B1B1B1B1B1B1B1B1D1B1B1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F",
      INIT_37 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1B1B1B1B1B1B1B1B19191919191919",
      INIT_38 => X"19191919191919191919191919191919191919191B1B1B1B19191919191B1D1F",
      INIT_39 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1B1B191917171F1F1F1D1B1B1B1B",
      INIT_3A => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_3B => X"1919191919191B1B1B1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F",
      INIT_3C => X"1D1D1D1D1D1D1B1B1B1B191919191B1B1B1B1B1B1B1B1B1B1B1B1B1919191919",
      INIT_3D => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1F1D1F1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_3E => X"1B1B1B191919191919191919191B1B1B1B1B1B1B1B1B1B1B1B1B1B1D1D1F1F1F",
      INIT_3F => X"1B1919191919191B1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1B1B",
      INIT_40 => X"1B1B1F1F1F1D1B1B1B1B19191919191919191919191919191919191919191B1B",
      INIT_41 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D",
      INIT_42 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_43 => X"1B1B1B1B1919191919191919191919191B1B1B1D1D1D1D1D1D1D1D1D1D1D1D1F",
      INIT_44 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B1B19191919191B1B191B1B1B1B1B",
      INIT_45 => X"1B1B1B1B1B1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1F1D1D1D",
      INIT_46 => X"1F1F1F1F1F1F1D1D1D1D1B1B1B19191919191919191919191B1B1B1B1B1B1B1B",
      INIT_47 => X"191919191919191B1B1B191919191919191B1D1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_48 => X"1F1F1F1F1D1D1D1D1D1D1D1D1F1F1F1D1B1B1B19191919191919191919191919",
      INIT_49 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_4A => X"1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_4B => X"19191919191B1B1B1B1B1B1B1B1B1B19191919191919191919191B1B1B1D1D1D",
      INIT_4C => X"1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B19191919",
      INIT_4D => X"191B1B1B1B1B1B1B1B191B1B191B1B1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_4E => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1B1B1919191917171717",
      INIT_4F => X"19191919191919191919191919191919191B1B191919171919191B1D1D1F1F1F",
      INIT_50 => X"1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1F1F1F1D1B1B19191919",
      INIT_51 => X"1F1F1F1F1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_52 => X"191919191B1B1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_53 => X"1D1D1D1D1B1B19191919191919191B1B1B1D1D1D1B1B1B1B1B1B191919191919",
      INIT_54 => X"1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_55 => X"1D1B1919191917171717191B1B1B1B1B1B1B19191919191B1D1D1F1F1F1F1F1F",
      INIT_56 => X"171919191B1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D",
      INIT_57 => X"1F1F1F1D1D1B19191919191919191919191919191919171719191B1B1B191919",
      INIT_58 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_59 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_5A => X"1D1B1B1B1919191919191919191B1B1B1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F",
      INIT_5B => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B1B191919191919191B1B1B1D1D1D1D1D1D",
      INIT_5C => X"191B1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D",
      INIT_5D => X"1F1F1F1F1F1F1F1F1F1D1D1B1B19191917171717191B1B1D1D1B191919191919",
      INIT_5E => X"17171919191919191719191919191B1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_5F => X"1D1D1D1D1D1D1D1D1D1D1F1F1F1D1D1B1B191919191919191919191919191919",
      INIT_60 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D",
      INIT_61 => X"1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1F1F1F1F1F1F",
      INIT_62 => X"191B1B1B1D1D1D1D1D1D1D1D1B1B1B1B191919191919191B1B1B1D1D1D1D1D1D",
      INIT_63 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B19191919191919",
      INIT_64 => X"1D1D1D1B191919191919191B1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_65 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1B1B19191917171717191B",
      INIT_66 => X"19171717191919171717171719191919191717191919191B1B1D1F1F1F1F1F1F",
      INIT_67 => X"1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1D1D1B1B1B19191919",
      INIT_68 => X"1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_69 => X"191B1B1B1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D",
      INIT_6A => X"1D1B1B19191919191919191B1B1D1D1D1D1D1D1D1D1D1D1D1B1B1B1B1B1B1B19",
      INIT_6B => X"1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_6C => X"1B19191917171717191B1D1F1D1B191919191919191B1D1D1F1F1F1F1F1F1F1F",
      INIT_6D => X"1B1B1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1B",
      INIT_6E => X"1F1F1D1D1B1B1919191717171717171917171717171919191919171719191919",
      INIT_6F => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F",
      INIT_70 => X"1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_71 => X"1D1D1D1D1D1D1B1B1B1B1B1B1B1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F",
      INIT_72 => X"1D1D1D1D1D1D1D1D1D1D1D1B1B19191919191919191B1D1D1D1D1D1F1F1D1D1D",
      INIT_73 => X"1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_74 => X"1F1F1F1F1F1F1F1F1D1D1B19191919171717191B1D1F1D1B191919191919191B",
      INIT_75 => X"191919171717171919191B1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_76 => X"1D1D1D1D1F1F1F1F1F1F1F1F1D1D1B1B19191717151517171717171717171719",
      INIT_77 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D",
      INIT_78 => X"1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1F1F1F1F1F1F1F",
      INIT_79 => X"1D1D1D1D1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_7A => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B1B1919191919191B1D",
      INIT_7B => X"1D1D1B1919191919191B1D1D1F1F1F1D1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D",
      INIT_7C => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1B19191919191719191B1D1F",
      INIT_7D => X"141717171717171719191919171717171719191B1D1D1F1F1F1F1F1F1F1F1F1F",
      INIT_7E => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1D1D1F1D1D1D1B1B191917151414",
      INIT_7F => X"1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_11_out(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_11_out(8),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized17\ is
  port (
    p_7_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized17\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized17\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized17\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D",
      INIT_01 => X"1B1B1B1919191B1B1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D",
      INIT_02 => X"1F1F1D1F1F1F1F1F1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1D1D1D1B1B",
      INIT_03 => X"1919191917191B1D1D1F1F1D1B1919191919191B1D1D1F1F1F1F1F1F1F1F1F1F",
      INIT_04 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1B1B19",
      INIT_05 => X"1D1D1B1B1917171414141416161717171717191919191717171717191B1D1D1F",
      INIT_06 => X"1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1D1D1D1D",
      INIT_07 => X"1D1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_08 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_09 => X"1F1F1F1F1D1D1D1D1D1B1B1B1B1B1B1B1B1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F",
      INIT_0A => X"1F1F1F1F1F1F1F1F1F1F1F1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_0B => X"1F1F1F1F1F1F1D1D1B1B1919191917191B1D1F1F1F1D1B191919191919191B1D",
      INIT_0C => X"17171717191B1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_0D => X"1F1F1F1F1F1F1D1D1D1D1D1D1D1B191714141414141416161717171919191917",
      INIT_0E => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_0F => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1F1F",
      INIT_10 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D",
      INIT_11 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F",
      INIT_12 => X"1B191919191719191B1D1F1F1F1F1F1F1F1F1F1D1D1D1D1F1F1F1F1F1F1F1F1F",
      INIT_13 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1B1B1919191917191B1D1F1F1F1D",
      INIT_14 => X"14161717191919191917171717171B1B1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_15 => X"1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1B1915141212121414",
      INIT_16 => X"1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D",
      INIT_17 => X"1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1D1D",
      INIT_18 => X"1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_19 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D",
      INIT_1A => X"191717191B1D1F1F1F1D1D1B1917171919191B1D1F1F1F1F1F1F1F1F1F1F1D1D",
      INIT_1B => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1B1B1919",
      INIT_1C => X"1D1B171412121212141414141717191919191919171719191B1D1D1F1F1F1F1F",
      INIT_1D => X"1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D",
      INIT_1E => X"1D1D1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F",
      INIT_1F => X"1F1F1F1F1D1D1D1D1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_20 => X"1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_21 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_22 => X"1F1F1F1F1D1D1B191917191717191B1D1F1F1F1F1D1B1919191919191B1D1F1F",
      INIT_23 => X"19191B1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_24 => X"1F1F1F1F1D1D1D1D1D1D1D191512121012121214141717191919191919191919",
      INIT_25 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F",
      INIT_26 => X"1D1F1F1F1D1D1F1D1D1D1D1D1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_27 => X"1F1F1F1F1D1D1D1D1D1D1D1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_28 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1F1D1D1D1D1D1D1D1D1D1D1F",
      INIT_29 => X"1B191919191B1B1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1F",
      INIT_2A => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1B191917171717191B1D1F1F1F1F1D1B",
      INIT_2B => X"191919191919191919191B1B1B1B1B1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F",
      INIT_2C => X"1D1D1D1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1B1914121012121212121417",
      INIT_2D => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_2E => X"1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D",
      INIT_2F => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_30 => X"1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D",
      INIT_31 => X"17191B1D1F1F1F1F1D1D1D1B1B1B1B1B1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_32 => X"1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1B1919191919",
      INIT_33 => X"15121212121214151517191B1B191B1B1B1B1B1B1B1B1B1B1B1B1B1D1D1D1D1D",
      INIT_34 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1D1D1D1D1D1D1D1D1D1D1B19",
      INIT_35 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_36 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F",
      INIT_37 => X"1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1F1D1D1D1D1D1D1D1F1D1D1D1D1D1D1D",
      INIT_38 => X"1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F",
      INIT_39 => X"1F1F1F1D1B1B19191919191B1D1D1F1F1F1F1F1F1D1D1D1D1D1F1F1F1F1F1F1F",
      INIT_3A => X"1B1B1B1B1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F",
      INIT_3B => X"1D1D1D1D1D1D1D1D1B1B191919191717171719191B1B1B1B1B1B1B1B1B1B1B1B",
      INIT_3C => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_3D => X"1D1D1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_3E => X"1D1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_3F => X"1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1F1F1F1F1D1D1D1D1D",
      INIT_40 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D",
      INIT_41 => X"1D1D1D1D1F1F1F1F1F1F1F1F1F1D1D1D1B1B1D1D1D1D1D1F1F1F1F1F1F1F1F1F",
      INIT_42 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_43 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B1B1B1D1D1D",
      INIT_44 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_45 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_46 => X"1F1F1F1F1D1D1D1D1D1F1D1D1F1D1D1D1D1D1D1F1D1F1F1F1F1D1D1D1D1D1D1D",
      INIT_47 => X"1F1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D",
      INIT_48 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_49 => X"1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1F1F1F1F1F",
      INIT_4A => X"1F1F1D1D1D1D1D1F1F1F1D1D1D1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_4B => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1D1D1D1D1F",
      INIT_4C => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B1D1D1D1B1D1D1D1D1D1D1D1D1D1D",
      INIT_4D => X"1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1D1D1D1D1D",
      INIT_4E => X"1F1F1F1F1D1F1D1D1D1F1D1F1D1D1D1D1F1F1F1F1F1D1F1F1D1D1F1F1F1F1F1F",
      INIT_4F => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_50 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_51 => X"1F1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_52 => X"1F1F1F1F1F1F1D1D1D1F1F1F1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_53 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B1B1B1B1B1B1B1B1B1B1D1D1D1D1D1D1D",
      INIT_54 => X"1D1D1D1D1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_55 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_56 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1F1D1F1F1F1F1F1F1F1F1F1F1F",
      INIT_57 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_58 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_59 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_5A => X"1B1B1B1B1D1D1D1D1D1D1D1F1F1F1F1F1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_5B => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B1B1B1B1B",
      INIT_5C => X"1D1D1D1D1D1D1D1D1F1F1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D",
      INIT_5D => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D",
      INIT_5E => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1F1F",
      INIT_5F => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_60 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_61 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_62 => X"1D1D1D1D1D1D1B1B1B1B1B1B1B1B1B1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F",
      INIT_63 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_64 => X"1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_65 => X"1F1F1F1F1F1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_66 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_67 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_68 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_69 => X"1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_6A => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B1B1B1B1D1D1D1D1D1D1D1D1D1D1D",
      INIT_6B => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D",
      INIT_6C => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_6D => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_6E => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_6F => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_70 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_71 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_72 => X"1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B1D1D1D",
      INIT_73 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_74 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_75 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_76 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_77 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_78 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_79 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_7A => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_7B => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_7C => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_7D => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_7E => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_7F => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_7_out(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_7_out(8),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized18\ is
  port (
    p_3_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized18\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized18\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized18\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_01 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F",
      INIT_02 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D",
      INIT_03 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_04 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_05 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_06 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_07 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_08 => X"1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_09 => X"1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_0A => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_0B => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_0C => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_0D => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_0E => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_0F => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_10 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_11 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_12 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_13 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_14 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_15 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_16 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_17 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_18 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1D1D1D1D1F1F",
      INIT_19 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_1A => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_1B => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_1C => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_1D => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_1E => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_1F => X"1D1D1D1D1F1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_20 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B1D1D1D1B1B1D1D1D1D1D1D",
      INIT_21 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_22 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_23 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_24 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_25 => X"1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_26 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1D1D",
      INIT_27 => X"1D1D1B1B1B1D1D1D1D1D1D1D1D1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_28 => X"1D1D1D1D1D1D1D1D1B1B1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B1D",
      INIT_29 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D",
      INIT_2A => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_2B => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_2C => X"1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_2D => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_2E => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_2F => X"1D1D1D1D1D1D1D1D1D1D1D1D1B1B1B1D1D1D1D1D1D1D1D1F1D1D1D1D1D1D1D1D",
      INIT_30 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1B1B1B1B1B1B1B1B1B1D1B1B1B1B1B1D1D1D",
      INIT_31 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_32 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_33 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D",
      INIT_34 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_35 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_36 => X"1D1F1D1D1D1D1B1B1B1B1B1B1B1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_37 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_38 => X"1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_39 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_3A => X"1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_3B => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D",
      INIT_3C => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F",
      INIT_3D => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_3E => X"1D1D1D1D1D1D1D1D1D1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_3F => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_40 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D",
      INIT_41 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_42 => X"1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F",
      INIT_43 => X"1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_44 => X"1F1F1F1F1D1D1D1F1F1F1F1F1D1D1D1D1F1F1D1D1D1D1D1D1D1D1D1D1F1F1F1F",
      INIT_45 => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F",
      INIT_46 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D",
      INIT_47 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_48 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_49 => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_4A => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D",
      INIT_4B => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_4C => X"1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_4D => X"1D1D1D1D1D1D1D1D1D1D1D1D1D1D1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_3_out(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_3_out(8),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  port (
    \douta[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  signal \^device_7series.no_bmm_info.sp.simple_prim18.ram_0\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0\ <= \^device_7series.no_bmm_info.sp.simple_prim18.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0FC6FFA556BFFFFFFFFFFFFFFFFFFFEAA55ABFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE90EAAABC15555AFFFFFFFFFFFFFFFE5",
      INIT_02 => X"FFFE50FC6FFA556BFFFFFFFFFFFFFFFFFFFEAAAABFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE93AAAAB05555ABFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFE94FC6FFA556BFFFFFFFFFFFFFFFFFFFFEAABFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9395AAF15555AFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFE94F06FFA555BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E556AC5555AAFFF",
      INIT_08 => X"AAFFFFFFFFFFFFFFFFE94006FFA555BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E55ABC5556",
      INIT_0A => X"16AAAAAAFFFFFFFFFFFFFFFE94016FFE956BFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E56AB",
      INIT_0C => X"EAAFC1AAAAAAAAABFFFFFFFFFFFFE9501AFFEAAABFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4",
      INIT_0E => X"FFFE9000016AAAAAAAAAAFFFFFFFFFFFFEA556BFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFEAAAAAAFFFEEBFFFFFFFFFFFFFFFFFAAAAFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFABEF",
      INIT_29 => X"FABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAABFAFFFFFFEB",
      INIT_2B => X"BFFFBFABFFFFFFFFFFFFAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEAFAAAAAAAAAA",
      INIT_2D => X"FFFFFFFFFFFEFFFFFFFEFAAAAAAAAFFAAAAAFFAFFFFFFFFEBAABFFFFFFFFFFFF",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(13 downto 1) => addra(12 downto 0),
      ADDRARDADDR(0) => '0',
      ADDRBWRADDR(13 downto 0) => B"00000000000000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\(15 downto 2),
      DOADO(1 downto 0) => \douta[2]\(1 downto 0),
      DOBDO(15 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 0),
      DOPADOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => \^device_7series.no_bmm_info.sp.simple_prim18.ram_0\,
      ENBWREN => '0',
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => addra(15),
      I1 => addra(13),
      I2 => addra(14),
      O => \^device_7series.no_bmm_info.sp.simple_prim18.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  port (
    \douta[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFF00000700600000F800F00F0038000C0387C1E07FCC0000F00780000007FF",
      INIT_01 => X"80FFFF800000E03800003E001E03C01C000380C1F8000FE600003E03F0000003",
      INIT_02 => X"00F8FC0FC000003C1E00F81F8003E0FC0E0000E0603FC3E3F9000007C1FFF003",
      INIT_03 => X"7F803FFE00F0000003FF007FFFE0007FFF87000018378FF3FFF88000003FE3FC",
      INIT_04 => X"000FF01CFF0C3FC000003FC01C3FC00003E07F8000079BF3FDFFF8C0000001E0",
      INIT_05 => X"000001FE1C1F838FFC000001F80E00000000380FC00001FEF8FF7FFC20000000",
      INIT_06 => X"000000007FFE03C043FFC000003E0F800000000E01F008007FBC03DFFF300000",
      INIT_07 => X"00000000003FF801F000C3F800000FC7E000000003807E07FE03E00777FFCC00",
      INIT_08 => X"FD80000000003C78003C40203F000001FFF000000000E10FC7FFC03C33ECFFF2",
      INIT_09 => X"FC0E40000000001C1E000FFFF003C000003FF8000000003803FFFFF00FFCFBC1",
      INIT_0A => X"CFB7C020000000000E070003FFFC007800000FFC000000000E107FFFFC03FF3E",
      INIT_0B => X"FFF80CFFF0000000000381C0007FFF001E000001FE00000000038C1FE78F01FF",
      INIT_0C => X"FFFF7FCE3FE00000000000E070001C7FE0038000003C0000000000E307E383E0",
      INIT_0D => X"E01FFFF0FE0FC000000000001C38000603FF80E0200000000000000038C3E1C0",
      INIT_0E => X"3FE007FFF8000000000000000007FC000180FFFCF808000000000000000E00F1",
      INIT_0F => X"F01FE001FFFF00000000000000F8007E0000C03FFFFC030000000000000003C0",
      INIT_10 => X"001E1FE000FFFFC0000000000000FF00000000300FFFFF00C000000007E00000",
      INIT_11 => X"800003FF30E06FFFE000000000000071E00000001C01FFFF802000000003FC00",
      INIT_12 => X"3FF000007FF8FC3830F800000000000FF8380000001E007DFF800000000000FF",
      INIT_13 => X"001FFE0000039C7E1F001F0000000000FFFC060000000F000F3FE00000000000",
      INIT_14 => X"00000783C000000E1F87C007C0000000001F8001C000003FC201C7FC3F000000",
      INIT_15 => X"00000001C07C0000031FC3F000F8000000000F80003000001FFFE070FFFFC000",
      INIT_16 => X"FF00000000700F0000019FE0FC603E000000000FC0000E000007FFFC3C7FFFF8",
      INIT_17 => X"FFFFC00000001C03C0000067F07F3E0FC000000003C0F803800001FFFFFFFFFF",
      INIT_18 => X"FFFFFFF80000000780F0000019FC38CF82F000000003E0FFC0C00018FFF3FFFF",
      INIT_19 => X"01FBFFFFFF00000001F0780000067E0E13E31C00000001F03FF870003FFFE03F",
      INIT_1A => X"F001F80FFFFFFC7FE0003FFC000001840306F1C38000000078CFFF1800183FE0",
      INIT_1B => X"01FC00F001FFFFFFFFFF0003FC0000003001C198F0600000001E73FFC6000C07",
      INIT_1C => X"81C0FFC07800FFFF03FF9FFE00380000000E00E0307C080000000738FFF98003",
      INIT_1D => X"1FF0707FFFF801FFFFC03F81FFE0000000000180380E3F03000003839E1FFE7F",
      INIT_1E => X"FF87FF7FFFFFFC00FFFDF807C03FFE0000000000E00E039FC260000E19CF07FF",
      INIT_1F => X"C0FF87FFFFFFFFF8007FFFFE00F81FFFC000000000380780F3F1CC001CF3E781",
      INIT_20 => X"80F07F8FFFF83FFF80003FFFFF807F8FFFFC000000007E07C03C7C79800CFE23",
      INIT_21 => X"3FE0387FCFFFF807BFC0001FFFFFE03FFFFFFFC00000001F8FF0070F9F60067F",
      INIT_22 => X"009FF0003FC71FFE0180E0000FFFFFFC1FFFFFFFF80000000FFFF801C0E7CC03",
      INIT_23 => X"3EC04FF8F00FE30FFB8000000003F0FFC7FF00C07F9F00000003FFE0007339FB",
      INIT_24 => X"73C71833FE7E07F383FC6000000001FC00007F80000FE3C0000001FFC0001DCE",
      INIT_25 => X"033CF8C78DFF3FE1F980FE1C0F000000FC00000FC00000FDF00000007FE00006",
      INIT_26 => X"00019E6700FE7FCFF8FC403F03DFE000007F000001C000C00FFC0000007F8000",
      INIT_27 => X"E000009F30E01F3FF3FE1C300F803E1C00007FC000000001FE01FF0000007F80",
      INIT_28 => X"181C00002FD838039FF9FFC01800000001C0003FF000000000FFC03FC0E00039",
      INIT_29 => X"8006E7C0381BE6060C4F80FFFC3C000000001C0C0FFC00000C003FF803F1FC00",
      INIT_2A => X"FFE00739FC3FE7FD83C703807FFFFE0000000003FF83DF000007E01F1F00FFFF",
      INIT_2B => X"1FFFF803807F38797F60E3C0C63E7C0E00000000003FF1E7C00007FC0703C03F",
      INIT_2C => X"3C0F00FE0188FFF9C35FC879E033DF0000000000000007FFF1F0000FFF83C0F0",
      INIT_2D => X"3C1F8F003F80DF3FFDFED7FBFCF28E7F000F000000000000FFFC7C0FFFFFF0F0",
      INIT_2E => X"0FFFDFFF801FF86FCFFEFF9CFCF879E3CF800FC000000000003FFE3F0FFFF07E",
      INIT_2F => X"F003FFFFFFC00FFFF7F3FF3FF33F3C3E7C7200073000000000000FFF0FFFFFE0",
      INIT_30 => X"FFF000FFFFC7C007F813FCFFDFFC4F843FBFC0800388000000000003FF81FFFF",
      INIT_31 => X"00FFE003FFFFC00003C6F3FF3FE60003E01FEDFC7FFBC2000000000000FFC07F",
      INIT_32 => X"C0003FFFFFFFFF000001E17FFFCFE00000E007F37FFFFFF18001C00000007F00",
      INIT_33 => X"03E0000FFFFFFFFFC00000E0DFFFF7E000101801FD9FFFFFFC4000700000000F",
      INIT_34 => X"0000F80003FFFFFFFFE0000071EFFFFDC0007FE1F0FE667FBFFE10001C000000",
      INIT_35 => X"0000001C0000FFFFFFFFF8000078C73FFF03007FFC3E3F999FFFFF87FF830000",
      INIT_36 => X"C00000000001F03FFFFFFFFC0007FC4F87FFE3807FDFC00F0663FFFFE0001C00",
      INIT_37 => X"FF3C0000000001FF0FFFFFFFFF8003FE27DDFFFFE07F8038018198FFFFF80FF9",
      INIT_38 => X"03FFF18000000001FFFFFFFFFFFFE001FE0BE5BFFFF0FF8003E000763FFFFC0F",
      INIT_39 => X"00007FFFB0000000007FFFFFFFFFFFFC007F026227FFFC7F80007F838D80FF80",
      INIT_3A => X"0100000FFFF4000000003FFFFFFFF000FF003F004704FFFF1F80000FE3F3E00F",
      INIT_3B => X"C000000003FFFD800000000FFFFFFFF8001FC00F000E0198038F800003D9FE70",
      INIT_3C => X"87F800000000FFFFA000000007FFFFFFFC0E07F007C00007F8C063C00000FE7F",
      INIT_3D => X"1FFC00000000003FFFE80000000FFFFFFFFF0FC1FC03E000060FFFDCE000003F",
      INIT_3E => X"0007FFFE00001C4007FEF20000000FFFFFFE0F83F07F00F000037B0037380000",
      INIT_3F => X"800003FFFFE00C073F81FF1EE0000F03FFFFFF01C0F83FC0780001BE4004C600",
      INIT_40 => X"2660000003FFFC10001FF01FE78C000FE0FFFFE380003C1C783C0000CF900199",
      INIT_41 => X"000C880780003FFF0E001FFE03FFFC8007F83FFFF8E0001C0F0FBE00003BEC00",
      INIT_42 => X"C300033207F80007FFC3FC3FFF807FFF9001FE07FFFE38001E0381FF00001E76",
      INIT_43 => X"0FFB83C06083FF0000FFF8FF1FFFE00FFFF6003E001FFFCE001F81E03F80001F",
      INIT_44 => X"001FF7C0983833FFF0001F9E1FC7FFF827FFFE8000000FFFFFC00FC0F803C000",
      INIT_45 => X"00003FF80023FE0FFFFF0003EF87E1FFFC1DFFFFD000000FFFFFF003F03E0000",
      INIT_46 => X"E0000008F000087F07FFFF8000FFE0F03FFF0723FFF4000007CFFFFE00FC0F80",
      INIT_47 => X"01F80000063000020FFFFFFFE0001FFC18063F83C03E1E800007E3FFFF901E03",
      INIT_48 => X"00003F00000098000081FFFFFFF80007FF00300FE0FCCF83BF8003F1FFFFFC00",
      INIT_49 => X"F8000003E000003C0000307FFFEFFE0001FFC00C07F033F9E6601E0FF87FFFF8",
      INIT_4A => X"1C381B80001C00000000000CBFFFF9FF00007FF031F9FC1C7F3C9FFC7FFC1C7F",
      INIT_4B => X"80FF070FC1FF81C000000000033FFFFE3FC0000FF8007CFF060FCF03FFE3FF07",
      INIT_4C => X"FC07C780C7E1FFF818000000000181FFFF87F80007FE001E7F8180FBE0FFFE03",
      INIT_4D => X"FFFFC3FCC03FF1FF000380000000006003F800FF0001FF00003F80603E787FFF",
      INIT_4E => X"FFFFFFF9FF900FFCFF000030000000003000FE003FE0407FC0000E0018079FBF",
      INIT_4F => X"FDFFFFFFFF000C03FE7F000C040000000018001F000FFC183FF00000010601E7",
      INIT_50 => X"603E7FFFFFFFCFFF00FFBF803FC10000000F0E00003E03FFCE0FFC000003C180",
      INIT_51 => X"3F900F9FFFFFFFF7E0C070CFC03FF84000001FC702000CC07FFFC7FF000000FE",
      INIT_52 => X"001FC4078FFFFFFFF900381037E03F0F1000000FE1C0C003F01FFFFFFFC00000",
      INIT_53 => X"00007FF39FC7FFFFFFFEC0071C0DF07F01E4000003FEE0707C7003FFFFFFE000",
      INIT_54 => X"F000003FFCFFE3FFFFFFFF3000FF027C3F007B00001C7FF81FFF80003FFFFFE0",
      INIT_55 => X"FFF8000007FF3F81FFFFFFFFD9803F00BE1F001CC003FE0FFC07FFF800003FFF",
      INIT_56 => X"00FFFE000003FFC600FFFFFFFFEDFC00002F8F800F383FFF03CF00FFFFF80007",
      INIT_57 => X"F0800FFF8000007FE003FF07FFFFFBC180001BE38003CFFFFF00E3C03FFFFFC0",
      INIT_58 => X"F8342001FFC000001FF801FF9E3FFFFE77BE0004F0C001F7FF800038F007FFFF",
      INIT_59 => X"7FFC6000003FB0600001DC00FF8C67FFFFDDF080013C7000FFE000000C7E01FF",
      INIT_5A => X"7C1FFF3E0000078C3C0000003F3F0E09FFFFF79CA0004F18001FE000000319E0",
      INIT_5B => X"339987FFE7C00000030F0000000FFF1E0303FFFDB8680013C60003F0000000CE",
      INIT_5C => X"000DE760FFFC7800000003C0000007FC1C00C0FFFF41C20004F1800000000000",
      INIT_5D => X"00000379FE1FFF8000000000E0000018FE0E00303FFF900F0001BC6000000000",
      INIT_5E => X"00000001FFFFC7FFF8000000001800000E1E0180044FFFC80180006E30000000",
      INIT_5F => X"FE000000007FFFF8FFFF0000000002000003307C3001F1FFF40000000B8C0000",
      INIT_60 => X"C1FFC00000001FFFFF1FFF8000000000000001CFF304007E3FFB000000026301",
      INIT_61 => X"2631FFF000000007FFDDE3FFC000200000000001F66061000FE3FCC0000000D8",
      INIT_62 => X"00098FFFFC00000001FFF73C3FC3F008000001C10079800CC0001E7F38000000",
      INIT_63 => X"000002E3FFFF000004007FFC7FC081FE00000080F0403E4003F00000C3038000",
      INIT_64 => X"E600000099FFFFC00007003FFF0FF0007F808000203E001FB0004000001C0630",
      INIT_65 => X"FF3E400000267FFFF80D9FE00FFFE1FE1F3FE00006001F0007CC0000000001F9",
      INIT_66 => X"007FE7D000000D1FFFFF0FFFFC03FFF81FFFCFF80001C007C001F20000000000",
      INIT_67 => X"00001FDC7200000247FFFFEFFFFFC1FFFE03FFE3FE0000F001F0043CC0007000",
      INIT_68 => X"07000007F9CD80000091FFFFFFFFFFF9FFFF8039F07F00003C00F8611F30003C",
      INIT_69 => X"01E1C01C018F38400000687FFFFFFFFFFFFDFFC007F80FC0001E00207EF79C03",
      INIT_6A => X"B9C0F8300F8041E7E00000723FFFFFFFFFFFFE3FE0007E31E0000790001FFFE7",
      INIT_6B => X"FFEC707E000660303C800000E18FFFFFF807FFFF0FF000073E700001EC00E7FF",
      INIT_6C => X"00FCFF1FBF80079818078000000FC3FFFF80003F7F07F800000F88000233003B",
      INIT_6D => X"F011FFFFC0FCE003FE0600F000000FF8FFFFC000000001FC000003E00001F1C0",
      INIT_6E => X"3FFC0FFFFFFF801FF1C7FB003C000003FE1FFFF0060000007F000003F800007F",
      INIT_6F => X"001FFF03FFFFFFFFF007E0FFC00F800000FF07FFF807F000001F838001FE0000",
      INIT_70 => X"C7F83FFFC1FFFFFFFFFFFE001FE003F800003FC1FFFE07FF800007E0F800FF00",
      INIT_71 => X"3FFFFFFFFFF07FFFFFFFFFFFFFF0000007FE000FF07FFF03FFF80001F07F00FF",
      INIT_72 => X"FE7FFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFC000F003FC1FFFC0FFFFC000781FF0",
      INIT_73 => X"80FFFFFFFFFFFFFF07FFFFBFFFFFFFFFFFFFFFFFCC00FE07FFF01FFFF8001E07",
      INIT_74 => X"01E03FFFFFFFFFFFFFC1FFFFC7FFFFFFFFFFFFFFFFF8E03F83FFFC03FFFFC007",
      INIT_75 => X"FFE07C0FFFFFFFFFFFFFF07FFFE07FFFFFFFFFFFFFFFFFC7CFC07FFE00FFFFFC",
      INIT_76 => X"FFFFFE1F83FFFFFFFFFFFFFC1FFFF80FFFFFFFFFFFFFFFFFFE0FF01FFF803FFF",
      INIT_77 => X"01FFFFFFC3E0FFFFFFFFFFFFFF07FFFE03FFFFFFFFFFFFFFFFFFFEFC03FFE00F",
      INIT_78 => X"F800FFFFFFF0F87FFFFFFFFFFFFFC1FFFF00FFFFFFFFFFFFFFFFFFFFFF00FFF0",
      INIT_79 => X"0FFE003FFFFFFE1E1FFFFFFFFFFFFFE07FFFC03FFFFFFFFFFFFFFFFFFFFFC03F",
      INIT_7A => X"FC03FF001FFFFFFF8787E1FFFFFFFFFFF80FFFF80FFFFFFFFFFFFFFFFFFFFFF0",
      INIT_7B => X"FFFF00FFC007FFFFFFF1F3E07FFFFFFFFFFE03FFFF87FFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFC07FE001FFFFFFFC78F81FFFFFFFFFFF80FFFFF1FFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFF07FF800FFFFFFFF1E3E07FFFFFFFFFFC03FFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFE3FFC003FFFFFFFC39F81FFFFFFFFFFF80FFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFF8FFF001FFFFFFFF0E7E07FFFFFFFFFFE07FFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \douta[2]\(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[15]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  port (
    \douta[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000FF9FFFFF00000FF00007FFF000783E1FFFF000000FF87FFFFFF800",
      INIT_01 => X"7F00000000001FC7FFFFC00001FC0003FFFC003E07FFFFF8000001FC0FFFFFFC",
      INIT_02 => X"FF0703F000000003E1FF07E000001F0001FFFF001FC03FFFFE0000003E000FFC",
      INIT_03 => X"007FC001FF0000000000FF80000000000000FFFFE00FF00FFFFF000000000003",
      INIT_04 => X"00000FE000FFC0000000003FE0000000001F807FFFF807FC03FFFF0000000000",
      INIT_05 => X"00000001E0007FF00000000007F00000000007F03FFFFE01FF00FFFFC0000000",
      INIT_06 => X"000000000000003FFC0000000001F00000000001FE0FF7FF807FFC3FFFC00000",
      INIT_07 => X"00000000000000000FFF3C000000003800000000007F81F801FC1FFF8FFFF000",
      INIT_08 => X"FE000000000003800003BFDFC00000000000000000001FF038003FC3CFF3FFFC",
      INIT_09 => X"03FF800000000003E00000000FFC00000000000000000007FC00000FF003FC3F",
      INIT_0A => X"3FC03FC00000000001F800000003FF80000000000000000001FF800003FC00FF",
      INIT_0B => X"0007F0000000000000007E00000000FFE00000000000000000007FE00070FE00",
      INIT_0C => X"00000030000000000000001F800003801FFC0000000000000000001FF8007C1F",
      INIT_0D => X"1FE00000000000000000000003C00001FC007F00000000000000000007FC003F",
      INIT_0E => X"C01FF800000000000000000000000000007F000300000000000000000001FF00",
      INIT_0F => X"0FE01FFE00000000000000000000000000003FC000000000000000000000003F",
      INIT_10 => X"0001E01FFF00000000000000000000000000000FF00000000000000000000000",
      INIT_11 => X"000000000FFF9000000000000000000E0000000003FE00000000000000000000",
      INIT_12 => X"000000000007FFC7CF0000000000000007C000000001FF820000000000000000",
      INIT_13 => X"00000000000003FFE0FFE000000000000003F800000000FFF0C0000000000000",
      INIT_14 => X"0000007C00000001FFF83FF80000000000007FFE000000003DFE380000000000",
      INIT_15 => X"000000003F80000000FFFC0FFF0000000000007FFFC0000000001F8F00000000",
      INIT_16 => X"00000000000FF00000007FFF03FFC000000000003FFFF00000000003C3800000",
      INIT_17 => X"00000000000003FC0000001FFF80FFF000000000003FFFFC0000000000000000",
      INIT_18 => X"00000000000000007F00000007FFC03FFD00000000001FFFFF00000000000000",
      INIT_19 => X"0004000000000000000F80000001FFF00FFCE0000000000FFFFF800000000000",
      INIT_1A => X"0000070000000000000000000000007FFC01FE3C0000000007FFFFE00007C000",
      INIT_1B => X"FE00000FC000000000000000000000000FFE007F0F8000000001FFFFF80003F8",
      INIT_1C => X"003F000007F00000FC006000000000000001FF000F83F000000000FFFFFE0000",
      INIT_1D => X"E0000F800007FC00003FC07E000000000000007FC001C0FC000000007FFFFF80",
      INIT_1E => X"FFF80000000003FF000007F83FC00000000000001FF000603F800001E03FFFFF",
      INIT_1F => X"FFFFF80000000007FF800001FF07E000000000000007F8000C0FF00003FC1FFF",
      INIT_20 => X"FFFFFFF00007C0007FFFC000007F807000000000000001F8000383FE0003FFDF",
      INIT_21 => X"FFFFFFFFF00007F8403FFFE000001FC00000000000000000700000F07F8001FF",
      INIT_22 => X"007FFFFFFFF80001FE7F1FFFF0000003E000000000000000000000003F1FF000",
      INIT_23 => X"FF003FFF0FFFFC00007FFFFFFFFC0000000000000060000000000000000FC7FC",
      INIT_24 => X"FC3FE00FFF81FFFC00001FFFFFFFFE000000000000001C0000000000000003F1",
      INIT_25 => X"00FF07F803FFC01FFE000003F0FFFFFF00000000000000020000000000000001",
      INIT_26 => X"00007F80FF01FFF007FF800000201FFFFF800000000000000000000000000000",
      INIT_27 => X"0000007FC01FE0FFFC01FFC000000003FFFF8000000000000000000000000000",
      INIT_28 => X"07E000001FE007FC7FFE003FE0000000003FFFC0000000000000000000000006",
      INIT_29 => X"0001F8000007F801FFBFFF0003C00000000003F3F00000000000000000000000",
      INIT_2A => X"000000FE000001FE003FFFFF8000000000000000007C000000000000E0000000",
      INIT_2B => X"000000007F800780FF801FFFF9C000000000000000000E000000000000FC0000",
      INIT_2C => X"C000FF00007F0007FC3FF007FFFC200000000000000000000000000000003F00",
      INIT_2D => X"03E000FFC0003FC003FF0FFC03FD7F800000000000000000000000000000000F",
      INIT_2E => X"F00020007FE0001FF001FFE3FF07FE1FF0000000000000000000000000000F80",
      INIT_2F => X"0FFC0000003FF0000FFC00FFFCFFC3FF83FC0000C0000000000000000000001F",
      INIT_30 => X"000FFF0000383FF807EFFF003FFFBFFBFFC03F00007000000000000000000000",
      INIT_31 => X"00001FFC00003FFFFC01FFFFC01FFFFFFFFFF00380003C000000000000000000",
      INIT_32 => X"00000000000000FFFFFE00FFFFF01FFFFFFFFFFC0000000E0000000000000000",
      INIT_33 => X"00000000000000003FFFFF003FFFF81FFFEFFFFFFE0000000380000000000000",
      INIT_34 => X"0000000000000000001FFFFF801FFFFE3FFF801FFFFF81800001E00000000000",
      INIT_35 => X"0000000000000000000007FFFF803FFFFFFFFF8003FFFFE06000007800000000",
      INIT_36 => X"000000000000000000000003FFF8003FFFFFFFFF80003FFFF81C00001FFFE000",
      INIT_37 => X"FFC000000000000000000000007FFC001FE3FFFFFF800007FFFE07000007FFFE",
      INIT_38 => X"FFFFFE00000000000000000000001FFE0007F87FFFFF0000001FFF81C00003FF",
      INIT_39 => X"FFFFFFFFC00000000000000000000003FF8001FC1FFFFF800000007FF07F007F",
      INIT_3A => X"FEFFFFFFFFF800000000000000000FFF00FFC0003803FFFFE00000001FFC1FF0",
      INIT_3B => X"FFFFFFFFFFFFFE000000000000000007FFE03FF00000007FFFF000000007FF8F",
      INIT_3C => X"7FFFFFFFFFFFFFFFC00000000000000003FFF80FF8000000073FFC00000001FF",
      INIT_3D => X"0003FFFFFFFFFFFFFFF00000000000000000FFFE03FC000001F0003F00000000",
      INIT_3E => X"00000001FFFFE3FFFFFFFC00000000000001F07FFF80FF000000FC000FC00000",
      INIT_3F => X"00000000001FF3F8FFFFFFFF00000000000000FE3FFFC03F8000007F8003F800",
      INIT_40 => X"1F800000000003FFFFFFFFFFFFF00000000000007FFFFFE007C000003FE0007E",
      INIT_41 => X"0003F00000000000FFFFFFFFFFFFFF0000000000001FFFFFF00040000007F000",
      INIT_42 => X"3C0000FC00000000003FFFFFFFFFFFFFE0000000000007FFFFFC0000000001F8",
      INIT_43 => X"000400001F000000000007FFFFFFFFFFFFF8000000000001FFFFFE0000000000",
      INIT_44 => X"000000006007C00000000001FFFFFFFFDFFFFF0000000000003FFFFF00000000",
      INIT_45 => X"00000000001C01F000000000007FFFFFFFE3FFFFE000000000000FFFFFC00000",
      INIT_46 => X"0000000700000780F800000000001FFFFFFFF8FFFFF8000000300001FFFFF000",
      INIT_47 => X"FE00000001C00001F000000000000003FFFFFFFC3FFFFF0000001C00006FFFFC",
      INIT_48 => X"FFFFC00000006000007E00000000000000FFCFFFFF033FFFC000000E000003FF",
      INIT_49 => X"07FFFFFC0000000000000F800010000000003FF3FFFFC007F9FFE00007800007",
      INIT_4A => X"03C7E47FFFE0000000000003400006000000000FFE07FFE000FF7FFF8003E000",
      INIT_4B => X"7F00F8F03FFFFE000000000000C00001C000000007FF83FFF8003FFFFFFC00F8",
      INIT_4C => X"FFFFF87F381FFFFFE000000000007E00007800000001FFE1FFFE0007FFFFFFFC",
      INIT_4D => X"FFFFFFFF3FC00FFFFFFC00000000001FFC07FF00000000FFFFFFFF8001FFFFFF",
      INIT_4E => X"FFFFFFFFFFEFF003FFFFFFC0000000000FFF01FFC00000003FFFFFFFE0007FFF",
      INIT_4F => X"03FFFFFFFFFFF3FC01FFFFF3F80000000007FFE0FFF00000000FFFFFFFF8001F",
      INIT_50 => X"8001FFFFFFFFF000FF007FFFC03E0000000001FFFFC1FC00000003FFFFFFFE00",
      INIT_51 => X"FFE0007FFFFFFFF8003F803FFFC0078000000000FFFFF03F80000000FFFFFFFF",
      INIT_52 => X"FFFFF8007FFFFFFFFE0007E00FFFC000E0000000003FFFFC0FE00000003FFFFF",
      INIT_53 => X"FFFFFFFC003FFFFFFFFF0000E003FF800018000000001FFFFF8FFC0000001FFF",
      INIT_54 => X"0FFFFFFFFF001FFFFFFFFFC0000001FFC000040000000007FFFFFFFFC000001F",
      INIT_55 => X"0007FFFFFFFFC07FFFFFFFFFE00000007FE000030000000003FFFFFFFFFFC000",
      INIT_56 => X"FF0001FFFFFFFFF9FFFFFFFFFFF00000001FF00000C000000030FFFFFFFFFFF8",
      INIT_57 => X"FF7FF0007FFFFFFFFFFFFFFFFFFFFC3E000007FC0000300000001C3FFFFFFFFF",
      INIT_58 => X"FFFFDFFE003FFFFFFFFFFFFFE1FFFFFF8FC00003FF000008000000070FFFFFFF",
      INIT_59 => X"FFFF9FFFFFC04FFFFFFFFFFFFFF01FFFFFE3FF0000FF8000000000000381FFFF",
      INIT_5A => X"03FFFFC1FFFFF873FFFFFFFFFFFFF007FFFFF87FC0003FE0000000000000E01F",
      INIT_5B => X"0C007FFFF83FFFFFFCFFFFFFFFFFFFE000FFFFFE07F0000FF800000000000030",
      INIT_5C => X"0002001FFFFF87FFFFFFFFFFFFFFFFFFE0003FFFFF803C0003FE000000000000",
      INIT_5D => X"0000008001FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFE00000007F8000000000",
      INIT_5E => X"0000000000003FFFFFFFFFFFFFFFFFFFFFFFFE0003BFFFF00000001FC0000000",
      INIT_5F => X"0000000000000007FFFFFFFFFFFFFFFFFFFFCF83C0000FFFF800000007F00000",
      INIT_60 => X"000000000000000000FFFFFFFFFFFFFFFFFFFFF000F80001FFFC00000001FC00",
      INIT_61 => X"1FC000000000000000201FFFFFFFFFFFFFFFFFFFF8001E00001FFF000000003F",
      INIT_62 => X"0007F0000000000000000803FFFC0FFFFFFFFFFFFFFE0003000001FFC0000000",
      INIT_63 => X"000001FC0000000000000003803FFE01FFFFFF7FFFFFFF80000000003FFC0000",
      INIT_64 => X"F80000007E0000000000000000F00FFF807FFFFFDFFFFFFFC00000000003FFC0",
      INIT_65 => X"00FF8000001F80000000000000001E01E0C01FFFF9FFFFFFFFF0000000000007",
      INIT_66 => X"00001FE0000003E00000000000000007E0003007FFFE3FFFFFFFFC0000000000",
      INIT_67 => X"00000003FC000001F80000000000000001FC001C01FFFF0FFFFFFFFF00000000",
      INIT_68 => X"00000000003E0000007E00000000000000007FC00F80FFFFC3FFFFFFFFC00000",
      INIT_69 => X"000000000070078000001F80000000000002003FF807F03FFFE1FFFFFFFFE000",
      INIT_6A => X"FE00000000003E000000000FC0000000000001C01FFF81FE1FFFF87FFFFFFFF8",
      INIT_6B => X"FFFF80000001800FC00000001FF0000007F80000F00FFFF8FF8FFFFE1FFF1FFF",
      INIT_6C => X"FFFFFFE00000006007F80000003FFC00007FFFC080F807FFFFFFF7FFFFCFFFC7",
      INIT_6D => X"FFFFFFFFFF0300000001FF0000000FFF00003FFFFFFFFE03FFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFE0003800FFC0000003FFE0000FFFFFFFFF80FFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFF81F003FF0000000FFF80007FFFFFFFFE07FFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFE01FFC0000003FFE0001FFFFFFFFF81FFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000FFF8000FFFFFFFFFE0FFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0003FFE0003FFFFFFFFF87FFFF",
      INIT_73 => X"7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFF8000FFFFFFFFFE1FF",
      INIT_74 => X"FE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFC0003FFFFFFFFF8",
      INIT_75 => X"FFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFF8001FFFFFFFF",
      INIT_76 => X"FFFFFFE07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFE0007FFFFF",
      INIT_77 => X"FFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001FFF",
      INIT_78 => X"07FFFFFFFFFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000F",
      INIT_79 => X"F001FFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0",
      INIT_7A => X"FFFC00FFFFFFFFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFF003FFFFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFFF801FFFFFFFFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFF8007FFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFC003FFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFF000FFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \douta[3]\(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[15]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  port (
    \douta[6]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \addra[14]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"9999999BDDDDFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFF",
      INIT_01 => X"7522257BDFFDB9977799BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDBB",
      INIT_02 => X"DDB9730EEEEEE000237777777779BDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB97",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDFFFFFFFFDDDD",
      INIT_04 => X"FFFFFDDDDBBBBBBBBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDDFFF",
      INIT_05 => X"FFFFFFDB997542257BDFFDB9977779BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFDDDDDDB952ECCCEEEE0035777777779BDDFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"DDDDDDDDDDDFFFFFFFFFFFDDFFFDFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDD",
      INIT_09 => X"FFFFFFFFFFFFFFFFDB997542259BDFFDB9997799BDFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFDDFFFFFFFFFFFFDDDDDDB750CCCCCEEE0257977777799BDFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFDDDDDDDDDDDDDDDDDDFFFFFFFFFFDDDDDDDFDDFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFDB997544579DFFFDDB977999BDFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFDFFFFFFFFFFFFFFFFDDDDDDB70ECAACCCEE037799977999BDDFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDFFFFFFFFFDDDDDDDDDDDDFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDFDDDFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"99BBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB97555579DFFFFDB999999BDFF",
      INIT_12 => X"DDDDFFFFFFDDDDDDDDDDDFFFFFFFFFFFFFFFDDDDDB950CAAACCCE02579999999",
      INIT_13 => X"FFFFFFFFFFFFFFFFDDDDFFDDDDDDDDDDDFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDD",
      INIT_14 => X"B99999BDFFFFFFFFFFFFFFFDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFDDDFDDDFFFF",
      INIT_15 => X"5799999999BBBBBDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFDB97555579DFFFFDB",
      INIT_16 => X"DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFDDDDDB95ECAACCCEE0",
      INIT_17 => X"DDDDDDFFDDDDFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFDDDD",
      INIT_18 => X"77BDFFFFDDDBBBBBDDFFFFFFFFFFFFFFFDDDDDDDDFFFFFFFFFFFFFFFFFFFFFDD",
      INIT_19 => X"0EEEEEE0037999BBBBBBBBBBBBDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFDB97755",
      INIT_1A => X"FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFDDDDDDB95",
      INIT_1B => X"FFFFFFFFDDDDDDDDFFDDDDFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFF",
      INIT_1C => X"FFFDB9999999DDFFFFFFDDDDDDFFFFFFFFFFFFFFFFFDDDDDDDDDFFFFFFFFFFFF",
      INIT_1D => X"DDDDDDDDB955555555579BBBBBBBBBBBBBBBDDDDDDDDDDDDDDDDFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD",
      INIT_1F => X"FFFFFFFFFFFFFFFFFDDDDDDFFFFFDDDDFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD",
      INIT_20 => X"FFFFFFFFFFFFFDDBBBBBBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDF",
      INIT_21 => X"DDDDDDDDDDDDDDDDDDDBBBBBBB99BBBDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD",
      INIT_22 => X"DDDDDDDDDDFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDFFFFFFFDFFFFDDDDDDFDFFFFFDDFDDD",
      INIT_24 => X"DDDDDDFFFFFFFFFFFFFFFFFDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"DDDDDDDDDDDDDDDDDDDDDDFFFFDDDDDDDDDDDDDDFFFFFFFFFFDDDDDDDDDDDDDD",
      INIT_26 => X"FFFFFFFFDDDDDDDDDDDDFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDFFFDFFFFFFFFFDDFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFFFFDDDDDDDFFFFDFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDD",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDFFFFFFFFFFFFFFFFFFFFFFFFFDD",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"DDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDD",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"DDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDD",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"DDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDD",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"FFFFDDDDDDDDDDDDDDDDDDDDDDDDFFDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFF",
      INIT_4D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"DDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFDFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFDFFFFDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"DDDBDDDDDDDDDFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"DDDDDDDDDDDFFDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"DDDDDDDDDDDDDBDDDDDDDDFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDBBBBDDDBDDDDDDD",
      INIT_59 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFF",
      INIT_5B => X"DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDD",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5E => X"DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFDDDDDDDDDDDDDDDDDDDDDDDDFFFFFF",
      INIT_5F => X"DDDDDDDDDDDDDDDDDDDDDFFFFDDDDDDDDDDDDDDDDFFFFDDDDDDDDDDDDDDDDDDD",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDD",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDFFFFFFFFFFFF",
      INIT_62 => X"DDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFDFFFDDFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDD",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDFF",
      INIT_66 => X"DDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 4,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 4
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 2) => addra(12 downto 0),
      ADDRARDADDR(1 downto 0) => B"11",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 4) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 4),
      DOADO(3 downto 0) => \douta[6]\(3 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[14]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  port (
    \douta[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"81F8F300C95B77F672D78653C93059C02887CE81CCDF8201FAD41580C60DE5DF",
      INIT_01 => X"BF6F8C780032A9B9F861A5F0D6F2A01AE02A728DE01833DF40FF578A2010C926",
      INIT_02 => X"9298B5CE7C001E541CFC981B7E0B40D234F00B1730BFC41CE81FFDCB41967A1B",
      INIT_03 => X"21A49C1A331F80018D03635271BF81B7FD7B6007DBC2480104049FFE0D935A7E",
      INIT_04 => X"30362C587D3380380008CE49AB9F3FE19920C1B1C3F61426FC7E62EFFE00C699",
      INIT_05 => X"07F9C4E4C52CAC6E7380038EDBCB07C0F878ABEEACFFF9708C91BFE4A7FE001F",
      INIT_06 => X"E003FF7978050AC9BAF37000FCD66D5FFE0C3FD684D3EC02337C99EFFDFBFF80",
      INIT_07 => X"7FF801FE84A6713CB3C14326003F95C2D7FFC01FF5AC4660FC00CB59DDDFF1FF",
      INIT_08 => X"C53FFF007000585B1F6C032732C00FF23F6DFFF007FD6BA8C5DFD9DBC61B78FB",
      INIT_09 => X"2D316FC3F07E0025DD0FDBE1F1E6B001FEAE327FFC03FF59EA1DB7F5B78BAC8E",
      INIT_0A => X"BFD89F93E47FFF80129B47FD7800FE543C7F94399FC07FFF967D008DF9750E23",
      INIT_0B => X"6013AF23A8F26FFF000E6653E68E001F9D1F8FF2F0C1C00FFFE5134FBA8E42C0",
      INIT_0C => X"7FF002398F48F929FFC0012F4CF8447020E24763FCC0F00001FFF144DA1D91EE",
      INIT_0D => X"AF98100101C059FCBD3FC38051A63E10F30FC0938C7F98F800003FF851360ECE",
      INIT_0E => X"90EFF63E00F930E9FF51A7F2300AF31F06A2C00CD5C31FF3F000FE01FE35BACE",
      INIT_0F => X"57986C09C2003D28327F8B2DFA94013D0FC2F87018E73067FC00007FE00F0D40",
      INIT_10 => X"18CA155DE4787E1F4B0C8FCAED807A8F1F83F94614C6C6CC31FF000038180043",
      INIT_11 => X"40078D72E5FA63E38FAA61B1E5390F9143F80F83A585399F77CE3FC0000CF300",
      INIT_12 => X"D06801F39E4684B807339A982672427F99A4FFFFE02A312DB03FF78FF0000367",
      INIT_13 => X"1C69F500FC7869595E036CC4AE0CDCA099C4F33FFFFCF507E5330FD3C7F00030",
      INIT_14 => X"00031A82B03F9FFE2EF6C7C5316B0197A8010225AFFFC74680FD466180F1FC00",
      INIT_15 => X"0F8000068F4BC7C7FCB72A120164DB8035E601B3C99BFF80ACE7CF50CE03183E",
      INIT_16 => X"8C87C00001A66A7CF1FED19671084D2E40256900A0DE697FF82EFF2C9473FFF6",
      INIT_17 => X"3F80B1F00000689AB700FF80096205316B92095240D3DC7A5FFFF9387CCBFCFF",
      INIT_18 => X"9CFFF136007FE03ABEA800FFE606EB19590AED80E890D3806CD7FF7F48E0C008",
      INIT_19 => X"F8D80FFCE4F1F7FC027056007FF94F2DD40CEABB6046E42BCFE548FF50F0C007",
      INIT_1A => X"F3FE59F1F99CC20F8FC053EB0FCFFA2FC98E183DA4D03B791134044C07B3A7E7",
      INIT_1B => X"953C7F53FE7C27E7F0CC1C0D9987F8FC65252C6529E0503A91658C00A101D114",
      INIT_1C => X"22215F82561F3F0583038CC081C703FF8F0683277A8212E4054BCAD34F20FB27",
      INIT_1D => X"9735D747DF6A660FC16F3F899FC80007FFF1E3B8ADD988B866017E856D518A63",
      INIT_1E => X"82A404AC4FC70D3A07F32B27C7200D007FFFFC7F6F6D768229E3007A1736EC06",
      INIT_1F => X"D7423601EC63E7189D63DC0ACDF89804B0FFFFFC1FCBF95DA1CABCC007095BDA",
      INIT_20 => X"9D74A363400398033FCEACFF02BF4384C39B3FFFFE030A05A7981AB0F0078349",
      INIT_21 => X"1E5673A3DC3868D30F98045B1FC057A78CFDF9A7FFFFC0CC8ECBED233E1F205C",
      INIT_22 => X"C00F3BD350A2C9FFFA3F0CC12A80000A140FC13FD4FFFFFE733E42FE52DE7FC9",
      INIT_23 => X"3C42671933285CB471F6983E300B2701FD7A7E1F271ABFFFFF98C0CF733CDED0",
      INIT_24 => X"D26A31D1E5878A2F4A0BF7C6F18C0D73FFFFA137FEF6C36FF07FE61ED9B85EC6",
      INIT_25 => X"1818652A23793C13F7D2C0A22ABF001E438078331FFFFE49D500000300EC0A60",
      INIT_26 => X"81FFFC25AB615C47C5326EBB568BA3701E608000060FFF3FEDF5000003800306",
      INIT_27 => X"5E618EB1FE8A2E6011E36387974EBCCD18FE20407803FFFE79C6B36FC0079C79",
      INIT_28 => X"2D89F1184B1223E913F1F9C0C3F66DE70658F7B7907F80FFFF20B0D9BE1800D9",
      INIT_29 => X"4E09DD18B3CDCF0BF5B77CEC8832FE0E0F8054E0EA203FF071FFA7D64C8CF93C",
      INIT_2A => X"CC2B8DC73351DB73CA9B6358B30F057FFE007FE57FBA0C00F0300FEB1A991041",
      INIT_2B => X"29FFCA016342D12A1D3EA3A8E5D9FC60BB40001FFCB0214B80003BF9F502A458",
      INIT_2C => X"2B3501F2829CF881308732615731A40009CE000007FF9B77D4F03FF1313D4CA8",
      INIT_2D => X"9412753C31614E003A80A1854F8DCFB2000E47820001FFF2FEC93BE00E332752",
      INIT_2E => X"0D85DC42BF98C4AB601F7EE7B7A902ABF8200A93C3F0007FFDBF849DC3F07064",
      INIT_2F => X"F003217FCE50491755D9CE6D80A03A53E937FF65E4C186001FFF6FFF27C307E0",
      INIT_30 => X"07D000C85FEFC8352FF2E47F10D440C14CC6D1FF8256F8DCC00FFFDBFF81FF83",
      INIT_31 => X"0807C000F427E6040AAA6B02034FFF19AFA34A7C507E423C2F9003FFF49FC47C",
      INIT_32 => X"C00001F9FFF18B07FF0DB0030098DBF009580A7F98E7C02B5C0A6401FFFCA301",
      INIT_33 => X"EA27800C1FF000E2CF1FFD501003ECDBF1FF53E2186D43E01AB7C68D00FFFF28",
      INIT_34 => X"FFFACBC0000001FFF9B783FEAB5B803F8BF1F01000815B40FC05D7CFA2C0FFFF",
      INIT_35 => X"3FFFFE5CE3F81E03F03E4B8CC057D5D3060BF3C3F9780064083C2171134FA07F",
      INIT_36 => X"661FFFFFD873FF0FC3F80FF2E727EBD74060DF718700A3A8790B80004EDF4798",
      INIT_37 => X"01F5FFFFFFF3F91FE7F8FF03FC909A09FC5C380D318E1FEA1BFA427C01F3EC29",
      INIT_38 => X"E7E028BFFFFFFC7C83FFC63FFF8FB60539B8370C01899C7C02817F90C703F0CE",
      INIT_39 => X"80F9F003C7FFFFFF1F4CFF3B0F9FFCF486D1C093940066CC707F739C46FC63C1",
      INIT_3A => X"FB9E3E38000AFFF87FC7D73F0FC1DBC0BD63A9C084AD57496CE7E021A06AD789",
      INIT_3B => X"447B4FFF8CE01703F00FE3E98F83E0E703B750DAE0110294F1D64607F46EE3B9",
      INIT_3C => X"93783C4FFFC33F70007C01F9F2C7E00202BF37543530F84AF8FEF52CE00575B0",
      INIT_3D => X"5870E0019FDA0067D3005F0000C707FE07C15C6C958A98FFF439C0CD54C7E2A0",
      INIT_3E => X"3924078040A7C43E18F57917F07EEE03FFC61CD612A17EAC7FF1B0FF4BD69E79",
      INIT_3F => X"14D333C0FFE9A3FBDFE79DEF51FCE23603FF0303E5C4B6EE563FE243600BE998",
      INIT_40 => X"6B039063FE1FEA737E1C7F885B6EFF67E181F0C0BC727E53A82A0FE358C8005A",
      INIT_41 => X"181CC02803E7C3E19EE00E0F9E88F3FDD30C61F8132F833F2B95F58FF3D95200",
      INIT_42 => X"E68904F16B7BF0F00157E90E03E371E0C674C20FF1F4CBE11F354282CFF1C42F",
      INIT_43 => X"70DA4669640B23F83F01D5FECE00FA3400038D3F8019FC927D9F92504F67FCC1",
      INIT_44 => X"FF60A160F99E13187E1FF0E11DBBE07CCDC005B3600009E330C0CDECA40C33FE",
      INIT_45 => X"007F8007E128E5E94F0383FC788758FE3E1B087CC5E7E60D83C71017732981F8",
      INIT_46 => X"98003FF69FF0FB470305C0C0CFDD28E9DCCF93DD92EBFC3E0483804604FCDA60",
      INIT_47 => X"0932300FFE3FFC7FEF2FC6707001FE6B1819D3C4C3662E29C702418381F99F34",
      INIT_48 => X"878364C403FF140F1D41FE031C18107F0A41EF7DF1D8C509486183209CF0FE70",
      INIT_49 => X"FCF0301B58C0FF9A000FD03800C786003F00984AC2F88EB03F99D5E3D059BEFD",
      INIT_4A => X"C43C3FCB0F647CFFF0E00FF59C0010E1800FC0260E7FBE227FA0907B53CC1B68",
      INIT_4B => X"ADA5678FEA7F8A27FFFFF807F37FF8069C703FF03BC3F1FF080F99C51E5A6F76",
      INIT_4C => X"3A1BB2BCFFFAC3FEB8FFFFFE03FE01C71FB21C0FFC8CF08C3F82D8F055BFF26B",
      INIT_4D => X"FFF89D0AD0FF1CC0FF88DFFFFFC0FE6CC0E80A8783FF3F3E145F98CDBF436FFF",
      INIT_4E => X"79FFFFD6E7D3B00641F801F7FFFFFC0056CF3E26F071FFCFCF87EE06326EF3C7",
      INIT_4F => X"8800FFFFF9FF2EEDFC20F0FE07FFFFFEC1D37CC7F7AD0777F3C3E1C003CD1BAC",
      INIT_50 => X"B9A6003FFFFF07C5BAC3D071C4633FFFFEA6371F3854F1F0FDF9F0FC0C03FB26",
      INIT_51 => X"7F9FC36107FFFFCA0FEE8F1831CCCC8FFFFF687C8FC7DC5C3E1E7EF03F8080FE",
      INIT_52 => X"007FDA8D34F07FFFF57C445C4A198DCDDFFFFEDB9ECFFC0F07EFE1DF3807F100",
      INIT_53 => X"7FC07FF498AA6C0FFFFBBC0CEB1D0CDD0DBBFFFDA6E017FFFDB70BFE149E01F0",
      INIT_54 => X"071FE01FFE5B151E017FFF8E02BB06C349B9A0BF0E5B9BEBFFFFA3821FE10700",
      INIT_55 => X"8183FFF003FFDF7A878007FF2621DF61D1ADB72851CC38F383FFC07000801C83",
      INIT_56 => X"0C2040CFFC00FFB06F423980FFBEFA7FC8005390CB70C70025B8F1F00FF82003",
      INIT_57 => X"C6AF843020FF003FE46C31F5F01FEA497C062A35A734FA7E01F952AC7801FF97",
      INIT_58 => X"3CC2EFF8F8181FF80FF5E63ECA5F80FB4B7C7F0D8E96593CFFF1FC59581E00F1",
      INIT_59 => X"F00C6FA5FFBCC463FF00F9FDBE3B7BF03F02F8F003029C1B6F7FFFFE1268C780",
      INIT_5A => X"669C037490EFF07338FF000016EE3F140C1FD077B800E190590933FFFF04A714",
      INIT_5B => X"6C95E7005020B8CF3CCF1FB0000B58B2594707F7BB460038578395F0F07F8536",
      INIT_5C => X"03F2B744E00FB7A600FFF3C7C0000BD394CE4B41FD1A02000D95A23A80200F03",
      INIT_5D => X"0003FE2FB51C0097D1000074F000000785D98E5C107EE9DBC0026701F8D80000",
      INIT_5E => X"C00001E38BC963001909C000199C00000137651816561C620F60002973C00700",
      INIT_5F => X"F87000007152E0F8E002C1F00002660000010FB09406B6C78F819800154FCC1F",
      INIT_60 => X"78C79C00000E5521638800BCF8000089801C00DA5FB8010350C230000016F78C",
      INIT_61 => X"6F11E067C00003D3C0FB25B0501E008023700F007DF15EC0575604260000073C",
      INIT_62 => X"01D5A5F819E00000FEE033D54FEBF380F1C8DC01803A80CB701219A33EC00001",
      INIT_63 => X"00007569EC067004043EB80DE4E61ECEC03C9A13FC603E6031CB04FEECCB7000",
      INIT_64 => X"CF80003F5B7000CC3E8787A6110F399C63B01F3784FE000FC00E73613FD5890C",
      INIT_65 => X"C5DA80000FAEC802183FFFF1EB846307D9B06807D3F13C0007C403F8664F1976",
      INIT_66 => X"1E63FB8C3003E39000C20FFFFE31E1B817743C9A07F80C4F0001F708FF86F1FC",
      INIT_67 => X"880390CC3C0700FA94803CC60001E14C7E348E7E6503FBE913C0063F623F10C8",
      INIT_68 => X"F8F1C1F5D01100C03D457E0F9F00600FA3BF0E36384340FF0A6DE0000E981FC3",
      INIT_69 => X"823F3C1B058A2430000E993FA3F03FFF01C87F87E80128D0FFCA8F2F3C03860F",
      INIT_6A => X"17C08DEE16411D46E40000B26FF87F303FFF0C97C3FE789D6C7FF653C7911865",
      INIT_6B => X"208DF35A3F87F778BCC6000029ABFF1DF3F3FFFE65E7FFD7CA723FEE64E3C046",
      INIT_6C => X"1F7853022E8FC68444158E80003B6A07C70707001E1BF39FDDD42B3CF0FD0121",
      INIT_6D => X"B8107607CA4C83C277CF06A4600000DAC071830030000CFC80FCCA48DC0DCAC0",
      INIT_6E => X"9FCC0C0630FF30561154004FA9700003F6D8006307C7E00F3E401F01284E037F",
      INIT_6F => X"63DFFF02FFF23F01EBD8AA675E6F4C2C00FD9700198FF8FF0FCF1383C1937301",
      INIT_70 => X"57C01FFFC1BFFE879FF9FD335F69B6351EC03E65C00CC7FFC7FFF78CF8F0C570",
      INIT_71 => X"381E07F00FF023FFA1EFFFFE1BC873C685BA100F317F0333C0387FFCC27F0CF0",
      INIT_72 => X"FFFC004000001C0803CA7BFFFFFE73EF7BBEDA5403CCDFC1C87201C1FF009FF0",
      INIT_73 => X"0CFFFE01FFE0000307000606FFFFFFFFFFFE07C386E0F667F0660FFF9814C023",
      INIT_74 => X"0C033FFF00FFFE0000C1FFFF80DFFFFFFFFFFFFFE04F73F999FE19037FFB8030",
      INIT_75 => X"E3C100CFFE07FFFF8000703FFFC0303FFFFFFFFFFFFFFC953E467F8E405FFE38",
      INIT_76 => X"FFFC7C4F13FF87FFFFE0001C0FFF800C00FFFFFFFFFFFFFFE52F9383E3B017FF",
      INIT_77 => X"317FFFC3D3E5FFE7FFFFF8000703FFE001801FFFFFFFFFFFFFFF3BE4E0F9C805",
      INIT_78 => X"F90C5FFFF836797FFBFFFFFE0001801FF800E003FFFFFFFFFFFFFFF07B3C3FF6",
      INIT_79 => X"C7FECF17FFFFE29E5F86FFFFFF00006307FE0038007FFFFFFFFFFFFFFC0E4F0F",
      INIT_7A => X"E5E1FF27CBFFFFFEB7CFC1BFFFFFC00019E387C00C000FFFFFFFFFFFFFFC0393",
      INIT_7B => X"003978FFD3E2FFFFFFD5F2402FFFFF00000470C07003000FFFFFFFFFFFFFF800",
      INIT_7C => X"FE003E587FF4F93FFFFFF57E918BFFFFC000013E700E00C01FFFFFFFFFFFFFFE",
      INIT_7D => X"FFFF003FD2703BFE5FFFFFFD5F8472FFFFF00000CF9800FC301FFFFFFFFFFFFF",
      INIT_7E => X"FFFFFF001FF6B00EFF27FFFFFF53B51CBFFFFC000031E41803F803FFFFFFFFFF",
      INIT_7F => X"FFFFFFFFC00FF8AB837FD3FFFFFFD4ED272FFFFF00078C323FFC00003FFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \douta[4]\(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[15]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  port (
    \douta[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"7E00FCFF3B3C7001FCE7FE300DCFC83FCD02CF81C3C02BFE0633E7803803F620",
      INIT_01 => X"819FF07FFFCE6638001E39FFCE033FF61FD34141E007F015BF00CE73E00F08FB",
      INIT_02 => X"7CF8CC0C7FFFE1CC1C00F81C7FF8C0E3F20FF458AF3FCC1C0D600038C10E79E3",
      INIT_03 => X"1F9F23E6FC1FFFFE7CFF1C61FE3FFF8FFE791FF813D86FF4F8062000038F99FE",
      INIT_04 => X"FFF1E3900373C03FFFF7C1C633803FFE78E0E08E3C0409CB06FF83B000003E1F",
      INIT_05 => X"00063C1C09E39C7183FFFC7E380DFFFFFF8798086300018D76E1FFF908000000",
      INIT_06 => X"0000008707F9F9C7BDFC7FFF03CE0E6001FFC03279300C003F41027FFEAC0000",
      INIT_07 => X"800000017B9F81C2703EC3C7FFC073C318003FE00C9F7E07FC00DB897BFFAA00",
      INIT_08 => X"3B4000000FFFC863E0DC00203CFFF00EFF8E000FF80327CFC63FC61805CD07E9",
      INIT_09 => X"5CF1303C0001FFEC19F037FFF0073FFE019FC38003FC00CBF3FE0FF3C78975BE",
      INIT_0A => X"9047803C1F80007FF6627804FFFC0067FF8073C1E03F800072FE7F03F8F9FE9D",
      INIT_0B => X"7FF7B8E3CF0E7000FFFD189C01BFFF0019FFF00E00FE3FF0001CB390398E3CFF",
      INIT_0C => X"7FFFFE027F8F070E003FFF606F002C7FE0037F7C03C0FFFFFE000F2CEC1C81E0",
      INIT_0D => X"601FEFFEFE3F9E0381C03FFFC837C00A03FFC0DF8F8078FFFFFFC007CB3B0E40",
      INIT_0E => X"202007C1FF010F0E00CE380E3FF9FBE0029CFFFCE7C3E00FFFFFFFFE01F37C8E",
      INIT_0F => X"301023F1FDFFC1E7C38067CE0667FF01F001A7BFE7FBF07803FFFFFFFFF0FCDF",
      INIT_10 => X"E7C61933F87FFFE078F0F039F1FF3CF0FFFC00D1E73838FC3E00FFFFF81FFFBF",
      INIT_11 => X"7FF87CFCD3FC63E3F0361E3E1CFE0FB19C07F07C6C79CE007FCFC03FFFFC03FF",
      INIT_12 => X"CF8FFE0F804D8738003C1D87C78E3F80083700001FE60E31C03FF7F00FFFFF18",
      INIT_13 => X"E3E7F9FF03F864C19E008F0761F0E39FE7FC05C00003F300063C0FD3F80FFFCF",
      INIT_14 => X"FFFCF9833FC07FFAE0C7C039C198FE1867FF0219300000C18001878180FE03FF",
      INIT_15 => X"F07FFFFE4073F83FFD7033F1FE78E67FC611FF8C062C000063E7C060F0001FC1",
      INIT_16 => X"70F83FFFFF918C7F0FFE70188C8F8E313FF984FF9FE18D800019FFDC187C0007",
      INIT_17 => X"C07F3E0FFFFFE4633FFFFFA80E4159C18C4FFE613FCFDF83600004FF83CCFF00",
      INIT_18 => X"73000FC7FFFFFFF980CFFFFFEA07335660331BFF304FCF80709800FF3F003FFF",
      INIT_19 => X"F8380003F8FFF7FFFE3067FFFFFACFC9C7D00CC6FF8813E7C0066F00CF0F0000",
      INIT_1A => X"03FE38F0007F02000FFFCFF3F03FFE9FF2FB6C013BBFCC04F333F897F8683807",
      INIT_1B => X"79C07F303E001FF80FF01FFC61F807FFD3F9B2A6264FCFC30F1C8DFF35FE34E7",
      INIT_1C => X"3E9E600231EF000383FF8F00FFC7FC007FF27C48D701EBE3F987C6433FC57BDD",
      INIT_1D => X"D8C7B0782019FA0000E03F81E00FFFF8000FFE873634087D61FE7E0321CFF340",
      INIT_1E => X"7CC7F89C703FFCFC000318C7C03FF1FF800003FF20898D821940FF8618909BF8",
      INIT_1F => X"193C47FE1C7C1F187E40200631F81FFF3F000003FFD80E6361C6283FFD0DC866",
      INIT_20 => X"23079C4CBFF01FFF003F300001807F873FE3C00001FF0606384819850FFD7D84",
      INIT_21 => X"BF99C39C68079BE30F87FF90000030387F03FE3800003FC38F0C1B0360A0DD3F",
      INIT_22 => X"3F5FCC33CF34C602FC0003FFCC000006180000FFE7000001F0FF8302CCC9A837",
      INIT_23 => X"817DCFE20FE796F380B707C1FFF20701FCFC7E1F1F1CC00000783F0F80949A25",
      INIT_24 => X"A7D85E3BF90079CA79F3AF81FE7FF183FFFF9E3FFFF1C3B00F801E011FC03416",
      INIT_25 => X"05429333DAFE5C0E056E3CE9CE7FFFE07FFFFFF01FFFFE39E6FFFFFF000FF01A",
      INIT_26 => X"FE02A1436C7C3F97C30331846D8C6FFFE07FFFFFFE0FFF3FE3F9FFFFFF8003F8",
      INIT_27 => X"9E7FF12EAE5BCEDFE5E0E328707180C4FF003FFF87FFFFFE01FE7C7FFFFF8079",
      INIT_28 => X"E7D1FF1FF7BB97ED4C02F83F140E701FFEC700387F807FFFFF1F3FC63E1FFFC9",
      INIT_29 => X"71FA961F83EFE5E6F1107F7C003B01F0007FCC000C1FC00FF1FF9FE7BC0C01C3",
      INIT_2A => X"3FCC7C85C3CE1BF979B848673F0FF9800000001CFF8303FF0FF00FE71CE7003E",
      INIT_2B => X"E7FFF3FCDC7CC8323E9E6832341FFF80C0000000038FE1887FFFF801F3033BC7",
      INIT_2C => X"33F301FCFEBEFF0B3A8FEA14988587FFF1F000000000788FE40FFFF0FE3CC0CF",
      INIT_2D => X"8C1C73003E7F60BFC47DA3F23D682133FFFF78000000000E01F107E001F3C730",
      INIT_2E => X"0E03DF81801F07B7AFE23F537AD8B8982FDFF95C0000000003807882C00FF078",
      INIT_2F => X"F003C0FFF1CF8E0E5BEA315FEBDEB9CD6702009CD70078000000E0002000FFE0",
      INIT_30 => X"FFD000F03FEFC7C625B5FA80AF295760C35D30807ED3003F000000380000007F",
      INIT_31 => X"00FFC000F81FE003F33B0EFCA0D8002430609D039FFE26C01FE000000C600403",
      INIT_32 => X"00003FF9FFFE070000F13E3CFF3048000F1FF80A4007C01AE006780000039C01",
      INIT_33 => X"19C7800FFFFFFF01C0E0019F6FFC044801FFC3FE029A43E00698018E000000E7",
      INIT_34 => X"000633C003FFFE0000707C00CF287FC55801FFF00781E680FC03F7F063000000",
      INIT_35 => X"000001C0E000E1FC0000387F00674DCFF88803FC0701C049703C20FAFC7FC000",
      INIT_36 => X"78000000387000303C00000E1FC7F3900BFF1C81F80063D8725C00003F3F97E0",
      INIT_37 => X"FEA60000000FF8E008070000038FE3F1DBB0FFF0C1F01FE7E7FC9780000FE3CC",
      INIT_38 => X"E01FCDC0000003FC7C0001C0007071F9C1F1D3DFFE71E07FFE00FF25F8000FC1",
      INIT_39 => X"7FF80FFCA8000000FF3F00C0F07FFF0C78E1FC995BFF98F07F80FFBC697F803F",
      INIT_3A => X"FC7FFE07FFE70007803FCFC0F03E3800C31C31FFC6D9208670F8001E680F77F0",
      INIT_3B => X"9C7BBFFF83FFFB7C0FF01FE7F07C1F1CFC38CF1CFFF1FE37FC187807F39A1D29",
      INIT_3C => X"70803C7FFFC0FF8F1F83FE07F1F81FFFFE7FC433C63F07B908FE8630FFFCFC8F",
      INIT_3D => X"380FE0019F86001FE0C7A0FFFFC0F801FFFF3C710C731F000ED0006198F81E60",
      INIT_3E => X"071C007FC0DFED0007F909E80FFFE1FC003E1FCE1CC300CF800D06FFD064E007",
      INIT_3F => X"582F0FC0001831F340007EE29E03E031FC000F03E3C7266067C01E9D3FFB0D20",
      INIT_40 => X"C854701FFE000604FFC38007984B00E0007E0F038071FF9B9833F01F174FFE83",
      INIT_41 => X"FFF615E7FFFFC00080E001F01E70024030F01E07E3E000FFCDF3F9F00FCC8BFF",
      INIT_42 => X"5AF9FD44677FFFF001300101FC04CE1F480C3C000FF8F800FFC67E7CF00FC285",
      INIT_43 => X"F00B7DB7314703FFFF01CC00C1FF0313FFEE03000007FF1E007FE39FC07803C0",
      INIT_44 => X"00E0007E938A5F007FFFF0E302381F80843FF840E00007E3C3C03DF0C7FC3C01",
      INIT_45 => X"FF805C07FEBD1CF14003FFFC78409E01C0290783481FE60383F8F00F7C31FFFF",
      INIT_46 => X"1FFFC0181FFF1F80FC0200FFFFDD180E40301B5C620603FE0383FFBE03FF1C7F",
      INIT_47 => X"F1C3CFF0079FFF86F0D001807FFFFE670209CC06DCDBE2563F01C1FFFFF87FC7",
      INIT_48 => X"807C78FBFC0197FFE3BE0000E01FFFFF09C17B920168D244287F80E0E3FFFE0F",
      INIT_49 => X"FCF00FE39F3F0043FFF06FC0003807FFFF00786E0900D1CAD69019E030607FFD",
      INIT_4A => X"CC3C3FC70F8983000F1FF01A60000F01FFFFC01E0BFA4034011AB002603C1318",
      INIT_4B => X"9EC3078FE6000CB8000007F80A800001E07FFFF007C28D000D00568CFF93FF04",
      INIT_4C => X"C3082580FFF63C00D3000001FC037E38007C1FFFFC03F0D280039805837FFC93",
      INIT_4D => X"FFFF24F2CF3FFA3F000D6000003F015CFF07FB07FFFF00FE18C000AF8234DFFF",
      INIT_4E => X"87FFFFE61897CFFD3E0001A8000003FFEE0FC1FEC07FFFC03F87E0002BE1ADCF",
      INIT_4F => X"7AFFFFFFFEFFCDF2029F00FE0E000001C1C700F80FB007F7F03FE1C0000BF86B",
      INIT_50 => X"9F9EBFFFFFFFA7FB7C008F81FBE34000019FCD003F9DFE00FDF80FFC0C0002BE",
      INIT_51 => X"0037CF2EFFFFFFE40F5F0F57C1F03C900000D87D8007E8BFC01E7E0FFF808000",
      INIT_52 => X"00001483130FFFFFFC7FD39FD1E1F1C3F80001C81E40000A2FF001DF07FFF100",
      INIT_53 => X"FFC00005079983FFFFFDBFFA0FF6F0E1FC7600039E00300001330C001481FFF0",
      INIT_54 => X"FFFFE00003670CE1FFFFFEAFFE7CFCBC71C79DC0FE3B801800003F83E00100FF",
      INIT_55 => X"007FFFF000009F06787FFFFF963FC07F0E31C0E75FC3F8F07E003F8000FFE080",
      INIT_56 => X"FFC03FCFFC0000201F3C067FFFDA73FFFFB79DE038983F003C7F800FF0003FFC",
      INIT_57 => X"049FF80FE0FF0000081C0E8C0FFFF61D7FFBEDC6C70C03FE01FF336007FE0018",
      INIT_58 => X"C7C367FF07F81FF800061E0156C07FFD102180F97327C700FFF1FFC98801FF00",
      INIT_59 => X"0FF167C3FFC3FC03FF0001FF802B280FFFB410403E3CD7F8E07FFFFFF64BC07F",
      INIT_5A => X"FD83FC2261EFFFFF00FF000008E04DF603FFECB7F00F8E25A7383FFFFFFDB70C",
      INIT_5B => X"DEF8A0FF946078CFFFC01FB0000798DC65FCFFFBE8DC03E39AFC73FFFFFFFB7B",
      INIT_5C => X"FC173E2C1FF2CF9E00FFF007C00009E3D8F1713FFEE65900F966BFC67FFFFFFC",
      INIT_5D => X"FFFC05CFCC83FF27CF00007C0000000779EDF0104FFF6036803E59AFFFC7FFFF",
      INIT_5E => X"3FFFFE0173CED0FFE207C0001F80000001E999A00441FFA403400FB65BC000FF",
      INIT_5F => X"FF8FFFFF80CCE10A1FFCFFF00003E00000004733C803B23FE2006003F895C3E0",
      INIT_60 => X"47C7E3FFFFF032204147FF3FF80000F80000000E637600BECFF6C00000EC8503",
      INIT_61 => X"C85FE0783FFFFC0800136C4F9FFE00803F0000000A00CD8030CDFAB800003921",
      INIT_62 => X"023837F81E1FFFFF02000ACCC00C0F80F1CFC00000020038200E049DA700000E",
      INIT_63 => X"00008E0DEC078FFFFFC1800243DE1F01C03CFBF0000000C00FEC03FE5CF24000",
      INIT_64 => X"15000001827000F3FFFFF86000E8F86380701F23FC00000050018380FFCC79A8",
      INIT_65 => X"3B43A000004888001FFFFFFE18001DFFDF401807DAFF000000100000783FF8F2",
      INIT_66 => X"FE1C2838000012200003FFFFFFCC0007D8F8808607FDAFC00000020000070FFC",
      INIT_67 => X"0FFF8F050D000004988000FE0001FF3001F900206303FA89F00000028000E0F7",
      INIT_68 => X"0701FFF3E0B3400003867E001F00000F9C00FFA61780C0FFA27C000000A0003C",
      INIT_69 => X"01C0C003FC8C1360000191BFA000000001C7807FF20B3030FFE08F0F00002800",
      INIT_6A => X"050070100F7F4181C80003984FF8000FC00003E03FFF45861C7FFC83C44E000E",
      INIT_6B => X"C001433C000258D730040000E433FF020FFC0001F81FFFE7448E3FECB0E2D780",
      INIT_6C => X"2100002C1F000197ABE60F0000388C07C0FF07FFE1FC0F9FDE33B73FF0B401B4",
      INIT_6D => X"400008000C7CC001FBFAF8C780000FE300707F003FFFFF0380FCF9EFDFFC0E00",
      INIT_6E => X"803003FFC0003F99E0C6013031800003F8E0001F0007FFFFC1C01F00F3CFFF00",
      INIT_6F => X"7FC00001FFFC00FE0C236498C008700000FE1800078000FFFFF0F003C07DF3FF",
      INIT_70 => X"90000000007FFF007FFE01CF9FE60BC6E1003F860003C00007FFF87C00F03E70",
      INIT_71 => X"07E1F80FF0001FFFC01FFFFFE00F8FFF0603E00FC18000F03FC07FFF3E000C0F",
      INIT_72 => X"0003FFFFFFFFE007FFF007FFFFFFFC00803F049803F0E000380FFE01FFFF8000",
      INIT_73 => X"FC0001FFFFFFFFFC00FFF801FFFFFFFFFFFFF8002B00F878001E03FFE014FFE0",
      INIT_74 => X"0FFF0000FFFFFFFFFF000000003FFFFFFFFFFFFFFFF5BC3E1E000700FFFC003F",
      INIT_75 => X"FC01FFC001FFFFFFFFFF800000000FFFFFFFFFFFFFFFFF263F878001C03FFFC0",
      INIT_76 => X"FFFF8070F0007FFFFFFFFFE000000003FFFFFFFFFFFFFFFFF9CFE3FC00700FFF",
      INIT_77 => X"30FFFFFC1C1C001FFFFFFFFFF8000000007FFFFFFFFFFFFFFFFFC3F8FF003803",
      INIT_78 => X"070C3FFFFFC7870007FFFFFFFFFE000000001FFFFFFFFFFFFFFFFFFFBC3FC00E",
      INIT_79 => X"F801CF0FFFFFFCE1C001FFFFFFFFFF8300000007FFFFFFFFFFFFFFFFFFFF8FF0",
      INIT_7A => X"F9FE00E7C7FFFFFF3820007FFFFFFFFFE1E0780003FFFFFFFFFFFFFFFFFFFFE3",
      INIT_7B => X"FFFE7F0033E1FFFFFFE609801FFFFFFFFFF8703F8000FFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFF9F800CF8FFFFFFF9826187FFFFFFFFFE3E0FF0003FFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFE38007FE3FFFFFFE60B871FFFFFFFFFF0F87FF000FFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFF8C001FF1FFFFFFF9C6E1C7FFFFFFFFFC1E3FFFC07FFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFF3380FFCFFFFFFFE71BC71FFFFFFFFFF031FFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \douta[5]\(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[15]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  port (
    \douta[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFF00000700700000F801F00E0038000E01CF81C03FCC0001F00780000007FF",
      INIT_01 => X"81FFFF800001E03800003E003E03C00E000380C1E0000FE600003E03E0000803",
      INIT_02 => X"00F8FC0F8000003C1C00F81F8007C0FC0E000060603FC3E3F1800007C1FE7803",
      INIT_03 => X"FF803FFE00E0000003FF007FFFC0007FFF8700001C378FF3FFF8C000007FE7FE",
      INIT_04 => X"000FE01FFF0C3FC000003FC03C7FC00007E0FF800007FBF3FDFFFCC0000001E0",
      INIT_05 => X"000003FC0E1F838FFC000001F80E00000000780FE00001FCF8FF7FFE30000000",
      INIT_06 => X"00000000FFFE07C043FF8000003E0F800000000E01F00C003F3E03DFFF300000",
      INIT_07 => X"00000000007FFE01F000C3F800000FC3E000000003807E07FC00C40677FFCC00",
      INIT_08 => X"FD8000000000387C003C00203F000001FFF000000000E00FC7FFC01803ECFFF2",
      INIT_09 => X"7C0E40000000001C1E000FFFF007C000007FFC000000003803FFFFF00788F981",
      INIT_0A => X"8F9F8020000000000E038003FFFC007800000FFE000000000E007FFFF801FE7E",
      INIT_0B => X"7FF04FE3F0018000000300E0007FFF001E000001FF00000000038C1FC78E00FF",
      INIT_0C => X"7FFFFE03FFF000F0000000E070001C7FE0038080003F0000000000E30FE381E0",
      INIT_0D => X"E01FFFFFFFFFE0007E0000003838000603FFC0E0700007000000000038C3F1C0",
      INIT_0E => X"3FE007FFFFFEFFF0003FC001C007FC000180FFFCF83C000000000000000F00F1",
      INIT_0F => X"F01FE001FFFFFE1FFC001FF001F800FE0000603FFFFC0F8000000000000003C0",
      INIT_10 => X"003E1EF0007FFFFF87FF0007FE00FF000000003007FFFF03C000000007E00000",
      INIT_11 => X"800003FF300063E3FFC1FFC003FFF071E00000001C01FFFF803000000003FC00",
      INIT_12 => X"3FF000007FBC7838003FE07FF801FFFFF8380000001E003DFFC00800000000FF",
      INIT_13 => X"001FFE0000079C3E1E000FF81FFF007FFFFC060000000F00073FF02C00000000",
      INIT_14 => X"00000783C00000061F07C001FE07FFE01FFF0201C000003F8001C7FE7F000000",
      INIT_15 => X"00000001C07C0000030FC3F0007F01FFF80FFF80003000001FE7C070FFFFE000",
      INIT_16 => X"FF00000000700F800001CFE0FC700FC0FFFE03FF80000E000007FFFC1C7FFFF8",
      INIT_17 => X"FFFFC00000001C03C0000067F07F3E01F03FFF80FFC02003800003FFFFCFFFFF",
      INIT_18 => X"FFFFFFF80000000780F0000019F83CCF803C07FFC03FC07F80E00000FFFFFFFF",
      INIT_19 => X"07FBFFFFFF00080001F078000006300E33E00F01FFF00FE03FF870003FFFFFFF",
      INIT_1A => X"FC01F80FFFFFFDFFF0003FFC000001800306F001C07FF003F0CFFF1800183FF8",
      INIT_1B => X"01FF80F001FFFFFFFFFFE003FE0000003001C19820703FFC00FC73FFC6000C07",
      INIT_1C => X"C1807FFDF000FFFF83FF8FFF00380000000E007030000C1FFE003E3CFFF98403",
      INIT_1D => X"1FF8707FFFF801FFFFE03F81FFF0000000000180380C08019FFF81FF1E3FFC7F",
      INIT_1E => X"FF07FF7C7FFFFC00FFFCF807C03FFE0000000000E00E0382067FFFFE1F8F07FF",
      INIT_1F => X"E0FF87FFFC7FFF18007FFFFE01F81FFFC000000000380F80E1C1CFFFFCF1C781",
      INIT_20 => X"C0F87F8FFFF01FFF00003FFFFF807F87FFFC00000000FE07C0381879FFFCFE03",
      INIT_21 => X"7FE03C7F8FFFF8030F80001FFFFFF03FFFFFFFC00000003F8FF007031F3FFCFF",
      INIT_22 => X"FF3FF00C3FC73FFE000000000FFFFFFE1FFFFFFFF80000000FFFFC01C0C7CFFF",
      INIT_23 => X"7E7FDFFC001FE70FFF8800000003F8FE03FF81E0FF1F00000007FFF0007319F9",
      INIT_24 => X"7BC79FF7FE0007F387FC6000000001FC00007FC0000FC3C0000001FFE0000DE6",
      INIT_25 => X"033CF0C3F9FF9C01F981FF180E0000007C00000FE00001F9F8000000FFF00006",
      INIT_26 => X"00019E7F107CFFE7C0FC407F838FE000007F000001F000C01FFE0000007FFC00",
      INIT_27 => X"E180009F31C40E3FF9E01C300F807F3C00003FC000000001FE01FF8000007F86",
      INIT_28 => X"1C1E00E02FDC70113FFCF8001801800001C0003FF000000000FFC03FC1E00039",
      INIT_29 => X"800667E07C1BF61E0E0F807C003C000000003C000FFC00000E007FF803F3FE00",
      INIT_2A => X"FFF003B9FC3FE6FD878787803F0FFE0000000003FF83FF00000FF01F1F00FFFF",
      INIT_2B => X"1FFFFC03C07F383D7F21E7C1C41FFFFF00000000007FE1F7C00007FE0F03C03F",
      INIT_2C => X"3C0F01FF0180FFF8C35FCDF3E07987FFFE000000000007FFFBF0000FFFC3C0F0",
      INIT_2D => X"7C1F8F003F80DF3FFDFED7FBFCF01E33FFFF800000000001FFFEFC1FFFF3F8F0",
      INIT_2E => X"0FFFDFFF801FF86FCFFEFF9EFCF87C87CFFFF86000000000007FFF7F3FFFF07F",
      INIT_2F => X"F003FFFFFFC00FFFB7F3FF3FF3BF383E60FBFFFC1800000000001FFFDFFFFFE0",
      INIT_30 => X"FFD000FFFFEFC007DC33FCFF9FFE4F803F9C0EFFFE24000000000007FFFFFFFF",
      INIT_31 => X"FFFFC000FFFFE00003C6F1FF3FC7FFC3C01FEF001FFE1B000000000003FFFBFF",
      INIT_32 => X"FFFFFFF9FFFFFF000001C17FFFDFC7FFF0E007F3C007C0048001800000007FFE",
      INIT_33 => X"07F87FFFFFFFFFFFC00001E0DFFFF7C7FE003C01FCF843E0012000700000001F",
      INIT_34 => X"0001FC3FFFFFFFFFFFF00000F0E7FFF9C7FE000FF87E7E00FC0018001C000000",
      INIT_35 => X"0000003F1FFFFFFFFFFFF8000078C23FFF07FC0000FE3F8F003C2003FF800000",
      INIT_36 => X"80000000078FFFFFFFFFFFFE0007FC4F87FFE3FE00001C0783C0000000001800",
      INIT_37 => X"FF380000000007FFFFFFFFFFFF8003FE37DDFFFFFE001FE00000F00000001FF1",
      INIT_38 => X"1FFFF10000000003FFFFFFFFFFFFF001FE0BE4BFFFFE007FFE00003C0000003F",
      INIT_39 => X"0007FFFF3000000000FFFFFFFFFFFFFC00FE026237FFFF007FFFFF838F000000",
      INIT_3A => X"000001FFFFF4000000003FFFFFFFF800FF003E004704FFFF80FFFFFFE7F3C800",
      INIT_3B => X"E38400007FFFFD800000001FFFFFFFFC003FC01F000E018803E07FF80FF9FE26",
      INIT_3C => X"0FFFC380003FFFFFA00000000FFFFFFFFE0007F007C00007F8FE783F0003FC7F",
      INIT_3D => X"F8001FFE6001FFFFFFE80000003FFFFFFFFF0381FC03E000021FFFDE1F0001E0",
      INIT_3E => X"00FC00003F000CFFFFFEF20000001FFFFFFE1FC1E0FF00F000037B0037870000",
      INIT_3F => X"6000FFC00007C0033FFFFF1CE0001FCFFFFFFF03E03839E0780001BE4006F1C0",
      INIT_40 => X"27980FFFFE0001F8003FFFFFE78C001FFFFFFFFF8070001C783C0000CF9001BC",
      INIT_41 => X"000DE61FFFFFC0007F1FFFFFE1FFFC800FFFFFFFFCE000000E0FFE00003BEC00",
      INIT_42 => X"C30603399F7FFFF0010FFEFFFFF83FFF9003FFFFFFFF3800000781FF00003E76",
      INIT_43 => X"0FFB83C0EE7F03FFFF01C3FF3FFFFC0FFFF400FFFFFFFFEE000003E03F80003F",
      INIT_44 => X"001FFF819C799F007FFFF0E0FFC7FFFF03FFFE801FFFFFE3FFC00200F803C000",
      INIT_45 => X"00003FF80061FC014003FFFC783FE1FFFFC8FFFF900019FF83FFF000803E0000",
      INIT_46 => X"E0000008E0000800000000FFFFDD07F03FFFE323FDF40001FF83FFFE00001F80",
      INIT_47 => X"01FC000002200002000000007FFFFE60FC063FF8C03C1C8000FFC1FFFFF80007",
      INIT_48 => X"80007F000000980000800000001FFFFF083E780FFE78CF83B7807FE0FFFFFE00",
      INIT_49 => X"FCF00003E000003C00002000000007FFFF00078E07FF1FF9E6601E1FF07FFFFD",
      INIT_4A => X"3C3C3FC0F00E00000000000800000001FFFFC001F3F9FFC7FF7C8FFC7FFC1CF8",
      INIT_4B => X"80FF078FE1FFF0C00000000006000000007FFFF0003CFCFFF1FFCF03FFE3FF07",
      INIT_4C => X"FC07C780FFF1FFFF1C0000000001000000001FFFFC000F1E7FFCE7F3E0FFFF03",
      INIT_4D => X"FFFFC3FCC03FF9FFFFF18000000000C300000407FFFF0001E03FFF307EF83FFF",
      INIT_4E => X"FFFFFFF9FF100FFCFFFFFE300000000021F00001007FFFC000781FFFCC1F9E3F",
      INIT_4F => X"F9FFFFFFFF000C03FE7FFF01F40000003E30FF00004007F7F0001E3FFFF207E7",
      INIT_50 => X"207E7FFFFFFFC7FF00FFBFFE001D8000007FFCFFC01C0000FDF80003F3FFFCC1",
      INIT_51 => X"FFD83F1FFFFFFFF7F0C030CFFE0003200000387C7FF80F80001E7E00007F7FFF",
      INIT_52 => X"FFFFE77F0FFFFFFFF980301037FE01C0100000381E3FFFF3E00001DF00000EFF",
      INIT_53 => X"003FFFF9FF87FFFFFFFEC0060C0DFF01FC0400007E000FFFFE30F0001480000F",
      INIT_54 => X"00001FFFFC7F03FFFFFFFF3001FF027F81FF810001FB8007FFFFC07C00010000",
      INIT_55 => X"0000000FFFFF1F01FFFFFFFFD9C03F80BFC1FFE0603FF8F001FFFFFFFF000080",
      INIT_56 => X"0000003003FFFFC000FFFFFFFFEDFC00006FE1FFF81FFF003C007FFFFFFFC000",
      INIT_57 => X"F88000001F00FFFFF003FF03FFFFFBC180001BF8F8FC03FE01FF0C1FFFFFFFE0",
      INIT_58 => X"F83C60000007E007FFF801FF9E3FFFFE77BE0004FC383F00FFF1FFC607FFFFFF",
      INIT_59 => X"FFFE6000000003FC00FFFE007FCCE7FFFFDDE080017F1807E07FFFFFF1883FFF",
      INIT_5A => X"FC7FFFBE00100000FF00FFFFFF1F8E0DFFFFF78820005FC600F83FFFFFFC4703",
      INIT_5B => X"C0FF9FFFE7E00730003FE04FFFFFE71F8303FFFD18280017E3000FFFFFFFFF03",
      INIT_5C => X"FFF03FE3FFFCFF81FF000FF83FFFF7FC1F00C0FFFF41C20004F8C001FFFFFFFF",
      INIT_5D => X"FFFFFC0FFC7FFFC7C0FFFF83FFFFFFF8FE0E00303FFFB00F00013E30003FFFFF",
      INIT_5E => X"FFFFFFFF03CFCFFFFC003FFFE07FFFFFFE1E01C00C4FFFC80080006F9C3FFFFF",
      INIT_5F => X"FFFFFFFFFFC0E1F9FFFF000FFFFC1FFFFFFF80301001B1FFF40000000BE63FFF",
      INIT_60 => X"7FC7FFFFFFFFF0207F3FFFC007FFFF07FFFFFFEE7F04007E3FFB0000000279FF",
      INIT_61 => X"279FE07FFFFFFFF8001CE3FFE001FF7FC0FFFFFFF3FFC1000FC3FCC00000009E",
      INIT_62 => X"000BC7F81FFFFFFFFE00033C3FF0007F0E303FFFFFFCFFF84001FC7E38000000",
      INIT_63 => X"000002F1EC07FFFFFFFF80007FC1E0003FC3040FFFFFFF7FFFF00001C3038000",
      INIT_64 => X"E6000000BC7000FFFFFFFFE0000FF800000FE0C003FFFFFF9FFFFC00003C0630",
      INIT_65 => X"FF3CC000002708001FFFFFFFF80001FFDF0007F82200FFFFFFE7FFFF800007F1",
      INIT_66 => X"01FFE7D0000009C00003FFFFFFFC00001FFF8081F801903FFFFFFBFFFFF80003",
      INIT_67 => X"F0007FFCF6000002608000FE0001FF000001FFE060FC04E60FFFFFFCFFFFFF00",
      INIT_68 => X"FFFE000FFF8D800000B87E001F00000F80000039F0003F003983FFFFFF3FFFFF",
      INIT_69 => X"FFFFFFFC038FF04000004E3FA000000001C0000003F8C00F000E70F0FFFFCFFF",
      INIT_6A => X"F9FFFFFFFF80C1FFF00000778FF800000000000000007C78038007BC383FFFF7",
      INIT_6B => X"FFFE7CFFFFFE60303FF80000E3C3FF0000000000000000073F01C010EF1CCFFF",
      INIT_6C => X"C0FFFFCFFFFFFF981807F0000007F007C000F80000000060200FC0C00F33FE33",
      INIT_6D => X"FFFFFFFFF07CFFFFFC0600F800000FFC007000FFC00000007F0307F02003F1FF",
      INIT_6E => X"7FFFFFFFFFFFC01FFFC7FF003E000003FF000000FFF80000003FE0FFFC3000FF",
      INIT_6F => X"803FFFFFFFFFFFFFF003E0FFC00F800000FFE000007FFF0000000FFC3FFE0C00",
      INIT_70 => X"EFFFFFFFFFFFFFFFFFFFFE001FE003F800003FF800003FFFF8000003FF0FFF8F",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFF0000007FC000FFE00000FFFFF800001FFF3FF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000E003FF000007FFFFFE00007FFF",
      INIT_73 => X"03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC00FF800001FFFFFFEB001F",
      INIT_74 => X"F000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C03FE00000FFFFFFFFC0",
      INIT_75 => X"FFFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7CFF800003FFFFFFF",
      INIT_76 => X"FFFFFF800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFC00000FFFFF",
      INIT_77 => X"CFFFFFFFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFF000007FF",
      INIT_78 => X"00F3FFFFFFF800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00001",
      INIT_79 => X"000030FFFFFFFF003FFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000",
      INIT_7A => X"FE0000183FFFFFFFC01FFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFC",
      INIT_7B => X"FFFF80000C1FFFFFFFF807FFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFE0000307FFFFFFFE01FE7FFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFC000001FFFFFFFF807F8FFFFFFFFFFFF07FFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFF000000FFFFFFFFE01FE3FFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFC380003FFFFFFFF807F8FFFFFFFFFFFFCFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \douta[6]\(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \addra[15]\,
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  port (
    p_39_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"1313151515131111111111111113151717171513110C0A0A0A0A0A0A0A080808",
      INIT_01 => X"02020202020206080A0A0C0E1113151515151513110E0C0C0E11111111111111",
      INIT_02 => X"0E0E0F1111131313151717191B1B1B1B191715110C0804020202040404040202",
      INIT_03 => X"151513110E0C0804020000000002060A0C0E11110E0C0C0C0E0F11111111110E",
      INIT_04 => X"1313110F0E0C080604040204040606040406080A0E1111131313151515151515",
      INIT_05 => X"17171717151513110E0E0C0A080606060606040404060608080A0C0E11111313",
      INIT_06 => X"0202040406080C0E13151517171515130F0E0E0E111113131313131313131515",
      INIT_07 => X"0A0A0A0C0C0C0A0A0A0A0A0A0A08080806060606040404020404060606040404",
      INIT_08 => X"0A0C0E11111111111111111313151513131111110E0F11131315151515130E0C",
      INIT_09 => X"040202020404040202020202020202020406080A0C0C0E111315151313110E0C",
      INIT_0A => X"0C0C0E0F0F110F0F0F0F1111131313151513151517191B1B1B1B1915130E0A06",
      INIT_0B => X"13131313151515151515131313110E0C0804020000000204080C0F111311110E",
      INIT_0C => X"0606080A0C0C0E1111131311110F0E0C0A08060404040406060604060A0C0E11",
      INIT_0D => X"1313131313111111111313151515151313110E0C0C0A08080606060604040404",
      INIT_0E => X"040404040606040404040202040406080A0C0E111315151513110E0E0E111113",
      INIT_0F => X"0E1111131313110E0C0A0A0C0E0E0E0E0C0C0C0A0A0A08080806060606040404",
      INIT_10 => X"0C0E11111111110E0A08080A0C0E0E11110E0E0E0E1113131515131313110E0E",
      INIT_11 => X"191B1B1917130F0A060402020202020202020202020200020202020406080A0A",
      INIT_12 => X"04080E1315151515130F0C0C0C0C0E0E0E0E0F11151719191919171715171719",
      INIT_13 => X"04060606080A0C1113131313131515151515151513151313110C080604020202",
      INIT_14 => X"08080606060606040404040406080A0A0C0E11111111110F0E0E0C0A08080604",
      INIT_15 => X"1111110E0E0E0F1113131313131313110E0C0E0E101111111111110E0E0C0A0A",
      INIT_16 => X"0806060606060404040404040404040404040404020202040406080A0C0E1111",
      INIT_17 => X"13131515151513110E0C0C0E0E110F110E0C0A0A0C0E11111313110F0E0E0A08",
      INIT_18 => X"00000000020204040606080A0C0C0E0E0C0A080606080A0A0C0E0E0E0E0E0E11",
      INIT_19 => X"1D1D1D1D1B1B1919191919191917130F0A060402020202020202020202020000",
      INIT_1A => X"1313110C0A0806040404060C13171919191713110E0C0A0A0C0C0C0C1115191B",
      INIT_1B => X"0E0E0E0E0E0E0C0A0806060608080C0E11131315151313151515151515151313",
      INIT_1C => X"0C0E0E0E0C0C0C0A0A08080606060606060404040404040406080A0A0C0E0E0E",
      INIT_1D => X"040404040606080A0C0C0E0E0E0E0E0E0F11131315131313110E0C0A0A0A0A0C",
      INIT_1E => X"1315151515131311080808060606060606040404040404040404040404040404",
      INIT_1F => X"06080A0C0C0C0C0C0E11131315151515130F0C0A0A0A0C0C0C0C0C0A0A0A0E11",
      INIT_20 => X"0202020202020200000000000000000002020404040606080808080604040406",
      INIT_21 => X"0A0808080A0C13191D1D1F1F1F1F1D1D1D1B1919171715130E0A060402020200",
      INIT_22 => X"131313151515131313131313110E0A08080808080A11171B1B1B191713110C0C",
      INIT_23 => X"020404060608080A0C0C0E11111111110E0E0C0A08080A0C0E11131315151513",
      INIT_24 => X"1311100C0A0806060608080A0A0A0A0A08080606060606060606060404040404",
      INIT_25 => X"04040404040404040404040402040404060608080A0A0A0C0C0E111113151513",
      INIT_26 => X"08080A0A0A0A0C0E111315171717171715150808080808080806060606040404",
      INIT_27 => X"040404040404020204040606080A0A0A0C0C0C0F111315151513110E0A080606",
      INIT_28 => X"110F0A0604020200000002020202020000000000000000000000000202020202",
      INIT_29 => X"191D1B1B191713110E0C0A0A0606080E151B1F1F1F1F1F1F1F1F1D1D1B191715",
      INIT_2A => X"0A0C1011131315151313111113131313131313131313110E0C0A0A0A0A0A0F15",
      INIT_2B => X"0606060606040404040202020204040406080A0C0E111313131313110E0C0A0A",
      INIT_2C => X"0A0C0C0E0E111313131311110E0C0A0806040404040606060606040404040406",
      INIT_2D => X"0C0A0A0A08080606060404040404040404040404040402020204040406060608",
      INIT_2E => X"1113110F0C0A080604040606080A0C0C0E11131515171719171715150A0A0A0C",
      INIT_2F => X"0000000000000202020202020202020202020204040608080A0A0A0C0C0E0F11",
      INIT_30 => X"1F1F1F1F1F1D1D1B17130E0A0604020202000202020202020200000000000000",
      INIT_31 => X"11110E0C0C0C0C0C0F1519191919171311111111110F0A08080E171B1D1F1F1F",
      INIT_32 => X"131515151513110C0A0A0C0E11111313131313110E0E0F111111111111131311",
      INIT_33 => X"02020202020202040404060606060604040402020202020202020406080C0E11",
      INIT_34 => X"02020202020404040606080A0C0E0E0F111111110E0E0C0A0806040202020202",
      INIT_35 => X"1717171715150C0C0E0E0E0E0C0C0A0A08060606040404040404040404040404",
      INIT_36 => X"08080A0A0A0C0A0C0C0C0C0C0C0A08060404020404060A0C0C0E0F1113131517",
      INIT_37 => X"0202020000000000000000000000000002020202020202020202020202020406",
      INIT_38 => X"130C0A0E15191D1D1D1D1D1D1F1F1F1F1D1B17110A0604020202020002020202",
      INIT_39 => X"0C0E0E0E0E0E11111111111111110F0F0C0C0F13151715151311111115171917",
      INIT_3A => X"020202020406080A0E11131517171513110E0C0C0C0E1011111313110F0C0C0C",
      INIT_3B => X"0A0A080604020202020202020202020202020404040404040404040402020202",
      INIT_3C => X"0404040404040404040404020202020202040406080A0C0E0E0E1111110F0E0C",
      INIT_3D => X"0A0C0E0E0F11111113131315151513130C0E111111110E0E0C0C0A0806060604",
      INIT_3E => X"02020202020202040408080C0C0C0E0C0C0A0A08080806060404020202020408",
      INIT_3F => X"0202020202020202020202020200000000000000000000000202020202020202",
      INIT_40 => X"11110F0F1115191B1D1B17110C0C111519191B1B1B1D1D1D1D1F1D1B150F0804",
      INIT_41 => X"0E101111110E0C0A0A0A0C0C0E0E0E0E0E1011131315131311110F0C0E0F1111",
      INIT_42 => X"04040404040202020202020202020406080A0E1113151717171513110E0C0C0E",
      INIT_43 => X"0C0C0E0E0E0E0E0E0C0A0A080606040202020202020202020202020204040404",
      INIT_44 => X"11110E0E0C0A0A06060604040404040404040404020202020202020404040608",
      INIT_45 => X"040404020202020204060A0C0E0E0F11110F0F0F1111111111110E1111131313",
      INIT_46 => X"000002020202020202020204040404040406080A0C0F1111110E0C0A08060604",
      INIT_47 => X"1B1B1D1D1D1B150C060202020202020202020202020202020000000000000000",
      INIT_48 => X"151513110F0C0C0C0C0D0F0F0C0F11171B1D1D1D19150F0A0C0F131515171719",
      INIT_49 => X"1717171513110E0C0C0C0E0E0E0E0C0A0808080A0C0C0E0E0E0E0E1011131517",
      INIT_4A => X"0202020202020404040404040404040202020202020202020406080A0E111517",
      INIT_4B => X"020202020202040406080A0C0C0E0C0C0C0C0A0A080806040402020202020202",
      INIT_4C => X"0E0E0E0C1111131313131311110E0E0C0A080606040404040404060404040402",
      INIT_4D => X"1313110E0C0A0806040404020202020202020406080A0C0E0E0E0E0C0C0C0C0C",
      INIT_4E => X"020200000000000000000002020202020204040404040404040406080C0E1113",
      INIT_4F => X"0F0A080A0C0E11131315151719191917110A0402020202020202020404020202",
      INIT_50 => X"0E0E0E0E0E1113151517171513110F0C0A0A0A0A0A0C0C0F13171B1B1D1D1B17",
      INIT_51 => X"04040406080A0E111517171717151513110C0C0C0C0C0C0C0A080608080A0C0E",
      INIT_52 => X"0604040404040202020204040404040404040404020202020202020202020202",
      INIT_53 => X"0404060606060404040202020202020202040406080A0C0C0C0A0A0A08080806",
      INIT_54 => X"0C0C0E0E0C0C0A0A0A0C0C0C0C0C11111313131313131311110E0C0A08060404",
      INIT_55 => X"04040406080A0E111315151313110C0A0806040404020202020202020206080A",
      INIT_56 => X"0202020404040404040202020000000000000002020202020202020404040404",
      INIT_57 => X"0C0F111719191B1B19150F0A080A0A0C0E11111113131313130F0A0604020202",
      INIT_58 => X"0A08060606080A0C0E1111110E0E0E1113131515151311110C0C0A0A0A0A0A0A",
      INIT_59 => X"0202020202020202020204040606080A0C111517171717151513110C0A0A0A0A",
      INIT_5A => X"0A0A0A0A08080806060606040404040404040404040404040404040404040202",
      INIT_5B => X"1311110E0E0A0806040404060606060606040404020202020202020204060608",
      INIT_5C => X"020202000002020406080A0C0E0E0E0C0C0C0A0C0C0C0C0C1111111313131313",
      INIT_5D => X"0202020204040404040404040406080C0F1313151513130F0C0A080604040202",
      INIT_5E => X"0C0C0A0806040202020202020404060606060402020202000000000202020202",
      INIT_5F => X"0F0E0C0A0A0A0A0A0A0A0A0C0F131515171717130C0A080A0A0C0E0F0F110E0E",
      INIT_60 => X"171515130E0C0A08080808060604060A0C0F1113111111100E0E101113131111",
      INIT_61 => X"040404040404040402020202020202020202020404040606080A0C1115171717",
      INIT_62 => X"0202020202020404060608080808080606060606040404040404040404040404",
      INIT_63 => X"0C0C0E11111111111313131111110E0C08060404060606060806060604040202",
      INIT_64 => X"110E0C08060404020202020202000000000204080A0E0F11110E0E0C0C0C0C0C",
      INIT_65 => X"020202020202020202020202040404040404040404040406080C0E1113131313",
      INIT_66 => X"080A0A0C0E0E0E0C0C0A08060404040202020202020204060808080606040202",
      INIT_67 => X"11100E0E0E0E0E0E0E0E0C0C0C0A0A0A0A0A0A0A0A0A0C0F0F111111110F0A08",
      INIT_68 => X"0606080A0C1113171717171515130E0C08080808060606080A0E111113131313",
      INIT_69 => X"0404040404040404040404040404040404040402020202020202020202040404",
      INIT_6A => X"0808080806060404040202020202020204040406060808060606060604040404",
      INIT_6B => X"11131311110F0E0C0C0C0C0C0E0E0E0E0E0E1111111111110E0C080606060606",
      INIT_6C => X"0404060A0C0F111313110E0C0806060404020202020202000000000204080C0F",
      INIT_6D => X"06080A0A0A080604040202020202020202020202040404060404040404040404",
      INIT_6E => X"0A0A0A0A0A0A0A080808080A0A0C0C0C0A0A0806040202020202020202020204",
      INIT_6F => X"080C0E11111313131313110E0E0C0C0C0C0C0C0A0A0C0C0C0A0A0A0A0A0A0A0A",
      INIT_70 => X"040204020402040404040606080A0C0E13151717151513110E0A080806060608",
      INIT_71 => X"0606060404040404040404040404040406060606060606040404040404040404",
      INIT_72 => X"0E0E0C0A08060606060608080808060604040402020202020202020204040606",
      INIT_73 => X"00000000000204080C111313131313110E0C0C0C0A0A0C0C0C0C0C0C0E0E1111",
      INIT_74 => X"08080604040404040404040406080A0C0E0E0E0C0C0806060404040202020202",
      INIT_75 => X"0202020202020202020406080A0A0A0A08060402020202020202020202040606",
      INIT_76 => X"0C0A0A0A0A0A0A0A080808080808060606060808080A0A0A0A0A080604040202",
      INIT_77 => X"13110C0A080808080A0A0E111113131313131313110E0E0C0C0C0C0A0A0A0A0A",
      INIT_78 => X"06060604040404040404040404040204040404060606080A0C0E111315151513",
      INIT_79 => X"0202020202020404040404040404040404040404040404040406060606060606",
      INIT_7A => X"0C0C0C0A0A0C0C0C0E0E0E0C0C0A080604060606080808080806060404040202",
      INIT_7B => X"04040404020202020202000000000202060A0E111315151513110E0C0A0A0A0A",
      INIT_7C => X"02020202020204080A0C0C0A08060404040404040204040608080A0A0A0A0806",
      INIT_7D => X"0A0A080806060402020202020202020202020406080A0A0C0A0A080604040202",
      INIT_7E => X"0E0E0C0C0C0C0C0A0C0C0C0C0A0A0A0A0A0A0A0808080606040204060808080A",
      INIT_7F => X"080A0C0E111313131311110E0A080808080C0E1111131313151515151311110E",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => p_39_out(7 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => p_39_out(8),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width is
  port (
    \douta[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \addra[15]\,
      clka => clka,
      \douta[0]\(0) => \douta[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\ is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\
     port map (
      DOADO(0) => DOADO(0),
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\ is
  port (
    \douta[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \addra[15]\,
      clka => clka,
      \douta[1]\(0) => \douta[1]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10\ is
  port (
    p_35_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0),
      p_35_out(8 downto 0) => p_35_out(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11\ is
  port (
    p_31_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0),
      p_31_out(8 downto 0) => p_31_out(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12\ is
  port (
    p_27_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      p_27_out(8 downto 0) => p_27_out(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13\ is
  port (
    p_23_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0),
      p_23_out(8 downto 0) => p_23_out(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14\ is
  port (
    p_19_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized14\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0),
      p_19_out(8 downto 0) => p_19_out(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized15\ is
  port (
    p_15_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized15\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized15\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized15\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized15\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0),
      p_15_out(8 downto 0) => p_15_out(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized16\ is
  port (
    p_11_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized16\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized16\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized16\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized16\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0),
      p_11_out(8 downto 0) => p_11_out(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized17\ is
  port (
    p_7_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized17\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized17\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized17\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized17\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0),
      p_7_out(8 downto 0) => p_7_out(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized18\ is
  port (
    p_3_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized18\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized18\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized18\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized18\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0),
      p_3_out(8 downto 0) => p_3_out(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\ is
  port (
    \douta[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[2]\(1 downto 0) => \douta[2]\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\ is
  port (
    \douta[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \addra[15]\,
      clka => clka,
      \douta[2]\(0) => \douta[2]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4\ is
  port (
    \douta[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \addra[15]\,
      clka => clka,
      \douta[3]\(0) => \douta[3]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5\ is
  port (
    \douta[6]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clka : in STD_LOGIC;
    \addra[14]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5\
     port map (
      addra(12 downto 0) => addra(12 downto 0),
      \addra[14]\ => \addra[14]\,
      clka => clka,
      \douta[6]\(3 downto 0) => \douta[6]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6\ is
  port (
    \douta[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \addra[15]\,
      clka => clka,
      \douta[4]\(0) => \douta[4]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7\ is
  port (
    \douta[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \addra[15]\,
      clka => clka,
      \douta[5]\(0) => \douta[5]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8\ is
  port (
    \douta[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => \addra[15]\,
      clka => clka,
      \douta[6]\(0) => \douta[6]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9\ is
  port (
    p_39_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0),
      p_39_out(8 downto 0) => p_39_out(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr is
  signal ena_array : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_11_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_15_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_19_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_23_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_27_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_31_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_35_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_39_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_3_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_7_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ram_douta : STD_LOGIC;
  signal ram_ena_n_0 : STD_LOGIC;
  signal \ramloop[1].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_0\ : STD_LOGIC;
begin
\bindec_a.bindec_inst_a\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec
     port map (
      addra(3 downto 0) => addra(15 downto 12),
      ena_array(8 downto 3) => ena_array(9 downto 4),
      ena_array(2 downto 0) => ena_array(2 downto 0)
    );
\has_mux_a.A\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(1) => \ramloop[3].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\(0) => \ramloop[3].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\(0) => ram_douta,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[2].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1\(0) => \ramloop[4].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(3) => \ramloop[6].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(2) => \ramloop[6].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(1) => \ramloop[6].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_2\(0) => \ramloop[6].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_3\(0) => \ramloop[5].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_4\(0) => \ramloop[7].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_5\(0) => \ramloop[8].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_6\(0) => \ramloop[9].ram.r_n_0\,
      DOADO(0) => \ramloop[1].ram.r_n_0\,
      addra(3 downto 0) => addra(15 downto 12),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0),
      p_11_out(8 downto 0) => p_11_out(8 downto 0),
      p_15_out(8 downto 0) => p_15_out(8 downto 0),
      p_19_out(8 downto 0) => p_19_out(8 downto 0),
      p_23_out(8 downto 0) => p_23_out(8 downto 0),
      p_27_out(8 downto 0) => p_27_out(8 downto 0),
      p_31_out(8 downto 0) => p_31_out(8 downto 0),
      p_35_out(8 downto 0) => p_35_out(8 downto 0),
      p_39_out(8 downto 0) => p_39_out(8 downto 0),
      p_3_out(8 downto 0) => p_3_out(8 downto 0),
      p_7_out(8 downto 0) => p_7_out(8 downto 0)
    );
ram_ena: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addra(15),
      O => ram_ena_n_0
    );
\ramloop[0].ram.r\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => ram_ena_n_0,
      clka => clka,
      \douta[0]\(0) => ram_douta
    );
\ramloop[10].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0),
      p_39_out(8 downto 0) => p_39_out(8 downto 0)
    );
\ramloop[11].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(1),
      p_35_out(8 downto 0) => p_35_out(8 downto 0)
    );
\ramloop[12].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(2),
      p_31_out(8 downto 0) => p_31_out(8 downto 0)
    );
\ramloop[13].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      p_27_out(8 downto 0) => p_27_out(8 downto 0)
    );
\ramloop[14].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(4),
      p_23_out(8 downto 0) => p_23_out(8 downto 0)
    );
\ramloop[15].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(5),
      p_19_out(8 downto 0) => p_19_out(8 downto 0)
    );
\ramloop[16].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized15\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(6),
      p_15_out(8 downto 0) => p_15_out(8 downto 0)
    );
\ramloop[17].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized16\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(7),
      p_11_out(8 downto 0) => p_11_out(8 downto 0)
    );
\ramloop[18].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized17\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(8),
      p_7_out(8 downto 0) => p_7_out(8 downto 0)
    );
\ramloop[19].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized18\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      clka => clka,
      ena_array(0) => ena_array(9),
      p_3_out(8 downto 0) => p_3_out(8 downto 0)
    );
\ramloop[1].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\
     port map (
      DOADO(0) => \ramloop[1].ram.r_n_0\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka
    );
\ramloop[2].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => ram_ena_n_0,
      clka => clka,
      \douta[1]\(0) => \ramloop[2].ram.r_n_0\
    );
\ramloop[3].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram\ => \ramloop[3].ram.r_n_2\,
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      \douta[2]\(1) => \ramloop[3].ram.r_n_0\,
      \douta[2]\(0) => \ramloop[3].ram.r_n_1\
    );
\ramloop[4].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => ram_ena_n_0,
      clka => clka,
      \douta[2]\(0) => \ramloop[4].ram.r_n_0\
    );
\ramloop[5].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => ram_ena_n_0,
      clka => clka,
      \douta[3]\(0) => \ramloop[5].ram.r_n_0\
    );
\ramloop[6].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5\
     port map (
      addra(12 downto 0) => addra(12 downto 0),
      \addra[14]\ => \ramloop[3].ram.r_n_2\,
      clka => clka,
      \douta[6]\(3) => \ramloop[6].ram.r_n_0\,
      \douta[6]\(2) => \ramloop[6].ram.r_n_1\,
      \douta[6]\(1) => \ramloop[6].ram.r_n_2\,
      \douta[6]\(0) => \ramloop[6].ram.r_n_3\
    );
\ramloop[7].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => ram_ena_n_0,
      clka => clka,
      \douta[4]\(0) => \ramloop[7].ram.r_n_0\
    );
\ramloop[8].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => ram_ena_n_0,
      clka => clka,
      \douta[5]\(0) => \ramloop[8].ram.r_n_0\
    );
\ramloop[9].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8\
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      \addra[15]\ => ram_ena_n_0,
      clka => clka,
      \douta[6]\(0) => \ramloop[9].ram.r_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top is
begin
\valid.cstr\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 16;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 16;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "2";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "18";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "Estimated Power for IP     :     16.035162 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "blk_mem_gen_0.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "blk_mem_gen_0.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 39360;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 39360;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 39360;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 39360;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(15) <= \<const0>\;
  rdaddrecc(14) <= \<const0>\;
  rdaddrecc(13) <= \<const0>\;
  rdaddrecc(12) <= \<const0>\;
  rdaddrecc(11) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(15) <= \<const0>\;
  s_axi_rdaddrecc(14) <= \<const0>\;
  s_axi_rdaddrecc(13) <= \<const0>\;
  s_axi_rdaddrecc(12) <= \<const0>\;
  s_axi_rdaddrecc(11) <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      clka => clka,
      douta(15 downto 0) => douta(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "blk_mem_gen_0,blk_mem_gen_v8_4_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "blk_mem_gen_v8_4_1,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 16;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 16;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "2";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "18";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     16.035162 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "blk_mem_gen_0.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "blk_mem_gen_0.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 39360;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 39360;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 39360;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 39360;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => B"0000000000000000",
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(15 downto 0) => B"0000000000000000",
      dinb(15 downto 0) => B"0000000000000000",
      douta(15 downto 0) => douta(15 downto 0),
      doutb(15 downto 0) => NLW_U0_doutb_UNCONNECTED(15 downto 0),
      eccpipece => '0',
      ena => '0',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(15 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(15 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(15 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(15 downto 0),
      s_axi_rdata(15 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(15 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(15 downto 0) => B"0000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
end STRUCTURE;
