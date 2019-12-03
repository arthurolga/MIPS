-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/03/2019 20:33:21"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fluxo_dados
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fluxo_dados_vhd_vec_tst IS
END fluxo_dados_vhd_vec_tst;
ARCHITECTURE fluxo_dados_arch OF fluxo_dados_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL instrucao : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL out_enderecoEscrita : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL out_entradaAula : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL out_entradaBula : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL out_MEMWB_mem : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL out_MEMWB_ula : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL out_pc : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL out_selecionaULA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out_select_mem_ula : STD_LOGIC;
SIGNAL out_ula : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL out_ULAop : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL out_WB_escreve_rc : STD_LOGIC;
COMPONENT fluxo_dados
	PORT (
	clk : IN STD_LOGIC;
	instrucao : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	out_enderecoEscrita : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	out_entradaAula : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	out_entradaBula : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	out_MEMWB_mem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	out_MEMWB_ula : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	out_pc : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	out_selecionaULA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	out_select_mem_ula : OUT STD_LOGIC;
	out_ula : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	out_ULAop : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	out_WB_escreve_rc : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fluxo_dados
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	instrucao => instrucao,
	out_enderecoEscrita => out_enderecoEscrita,
	out_entradaAula => out_entradaAula,
	out_entradaBula => out_entradaBula,
	out_MEMWB_mem => out_MEMWB_mem,
	out_MEMWB_ula => out_MEMWB_ula,
	out_pc => out_pc,
	out_selecionaULA => out_selecionaULA,
	out_select_mem_ula => out_select_mem_ula,
	out_ula => out_ula,
	out_ULAop => out_ULAop,
	out_WB_escreve_rc => out_WB_escreve_rc
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END fluxo_dados_arch;
