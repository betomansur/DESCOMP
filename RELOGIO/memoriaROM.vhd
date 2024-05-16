library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 4;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
		  
		  
  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";
  constant AND1 : std_logic_vector(3 downto 0) := "1011";

		  
		  
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:tmp(0) := x"5" & '1' & x"FF";   -- STA @511

		
		
		
		
tmp(0) := "00" & x"0" & '0' & x"00";    -- NOP
tmp(1) :=  "00" & x"4" & '0' & x"00" ;  -- LDI R1, $0                           # Carrega 0 no registrador R1
tmp(2) :=  "00" & x"5" & '1' & x"FE" ;  -- STA R1, @510                         # Reseta a leitura de KEY1
tmp(3) :=  "00" & x"5" & '1' & x"FF" ;  -- STA R1, @511                         # Reseta a leitura de KEY0
tmp(4) :=  "00" & x"5" & '0' & x"00" ;  -- STA R1, @0                           # Zera a primeira posiÃ§Ã£o de memÃ³ria na RAM
tmp(5) :=  "00" & x"5" & '1' & x"20" ;  -- STA R1, @288                         # Limpa o display HEX0
tmp(6) :=  "00" & x"5" & '1' & x"21" ;  -- STA R1, @289                         # Limpa o display HEX1
tmp(7) :=  "00" & x"5" & '1' & x"22" ;  -- STA R1, @290                         # Limpa o display HEX2
tmp(8) :=  "00" & x"5" & '1' & x"23" ;  -- STA R1, @291                         # Limpa o display HEX3
tmp(9) :=  "00" & x"5" & '1' & x"24" ;  -- STA R1, @292                         # Limpa o display HEX4
tmp(10) :=  "00" & x"5" & '1' & x"25" ; -- STA R1, @293                         # Limpa o display HEX5
tmp(11) :=  "00" & x"5" & '1' & x"40" ; -- STA R1, @320                         # Define todos os switches SW0 a SW7 como desligados
tmp(12) :=  "00" & x"5" & '1' & x"41" ; -- STA R1, @321                         # Define o switch SW8 como desligado
tmp(13) :=  "00" & x"5" & '1' & x"42" ; -- STA R1, @322                         # Define o switch SW9 como desligado
tmp(14) :=  "00" & x"5" & '0' & x"10" ; -- STA R1, @16                          # Zera o endereÃ§o de memÃ³ria 16
tmp(15) :=  "00" & x"5" & '0' & x"11" ; -- STA R1, @17                          # Zera o endereÃ§o de memÃ³ria 17
tmp(16) :=  "00" & x"5" & '0' & x"12" ; -- STA R1, @18                          # Zera o endereÃ§o de memÃ³ria 18
tmp(17) :=  "00" & x"5" & '0' & x"13" ; -- STA R1, @19                          # Zera o endereÃ§o de memÃ³ria 19
tmp(18) :=  "00" & x"5" & '0' & x"14" ; -- STA R1, @20                          # Zera o endereÃ§o de memÃ³ria 20
tmp(19) :=  "00" & x"5" & '0' & x"15" ; -- STA R1, @21                          # Zera o endereÃ§o de memÃ³ria 21
tmp(20) :=  "00" & x"5" & '0' & x"23" ; -- STA R1, @35                          # Zera o endereÃ§o de memÃ³ria 35
tmp(21) :=  "01" & x"4" & '0' & x"01" ; -- LDI R2, $1                           # Carrega 1 no registrador R2
tmp(22) :=  "01" & x"5" & '0' & x"01" ; -- STA R2, @1                           # Armazena 1 no endereÃ§o 1
tmp(23) :=  "01" & x"4" & '0' & x"06" ; -- LDI R2, $6                           # Carrega 6 no registrador R2
tmp(24) :=  "01" & x"5" & '0' & x"06" ; -- STA R2, @6                           # Armazena 6 no endereÃ§o 6
tmp(25) :=  "01" & x"4" & '0' & x"0A" ; -- LDI R2, $10                          # Carrega 10 no registrador R2
tmp(26) :=  "01" & x"5" & '0' & x"0A" ; -- STA R2, @10                          # Armazena 10 no endereÃ§o 10
tmp(27) :=  "01" & x"4" & '0' & x"0F" ; -- LDI R2, $15                          # Carrega 15 no registrador R2
tmp(28) :=  "01" & x"5" & '0' & x"0F" ; -- STA R2, @15                          # Armazena 15 no endereÃ§o 15
tmp(29) :=  "01" & x"4" & '0' & x"02" ; -- LDI R2, $2                           # Carrega 2 no registrador R2
tmp(30) :=  "01" & x"5" & '0' & x"02" ; -- STA R2, @2                           # Armazena 2 no endereÃ§o 2
tmp(31) :=  "01" & x"4" & '0' & x"04" ; -- LDI R2, $4                           # Carrega 4 no registrador R2
tmp(32) :=  "01" & x"5" & '0' & x"04" ; -- STA R2, @4                           # Armazena 4 no endereÃ§o 4
tmp(33) :=  "01" & x"4" & '0' & x"03" ; -- LDI R2, $3                           # Carrega 3 no registrador R2
tmp(34) :=  "01" & x"5" & '0' & x"03" ; -- STA R2, @3                           # Armazena 3 no endereÃ§o 3
tmp(35) :=  "01" & x"4" & '0' & x"05" ; -- LDI R2, $5                           # Carrega 5 no registrador R2
tmp(36) :=  "01" & x"5" & '0' & x"05" ; -- STA R2, @5                           # Armazena 5 no endereÃ§o 5
tmp(37) := "00" & x"0" & '0' & x"00";   -- NOP
tmp(38) := "00" & x"0" & '0' & x"00"; -- NOP #LOOP:pra pular na linha 38
tmp(39) := "00" & x"9" & '0' & x"E9";   -- JSR @ESCREVER                        # Chama a rotina ESCREVER
tmp(40) :=  "00" & x"1" & '1' & x"60" ; -- LDA R1, @352                         # Carrega a base de tempo
tmp(41) :=  "00" & x"B" & '0' & x"01" ; -- AND R1, @1                           # Mascara
tmp(42) :=  "00" & x"8" & '0' & x"00" ; -- CEQ R1, @0                           # Verifica se o tempo foi passado
tmp(43) := "00" & x"7" & '0' & x"2D";   -- JEQ @PASSA1                          # Pula para PASSA1 se nÃ£o estiver pressionado
tmp(44) := "00" & x"9" & '0' & x"36";   -- JSR @INCREMENTA                      # Executa a rotina INCREMENTA
tmp(45) := "00" & x"0" & '0' & x"00"; -- NOP #PASSA1:pra pular na linha 45
tmp(46) :=  "00" & x"1" & '1' & x"61" ; -- LDA R1, @353                         # Carrega o botÃ£o KEY1 no registrador R1
tmp(47) :=  "00" & x"B" & '0' & x"01" ; -- AND R1, @1                           # Mascara
tmp(48) :=  "00" & x"8" & '0' & x"00" ; -- CEQ R1, @0                           # Verifica se o botÃ£o KEY1 estÃ¡ pressionado
tmp(49) := "00" & x"7" & '0' & x"33";   -- JEQ @PASSA2                          # Pula para PASSA2 se nÃ£o estiver pressionado
tmp(50) := "00" & x"9" & '0' & x"85";   -- JSR @CONFIGURACAO                    # Executa a rotina CONFIGURACAO
tmp(51) := "00" & x"0" & '0' & x"00"; -- NOP #PASSA2:pra pular na linha 51
tmp(52) := "00" & x"6" & '0' & x"26";   -- JMP @LOOP                            # Retorna ao inÃ­cio do LOOP
tmp(53) := "00" & x"0" & '0' & x"00";   -- NOP
tmp(54) := "00" & x"0" & '0' & x"00"; -- NOP #INCREMENTA:pra pular na linha 54
tmp(55) :=  "00" & x"1" & '0' & x"00" ; -- LDA R1, @0                           # Carrega 0 no registrador R1
tmp(56) :=  "00" & x"5" & '1' & x"FF" ; -- STA R1, @511                         # Limpa a leitura do tempo
tmp(57) :=  "01" & x"1" & '0' & x"0A" ; -- LDA R2, @10                          # Carrega o valor 10 no registrador R2
tmp(58) :=  "10" & x"1" & '0' & x"06" ; -- LDA R3, @6                           # Carrega o valor 6 no registrador R3
tmp(59) :=  "11" & x"1" & '0' & x"10" ; -- LDA R4, @16                          # Carrega o valor dos segundos no registrador R4
tmp(60) :=  "11" & x"2" & '0' & x"01" ; -- SOMA R4, @1                          # Incrementa o valor dos segundos
tmp(61) :=  "11" & x"5" & '0' & x"10" ; -- STA R4, @16                          # Armazena o novo valor dos segundos
tmp(62) :=  "01" & x"8" & '0' & x"10" ; -- CEQ R2, @16                          # Compara o novo valor dos segundos com 10
tmp(63) := "00" & x"7" & '0' & x"43";   -- JEQ @INCREMENTADEZENASEGUNDO         # Pula para incrementar a dezena de segundos se necessÃ¡rio
tmp(64) :=  "11" & x"1" & '0' & x"10" ; -- LDA R4, @16
tmp(65) :=  "11" & x"5" & '1' & x"20" ; -- STA R4, @288                         # Atualiza o display HEX0 com o novo valor dos segundos
tmp(66) := "00" & x"6" & '0' & x"83";   -- JMP @RETORNOINCREMENTA
tmp(67) := "00" & x"0" & '0' & x"00"; -- NOP #INCREMENTADEZENASEGUNDO:pra pular na linha 67
tmp(68) :=  "00" & x"5" & '0' & x"10" ; -- STA R1, @16
tmp(69) :=  "00" & x"5" & '1' & x"20" ; -- STA R1, @288                         # Zera os segundos e atualiza o display HEX0 quando alcanÃ§a 10
tmp(70) :=  "11" & x"1" & '0' & x"11" ; -- LDA R4, @17
tmp(71) :=  "11" & x"2" & '0' & x"01" ; -- SOMA R4, @1                          # Incrementa a dezena de segundos
tmp(72) :=  "11" & x"5" & '0' & x"11" ; -- STA R4, @17                          # Atualiza a dezena de segundos na memÃ³ria
tmp(73) :=  "10" & x"8" & '0' & x"11" ; -- CEQ R3, @17                          # Compara a dezena de segundos com 6
tmp(74) := "00" & x"7" & '0' & x"4E";   -- JEQ @INCREMENTAUNIDADEMINUTO         # Incrementa a unidade de minutos se necessÃ¡rio
tmp(75) :=  "11" & x"1" & '0' & x"11" ; -- LDA R4, @17
tmp(76) :=  "11" & x"5" & '1' & x"21" ; -- STA R4, @289                         # Atualiza o display HEX1 com a nova dezena de segundos
tmp(77) := "00" & x"6" & '0' & x"83";   -- JMP @RETORNOINCREMENTA
tmp(78) := "00" & x"0" & '0' & x"00"; -- NOP #INCREMENTAUNIDADEMINUTO:pra pular na linha 78
tmp(79) :=  "00" & x"5" & '0' & x"11" ; -- STA R1, @17
tmp(80) :=  "00" & x"5" & '1' & x"21" ; -- STA R1, @289                         # Zera a dezena de segundos e atualiza o display HEX1
tmp(81) :=  "11" & x"1" & '0' & x"12" ; -- LDA R4, @18
tmp(82) :=  "11" & x"2" & '0' & x"01" ; -- SOMA R4, @1                          # Incrementa a unidade de minutos
tmp(83) :=  "11" & x"5" & '0' & x"12" ; -- STA R4, @18                          # Atualiza a unidade de minutos na memÃ³ria
tmp(84) :=  "01" & x"8" & '0' & x"12" ; -- CEQ R2, @18                          # Compara a unidade de minutos com 10
tmp(85) := "00" & x"7" & '0' & x"59";   -- JEQ @INCREMENTADEZENAMINUTO          # Incrementa a dezena de minutos se necessÃ¡rio
tmp(86) :=  "11" & x"1" & '0' & x"12" ; -- LDA R4, @18
tmp(87) :=  "11" & x"5" & '1' & x"22" ; -- STA R4, @290                         # Atualiza o display HEX2 com a nova unidade de minutos
tmp(88) := "00" & x"6" & '0' & x"83";   -- JMP @RETORNOINCREMENTA
tmp(89) := "00" & x"0" & '0' & x"00"; -- NOP #INCREMENTADEZENAMINUTO:pra pular na linha 89
tmp(90) :=  "00" & x"5" & '0' & x"12" ; -- STA R1, @18
tmp(91) :=  "00" & x"5" & '1' & x"22" ; -- STA R1, @290                         # Zera a unidade de minutos e atualiza o display HEX2
tmp(92) :=  "11" & x"1" & '0' & x"13" ; -- LDA R4, @19
tmp(93) :=  "11" & x"2" & '0' & x"01" ; -- SOMA R4, @1                          # Incrementa a dezena de minutos
tmp(94) :=  "11" & x"5" & '0' & x"13" ; -- STA R4, @19                          # Atualiza a dezena de minutos na memÃ³ria
tmp(95) :=  "10" & x"8" & '0' & x"13" ; -- CEQ R3, @19                          # Compara a dezena de minutos com 6
tmp(96) := "00" & x"7" & '0' & x"64";   -- JEQ @INCREMENTAUNIDADEHORA           # Incrementa a unidade de horas se necessÃ¡rio
tmp(97) :=  "11" & x"1" & '0' & x"13" ; -- LDA R4, @19
tmp(98) :=  "11" & x"5" & '1' & x"23" ; -- STA R4, @291                         # Atualiza o display HEX3 com a nova dezena de minutos
tmp(99) := "00" & x"6" & '0' & x"83";   -- JMP @RETORNOINCREMENTA
tmp(100) := "00" & x"0" & '0' & x"00"; -- NOP #INCREMENTAUNIDADEHORA:pra pular na linha 100
tmp(101) :=  "00" & x"5" & '0' & x"13" ;        -- STA R1, @19
tmp(102) :=  "00" & x"5" & '1' & x"23" ;        -- STA R1, @291                         # Zera a dezena de minutos e atualiza o display HEX3
tmp(103) :=  "11" & x"1" & '0' & x"14" ;        -- LDA R4, @20
tmp(104) :=  "11" & x"2" & '0' & x"01" ;        -- SOMA R4, @1                          # Incrementa a unidade de horas
tmp(105) :=  "11" & x"5" & '0' & x"14" ;        -- STA R4, @20                          # Atualiza a unidade de horas na memÃ³ria
tmp(106) :=  "11" & x"8" & '0' & x"04" ;        -- CEQ R4, @4                           # Compara a unidade de horas com 4
tmp(107) := "00" & x"7" & '0' & x"7E";  -- JEQ @PODELIGARFLAG                   # Verifica a condiÃ§Ã£o para ativar uma flag
tmp(108) := "00" & x"0" & '0' & x"00"; -- NOP #PONTO1:pra pular na linha 108
tmp(109) :=  "01" & x"8" & '0' & x"14" ;        -- CEQ R2, @20                          # Compara a unidade de horas com 10
tmp(110) := "00" & x"7" & '0' & x"72";  -- JEQ @INCREMENTADEZENAHORA            # Incrementa a dezena de horas se necessÃ¡rio
tmp(111) :=  "11" & x"1" & '0' & x"14" ;        -- LDA R4, @20
tmp(112) :=  "11" & x"5" & '1' & x"24" ;        -- STA R4, @292                         # Atualiza o display HEX4 com a nova unidade de horas
tmp(113) := "00" & x"6" & '0' & x"83";  -- JMP @RETORNOINCREMENTA
tmp(114) := "00" & x"0" & '0' & x"00"; -- NOP #INCREMENTADEZENAHORA:pra pular na linha 114
tmp(115) :=  "01" & x"1" & '0' & x"03" ;        -- LDA R2, @3
tmp(116) :=  "00" & x"5" & '0' & x"14" ;        -- STA R1, @20
tmp(117) :=  "00" & x"5" & '1' & x"24" ;        -- STA R1, @292                         # Zera a unidade de horas e atualiza o display HEX4
tmp(118) :=  "11" & x"1" & '0' & x"15" ;        -- LDA R4, @21
tmp(119) :=  "11" & x"2" & '0' & x"01" ;        -- SOMA R4, @1                          # Incrementa a dezena de horas
tmp(120) :=  "11" & x"5" & '0' & x"15" ;        -- STA R4, @21                          # Atualiza a dezena de horas na memÃ³ria
tmp(121) :=  "01" & x"8" & '0' & x"15" ;        -- CEQ R2, @21                          # Compara a dezena de horas com 3
tmp(122) :=  "00" & x"7" & '0' & x"00"; -- JEQ @0                               # Zera a dezena de horas se necessÃ¡rio
tmp(123) :=  "11" & x"1" & '0' & x"15" ;        -- LDA R4, @21
tmp(124) :=  "11" & x"5" & '1' & x"25" ;        -- STA R4, @293                         # Atualiza o display HEX5 com a nova dezena de horas
tmp(125) := "00" & x"6" & '0' & x"83";  -- JMP @RETORNOINCREMENTA
tmp(126) := "00" & x"0" & '0' & x"00"; -- NOP #PODELIGARFLAG:pra pular na linha 126
tmp(127) :=  "01" & x"1" & '0' & x"15" ;        -- LDA R2, @21
tmp(128) :=  "01" & x"8" & '0' & x"02" ;        -- CEQ R2, @2                           # Verifica se a dezena de horas alcanÃ§ou 2
tmp(129) := "00" & x"7" & '0' & x"72";  -- JEQ @INCREMENTADEZENAHORA
tmp(130) := "00" & x"6" & '0' & x"6C";  -- JMP @PONTO1
tmp(131) := "00" & x"0" & '0' & x"00"; -- NOP #RETORNOINCREMENTA:pra pular na linha 131
tmp(132) := "00" & x"A" & '0' & x"00";  -- RET                                  # Retorna da sub-rotina INCREMENTA
tmp(133) := "00" & x"0" & '0' & x"00"; -- NOP #CONFIGURACAO:pra pular na linha 133
tmp(134) :=  "00" & x"1" & '0' & x"00" ;        -- LDA R1, @0                           # Carrega 0 no registrador R1 para uso geral
tmp(135) :=  "00" & x"5" & '1' & x"FE" ;        -- STA R1, @510                         # Limpa a leitura de KEY1
tmp(136) :=  "00" & x"5" & '1' & x"20" ;        -- STA R1, @288                         # Limpa o display HEX0
tmp(137) :=  "00" & x"5" & '1' & x"21" ;        -- STA R1, @289                         # Limpa o display HEX1
tmp(138) :=  "00" & x"5" & '1' & x"22" ;        -- STA R1, @290                         # Limpa o display HEX2
tmp(139) :=  "00" & x"5" & '1' & x"23" ;        -- STA R1, @291                         # Limpa o display HEX3
tmp(140) :=  "00" & x"5" & '1' & x"24" ;        -- STA R1, @292                         # Limpa o display HEX4
tmp(141) :=  "00" & x"5" & '1' & x"25" ;        -- STA R1, @293                         # Limpa o display HEX5
tmp(142) := "00" & x"0" & '0' & x"00"; -- NOP #AGUARDARKEY1_1:pra pular na linha 142
tmp(143) :=  "01" & x"1" & '1' & x"40" ;        -- LDA R2, @320                         # LÃª o estado dos switches SW0 a SW7
tmp(144) :=  "01" & x"B" & '0' & x"0F" ;        -- AND R2, @15                          # MÃ¡scara
tmp(145) :=  "01" & x"5" & '0' & x"10" ;        -- STA R2, @16                          # Armazena no endereÃ§o de memÃ³ria dos segundos (unidade)
tmp(146) :=  "01" & x"5" & '1' & x"20" ;        -- STA R2, @288                         # Atualiza display HEX0 com a configuraÃ§Ã£o da unidade dos segundos
tmp(147) :=  "10" & x"1" & '0' & x"01" ;        -- LDA R3, @1                           # Carrega 1 no registrador R3
tmp(148) :=  "10" & x"5" & '1' & x"25" ;        -- STA R3, @293                         # Mostra '1' no display HEX5 para indicar configuraÃ§Ã£o da unidade dos segundos
tmp(149) :=  "11" & x"1" & '1' & x"61" ;        -- LDA R4, @353                         # LÃª o estado da chave KEY1
tmp(150) :=  "11" & x"8" & '0' & x"01" ;        -- CEQ R4, @1                           # Compara com 1
tmp(151) := "00" & x"7" & '0' & x"99";  -- JEQ @CONFIGDEZSEG                    # Salta se KEY1 pressionado
tmp(152) := "00" & x"6" & '0' & x"8E";  -- JMP @AGUARDARKEY1_1                  # Continua no loop atÃ© que KEY1 seja pressionado
tmp(153) := "00" & x"0" & '0' & x"00"; -- NOP #CONFIGDEZSEG:pra pular na linha 153
tmp(154) :=  "00" & x"1" & '0' & x"00" ;        -- LDA R1, @0                           # Carrega 0 novamente para limpeza
tmp(155) :=  "00" & x"5" & '1' & x"FE" ;        -- STA R1, @510                         # Limpa a leitura de KEY1
tmp(156) := "00" & x"0" & '0' & x"00"; -- NOP #AGUARDARKEY1_2:pra pular na linha 156
tmp(157) :=  "01" & x"1" & '1' & x"40" ;        -- LDA R2, @320                         # LÃª novamente o estado dos switches
tmp(158) :=  "01" & x"B" & '0' & x"0F" ;        -- AND R2, @15                          # Aplica a mesma mÃ¡scara
tmp(159) :=  "01" & x"5" & '0' & x"11" ;        -- STA R2, @17                          # Armazena no endereÃ§o de memÃ³ria dos segundos (dezena)
tmp(160) :=  "01" & x"5" & '1' & x"20" ;        -- STA R2, @288                         # Atualiza display HEX0 com a configuraÃ§Ã£o da dezena dos segundos
tmp(161) :=  "10" & x"1" & '0' & x"02" ;        -- LDA R3, @2                           # Carrega 2 no registrador R3
tmp(162) :=  "10" & x"5" & '1' & x"25" ;        -- STA R3, @293                         # Mostra '2' no display HEX5 para indicar configuraÃ§Ã£o da dezena dos segundos
tmp(163) :=  "11" & x"1" & '1' & x"61" ;        -- LDA R4, @353                         # Verifica novamente o estado da chave KEY1
tmp(164) :=  "11" & x"8" & '0' & x"01" ;        -- CEQ R4, @1                           # Compara com 1
tmp(165) := "00" & x"7" & '0' & x"A7";  -- JEQ @CONFIGUNIMIN                    # Salta se KEY1 pressionado
tmp(166) := "00" & x"6" & '0' & x"9C";  -- JMP @AGUARDARKEY1_2                  # Continua no loop atÃ© que KEY1 seja pressionado
tmp(167) := "00" & x"0" & '0' & x"00"; -- NOP #CONFIGUNIMIN:pra pular na linha 167
tmp(168) :=  "00" & x"1" & '0' & x"00" ;        -- LDA R1, @0                           # Carrega 0 para limpeza
tmp(169) :=  "00" & x"5" & '1' & x"FE" ;        -- STA R1, @510                         # Limpa a leitura de KEY1
tmp(170) := "00" & x"0" & '0' & x"00"; -- NOP #AGUARDARKEY1_3:pra pular na linha 170
tmp(171) :=  "01" & x"1" & '1' & x"40" ;        -- LDA R2, @320                         # LÃª o estado dos switches novamente
tmp(172) :=  "01" & x"B" & '0' & x"0F" ;        -- AND R2, @15                          # Aplica a mesma mÃ¡scara
tmp(173) :=  "01" & x"5" & '0' & x"12" ;        -- STA R2, @18                          # Armazena no endereÃ§o de memÃ³ria dos minutos (unidade)
tmp(174) :=  "01" & x"5" & '1' & x"20" ;        -- STA R2, @288                         # Atualiza display HEX0 com a configuraÃ§Ã£o da unidade dos minutos
tmp(175) :=  "10" & x"1" & '0' & x"03" ;        -- LDA R3, @3                           # Carrega 3 no registrador R3
tmp(176) :=  "10" & x"5" & '1' & x"25" ;        -- STA R3, @293                         # Mostra '3' no display HEX5 para indicar configuraÃ§Ã£o da unidade dos minutos
tmp(177) :=  "11" & x"1" & '1' & x"61" ;        -- LDA R4, @353                         # Verifica novamente o estado da chave KEY1
tmp(178) :=  "11" & x"8" & '0' & x"01" ;        -- CEQ R4, @1                           # Compara com 1
tmp(179) := "00" & x"7" & '0' & x"B5";  -- JEQ @CONFIGDEZMIN                    # Salta se KEY1 pressionado
tmp(180) := "00" & x"6" & '0' & x"AA";  -- JMP @AGUARDARKEY1_3                  # Continua no loop atÃ© que KEY1 seja pressionado
tmp(181) := "00" & x"0" & '0' & x"00"; -- NOP #CONFIGDEZMIN:pra pular na linha 181
tmp(182) :=  "00" & x"1" & '0' & x"00" ;        -- LDA R1, @0                           # Carrega 0 para limpeza
tmp(183) :=  "00" & x"5" & '1' & x"FE" ;        -- STA R1, @510                         # Limpa a leitura de KEY1
tmp(184) := "00" & x"0" & '0' & x"00"; -- NOP #AGUARDARKEY1_4:pra pular na linha 184
tmp(185) :=  "01" & x"1" & '1' & x"40" ;        -- LDA R2, @320                         # LÃª o estado dos switches novamente
tmp(186) :=  "01" & x"B" & '0' & x"0F" ;        -- AND R2, @15                          # Aplica a mesma mÃ¡scara
tmp(187) :=  "01" & x"5" & '0' & x"13" ;        -- STA R2, @19                          # Armazena no endereÃ§o de memÃ³ria dos minutos (dezena)
tmp(188) :=  "01" & x"5" & '1' & x"20" ;        -- STA R2, @288                         # Atualiza display HEX0 com a configuraÃ§Ã£o da dezena dos minutos
tmp(189) :=  "10" & x"1" & '0' & x"04" ;        -- LDA R3, @4                           # Carrega 4 no registrador R3
tmp(190) :=  "10" & x"5" & '1' & x"25" ;        -- STA R3, @293                         # Mostra '4' no display HEX5 para indicar configuraÃ§Ã£o da dezena dos minutos
tmp(191) :=  "11" & x"1" & '1' & x"61" ;        -- LDA R4, @353                         # Verifica novamente o estado da chave KEY1
tmp(192) :=  "11" & x"8" & '0' & x"01" ;        -- CEQ R4, @1                           # Compara com 1
tmp(193) := "00" & x"7" & '0' & x"C3";  -- JEQ @CONFIGUNIHORA                   # Salta se KEY1 pressionado
tmp(194) := "00" & x"6" & '0' & x"B8";  -- JMP @AGUARDARKEY1_4                  # Continua no loop atÃ© que KEY1 seja pressionado
tmp(195) := "00" & x"0" & '0' & x"00"; -- NOP #CONFIGUNIHORA:pra pular na linha 195
tmp(196) :=  "00" & x"1" & '0' & x"00" ;        -- LDA R1, @0                           # Carrega 0 para limpeza
tmp(197) :=  "00" & x"5" & '1' & x"FE" ;        -- STA R1, @510                         # Limpa a leitura de KEY1
tmp(198) := "00" & x"0" & '0' & x"00"; -- NOP #AGUARDARKEY1_5:pra pular na linha 198
tmp(199) :=  "01" & x"1" & '1' & x"40" ;        -- LDA R2, @320                         # LÃª o estado dos switches novamente
tmp(200) :=  "01" & x"B" & '0' & x"0F" ;        -- AND R2, @15                          # Aplica a mesma mÃ¡scara
tmp(201) :=  "01" & x"5" & '0' & x"14" ;        -- STA R2, @20                          # Armazena no endereÃ§o de memÃ³ria das horas (unidade)
tmp(202) :=  "01" & x"5" & '1' & x"20" ;        -- STA R2, @288                         # Atualiza display HEX0 com a configuraÃ§Ã£o da unidade das horas
tmp(203) :=  "10" & x"1" & '0' & x"05" ;        -- LDA R3, @5                           # Carrega 5 no registrador R3
tmp(204) :=  "10" & x"5" & '1' & x"25" ;        -- STA R3, @293                         # Mostra '5' no display HEX5 para indicar configuraÃ§Ã£o da unidade das horas
tmp(205) :=  "11" & x"1" & '1' & x"61" ;        -- LDA R4, @353                         # Verifica novamente o estado da chave KEY1
tmp(206) :=  "11" & x"8" & '0' & x"01" ;        -- CEQ R4, @1                           # Compara com 1
tmp(207) := "00" & x"7" & '0' & x"D1";  -- JEQ @CONFIGDEZHORA                   # Salta se KEY1 pressionado
tmp(208) := "00" & x"6" & '0' & x"C6";  -- JMP @AGUARDARKEY1_5                  # Continua no loop atÃ© que KEY1 seja pressionado
tmp(209) := "00" & x"0" & '0' & x"00"; -- NOP #CONFIGDEZHORA:pra pular na linha 209
tmp(210) :=  "00" & x"1" & '0' & x"00" ;        -- LDA R1, @0                           # Carrega 0 para limpeza
tmp(211) :=  "00" & x"5" & '1' & x"FE" ;        -- STA R1, @510                         # Limpa a leitura de KEY1
tmp(212) := "00" & x"0" & '0' & x"00"; -- NOP #AGUARDARKEY1_6:pra pular na linha 212
tmp(213) :=  "01" & x"1" & '1' & x"40" ;        -- LDA R2, @320                         # LÃª o estado dos switches novamente
tmp(214) :=  "01" & x"B" & '0' & x"0F" ;        -- AND R2, @15                          # Aplica a mesma mÃ¡scara
tmp(215) :=  "01" & x"5" & '0' & x"15" ;        -- STA R2, @21                          # Armazena no endereÃ§o de memÃ³ria das horas (dezena)
tmp(216) :=  "01" & x"5" & '1' & x"20" ;        -- STA R2, @288                         # Atualiza display HEX0 com a configuraÃ§Ã£o da dezena das horas
tmp(217) :=  "10" & x"1" & '0' & x"06" ;        -- LDA R3, @6                           # Carrega 6 no registrador R3
tmp(218) :=  "10" & x"5" & '1' & x"25" ;        -- STA R3, @293                         # Mostra '6' no display HEX5 para indicar configuraÃ§Ã£o da dezena das horas
tmp(219) :=  "11" & x"1" & '1' & x"61" ;        -- LDA R4, @353                         # Verifica novamente o estado da chave KEY1
tmp(220) :=  "11" & x"8" & '0' & x"01" ;        -- CEQ R4, @1                           # Compara com 1
tmp(221) := "00" & x"7" & '0' & x"DF";  -- JEQ @RETORNOCONFIGURACAO             # Salta se KEY1 pressionado
tmp(222) := "00" & x"6" & '0' & x"D4";  -- JMP @AGUARDARKEY1_6                  # Continua no loop atÃ© que KEY1 seja pressionado
tmp(223) := "00" & x"0" & '0' & x"00"; -- NOP #RETORNOCONFIGURACAO:pra pular na linha 223
tmp(224) :=  "00" & x"1" & '0' & x"00" ;        -- LDA R1, @0                           # Carrega 0 para limpeza final
tmp(225) :=  "00" & x"5" & '1' & x"FE" ;        -- STA R1, @510                         # Limpa a leitura final de KEY1
tmp(226) :=  "00" & x"5" & '1' & x"20" ;        -- STA R1, @288                         # Limpa o display HEX0
tmp(227) :=  "00" & x"5" & '1' & x"21" ;        -- STA R1, @289                         # Limpa o display HEX1
tmp(228) :=  "00" & x"5" & '1' & x"22" ;        -- STA R1, @290                         # Limpa o display HEX2
tmp(229) :=  "00" & x"5" & '1' & x"23" ;        -- STA R1, @291                         # Limpa o display HEX3
tmp(230) :=  "00" & x"5" & '1' & x"24" ;        -- STA R1, @292                         # Limpa o display HEX4
tmp(231) :=  "00" & x"5" & '1' & x"25" ;        -- STA R1, @293                         # Limpa o display HEX5
tmp(232) := "00" & x"A" & '0' & x"00";  -- RET                                  # Retorna da sub-rotina CONFIGURACAO
tmp(233) := "00" & x"0" & '0' & x"00"; -- NOP #ESCREVER:pra pular na linha 233
tmp(234) :=  "00" & x"1" & '0' & x"10" ;        -- LDA R1, @16                          # Carrega o valor dos segundos (unidade) no registrador R1
tmp(235) :=  "00" & x"5" & '1' & x"20" ;        -- STA R1, @288                         # Atualiza o display HEX0 com os segundos (unidade)
tmp(236) :=  "00" & x"1" & '0' & x"11" ;        -- LDA R1, @17                          # Carrega o valor dos segundos (dezena) no registrador R1
tmp(237) :=  "00" & x"5" & '1' & x"21" ;        -- STA R1, @289                         # Atualiza o display HEX1 com os segundos (dezena)
tmp(238) :=  "00" & x"1" & '0' & x"12" ;        -- LDA R1, @18                          # Carrega o valor dos minutos (unidade) no registrador R1
tmp(239) :=  "00" & x"5" & '1' & x"22" ;        -- STA R1, @290                         # Atualiza o display HEX2 com os minutos (unidade)
tmp(240) :=  "00" & x"1" & '0' & x"13" ;        -- LDA R1, @19                          # Carrega o valor dos minutos (dezena) no registrador R1
tmp(241) :=  "00" & x"5" & '1' & x"23" ;        -- STA R1, @291                         # Atualiza o display HEX3 com os minutos (dezena)
tmp(242) :=  "00" & x"1" & '0' & x"14" ;        -- LDA R1, @20                          # Carrega o valor das horas (unidade) no registrador R1
tmp(243) :=  "00" & x"5" & '1' & x"24" ;        -- STA R1, @292                         # Atualiza o display HEX4 com as horas (unidade)
tmp(244) :=  "00" & x"1" & '0' & x"15" ;        -- LDA R1, @21                          # Carrega o valor das horas (dezena) no registrador R1
tmp(245) :=  "00" & x"5" & '1' & x"25" ;        -- STA R1, @293                         # Atualiza o display HEX5 com as horas (dezena)
tmp(246) := "00" & x"A" & '0' & x"00";  -- RET                                  # Retorna da sub-rotina ESCREVER
	return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;