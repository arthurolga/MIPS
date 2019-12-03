library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

--https://insper.blackboard.com/bbcswebdav/pid-639417-dt-content-rid-4055150_2/courses/201962.GRENGCOM_201561_0004.DESIGNCOMP_6ENGCOMPA/Atividades/vhdl/_componentesVHDL.html#rom-mips
entity ROM IS
   generic (
          dataWidth: natural := 32;
          addrWidth: natural := 32;
          memoryAddrWidth:  natural := 6 );   -- 64 posicoes de 32 bits cada
   port ( Endereco : IN  STD_LOGIC_VECTOR (addrWidth-1 DOWNTO 0);
          Dado     : OUT STD_LOGIC_VECTOR (dataWidth-1 DOWNTO 0) );
end entity;

architecture assincrona OF ROM IS
  type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin

      -- Cola dos valores iniciais no banco de registradores
      -- $zero (#0) := 0x00
      -- $t0 (#8)  := 0x00
      -- $t1 (#9)  := 0x0A
      -- $t2 (#10) := 0x0B
      -- $t3 (#11) := 0x0C
      -- $t4 (#12) := 0x0D
      -- $t5 (#13) := 0x0E

        -- Inicializa os endereços:

		  tmp(0) := x"AC09_0008"; --sw $t1 8($zero) (m(8) := 0x0A)  100011 00000 01001 x0008                         -- 0    8
        tmp(1) := x"8C08_0008"; --lw $t0 8($zero) ($t0 := 0x0A)   100011 00000 01000 x0008                         -- 4    c
		  tmp(2) := x"0000_0000";                                                                                    -- 8    10
        tmp(3) := x"012A_4022"; --sub $t0 $t1 $t2 ($t0 := 0xFF)   000000 01001 01010 01000 00000 100010            -- C    14
        tmp(4) := x"012A_4024"; --and $t0 $t1 $t2 ($t0 := 0x0A)   000000 01001 01010 01000 00000 100100            -- 10   18
        tmp(5) := x"012A_4025"; --or $t0 $t1 $t2  ($t0 := 0x0B)   000000 01001 01010 01000 00000 100101            -- 14   1c
        tmp(6) := x"012A_402A"; --slt $t0 $t1 $t2 ($t0 := 0x01)   000000 01001 01010 01000 00000 101010            -- 18   20
		  tmp(7) := x"0000_0000";                                                                                    -- 1c   24
		  tmp(8) := x"0000_0000";                                                                                    -- 20   28
		  tmp(9) := x"0000_0000";                                                                                    -- 24   2c
        tmp(10) := x"010A_4020"; --add $t0 $t0 $t2 ($t0 := 0x0C)   000000 01000 01010 01000 00000 100000           -- 28   30
		  tmp(11) := x"0000_0000";                                                                                   -- 2c   34
		  tmp(12) := x"0000_0000";                                                                                   -- 30   38
		  tmp(13) := x"0000_0000";                                                                                   -- 34   3c
        tmp(14) := x"110B_FFFA"; --beq $t0 $t3 0xFA(pc := #10)      000100 01000 01011 xFFFC   "FA=-6"             -- 38   40
		  tmp(15) := x"0000_0000";                                                                                   -- 3c   44
		  tmp(16) := x"0000_0000";                                                                                   -- 40   48
		  tmp(17) := x"0000_0000";                                                                                   -- 44   4c
        tmp(18) := x"0800_0001"; --j 0x01 (pc := #1)               000010 00 x000001	                            -- 48
		  tmp(17) := x"0000_0000";
--		  tmp(0) := x"AC09_0008"; --sw $t1 8($zero) (m(8) := 0x0A)  100011 00000 01001 x0008
--        tmp(1) := x"8C08_0008"; --lw $t0 8($zero) ($t0 := 0x0A)   100011 00000 01000 x0008
--		  --nop
--        tmp(3) := x"012A_4022"; --sub $t0 $t1 $t2 ($t0 := 0xFF)   000000 01001 01010 01000 00000 100010
--        tmp(4) := x"012A_4024"; --and $t0 $t1 $t2 ($t0 := 0x0A)   000000 01001 01010 01000 00000 100100
--        tmp(5) := x"012A_4025"; --or $t0 $t1 $t2  ($t0 := 0x0B)   000000 01001 01010 01000 00000 100101
--        tmp(6) := x"012A_402A"; --slt $t0 $t1 $t2 ($t0 := 0x01)   000000 01001 01010 01000 00000 101010
--		  --nop--nop--nop
--        tmp(10) := x"010A_4020"; --add $t0 $t0 $t2 ($t0 := 0x0C)   000000 01000 01010 01000 00000 100000
--		  --nop--nop--nop
--        tmp(14) := x"110B_FFFA"; --beq $t0 $t3 0xFA(pc := #10)      000100 01000 01011 xFFFC   "FA=-6"
--		  --nop--nop--nop
--        tmp(18) := x"0800_0001"; --j 0x01 (pc := #1)               000010 00 x000001	
--		  --nop
        return tmp;
    end initMemory;

  signal memROM: blocoMemoria := initMemory;
  -- attribute ram_init_file : string;
  -- attribute ram_init_file of memROM:
  -- signal is "ROMcontent.mif";

-- Utiliza uma quantidade menor de endereços locais:
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;