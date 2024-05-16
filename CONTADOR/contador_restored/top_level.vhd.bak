library ieee;
use ieee.std_logic_1164.all;

entity top_level is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
	 FPGA_RESET_N: in std_logic;
    LEDR  : out std_logic_vector(9 downto 0);
	 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0)
  );
end entity;


architecture arquitetura of top_level is

-- Faltam alguns sinais:
  signal Instrucao_IN : std_logic_vector (12 downto 0);
  
  signal ROM_address : std_logic_vector(8 downto 0);
  
  signal rd : std_logic;
  
  signal wr : std_logic;
    
  signal data_address : std_logic_vector(8 downto 0);
  
  signal Escrita_dados : std_logic_vector(7 downto 0);
  
  signal Leitura_dados : std_logic_vector(7 downto 0);
  
  signal saida_decoder_1 : std_logic_vector(7 downto 0);
  
  signal saida_decoder_2 : std_logic_vector(7 downto 0);
  
  signal habilita_ff1 : std_logic;
  
  signal dataOut_ff1 : std_logic_vector(8 downto 0);
  
  signal CLK : std_logic;
  
  signal pc_visu: std_logic_vector(6 downto 0);
  
  signal entrada_display_0 : std_logic_vector(3 downto 0);
  
  signal entrada_display_1 : std_logic_vector(3 downto 0);
  
  signal entrada_display_2 : std_logic_vector(3 downto 0);
  
  signal entrada_display_3 : std_logic_vector(3 downto 0);
  
  signal entrada_display_4 : std_logic_vector(3 downto 0);
  
  signal entrada_display_5 : std_logic_vector(3 downto 0);
  
  signal saida_FF_KEY0: std_logic;
  
  signal saida_FF_KEY1: std_logic;
  
  signal saida_detector_KEY0: std_logic;
  
  signal saida_detector_KEY1: std_logic;
  
  signal saida_detector_FPGA: std_logic;
  
  signal saida_FF_FPGA: std_logic;

  
  
  
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
CLK <= CLOCK_50;
--CLK <= KEY(3);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
          port map (
			 Endereco => ROM_address, 
			 Dado => Instrucao_IN);
			 


RAM1 : entity work.memoriaRAM   generic map (dataWidth => 8, addrWidth => 6)
          port map (
			 addr => data_address(5 downto 0), 
			 we => wr, 
			 re => rd, 
			 habilita  => saida_decoder_1(0), 
			 dado_in => Escrita_dados, 
			 dado_out => Leitura_dados , 
			 clk => CLK);
			 
CPU : entity work.CPU generic map (larguraDados=>8,larguraEnderecos=>9)
				port map(Rd => rd,
							Wr => wr,
							Rom_address => ROM_address,
							Instruction_IN => Instrucao_IN,
							Data_Address => data_address,
							Data_OUT => Escrita_dados,
							Data_IN => Leitura_dados,
							Clock => CLK
							);
							
Decoder3x8: entity work.decoder3x8 
					port map (entrada=>data_address(8 downto 6),
								 saida => saida_decoder_1
								);
								
Decoder3x8_2: entity work.decoder3x8 
					port map (entrada=>data_address(2 downto 0),
								 saida => saida_decoder_2
								);
			 
FF1 : entity work.flipflopGenerico
					port map(DIN=>Escrita_dados(0),
								DOUT=>LEDR(9),
								ENABLE=>(wr and saida_decoder_1(4) and saida_decoder_2(2) and not data_address(5)),
								CLK => CLK,
								RST => '0'
									);
									
FF2 : entity work.flipflopGenerico
					port map(DIN=>Escrita_dados(0),
								DOUT=>LEDR(8),
								ENABLE=>(wr and saida_decoder_1(4) and saida_decoder_2(1) and not data_address(5)),
								CLK => CLK,
								RST => '0'
									);

Reg_LEDS : entity work.registradorGenerico generic map (larguraDados=>8)
					port map(DIN=>Escrita_dados(7 downto 0),
								DOUT=>LEDR(7 downto 0),
								ENABLE=>(wr and saida_decoder_1(4) and saida_decoder_2(0) and not data_address(5)),
								CLK => CLK,
								RST => '0'
									);

					  
Reg0 : entity work.registradorGenerico generic map (larguraDados=>4)
					port map(DIN=>Escrita_dados(3 downto 0),
								DOUT=>entrada_display_0,
								ENABLE=>(wr and saida_decoder_1(4) and data_address(5) and saida_decoder_2(0)),
								CLK => CLK,
								RST => '0'
									);
									
Reg1 : entity work.registradorGenerico generic map (larguraDados=>4)
					port map(DIN=>Escrita_dados(3 downto 0),
								DOUT=> entrada_display_1,
								ENABLE=>(wr and saida_decoder_1(4) and data_address(5) and saida_decoder_2(1)),
								CLK => CLK,
								RST => '0'
									);
									
Reg2 : entity work.registradorGenerico generic map (larguraDados=>4)
					port map(DIN=>Escrita_dados(3 downto 0),
								DOUT=>entrada_display_2,
								ENABLE=>(wr and saida_decoder_1(4) and data_address(5) and saida_decoder_2(2)),
								CLK => CLK,
								RST => '0'
									);
									
Reg3 : entity work.registradorGenerico generic map (larguraDados=>4)
					port map(DIN=>Escrita_dados(3 downto 0),
								DOUT=>entrada_display_3,
								ENABLE=>(wr and saida_decoder_1(4) and saida_decoder_2(3)),
								CLK => CLK,
								RST => '0'
									);
									
Reg4 : entity work.registradorGenerico generic map (larguraDados=>4)
					port map(DIN=>Escrita_dados(3 downto 0),
								DOUT=>entrada_display_4,
								ENABLE=>(wr and saida_decoder_1(4) and saida_decoder_2(4)),
								CLK => CLK,
								RST => '0'
									);
									
Reg5 : entity work.registradorGenerico generic map (larguraDados=>4)
					port map(DIN=>Escrita_dados(3 downto 0),
								DOUT=>entrada_display_5,
								ENABLE=>(wr and saida_decoder_1(4) and saida_decoder_2(5)),
								CLK => CLK,
								RST => '0'
									);
									
display_0 :  entity work.conversorHex7Seg
        port map(dadoHex => entrada_display_0,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX0);
display_1 :  entity work.conversorHex7Seg
        port map(dadoHex => entrada_display_1,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX1);
display_2 :  entity work.conversorHex7Seg
        port map(dadoHex => entrada_display_2,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX2);
display_3 :  entity work.conversorHex7Seg
        port map(dadoHex => entrada_display_3,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX3);					  
display_4 :  entity work.conversorHex7Seg
        port map(dadoHex => entrada_display_4,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX4);					  
display_5 :  entity work.conversorHex7Seg
        port map(dadoHex => entrada_display_5,
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
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(1) and (not  data_address(5))), 
		  saida => Leitura_dados);
		
TST_chave_9: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & SW(9), 
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(2) and (not data_address(5))), 
		  saida => Leitura_dados);
		 
TST_Key0: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & KEY(0),
		  habilita =>  (rd and saida_decoder_1(5) and saida_decoder_2(0) and data_address(5)),
		  saida => Leitura_dados);
		 
TST_Key1: entity work.buffer_3_state_8portas
        port map(entrada => "0000000" & KEY(1), 
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
        port map (clk => CLK, entrada => not(KEY(0)), saida => saida_detector_KEY0);

 detector_KEY1: work.edgeDetector(bordaSubida)
       port map (clk => CLK, entrada => not(KEY(1)), saida => saida_detector_KEY1);
		  
detector_FPGA_RESET: work.edgeDetector(bordaSubida)
        port map (clk => CLK, entrada => not(FPGA_RESET_N), saida => saida_detector_FPGA);
		  
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
												
FF_FPGA: entity work.flipflopGenerico port map (DIN => '1',
												DOUT => saida_FF_FPGA,
												ENABLE => '1',
											   CLK => saida_detector_FPGA,
												RST =>(data_address(8) and data_address(7) 
												and data_address(6) and data_address(5)
												and data_address(4) and data_address(3)
												and data_address(2) and (not(data_address(1)))
												and data_address(0) and wr)
												);
												
												

					  
					  
end architecture;