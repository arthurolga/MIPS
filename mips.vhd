-- Design de Computadores
-- file: mips.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity mips is
	port
    (
        clk			            : IN  STD_LOGIC;
		  CLOCK_50			            : IN  STD_LOGIC;
		  out_ula					: OUT std_logic_vector(DATA_WIDTH-1 downto 0);
		  out_pc						: OUT std_logic_vector(DATA_WIDTH-1 downto 0);
		  KEY									: IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		  LEDR								: OUT STD_LOGIC_VECTOR(10 DOWNTO 0); 
		  HEX0     : out std_logic_vector(6 downto 0):= "1000000";
		  HEX1     : out std_logic_vector(6 downto 0):= "1000000";
		  HEX2     : out std_logic_vector(6 downto 0):= "1000000";
		  HEX3     : out std_logic_vector(6 downto 0):= "1000000";
		  HEX4     : out std_logic_vector(6 downto 0):= "1000000";
		  HEX5     : out std_logic_vector(6 downto 0):= "1000000";
		  HEX6     : out std_logic_vector(6 downto 0):= "1000000";
		  HEX7     : out std_logic_vector(6 downto 0):= "1000000"
    );
end entity;

architecture estrutural of mips is

	-- Declaração de sinais auxiliares
    signal pontosDeControle     : STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0);
    signal instrucao            : STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    signal ALUop                : STD_LOGIC_VECTOR(ALU_OP_WIDTH-1 DOWNTO 0);
    signal ALUctr               : STD_LOGIC_VECTOR(CTRL_ALU_WIDTH-1 DOWNTO 0);
	 
	 
	 signal saida_pc : std_logic_vector(DATA_WIDTH-1 downto 0);
	 signal saida_ula : std_logic_vector(DATA_WIDTH-1 downto 0);


    -- Sinal de clock auxiliar para simulação
    -- signal clk  : STD_LOGIC;

    alias opcode : std_logic_vector(OPCODE_WIDTH-1 downto 0) is instrucao(31 DOWNTO 26);
begin

    -- CLOCK generator auxiliar para simulação
    -- CG : entity work.clock_generator port map (clk	=> clk);

    FD : entity work.fluxo_dados 
	port map
	(
        clk	                    => clk,
        pontosDeControle        => pontosDeControle,
        instrucao               => instrucao,
		  out_pc						  => saida_pc,
		  out_ula					  => saida_ula
    );
	 
	 out_pc  <= saida_pc;
	 out_ula <= saida_ula;
	 
	 

    UC : entity work.uc 
	port map
	(
        opcode              	=> opcode,
        pontosDeControle    	=> pontosDeControle
    );
	 
	 
	 --- DISPLAYSS
	 
	 LEDR <= saida_pc(10 downto 0);
	 
	 
	 dhex0: entity work.conversorHex7Seg port map(
		  	dadoHex => saida_ula(3 downto 0),
			saida7seg => HEX0
	);
	 

end architecture;
