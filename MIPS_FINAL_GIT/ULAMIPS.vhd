library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULAMIPS is
    generic ( larguraDados : natural := 32 );
    port (
      entradaA, entradaB:  in std_logic_vector((larguraDados-1) downto 0);
      selecao:  in std_logic_vector(3 downto 0);
      shamt:  in std_logic_vector(4 downto 0);
      flag: out std_logic;
      saida:    out std_logic_vector((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of ULAMIPS is

signal Carry_vai_1_0, Carry_vai_1_1, Carry_vai_1_2, Carry_vai_1_3, Carry_vai_1_4, Carry_vai_1_5, Carry_vai_1_6, Carry_vai_1_7, 
      Carry_vai_1_8, Carry_vai_1_9, Carry_vai_1_10, Carry_vai_1_11, Carry_vai_1_12, Carry_vai_1_13, Carry_vai_1_14, Carry_vai_1_15, 
      Carry_vai_1_16, Carry_vai_1_17, Carry_vai_1_18, Carry_vai_1_19, Carry_vai_1_20, Carry_vai_1_21, Carry_vai_1_22, Carry_vai_1_23, 
      Carry_vai_1_24, Carry_vai_1_25, Carry_vai_1_26, Carry_vai_1_27, Carry_vai_1_28, Carry_vai_1_29, Carry_vai_1_30, Carry_vai_1_31 : std_logic;

  signal Resultado_0, Resultado_1, Resultado_2, Resultado_3, Resultado_4, Resultado_5, Resultado_6, Resultado_7, 
      Resultado_8, Resultado_9, Resultado_10, Resultado_11, Resultado_12, Resultado_13, Resultado_14, Resultado_15, 
      Resultado_16, Resultado_17, Resultado_18, Resultado_19, Resultado_20, Resultado_21, Resultado_22, Resultado_23, 
      Resultado_24, Resultado_25, Resultado_26, Resultado_27, Resultado_28, Resultado_29, Resultado_30, Resultado_31 : std_logic;

  signal Overflow: std_logic;
  
  signal saida_result: std_logic_vector(31 downto 0);

begin
	        

Bit_0 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(0),
             entrada_B =>entradaB(0),
             SLT => Overflow,
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => selecao(2),
             Carry_vai_1 => Carry_vai_1_0,
             Resultado => Resultado_0);

Bit_1 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(1),
             entrada_B =>entradaB(1),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_0,
             Carry_vai_1 => Carry_vai_1_1,
             Resultado => Resultado_1);

Bit_2 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(2),
             entrada_B => entradaB(2),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_1,
             Carry_vai_1 => Carry_vai_1_2,
             Resultado => Resultado_2);

Bit_3 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(3),
             entrada_B => entradaB(3),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_2,
             Carry_vai_1 => Carry_vai_1_3,
             Resultado => Resultado_3);

Bit_4 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(4),
             entrada_B => entradaB(4),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_3,
             Carry_vai_1 => Carry_vai_1_4,
             Resultado => Resultado_4);

Bit_5 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(5),
             entrada_B => entradaB(5),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_4,
             Carry_vai_1 => Carry_vai_1_5,
             Resultado => Resultado_5);

Bit_6 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(6),
             entrada_B => entradaB(6),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_5,
             Carry_vai_1 => Carry_vai_1_6,
             Resultado => Resultado_6);

Bit_7 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(7),
             entrada_B => entradaB(7),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_6,
             Carry_vai_1 => Carry_vai_1_7,
             Resultado => Resultado_7);

Bit_8 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(8),
             entrada_B => entradaB(8),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_7,
             Carry_vai_1 => Carry_vai_1_8,
             Resultado => Resultado_8);

Bit_9 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(9),
             entrada_B => entradaB(9),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_8,
             Carry_vai_1 => Carry_vai_1_9,
             Resultado => Resultado_9);

Bit_10 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(10),
             entrada_B => entradaB(10),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_9,
             Carry_vai_1 => Carry_vai_1_10,
             Resultado => Resultado_10);

Bit_11 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(11),
             entrada_B => entradaB(11),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_10,
             Carry_vai_1 => Carry_vai_1_11,
             Resultado => Resultado_11);

Bit_12 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(12),
             entrada_B => entradaB(12),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_11,
             Carry_vai_1 => Carry_vai_1_12,
             Resultado => Resultado_12);

Bit_13 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(13),
             entrada_B => entradaB(13),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_12,
             Carry_vai_1 => Carry_vai_1_13,
             Resultado => Resultado_13);

Bit_14 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(14),
             entrada_B => entradaB(14),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_13,
             Carry_vai_1 => Carry_vai_1_14,
             Resultado => Resultado_14);

Bit_15 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(15),
             entrada_B => entradaB(15),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_14,
             Carry_vai_1 => Carry_vai_1_15,
             Resultado => Resultado_15);

Bit_16 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(16),
             entrada_B => entradaB(16),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_15,
             Carry_vai_1 => Carry_vai_1_16,
             Resultado => Resultado_16);

Bit_17 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(17),
             entrada_B => entradaB(17),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_16,
             Carry_vai_1 => Carry_vai_1_17,
             Resultado => Resultado_17);

Bit_18 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(18),
             entrada_B => entradaB(18),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_17,
             Carry_vai_1 => Carry_vai_1_18,
             Resultado => Resultado_18);

Bit_19 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(19),
             entrada_B => entradaB(19),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_18,
             Carry_vai_1 => Carry_vai_1_19,
             Resultado => Resultado_19);

Bit_20 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(20),
             entrada_B => entradaB(20),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_19,
             Carry_vai_1 => Carry_vai_1_20,
             Resultado => Resultado_20);

Bit_21 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(21),
             entrada_B => entradaB(21),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_20,
             Carry_vai_1 => Carry_vai_1_21,
             Resultado => Resultado_21);

Bit_22 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(22),
             entrada_B => entradaB(22),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_21,
             Carry_vai_1 => Carry_vai_1_22,
             Resultado => Resultado_22);

Bit_23 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(23),
             entrada_B => entradaB(23),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_22,
             Carry_vai_1 => Carry_vai_1_23,
             Resultado => Resultado_23);

Bit_24 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(24),
             entrada_B => entradaB(24),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_23,
             Carry_vai_1 => Carry_vai_1_24,
             Resultado => Resultado_24);

Bit_25 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(25),
             entrada_B => entradaB(25),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_24,
             Carry_vai_1 => Carry_vai_1_25,
             Resultado => Resultado_25);

Bit_26 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(26),
             entrada_B => entradaB(26),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_25,
             Carry_vai_1 => Carry_vai_1_26,
             Resultado => Resultado_26);

Bit_27 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(27),
             entrada_B => entradaB(27),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_26,
             Carry_vai_1 => Carry_vai_1_27,
             Resultado => Resultado_27);

Bit_28 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(28),
             entrada_B => entradaB(28),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_27,
             Carry_vai_1 => Carry_vai_1_28,
             Resultado => Resultado_28);

Bit_29 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(29),
             entrada_B => entradaB(29),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_28,
             Carry_vai_1 => Carry_vai_1_29,
             Resultado => Resultado_29);

Bit_30 : entity work.ULA_1_bit generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(30),
             entrada_B => entradaB(30),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_29,
             Carry_vai_1 => Carry_vai_1_30,
             Resultado => Resultado_30);

Bit_31 : entity work.ULA_bit31 generic map (larguraDados => larguraDados)
    port map(entrada_A => entradaA(31),
             entrada_b =>entradaB(31),
             SLT => '0',
             Selecao => selecao(1 downto 0),
             Inverte_B => selecao(2),
             Inverte_A => selecao(3),
             Carry_vem_1 => Carry_vai_1_30,
             Resultado => Resultado_31,
             Overflow => Overflow);
				

saida_result <= Resultado_31 & Resultado_30 & Resultado_29 & Resultado_28 & Resultado_27 & Resultado_26 & Resultado_25 & Resultado_24 &
         Resultado_23 & Resultado_22 & Resultado_21 & Resultado_20 & Resultado_19 & Resultado_18 & Resultado_17 & Resultado_16 &
         Resultado_15 & Resultado_14 & Resultado_13 & Resultado_12 & Resultado_11 & Resultado_10 & Resultado_9  & Resultado_8  &
         Resultado_7  & Resultado_6  & Resultado_5  & Resultado_4  & Resultado_3  & Resultado_2  & Resultado_1  & Resultado_0;

flag <= not(Resultado_31 or Resultado_30 or Resultado_29 or Resultado_28 or Resultado_27 or Resultado_26 or Resultado_25 or Resultado_24 or
            Resultado_23 or Resultado_22 or Resultado_21 or Resultado_20 or Resultado_19 or Resultado_18 or Resultado_17 or Resultado_16 or
            Resultado_15 or Resultado_14 or Resultado_13 or Resultado_12 or Resultado_11 or Resultado_10 or Resultado_9 or Resultado_8 or
            Resultado_7 or Resultado_6 or Resultado_5 or Resultado_4 or Resultado_3 or Resultado_2 or Resultado_1 or Resultado_0);
				
MUX:  entity work.muxGenerico2x1  generic map (larguraDados => 32)
	  port map( 
				  entradaA_MUX => saida_result,
				  entradaB_MUX => std_logic_vector(shift_left(unsigned(entradaB), to_integer(unsigned(shamt)))),
				  seletor_MUX => selecao(3) and selecao(2) and selecao(1) and selecao(0),
				  saida_MUX => saida);		

end architecture;
