library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  -- Biblioteca IEEE para funções aritméticas

entity ULA_bit31 is
    generic ( larguraDados : natural := 1 );

  port (
      entrada_A: in std_logic;
      entrada_B: in std_logic;
		SLT: in std_logic;
		Selecao: in std_logic_vector(1 downto 0);
	 	Inverte_B: in std_logic;
		Inverte_A: in std_logic;
      Carry_vem_1: in std_logic;
      Resultado: out std_logic;
		Overflow: out std_logic
  );
end entity;

architecture comportamento of ULA_bit31 is
  
  signal saida_mux_A: std_logic;
  signal saida_mux_B : std_logic;
  signal soma : std_logic;
  signal Carry_vai_1 : std_logic;

  

begin

MUX2X1_A : entity work.muxGenerico2x1_1_bit generic map (larguraDados => larguraDados) 
         port map (
             entradaA_MUX => entrada_A,
             entradaB_MUX => not(entrada_A),
             seletor_MUX => Inverte_A,
             saida_MUX => saida_mux_A
         );

MUX2X1_B : entity work.muxGenerico2x1_1_bit generic map (larguraDados => larguraDados) 
         port map (
             entradaA_MUX => entrada_B,
             entradaB_MUX => not(entrada_B),
             seletor_MUX => Inverte_B,
             saida_MUX => saida_mux_B
         );

somador: entity work.somador_ULA
        port map (
            entrada_A => saida_mux_A,
            entrada_B => saida_mux_B,
            C_vem_1 => Carry_vem_1,
            C_vai_1 => Carry_vai_1,
            soma => soma
        );

MUX4X1 : entity work.muxGenerico4x1 generic map (larguraDados => larguraDados) 
         port map (
             entradaA_MUX => saida_mux_A and saida_mux_B,
             entradaB_MUX => saida_mux_A or saida_mux_B,
             entradaC_MUX => soma,
             entradaD_MUX => SLT,
             seletor_MUX => Selecao,
             saida_MUX => Resultado
         );
						 
Overflow <= soma xor(Carry_vai_1 xor Carry_vem_1);

  
end architecture;
