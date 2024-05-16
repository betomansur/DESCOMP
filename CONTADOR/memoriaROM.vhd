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
      -- Inicializa os endereços:
tmp(0) := x"0" & '0' & x"00";	-- NOP   
tmp(1) := x"4" & '0' & x"01";	-- LDI $1                      		#Carrega 1 no acumulador
tmp(2) := x"5" & '0' & x"3F";	-- STA @63                     		#Salva 1 no endereço 63 da RAM
tmp(3) := x"4" & '0' & x"0F";	-- LDI $15                   	     	#Carrega 9 no acumulador
tmp(4) := x"5" & '0' & x"13";	-- STA @19                     		#Salva 9 no endereço 19 da RAM
tmp(5) := x"4" & '0' & x"0A";	-- LDI $10                     		#Carrega 10 no acumulador
tmp(6) := x"5" & '0' & x"14";	-- STA @20                     		#Salva 10 no endereço 20 da RAM
tmp(7) := x"4" & '0' & x"00";	-- LDI $0                          	#Carrega 0 no acumulador
tmp(8) := x"5" & '1' & x"FE";	-- STA @510                    		#Limpa leitura KEY1
tmp(9) := x"5" & '1' & x"FF";	-- STA @511                    		#Limpa leitura KEY0
tmp(10) := x"5" & '1' & x"FD";	-- STA @509                    		#Limpa leitura Reset           	
tmp(11) := x"5" & '0' & x"3E";	-- STA @62                     		#Salva 0 no endereço 62 da RAM
tmp(12) := x"5" & '1' & x"02";	-- STA @258                    		#Apaga o LED 9
tmp(13) := x"5" & '1' & x"01";	-- STA @257                    		#Apaga o LED 8
tmp(14) := x"5" & '1' & x"00";	-- STA @256                    		#Apaga o LED 7 a 0 
tmp(15) := x"5" & '1' & x"20";	-- STA @288                    		#Zera o HEX 0
tmp(16) := x"5" & '1' & x"21";	-- STA @289                    		#Zera o HEX 1
tmp(17) := x"5" & '1' & x"22";	-- STA @290                    		#Zera o HEX 2
tmp(18) := x"5" & '1' & x"23";	-- STA @291                    		#Zera o HEX 3
tmp(19) := x"5" & '1' & x"24";	-- STA @292                    		#Zera o HEX 4
tmp(20) := x"5" & '1' & x"25";	-- STA @293                    		#Zera o HEX 5
tmp(21) := x"5" & '0' & x"00";	-- STA @0                      		#Zera o endereço 0 da RAM (Limite das unidades)
tmp(22) := x"5" & '0' & x"01";	-- STA @1                      		#Zera o endereço 1 da RAM (Limite das dezenas)
tmp(23) := x"5" & '0' & x"02";	-- STA @2                      		#Zera o endereço 2 da RAM (Limite das centenas) 
tmp(24) := x"5" & '0' & x"03";	-- STA @3                      		#Zera o endereço 3 da RAM (Limite dos milhares) 
tmp(25) := x"5" & '0' & x"04";	-- STA @4                      		#Zera o endereço 4 da RAM (Limite das dezenas de milhares)
tmp(26) := x"5" & '0' & x"05";	-- STA @5                      		#Zera o endereço 5 da RAM (Limite das centenas de milhares) 
tmp(27) := x"5" & '0' & x"0A";	-- STA @10                     		#Zera o endereço 10 da RAM (Valor atual das unidades) 
tmp(28) := x"5" & '0' & x"0B";	-- STA @11                     		#Zera o endereço 11 da RAM (Valor atual das dezenas)
tmp(29) := x"5" & '0' & x"0C";	-- STA @12                     		#Zera o endereço 12 da RAM (Valor atual das centenas)
tmp(30) := x"5" & '0' & x"0D";	-- STA @13                     		#Zera o endereço 13 da RAM (Valor atual dos milhares)
tmp(31) := x"5" & '0' & x"0E";	-- STA @14                     		#Zera o endereço 14 da RAM (Valor atual das dezenas de milhares)
tmp(32) := x"5" & '0' & x"0F";	-- STA @15                     		#Zera o endereço 15 da RAM (Valor atual das centenas de milhares)
tmp(33) := x"0" & '0' & x"00";	-- NOP                             	#LOOP PRINCIPAL
tmp(34) := x"1" & '1' & x"61";	-- LDA @353                    		#Carrega o valor do KEY1 no acumulador
tmp(35) := x"8" & '0' & x"3E";	-- CEQ @62                     		#Compara o valor do KEY1 com 62 (0)
tmp(36) := x"7" & '0' & x"26";	-- JEQ @38                       	#Se 0, Linha de carregar o valor do key0
tmp(37) := x"9" & '0' & x"30";	-- JSR @48           	        	#Se 1, subrotina CONFIGURACAO LIMITE
tmp(38) := x"1" & '1' & x"60";	-- LDA @352                    		#Carrega o valor do KEY0 no acumulador
tmp(39) := x"8" & '0' & x"3E";	-- CEQ @62                     		#Compara o valor do KEY0 com 62 (0)
tmp(40) := x"7" & '0' & x"2B";	-- JEQ @43                       	#Se 0, Linha de carregar o valor do reset
tmp(41) := x"9" & '0' & x"D4";	-- JSR @212                       	#SUBROTINA VERIFICACAO LIMITE
tmp(42) := x"9" & '0' & x"88";	-- JSR @136                       	#Se 1, subrotina INCREMENTO
tmp(43) := x"1" & '1' & x"64";	-- LDA @356                    		#Carrega o valor do Reset no acumulador
tmp(44) := x"8" & '0' & x"3E";	-- CEQ @62                     		#Compara o valor do Reset com 62 (0)
tmp(45) := x"7" & '0' & x"2F";	-- JEQ @47        	            	#Se 0, linha de JMP inicial
tmp(46) := x"9" & '0' & x"F0";	-- JSR @240                       	#Se 1, subrotina FPGA RESET
tmp(47) := x"6" & '0' & x"21";	-- JMP @33          	            	#Se nenhum dos botoes forem clicados, vai para o label Start (Laco principal)  linha ~34
tmp(48) := x"0" & '0' & x"00";	-- NOP                             	#SUBROTINA CONFIGURACAO LIMITE
tmp(49) := x"5" & '1' & x"FE";	-- STA @510                    		#Limpa leitura KEY1
tmp(50) := x"1" & '0' & x"00";	-- LDA @0                      		#Carrega o valor do endereço 0 da RAM no acumulador (Limite das unidades)
tmp(51) := x"5" & '1' & x"20";	-- STA @288                    		#Mostra o valor do acumulador HEX 0 (unidades)
tmp(52) := x"1" & '0' & x"01";	-- LDA @1                      		#Carrega o valor do endereço 1 da RAM no acumulador (Limite das dezenas)
tmp(53) := x"5" & '1' & x"21";	-- STA @289                    		#Mostra o valor do acumulador HEX 1 (dezenas)
tmp(54) := x"1" & '0' & x"02";	-- LDA @2                      		#Carrega o valor do endereço 2 da RAM no acumulador (Limite das centenas)
tmp(55) := x"5" & '1' & x"22";	-- STA @290                    		#Mostra o valor do acumulador HEX 2 (centenas)
tmp(56) := x"1" & '0' & x"03";	-- LDA @3                      		#Carrega o valor do endereço 3 da RAM no acumulador (Limite dos milhares)
tmp(57) := x"5" & '1' & x"23";	-- STA @291                    		#Mostra o valor do acumulador HEX 3 (milhares)
tmp(58) := x"1" & '0' & x"04";	-- LDA @4                      		#Carrega o valor do endereço 4 da RAM no acumulador (Limite das dezenas de milhares)
tmp(59) := x"5" & '1' & x"24";	-- STA @292                    		#Mostra o valor do acumulador HEX 4 (dezenas de milhares)
tmp(60) := x"1" & '0' & x"05";	-- LDA @5                      		#Carrega o valor do endereço 5 da RAM no acumulador (Limite das centenas de milhares)
tmp(61) := x"5" & '1' & x"25";	-- STA @293                    		#Mostra o valor do acumulador HEX 5 (centenas de milhares)
tmp(62) := x"0" & '0' & x"00";	-- NOP                             	#(A)
tmp(63) := x"1" & '1' & x"40";	-- LDA @320                    		#Carrega valor das chaves SW0 a SW7 no acumulador
tmp(64) := x"B" & '0' & x"13";	-- AND @19                         	#Mascara do switch (00001111)
tmp(65) := x"5" & '1' & x"20";	-- STA @288                        	#Mostra o valor do acumulador HEX 0 (unidades)
tmp(66) := x"5" & '0' & x"00";	-- STA @0                      		#Salva o valor do acumulador no endereço 0 da RAM (Limite das unidades)
tmp(67) := x"0" & '0' & x"00";	-- NOP
tmp(68) := x"1" & '1' & x"61";	-- LDA @353                    		#Carrega o valor do KEY1 no acumulador
tmp(69) := x"8" & '0' & x"3E";	-- CEQ @62                     		#Compara o valor do KEY1 com 62 (0)
tmp(70) := x"7" & '0' & x"3E";	-- JEQ @62       	            	#Se 0, (não setou) NOP EMCIMA DO LDA@320 (A)
tmp(71) := x"5" & '1' & x"FE";	-- STA @510                    		#Limpa leitura KEY1
tmp(72) := x"0" & '0' & x"00";	-- NOP                             	#(B)
tmp(73) := x"1" & '1' & x"40";	-- LDA @320                    		#Carrega valor das chaves SW0 a SW7 no acumulador
tmp(74) := x"B" & '0' & x"13";	-- AND @19                         	#Mascara do switch (00001111)
tmp(75) := x"5" & '1' & x"21";	-- STA @289                        	#Mostra o valor do acumulador HEX 1 (dezenas)
tmp(76) := x"5" & '0' & x"01";	-- STA @1                      		#Salva o valor do acumulador no endereço 1 da RAM (Limite das dezenas)
tmp(77) := x"0" & '0' & x"00";	-- NOP
tmp(78) := x"1" & '1' & x"61";	-- LDA @353                    		#Carrega o valor do KEY1 no acumulador
tmp(79) := x"8" & '0' & x"3E";	-- CEQ @62                     		#Compara o valor do KEY1 com 62 (0)
tmp(80) := x"7" & '0' & x"48";	-- JEQ @72       	            	#Se 0, (não setou) NOP EMCIMA DO LDA@320 (B)
tmp(81) := x"5" & '1' & x"FE";	-- STA @510                    		#Limpa leitura KEY1
tmp(82) := x"0" & '0' & x"00";	-- NOP                             	#(C)
tmp(83) := x"1" & '1' & x"40";	-- LDA @320                    		#Carrega valor das chaves SW0 a SW7 no acumulador
tmp(84) := x"B" & '0' & x"13";	-- AND @19                         	#Mascara do switch (00001111)
tmp(85) := x"5" & '1' & x"22";	-- STA @290                        	#Mostra o valor do acumulador HEX 2 (100)
tmp(86) := x"5" & '0' & x"02";	-- STA @2                      		#Salva o valor do acumulador no endereço 2 da RAM (Limite das 100)
tmp(87) := x"0" & '0' & x"00";	-- NOP
tmp(88) := x"1" & '1' & x"61";	-- LDA @353                    		#Carrega o valor do KEY1 no acumulador
tmp(89) := x"8" & '0' & x"3E";	-- CEQ @62                     		#Compara o valor do KEY1 com 62 (0)
tmp(90) := x"7" & '0' & x"52";	-- JEQ @82       	            	#Se 0, (não setou) NOP EMCIMA DO LDA@320 (C)
tmp(91) := x"5" & '1' & x"FE";	-- STA @510                    		#Limpa leitura KEY1
tmp(92) := x"0" & '0' & x"00";	-- NOP                             	#(D)
tmp(93) := x"1" & '1' & x"40";	-- LDA @320                    		#Carrega valor das chaves SW0 a SW7 no acumulador
tmp(94) := x"B" & '0' & x"13";	-- AND @19                         	#Mascara do switch (00001111)
tmp(95) := x"5" & '1' & x"23";	-- STA @291                        	#Mostra o valor do acumulador HEX 3 (1000)
tmp(96) := x"5" & '0' & x"03";	-- STA @3                      		#Salva o valor do acumulador no endereço 3 da RAM (Limite das 1000)
tmp(97) := x"0" & '0' & x"00";	-- NOP
tmp(98) := x"1" & '1' & x"61";	-- LDA @353                    		#Carrega o valor do KEY1 no acumulador
tmp(99) := x"8" & '0' & x"3E";	-- CEQ @62                     		#Compara o valor do KEY1 com 62 (0)
tmp(100) := x"7" & '0' & x"5C";	-- JEQ @92       	            	#Se 0, (não setou) NOP EMCIMA DO LDA@320 (D)
tmp(101) := x"5" & '1' & x"FE";	-- STA @510                    		#Limpa leitura KEY1
tmp(102) := x"0" & '0' & x"00";	-- NOP
tmp(103) := x"1" & '1' & x"40";	-- LDA @320                    		#Carrega valor das chaves SW0 a SW7 no acumulador
tmp(104) := x"B" & '0' & x"13";	-- AND @19                         	#Mascara do switch (00001111)
tmp(105) := x"5" & '1' & x"24";	-- STA @292                        	#Mostra o valor do acumulador HEX 4 (unidades)
tmp(106) := x"5" & '0' & x"04";	-- STA @4                    	    	#Salva o valor do acumulador no endereço 4  da RAM (Limite das 10000)
tmp(107) := x"0" & '0' & x"00";	-- NOP
tmp(108) := x"1" & '1' & x"61";	-- LDA @353                    		#Carrega o valor do KEY1 no acumulador
tmp(109) := x"8" & '0' & x"3E";	-- CEQ @62                     		#Compara o valor do KEY1 com 62 (0)
tmp(110) := x"7" & '0' & x"66";	-- JEQ @102       	            	#Se 0, (não setou) NOP EMCIMA DO LDA@320 (E)
tmp(111) := x"5" & '1' & x"FE";	-- STA @510                    		#Limpa leitura KEY1
tmp(112) := x"0" & '0' & x"00";	-- NOP
tmp(113) := x"1" & '1' & x"40";	-- LDA @320                    		#Carrega valor das chaves SW0 a SW7 no acumulador
tmp(114) := x"B" & '0' & x"13";	-- AND @19                         	#Mascara do switch (00001111)
tmp(115) := x"5" & '1' & x"25";	-- STA @293                          	#Mostra o valor do acumulador HEX 5 (unidades)
tmp(116) := x"5" & '0' & x"05";	-- STA @5                      		#Salva o valor do acumulador no endereço 5 da RAM (Limite das 100000)
tmp(117) := x"0" & '0' & x"00";	-- NOP
tmp(118) := x"1" & '1' & x"61";	-- LDA @353                    		#Carrega o valor do KEY1 no acumulador
tmp(119) := x"8" & '0' & x"3E";	-- CEQ @62                     		#Compara o valor do KEY1 com 62 (0)
tmp(120) := x"7" & '0' & x"70";	-- JEQ @112       	            	#Se 0, (não setou) NOP EMCIMA DO LDA@320 (F)
tmp(121) := x"5" & '1' & x"FE";	-- STA @510                    		#Limpa leitura KEY1
tmp(122) := x"0" & '0' & x"00";	-- NOP
tmp(123) := x"1" & '0' & x"0A";	-- LDA @10                     		#Carrega o valor do endereço 10 da RAM no acumulador (valor atual das unidades)
tmp(124) := x"5" & '1' & x"20";	-- STA @288                    		#Mostra o valor do acumulador HEX 0 (unidades)
tmp(125) := x"1" & '0' & x"0B";	-- LDA @11                     		#Carrega o valor do endereço 11 da RAM no acumulador (valor atual das dezenas)
tmp(126) := x"5" & '1' & x"21";	-- STA @289                    		#Mostra o valor do acumulador HEX 1 (dezenas)
tmp(127) := x"1" & '0' & x"0C";	-- LDA @12                     		#Carrega o valor do endereço 12 da RAM no acumulador (valor atual das centenas)
tmp(128) := x"5" & '1' & x"22";	-- STA @290                    		#Mostra o valor do acumulador HEX 2 (centenas)
tmp(129) := x"1" & '0' & x"0D";	-- LDA @13                     		#Carrega o valor do endereço 13 da RAM no acumulador (valor atual dos milhares)
tmp(130) := x"5" & '1' & x"23";	-- STA @291                    		#Mostra o valor do acumulador HEX 3 (milhares)
tmp(131) := x"1" & '0' & x"0E";	-- LDA @14                     		#Carrega o valor do endereço 14 da RAM no acumulador (valor atual das dezenas de milhares)
tmp(132) := x"5" & '1' & x"24";	-- STA @292                    		#Mostra o valor do acumulador HEX 4 (dezenas de milhares)
tmp(133) := x"1" & '0' & x"0F";	-- LDA @15                     		#Carrega o valor do endereço 15 da RAM no acumulador (valor atual das centenas de milhares)
tmp(134) := x"5" & '1' & x"25";	-- STA @293                    		#Mostra o valor do acumulador HEX 5 (centenas de milhares)
tmp(135) := x"A" & '0' & x"00";	-- RET
tmp(136) := x"0" & '0' & x"00";	-- NOP                             	#SUBROTINA INCREMENTO
tmp(137) := x"5" & '1' & x"FF";	-- STA @511                    		#Limpa leitura KEY0
tmp(138) := x"1" & '0' & x"0A";	-- LDA @10                     		#Carrega o valor do endereço 10 da RAM no acumulador (valor atual das unidades)
tmp(139) := x"2" & '0' & x"3F";	-- SOMA @63                    		#Soma o valor do acumulador com 63 (1)
tmp(140) := x"8" & '0' & x"14";	-- CEQ @20                     		#Compara o valor do acumulador com o endereco 20 da RAM (10)
tmp(141) := x"7" & '0' & x"90";	-- JEQ @144           	        	#Se sim, vai para a proxima casa 
tmp(142) := x"5" & '0' & x"0A";	-- STA @10                     		#Se o valor do acumulador nao for 10, salva o valor do acumulador no endereço 10 da RAM (valor atual das unidades)
tmp(143) := x"6" & '0' & x"C6";	-- JMP @198           	        	#Coloca no display e retorna
tmp(144) := x"0" & '0' & x"00";	-- NOP
tmp(145) := x"1" & '0' & x"3E";	-- LDA @62                     		#Carrega o valor 62 (0) no acumulador
tmp(146) := x"5" & '0' & x"0A";	-- STA @10                     		#Zera o valor atual das unidades
tmp(147) := x"1" & '0' & x"0B";	-- LDA @11                     		#Carrega o valor do endereço 11 da RAM no acumulador (valor atual das dezenas)
tmp(148) := x"2" & '0' & x"3F";	-- SOMA @63                    		#Soma o valor do acumulador com 63 (1)
tmp(149) := x"8" & '0' & x"14";	-- CEQ @20                     		#Compara o valor do acumulador com o endereco 20 da RAM (10)
tmp(150) := x"7" & '0' & x"9B";	-- JEQ @155           	        	#Se sim, vai para a proxima casa 
tmp(151) := x"5" & '0' & x"0B";	-- STA @11                     		#Se o valor do acumulador nao for 10, salva o valor do acumulador no endereço 11 da RAM (valor atual das dezenas)
tmp(152) := x"6" & '0' & x"C6";	-- JMP @198           	        	#Coloca no display e retorna
tmp(153) := x"0" & '0' & x"00";	-- NOP
tmp(154) := x"1" & '0' & x"3E";	-- LDA @62                     		#Carrega o valor 62 (0) no acumulador
tmp(155) := x"5" & '0' & x"0B";	-- STA @11                     		#Zera o valor atual das dezenas
tmp(156) := x"1" & '0' & x"0C";	-- LDA @12                     		#Carrega o valor do endereço 12 da RAM no acumulador (valor atual das centenas)
tmp(157) := x"2" & '0' & x"3F";	-- SOMA @63                    		#Soma o valor do acumulador com 63 (1)
tmp(158) := x"8" & '0' & x"14";	-- CEQ @20                     		#Compara o valor do acumulador com o endereco 20 da RAM (10)
tmp(159) := x"7" & '0' & x"A4";	-- JEQ @164           	        	#Se sim, vai para a proxima casa 
tmp(160) := x"5" & '0' & x"0C";	-- STA @12                     		#Se o valor do acumulador nao for 10, salva o valor do acumulador no endereço 12 da RAM (valor atual das centenas)
tmp(161) := x"6" & '0' & x"C6";	-- JMP @198           	        	#Coloca no display e retorna
tmp(162) := x"0" & '0' & x"00";	-- NOP
tmp(163) := x"1" & '0' & x"3E";	-- LDA @62                     		#Carrega o valor 62 (0) no acumulador
tmp(164) := x"5" & '0' & x"0C";	-- STA @12                     		#Zera o valor atual das centenas
tmp(165) := x"1" & '0' & x"0D";	-- LDA @13                     		#Carrega o valor do endereço 13 da RAM no acumulador (valor atual dos milhares)
tmp(166) := x"2" & '0' & x"3F";	-- SOMA @63                    		#Soma o valor do acumulador com 63 (1)
tmp(167) := x"8" & '0' & x"14";	-- CEQ @20                     		#Compara o valor do acumulador com o endereco 20 da RAM (10)
tmp(168) := x"7" & '0' & x"AD";	-- JEQ @173          	        	#Se sim, vai para a proxima casa 
tmp(169) := x"5" & '0' & x"0D";	-- STA @13                     		#Se o valor do acumulador nao for 10, salva o valor do acumulador no endereço 13 da RAM (valor atual dos milhares)
tmp(170) := x"6" & '0' & x"C6";	-- JMP @198           	        	#Coloca no display e retorna
tmp(171) := x"0" & '0' & x"00";	-- NOP
tmp(172) := x"1" & '0' & x"3E";	-- LDA @62                     		#Carrega o valor 62 (0) no acumulador
tmp(173) := x"5" & '0' & x"0D";	-- STA @13                     		#Zera o valor atual dos milhares
tmp(174) := x"1" & '0' & x"0E";	-- LDA @14                     		#Carrega o valor do endereço 14 da RAM no acumulador (valor atual das dezenas de milhares)
tmp(175) := x"2" & '0' & x"3F";	-- SOMA @63                    		#Soma o valor do acumulador com 63 (1)
tmp(176) := x"8" & '0' & x"14";	-- CEQ @20                     		#Compara o valor do acumulador com o endereco 20 da RAM (10)
tmp(177) := x"7" & '0' & x"B6";	-- JEQ @182           	        	#Se sim, vai para a proxima casa 
tmp(178) := x"5" & '0' & x"0E";	-- STA @14                     		#Se o valor do acumulador nao for 10, salva o valor do acumulador no endereço 14 da RAM (valor atual das dezenas de milhares)
tmp(179) := x"6" & '0' & x"C6";	-- JMP @198           	        	#Coloca no display e retorna
tmp(180) := x"0" & '0' & x"00";	-- NOP
tmp(181) := x"1" & '0' & x"3E";	-- LDA @62                     		#Carrega o valor 62 (0) no acumulador
tmp(182) := x"5" & '0' & x"0E";	-- STA @14                     		#Zera o valor atual das dezenas de milhares
tmp(183) := x"1" & '0' & x"0F";	-- LDA @15                     		#Carrega o valor do endereço 15 da RAM no acumulador (valor atual das centenas de milhares)
tmp(184) := x"2" & '0' & x"3F";	-- SOMA @63                    		#Soma o valor do acumulador com 63 (1)
tmp(185) := x"8" & '0' & x"14";	-- CEQ @20                     		#Compara o valor do acumulador com o endereco 20 da RAM (10)
tmp(186) := x"7" & '0' & x"BD";	-- JEQ @189           	        	#Se sim, vai para a proxima casa 
tmp(187) := x"5" & '0' & x"0F";	-- STA @15                     		#Se o valor do acumulador nao for 10, salva o valor do acumulador no endereço 15 da RAM (valor atual das centenas de milhares)
tmp(188) := x"6" & '0' & x"C6";	-- JMP @198           	        	#Coloca no display e retorna
tmp(189) := x"0" & '0' & x"00";	-- NOP
tmp(190) := x"4" & '0' & x"09";	-- LDI $9
tmp(191) := x"5" & '1' & x"20";	-- STA @288
tmp(192) := x"5" & '1' & x"21";	-- STA @289
tmp(193) := x"5" & '1' & x"22";	-- STA @290
tmp(194) := x"5" & '1' & x"23";	-- STA @291
tmp(195) := x"5" & '1' & x"24";	-- STA @292
tmp(196) := x"5" & '1' & x"25";	-- STA @293
tmp(197) := x"A" & '0' & x"00";	-- RET
tmp(198) := x"0" & '0' & x"00";	-- NOP
tmp(199) := x"1" & '0' & x"0A";	-- LDA @10                     		#Carrega o valor do endereço 10 da RAM no acumulador (valor atual das unidades)
tmp(200) := x"5" & '1' & x"20";	-- STA @288                    		#Salva o valor do acumulador no HEX 0
tmp(201) := x"1" & '0' & x"0B";	-- LDA @11                     		#Carrega o valor do endereço 11 da RAM no acumulador (valor atual das dezenas)
tmp(202) := x"5" & '1' & x"21";	-- STA @289                    		#Salva o valor do acumulador no HEX 1
tmp(203) := x"1" & '0' & x"0C";	-- LDA @12                     		#Carrega o valor do endereço 12 da RAM no acumulador (valor atual das centenas)
tmp(204) := x"5" & '1' & x"22";	-- STA @290                    		#Salva o valor do acumulador no HEX 2
tmp(205) := x"1" & '0' & x"0D";	-- LDA @13                     		#Carrega o valor do endereço 13 da RAM no acumulador (valor atual dos milhares)
tmp(206) := x"5" & '1' & x"23";	-- STA @291                    		#Salva o valor do acumulador no HEX 3
tmp(207) := x"1" & '0' & x"0E";	-- LDA @14                     		#Carrega o valor do endereço 14 da RAM no acumulador (valor atual das dezenas de milhares)
tmp(208) := x"5" & '1' & x"24";	-- STA @292                    		#Salva o valor do acumulador no HEX 4
tmp(209) := x"1" & '0' & x"0F";	-- LDA @15                     		#Carrega o valor do endereço 15 da RAM no acumulador (valor atual das centenas de milhares)
tmp(210) := x"5" & '1' & x"25";	-- STA @293                    		#Salva o valor do acumulador no HEX 5
tmp(211) := x"A" & '0' & x"00";	-- RET         
tmp(212) := x"0" & '0' & x"00";	-- NOP                             	#SUBROTINA VERIFICACAO DE LIMITE
tmp(213) := x"1" & '0' & x"00";	-- LDA @0                          	#Limite UNIDADE
tmp(214) := x"8" & '0' & x"0A";	-- CEQ @10                         	#Unidade = limite                          
tmp(215) := x"7" & '0' & x"D9";	-- JEQ @217                       	#Proxima casa
tmp(216) := x"A" & '0' & x"00";	-- RET
tmp(217) := x"1" & '0' & x"01";	-- LDA @1                          	#Limite 10
tmp(218) := x"8" & '0' & x"0B";	-- CEQ @11                         	#10 = limite                          
tmp(219) := x"7" & '0' & x"DD";	-- JEQ @221                       	#Proxima casa
tmp(220) := x"A" & '0' & x"00";	-- RET
tmp(221) := x"1" & '0' & x"02";	-- LDA @2                          	#Limite 100
tmp(222) := x"8" & '0' & x"0C";	-- CEQ @12                         	#100 = limite                          
tmp(223) := x"7" & '0' & x"E1";	-- JEQ @225                       	#Proxima casa
tmp(224) := x"A" & '0' & x"00";	-- RET
tmp(225) := x"1" & '0' & x"03";	-- LDA @3                          	#Limite 1000
tmp(226) := x"8" & '0' & x"0D";	-- CEQ @13                         	#1000 = limite                          
tmp(227) := x"7" & '0' & x"E5";	-- JEQ @229                       	#Proxima casa
tmp(228) := x"A" & '0' & x"00";	-- RET
tmp(229) := x"1" & '0' & x"04";	-- LDA @4                          	#Limite 10000
tmp(230) := x"8" & '0' & x"0E";	-- CEQ @14                         	#10000 = limite                          
tmp(231) := x"7" & '0' & x"E9";	-- JEQ @233                       	#Proxima casa
tmp(232) := x"A" & '0' & x"00";	-- RET
tmp(233) := x"1" & '0' & x"05";	-- LDA @5                          	#Limite 100000
tmp(234) := x"8" & '0' & x"0F";	-- CEQ @15                         	#100000 = limite                          
tmp(235) := x"7" & '0' & x"ED";	-- JEQ @237                       	#Proxima casa
tmp(236) := x"A" & '0' & x"00";	-- RET
tmp(237) := x"4" & '0' & x"01";	-- LDI $1
tmp(238) := x"5" & '1' & x"02";	-- STA @258
tmp(239) := x"A" & '0' & x"00";	-- RET
tmp(240) := x"0" & '0' & x"00";	-- NOP 	#SUBROTINA FPGA RESET
tmp(241) := x"6" & '0' & x"00";	-- JMP @0






	return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;