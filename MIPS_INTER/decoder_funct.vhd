library ieee;
use ieee.std_logic_1164.all;

entity decoderFunct is
  port ( funct : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of decoderFunct is

  constant SOMA  : std_logic_vector(5 downto 0) := "100000";
  constant SUB  : std_logic_vector(5 downto 0) := "100010";
  constant FUNCT_AND : std_logic_vector(5 downto 0) := "100100";
  constant FUNCT_OR : std_logic_vector(5 downto 0) := "100101";
  constant SLT : std_logic_vector(5 downto 0) := "101010";

  begin

  
saida <=   "0010" when funct = SOMA else
			  "0110" when funct = SUB else
			  "0000" when funct = FUNCT_AND else
			  "0001" when funct = FUNCT_OR else
			  "0111" when funct= SLT else
			  "0000"; -- NOP para intrucoes indefinidas
end architecture;