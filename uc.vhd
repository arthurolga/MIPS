-- Design de Computadores
-- file: uc.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity uc is
	port
    (
        opcode              	: IN STD_LOGIC_VECTOR(OPCODE_WIDTH-1 DOWNTO 0);
        pontosDeControle    	: OUT STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0)
    );
end entity;

architecture bhv of uc is
begin
-- Pontos de controle:
--   alias ULAop             : std_logic_vector(ALU_OP_WIDTH-1 downto 0) is pontosDeControle(10 downto 8);
--    alias escreve_RC        : std_logic is pontosDeControle(7);
--    alias escreve_RAM       : std_logic is pontosDeControle(6);
--    alias leitura_RAM       : std_logic is pontosDeControle(5);
--    alias sel_mux_ula_mem   : std_logic is pontosDeControle(4);
--    alias sel_mux_rd_rt     : std_logic is pontosDeControle(3);
--    alias sel_mux_banco_ula : std_logic is pontosDeControle(2);-- imed
--    alias sel_beq           : std_logic is pontosDeControle(1);
--    alias sel_mux_jump      : std_logic is pontosDeControle(0);
    process(opcode)
	 begin
	 case opcode is
		when opCodeTipoR => pontosDeControle <= "00010001000"; --000
		when 	  opCodeLW => pontosDeControle <= "00110110100"; --001
		when 	  opCodeSW => pontosDeControle <= "01001000100"; --010
		when 	 opCodeBEQ => pontosDeControle <= "01100000010"; --011
		when opCodeTipoJ => pontosDeControle <= "00000000001"; --jmp
		when others => pontosDeControle <= "00000000000";
	 end case;
	 end process;

end bhv;