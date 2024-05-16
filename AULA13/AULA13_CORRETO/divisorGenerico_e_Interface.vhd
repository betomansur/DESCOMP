LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity divisorGenerico_e_Interface is
   port(clk      :   in std_logic;
      habilitaLeitura : in std_logic;
      limpaLeitura : in std_logic;
		switch : in std_logic;
      leituraUmSegundo :   out std_logic
   );
end entity;

architecture interface of divisorGenerico_e_Interface is
  signal sinalTempo : std_logic;
  signal saidaclk_reg1seg : std_logic;
  signal saida_Mux : std_logic;
  signal saidaclk_rapida: std_logic;

  
begin

baseTempo1: entity work.divisorGenerico
           generic map (divisor => 25000000)   -- divide por 25000000.
           port map (clk => clk, saida_clk => saidaclk_reg1seg);

			
baseTempo2: entity work.divisorGenerico
           generic map (divisor => 10000)   -- divide por 10000.
           port map (clk => clk, saida_clk => saidaclk_rapida);

registraTempoRapido: entity work.flipflopGenerico
   port map (DIN => '1', DOUT => sinalTempo,
         ENABLE => '1', CLK => saida_Mux,
         RST => limpaLeitura);
			
MUX: entity work.muxGenerico2x1 generic map (larguraDados => 1)
			port map (
			entradaA_MUX(0) => saidaclk_reg1seg,
			entradaB_MUX(0) => saidaclk_rapida,
			seletor_MUX => switch,
			saida_MUX(0) => saida_Mux
			);

-- Faz o tristate de saida:
leituraUmSegundo <= sinalTempo when habilitaLeitura = '1' else 'Z';

end architecture interface;


-- 2000000 
-- 500000
-- 10000 testar horas