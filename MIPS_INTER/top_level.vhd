library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity top_level is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
          larguraEnderecos : natural := 32;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
  

    CLOCK_50 : in std_logic;
	 KEY: in std_logic_vector(0 downto 0);
	 SW : in std_logic_vector(0 downto 0);
	 LEDR  : out std_logic_vector(7 downto 0);
	 HEX0,HEX1,HEX2,HEX3,HEX4,HEX5  : out std_logic_vector(6 downto 0)
	 
);
  
end entity;

architecture arquitetura of top_level is

  signal CLK : std_logic;
  signal Saida_MUX_proxPC : std_logic_vector(31 downto 0);  
  signal Saida_pc : std_logic_vector(31 downto 0);  
  signal Saida_ROM : std_logic_vector(31 downto 0);
  signal Saida_Decoder : std_logic_vector(8 downto 0);
  signal Saida_MUX_RtRd : std_logic_vector(4 downto 0);  
  signal Saida_MUX_ULA_mem : std_logic_vector(31 downto 0);
  signal Saida_banco_reg_A : std_logic_vector(31 downto 0);  
  signal Saida_banco_reg_B : std_logic_vector(31 downto 0); 
  signal Saida_MUX_Rt_Imediato : std_logic_vector(31 downto 0);  
  signal Saida_Extensor_sinal : std_logic_vector(31 downto 0);
  signal Saida_Extensor_shift_1 : std_logic_vector(31 downto 0);
  signal Saida_ULA : std_logic_vector(31 downto 0);  
  signal Saida_UC_ULA : std_logic_vector(3 downto 0); 
  signal flag_E : std_logic;
  signal Saida_PC_mais_4 : std_logic_vector(31 downto 0); 
  signal Saida_somador : std_logic_vector(31 downto 0);  
  signal Saida_MUX_BEQ : std_logic_vector(31 downto 0);  
  signal Saida_RAM : std_logic_vector(31 downto 0);  
  signal Saida_MUX_PROX_PC : std_logic_vector(31 downto 0);  
  signal Saida_MUX_PER : std_logic_vector(31 downto 0);  
  signal saida_Decod_Hex0: std_logic_vector(6 downto 0);
  signal saida_Decod_Hex1: std_logic_vector(6 downto 0);
  signal saida_Decod_Hex2: std_logic_vector(6 downto 0);
  signal saida_Decod_Hex3: std_logic_vector(6 downto 0);
  signal saida_Decod_Hex4: std_logic_vector(6 downto 0);
  signal saida_Decod_Hex5: std_logic_vector(6 downto 0);

begin

	CLK <= not(KEY(0));



	--CLK <= CLOCK_50;
	
	PC : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
		 port map (
			 DIN => Saida_MUX_proxPC,
			 DOUT => Saida_pc	,
			 ENABLE => '1',
			 CLK => CLK,
			 RST => '0');
			 
	ROM : entity work.ROMMIPS generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6) 
				 port map (
						 Endereco => Saida_pc,
						 Dado => Saida_ROM);
						 
	MUX_RtRd :  entity work.muxGenerico2x1  generic map (larguraDados => 5)
	  port map( 
				  entradaA_MUX => Saida_ROM(20 downto 16),
				  entradaB_MUX =>  Saida_ROM(15 downto 11),
				  seletor_MUX => Saida_Decoder(7),
				  saida_MUX => Saida_MUX_RtRd);
				  
	
	BANCO_REG: entity work.banco_reg    generic map (larguraDados => larguraDados)
			  port map (   clk         => CLK,
								enderecoA   => Saida_ROM(25 downto 21),
								enderecoB   => Saida_ROM(20 downto 16), 
								enderecoC   => Saida_MUX_RtRd,
								dadoEscritaC=> Saida_MUX_ULA_mem,
								escreveC    => Saida_Decoder(6),
								saidaA      => Saida_banco_reg_A,
								saidaB      => Saida_banco_reg_B
							);	

	MUX_Rt_Imediato :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	  port map( 
				  entradaA_MUX => Saida_banco_reg_B,
				  entradaB_MUX =>  Saida_Extensor_sinal,
				  seletor_MUX => Saida_Decoder(5),
				  saida_MUX => Saida_MUX_Rt_Imediato);
	
	EstendeSinal : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => 32)
          port map (
			 estendeSinal_IN => Saida_ROM(15 downto 0), 
			 estendeSinal_OUT =>  Saida_Extensor_sinal
			 );
		 
	ULA : entity work.ULAMIPS generic map(larguraDados => larguraDados)
			 port map (
					 entradaA => Saida_banco_reg_A,
					 entradaB => Saida_MUX_Rt_Imediato,
					 saida => Saida_ULA,
					 selecao => Saida_UC_ULA,
					 flag => flag_E
					 );	

	Soma_constante :  entity work.somaConstante  generic map (larguraDados => larguraDados, constante => 4)
        port map( entrada => Saida_pc, saida => Saida_PC_mais_4);
		  
		  	

	Somador : entity work.somador  generic map (larguraDados => larguraDados)
        port map( entradaA => Saida_PC_mais_4, entradaB => Saida_Extensor_sinal(29 downto 0) & "00", saida => saida_somador);

		  
	MUX_BEQ :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	  port map( 
				  entradaA_MUX => Saida_PC_mais_4,
				  entradaB_MUX =>  saida_somador,
				  seletor_MUX => flag_E and Saida_Decoder(2),
				  saida_MUX => Saida_MUX_BEQ);
				  
	
	RAM : entity work.RAMMIPS generic map (dataWidth=> larguraDados, addrWidth=> larguraEnderecos, memoryAddrWidth => 6)
									port map (
									clk=>CLK,
									Endereco=>Saida_ULA,
									Dado_in=>Saida_banco_reg_B,
									Dado_out=>Saida_RAM,
									we=>Saida_Decoder(0),
									re=>Saida_Decoder(1),
									habilita=>'1'
									);
									
	MUX_ULAmem :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	  port map( 
				  entradaA_MUX => Saida_ULA,
				  entradaB_MUX =>  Saida_RAM,
				  seletor_MUX => Saida_Decoder(3),
				  saida_MUX => Saida_MUX_ULA_mem);
				  
	
	UnidadeControleULA: entity work.UnidadeControleULA
				port map (opcode => Saida_ROM(31 downto 26),
							 tipoR => Saida_Decoder(4),
							 funct => Saida_ROM(5 downto 0),
							 operacao => Saida_UC_ULA);

							 
	MUX_PROX_PC :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	  port map( 
				  entradaA_MUX => Saida_MUX_BEQ,
				  entradaB_MUX =>  Saida_PC_mais_4(31 downto 28) & Saida_ROM(25 downto 0) & "00",
				  seletor_MUX => Saida_Decoder(8),
				  saida_MUX => Saida_MUX_proxPC);
				  
   MUX_HEX_LED : entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	port map( 
				  entradaA_MUX =>  Saida_pc,
				  entradaB_MUX =>  Saida_ULA,
				  seletor_MUX => SW(0),
				  saida_MUX => Saida_MUX_PER);
				  
	Decoder : entity work.decoder_instru
		  port map( 
				  opcode => Saida_ROM(31 downto 26),
				  saida => Saida_Decoder);
				  
	display_HEX0 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_MUX_PER(3 downto 0),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => saida_Decod_Hex0);
					  
					  
	display_HEX1 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_MUX_PER(7 downto 4),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => saida_Decod_Hex1);
					  
					  
	display_HEX2 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_MUX_PER(11 downto 8),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => saida_Decod_Hex2);
					  
					  
	display_HEX3 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_MUX_PER(15 downto 12),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => saida_Decod_Hex3);
					  
					  
	display_HEX4 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_MUX_PER(19 downto 16),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => saida_Decod_Hex4);
					  
					  
	display_HEX5 :  entity work.conversorHex7Seg
        port map(dadoHex => Saida_MUX_PER(23 downto 20),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => saida_Decod_Hex5);
					  
					  

	HEX0 <= saida_Decod_Hex0;
	HEX1 <= saida_Decod_Hex1;
	HEX2 <= saida_Decod_Hex2;
	HEX3 <= saida_Decod_Hex3;
	HEX4 <= saida_Decod_Hex4;
	HEX5 <= saida_Decod_Hex5;
	
	LEDR(3 downto 0) <= Saida_MUX_PER(27 downto 24);
	LEDR(7 downto 4) <= Saida_MUX_PER(31 downto 28);
	
end architecture;