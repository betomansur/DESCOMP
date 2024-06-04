library ieee;
use ieee.std_logic_1164.all;

entity decoder_instru is
  port ( opcode : in std_logic_vector(5 downto 0);
  			funct : in std_logic_vector(5 downto 0); 
         saida : out std_logic_vector(13 downto 0)
  );
end entity;

architecture comportamento of decoder_instru is

  constant LW  : std_logic_vector(5 downto 0) := "100011";
  constant SW  : std_logic_vector(5 downto 0) := "101011";
  constant BEQ : std_logic_vector(5 downto 0) := "000100";
  constant JMP : std_logic_vector(5 downto 0) := "000010";
  constant INST_R : std_logic_vector(5 downto 0) := "000000";
  constant LUI : std_logic_vector(5 downto 0) := "001111";
  constant ORI : std_logic_vector(5 downto 0) := "001101";
  constant ADDI : std_logic_vector(5 downto 0) := "001000";
  constant ANDI : std_logic_vector(5 downto 0) := "001100";
  constant SLTI : std_logic_vector(5 downto 0) := "001010";
  constant BNE : std_logic_vector(5 downto 0) := "000101";
  constant JAL : std_logic_vector(5 downto 0) := "000011";


  begin

 
saida <=   "00000110010010" when opcode = LW else
			  "00000010000001" when opcode = SW else
			  "00000000001000" when opcode = BEQ else
			  "01000000000000" when opcode = JMP else
			  "00010101000000" when (opcode = INST_R) AND NOT (funct = "001000")  else
			  "00000100110000" when opcode = LUI else
			  "00001110000000" when opcode = ORI else
			  "00001110000000" when opcode = ANDI else
			  "00000110000000" when opcode = ADDI else
			  "00000110000000" when opcode = SLTI else
			  "00000000000100" when opcode = BNE else			  
			  "01100100100000" when opcode = JAL else
			  "10000001000000" when (opcode = INST_R) AND (funct = "001000")  else --JR
			  "00000000000000"; -- NOP para intrucoes indefinidas
end architecture;