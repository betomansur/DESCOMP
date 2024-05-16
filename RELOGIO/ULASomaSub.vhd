library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 4 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(1 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		flag_equal: out std_logic    );
end entity;

architecture comportamento of ULASomaSub is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal pass : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal and1 : STD_LOGIC_VECTOR((larguraDados-1) downto 0); 
	
    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		pass <= STD_LOGIC_VECTOR(unsigned(entradaB));
		and1 <= entradaA AND entradaB;
      saida <= soma when (seletor = "01") else 
					subtracao when (seletor="00") else
					pass when (seletor="10") else
					and1;
		flag_equal <= '1' when (subtracao=x"00") else '0';
		
		end architecture;