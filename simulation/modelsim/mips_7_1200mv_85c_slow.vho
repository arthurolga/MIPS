-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "11/28/2019 16:14:14"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mips IS
    PORT (
	clk : IN std_logic;
	out_ula : BUFFER std_logic_vector(31 DOWNTO 0);
	out_pc : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END mips;

-- Design Ports Information
-- out_ula[0]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[1]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[2]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[3]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[5]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[6]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[8]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[9]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[10]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[11]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[12]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[13]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[14]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[15]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[16]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[17]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[18]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[19]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[20]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[21]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[22]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[23]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[24]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[25]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[26]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[27]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[28]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[29]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[30]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[31]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[0]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[4]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[6]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[8]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[9]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[10]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[11]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[12]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[13]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[14]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[15]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[16]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[17]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[18]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[19]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[20]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[21]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[22]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[23]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[24]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[25]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[26]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[27]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[28]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[29]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[30]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[31]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mips IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_out_ula : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_out_pc : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out_ula[0]~output_o\ : std_logic;
SIGNAL \out_ula[1]~output_o\ : std_logic;
SIGNAL \out_ula[2]~output_o\ : std_logic;
SIGNAL \out_ula[3]~output_o\ : std_logic;
SIGNAL \out_ula[4]~output_o\ : std_logic;
SIGNAL \out_ula[5]~output_o\ : std_logic;
SIGNAL \out_ula[6]~output_o\ : std_logic;
SIGNAL \out_ula[7]~output_o\ : std_logic;
SIGNAL \out_ula[8]~output_o\ : std_logic;
SIGNAL \out_ula[9]~output_o\ : std_logic;
SIGNAL \out_ula[10]~output_o\ : std_logic;
SIGNAL \out_ula[11]~output_o\ : std_logic;
SIGNAL \out_ula[12]~output_o\ : std_logic;
SIGNAL \out_ula[13]~output_o\ : std_logic;
SIGNAL \out_ula[14]~output_o\ : std_logic;
SIGNAL \out_ula[15]~output_o\ : std_logic;
SIGNAL \out_ula[16]~output_o\ : std_logic;
SIGNAL \out_ula[17]~output_o\ : std_logic;
SIGNAL \out_ula[18]~output_o\ : std_logic;
SIGNAL \out_ula[19]~output_o\ : std_logic;
SIGNAL \out_ula[20]~output_o\ : std_logic;
SIGNAL \out_ula[21]~output_o\ : std_logic;
SIGNAL \out_ula[22]~output_o\ : std_logic;
SIGNAL \out_ula[23]~output_o\ : std_logic;
SIGNAL \out_ula[24]~output_o\ : std_logic;
SIGNAL \out_ula[25]~output_o\ : std_logic;
SIGNAL \out_ula[26]~output_o\ : std_logic;
SIGNAL \out_ula[27]~output_o\ : std_logic;
SIGNAL \out_ula[28]~output_o\ : std_logic;
SIGNAL \out_ula[29]~output_o\ : std_logic;
SIGNAL \out_ula[30]~output_o\ : std_logic;
SIGNAL \out_ula[31]~output_o\ : std_logic;
SIGNAL \out_pc[0]~output_o\ : std_logic;
SIGNAL \out_pc[1]~output_o\ : std_logic;
SIGNAL \out_pc[2]~output_o\ : std_logic;
SIGNAL \out_pc[3]~output_o\ : std_logic;
SIGNAL \out_pc[4]~output_o\ : std_logic;
SIGNAL \out_pc[5]~output_o\ : std_logic;
SIGNAL \out_pc[6]~output_o\ : std_logic;
SIGNAL \out_pc[7]~output_o\ : std_logic;
SIGNAL \out_pc[8]~output_o\ : std_logic;
SIGNAL \out_pc[9]~output_o\ : std_logic;
SIGNAL \out_pc[10]~output_o\ : std_logic;
SIGNAL \out_pc[11]~output_o\ : std_logic;
SIGNAL \out_pc[12]~output_o\ : std_logic;
SIGNAL \out_pc[13]~output_o\ : std_logic;
SIGNAL \out_pc[14]~output_o\ : std_logic;
SIGNAL \out_pc[15]~output_o\ : std_logic;
SIGNAL \out_pc[16]~output_o\ : std_logic;
SIGNAL \out_pc[17]~output_o\ : std_logic;
SIGNAL \out_pc[18]~output_o\ : std_logic;
SIGNAL \out_pc[19]~output_o\ : std_logic;
SIGNAL \out_pc[20]~output_o\ : std_logic;
SIGNAL \out_pc[21]~output_o\ : std_logic;
SIGNAL \out_pc[22]~output_o\ : std_logic;
SIGNAL \out_pc[23]~output_o\ : std_logic;
SIGNAL \out_pc[24]~output_o\ : std_logic;
SIGNAL \out_pc[25]~output_o\ : std_logic;
SIGNAL \out_pc[26]~output_o\ : std_logic;
SIGNAL \out_pc[27]~output_o\ : std_logic;
SIGNAL \out_pc[28]~output_o\ : std_logic;
SIGNAL \out_pc[29]~output_o\ : std_logic;
SIGNAL \out_pc[30]~output_o\ : std_logic;
SIGNAL \out_pc[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \FD|PC|data_s[2]~30_combout\ : std_logic;
SIGNAL \FD|PC|data_s[2]~31\ : std_logic;
SIGNAL \FD|PC|data_s[3]~32_combout\ : std_logic;
SIGNAL \FD|PC|data_s[3]~33\ : std_logic;
SIGNAL \FD|PC|data_s[4]~34_combout\ : std_logic;
SIGNAL \FD|PC|data_s[4]~35\ : std_logic;
SIGNAL \FD|PC|data_s[5]~36_combout\ : std_logic;
SIGNAL \FD|PC|data_s[5]~37\ : std_logic;
SIGNAL \FD|PC|data_s[6]~38_combout\ : std_logic;
SIGNAL \FD|PC|data_s[6]~39\ : std_logic;
SIGNAL \FD|PC|data_s[7]~40_combout\ : std_logic;
SIGNAL \FD|PC|data_s[7]~41\ : std_logic;
SIGNAL \FD|PC|data_s[8]~42_combout\ : std_logic;
SIGNAL \FD|PC|data_s[8]~43\ : std_logic;
SIGNAL \FD|PC|data_s[9]~44_combout\ : std_logic;
SIGNAL \FD|PC|data_s[9]~45\ : std_logic;
SIGNAL \FD|PC|data_s[10]~46_combout\ : std_logic;
SIGNAL \FD|PC|data_s[10]~47\ : std_logic;
SIGNAL \FD|PC|data_s[11]~48_combout\ : std_logic;
SIGNAL \FD|PC|data_s[11]~49\ : std_logic;
SIGNAL \FD|PC|data_s[12]~50_combout\ : std_logic;
SIGNAL \FD|PC|data_s[12]~51\ : std_logic;
SIGNAL \FD|PC|data_s[13]~52_combout\ : std_logic;
SIGNAL \FD|PC|data_s[13]~53\ : std_logic;
SIGNAL \FD|PC|data_s[14]~54_combout\ : std_logic;
SIGNAL \FD|PC|data_s[14]~55\ : std_logic;
SIGNAL \FD|PC|data_s[15]~56_combout\ : std_logic;
SIGNAL \FD|PC|data_s[15]~57\ : std_logic;
SIGNAL \FD|PC|data_s[16]~58_combout\ : std_logic;
SIGNAL \FD|PC|data_s[16]~59\ : std_logic;
SIGNAL \FD|PC|data_s[17]~60_combout\ : std_logic;
SIGNAL \FD|PC|data_s[17]~61\ : std_logic;
SIGNAL \FD|PC|data_s[18]~62_combout\ : std_logic;
SIGNAL \FD|PC|data_s[18]~63\ : std_logic;
SIGNAL \FD|PC|data_s[19]~64_combout\ : std_logic;
SIGNAL \FD|PC|data_s[19]~65\ : std_logic;
SIGNAL \FD|PC|data_s[20]~66_combout\ : std_logic;
SIGNAL \FD|PC|data_s[20]~67\ : std_logic;
SIGNAL \FD|PC|data_s[21]~68_combout\ : std_logic;
SIGNAL \FD|PC|data_s[21]~69\ : std_logic;
SIGNAL \FD|PC|data_s[22]~70_combout\ : std_logic;
SIGNAL \FD|PC|data_s[22]~71\ : std_logic;
SIGNAL \FD|PC|data_s[23]~72_combout\ : std_logic;
SIGNAL \FD|PC|data_s[23]~73\ : std_logic;
SIGNAL \FD|PC|data_s[24]~74_combout\ : std_logic;
SIGNAL \FD|PC|data_s[24]~75\ : std_logic;
SIGNAL \FD|PC|data_s[25]~76_combout\ : std_logic;
SIGNAL \FD|PC|data_s[25]~77\ : std_logic;
SIGNAL \FD|PC|data_s[26]~78_combout\ : std_logic;
SIGNAL \FD|PC|data_s[26]~79\ : std_logic;
SIGNAL \FD|PC|data_s[27]~80_combout\ : std_logic;
SIGNAL \FD|PC|data_s[27]~81\ : std_logic;
SIGNAL \FD|PC|data_s[28]~82_combout\ : std_logic;
SIGNAL \FD|PC|data_s[28]~83\ : std_logic;
SIGNAL \FD|PC|data_s[29]~84_combout\ : std_logic;
SIGNAL \FD|PC|data_s[29]~85\ : std_logic;
SIGNAL \FD|PC|data_s[30]~86_combout\ : std_logic;
SIGNAL \FD|PC|data_s[30]~87\ : std_logic;
SIGNAL \FD|PC|data_s[31]~88_combout\ : std_logic;
SIGNAL \FD|PC|data_s\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
out_ula <= ww_out_ula;
out_pc <= ww_out_pc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y62_N9
\out_ula[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\out_ula[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[1]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\out_ula[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[2]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\out_ula[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[3]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\out_ula[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[4]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\out_ula[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\out_ula[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[6]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\out_ula[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[7]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\out_ula[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[8]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\out_ula[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[9]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\out_ula[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[10]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\out_ula[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[11]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\out_ula[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[12]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\out_ula[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[13]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\out_ula[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[14]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\out_ula[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[15]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\out_ula[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[16]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\out_ula[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[17]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\out_ula[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[18]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\out_ula[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[19]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\out_ula[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[20]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\out_ula[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[21]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\out_ula[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[22]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\out_ula[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[23]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\out_ula[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[24]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\out_ula[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[25]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\out_ula[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[26]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\out_ula[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[27]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\out_ula[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[28]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\out_ula[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[29]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\out_ula[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[30]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\out_ula[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_ula[31]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\out_pc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_pc[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\out_pc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_pc[1]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\out_pc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(2),
	devoe => ww_devoe,
	o => \out_pc[2]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\out_pc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(3),
	devoe => ww_devoe,
	o => \out_pc[3]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\out_pc[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(4),
	devoe => ww_devoe,
	o => \out_pc[4]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\out_pc[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(5),
	devoe => ww_devoe,
	o => \out_pc[5]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\out_pc[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(6),
	devoe => ww_devoe,
	o => \out_pc[6]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\out_pc[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(7),
	devoe => ww_devoe,
	o => \out_pc[7]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\out_pc[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(8),
	devoe => ww_devoe,
	o => \out_pc[8]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\out_pc[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(9),
	devoe => ww_devoe,
	o => \out_pc[9]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\out_pc[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(10),
	devoe => ww_devoe,
	o => \out_pc[10]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\out_pc[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(11),
	devoe => ww_devoe,
	o => \out_pc[11]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\out_pc[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(12),
	devoe => ww_devoe,
	o => \out_pc[12]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\out_pc[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(13),
	devoe => ww_devoe,
	o => \out_pc[13]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\out_pc[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(14),
	devoe => ww_devoe,
	o => \out_pc[14]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\out_pc[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(15),
	devoe => ww_devoe,
	o => \out_pc[15]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\out_pc[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(16),
	devoe => ww_devoe,
	o => \out_pc[16]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\out_pc[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(17),
	devoe => ww_devoe,
	o => \out_pc[17]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\out_pc[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(18),
	devoe => ww_devoe,
	o => \out_pc[18]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\out_pc[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(19),
	devoe => ww_devoe,
	o => \out_pc[19]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\out_pc[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(20),
	devoe => ww_devoe,
	o => \out_pc[20]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\out_pc[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(21),
	devoe => ww_devoe,
	o => \out_pc[21]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\out_pc[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(22),
	devoe => ww_devoe,
	o => \out_pc[22]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\out_pc[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(23),
	devoe => ww_devoe,
	o => \out_pc[23]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\out_pc[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(24),
	devoe => ww_devoe,
	o => \out_pc[24]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\out_pc[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(25),
	devoe => ww_devoe,
	o => \out_pc[25]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\out_pc[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(26),
	devoe => ww_devoe,
	o => \out_pc[26]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\out_pc[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(27),
	devoe => ww_devoe,
	o => \out_pc[27]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\out_pc[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(28),
	devoe => ww_devoe,
	o => \out_pc[28]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\out_pc[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(29),
	devoe => ww_devoe,
	o => \out_pc[29]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\out_pc[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(30),
	devoe => ww_devoe,
	o => \out_pc[30]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\out_pc[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(31),
	devoe => ww_devoe,
	o => \out_pc[31]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y69_N2
\FD|PC|data_s[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[2]~30_combout\ = \FD|PC|data_s\(2) $ (VCC)
-- \FD|PC|data_s[2]~31\ = CARRY(\FD|PC|data_s\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(2),
	datad => VCC,
	combout => \FD|PC|data_s[2]~30_combout\,
	cout => \FD|PC|data_s[2]~31\);

-- Location: FF_X1_Y69_N3
\FD|PC|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(2));

-- Location: LCCOMB_X1_Y69_N4
\FD|PC|data_s[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[3]~32_combout\ = (\FD|PC|data_s\(3) & (!\FD|PC|data_s[2]~31\)) # (!\FD|PC|data_s\(3) & ((\FD|PC|data_s[2]~31\) # (GND)))
-- \FD|PC|data_s[3]~33\ = CARRY((!\FD|PC|data_s[2]~31\) # (!\FD|PC|data_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(3),
	datad => VCC,
	cin => \FD|PC|data_s[2]~31\,
	combout => \FD|PC|data_s[3]~32_combout\,
	cout => \FD|PC|data_s[3]~33\);

-- Location: FF_X1_Y69_N5
\FD|PC|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[3]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(3));

-- Location: LCCOMB_X1_Y69_N6
\FD|PC|data_s[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[4]~34_combout\ = (\FD|PC|data_s\(4) & (\FD|PC|data_s[3]~33\ $ (GND))) # (!\FD|PC|data_s\(4) & (!\FD|PC|data_s[3]~33\ & VCC))
-- \FD|PC|data_s[4]~35\ = CARRY((\FD|PC|data_s\(4) & !\FD|PC|data_s[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datad => VCC,
	cin => \FD|PC|data_s[3]~33\,
	combout => \FD|PC|data_s[4]~34_combout\,
	cout => \FD|PC|data_s[4]~35\);

-- Location: FF_X1_Y69_N7
\FD|PC|data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(4));

-- Location: LCCOMB_X1_Y69_N8
\FD|PC|data_s[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[5]~36_combout\ = (\FD|PC|data_s\(5) & (!\FD|PC|data_s[4]~35\)) # (!\FD|PC|data_s\(5) & ((\FD|PC|data_s[4]~35\) # (GND)))
-- \FD|PC|data_s[5]~37\ = CARRY((!\FD|PC|data_s[4]~35\) # (!\FD|PC|data_s\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(5),
	datad => VCC,
	cin => \FD|PC|data_s[4]~35\,
	combout => \FD|PC|data_s[5]~36_combout\,
	cout => \FD|PC|data_s[5]~37\);

-- Location: FF_X1_Y69_N9
\FD|PC|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(5));

-- Location: LCCOMB_X1_Y69_N10
\FD|PC|data_s[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[6]~38_combout\ = (\FD|PC|data_s\(6) & (\FD|PC|data_s[5]~37\ $ (GND))) # (!\FD|PC|data_s\(6) & (!\FD|PC|data_s[5]~37\ & VCC))
-- \FD|PC|data_s[6]~39\ = CARRY((\FD|PC|data_s\(6) & !\FD|PC|data_s[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datad => VCC,
	cin => \FD|PC|data_s[5]~37\,
	combout => \FD|PC|data_s[6]~38_combout\,
	cout => \FD|PC|data_s[6]~39\);

-- Location: FF_X1_Y69_N11
\FD|PC|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[6]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(6));

-- Location: LCCOMB_X1_Y69_N12
\FD|PC|data_s[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[7]~40_combout\ = (\FD|PC|data_s\(7) & (!\FD|PC|data_s[6]~39\)) # (!\FD|PC|data_s\(7) & ((\FD|PC|data_s[6]~39\) # (GND)))
-- \FD|PC|data_s[7]~41\ = CARRY((!\FD|PC|data_s[6]~39\) # (!\FD|PC|data_s\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datad => VCC,
	cin => \FD|PC|data_s[6]~39\,
	combout => \FD|PC|data_s[7]~40_combout\,
	cout => \FD|PC|data_s[7]~41\);

-- Location: FF_X1_Y69_N13
\FD|PC|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(7));

-- Location: LCCOMB_X1_Y69_N14
\FD|PC|data_s[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[8]~42_combout\ = (\FD|PC|data_s\(8) & (\FD|PC|data_s[7]~41\ $ (GND))) # (!\FD|PC|data_s\(8) & (!\FD|PC|data_s[7]~41\ & VCC))
-- \FD|PC|data_s[8]~43\ = CARRY((\FD|PC|data_s\(8) & !\FD|PC|data_s[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(8),
	datad => VCC,
	cin => \FD|PC|data_s[7]~41\,
	combout => \FD|PC|data_s[8]~42_combout\,
	cout => \FD|PC|data_s[8]~43\);

-- Location: FF_X1_Y69_N15
\FD|PC|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[8]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(8));

-- Location: LCCOMB_X1_Y69_N16
\FD|PC|data_s[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[9]~44_combout\ = (\FD|PC|data_s\(9) & (!\FD|PC|data_s[8]~43\)) # (!\FD|PC|data_s\(9) & ((\FD|PC|data_s[8]~43\) # (GND)))
-- \FD|PC|data_s[9]~45\ = CARRY((!\FD|PC|data_s[8]~43\) # (!\FD|PC|data_s\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(9),
	datad => VCC,
	cin => \FD|PC|data_s[8]~43\,
	combout => \FD|PC|data_s[9]~44_combout\,
	cout => \FD|PC|data_s[9]~45\);

-- Location: FF_X1_Y69_N17
\FD|PC|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(9));

-- Location: LCCOMB_X1_Y69_N18
\FD|PC|data_s[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[10]~46_combout\ = (\FD|PC|data_s\(10) & (\FD|PC|data_s[9]~45\ $ (GND))) # (!\FD|PC|data_s\(10) & (!\FD|PC|data_s[9]~45\ & VCC))
-- \FD|PC|data_s[10]~47\ = CARRY((\FD|PC|data_s\(10) & !\FD|PC|data_s[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(10),
	datad => VCC,
	cin => \FD|PC|data_s[9]~45\,
	combout => \FD|PC|data_s[10]~46_combout\,
	cout => \FD|PC|data_s[10]~47\);

-- Location: FF_X1_Y69_N19
\FD|PC|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(10));

-- Location: LCCOMB_X1_Y69_N20
\FD|PC|data_s[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[11]~48_combout\ = (\FD|PC|data_s\(11) & (!\FD|PC|data_s[10]~47\)) # (!\FD|PC|data_s\(11) & ((\FD|PC|data_s[10]~47\) # (GND)))
-- \FD|PC|data_s[11]~49\ = CARRY((!\FD|PC|data_s[10]~47\) # (!\FD|PC|data_s\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(11),
	datad => VCC,
	cin => \FD|PC|data_s[10]~47\,
	combout => \FD|PC|data_s[11]~48_combout\,
	cout => \FD|PC|data_s[11]~49\);

-- Location: FF_X1_Y69_N21
\FD|PC|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[11]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(11));

-- Location: LCCOMB_X1_Y69_N22
\FD|PC|data_s[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[12]~50_combout\ = (\FD|PC|data_s\(12) & (\FD|PC|data_s[11]~49\ $ (GND))) # (!\FD|PC|data_s\(12) & (!\FD|PC|data_s[11]~49\ & VCC))
-- \FD|PC|data_s[12]~51\ = CARRY((\FD|PC|data_s\(12) & !\FD|PC|data_s[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(12),
	datad => VCC,
	cin => \FD|PC|data_s[11]~49\,
	combout => \FD|PC|data_s[12]~50_combout\,
	cout => \FD|PC|data_s[12]~51\);

-- Location: FF_X1_Y69_N23
\FD|PC|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(12));

-- Location: LCCOMB_X1_Y69_N24
\FD|PC|data_s[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[13]~52_combout\ = (\FD|PC|data_s\(13) & (!\FD|PC|data_s[12]~51\)) # (!\FD|PC|data_s\(13) & ((\FD|PC|data_s[12]~51\) # (GND)))
-- \FD|PC|data_s[13]~53\ = CARRY((!\FD|PC|data_s[12]~51\) # (!\FD|PC|data_s\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(13),
	datad => VCC,
	cin => \FD|PC|data_s[12]~51\,
	combout => \FD|PC|data_s[13]~52_combout\,
	cout => \FD|PC|data_s[13]~53\);

-- Location: FF_X1_Y69_N25
\FD|PC|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[13]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(13));

-- Location: LCCOMB_X1_Y69_N26
\FD|PC|data_s[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[14]~54_combout\ = (\FD|PC|data_s\(14) & (\FD|PC|data_s[13]~53\ $ (GND))) # (!\FD|PC|data_s\(14) & (!\FD|PC|data_s[13]~53\ & VCC))
-- \FD|PC|data_s[14]~55\ = CARRY((\FD|PC|data_s\(14) & !\FD|PC|data_s[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(14),
	datad => VCC,
	cin => \FD|PC|data_s[13]~53\,
	combout => \FD|PC|data_s[14]~54_combout\,
	cout => \FD|PC|data_s[14]~55\);

-- Location: FF_X1_Y69_N27
\FD|PC|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(14));

-- Location: LCCOMB_X1_Y69_N28
\FD|PC|data_s[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[15]~56_combout\ = (\FD|PC|data_s\(15) & (!\FD|PC|data_s[14]~55\)) # (!\FD|PC|data_s\(15) & ((\FD|PC|data_s[14]~55\) # (GND)))
-- \FD|PC|data_s[15]~57\ = CARRY((!\FD|PC|data_s[14]~55\) # (!\FD|PC|data_s\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(15),
	datad => VCC,
	cin => \FD|PC|data_s[14]~55\,
	combout => \FD|PC|data_s[15]~56_combout\,
	cout => \FD|PC|data_s[15]~57\);

-- Location: FF_X1_Y69_N29
\FD|PC|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[15]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(15));

-- Location: LCCOMB_X1_Y69_N30
\FD|PC|data_s[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[16]~58_combout\ = (\FD|PC|data_s\(16) & (\FD|PC|data_s[15]~57\ $ (GND))) # (!\FD|PC|data_s\(16) & (!\FD|PC|data_s[15]~57\ & VCC))
-- \FD|PC|data_s[16]~59\ = CARRY((\FD|PC|data_s\(16) & !\FD|PC|data_s[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(16),
	datad => VCC,
	cin => \FD|PC|data_s[15]~57\,
	combout => \FD|PC|data_s[16]~58_combout\,
	cout => \FD|PC|data_s[16]~59\);

-- Location: FF_X1_Y69_N31
\FD|PC|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[16]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(16));

-- Location: LCCOMB_X1_Y68_N0
\FD|PC|data_s[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[17]~60_combout\ = (\FD|PC|data_s\(17) & (!\FD|PC|data_s[16]~59\)) # (!\FD|PC|data_s\(17) & ((\FD|PC|data_s[16]~59\) # (GND)))
-- \FD|PC|data_s[17]~61\ = CARRY((!\FD|PC|data_s[16]~59\) # (!\FD|PC|data_s\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(17),
	datad => VCC,
	cin => \FD|PC|data_s[16]~59\,
	combout => \FD|PC|data_s[17]~60_combout\,
	cout => \FD|PC|data_s[17]~61\);

-- Location: FF_X1_Y68_N1
\FD|PC|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[17]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(17));

-- Location: LCCOMB_X1_Y68_N2
\FD|PC|data_s[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[18]~62_combout\ = (\FD|PC|data_s\(18) & (\FD|PC|data_s[17]~61\ $ (GND))) # (!\FD|PC|data_s\(18) & (!\FD|PC|data_s[17]~61\ & VCC))
-- \FD|PC|data_s[18]~63\ = CARRY((\FD|PC|data_s\(18) & !\FD|PC|data_s[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(18),
	datad => VCC,
	cin => \FD|PC|data_s[17]~61\,
	combout => \FD|PC|data_s[18]~62_combout\,
	cout => \FD|PC|data_s[18]~63\);

-- Location: FF_X1_Y68_N3
\FD|PC|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[18]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(18));

-- Location: LCCOMB_X1_Y68_N4
\FD|PC|data_s[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[19]~64_combout\ = (\FD|PC|data_s\(19) & (!\FD|PC|data_s[18]~63\)) # (!\FD|PC|data_s\(19) & ((\FD|PC|data_s[18]~63\) # (GND)))
-- \FD|PC|data_s[19]~65\ = CARRY((!\FD|PC|data_s[18]~63\) # (!\FD|PC|data_s\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(19),
	datad => VCC,
	cin => \FD|PC|data_s[18]~63\,
	combout => \FD|PC|data_s[19]~64_combout\,
	cout => \FD|PC|data_s[19]~65\);

-- Location: FF_X1_Y68_N5
\FD|PC|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[19]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(19));

-- Location: LCCOMB_X1_Y68_N6
\FD|PC|data_s[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[20]~66_combout\ = (\FD|PC|data_s\(20) & (\FD|PC|data_s[19]~65\ $ (GND))) # (!\FD|PC|data_s\(20) & (!\FD|PC|data_s[19]~65\ & VCC))
-- \FD|PC|data_s[20]~67\ = CARRY((\FD|PC|data_s\(20) & !\FD|PC|data_s[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(20),
	datad => VCC,
	cin => \FD|PC|data_s[19]~65\,
	combout => \FD|PC|data_s[20]~66_combout\,
	cout => \FD|PC|data_s[20]~67\);

-- Location: FF_X1_Y68_N7
\FD|PC|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[20]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(20));

-- Location: LCCOMB_X1_Y68_N8
\FD|PC|data_s[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[21]~68_combout\ = (\FD|PC|data_s\(21) & (!\FD|PC|data_s[20]~67\)) # (!\FD|PC|data_s\(21) & ((\FD|PC|data_s[20]~67\) # (GND)))
-- \FD|PC|data_s[21]~69\ = CARRY((!\FD|PC|data_s[20]~67\) # (!\FD|PC|data_s\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(21),
	datad => VCC,
	cin => \FD|PC|data_s[20]~67\,
	combout => \FD|PC|data_s[21]~68_combout\,
	cout => \FD|PC|data_s[21]~69\);

-- Location: FF_X1_Y68_N9
\FD|PC|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[21]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(21));

-- Location: LCCOMB_X1_Y68_N10
\FD|PC|data_s[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[22]~70_combout\ = (\FD|PC|data_s\(22) & (\FD|PC|data_s[21]~69\ $ (GND))) # (!\FD|PC|data_s\(22) & (!\FD|PC|data_s[21]~69\ & VCC))
-- \FD|PC|data_s[22]~71\ = CARRY((\FD|PC|data_s\(22) & !\FD|PC|data_s[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(22),
	datad => VCC,
	cin => \FD|PC|data_s[21]~69\,
	combout => \FD|PC|data_s[22]~70_combout\,
	cout => \FD|PC|data_s[22]~71\);

-- Location: FF_X1_Y68_N11
\FD|PC|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[22]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(22));

-- Location: LCCOMB_X1_Y68_N12
\FD|PC|data_s[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[23]~72_combout\ = (\FD|PC|data_s\(23) & (!\FD|PC|data_s[22]~71\)) # (!\FD|PC|data_s\(23) & ((\FD|PC|data_s[22]~71\) # (GND)))
-- \FD|PC|data_s[23]~73\ = CARRY((!\FD|PC|data_s[22]~71\) # (!\FD|PC|data_s\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(23),
	datad => VCC,
	cin => \FD|PC|data_s[22]~71\,
	combout => \FD|PC|data_s[23]~72_combout\,
	cout => \FD|PC|data_s[23]~73\);

-- Location: FF_X1_Y68_N13
\FD|PC|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(23));

-- Location: LCCOMB_X1_Y68_N14
\FD|PC|data_s[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[24]~74_combout\ = (\FD|PC|data_s\(24) & (\FD|PC|data_s[23]~73\ $ (GND))) # (!\FD|PC|data_s\(24) & (!\FD|PC|data_s[23]~73\ & VCC))
-- \FD|PC|data_s[24]~75\ = CARRY((\FD|PC|data_s\(24) & !\FD|PC|data_s[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(24),
	datad => VCC,
	cin => \FD|PC|data_s[23]~73\,
	combout => \FD|PC|data_s[24]~74_combout\,
	cout => \FD|PC|data_s[24]~75\);

-- Location: FF_X1_Y68_N15
\FD|PC|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[24]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(24));

-- Location: LCCOMB_X1_Y68_N16
\FD|PC|data_s[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[25]~76_combout\ = (\FD|PC|data_s\(25) & (!\FD|PC|data_s[24]~75\)) # (!\FD|PC|data_s\(25) & ((\FD|PC|data_s[24]~75\) # (GND)))
-- \FD|PC|data_s[25]~77\ = CARRY((!\FD|PC|data_s[24]~75\) # (!\FD|PC|data_s\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(25),
	datad => VCC,
	cin => \FD|PC|data_s[24]~75\,
	combout => \FD|PC|data_s[25]~76_combout\,
	cout => \FD|PC|data_s[25]~77\);

-- Location: FF_X1_Y68_N17
\FD|PC|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(25));

-- Location: LCCOMB_X1_Y68_N18
\FD|PC|data_s[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[26]~78_combout\ = (\FD|PC|data_s\(26) & (\FD|PC|data_s[25]~77\ $ (GND))) # (!\FD|PC|data_s\(26) & (!\FD|PC|data_s[25]~77\ & VCC))
-- \FD|PC|data_s[26]~79\ = CARRY((\FD|PC|data_s\(26) & !\FD|PC|data_s[25]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(26),
	datad => VCC,
	cin => \FD|PC|data_s[25]~77\,
	combout => \FD|PC|data_s[26]~78_combout\,
	cout => \FD|PC|data_s[26]~79\);

-- Location: FF_X1_Y68_N19
\FD|PC|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[26]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(26));

-- Location: LCCOMB_X1_Y68_N20
\FD|PC|data_s[27]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[27]~80_combout\ = (\FD|PC|data_s\(27) & (!\FD|PC|data_s[26]~79\)) # (!\FD|PC|data_s\(27) & ((\FD|PC|data_s[26]~79\) # (GND)))
-- \FD|PC|data_s[27]~81\ = CARRY((!\FD|PC|data_s[26]~79\) # (!\FD|PC|data_s\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(27),
	datad => VCC,
	cin => \FD|PC|data_s[26]~79\,
	combout => \FD|PC|data_s[27]~80_combout\,
	cout => \FD|PC|data_s[27]~81\);

-- Location: FF_X1_Y68_N21
\FD|PC|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[27]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(27));

-- Location: LCCOMB_X1_Y68_N22
\FD|PC|data_s[28]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[28]~82_combout\ = (\FD|PC|data_s\(28) & (\FD|PC|data_s[27]~81\ $ (GND))) # (!\FD|PC|data_s\(28) & (!\FD|PC|data_s[27]~81\ & VCC))
-- \FD|PC|data_s[28]~83\ = CARRY((\FD|PC|data_s\(28) & !\FD|PC|data_s[27]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(28),
	datad => VCC,
	cin => \FD|PC|data_s[27]~81\,
	combout => \FD|PC|data_s[28]~82_combout\,
	cout => \FD|PC|data_s[28]~83\);

-- Location: FF_X1_Y68_N23
\FD|PC|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[28]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(28));

-- Location: LCCOMB_X1_Y68_N24
\FD|PC|data_s[29]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[29]~84_combout\ = (\FD|PC|data_s\(29) & (!\FD|PC|data_s[28]~83\)) # (!\FD|PC|data_s\(29) & ((\FD|PC|data_s[28]~83\) # (GND)))
-- \FD|PC|data_s[29]~85\ = CARRY((!\FD|PC|data_s[28]~83\) # (!\FD|PC|data_s\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(29),
	datad => VCC,
	cin => \FD|PC|data_s[28]~83\,
	combout => \FD|PC|data_s[29]~84_combout\,
	cout => \FD|PC|data_s[29]~85\);

-- Location: FF_X1_Y68_N25
\FD|PC|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[29]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(29));

-- Location: LCCOMB_X1_Y68_N26
\FD|PC|data_s[30]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[30]~86_combout\ = (\FD|PC|data_s\(30) & (\FD|PC|data_s[29]~85\ $ (GND))) # (!\FD|PC|data_s\(30) & (!\FD|PC|data_s[29]~85\ & VCC))
-- \FD|PC|data_s[30]~87\ = CARRY((\FD|PC|data_s\(30) & !\FD|PC|data_s[29]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(30),
	datad => VCC,
	cin => \FD|PC|data_s[29]~85\,
	combout => \FD|PC|data_s[30]~86_combout\,
	cout => \FD|PC|data_s[30]~87\);

-- Location: FF_X1_Y68_N27
\FD|PC|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[30]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(30));

-- Location: LCCOMB_X1_Y68_N28
\FD|PC|data_s[31]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[31]~88_combout\ = \FD|PC|data_s[30]~87\ $ (\FD|PC|data_s\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|data_s\(31),
	cin => \FD|PC|data_s[30]~87\,
	combout => \FD|PC|data_s[31]~88_combout\);

-- Location: FF_X1_Y68_N29
\FD|PC|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(31));

ww_out_ula(0) <= \out_ula[0]~output_o\;

ww_out_ula(1) <= \out_ula[1]~output_o\;

ww_out_ula(2) <= \out_ula[2]~output_o\;

ww_out_ula(3) <= \out_ula[3]~output_o\;

ww_out_ula(4) <= \out_ula[4]~output_o\;

ww_out_ula(5) <= \out_ula[5]~output_o\;

ww_out_ula(6) <= \out_ula[6]~output_o\;

ww_out_ula(7) <= \out_ula[7]~output_o\;

ww_out_ula(8) <= \out_ula[8]~output_o\;

ww_out_ula(9) <= \out_ula[9]~output_o\;

ww_out_ula(10) <= \out_ula[10]~output_o\;

ww_out_ula(11) <= \out_ula[11]~output_o\;

ww_out_ula(12) <= \out_ula[12]~output_o\;

ww_out_ula(13) <= \out_ula[13]~output_o\;

ww_out_ula(14) <= \out_ula[14]~output_o\;

ww_out_ula(15) <= \out_ula[15]~output_o\;

ww_out_ula(16) <= \out_ula[16]~output_o\;

ww_out_ula(17) <= \out_ula[17]~output_o\;

ww_out_ula(18) <= \out_ula[18]~output_o\;

ww_out_ula(19) <= \out_ula[19]~output_o\;

ww_out_ula(20) <= \out_ula[20]~output_o\;

ww_out_ula(21) <= \out_ula[21]~output_o\;

ww_out_ula(22) <= \out_ula[22]~output_o\;

ww_out_ula(23) <= \out_ula[23]~output_o\;

ww_out_ula(24) <= \out_ula[24]~output_o\;

ww_out_ula(25) <= \out_ula[25]~output_o\;

ww_out_ula(26) <= \out_ula[26]~output_o\;

ww_out_ula(27) <= \out_ula[27]~output_o\;

ww_out_ula(28) <= \out_ula[28]~output_o\;

ww_out_ula(29) <= \out_ula[29]~output_o\;

ww_out_ula(30) <= \out_ula[30]~output_o\;

ww_out_ula(31) <= \out_ula[31]~output_o\;

ww_out_pc(0) <= \out_pc[0]~output_o\;

ww_out_pc(1) <= \out_pc[1]~output_o\;

ww_out_pc(2) <= \out_pc[2]~output_o\;

ww_out_pc(3) <= \out_pc[3]~output_o\;

ww_out_pc(4) <= \out_pc[4]~output_o\;

ww_out_pc(5) <= \out_pc[5]~output_o\;

ww_out_pc(6) <= \out_pc[6]~output_o\;

ww_out_pc(7) <= \out_pc[7]~output_o\;

ww_out_pc(8) <= \out_pc[8]~output_o\;

ww_out_pc(9) <= \out_pc[9]~output_o\;

ww_out_pc(10) <= \out_pc[10]~output_o\;

ww_out_pc(11) <= \out_pc[11]~output_o\;

ww_out_pc(12) <= \out_pc[12]~output_o\;

ww_out_pc(13) <= \out_pc[13]~output_o\;

ww_out_pc(14) <= \out_pc[14]~output_o\;

ww_out_pc(15) <= \out_pc[15]~output_o\;

ww_out_pc(16) <= \out_pc[16]~output_o\;

ww_out_pc(17) <= \out_pc[17]~output_o\;

ww_out_pc(18) <= \out_pc[18]~output_o\;

ww_out_pc(19) <= \out_pc[19]~output_o\;

ww_out_pc(20) <= \out_pc[20]~output_o\;

ww_out_pc(21) <= \out_pc[21]~output_o\;

ww_out_pc(22) <= \out_pc[22]~output_o\;

ww_out_pc(23) <= \out_pc[23]~output_o\;

ww_out_pc(24) <= \out_pc[24]~output_o\;

ww_out_pc(25) <= \out_pc[25]~output_o\;

ww_out_pc(26) <= \out_pc[26]~output_o\;

ww_out_pc(27) <= \out_pc[27]~output_o\;

ww_out_pc(28) <= \out_pc[28]~output_o\;

ww_out_pc(29) <= \out_pc[29]~output_o\;

ww_out_pc(30) <= \out_pc[30]~output_o\;

ww_out_pc(31) <= \out_pc[31]~output_o\;
END structure;


