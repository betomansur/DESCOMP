library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is
  
  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI	 : std_logic_vector(3 downto 0) := "0100";
  constant STA	 : std_logic_vector(3 downto 0) := "0101";
  constant JMP : std_logic_vector(3 downto 0) := "0110";
  constant JEQ : std_logic_vector(3 downto 0) := "0111";
  constant CEQ : std_logic_vector(3 downto 0) := "1000";
  constant JSR : std_logic_vector(3 downto 0) := "1001";
  constant RET : std_logic_vector(3 downto 0) := "1010";
  constant AND1 : std_logic_vector(3 downto 0) := "1011";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:tmp(0) := x"0" & '0' & x"00";   -- NOP
tmp(1) := x"4" & '0' & x"00";   -- LDI $0
tmp(2) := x"5" & '1' & x"00";   -- STA @256     #Zerando todas os leds e displays
tmp(3) := x"5" & '1' & x"01";   -- STA @257
tmp(4) := x"5" & '1' & x"02";   -- STA @258
tmp(5) := x"5" & '1' & x"20";   -- STA @288
tmp(6) := x"5" & '1' & x"21";   -- STA @289
tmp(7) := x"5" & '1' & x"22";   -- STA @290
tmp(8) := x"5" & '1' & x"23";   -- STA @291
tmp(9) := x"5" & '1' & x"24";   -- STA @292
tmp(10) := x"5" & '1' & x"25";  -- STA @293     #AtÃ© aqui
tmp(11) := x"5" & '0' & x"00";  -- STA @0       #Zerando as pos de memorias, unidade
tmp(12) := x"5" & '0' & x"01";  -- STA @1       #dezena
tmp(13) := x"5" & '0' & x"02";  -- STA @2
tmp(14) := x"5" & '0' & x"03";  -- STA @3
tmp(15) := x"5" & '0' & x"04";  -- STA @4
tmp(16) := x"5" & '0' & x"05";  -- STA @5
tmp(17) := x"5" & '1' & x"FE";  -- STA @510     #Limpando botÃµes
tmp(18) := x"5" & '1' & x"FF";  -- STA @511
tmp(19) := x"5" & '0' & x"0C";  -- STA @12      #Para comparacoes
tmp(20) := x"4" & '0' & x"09";  -- LDI $9
tmp(21) := x"5" & '0' & x"06";  -- STA @6       #Setando limites de contagem como 999999
tmp(22) := x"5" & '0' & x"07";  -- STA @7
tmp(23) := x"5" & '0' & x"08";  -- STA @8
tmp(24) := x"5" & '0' & x"09";  -- STA @9
tmp(25) := x"5" & '0' & x"0A";  -- STA @10
tmp(26) := x"5" & '0' & x"0B";  -- STA @11
tmp(27) := x"5" & '0' & x"0F";  -- STA @15
tmp(28) := x"4" & '0' & x"01";  -- LDI $1       #Carregar 1
tmp(29) := x"5" & '0' & x"0D";  -- STA @13      #Para incremento
tmp(30) := x"4" & '0' & x"0A";  -- LDI $10
tmp(31) := x"5" & '0' & x"0E";  -- STA @14      #Comparacao no display
tmp(32) := x"0" & '0' & x"00";  -- NOP
tmp(33) := x"1" & '1' & x"60";  -- LDA @352     #Clicou key 0?
tmp(34) := x"5" & '1' & x"FF";  -- STA @511     #Limpar o botao
tmp(35) := x"8" & '0' & x"0C";  -- CEQ @12
tmp(36) := x"7" & '0' & x"28";  -- JEQ @40      #3 linhas pra baixo (nop)
tmp(37) := x"9" & '0' & x"36";  -- JSR @54      #sub rotina de incremento
tmp(38) := x"9" & '0' & x"76";  -- JSR @118     #sub rotina de escrever no display
tmp(39) := x"0" & '0' & x"00";  -- NOP
tmp(40) := x"1" & '1' & x"61";  -- LDA @353     #clicou key1?
tmp(41) := x"5" & '1' & x"FE";  -- STA @510     #Limpar o botao
tmp(42) := x"8" & '0' & x"0C";  -- CEQ @12
tmp(43) := x"7" & '0' & x"2E";  -- JEQ @46      #Vai para o nop embaixo
tmp(44) := x"9" & '0' & x"84";  -- JSR @132     #sub rotina de configuracao limite de contagem
tmp(45) := x"0" & '0' & x"00";  -- NOP
tmp(46) := x"9" & '0' & x"AC";  -- JSR @172     #Sub rotina de usabilidade do limites de incremento
tmp(47) := x"1" & '1' & x"64";  -- LDA @356     #clicou fpga_reset?
tmp(48) := x"8" & '0' & x"0C";  -- CEQ @12
tmp(49) := x"7" & '0' & x"34";  -- JEQ @52      #Vai para o nop embaixo
tmp(50) := x"9" & '0' & x"C9";  -- JSR @201     #sub rotina de reset
tmp(51) := x"0" & '0' & x"00";  -- NOP
tmp(52) := x"6" & '0' & x"22";  -- JMP @34      #voltar para o nop antes de LDA@352
tmp(53) := x"0" & '0' & x"00";  -- NOP  #SUBROTINA incremento
tmp(54) := x"4" & '0' & x"00";  -- LDI $0
tmp(55) := x"5" & '1' & x"FF";  -- STA @511     #Limpar o botao
tmp(56) := x"5" & '0' & x"0F";  -- STA @15      #Chamar flag limite
tmp(57) := x"8" & '0' & x"0C";  -- CEQ @12
tmp(58) := x"7" & '0' & x"3D";  -- JEQ @61      #NÃ£o entrou, continua
tmp(59) := x"6" & '0' & x"75";  -- JMP @117     #Entrou, retorna a subrotina
tmp(60) := x"0" & '0' & x"00";  -- NOP  #continua subrotina
tmp(61) := x"1" & '0' & x"00";  -- LDA @0
tmp(62) := x"2" & '0' & x"0D";  -- SOMA @13
tmp(63) := x"8" & '0' & x"0E";  -- CEQ @14      #Compara com 10 ve se Ã© igual?
tmp(64) := x"7" & '0' & x"44";  -- JEQ @68      #Ã© igual entÃ£o vai para NOP
tmp(65) := x"5" & '0' & x"00";  -- STA @0       # NÃ£o Ã© igual, entÃ£o, Escreve nas unidades e Retorna a subrotina
tmp(66) := x"6" & '0' & x"75";  -- JMP @117     #Retorna
tmp(67) := x"0" & '0' & x"00";  -- NOP
tmp(68) := x"4" & '0' & x"00";  -- LDI $0       #Zera as unidades
tmp(69) := x"5" & '0' & x"00";  -- STA @0
tmp(70) := x"1" & '0' & x"01";  -- LDA @1       #Carrega as dezenas
tmp(71) := x"2" & '0' & x"0D";  -- SOMA @13     #Soma 1 com as dezenas
tmp(72) := x"8" & '0' & x"0E";  -- CEQ @14      #Compara com 10 ve se Ã© igual?
tmp(73) := x"7" & '0' & x"4D";  -- JEQ @77      #Ã© igual entÃ£o vai para NOP
tmp(74) := x"5" & '0' & x"01";  -- STA @1       # NÃ£o Ã© igual, entÃ£o, Escreve nas centenas e Retorna a subrotina
tmp(75) := x"6" & '0' & x"75";  -- JMP @117     #Retorna
tmp(76) := x"0" & '0' & x"00";  -- NOP
tmp(77) := x"4" & '0' & x"00";  -- LDI $0       #Zera as dezenas
tmp(78) := x"5" & '0' & x"01";  -- STA @1
tmp(79) := x"1" & '0' & x"02";  -- LDA @2       #Carrega as centenas
tmp(80) := x"2" & '0' & x"0D";  -- SOMA @13     #Soma 1 com as centenas
tmp(81) := x"8" & '0' & x"0E";  -- CEQ @14      #Compara com 10 ve se Ã© igual?
tmp(82) := x"7" & '0' & x"56";  -- JEQ @86      #Ã© igual entÃ£o vai para NOP
tmp(83) := x"5" & '0' & x"01";  -- STA @1       # NÃ£o Ã© igual, entÃ£o, Escreve nas dezenas e Retorna a subrotina
tmp(84) := x"6" & '0' & x"75";  -- JMP @117     #Retorna
tmp(85) := x"0" & '0' & x"00";  -- NOP
tmp(86) := x"4" & '0' & x"00";  -- LDI $0       #Zera as centenas
tmp(87) := x"5" & '0' & x"02";  -- STA @2
tmp(88) := x"1" & '0' & x"03";  -- LDA @3       #Carrega as 1000
tmp(89) := x"2" & '0' & x"0D";  -- SOMA @13     #Soma 1 com as 1000
tmp(90) := x"8" & '0' & x"0E";  -- CEQ @14      #Compara com 10 ve se Ã© igual?
tmp(91) := x"7" & '0' & x"5F";  -- JEQ @95      #Ã© igual entÃ£o vai para NOP
tmp(92) := x"5" & '0' & x"01";  -- STA @1       # NÃ£o Ã© igual, entÃ£o, Escreve nas 1000 e Retorna a subrotina
tmp(93) := x"6" & '0' & x"75";  -- JMP @117     #Retorna
tmp(94) := x"0" & '0' & x"00";  -- NOP
tmp(95) := x"4" & '0' & x"00";  -- LDI $0       #Zera as 1000
tmp(96) := x"5" & '0' & x"03";  -- STA @3
tmp(97) := x"1" & '0' & x"04";  -- LDA @4       #Carrega as 10000
tmp(98) := x"2" & '0' & x"0D";  -- SOMA @13     #Soma 1 com as 10000
tmp(99) := x"8" & '0' & x"0E";  -- CEQ @14      #Compara com 10 ve se Ã© igual?
tmp(100) := x"7" & '0' & x"68"; -- JEQ @104     #Ã© igual entÃ£o vai para NOP
tmp(101) := x"5" & '0' & x"01"; -- STA @1       # NÃ£o Ã© igual, entÃ£o, Escreve nas 10000 e Retorna a subrotina
tmp(102) := x"6" & '0' & x"75"; -- JMP @117     #Retorna
tmp(103) := x"0" & '0' & x"00"; -- NOP
tmp(104) := x"4" & '0' & x"00"; -- LDI $0       #Zera as 10000
tmp(105) := x"5" & '0' & x"04"; -- STA @4
tmp(106) := x"1" & '0' & x"05"; -- LDA @5       #Carrega as 100000
tmp(107) := x"2" & '0' & x"0D"; -- SOMA @13     #Soma 1 com as 100000
tmp(108) := x"8" & '0' & x"0E"; -- CEQ @14      #Compara com 10 ve se Ã© igual?
tmp(109) := x"7" & '0' & x"71"; -- JEQ @113     #Ã© igual entÃ£o vai para NOP
tmp(110) := x"5" & '0' & x"01"; -- STA @1       # NÃ£o Ã© igual, entÃ£o, Escreve nas 100000 e Retorna a subrotina
tmp(111) := x"6" & '0' & x"75"; -- JMP @117     #Retorna
tmp(112) := x"0" & '0' & x"00"; -- NOP
tmp(113) := x"4" & '0' & x"01"; -- LDI $1
tmp(114) := x"5" & '0' & x"0F"; -- STA @15
tmp(115) := x"5" & '1' & x"02"; -- STA @258
tmp(116) := x"A" & '0' & x"00"; -- RET  #Retorno da subrotina de incremento
tmp(117) := x"0" & '0' & x"00"; -- NOP  #SUBROTINA escrever no HEX
tmp(118) := x"1" & '0' & x"00"; -- LDA @0
tmp(119) := x"5" & '1' & x"20"; -- STA @288
tmp(120) := x"1" & '0' & x"01"; -- LDA @1
tmp(121) := x"5" & '1' & x"21"; -- STA @289
tmp(122) := x"1" & '0' & x"02"; -- LDA @2
tmp(123) := x"5" & '1' & x"22"; -- STA @290
tmp(124) := x"1" & '0' & x"03"; -- LDA @3
tmp(125) := x"5" & '1' & x"23"; -- STA @291
tmp(126) := x"1" & '0' & x"04"; -- LDA @4
tmp(127) := x"5" & '1' & x"24"; -- STA @292
tmp(128) := x"1" & '0' & x"05"; -- LDA @5
tmp(129) := x"5" & '1' & x"25"; -- STA @293
tmp(130) := x"A" & '0' & x"00"; -- RET
tmp(131) := x"0" & '0' & x"00"; -- NOP  #SUBROTINA configuracao limite de incremento
tmp(132) := x"1" & '1' & x"40"; -- LDA @320     #Passar o limite das unidades para a memoria
tmp(133) := x"B" & '0' & x"0F"; -- AND $15
tmp(134) := x"5" & '0' & x"06"; -- STA @6
tmp(135) := x"1" & '1' & x"61"; -- LDA @353     #Espera o botÃ£o
tmp(136) := x"5" & '1' & x"FE"; -- STA @510
tmp(137) := x"8" & '0' & x"0C"; -- CEQ @12
tmp(138) := x"7" & '0' & x"88"; -- JEQ @136     #Se for 0, volta pra espera do botao
tmp(139) := x"1" & '1' & x"40"; -- LDA @320
tmp(140) := x"B" & '0' & x"0F"; -- AND $15
tmp(141) := x"5" & '0' & x"07"; -- STA @7
tmp(142) := x"1" & '1' & x"61"; -- LDA @353     #Espera o botÃ£o
tmp(143) := x"5" & '1' & x"FE"; -- STA @510
tmp(144) := x"8" & '0' & x"0C"; -- CEQ @12
tmp(145) := x"7" & '0' & x"88"; -- JEQ @136     #Se for 0, volta pra espera do botao
tmp(146) := x"1" & '1' & x"40"; -- LDA @320
tmp(147) := x"B" & '0' & x"0F"; -- AND $15
tmp(148) := x"5" & '0' & x"08"; -- STA @8
tmp(149) := x"1" & '1' & x"61"; -- LDA @353     #Espera o botÃ£o
tmp(150) := x"5" & '1' & x"FE"; -- STA @510
tmp(151) := x"8" & '0' & x"0C"; -- CEQ @12
tmp(152) := x"7" & '0' & x"88"; -- JEQ @136     #Se for 0, volta pra espera do botao
tmp(153) := x"1" & '1' & x"40"; -- LDA @320
tmp(154) := x"B" & '0' & x"0F"; -- AND $15
tmp(155) := x"5" & '0' & x"09"; -- STA @9
tmp(156) := x"1" & '1' & x"61"; -- LDA @353     #Espera o botÃ£o
tmp(157) := x"5" & '1' & x"FE"; -- STA @510
tmp(158) := x"8" & '0' & x"0C"; -- CEQ @12
tmp(159) := x"7" & '0' & x"88"; -- JEQ @136     #Se for 0, volta pra espera do botao
tmp(160) := x"1" & '1' & x"40"; -- LDA @320
tmp(161) := x"B" & '0' & x"0F"; -- AND $15
tmp(162) := x"5" & '0' & x"0A"; -- STA @10
tmp(163) := x"1" & '1' & x"61"; -- LDA @353     #Espera o botÃ£o
tmp(164) := x"5" & '1' & x"FE"; -- STA @510
tmp(165) := x"8" & '0' & x"0C"; -- CEQ @12
tmp(166) := x"7" & '0' & x"88"; -- JEQ @136     #Se for 0, volta pra espera do botao
tmp(167) := x"1" & '1' & x"40"; -- LDA @320
tmp(168) := x"B" & '0' & x"0F"; -- AND $15
tmp(169) := x"5" & '0' & x"0B"; -- STA @11
tmp(170) := x"A" & '0' & x"00"; -- RET
tmp(171) := x"0" & '0' & x"00"; -- NOP  #SUBROTINA verificacao de limite de contagem
tmp(172) := x"1" & '0' & x"00"; -- LDA @0
tmp(173) := x"8" & '0' & x"06"; -- CEQ @6
tmp(174) := x"7" & '0' & x"B1"; -- JEQ @177     #linha 2 pra baixo
tmp(175) := x"6" & '0' & x"C8"; -- JMP @200     #RETORNO
tmp(176) := x"1" & '0' & x"01"; -- LDA @1
tmp(177) := x"8" & '0' & x"07"; -- CEQ @7
tmp(178) := x"7" & '0' & x"B5"; -- JEQ @181     #linha 2 pra baixo
tmp(179) := x"6" & '0' & x"C8"; -- JMP @200     #RETORNO
tmp(180) := x"1" & '0' & x"02"; -- LDA @2
tmp(181) := x"8" & '0' & x"08"; -- CEQ @8
tmp(182) := x"7" & '0' & x"B9"; -- JEQ @185     #linha 2 pra baixo
tmp(183) := x"6" & '0' & x"C8"; -- JMP @200     #RETORNO
tmp(184) := x"1" & '0' & x"03"; -- LDA @3
tmp(185) := x"8" & '0' & x"09"; -- CEQ @9
tmp(186) := x"7" & '0' & x"BD"; -- JEQ @189     #linha 2 pra baixo
tmp(187) := x"6" & '0' & x"C8"; -- JMP @200     #RETORNO
tmp(188) := x"1" & '0' & x"04"; -- LDA @4
tmp(189) := x"8" & '0' & x"0A"; -- CEQ @10
tmp(190) := x"7" & '0' & x"C1"; -- JEQ @193     #linha 2 pra baixo
tmp(191) := x"6" & '0' & x"C8"; -- JMP @200     #RETORNO
tmp(192) := x"1" & '0' & x"05"; -- LDA @5
tmp(193) := x"8" & '0' & x"0B"; -- CEQ @11
tmp(194) := x"7" & '0' & x"C5"; -- JEQ @197     #linha 2 pra baixo
tmp(195) := x"6" & '0' & x"C8"; -- JMP @200     #RETORNO
tmp(196) := x"4" & '0' & x"01"; -- LDI $1
tmp(197) := x"5" & '0' & x"0F"; -- STA @15
tmp(198) := x"5" & '1' & x"01"; -- STA @257
tmp(199) := x"A" & '0' & x"00"; -- RET
tmp(200) := x"0" & '0' & x"00"; -- NOP  #SUBROTINA fpga_reset
tmp(201) := x"4" & '0' & x"00"; -- LDI $0
tmp(202) := x"5" & '0' & x"00"; -- STA @0
tmp(203) := x"5" & '0' & x"01"; -- STA @1
tmp(204) := x"5" & '0' & x"02"; -- STA @2
tmp(205) := x"5" & '0' & x"03"; -- STA @3
tmp(206) := x"5" & '0' & x"04"; -- STA @4
tmp(207) := x"5" & '0' & x"05"; -- STA @5
tmp(208) := x"5" & '0' & x"06"; -- STA @6
tmp(209) := x"5" & '0' & x"07"; -- STA @7
tmp(210) := x"5" & '0' & x"08"; -- STA @8
tmp(211) := x"5" & '0' & x"09"; -- STA @9
tmp(212) := x"5" & '0' & x"0A"; -- STA @10
tmp(213) := x"5" & '0' & x"0B"; -- STA @11
tmp(214) := x"5" & '0' & x"0F"; -- STA @15
tmp(215) := x"5" & '1' & x"01"; -- STA @257
tmp(216) := x"5" & '1' & x"02"; -- STA @258
tmp(217) := x"A" & '0' & x"00"; -- RET
tmp(218) := x"6" & '0' & x"22"; -- JMP @34
		  
         return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;