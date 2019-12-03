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

-- DATE "12/03/2019 13:24:40"

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
	CLOCK_50 : IN std_logic;
	out_ula : OUT std_logic_vector(31 DOWNTO 0);
	out_pc : OUT std_logic_vector(31 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(10 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END mips;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[0]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[1]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[4]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[5]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[6]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[7]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[8]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[10]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[11]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[12]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[13]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[14]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[15]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[16]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[17]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[18]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[19]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[20]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[21]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[22]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[23]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[24]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[25]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[26]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[27]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[28]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[29]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[30]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_ula[31]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[1]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[3]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[4]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[5]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[6]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[7]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[8]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[9]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[10]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[11]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[12]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[13]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[14]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[15]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[16]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[17]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[18]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[19]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[20]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[21]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[22]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[23]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[24]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[25]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[26]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[27]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[28]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[29]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[30]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_pc[31]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_out_ula : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_out_pc : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
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
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \FD|PC|data_s[2]~87_combout\ : std_logic;
SIGNAL \FD|PC|data_s[3]~29_combout\ : std_logic;
SIGNAL \FD|PC|data_s[3]~30\ : std_logic;
SIGNAL \FD|PC|data_s[4]~31_combout\ : std_logic;
SIGNAL \FD|PC|data_s[4]~32\ : std_logic;
SIGNAL \FD|PC|data_s[5]~33_combout\ : std_logic;
SIGNAL \FD|PC|data_s[5]~34\ : std_logic;
SIGNAL \FD|PC|data_s[6]~35_combout\ : std_logic;
SIGNAL \FD|PC|data_s[6]~36\ : std_logic;
SIGNAL \FD|PC|data_s[7]~37_combout\ : std_logic;
SIGNAL \FD|PC|data_s[7]~38\ : std_logic;
SIGNAL \FD|PC|data_s[8]~39_combout\ : std_logic;
SIGNAL \FD|PC|data_s[8]~40\ : std_logic;
SIGNAL \FD|PC|data_s[9]~41_combout\ : std_logic;
SIGNAL \FD|PC|data_s[9]~42\ : std_logic;
SIGNAL \FD|PC|data_s[10]~43_combout\ : std_logic;
SIGNAL \FD|PC|data_s[10]~44\ : std_logic;
SIGNAL \FD|PC|data_s[11]~45_combout\ : std_logic;
SIGNAL \FD|PC|data_s[11]~46\ : std_logic;
SIGNAL \FD|PC|data_s[12]~47_combout\ : std_logic;
SIGNAL \FD|PC|data_s[12]~48\ : std_logic;
SIGNAL \FD|PC|data_s[13]~49_combout\ : std_logic;
SIGNAL \FD|PC|data_s[13]~50\ : std_logic;
SIGNAL \FD|PC|data_s[14]~51_combout\ : std_logic;
SIGNAL \FD|PC|data_s[14]~52\ : std_logic;
SIGNAL \FD|PC|data_s[15]~53_combout\ : std_logic;
SIGNAL \FD|PC|data_s[15]~54\ : std_logic;
SIGNAL \FD|PC|data_s[16]~55_combout\ : std_logic;
SIGNAL \FD|PC|data_s[16]~56\ : std_logic;
SIGNAL \FD|PC|data_s[17]~57_combout\ : std_logic;
SIGNAL \FD|PC|data_s[17]~58\ : std_logic;
SIGNAL \FD|PC|data_s[18]~59_combout\ : std_logic;
SIGNAL \FD|PC|data_s[18]~60\ : std_logic;
SIGNAL \FD|PC|data_s[19]~61_combout\ : std_logic;
SIGNAL \FD|PC|data_s[19]~62\ : std_logic;
SIGNAL \FD|PC|data_s[20]~63_combout\ : std_logic;
SIGNAL \FD|PC|data_s[20]~64\ : std_logic;
SIGNAL \FD|PC|data_s[21]~65_combout\ : std_logic;
SIGNAL \FD|PC|data_s[21]~66\ : std_logic;
SIGNAL \FD|PC|data_s[22]~67_combout\ : std_logic;
SIGNAL \FD|PC|data_s[22]~68\ : std_logic;
SIGNAL \FD|PC|data_s[23]~69_combout\ : std_logic;
SIGNAL \FD|PC|data_s[23]~70\ : std_logic;
SIGNAL \FD|PC|data_s[24]~71_combout\ : std_logic;
SIGNAL \FD|PC|data_s[24]~72\ : std_logic;
SIGNAL \FD|PC|data_s[25]~73_combout\ : std_logic;
SIGNAL \FD|PC|data_s[25]~74\ : std_logic;
SIGNAL \FD|PC|data_s[26]~75_combout\ : std_logic;
SIGNAL \FD|PC|data_s[26]~76\ : std_logic;
SIGNAL \FD|PC|data_s[27]~77_combout\ : std_logic;
SIGNAL \FD|PC|data_s[27]~78\ : std_logic;
SIGNAL \FD|PC|data_s[28]~79_combout\ : std_logic;
SIGNAL \FD|PC|data_s[28]~80\ : std_logic;
SIGNAL \FD|PC|data_s[29]~81_combout\ : std_logic;
SIGNAL \FD|PC|data_s[29]~82\ : std_logic;
SIGNAL \FD|PC|data_s[30]~83_combout\ : std_logic;
SIGNAL \FD|PC|data_s[30]~84\ : std_logic;
SIGNAL \FD|PC|data_s[31]~85_combout\ : std_logic;
SIGNAL \FD|PC|data_s\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_CLOCK_50 <= CLOCK_50;
out_ula <= ww_out_ula;
out_pc <= ww_out_pc;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y31_N9
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

-- Location: IOOBUF_X20_Y0_N2
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

-- Location: IOOBUF_X100_Y0_N2
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

-- Location: IOOBUF_X89_Y73_N23
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X11_Y0_N9
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

-- Location: IOOBUF_X109_Y73_N9
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

-- Location: IOOBUF_X45_Y0_N23
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

-- Location: IOOBUF_X111_Y0_N2
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

-- Location: IOOBUF_X0_Y44_N9
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

-- Location: IOOBUF_X45_Y0_N16
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

-- Location: IOOBUF_X115_Y64_N9
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

-- Location: IOOBUF_X115_Y55_N23
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

-- Location: IOOBUF_X115_Y33_N2
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

-- Location: IOOBUF_X115_Y17_N2
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X96_Y73_N16
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

-- Location: IOOBUF_X89_Y73_N16
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

-- Location: IOOBUF_X25_Y73_N23
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

-- Location: IOOBUF_X65_Y73_N16
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

-- Location: IOOBUF_X45_Y73_N2
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

-- Location: IOOBUF_X0_Y23_N23
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

-- Location: IOOBUF_X9_Y0_N16
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

-- Location: IOOBUF_X18_Y0_N16
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

-- Location: IOOBUF_X98_Y73_N16
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

-- Location: IOOBUF_X100_Y0_N16
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

-- Location: IOOBUF_X96_Y0_N23
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

-- Location: IOOBUF_X115_Y27_N2
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

-- Location: IOOBUF_X67_Y73_N16
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

-- Location: IOOBUF_X54_Y0_N9
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

-- Location: IOOBUF_X65_Y73_N9
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

-- Location: IOOBUF_X115_Y7_N16
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

-- Location: IOOBUF_X72_Y73_N2
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

-- Location: IOOBUF_X62_Y0_N16
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

-- Location: IOOBUF_X5_Y73_N23
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

-- Location: IOOBUF_X1_Y73_N2
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

-- Location: IOOBUF_X0_Y52_N2
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

-- Location: IOOBUF_X0_Y54_N9
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

-- Location: IOOBUF_X5_Y73_N9
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

-- Location: IOOBUF_X3_Y73_N2
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

-- Location: IOOBUF_X0_Y53_N9
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

-- Location: IOOBUF_X0_Y55_N9
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

-- Location: IOOBUF_X0_Y68_N9
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

-- Location: IOOBUF_X0_Y65_N16
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

-- Location: IOOBUF_X0_Y68_N2
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

-- Location: IOOBUF_X0_Y66_N23
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

-- Location: IOOBUF_X0_Y66_N16
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

-- Location: IOOBUF_X0_Y69_N9
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

-- Location: IOOBUF_X0_Y64_N2
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

-- Location: IOOBUF_X0_Y58_N16
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

-- Location: IOOBUF_X0_Y61_N23
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

-- Location: IOOBUF_X0_Y67_N23
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

-- Location: IOOBUF_X0_Y60_N16
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

-- Location: IOOBUF_X0_Y57_N16
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

-- Location: IOOBUF_X0_Y57_N23
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

-- Location: IOOBUF_X0_Y62_N23
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

-- Location: IOOBUF_X0_Y59_N16
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

-- Location: IOOBUF_X0_Y62_N16
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

-- Location: IOOBUF_X0_Y59_N23
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

-- Location: IOOBUF_X0_Y63_N16
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

-- Location: IOOBUF_X0_Y68_N16
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

-- Location: IOOBUF_X0_Y63_N23
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

-- Location: IOOBUF_X13_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(8),
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(9),
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|data_s\(10),
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

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

-- Location: LCCOMB_X1_Y65_N0
\FD|PC|data_s[2]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[2]~87_combout\ = !\FD|PC|data_s\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|data_s\(2),
	combout => \FD|PC|data_s[2]~87_combout\);

-- Location: FF_X1_Y65_N1
\FD|PC|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[2]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(2));

-- Location: LCCOMB_X1_Y65_N4
\FD|PC|data_s[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[3]~29_combout\ = (\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) $ (VCC))) # (!\FD|PC|data_s\(3) & (\FD|PC|data_s\(2) & VCC))
-- \FD|PC|data_s[3]~30\ = CARRY((\FD|PC|data_s\(3) & \FD|PC|data_s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(3),
	datab => \FD|PC|data_s\(2),
	datad => VCC,
	combout => \FD|PC|data_s[3]~29_combout\,
	cout => \FD|PC|data_s[3]~30\);

-- Location: FF_X1_Y65_N5
\FD|PC|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(3));

-- Location: LCCOMB_X1_Y65_N6
\FD|PC|data_s[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[4]~31_combout\ = (\FD|PC|data_s\(4) & (!\FD|PC|data_s[3]~30\)) # (!\FD|PC|data_s\(4) & ((\FD|PC|data_s[3]~30\) # (GND)))
-- \FD|PC|data_s[4]~32\ = CARRY((!\FD|PC|data_s[3]~30\) # (!\FD|PC|data_s\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(4),
	datad => VCC,
	cin => \FD|PC|data_s[3]~30\,
	combout => \FD|PC|data_s[4]~31_combout\,
	cout => \FD|PC|data_s[4]~32\);

-- Location: FF_X1_Y65_N7
\FD|PC|data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(4));

-- Location: LCCOMB_X1_Y65_N8
\FD|PC|data_s[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[5]~33_combout\ = (\FD|PC|data_s\(5) & (\FD|PC|data_s[4]~32\ $ (GND))) # (!\FD|PC|data_s\(5) & (!\FD|PC|data_s[4]~32\ & VCC))
-- \FD|PC|data_s[5]~34\ = CARRY((\FD|PC|data_s\(5) & !\FD|PC|data_s[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(5),
	datad => VCC,
	cin => \FD|PC|data_s[4]~32\,
	combout => \FD|PC|data_s[5]~33_combout\,
	cout => \FD|PC|data_s[5]~34\);

-- Location: FF_X1_Y65_N9
\FD|PC|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(5));

-- Location: LCCOMB_X1_Y65_N10
\FD|PC|data_s[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[6]~35_combout\ = (\FD|PC|data_s\(6) & (!\FD|PC|data_s[5]~34\)) # (!\FD|PC|data_s\(6) & ((\FD|PC|data_s[5]~34\) # (GND)))
-- \FD|PC|data_s[6]~36\ = CARRY((!\FD|PC|data_s[5]~34\) # (!\FD|PC|data_s\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(6),
	datad => VCC,
	cin => \FD|PC|data_s[5]~34\,
	combout => \FD|PC|data_s[6]~35_combout\,
	cout => \FD|PC|data_s[6]~36\);

-- Location: FF_X1_Y65_N11
\FD|PC|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(6));

-- Location: LCCOMB_X1_Y65_N12
\FD|PC|data_s[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[7]~37_combout\ = (\FD|PC|data_s\(7) & (\FD|PC|data_s[6]~36\ $ (GND))) # (!\FD|PC|data_s\(7) & (!\FD|PC|data_s[6]~36\ & VCC))
-- \FD|PC|data_s[7]~38\ = CARRY((\FD|PC|data_s\(7) & !\FD|PC|data_s[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(7),
	datad => VCC,
	cin => \FD|PC|data_s[6]~36\,
	combout => \FD|PC|data_s[7]~37_combout\,
	cout => \FD|PC|data_s[7]~38\);

-- Location: FF_X1_Y65_N13
\FD|PC|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(7));

-- Location: LCCOMB_X1_Y65_N14
\FD|PC|data_s[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[8]~39_combout\ = (\FD|PC|data_s\(8) & (!\FD|PC|data_s[7]~38\)) # (!\FD|PC|data_s\(8) & ((\FD|PC|data_s[7]~38\) # (GND)))
-- \FD|PC|data_s[8]~40\ = CARRY((!\FD|PC|data_s[7]~38\) # (!\FD|PC|data_s\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(8),
	datad => VCC,
	cin => \FD|PC|data_s[7]~38\,
	combout => \FD|PC|data_s[8]~39_combout\,
	cout => \FD|PC|data_s[8]~40\);

-- Location: FF_X1_Y65_N15
\FD|PC|data_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[8]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(8));

-- Location: LCCOMB_X1_Y65_N16
\FD|PC|data_s[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[9]~41_combout\ = (\FD|PC|data_s\(9) & (\FD|PC|data_s[8]~40\ $ (GND))) # (!\FD|PC|data_s\(9) & (!\FD|PC|data_s[8]~40\ & VCC))
-- \FD|PC|data_s[9]~42\ = CARRY((\FD|PC|data_s\(9) & !\FD|PC|data_s[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(9),
	datad => VCC,
	cin => \FD|PC|data_s[8]~40\,
	combout => \FD|PC|data_s[9]~41_combout\,
	cout => \FD|PC|data_s[9]~42\);

-- Location: FF_X1_Y65_N17
\FD|PC|data_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(9));

-- Location: LCCOMB_X1_Y65_N18
\FD|PC|data_s[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[10]~43_combout\ = (\FD|PC|data_s\(10) & (!\FD|PC|data_s[9]~42\)) # (!\FD|PC|data_s\(10) & ((\FD|PC|data_s[9]~42\) # (GND)))
-- \FD|PC|data_s[10]~44\ = CARRY((!\FD|PC|data_s[9]~42\) # (!\FD|PC|data_s\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(10),
	datad => VCC,
	cin => \FD|PC|data_s[9]~42\,
	combout => \FD|PC|data_s[10]~43_combout\,
	cout => \FD|PC|data_s[10]~44\);

-- Location: FF_X1_Y65_N19
\FD|PC|data_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(10));

-- Location: LCCOMB_X1_Y65_N20
\FD|PC|data_s[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[11]~45_combout\ = (\FD|PC|data_s\(11) & (\FD|PC|data_s[10]~44\ $ (GND))) # (!\FD|PC|data_s\(11) & (!\FD|PC|data_s[10]~44\ & VCC))
-- \FD|PC|data_s[11]~46\ = CARRY((\FD|PC|data_s\(11) & !\FD|PC|data_s[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(11),
	datad => VCC,
	cin => \FD|PC|data_s[10]~44\,
	combout => \FD|PC|data_s[11]~45_combout\,
	cout => \FD|PC|data_s[11]~46\);

-- Location: FF_X1_Y65_N21
\FD|PC|data_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[11]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(11));

-- Location: LCCOMB_X1_Y65_N22
\FD|PC|data_s[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[12]~47_combout\ = (\FD|PC|data_s\(12) & (!\FD|PC|data_s[11]~46\)) # (!\FD|PC|data_s\(12) & ((\FD|PC|data_s[11]~46\) # (GND)))
-- \FD|PC|data_s[12]~48\ = CARRY((!\FD|PC|data_s[11]~46\) # (!\FD|PC|data_s\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(12),
	datad => VCC,
	cin => \FD|PC|data_s[11]~46\,
	combout => \FD|PC|data_s[12]~47_combout\,
	cout => \FD|PC|data_s[12]~48\);

-- Location: FF_X1_Y65_N23
\FD|PC|data_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(12));

-- Location: LCCOMB_X1_Y65_N24
\FD|PC|data_s[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[13]~49_combout\ = (\FD|PC|data_s\(13) & (\FD|PC|data_s[12]~48\ $ (GND))) # (!\FD|PC|data_s\(13) & (!\FD|PC|data_s[12]~48\ & VCC))
-- \FD|PC|data_s[13]~50\ = CARRY((\FD|PC|data_s\(13) & !\FD|PC|data_s[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(13),
	datad => VCC,
	cin => \FD|PC|data_s[12]~48\,
	combout => \FD|PC|data_s[13]~49_combout\,
	cout => \FD|PC|data_s[13]~50\);

-- Location: FF_X1_Y65_N25
\FD|PC|data_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[13]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(13));

-- Location: LCCOMB_X1_Y65_N26
\FD|PC|data_s[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[14]~51_combout\ = (\FD|PC|data_s\(14) & (!\FD|PC|data_s[13]~50\)) # (!\FD|PC|data_s\(14) & ((\FD|PC|data_s[13]~50\) # (GND)))
-- \FD|PC|data_s[14]~52\ = CARRY((!\FD|PC|data_s[13]~50\) # (!\FD|PC|data_s\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(14),
	datad => VCC,
	cin => \FD|PC|data_s[13]~50\,
	combout => \FD|PC|data_s[14]~51_combout\,
	cout => \FD|PC|data_s[14]~52\);

-- Location: FF_X1_Y65_N27
\FD|PC|data_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[14]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(14));

-- Location: LCCOMB_X1_Y65_N28
\FD|PC|data_s[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[15]~53_combout\ = (\FD|PC|data_s\(15) & (\FD|PC|data_s[14]~52\ $ (GND))) # (!\FD|PC|data_s\(15) & (!\FD|PC|data_s[14]~52\ & VCC))
-- \FD|PC|data_s[15]~54\ = CARRY((\FD|PC|data_s\(15) & !\FD|PC|data_s[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(15),
	datad => VCC,
	cin => \FD|PC|data_s[14]~52\,
	combout => \FD|PC|data_s[15]~53_combout\,
	cout => \FD|PC|data_s[15]~54\);

-- Location: FF_X1_Y65_N29
\FD|PC|data_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[15]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(15));

-- Location: LCCOMB_X1_Y65_N30
\FD|PC|data_s[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[16]~55_combout\ = (\FD|PC|data_s\(16) & (!\FD|PC|data_s[15]~54\)) # (!\FD|PC|data_s\(16) & ((\FD|PC|data_s[15]~54\) # (GND)))
-- \FD|PC|data_s[16]~56\ = CARRY((!\FD|PC|data_s[15]~54\) # (!\FD|PC|data_s\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(16),
	datad => VCC,
	cin => \FD|PC|data_s[15]~54\,
	combout => \FD|PC|data_s[16]~55_combout\,
	cout => \FD|PC|data_s[16]~56\);

-- Location: FF_X1_Y65_N31
\FD|PC|data_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[16]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(16));

-- Location: LCCOMB_X1_Y64_N0
\FD|PC|data_s[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[17]~57_combout\ = (\FD|PC|data_s\(17) & (\FD|PC|data_s[16]~56\ $ (GND))) # (!\FD|PC|data_s\(17) & (!\FD|PC|data_s[16]~56\ & VCC))
-- \FD|PC|data_s[17]~58\ = CARRY((\FD|PC|data_s\(17) & !\FD|PC|data_s[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(17),
	datad => VCC,
	cin => \FD|PC|data_s[16]~56\,
	combout => \FD|PC|data_s[17]~57_combout\,
	cout => \FD|PC|data_s[17]~58\);

-- Location: FF_X1_Y64_N1
\FD|PC|data_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[17]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(17));

-- Location: LCCOMB_X1_Y64_N2
\FD|PC|data_s[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[18]~59_combout\ = (\FD|PC|data_s\(18) & (!\FD|PC|data_s[17]~58\)) # (!\FD|PC|data_s\(18) & ((\FD|PC|data_s[17]~58\) # (GND)))
-- \FD|PC|data_s[18]~60\ = CARRY((!\FD|PC|data_s[17]~58\) # (!\FD|PC|data_s\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(18),
	datad => VCC,
	cin => \FD|PC|data_s[17]~58\,
	combout => \FD|PC|data_s[18]~59_combout\,
	cout => \FD|PC|data_s[18]~60\);

-- Location: FF_X1_Y64_N3
\FD|PC|data_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[18]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(18));

-- Location: LCCOMB_X1_Y64_N4
\FD|PC|data_s[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[19]~61_combout\ = (\FD|PC|data_s\(19) & (\FD|PC|data_s[18]~60\ $ (GND))) # (!\FD|PC|data_s\(19) & (!\FD|PC|data_s[18]~60\ & VCC))
-- \FD|PC|data_s[19]~62\ = CARRY((\FD|PC|data_s\(19) & !\FD|PC|data_s[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(19),
	datad => VCC,
	cin => \FD|PC|data_s[18]~60\,
	combout => \FD|PC|data_s[19]~61_combout\,
	cout => \FD|PC|data_s[19]~62\);

-- Location: FF_X1_Y64_N5
\FD|PC|data_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[19]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(19));

-- Location: LCCOMB_X1_Y64_N6
\FD|PC|data_s[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[20]~63_combout\ = (\FD|PC|data_s\(20) & (!\FD|PC|data_s[19]~62\)) # (!\FD|PC|data_s\(20) & ((\FD|PC|data_s[19]~62\) # (GND)))
-- \FD|PC|data_s[20]~64\ = CARRY((!\FD|PC|data_s[19]~62\) # (!\FD|PC|data_s\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(20),
	datad => VCC,
	cin => \FD|PC|data_s[19]~62\,
	combout => \FD|PC|data_s[20]~63_combout\,
	cout => \FD|PC|data_s[20]~64\);

-- Location: FF_X1_Y64_N7
\FD|PC|data_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[20]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(20));

-- Location: LCCOMB_X1_Y64_N8
\FD|PC|data_s[21]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[21]~65_combout\ = (\FD|PC|data_s\(21) & (\FD|PC|data_s[20]~64\ $ (GND))) # (!\FD|PC|data_s\(21) & (!\FD|PC|data_s[20]~64\ & VCC))
-- \FD|PC|data_s[21]~66\ = CARRY((\FD|PC|data_s\(21) & !\FD|PC|data_s[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(21),
	datad => VCC,
	cin => \FD|PC|data_s[20]~64\,
	combout => \FD|PC|data_s[21]~65_combout\,
	cout => \FD|PC|data_s[21]~66\);

-- Location: FF_X1_Y64_N9
\FD|PC|data_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[21]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(21));

-- Location: LCCOMB_X1_Y64_N10
\FD|PC|data_s[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[22]~67_combout\ = (\FD|PC|data_s\(22) & (!\FD|PC|data_s[21]~66\)) # (!\FD|PC|data_s\(22) & ((\FD|PC|data_s[21]~66\) # (GND)))
-- \FD|PC|data_s[22]~68\ = CARRY((!\FD|PC|data_s[21]~66\) # (!\FD|PC|data_s\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(22),
	datad => VCC,
	cin => \FD|PC|data_s[21]~66\,
	combout => \FD|PC|data_s[22]~67_combout\,
	cout => \FD|PC|data_s[22]~68\);

-- Location: FF_X1_Y64_N11
\FD|PC|data_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[22]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(22));

-- Location: LCCOMB_X1_Y64_N12
\FD|PC|data_s[23]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[23]~69_combout\ = (\FD|PC|data_s\(23) & (\FD|PC|data_s[22]~68\ $ (GND))) # (!\FD|PC|data_s\(23) & (!\FD|PC|data_s[22]~68\ & VCC))
-- \FD|PC|data_s[23]~70\ = CARRY((\FD|PC|data_s\(23) & !\FD|PC|data_s[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(23),
	datad => VCC,
	cin => \FD|PC|data_s[22]~68\,
	combout => \FD|PC|data_s[23]~69_combout\,
	cout => \FD|PC|data_s[23]~70\);

-- Location: FF_X1_Y64_N13
\FD|PC|data_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[23]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(23));

-- Location: LCCOMB_X1_Y64_N14
\FD|PC|data_s[24]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[24]~71_combout\ = (\FD|PC|data_s\(24) & (!\FD|PC|data_s[23]~70\)) # (!\FD|PC|data_s\(24) & ((\FD|PC|data_s[23]~70\) # (GND)))
-- \FD|PC|data_s[24]~72\ = CARRY((!\FD|PC|data_s[23]~70\) # (!\FD|PC|data_s\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(24),
	datad => VCC,
	cin => \FD|PC|data_s[23]~70\,
	combout => \FD|PC|data_s[24]~71_combout\,
	cout => \FD|PC|data_s[24]~72\);

-- Location: FF_X1_Y64_N15
\FD|PC|data_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[24]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(24));

-- Location: LCCOMB_X1_Y64_N16
\FD|PC|data_s[25]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[25]~73_combout\ = (\FD|PC|data_s\(25) & (\FD|PC|data_s[24]~72\ $ (GND))) # (!\FD|PC|data_s\(25) & (!\FD|PC|data_s[24]~72\ & VCC))
-- \FD|PC|data_s[25]~74\ = CARRY((\FD|PC|data_s\(25) & !\FD|PC|data_s[24]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(25),
	datad => VCC,
	cin => \FD|PC|data_s[24]~72\,
	combout => \FD|PC|data_s[25]~73_combout\,
	cout => \FD|PC|data_s[25]~74\);

-- Location: FF_X1_Y64_N17
\FD|PC|data_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[25]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(25));

-- Location: LCCOMB_X1_Y64_N18
\FD|PC|data_s[26]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[26]~75_combout\ = (\FD|PC|data_s\(26) & (!\FD|PC|data_s[25]~74\)) # (!\FD|PC|data_s\(26) & ((\FD|PC|data_s[25]~74\) # (GND)))
-- \FD|PC|data_s[26]~76\ = CARRY((!\FD|PC|data_s[25]~74\) # (!\FD|PC|data_s\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(26),
	datad => VCC,
	cin => \FD|PC|data_s[25]~74\,
	combout => \FD|PC|data_s[26]~75_combout\,
	cout => \FD|PC|data_s[26]~76\);

-- Location: FF_X1_Y64_N19
\FD|PC|data_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[26]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(26));

-- Location: LCCOMB_X1_Y64_N20
\FD|PC|data_s[27]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[27]~77_combout\ = (\FD|PC|data_s\(27) & (\FD|PC|data_s[26]~76\ $ (GND))) # (!\FD|PC|data_s\(27) & (!\FD|PC|data_s[26]~76\ & VCC))
-- \FD|PC|data_s[27]~78\ = CARRY((\FD|PC|data_s\(27) & !\FD|PC|data_s[26]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(27),
	datad => VCC,
	cin => \FD|PC|data_s[26]~76\,
	combout => \FD|PC|data_s[27]~77_combout\,
	cout => \FD|PC|data_s[27]~78\);

-- Location: FF_X1_Y64_N21
\FD|PC|data_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[27]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(27));

-- Location: LCCOMB_X1_Y64_N22
\FD|PC|data_s[28]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[28]~79_combout\ = (\FD|PC|data_s\(28) & (!\FD|PC|data_s[27]~78\)) # (!\FD|PC|data_s\(28) & ((\FD|PC|data_s[27]~78\) # (GND)))
-- \FD|PC|data_s[28]~80\ = CARRY((!\FD|PC|data_s[27]~78\) # (!\FD|PC|data_s\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(28),
	datad => VCC,
	cin => \FD|PC|data_s[27]~78\,
	combout => \FD|PC|data_s[28]~79_combout\,
	cout => \FD|PC|data_s[28]~80\);

-- Location: FF_X1_Y64_N23
\FD|PC|data_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[28]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(28));

-- Location: LCCOMB_X1_Y64_N24
\FD|PC|data_s[29]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[29]~81_combout\ = (\FD|PC|data_s\(29) & (\FD|PC|data_s[28]~80\ $ (GND))) # (!\FD|PC|data_s\(29) & (!\FD|PC|data_s[28]~80\ & VCC))
-- \FD|PC|data_s[29]~82\ = CARRY((\FD|PC|data_s\(29) & !\FD|PC|data_s[28]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|data_s\(29),
	datad => VCC,
	cin => \FD|PC|data_s[28]~80\,
	combout => \FD|PC|data_s[29]~81_combout\,
	cout => \FD|PC|data_s[29]~82\);

-- Location: FF_X1_Y64_N25
\FD|PC|data_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[29]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(29));

-- Location: LCCOMB_X1_Y64_N26
\FD|PC|data_s[30]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[30]~83_combout\ = (\FD|PC|data_s\(30) & (!\FD|PC|data_s[29]~82\)) # (!\FD|PC|data_s\(30) & ((\FD|PC|data_s[29]~82\) # (GND)))
-- \FD|PC|data_s[30]~84\ = CARRY((!\FD|PC|data_s[29]~82\) # (!\FD|PC|data_s\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|data_s\(30),
	datad => VCC,
	cin => \FD|PC|data_s[29]~82\,
	combout => \FD|PC|data_s[30]~83_combout\,
	cout => \FD|PC|data_s[30]~84\);

-- Location: FF_X1_Y64_N27
\FD|PC|data_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[30]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(30));

-- Location: LCCOMB_X1_Y64_N28
\FD|PC|data_s[31]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|data_s[31]~85_combout\ = \FD|PC|data_s[30]~84\ $ (!\FD|PC|data_s\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|data_s\(31),
	cin => \FD|PC|data_s[30]~84\,
	combout => \FD|PC|data_s[31]~85_combout\);

-- Location: FF_X1_Y64_N29
\FD|PC|data_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PC|data_s[31]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|data_s\(31));

-- Location: IOIBUF_X56_Y73_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X56_Y73_N22
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


