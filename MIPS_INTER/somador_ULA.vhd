library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  -- Biblioteca IEEE para funções aritméticas

entity somador_ULA is
  generic ( larguraDados : natural := 1);

  port (
      entrada_A: in std_logic;
      entrada_B: in std_logic;
      C_vem_1: in std_logic;
      C_vai_1: out std_logic;
      soma: out std_logic
  );
end entity;

architecture comportamento of somador_ULA is
  
begin
    soma <= C_vem_1 xor (entrada_A xor entrada_B);
    C_vai_1 <= (entrada_A and entrada_B) or (C_vem_1 and (entrada_A xor entrada_B));
	 
  
end architecture;
