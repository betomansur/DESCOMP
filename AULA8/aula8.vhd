library ieee;
use ieee.std_logic_1164.all;

entity aula8 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
	 FPGA_RESET: in std_logic;
	 PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0)	 
  );
end entity;


architecture arquitetura of aula8 is

-- Faltam alguns sinais:
  signal Instrucao : std_logic_vector (12 downto 0);
  signal CPU_ROM : std_logic_vector(8 downto 0);
  signal rd : std_logic;
  signal wr : std_logic;
  signal rom_address : std_logic_vector(8 downto 0);
  signal data_address : std_logic_vector(8 downto 0);
  signal Escrita_dados : std_logic_vector(7 downto 0);
  signal Leitura_dados : std_logic_vector(7 downto 0);
  signal saida_decoder_1 : std_logic_vector(7 downto 0);
  signal saida_decoder_2 : std_logic_vector(7 downto 0);
  signal habilita_ff1 : std_logic;
  signal dataOut_ff1 : std_logic_vector(8 downto 0);
  signal clk : std_logic;
  signal pc_visu: std_logic_vector(6 downto 0);	
  signal reg1 : std_logic_vector(3 downto 0);
  signal reg2 : std_logic_vector(3 downto 0);
  signal reg3 : std_logic_vector(3 downto 0);
  signal reg4 : std_logic_vector(3 downto 0);
  signal reg5 : std_logic_vector(3 downto 0);
  signal reg6 : std_logic_vector(3 downto 0);
  signal s_f_KEY0: std_logic;
  signal s_f_KEY1: std_logic;
  signal sd_KEY0: std_logic;
  signal sd_KEY1: std_logic;



  
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= CLOCK_50;
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


CPU : entity work.CPU generic map (larguraDados=>8,larguraEnderecos=>9)
				port map(RD => rd,
							WR => wr,
							ROM_address => CPU_ROM,
							Instrucao_CPU => Instrucao,
							DATA_Address => data_address,
							DATA_OUT => Escrita_dados,
							DATA_IN => Leitura_dados,
							CLK => clk
);

ROM : entity work.memoriaROM generic map (dataWidth=>13,addrWidth=>9)
				port map(
							Endereco => CPU_ROM,
							Dado => Instrucao
				
);

RAM : entity work.memoriaRAM generic map (dataWidth=>8,addrWidth=>6)
				port map(
						  addr => data_address(5 downto 0),
						  we => wr,
						  re => rd,  
						  habilita => saida_decoder_1(0),
						  clk => clk, 
						  dado_in => Leitura_dados,
						  dado_out => Escrita_dados
				
);
				
Decoder3x8_1 : entity work.decoder3x8 port map(
							
							entrada => data_address(8 downto 6),
							saida => saida_decoder_1
);

Decoder3x8_2 : entity work.decoder3x8 port map(
							entrada => data_address(2 downto 0),
							saida => saida_decoder_2

);

flipflop1: entity work.flipflopGenerico port map(
							DIN => Escrita_dados(0),
							DOUT => LEDR(9),
							ENABLE => (wr and saida_decoder_1(4) and saida_decoder_2(2) and not data_address(5)),
							CLK => clk,
							RST => '0'


);

flipflop2: entity work.flipflopGenerico port map(
							DIN => Escrita_dados(0),
							DOUT => LEDR(8),
							ENABLE => (wr and saida_decoder_1(4) and saida_decoder_2(1) and not data_address(5)),
							CLK => clk,
							RST => '0'



);	

registrador_8_bits: entity work.registradorGenerico generic map(larguraDados=>8)
									port map(
												DIN=>Escrita_dados(7 downto 0),
												DOUT=>LEDR(7 downto 0),
												ENABLE=>(wr and saida_decoder_1(4) and saida_decoder_2(0) and not data_address(5)),
												CLK => clk,
												RST => '0'
									
									
);

registrador_1: entity work.registradorGenerico generic map(larguraDados=>4)

									port map(
												DIN=>Escrita_dados(3 downto 0),
												DOUT=>reg1,
												ENABLE=>(wr and saida_decoder_1(4) and saida_decoder_2(0) and data_address(5)),
												CLK => clk,
												RST => '0'
									
									
);

registrador_2: entity work.registradorGenerico generic map(larguraDados=>4)
									port map(
												DIN=>Escrita_dados(3 downto 0),
												DOUT=>reg2,
												ENABLE=>(wr and saida_decoder_1(4) and saida_decoder_2(1) and data_address(5)),
												CLK => clk,
												RST => '0'
									
									
);
registrador_3: entity work.registradorGenerico generic map(larguraDados=>4)
									port map(
												DIN=>Escrita_dados(3 downto 0),
												DOUT=>reg3,
												ENABLE=>(wr and saida_decoder_1(4) and saida_decoder_2(2) and data_address(5)),
												CLK => clk,
												RST => '0'
									
									
);
registrador_4: entity work.registradorGenerico generic map(larguraDados=>4)
									port map(
												DIN=>Escrita_dados(3 downto 0),
												DOUT=>reg4,
												ENABLE=>(wr and saida_decoder_1(4) and saida_decoder_2(3) and data_address(5)),
												CLK => clk,
												RST => '0'
									
									
);

registrador_5: entity work.registradorGenerico generic map(larguraDados=>4)
									port map(
												DIN=>Escrita_dados(3 downto 0),
												DOUT=>reg5,
												ENABLE=>(wr and saida_decoder_1(4) and saida_decoder_2(4) and data_address(5)),
												CLK => clk,
												RST => '0'
									
									
);
registrador_6: entity work.registradorGenerico generic map(larguraDados=>4)
									port map(
												DIN=>Escrita_dados(3 downto 0),
												DOUT=>reg6,
												ENABLE=>(wr and saida_decoder_1(4) and saida_decoder_2(5) and data_address(5)),
												CLK => clk,
												RST => '0'
									
									
);
display_1:  entity work.conversorHex7Seg
        port map(dadoHex => reg1,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX0);
					  
display_2:  entity work.conversorHex7Seg
        port map(dadoHex => reg2,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX1);
display_3:  entity work.conversorHex7Seg
        port map(dadoHex => reg3,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX2);
display_4:  entity work.conversorHex7Seg
        port map(dadoHex => reg4,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX3);
display_5:  entity work.conversorHex7Seg
        port map(dadoHex => reg5,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX4);
display_6:  entity work.conversorHex7Seg
        port map(dadoHex => reg6,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX5);
					  

TS8_chaves: entity work.buffer_3_state_8portas
        port map(entrada => SW(7 downto 0),
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(0) and (not data_address(5))) , 
		  saida => Escrita_dados);
		
chave_8: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & SW(8), 
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(1) and (not data_address(5))), 
		  saida => Escrita_dados);
		
chave_9: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & SW(9), 
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(2) and (not data_address(5))), 
		  saida => Escrita_dados);
		 
Key0: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & KEY(0),
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(0) and data_address(5)),
		  saida => Escrita_dados);
		 
Key1: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & KEY(1), 
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(1) and data_address(5)), 
		  saida => Escrita_dados);
		 
Key2: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & KEY(2),
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(2) and data_address(5)),
		  saida => Escrita_dados);
		  
Key3: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & KEY(3),
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(3) and data_address(5)),
		  saida => Escrita_dados);
		  
RESET: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & FPGA_RESET,
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(4) and data_address(5)),
		  saida => Escrita_dados);

												
end architecture;