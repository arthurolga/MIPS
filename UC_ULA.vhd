-- Design de Computadores
-- file: UC_ULA.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity UC_ULA is
	port
    (
        funct               : IN STD_LOGIC_VECTOR(FUNCT_WIDTH-1 DOWNTO 0);
        ALUop               : IN STD_LOGIC_VECTOR(ALU_OP_WIDTH-1 DOWNTO 0);
        ALUctr              : OUT STD_LOGIC_VECTOR(CTRL_ALU_WIDTH-1 DOWNTO 0)
    );
end entity;

architecture bhv of UC_ULA is	
    signal ALUop_s : STD_LOGIC_VECTOR(ALU_OP_WIDTH-1 DOWNTO 0);
begin
	-- tipo r 000 
	-- LW 001
	-- STR 010
	-- jmp 011
	-- ulaR <= 
	ALUctr <= ulaCtrlAdd WHEN (ALUop=readFunctULA AND funct=functADD) ELSE -- ADD 0010
				 ulaCtrlSub WHEN (ALUop=readFunctULA AND funct=functSUB) ELSE -- SUB 0110
				 ulaCtrlAnd WHEN (ALUop=readFunctULA AND funct=functAND) ELSE -- AND 
				 ulaCtrlOr WHEN (ALUop=readFunctULA AND funct=functOR) ELSE -- OR 
				 ulaCtrlSlt WHEN (ALUop=readFunctULA AND funct=functSLT) ELSE -- SLT 
				 "0010" WHEN ALUop="001" ELSE -- LW 
				 "0010" WHEN ALUop="010" ELSE -- STR
				 "0111" WHEN ALUop="011" ELSE -- SLT/BEQ
				 "0000";
	

end bhv;