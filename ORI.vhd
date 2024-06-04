library ieee;
use ieee.std_logic_1164.all;

entity ORI is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 16);
  port (
    entrada : in std_logic_vector(larguraDados-1 downto 0);
    seletor_MUX : in std_logic;
    saida_MUX : out std_logic_vector((larguraDados*2)-1 downto 0)

	 );
end entity;

architecture comportamento of ORI is
  begin
  
  MUX :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	  port map( 
				  entradaA_MUX => Saida_MUX_BEQ,
				  entradaB_MUX =>  Saida_PC_mais_4(31 downto 28) & Saida_ROM(25 downto 0) & "00",
				  seletor_MUX => Saida_Decoder(9),
				  saida_MUX => Saida_MUX_proxPC);
    
end architecture;