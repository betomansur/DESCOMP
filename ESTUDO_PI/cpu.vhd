
library ieee;

use ieee.std_logic_1164.all;



entity CPU is

  -- Total de bits das entradas e saidas

  generic (

	 larguraDados : natural := 8;

	 larguraEnderecos : natural := 9;

	 simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE

  );

  port (

	 Instrucao_CPU : in std_logic_vector(12 downto 0);

	 RD            : out std_logic;

	 WR            : out std_logic;

	 ROM_address   : out std_logic_vector(8 downto 0);

	 DATA_Address  : out std_logic_vector(8 downto 0);

	 DATA_OUT      : out std_logic_vector(7 downto 0);

	 DATA_IN       : in std_logic_vector(7 downto 0);

	 CLK           : in std_logic
	 

  );

end entity;







architecture arquitetura of CPU is



-- Faltam alguns sinais:
  signal MUX_ZERO : std_logic_vector (larguraDados-1 downto 0);

  signal instrucao: std_logic_vector(12 downto 0);

  signal dados_entrada: std_logic_vector(7 downto 0);

  signal dados_saida: std_logic_vector(7 downto 0);

  signal MUX_1_Saida : std_logic_vector (larguraDados-1 downto 0);

  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);

  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);

  signal proxPC : std_logic_vector (8 downto 0);

  signal Endereco : std_logic_vector(8 downto 0);

  signal Saida_Decodificador : std_logic_vector (11 downto 0);

  signal habFlag : std_logic;

  signal saida_hab_flag : std_logic;

  signal saida_logica_desvio : std_logic_vector(1 downto 0);

  signal saida_reg_retorno : std_logic_vector(8 downto 0);

  signal saida_mux_4x1 : std_logic_vector(8 downto 0);

  

begin



-- Instanciando os componentes:



---- Para simular, fica mais simples tirar o edgeDetector

--gravar:  if simulacao generate

--CLK <= KEY(0);

--else generate

--detectorSub0: work.edgeDetector(bordaSubida)

--        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);

--end generate;



-- O port map completo do MUX.

MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)

		  port map( entradaA_MUX => dados_entrada,

					  entradaB_MUX =>  instrucao(7 downto 0),

					  seletor_MUX => Saida_Decodificador(5),

					  saida_MUX => MUX_1_Saida);

					  

MUX2 :  entity work.muxGenerico4x1  generic map (larguraDados => larguraDados+1)

		  port map( entradaA_MUX => proxPC,

					  entradaB_MUX =>  Instrucao(8 downto 0),

					  entradaC_MUX => saida_reg_retorno,

					  entradaD_MUX =>"000000000",

					  seletor_MUX => saida_logica_desvio,

					  saida_MUX => saida_mux_4x1);



-- O port map completo do Acumulador.

REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)

			 port map (DIN => Saida_ULA, 

						 DOUT => REG1_ULA_A, 

						 ENABLE => Saida_Decodificador(6), 

						 CLK => CLK, 

						 RST => '0');

						 

REG_Retorno: entity work.registradorGenerico generic map (larguraDados => larguraDados+1)

				 port map (

							 DIN => proxPC,

							 DOUT => saida_reg_retorno,

							 ENABLE => Saida_Decodificador(11),

							 CLK => CLK,

							 RST => '0');



-- O port map completo do Program Counter.

PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)

			 port map (DIN => saida_mux_4x1, 

			 DOUT => Endereco, 

			 ENABLE => '1', 

			 CLK => CLK, 

			 RST => '0');



incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)

		  port map( entrada => Endereco, 

		  saida => proxPC);





-- O port map completo da ULA:

ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)

			 port map (entradaA => REG1_ULA_A, 

			 entradaB => MUX_1_Saida, 

			 saida => Saida_ULA, 

			 seletor => Saida_Decodificador(8 downto 7),

			 flag_equal => habFlag);



			 

Decodificador : entity work.decoderInstru

						port map(

						opcode=>instrucao(12 downto 9),

						saida=>Saida_Decodificador);



			 

HAB_FLAG: entity work.flipflopGenerico

						port map(DIN=>habFlag,

									DOUT=>saida_hab_flag,

									ENABLE=>Saida_Decodificador(8),

									CLK => CLK,

									RST => '0');			

									



Logica_Desvio : entity work.logicaDesvio 

							port map(FLAG_EQ=>saida_hab_flag,

										JEQ=>Saida_Decodificador(7),

										JSR=>Saida_Decodificador(8),

										RET=>Saida_Decodificador(9),

										JMP=>Saida_Decodificador(10),

										Sel_MUX_PC=>saida_logica_desvio);

										



									



WR <= Saida_Decodificador(0);

RD <= Saida_Decodificador(1);

ROM_Address <= Endereco;



DATA_OUT <= REG1_ULA_A;

DATA_Address <= instrucao(8 downto 0);



end architecture;	