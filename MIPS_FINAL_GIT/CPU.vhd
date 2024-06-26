library ieee;
use ieee.std_logic_1164.all;

entity CPU is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    Rd: out std_logic;
    Wr: out std_logic;
	 Rom_Address: out std_logic_vector(larguraEnderecos-1 downto 0);
    Instruction_IN  : in std_logic_vector(15 downto 0);
	 Data_Address : out std_logic_vector(8 downto 0);
	 Data_OUT : out std_logic_vector(7 downto 0);
	 Data_IN : in std_logic_vector(7 downto 0);
	 Clock : in std_logic
  );
end entity;


architecture arquitetura of CPU is

-- Faltam alguns sinais:
  signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_ZERO : std_logic_vector (larguraDados-1 downto 0);
  signal saida_dados : std_logic_vector (7 downto 0);
  signal MUX_1 : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_Saida : std_logic_vector (larguraDados-1 downto 0);
  signal Banco_registrador_saida : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (3 downto 0);
  signal Endereco : std_logic_vector(larguraEnderecos-1 downto 0);
  signal proxPC : std_logic_vector (8 downto 0);
  signal Chave_Operacao_ULA : std_logic_vector(1 downto 0);
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Reset_A : std_logic;
  signal Operacao_ULA : std_logic_vector(1 downto 0);
  signal Comando_Opcode : std_logic_vector (3 downto 0);
  signal Saida_Decodificador : std_logic_vector (11 downto 0);
  signal Instrucao : std_logic_vector (15 downto 0);
  signal habilitaFlag : std_logic;
  signal saida_hab_flag : std_logic;
  signal saida_logica_desvio : std_logic_vector(1 downto 0);
  signal saida_reg_retorno : std_logic_vector(8 downto 0);
  signal saida_mux_4x1 : std_logic_vector(8 downto 0);
  
begin

-- Instanciando os componentes:
CLK <= Clock;

Instrucao<=Instruction_IN;
-- O port map completo do MUX.
MUX2x1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => saida_dados,
                 entradaB_MUX =>  Instrucao(7 downto 0),
                 seletor_MUX => Saida_Decodificador(6),
                 saida_MUX => MUX_Saida);
					  
MUX4x1 :  entity work.muxGenerico4x1  generic map (larguraDados => larguraDados+1)
        port map( entradaA_MUX => proxPC,
                 entradaB_MUX =>  Instrucao(8 downto 0),
					  entradaC_MUX => saida_reg_retorno,
					  entradaD_MUX =>"000000000",
                 seletor_MUX => saida_logica_desvio,
                 saida_MUX => saida_mux_4x1);

Banco_REG : entity work.bancoRegistradoresArqRegMem generic map (larguraDados=> larguraDados,larguraEndBancoRegs=>3) 

					port map(

					clk=>CLK,
					endereco=>Instrucao(15 downto 13),
					dadoEscrita=>Saida_ULA,
					habilitaEscrita=>Saida_Decodificador(5),
					saida=>Banco_registrador_saida
					);
																
												
												
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
ULA : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => Banco_registrador_saida, 
			 entradaB => MUX_Saida, 
			 saida => Saida_ULA, 
			 seletor => Saida_Decodificador(4 downto 3),
			 flag_equal => habilitaFlag);

			 
Decodificador : entity work.decoderInstru
						port map(opcode=>Instrucao(12 downto 9),
						saida=>Saida_Decodificador);


HAB_FLAG: entity work.flipflopGenerico
						port map(DIN=>habilitaFlag,
									DOUT=>saida_hab_flag,
									ENABLE=>Saida_Decodificador(2),
									CLK => CLK,
									RST => '0');			
									

Logica_Desvio : entity work.logicaDesvio 
							port map(FLAG_EQ=>saida_hab_flag,
										JEQ=>Saida_Decodificador(7),
										JSR=>Saida_Decodificador(8),
										RET=>Saida_Decodificador(9),
										JMP=>Saida_Decodificador(10),
										Sel_MUX_PC=>saida_logica_desvio);
										

										
Wr <= Saida_Decodificador(0);
Rd <= Saida_Decodificador(1);
ROM_Address <= Endereco;
saida_dados <= Data_IN;
Data_OUT <= Banco_registrador_saida;
Data_Address <= Instrucao(8 downto 0);
			 
end architecture;