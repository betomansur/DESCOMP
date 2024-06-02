library ieee;
use ieee.std_logic_1164.all;

entity estendeSinalGenerico is
    generic
    (
        larguraDadoEntrada : natural  :=    16;
        larguraDadoSaida   : natural  :=    32
    );
    port
    (
        -- Input ports
        estendeSinal_IN : in  std_logic_vector(larguraDadoEntrada-1 downto 0);
		  seletor: in std_logic ;
        -- Output ports
        estendeSinal_OUT: out std_logic_vector(larguraDadoSaida-1 downto 0)
    );
end entity;

architecture comportamento of estendeSinalGenerico is

	  signal normal: std_logic_vector(larguraDadoSaida-1 downto 0);
	  signal ORI: std_logic_vector(larguraDadoSaida-1 downto 0);

	  

begin



    normal <= (larguraDadoSaida-1 downto larguraDadoEntrada => estendeSinal_IN(larguraDadoEntrada-1) ) & estendeSinal_IN;
	 ORI <= "0000000000000000" & estendeSinal_IN;
	 estendeSinal_OUT <= ORI when (seletor = '1') else normal;

end architecture;