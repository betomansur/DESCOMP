library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  -- Biblioteca IEEE para funções aritméticas

entity ULA_1_bit is
    generic ( larguraDados : natural := 1 );

  port (
      entrada_A: in std_logic;
      entrada_B: in std_logic;
      SLT: in std_logic;
      Selecao: in std_logic_vector(1 downto 0);
      Inverte_B: in std_logic;
      Carry_vem_1: in std_logic;
      Carry_vai_1: out std_logic;
      Resultado: out std_logic
  );
end entity;

architecture comportamento of ULA_1_bit is
  
  signal saida_mux : std_logic;
  signal soma : std_logic;

begin

MUX2X1 : entity work.muxGenerico2x1_1_bit generic map (larguraDados => larguraDados) 
         port map (
             entradaA_MUX => entrada_B,
             entradaB_MUX => not(entrada_B),
             seletor_MUX => Inverte_B,
             saida_MUX => saida_mux
         );

somador: entity work.somador_ULA
        port map (
            entrada_A => saida_mux,
            entrada_B => entrada_A,
            C_vem_1 => Carry_vem_1,
            C_vai_1 => Carry_vai_1,
            soma => soma
        );

MUX4X1 : entity work.muxGenerico4x1 generic map (larguraDados => larguraDados) 
         port map (
             entradaA_MUX => saida_mux and entrada_A,
             entradaB_MUX => saida_mux or entrada_A,
             entradaC_MUX => soma,
             entradaD_MUX => SLT,
             seletor_MUX => Selecao,
             saida_MUX => Resultado
         );

end architecture;
