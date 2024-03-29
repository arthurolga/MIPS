-- Design de Computadores
-- file: fluxo_dados.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity fluxo_dados is
    generic (
        larguraROM          : natural := 8 -- deve ser menor ou igual a 32
    );
	port
    (
        clk			            : IN STD_LOGIC;
        -- pontosDeControle        : IN STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0);
        instrucao               : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
		  out_ula					: OUT std_logic_vector(DATA_WIDTH-1 downto 0);
		  out_entradaAula					: OUT std_logic_vector(DATA_WIDTH-1 downto 0);
		  out_entradaBula					: OUT std_logic_vector(DATA_WIDTH-1 downto 0);
		  out_ULAop                   : OUT std_LOGIC_VECTOR(ALU_OP_WIDTH-1 downto 0);
		  out_selecionaULA            : OUT std_LOGIC_VECTOR(4-1 downto 0);
		  out_pc						: OUT std_logic_vector(DATA_WIDTH-1 downto 0);
		  out_MEMWB_mem					: OUT std_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
		  out_MEMWB_ula					: OUT std_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
		  out_select_mem_ula				: OUT std_LOGIC;
		  out_WB_escreve_rc				: OUT std_LOGIC;
		  out_enderecoEscrita         : OUT std_LOGIC_VECTOR(REGBANK_ADDR_WIDTH-1 downto 0);
		  out_sel_mux_beq					: OUT std_LOGIC;
		  
		  
		  
		 M_sel_beq_WF : OUT std_LOGIC;
	 
	   EXMEM_Z_out_WF :  OUT std_LOGIC;
		  
		  out_sel_mux_jump				: OUT std_LOGIC

    );
end entity;

architecture estrutural of fluxo_dados is

    -- Declaração de sinais auxiliares
    
    -- Sinais auxiliar da instrução
    signal instrucao_s : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para o banco de registradores
    signal RA, RB : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para a ULA
    signal saida_ula : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal Z_out : std_logic;

    -- Sinais auxiliares para a lógica do PC
    signal PC_s, PC_mais_4, PC_mais_4_mais_imediato, entrada_somador_beq : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para a RAM
    signal dado_lido_mem : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para os componentes manipuladores do imediato
    signal sinal_ext : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Sinais auxiliares para os componentes manipuladores do endereço de jump
    signal PC_4_concat_imed : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal saida_shift_jump : std_logic_vector(27 downto 0);
            
    -- Sinais auxiliares dos MUXs
    signal sel_mux_beq : std_logic;
    signal saida_mux_ula_mem, saida_mux_banco_ula, saida_mux_beq, saida_mux_jump : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal saida_mux_rd_rt : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0);
     
    -- Controle da ULA
    signal ULActr : std_logic_vector(CTRL_ALU_WIDTH-1 downto 0);
	 
	 -- Registradores de Controles
	 signal in_ifid, out_ifid : std_LOGIC_VECTOR(64-1 downto 0);
--	 signal IFID_instrucao : std_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
	 
	 alias soma4ifid : std_logic_vector(DATA_WIDTH-1 downto 0) is out_ifid(64-1 downto 32);
	 alias IFID_instrucao : std_LOGIC_VECTOR(DATA_WIDTH-1 downto 0) is out_ifid(31 downto 0);
	 
	 
	 signal in_idex, out_idex : std_LOGIC_VECTOR(148-1 downto 0);
	 -- EX
	 alias EX_sel_rd_rt :  std_logic is out_idex(142);
	 alias EX_ULAop :  std_logic_VECTOR is out_idex(141 downto 139);
	 alias EX_sel_banco_ula :  std_logic is out_idex(138);
	 
	 
	 alias IDEX_WB :  std_logic_vector(2-1 downto 0) is out_idex(147 downto 146);
	 alias IDEX_M :  std_logic_vector(3-1 downto 0) is out_idex(145 downto 143);
	 alias IDEX_pcmais4 : std_logic_vector(DATA_WIDTH-1 downto 0) is out_idex(137 downto 106);
	 alias IDEX_ra :  std_logic_vector(DATA_WIDTH-1 downto 0) is out_idex(105 downto 74);
	 alias IDEX_rb :  std_logic_vector(DATA_WIDTH-1 downto 0) is out_idex(73 downto 42);
	 alias IDEX_Im :  std_logic_vector(DATA_WIDTH-1 downto 0) is out_idex(41 downto 10);
	 alias IDEX_rt :  std_logic_vector(5-1 downto 0) is out_idex(9 downto 5);
	 alias IDEX_rd :  std_logic_vector(5-1 downto 0) is out_idex(4 downto 0);
	 
	 
	 signal in_exmem, out_exmem : std_LOGIC_VECTOR(107-1 downto 0);
	 
	 -- M
	 -- alias M_sel_jump : std_LOGIC is out_exmem(105);
	 alias M_sel_beq : std_LOGIC is out_exmem(104);
	 alias M_leitura_RAM : std_LOGIC is out_exmem(103);
	 alias M_escreve_RAM : std_LOGIC is out_exmem(102);
	 
	 alias EXMEM_WB :  std_logic_vector(2-1 downto 0) is out_exmem(106 downto 105);
	 alias EXMEM_PC_mais_4 :  std_logic_vector(DATA_WIDTH-1 downto 0) is out_exmem(101 downto 70);
	 alias EXMEM_Z_out :  std_logic is out_exmem(69);
	 alias EXMEM_saida_ula :  std_logic_vector(DATA_WIDTH-1 downto 0) is out_exmem(68 downto 37);
	 alias EXMEM_RB :  std_logic_vector(DATA_WIDTH-1 downto 0) is out_exmem(36 downto 5);
	 alias EXMEM_saida_mux_rd_rt :  std_logic_vector(5-1 downto 0) is out_exmem(4 downto 0);
	 
	 
	 signal in_memwb, out_memwb : std_LOGIC_VECTOR(71-1 downto 0);
	 
	 alias WB_escreve_RC :  std_logic is out_memwb(70);
	 alias WB_sel_mux_ula_mem :  std_logic is out_memwb(69);
	 
	 alias MEMWB_dado_lido_mem :  std_logic_vector(DATA_WIDTH-1 downto 0) is out_memwb(68 downto 37);
	 alias MEMWB_saida_ula :  std_logic_vector(DATA_WIDTH-1 downto 0) is out_memwb(36 downto 5);
	 alias MEMWB_saida_mux_rd_rt :  std_logic_vector(5-1 downto 0) is out_memwb(4 downto 0);
	 
	 

    -- Codigos da palavra de controle:
	 signal pontosDeControle_s : std_logic_vector(10 downto 0);
    alias ULAop             : std_logic_vector(ALU_OP_WIDTH-1 downto 0) is pontosDeControle_s(10 downto 8); -- EX
    alias escreve_RC        : std_logic is pontosDeControle_s(7); -- wb
    alias escreve_RAM       : std_logic is pontosDeControle_s(6); -- M
    alias leitura_RAM       : std_logic is pontosDeControle_s(5); -- M
    alias sel_mux_ula_mem   : std_logic is pontosDeControle_s(4); -- wb
    alias sel_mux_rd_rt     : std_logic is pontosDeControle_s(3); -- ex
    alias sel_mux_banco_ula : std_logic is pontosDeControle_s(2); -- ex
    alias sel_beq           : std_logic is pontosDeControle_s(1); -- M
    alias sel_mux_jump      : std_logic is pontosDeControle_s(0); -- M

    -- Parsing da instrucao
    alias RS_addr   : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is IFID_instrucao(25 downto 21);
    alias RT_addr   : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is IFID_instrucao(20 downto 16);
    alias RD_addr   : std_logic_vector(REGBANK_ADDR_WIDTH-1 downto 0) is IFID_instrucao(15 downto 11);
    -- alias funct     : std_logic_vector(FUNCT_WIDTH-1 downto 0) is  IFID_instrucao(5 DOWNTO 0);
    alias imediato  : std_logic_vector(15 downto 0) is IFID_instrucao(15 downto 0);
	 
	 
	 -- UC
	 alias opcode_uc : std_logic_vector(OPCODE_WIDTH-1 downto 0) is IFID_instrucao(31 DOWNTO 26);
	 
	 

begin
M_sel_beq_WF <= M_sel_beq;
EXMEM_Z_out_WF <= EXMEM_Z_out;		
	 -- Passando soh para debug
    instrucao <= IFID_instrucao;
	 
	 out_ula <= saida_ula;
	 out_pc  <= pc_s;

    sel_mux_beq <= M_sel_beq AND EXMEM_Z_out;
	 out_sel_mux_beq <= sel_mux_beq;
	 out_sel_mux_jump <= sel_mux_jump;
	 
	 
	  -- Reg IF/ID
	  in_ifid <=  PC_mais_4 & instrucao_s;
	  IFID: entity work.Registrador
        generic map (
            NUM_BITS => 64
        )
        port map (
            clk 		=> clk,
				enable   => '1',
				reset    => '1', -- Negado
				data_in  => in_ifid,
				data_out => out_ifid
				
        );
		  
	  -- Reg ID/EX WB                            M 3                                   EX                                          SOMADOR
	  in_idex <=  escreve_RC & sel_mux_ula_mem & sel_beq & leitura_RAM & escreve_RAM & sel_mux_rd_rt & ULAop & sel_mux_banco_ula & soma4ifid & RA & RB & sinal_ext & RT_addr & RD_addr;
	  IDEX: entity work.Registrador
        generic map (
            NUM_BITS => 148
        )
        port map (
            clk 		=> clk,
				enable   => '1',
				reset    => '1', -- Negado
				data_in  => in_idex,
				data_out => out_idex
				
        );
		  
	  -- Reg EX/MEM WB          M     PC+4                      Z       saida_ula      RB        saidaRDRT
	  in_exmem <=  IDEX_WB & IDEX_M & PC_mais_4_mais_imediato & Z_out & saida_ula & IDEX_rb & saida_mux_rd_rt;
	  EXMEM: entity work.Registrador
        generic map (
            NUM_BITS => 107
        )
        port map (
            clk 		=> clk,
				enable   => '1',
				reset    => '1', -- Negado
				data_in  => in_exmem,
				data_out => out_exmem
				
        );
		
	  -- Reg MEM/WB
	  in_memwb <=  EXMEM_WB & dado_lido_mem & EXMEM_saida_ula& EXMEM_saida_mux_rd_rt;
	  MEMWB: entity work.Registrador
        generic map (
            NUM_BITS => 71
        )
        port map (
            clk 		=> clk,
				enable   => '1',
				reset    => '1', -- Negado
				data_in  => in_memwb,
				data_out => out_memwb
			);
		

    -- Ajuste do PC para jump (concatena com imediato multiplicado por 4)
    PC_4_concat_imed <= PC_mais_4(31 downto 28) & saida_shift_jump;
	 -- PC_4_concat_imed <= EXMEM_PC_mais_4(31 downto 28) & saida_shift_jump;
 
		
    -- Banco de registradores
     BR: entity work.bancoRegistradores 
        generic map (
            larguraDados => DATA_WIDTH, 
            larguraEndBancoRegs => 5
        )
        port map (
            enderecoA => RS_addr,
            enderecoB => RT_addr,
            enderecoC => MEMWB_saida_mux_rd_rt,
            clk          => clk,
            dadoEscritaC => saida_mux_ula_mem, 
            escreveC     => WB_escreve_RC,
            saidaA       => RA,
            saidaB       => RB
        );
		  out_enderecoEscrita <= MEMWB_saida_mux_rd_rt;
    
    -- ULA
     ULA: entity work.ULA
        generic map (
            NUM_BITS => DATA_WIDTH
        )
		port map (
            A   => IDEX_ra,
            B   => saida_mux_banco_ula,
            ctr => ULActr,
            C   => saida_ula,
            Z   => Z_out
        );
		  
		  -- Saidas pra debuggar
		  out_entradaAula <= IDEX_ra;
		  out_entradaBula <= saida_mux_banco_ula;
		  out_selecionaULA <= ULActr;
		  out_ULAop <= EX_ULAop;
		  
    
			UCULA : entity work.uc_ula 
        port map
        (
            funct  => IDEX_Im(5 downto 0),
            ALUop  => EX_ULAop,
            ALUctr => ULActr
        );
		  -- Unidade de controle
	    UC : entity work.uc 
			port map
			(
				  opcode              	=> opcode_uc,
				  pontosDeControle    	=> pontosDeControle_s
			 );
     
    -- PC e somadores
     PC: entity work.Registrador
        generic map (
            NUM_BITS => DATA_WIDTH
        )
		port map (
            data_out => PC_s,
            data_in  => saida_mux_jump,
            clk      => clk,
            enable   => '1',
            reset    => '1' -- reset negado
        );
    
     Somador_imediato: entity work.somador 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => entrada_somador_beq,
            entradaB => IDEX_pcmais4,
            saida    => PC_mais_4_mais_imediato
        );
    
     Somador: entity work.soma4
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entrada => PC_s,
            saida   => PC_mais_4
        ); 

    -- ROM
    ROM: entity work.ROM 
        generic map (
            dataWidth => DATA_WIDTH, 
            addrWidth => larguraROM
        ) 
		port map (
            endereco => PC_s(larguraROM-1 downto 0),
            dado     => instrucao_s
        );
    
    -- RAM: escreve valor lido no registrador B no endereço de memória de acordo com a saída da ULA
     RAM: entity work.single_port_RAM 
        generic map (
            dataWidth => DATA_WIDTH, 
            addrWidth => ADDR_WIDTH
        )
		port map (
            endereco    => EXMEM_saida_ula, 
            we          => M_escreve_RAM,
            re          => M_leitura_RAM,
            clk         => clk,
            dado_write  => EXMEM_RB,
            dado_read   => dado_lido_mem
        ); 

     -- Componentes manipuladores do imediato
     extensor: entity work.estendeSinalGenerico 
        generic map (
            larguraDadoEntrada => 16,
            larguraDadoSaida   => DATA_WIDTH
        )
		port map (
            estendeSinal_IN  => imediato,
            estendeSinal_OUT => sinal_ext 
        ); 

     shift: entity work.shift2_imediato 
        generic map (
            larguraDado => DATA_WIDTH
        )
		port map (
            shift_IN  => IDEX_Im,
            shift_OUT => entrada_somador_beq
        );
    
    -- Componentes manipuladores do endereço de jump
     shift_jump: entity work.shift2 
        generic map (
            larguraDado => 26
        )
		port map (
            shift_IN  => IFID_instrucao(25 downto 0),
            shift_OUT => saida_shift_jump
        );
    
    -- MUXs
     mux_Ula_Memoria: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => MEMWB_saida_ula, 
            entradaB => MEMWB_dado_lido_mem, 
            seletor  => WB_sel_mux_ula_mem,
            saida    => saida_mux_ula_mem
        );
		  out_WB_escreve_rc <= WB_escreve_RC;
		  out_MEMWB_ula <= MEMWB_saida_ula;
		  out_MEMWB_mem <= MEMWB_dado_lido_mem;
		  out_select_mem_ula <= WB_sel_mux_ula_mem;
	 
     mux_Rd_Rt: entity work.muxGenerico2 
        generic map (
            larguraDados => REGBANK_ADDR_WIDTH
        )
		port map (
            entradaA => IDEX_rt,--RT_addr, 
            entradaB => IDEX_rd,
            seletor  => EX_sel_rd_rt,
            saida    => saida_mux_rd_rt
        );

	
     mux_Banco_Ula: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => IDEX_rb, 
            entradaB => IDEX_Im,  
            seletor  => EX_sel_banco_ula,
            saida    => saida_mux_banco_ula
        );
		
     mux_beq: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => PC_mais_4,
            entradaB => EXMEM_PC_mais_4, --PC_mais_4_mais_imediato,
            seletor  => sel_mux_beq,
            saida    => saida_mux_beq
        );
		
     mux_jump: entity work.muxGenerico2 
        generic map (
            larguraDados => DATA_WIDTH
        )
		port map (
            entradaA => saida_mux_beq,
            entradaB => PC_4_concat_imed,
            seletor  => sel_mux_jump,
            saida    => saida_mux_jump
        );

end architecture;
