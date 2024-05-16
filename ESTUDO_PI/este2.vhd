library ieee ;
use ieee.std_logic_1164.all ;

entity top_level is
    port (
        Clk: In std_logic;
        Saida: Out std_logic;
        comando: In std_logic_vector(3 downto 0);
        entrada: In std_logic_vector(31 downto 0);
        
    );
    end entity;

architecture Structural of top_level is

    signal saida_reg1: std_logic_vector(31 downto 0);
    signal saida_reg2: std_logic_vector(31 downto 0);
    signal saida_ula: std_logic_vector(31 downto 0);



    begin

    REG1: REG
    port map(
        Din => entrada,
        clk => Clk,
        Habilita => comando(0),
        Dout => saida_reg1

    );

    ULA: ULA

    port map(
        A => saida_reg2,
        B => saida_reg1,
        Operacao => comando(1),
        saida => saida_ula

    );

    
    REG2: REG
    port map(
        Din => saida_ula,
        clk => Clk,
        Habilita => comando(2),
        Dout => saida_reg2

    );

    
    end architecture;
