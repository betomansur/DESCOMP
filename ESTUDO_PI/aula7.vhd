library ieee;
use ieee.std_logic_1164.all;

entity Aula7 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
	 PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 FPGA_RESET_N: in std_logic;
	 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0)	 
  );
end entity;


architecture arquitetura of Aula7 is

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
  signal pc_visu: std_logic_vector(6 downto 0);	
  
  signal reg_1 : std_logic_vector(3 downto 0);
  
  signal reg_2 : std_logic_vector(3 downto 0);
  
  signal reg_3 : std_logic_vector(3 downto 0);
  
  signal reg_4 : std_logic_vector(3 downto 0);
  
  signal reg_5 : std_logic_vector(3 downto 0);
  
  signal reg_6 : std_logic_vector(3 downto 0);
  
  signal saida_FF_KEY0: std_logic;
  
  signal saida_FF_KEY1: std_logic;
  
  signal saida_detector_KEY0: std_logic;
  
  signal saida_detector_KEY1: std_logic;
  
  signal clk : std_logic;

  

  
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
clk <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => clk);
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
						  clk => CLOCK_50, 
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

Reg1 : entity work.registradorGenerico generic map (larguraDados=>4)
					port map(DIN=>Escrita_dados(3 downto 0),
								DOUT=>reg_1,
								ENABLE=>(wr and saida_decoder_1(4) and data_address(5) and saida_decoder_2(0)),
								CLK => clk,
								RST => '0'
									);
									
Reg2 : entity work.registradorGenerico generic map (larguraDados=>4)
					port map(DIN=>Leitura_dados(3 downto 0),
								DOUT=> reg_2,
								ENABLE=>(wr and saida_decoder_1(4) and data_address(5) and saida_decoder_2(1)),
								CLK => clk,
								RST => '0'
									);
									
Reg3 : entity work.registradorGenerico generic map (larguraDados=>4)
					port map(DIN=>Leitura_dados(3 downto 0),
								DOUT=>reg_3,
								ENABLE=>(wr and saida_decoder_1(4) and data_address(5) and saida_decoder_2(2)),
								CLK => clk,
								RST => '0'
									);
									
Reg4 : entity work.registradorGenerico generic map (larguraDados=>4)
					port map(DIN=>Leitura_dados(3 downto 0),
								DOUT=>reg_4,
								ENABLE=>(wr and saida_decoder_1(4) and saida_decoder_2(3)),
								CLK => clk,
								RST => '0'
									);
									
Reg5 : entity work.registradorGenerico generic map (larguraDados=>4)
					port map(DIN=>Leitura_dados(3 downto 0),
								DOUT=>reg_5,
								ENABLE=>(wr and saida_decoder_1(4) and saida_decoder_2(4)),
								CLK => clk,
								RST => '0'
									);
									
Reg6 : entity work.registradorGenerico generic map (larguraDados=>4)
					port map(DIN=>Escrita_dados(3 downto 0),
								DOUT=>reg_6,
								ENABLE=>(wr and saida_decoder_1(4) and saida_decoder_2(5)),
								CLK => clk,
								RST => '0'
									);
									
display_0 :  entity work.conversorHex7Seg
        port map(dadoHex => reg_1,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX0);
display_1 :  entity work.conversorHex7Seg
        port map(dadoHex => reg_2,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX1);
display_2 :  entity work.conversorHex7Seg
        port map(dadoHex => reg_3,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX2);
display_3 :  entity work.conversorHex7Seg
        port map(dadoHex => reg_4,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX3);					  
display_4 :  entity work.conversorHex7Seg
        port map(dadoHex => reg_5,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX4);					  
display_5 :  entity work.conversorHex7Seg
        port map(dadoHex => reg_6,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX5);					  
					  
TST_8_chaves: entity work.buffer_3_state_8portas
        port map(entrada => SW(7 downto 0),
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(0) and (not data_address(5))) , 
		  saida => Leitura_dados);
		
TST_chave_8: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & SW(8), 
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(1) and (not data_address(5))), 
		  saida => Leitura_dados);
		
TST_chave_9: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & SW(9), 
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(2) and (not data_address(5))), 
		  saida => Leitura_dados);
		 
TST_Key0: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & saida_FF_KEY0,
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(0) and data_address(5)),
		  saida => Leitura_dados);
		 
TST_Key1: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & saida_FF_KEY1, 
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(1) and data_address(5)), 
		  saida => Leitura_dados);
		 
TST_Key2: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & KEY(2),
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(2) and data_address(5)),
		  saida => Leitura_dados);
		  
TST_Key3: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & KEY(3),
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(3) and data_address(5)),
		  saida => Leitura_dados);
		  
TST_FPGA: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & FPGA_RESET_N,
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(4) and data_address(5)),
		  saida => Leitura_dados);
		  
detector_KEY0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => not(KEY(0)), saida => saida_detector_KEY0);

detector_KEY1: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => not(KEY(1)), saida => saida_detector_KEY1);
		  
FF_KEY0: entity work.flipflopGenerico port map (DIN => '1',
												DOUT => saida_FF_KEY0,
												ENABLE => '1',
											   CLK => saida_detector_KEY0,
												RST => (data_address(8) and data_address(7) 
												and data_address(6) and data_address(5)
												and data_address(4) and data_address(3)
												and data_address(2) and data_address(1)
												and data_address(0) and wr)
												);
												
FF_KEY1: entity work.flipflopGenerico port map (DIN => '1',
												DOUT => saida_FF_KEY1,
												ENABLE => '1',
											   CLK => saida_detector_KEY1,
												RST =>(data_address(8) and data_address(7) 
												and data_address(6) and data_address(5)
												and data_address(4) and data_address(3)
												and data_address(2) and data_address(1)
												and (not data_address(0)) and wr)
												);
												
												
											


end architecture;