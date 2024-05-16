library ieee;
use ieee.std_logic_1164.all;

entity top_level is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
	PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 Palavra_Controle : out std_logic_vector(11 downto 0);
	 EntradaB_ULA : out std_logic_vector(7 downto 0)
  );
end entity;


architecture arquitetura of top_level is

-- Faltam alguns sinais:
  signal entrada : std_logic_vector (31 downto 0);
  signal comando : std_logic_vector (3 downto 0);
  signal saida_reg1 : std_logic_vector (31 downto 0);
  signal saida_reg2 : std_logic_vector (31 downto 0);
  signal MUX_Saida : std_logic_vector (31 downto 0);
  signal Saida_ULA : std_logic_vector (31 downto 0);

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
REG1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => entrada, 
				    DOUT => saida_reg1, 
					ENABLE => comando(0), 
					CLK => CLK, 
					RST => '0');

MUX :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
            port map( entradaA_MUX => saida_reg2,
            entradaB_MUX =>  saida_reg1,
            seletor_MUX => comando(1),
            saida_MUX => MUX_Saida);

ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
            port map (entradaA => MUX_Saida, 
                entradaB => saida_reg1, 
                saida => Saida_ULA, 
                seletor => comando(2));

                
REG2 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
port map (DIN => Saida_ULA, 
          DOUT => saida_reg2, 
          ENABLE => comando(3), 
          CLK => CLK, 
          RST => '0');


PC_OUT <= Endereco;
LEDR(7 downto 0) <=  REG1_ULA_A;
LEDR(9 downto 8) <=  Saida_Decodificador(4 downto 3);
Palavra_Controle <=  Saida_Decodificador;
EntradaB_ULA <= MUX_Saida;

end architecture;