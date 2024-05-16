library ieee;
use ieee.std_logic_1164.all;

entity decoder_instru is
  port ( opcode : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(8 downto 0)
  );
end entity;

architecture comportamento of decoder_instru is

  constant LW  : std_logic_vector(5 downto 0) := "100011";
  constant SW  : std_logic_vector(5 downto 0) := "101011";
  constant BEQ : std_logic_vector(5 downto 0) := "000100";
  constant JMP : std_logic_vector(5 downto 0) := "000010";
  constant INST_R : std_logic_vector(5 downto 0) := "000000";
  

  begin

 
saida <=   "001101010" when opcode = LW else
			  "000100001" when opcode = SW else
			  "000000100" when opcode = BEQ else
			  "100000000" when opcode = JMP else
			  "011010000" when opcode = INST_R else
			  "000000000"; -- NOP para intrucoes indefinidas
end architecture;