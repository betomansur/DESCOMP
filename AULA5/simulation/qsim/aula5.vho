-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "03/19/2024 00:03:24"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Aula5 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	Palavra_Controle : OUT std_logic_vector(11 DOWNTO 0);
	EntradaB_ULA : OUT std_logic_vector(7 DOWNTO 0)
	);
END Aula5;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[1]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[6]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[7]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[8]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[9]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[10]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[11]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[4]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[5]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[7]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Aula5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Palavra_Controle : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_EntradaB_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \Decodificador|Equal5~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \Decodificador|saida~7_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \Decodificador|saida[4]~1_combout\ : std_logic;
SIGNAL \Decodificador|saida~8_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \Decodificador|saida[5]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \RAM1|ram~165_combout\ : std_logic;
SIGNAL \Decodificador|Equal5~0_combout\ : std_logic;
SIGNAL \RAM1|ram~167_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \RAM1|ram~166_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \REGA|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \REGA|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ULA1|Add1~34_cout\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \ULA1|Add1~2\ : std_logic;
SIGNAL \ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \ULA1|Add1~6\ : std_logic;
SIGNAL \ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \ULA1|Add1~10\ : std_logic;
SIGNAL \ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \REGA|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \ULA1|Add1~14\ : std_logic;
SIGNAL \ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \ULA1|Add1~18\ : std_logic;
SIGNAL \ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \Decodificador|saida~2_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \REGA|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \ULA1|Add1~22\ : std_logic;
SIGNAL \ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \HAB_FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~162_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~163_combout\ : std_logic;
SIGNAL \RAM1|ram~164_combout\ : std_logic;
SIGNAL \ULA1|Add1~26\ : std_logic;
SIGNAL \ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \HAB_FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \HAB_FLAG|DOUT~q\ : std_logic;
SIGNAL \Decodificador|saida~5_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Decodificador|saida[1]~0_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[8]~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \Decodificador|Equal4~0_combout\ : std_logic;
SIGNAL \PC|DOUT[8]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \PC|DOUT[8]~1_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \Decodificador|saida~6_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \Decodificador|saida[6]~4_combout\ : std_logic;
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_Retorno|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \HAB_FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \Decodificador|ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \REG_Retorno|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \MUX2|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[8]~1_combout\ : std_logic;
SIGNAL \HAB_FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[8]~0_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \Decodificador|ALT_INV_saida~8_combout\ : std_logic;
SIGNAL \Decodificador|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \Decodificador|ALT_INV_saida~7_combout\ : std_logic;
SIGNAL \Decodificador|ALT_INV_saida~6_combout\ : std_logic;
SIGNAL \Decodificador|ALT_INV_saida~5_combout\ : std_logic;
SIGNAL \Decodificador|ALT_INV_saida[6]~4_combout\ : std_logic;
SIGNAL \Decodificador|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \Decodificador|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \Decodificador|ALT_INV_saida[4]~1_combout\ : std_logic;
SIGNAL \Decodificador|ALT_INV_saida[1]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
Palavra_Controle <= ww_Palavra_Controle;
EntradaB_ULA <= ww_EntradaB_ULA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \PC|DOUT[4]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \PC|DOUT[0]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \REGA|DOUT[6]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \REGA|DOUT[5]~DUPLICATE_q\;
\REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \REGA|DOUT[1]~DUPLICATE_q\;
\HAB_FLAG|ALT_INV_DOUT~1_combout\ <= NOT \HAB_FLAG|DOUT~1_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\Decodificador|ALT_INV_Equal5~1_combout\ <= NOT \Decodificador|Equal5~1_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\RAM1|ALT_INV_ram~165_combout\ <= NOT \RAM1|ram~165_combout\;
\REG_Retorno|ALT_INV_DOUT\(8) <= NOT \REG_Retorno|DOUT\(8);
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\REG_Retorno|ALT_INV_DOUT\(7) <= NOT \REG_Retorno|DOUT\(7);
\REG_Retorno|ALT_INV_DOUT\(6) <= NOT \REG_Retorno|DOUT\(6);
\REG_Retorno|ALT_INV_DOUT\(5) <= NOT \REG_Retorno|DOUT\(5);
\MUX2|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUX2|saida_MUX[4]~4_combout\;
\REG_Retorno|ALT_INV_DOUT\(4) <= NOT \REG_Retorno|DOUT\(4);
\REG_Retorno|ALT_INV_DOUT\(3) <= NOT \REG_Retorno|DOUT\(3);
\REG_Retorno|ALT_INV_DOUT\(2) <= NOT \REG_Retorno|DOUT\(2);
\REG_Retorno|ALT_INV_DOUT\(1) <= NOT \REG_Retorno|DOUT\(1);
\REG_Retorno|ALT_INV_DOUT\(0) <= NOT \REG_Retorno|DOUT\(0);
\PC|ALT_INV_DOUT[8]~1_combout\ <= NOT \PC|DOUT[8]~1_combout\;
\HAB_FLAG|ALT_INV_DOUT~q\ <= NOT \HAB_FLAG|DOUT~q\;
\PC|ALT_INV_DOUT[8]~0_combout\ <= NOT \PC|DOUT[8]~0_combout\;
\MUX1|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \MUX1|saida_MUX[7]~7_combout\;
\RAM1|ALT_INV_ram~164_combout\ <= NOT \RAM1|ram~164_combout\;
\RAM1|ALT_INV_ram~163_combout\ <= NOT \RAM1|ram~163_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~162_combout\ <= NOT \RAM1|ram~162_combout\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\MUX1|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \MUX1|saida_MUX[6]~6_combout\;
\RAM1|ALT_INV_ram~161_combout\ <= NOT \RAM1|ram~161_combout\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\MUX1|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \MUX1|saida_MUX[5]~5_combout\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\MUX1|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUX1|saida_MUX[4]~4_combout\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\MUX1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX1|saida_MUX[3]~3_combout\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX1|saida_MUX[2]~2_combout\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX1|saida_MUX[1]~1_combout\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX1|saida_MUX[0]~0_combout\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\Decodificador|ALT_INV_saida~8_combout\ <= NOT \Decodificador|saida~8_combout\;
\Decodificador|ALT_INV_Equal4~0_combout\ <= NOT \Decodificador|Equal4~0_combout\;
\Decodificador|ALT_INV_saida~7_combout\ <= NOT \Decodificador|saida~7_combout\;
\Decodificador|ALT_INV_saida~6_combout\ <= NOT \Decodificador|saida~6_combout\;
\Decodificador|ALT_INV_saida~5_combout\ <= NOT \Decodificador|saida~5_combout\;
\Decodificador|ALT_INV_saida[6]~4_combout\ <= NOT \Decodificador|saida[6]~4_combout\;
\Decodificador|ALT_INV_saida~2_combout\ <= NOT \Decodificador|saida~2_combout\;
\Decodificador|ALT_INV_Equal5~0_combout\ <= NOT \Decodificador|Equal5~0_combout\;
\Decodificador|ALT_INV_saida[4]~1_combout\ <= NOT \Decodificador|saida[4]~1_combout\;
\Decodificador|ALT_INV_saida[1]~0_combout\ <= NOT \Decodificador|saida[1]~0_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\ULA1|ALT_INV_Add1~29_sumout\ <= NOT \ULA1|Add1~29_sumout\;
\ULA1|ALT_INV_Add1~25_sumout\ <= NOT \ULA1|Add1~25_sumout\;
\ULA1|ALT_INV_Add1~21_sumout\ <= NOT \ULA1|Add1~21_sumout\;
\ULA1|ALT_INV_Add1~17_sumout\ <= NOT \ULA1|Add1~17_sumout\;
\ULA1|ALT_INV_Add1~13_sumout\ <= NOT \ULA1|Add1~13_sumout\;
\ULA1|ALT_INV_Add1~9_sumout\ <= NOT \ULA1|Add1~9_sumout\;
\ULA1|ALT_INV_Add1~5_sumout\ <= NOT \ULA1|Add1~5_sumout\;
\ULA1|ALT_INV_Add1~1_sumout\ <= NOT \ULA1|Add1~1_sumout\;
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);

-- Location: IOOBUF_X58_Y0_N93
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X56_Y0_N19
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X56_Y0_N53
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X58_Y0_N59
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X60_Y0_N53
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X64_Y0_N53
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X64_Y0_N2
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X62_Y0_N2
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X56_Y0_N2
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X54_Y0_N19
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X54_Y0_N36
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X58_Y0_N42
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X56_Y0_N36
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X54_Y0_N2
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X58_Y0_N76
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X54_Y0_N53
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X52_Y0_N2
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X88_Y81_N37
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X40_Y0_N19
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador|saida[4]~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X60_Y0_N19
\Palavra_Controle[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador|Equal5~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(0));

-- Location: IOOBUF_X68_Y0_N19
\Palavra_Controle[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(1));

-- Location: IOOBUF_X60_Y0_N36
\Palavra_Controle[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador|saida~2_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(2));

-- Location: IOOBUF_X30_Y81_N19
\Palavra_Controle[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(3));

-- Location: IOOBUF_X40_Y0_N53
\Palavra_Controle[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador|saida[4]~1_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(4));

-- Location: IOOBUF_X52_Y0_N19
\Palavra_Controle[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador|saida[5]~3_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(5));

-- Location: IOOBUF_X62_Y0_N36
\Palavra_Controle[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador|ALT_INV_saida[6]~4_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(6));

-- Location: IOOBUF_X62_Y0_N19
\Palavra_Controle[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador|saida~5_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(7));

-- Location: IOOBUF_X64_Y0_N19
\Palavra_Controle[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador|saida~6_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(8));

-- Location: IOOBUF_X60_Y0_N2
\Palavra_Controle[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador|saida~7_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(9));

-- Location: IOOBUF_X62_Y0_N53
\Palavra_Controle[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador|Equal4~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(10));

-- Location: IOOBUF_X64_Y0_N36
\Palavra_Controle[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decodificador|saida~6_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(11));

-- Location: IOOBUF_X40_Y0_N36
\EntradaB_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(0));

-- Location: IOOBUF_X50_Y0_N93
\EntradaB_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(1));

-- Location: IOOBUF_X50_Y0_N76
\EntradaB_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(2));

-- Location: IOOBUF_X40_Y0_N2
\EntradaB_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(3));

-- Location: IOOBUF_X50_Y0_N42
\EntradaB_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(4));

-- Location: IOOBUF_X50_Y0_N59
\EntradaB_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(5));

-- Location: IOOBUF_X52_Y0_N36
\EntradaB_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(6));

-- Location: IOOBUF_X52_Y0_N53
\EntradaB_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(7));

-- Location: IOIBUF_X89_Y35_N61
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G10
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: LABCELL_X57_Y4_N30
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: FF_X57_Y3_N13
\PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X57_Y3_N20
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X57_Y4_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: LABCELL_X57_Y4_N36
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: LABCELL_X57_Y4_N39
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: FF_X57_Y4_N41
\REG_Retorno|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	ena => \Decodificador|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_Retorno|DOUT\(3));

-- Location: FF_X57_Y3_N22
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: FF_X57_Y3_N10
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X56_Y4_N0
\Decodificador|Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador|Equal5~1_combout\ = ( \ROM1|memROM~0_combout\ & ( (\Decodificador|saida[1]~0_combout\ & (!\ROM1|memROM~5_combout\ & !\ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decodificador|ALT_INV_saida[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \Decodificador|Equal5~1_combout\);

-- Location: LABCELL_X57_Y3_N48
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \PC|DOUT\(3) & ( (!\PC|DOUT[1]~DUPLICATE_q\ & \PC|DOUT\(2)) ) ) # ( !\PC|DOUT\(3) & ( (!\PC|DOUT[1]~DUPLICATE_q\ & (\PC|DOUT\(0))) # (\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT\(0) & !\PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001001100010011000100110001000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X57_Y4_N42
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: FF_X57_Y4_N44
\REG_Retorno|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	ena => \Decodificador|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_Retorno|DOUT\(4));

-- Location: LABCELL_X56_Y4_N54
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT[3]~DUPLICATE_q\ $ (!\PC|DOUT[1]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT[0]~DUPLICATE_q\ & !\PC|DOUT[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X56_Y4_N6
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~3_combout\) # (\PC|DOUT\(8)) ) ) # ( !\ROM1|memROM~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X56_Y4_N45
\Decodificador|saida~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador|saida~7_combout\ = ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~0_combout\ & (\Decodificador|saida[1]~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \Decodificador|ALT_INV_saida[1]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \Decodificador|saida~7_combout\);

-- Location: LABCELL_X57_Y4_N12
\MUX2|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[4]~5_combout\ = ( \Decodificador|saida~7_combout\ & ( (\REG_Retorno|DOUT\(4) & \MUX2|saida_MUX[4]~4_combout\) ) ) # ( !\Decodificador|saida~7_combout\ & ( (\incrementaPC|Add0~17_sumout\ & \MUX2|saida_MUX[4]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_Retorno|ALT_INV_DOUT\(4),
	datac => \incrementaPC|ALT_INV_Add0~17_sumout\,
	datad => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \Decodificador|ALT_INV_saida~7_combout\,
	combout => \MUX2|saida_MUX[4]~5_combout\);

-- Location: FF_X57_Y4_N14
\PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X57_Y4_N45
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X57_Y4_N46
\REG_Retorno|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	ena => \Decodificador|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_Retorno|DOUT\(5));

-- Location: LABCELL_X57_Y4_N3
\MUX2|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[5]~6_combout\ = ( \Decodificador|saida~7_combout\ & ( (\MUX2|saida_MUX[4]~4_combout\ & \REG_Retorno|DOUT\(5)) ) ) # ( !\Decodificador|saida~7_combout\ & ( (\MUX2|saida_MUX[4]~4_combout\ & \incrementaPC|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	datac => \incrementaPC|ALT_INV_Add0~21_sumout\,
	datad => \REG_Retorno|ALT_INV_DOUT\(5),
	dataf => \Decodificador|ALT_INV_saida~7_combout\,
	combout => \MUX2|saida_MUX[5]~6_combout\);

-- Location: FF_X57_Y4_N5
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: FF_X57_Y4_N23
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X57_Y4_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: FF_X57_Y4_N50
\REG_Retorno|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	ena => \Decodificador|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_Retorno|DOUT\(6));

-- Location: LABCELL_X57_Y4_N21
\MUX2|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[6]~7_combout\ = ( \MUX2|saida_MUX[4]~4_combout\ & ( \Decodificador|saida~7_combout\ & ( \REG_Retorno|DOUT\(6) ) ) ) # ( \MUX2|saida_MUX[4]~4_combout\ & ( !\Decodificador|saida~7_combout\ & ( \incrementaPC|Add0~25_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \incrementaPC|ALT_INV_Add0~25_sumout\,
	datad => \REG_Retorno|ALT_INV_DOUT\(6),
	datae => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \Decodificador|ALT_INV_saida~7_combout\,
	combout => \MUX2|saida_MUX[6]~7_combout\);

-- Location: FF_X57_Y4_N22
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X57_Y4_N9
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( !\PC|DOUT[7]~DUPLICATE_q\ & ( !\PC|DOUT\(6) & ( (!\PC|DOUT[4]~DUPLICATE_q\ & !\PC|DOUT\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X57_Y3_N57
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \ROM1|memROM~3_combout\ & ( (\ROM1|memROM~6_combout\ & !\PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X57_Y3_N42
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \PC|DOUT\(3) & ( (!\PC|DOUT\(0) & !\PC|DOUT[1]~DUPLICATE_q\) ) ) # ( !\PC|DOUT\(3) & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X56_Y3_N51
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \ROM1|memROM~3_combout\ & ( (\ROM1|memROM~8_combout\ & !\PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X56_Y4_N9
\Decodificador|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador|saida[4]~1_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & \Decodificador|saida[1]~0_combout\))) ) ) # ( !\ROM1|memROM~4_combout\ & ( 
-- (!\Decodificador|saida[1]~0_combout\) # ((!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~0_combout\ & !\ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110000000111111111000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \Decodificador|ALT_INV_saida[1]~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \Decodificador|saida[4]~1_combout\);

-- Location: LABCELL_X56_Y4_N12
\Decodificador|saida~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador|saida~8_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~0_combout\ ) ) # ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~0_combout\ & ( ((!\ROM1|memROM~3_combout\) # ((\PC|DOUT\(8)) # (\ROM1|memROM~5_combout\))) # 
-- (\ROM1|memROM~2_combout\) ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~0_combout\ ) ) # ( !\ROM1|memROM~1_combout\ & ( !\ROM1|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \PC|ALT_INV_DOUT\(8),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \Decodificador|saida~8_combout\);

-- Location: LABCELL_X55_Y3_N21
\MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[5]~5_combout\ = ( \Decodificador|saida~8_combout\ & ( \RAM1|ram~159_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~159_combout\,
	dataf => \Decodificador|ALT_INV_saida~8_combout\,
	combout => \MUX1|saida_MUX[5]~5_combout\);

-- Location: LABCELL_X55_Y3_N18
\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = ( \ULA1|Add1~21_sumout\ & ( (!\Decodificador|saida[4]~1_combout\) # (\MUX1|saida_MUX[5]~5_combout\) ) ) # ( !\ULA1|Add1~21_sumout\ & ( (\Decodificador|saida[4]~1_combout\ & \MUX1|saida_MUX[5]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decodificador|ALT_INV_saida[4]~1_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \ULA1|ALT_INV_Add1~21_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

-- Location: LABCELL_X56_Y2_N15
\Decodificador|saida[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador|saida[5]~3_combout\ = ( \ROM1|memROM~4_combout\ & ( (\Decodificador|saida[1]~0_combout\ & (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~0_combout\ $ (!\ROM1|memROM~5_combout\)))) ) ) # ( !\ROM1|memROM~4_combout\ & ( 
-- (!\Decodificador|saida[1]~0_combout\) # ((!\ROM1|memROM~0_combout\ & !\ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011001100111011101100110000010010000000000001001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \Decodificador|ALT_INV_saida[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \Decodificador|saida[5]~3_combout\);

-- Location: FF_X55_Y3_N20
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[5]~5_combout\,
	ena => \Decodificador|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: LABCELL_X57_Y3_N27
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \PC|DOUT\(3) & ( (\PC|DOUT[2]~DUPLICATE_q\ & (\PC|DOUT\(0) & !\PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT\(3) & ( (!\PC|DOUT[2]~DUPLICATE_q\ & !\PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X57_Y3_N30
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT[1]~DUPLICATE_q\ & ((!\PC|DOUT\(3)) # (\PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT[1]~DUPLICATE_q\ $ (\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010010100010101000101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X56_Y2_N45
\RAM1|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~165_combout\ = ( !\PC|DOUT\(8) & ( \ROM1|memROM~10_combout\ & ( \ROM1|memROM~3_combout\ ) ) ) # ( !\PC|DOUT\(8) & ( !\ROM1|memROM~10_combout\ & ( (\ROM1|memROM~3_combout\ & ((\ROM1|memROM~12_combout\) # (\ROM1|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \PC|ALT_INV_DOUT\(8),
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~165_combout\);

-- Location: LABCELL_X56_Y2_N0
\Decodificador|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador|Equal5~0_combout\ = ( !\ROM1|memROM~1_combout\ & ( \ROM1|memROM~2_combout\ & ( (\ROM1|memROM~0_combout\ & (!\PC|DOUT\(8) & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \Decodificador|Equal5~0_combout\);

-- Location: LABCELL_X56_Y2_N18
\RAM1|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~167_combout\ = ( \Decodificador|Equal5~0_combout\ & ( !\ROM1|memROM~9_combout\ & ( (!\RAM1|ram~165_combout\ & \RAM1|process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~165_combout\,
	datad => \RAM1|ALT_INV_process_0~0_combout\,
	datae => \Decodificador|ALT_INV_Equal5~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~167_combout\);

-- Location: FF_X57_Y3_N26
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: LABCELL_X57_Y3_N6
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \ROM1|memROM~10_combout\ & ( (!\PC|DOUT\(8) & \ROM1|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X57_Y3_N15
\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( !\ROM1|memROM~11_combout\ & ( (\RAM1|ram~22_q\ & \ROM1|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~22_q\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~158_combout\);

-- Location: LABCELL_X56_Y2_N30
\RAM1|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~166_combout\ = ( \Decodificador|Equal5~0_combout\ & ( \ROM1|memROM~9_combout\ & ( (\RAM1|process_0~0_combout\ & !\RAM1|ram~165_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_process_0~0_combout\,
	datad => \RAM1|ALT_INV_ram~165_combout\,
	datae => \Decodificador|ALT_INV_Equal5~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~166_combout\);

-- Location: FF_X57_Y3_N53
\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

-- Location: LABCELL_X57_Y3_N51
\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~11_combout\ & \RAM1|ram~38_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \RAM1|ALT_INV_ram~38_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~157_combout\);

-- Location: LABCELL_X56_Y3_N54
\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( \RAM1|ram~157_combout\ & ( (!\ROM1|memROM~7_combout\ & ((\RAM1|ram~158_combout\) # (\ROM1|memROM~9_combout\))) ) ) # ( !\RAM1|ram~157_combout\ & ( (!\ROM1|memROM~7_combout\ & (!\ROM1|memROM~9_combout\ & \RAM1|ram~158_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \RAM1|ALT_INV_ram~158_combout\,
	dataf => \RAM1|ALT_INV_ram~157_combout\,
	combout => \RAM1|ram~159_combout\);

-- Location: LABCELL_X56_Y4_N24
\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~3_combout\ ) ) # ( !\ROM1|memROM~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~17_combout\);

-- Location: FF_X55_Y3_N19
\REGA|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[5]~5_combout\,
	ena => \Decodificador|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X55_Y3_N27
\MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~4_combout\ = (\Decodificador|saida~8_combout\ & \RAM1|ram~156_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decodificador|ALT_INV_saida~8_combout\,
	datad => \RAM1|ALT_INV_ram~156_combout\,
	combout => \MUX1|saida_MUX[4]~4_combout\);

-- Location: LABCELL_X55_Y3_N36
\MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~3_combout\ = ( \Decodificador|saida~8_combout\ & ( \RAM1|ram~154_combout\ ) ) # ( !\Decodificador|saida~8_combout\ & ( !\ROM1|memROM~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~154_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Decodificador|ALT_INV_saida~8_combout\,
	combout => \MUX1|saida_MUX[3]~3_combout\);

-- Location: FF_X55_Y3_N41
\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[3]~3_combout\,
	ena => \Decodificador|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: LABCELL_X55_Y3_N0
\MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~2_combout\ = ( \Decodificador|saida~8_combout\ & ( \RAM1|ram~151_combout\ ) ) # ( !\Decodificador|saida~8_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \RAM1|ALT_INV_ram~151_combout\,
	dataf => \Decodificador|ALT_INV_saida~8_combout\,
	combout => \MUX1|saida_MUX[2]~2_combout\);

-- Location: LABCELL_X56_Y2_N39
\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~10_combout\ ) ) # ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~10_combout\ ) ) # ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~16_combout\);

-- Location: LABCELL_X55_Y3_N24
\MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~1_combout\ = ( \ROM1|memROM~9_combout\ & ( (!\Decodificador|saida~8_combout\) # (\RAM1|ram~149_combout\) ) ) # ( !\ROM1|memROM~9_combout\ & ( (\Decodificador|saida~8_combout\ & \RAM1|ram~149_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decodificador|ALT_INV_saida~8_combout\,
	datad => \RAM1|ALT_INV_ram~149_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \MUX1|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X57_Y4_N15
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \ROM1|memROM~8_combout\ & ( !\ROM1|memROM~3_combout\ ) ) # ( !\ROM1|memROM~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \ROM1|memROM~15_combout\);

-- Location: FF_X55_Y3_N46
\REGA|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[1]~1_combout\,
	ena => \Decodificador|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X55_Y3_N54
\MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~0_combout\ = (!\Decodificador|saida~8_combout\ & (\ROM1|memROM~7_combout\)) # (\Decodificador|saida~8_combout\ & ((\RAM1|ram~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \Decodificador|ALT_INV_saida~8_combout\,
	datad => \RAM1|ALT_INV_ram~146_combout\,
	combout => \MUX1|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X56_Y2_N54
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~14_combout\);

-- Location: LABCELL_X56_Y3_N18
\ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA1|Add1~34_cout\);

-- Location: LABCELL_X56_Y3_N21
\ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~1_sumout\ = SUM(( (!\Decodificador|saida~8_combout\ & (((!\ROM1|memROM~14_combout\)) # (\PC|DOUT\(8)))) # (\Decodificador|saida~8_combout\ & (((!\RAM1|ram~146_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))
-- \ULA1|Add1~2\ = CARRY(( (!\Decodificador|saida~8_combout\ & (((!\ROM1|memROM~14_combout\)) # (\PC|DOUT\(8)))) # (\Decodificador|saida~8_combout\ & (((!\RAM1|ram~146_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \Decodificador|ALT_INV_saida~8_combout\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add1~34_cout\,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

-- Location: LABCELL_X55_Y3_N12
\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \ULA1|Add1~1_sumout\ & ( (!\Decodificador|saida[4]~1_combout\) # (\MUX1|saida_MUX[0]~0_combout\) ) ) # ( !\ULA1|Add1~1_sumout\ & ( (\Decodificador|saida[4]~1_combout\ & \MUX1|saida_MUX[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decodificador|ALT_INV_saida[4]~1_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \ULA1|ALT_INV_Add1~1_sumout\,
	combout => \ULA1|saida[0]~0_combout\);

-- Location: FF_X55_Y3_N13
\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[0]~0_combout\,
	ena => \Decodificador|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: FF_X56_Y2_N28
\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

-- Location: FF_X56_Y3_N14
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: LABCELL_X56_Y3_N12
\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( \ROM1|memROM~9_combout\ & ( (!\ROM1|memROM~7_combout\ & \RAM1|ram~33_q\) ) ) # ( !\ROM1|memROM~9_combout\ & ( (!\ROM1|memROM~7_combout\ & \RAM1|ram~17_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \RAM1|ALT_INV_ram~33_q\,
	datad => \RAM1|ALT_INV_ram~17_q\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~145_combout\);

-- Location: LABCELL_X56_Y3_N57
\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \RAM1|ram~145_combout\ & ( (\ROM1|memROM~13_combout\ & !\ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM1|ALT_INV_ram~145_combout\,
	combout => \RAM1|ram~146_combout\);

-- Location: LABCELL_X56_Y3_N24
\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( (!\Decodificador|saida~8_combout\ & (((\ROM1|memROM~15_combout\)) # (\PC|DOUT\(8)))) # (\Decodificador|saida~8_combout\ & (((!\RAM1|ram~149_combout\)))) ) + ( \REGA|DOUT[1]~DUPLICATE_q\ ) + ( \ULA1|Add1~2\ ))
-- \ULA1|Add1~6\ = CARRY(( (!\Decodificador|saida~8_combout\ & (((\ROM1|memROM~15_combout\)) # (\PC|DOUT\(8)))) # (\Decodificador|saida~8_combout\ & (((!\RAM1|ram~149_combout\)))) ) + ( \REGA|DOUT[1]~DUPLICATE_q\ ) + ( \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111010011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \Decodificador|ALT_INV_saida~8_combout\,
	datac => \RAM1|ALT_INV_ram~149_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	dataf => \REGA|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

-- Location: LABCELL_X55_Y3_N45
\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \ULA1|Add1~5_sumout\ & ( (!\Decodificador|saida[4]~1_combout\) # (\MUX1|saida_MUX[1]~1_combout\) ) ) # ( !\ULA1|Add1~5_sumout\ & ( (\MUX1|saida_MUX[1]~1_combout\ & \Decodificador|saida[4]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \Decodificador|ALT_INV_saida[4]~1_combout\,
	dataf => \ULA1|ALT_INV_Add1~5_sumout\,
	combout => \ULA1|saida[1]~1_combout\);

-- Location: FF_X55_Y3_N47
\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[1]~1_combout\,
	ena => \Decodificador|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: FF_X56_Y2_N7
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: LABCELL_X57_Y3_N39
\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( !\ROM1|memROM~11_combout\ & ( (\RAM1|ram~18_q\ & \ROM1|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~18_q\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~148_combout\);

-- Location: FF_X56_Y2_N22
\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

-- Location: LABCELL_X57_Y3_N33
\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( !\ROM1|memROM~11_combout\ & ( (\RAM1|ram~34_q\ & \ROM1|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~34_q\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~147_combout\);

-- Location: LABCELL_X56_Y3_N48
\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( \RAM1|ram~147_combout\ & ( (!\ROM1|memROM~7_combout\ & ((\RAM1|ram~148_combout\) # (\ROM1|memROM~9_combout\))) ) ) # ( !\RAM1|ram~147_combout\ & ( (!\ROM1|memROM~9_combout\ & (\RAM1|ram~148_combout\ & !\ROM1|memROM~7_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \RAM1|ALT_INV_ram~148_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \RAM1|ALT_INV_ram~147_combout\,
	combout => \RAM1|ram~149_combout\);

-- Location: LABCELL_X56_Y3_N27
\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( (!\Decodificador|saida~8_combout\ & (((\ROM1|memROM~16_combout\)) # (\PC|DOUT\(8)))) # (\Decodificador|saida~8_combout\ & (((!\RAM1|ram~151_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add1~6\ ))
-- \ULA1|Add1~10\ = CARRY(( (!\Decodificador|saida~8_combout\ & (((\ROM1|memROM~16_combout\)) # (\PC|DOUT\(8)))) # (\Decodificador|saida~8_combout\ & (((!\RAM1|ram~151_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111010011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \Decodificador|ALT_INV_saida~8_combout\,
	datac => \RAM1|ALT_INV_ram~151_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

-- Location: LABCELL_X55_Y3_N3
\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \ULA1|Add1~9_sumout\ & ( (!\Decodificador|saida[4]~1_combout\) # (\MUX1|saida_MUX[2]~2_combout\) ) ) # ( !\ULA1|Add1~9_sumout\ & ( (\Decodificador|saida[4]~1_combout\ & \MUX1|saida_MUX[2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Decodificador|ALT_INV_saida[4]~1_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \ULA1|ALT_INV_Add1~9_sumout\,
	combout => \ULA1|saida[2]~2_combout\);

-- Location: FF_X55_Y3_N4
\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[2]~2_combout\,
	ena => \Decodificador|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: FF_X57_Y3_N31
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: FF_X57_Y3_N55
\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

-- Location: LABCELL_X57_Y3_N45
\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \ROM1|memROM~9_combout\ & ( (\RAM1|ram~35_q\ & !\ROM1|memROM~7_combout\) ) ) # ( !\ROM1|memROM~9_combout\ & ( (\RAM1|ram~19_q\ & !\ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~19_q\,
	datac => \RAM1|ALT_INV_ram~35_q\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~150_combout\);

-- Location: LABCELL_X56_Y3_N15
\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( \RAM1|ram~150_combout\ & ( (!\ROM1|memROM~11_combout\ & \ROM1|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~150_combout\,
	combout => \RAM1|ram~151_combout\);

-- Location: LABCELL_X56_Y3_N30
\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (!\Decodificador|Equal5~1_combout\ & (((!\RAM1|ram~154_combout\)))) # (\Decodificador|Equal5~1_combout\ & ((!\ROM1|memROM~4_combout\ & (!\RAM1|ram~154_combout\)) # (\ROM1|memROM~4_combout\ & ((\ROM1|memROM~13_combout\))))) ) 
-- + ( \REGA|DOUT\(3) ) + ( \ULA1|Add1~10\ ))
-- \ULA1|Add1~14\ = CARRY(( (!\Decodificador|Equal5~1_combout\ & (((!\RAM1|ram~154_combout\)))) # (\Decodificador|Equal5~1_combout\ & ((!\ROM1|memROM~4_combout\ & (!\RAM1|ram~154_combout\)) # (\ROM1|memROM~4_combout\ & ((\ROM1|memROM~13_combout\))))) ) + ( 
-- \REGA|DOUT\(3) ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decodificador|ALT_INV_Equal5~1_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \RAM1|ALT_INV_ram~154_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\,
	cout => \ULA1|Add1~14\);

-- Location: LABCELL_X55_Y3_N39
\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = ( \ULA1|Add1~13_sumout\ & ( (!\Decodificador|saida[4]~1_combout\) # (\MUX1|saida_MUX[3]~3_combout\) ) ) # ( !\ULA1|Add1~13_sumout\ & ( (\Decodificador|saida[4]~1_combout\ & \MUX1|saida_MUX[3]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Decodificador|ALT_INV_saida[4]~1_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \ULA1|saida[3]~3_combout\);

-- Location: FF_X55_Y3_N40
\REGA|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[3]~3_combout\,
	ena => \Decodificador|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X56_Y2_N38
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: LABCELL_X57_Y3_N54
\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( !\ROM1|memROM~11_combout\ & ( (\RAM1|ram~20_q\ & \ROM1|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~20_q\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~153_combout\);

-- Location: FF_X57_Y3_N50
\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

-- Location: LABCELL_X57_Y3_N24
\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( !\ROM1|memROM~11_combout\ & ( (\RAM1|ram~36_q\ & \ROM1|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~36_q\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~152_combout\);

-- Location: LABCELL_X57_Y3_N0
\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( \RAM1|ram~152_combout\ & ( (!\ROM1|memROM~7_combout\ & ((\RAM1|ram~153_combout\) # (\ROM1|memROM~9_combout\))) ) ) # ( !\RAM1|ram~152_combout\ & ( (!\ROM1|memROM~7_combout\ & (!\ROM1|memROM~9_combout\ & \RAM1|ram~153_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	datad => \RAM1|ALT_INV_ram~153_combout\,
	dataf => \RAM1|ALT_INV_ram~152_combout\,
	combout => \RAM1|ram~154_combout\);

-- Location: LABCELL_X56_Y3_N33
\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( \REGA|DOUT\(4) ) + ( (!\RAM1|ram~156_combout\) # ((\Decodificador|Equal5~1_combout\ & \ROM1|memROM~4_combout\)) ) + ( \ULA1|Add1~14\ ))
-- \ULA1|Add1~18\ = CARRY(( \REGA|DOUT\(4) ) + ( (!\RAM1|ram~156_combout\) # ((\Decodificador|Equal5~1_combout\ & \ROM1|memROM~4_combout\)) ) + ( \ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011100000111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decodificador|ALT_INV_Equal5~1_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \RAM1|ALT_INV_ram~156_combout\,
	datad => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add1~14\,
	sumout => \ULA1|Add1~17_sumout\,
	cout => \ULA1|Add1~18\);

-- Location: LABCELL_X55_Y3_N48
\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = ( \ULA1|Add1~17_sumout\ & ( (!\Decodificador|saida[4]~1_combout\) # (\MUX1|saida_MUX[4]~4_combout\) ) ) # ( !\ULA1|Add1~17_sumout\ & ( (\MUX1|saida_MUX[4]~4_combout\ & \Decodificador|saida[4]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX1|ALT_INV_saida_MUX[4]~4_combout\,
	datad => \Decodificador|ALT_INV_saida[4]~1_combout\,
	dataf => \ULA1|ALT_INV_Add1~17_sumout\,
	combout => \ULA1|saida[4]~4_combout\);

-- Location: FF_X55_Y3_N49
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[4]~4_combout\,
	ena => \Decodificador|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: FF_X56_Y2_N34
\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

-- Location: FF_X56_Y2_N43
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: LABCELL_X55_Y3_N15
\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( \ROM1|memROM~9_combout\ & ( (\RAM1|ram~37_q\ & !\ROM1|memROM~7_combout\) ) ) # ( !\ROM1|memROM~9_combout\ & ( (\RAM1|ram~21_q\ & !\ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~37_q\,
	datac => \RAM1|ALT_INV_ram~21_q\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~155_combout\);

-- Location: LABCELL_X55_Y3_N57
\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( \RAM1|ram~155_combout\ & ( (!\ROM1|memROM~11_combout\ & \ROM1|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~155_combout\,
	combout => \RAM1|ram~156_combout\);

-- Location: LABCELL_X56_Y3_N36
\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( (!\RAM1|ram~159_combout\) # ((\Decodificador|Equal5~1_combout\ & ((\ROM1|memROM~17_combout\) # (\PC|DOUT\(8))))) ) + ( \REGA|DOUT[5]~DUPLICATE_q\ ) + ( \ULA1|Add1~18\ ))
-- \ULA1|Add1~22\ = CARRY(( (!\RAM1|ram~159_combout\) # ((\Decodificador|Equal5~1_combout\ & ((\ROM1|memROM~17_combout\) # (\PC|DOUT\(8))))) ) + ( \REGA|DOUT[5]~DUPLICATE_q\ ) + ( \ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decodificador|ALT_INV_Equal5~1_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \RAM1|ALT_INV_ram~159_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \ULA1|Add1~18\,
	sumout => \ULA1|Add1~21_sumout\,
	cout => \ULA1|Add1~22\);

-- Location: LABCELL_X56_Y4_N33
\Decodificador|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador|saida~2_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~5_combout\ & (\Decodificador|saida[1]~0_combout\ & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \Decodificador|ALT_INV_saida[1]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \Decodificador|saida~2_combout\);

-- Location: LABCELL_X55_Y3_N9
\MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[6]~6_combout\ = ( \RAM1|ram~161_combout\ & ( \Decodificador|saida~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Decodificador|ALT_INV_saida~8_combout\,
	dataf => \RAM1|ALT_INV_ram~161_combout\,
	combout => \MUX1|saida_MUX[6]~6_combout\);

-- Location: LABCELL_X55_Y3_N6
\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = ( \ULA1|Add1~25_sumout\ & ( (!\Decodificador|saida[4]~1_combout\) # (\MUX1|saida_MUX[6]~6_combout\) ) ) # ( !\ULA1|Add1~25_sumout\ & ( (\MUX1|saida_MUX[6]~6_combout\ & \Decodificador|saida[4]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX1|ALT_INV_saida_MUX[6]~6_combout\,
	datac => \Decodificador|ALT_INV_saida[4]~1_combout\,
	dataf => \ULA1|ALT_INV_Add1~25_sumout\,
	combout => \ULA1|saida[6]~6_combout\);

-- Location: FF_X55_Y3_N8
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[6]~6_combout\,
	ena => \Decodificador|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: FF_X55_Y3_N59
\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

-- Location: FF_X55_Y3_N7
\REGA|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[6]~6_combout\,
	ena => \Decodificador|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[6]~DUPLICATE_q\);

-- Location: FF_X56_Y3_N58
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: LABCELL_X55_Y3_N51
\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( \ROM1|memROM~9_combout\ & ( (\RAM1|ram~39_q\ & !\ROM1|memROM~7_combout\) ) ) # ( !\ROM1|memROM~9_combout\ & ( (\RAM1|ram~23_q\ & !\ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~39_q\,
	datac => \RAM1|ALT_INV_ram~23_q\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM1|ram~160_combout\);

-- Location: LABCELL_X55_Y3_N42
\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( \RAM1|ram~160_combout\ & ( (!\ROM1|memROM~11_combout\ & \ROM1|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \RAM1|ALT_INV_ram~160_combout\,
	combout => \RAM1|ram~161_combout\);

-- Location: LABCELL_X56_Y3_N39
\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( (!\RAM1|ram~161_combout\) # ((\Decodificador|Equal5~1_combout\ & ((\ROM1|memROM~17_combout\) # (\PC|DOUT\(8))))) ) + ( \REGA|DOUT[6]~DUPLICATE_q\ ) + ( \ULA1|Add1~22\ ))
-- \ULA1|Add1~26\ = CARRY(( (!\RAM1|ram~161_combout\) # ((\Decodificador|Equal5~1_combout\ & ((\ROM1|memROM~17_combout\) # (\PC|DOUT\(8))))) ) + ( \REGA|DOUT[6]~DUPLICATE_q\ ) + ( \ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decodificador|ALT_INV_Equal5~1_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \RAM1|ALT_INV_ram~161_combout\,
	datad => \ROM1|ALT_INV_memROM~17_combout\,
	dataf => \REGA|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \ULA1|Add1~22\,
	sumout => \ULA1|Add1~25_sumout\,
	cout => \ULA1|Add1~26\);

-- Location: LABCELL_X56_Y3_N6
\HAB_FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HAB_FLAG|DOUT~1_combout\ = ( \ULA1|Add1~9_sumout\ & ( \ULA1|Add1~13_sumout\ & ( (\HAB_FLAG|DOUT~q\ & !\Decodificador|saida~2_combout\) ) ) ) # ( !\ULA1|Add1~9_sumout\ & ( \ULA1|Add1~13_sumout\ & ( (\HAB_FLAG|DOUT~q\ & !\Decodificador|saida~2_combout\) ) 
-- ) ) # ( \ULA1|Add1~9_sumout\ & ( !\ULA1|Add1~13_sumout\ & ( (\HAB_FLAG|DOUT~q\ & !\Decodificador|saida~2_combout\) ) ) ) # ( !\ULA1|Add1~9_sumout\ & ( !\ULA1|Add1~13_sumout\ & ( (!\Decodificador|saida~2_combout\ & (((\HAB_FLAG|DOUT~q\)))) # 
-- (\Decodificador|saida~2_combout\ & (!\ULA1|Add1~1_sumout\ & ((!\ULA1|Add1~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110100000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~1_sumout\,
	datab => \HAB_FLAG|ALT_INV_DOUT~q\,
	datac => \ULA1|ALT_INV_Add1~5_sumout\,
	datad => \Decodificador|ALT_INV_saida~2_combout\,
	datae => \ULA1|ALT_INV_Add1~9_sumout\,
	dataf => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \HAB_FLAG|DOUT~1_combout\);

-- Location: LABCELL_X55_Y3_N33
\MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~7_combout\ = ( \RAM1|ram~164_combout\ & ( \Decodificador|saida~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Decodificador|ALT_INV_saida~8_combout\,
	dataf => \RAM1|ALT_INV_ram~164_combout\,
	combout => \MUX1|saida_MUX[7]~7_combout\);

-- Location: LABCELL_X55_Y3_N30
\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = ( \ULA1|Add1~29_sumout\ & ( (!\Decodificador|saida[4]~1_combout\) # (\MUX1|saida_MUX[7]~7_combout\) ) ) # ( !\ULA1|Add1~29_sumout\ & ( (\Decodificador|saida[4]~1_combout\ & \MUX1|saida_MUX[7]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decodificador|ALT_INV_saida[4]~1_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[7]~7_combout\,
	dataf => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

-- Location: FF_X55_Y3_N31
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[7]~7_combout\,
	ena => \Decodificador|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: FF_X56_Y2_N14
\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~166_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

-- Location: LABCELL_X56_Y2_N12
\RAM1|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~162_combout\ = ( !\ROM1|memROM~11_combout\ & ( (\ROM1|memROM~13_combout\ & \RAM1|ram~40_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \RAM1|ALT_INV_ram~40_q\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~162_combout\);

-- Location: FF_X56_Y2_N53
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: LABCELL_X56_Y2_N51
\RAM1|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~163_combout\ = ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~11_combout\ & \RAM1|ram~24_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \RAM1|ALT_INV_ram~24_q\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \RAM1|ram~163_combout\);

-- Location: LABCELL_X56_Y2_N24
\RAM1|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~164_combout\ = ( \ROM1|memROM~9_combout\ & ( \RAM1|ram~163_combout\ & ( (!\ROM1|memROM~7_combout\ & \RAM1|ram~162_combout\) ) ) ) # ( !\ROM1|memROM~9_combout\ & ( \RAM1|ram~163_combout\ & ( !\ROM1|memROM~7_combout\ ) ) ) # ( 
-- \ROM1|memROM~9_combout\ & ( !\RAM1|ram~163_combout\ & ( (!\ROM1|memROM~7_combout\ & \RAM1|ram~162_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000011110000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_ram~162_combout\,
	datae => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \RAM1|ALT_INV_ram~163_combout\,
	combout => \RAM1|ram~164_combout\);

-- Location: LABCELL_X56_Y3_N42
\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( (!\RAM1|ram~164_combout\) # ((\Decodificador|Equal5~1_combout\ & ((\ROM1|memROM~17_combout\) # (\PC|DOUT\(8))))) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decodificador|ALT_INV_Equal5~1_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM1|ALT_INV_ram~164_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\);

-- Location: LABCELL_X56_Y3_N0
\HAB_FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HAB_FLAG|DOUT~0_combout\ = ( \HAB_FLAG|DOUT~1_combout\ & ( \ULA1|Add1~29_sumout\ & ( !\Decodificador|saida~2_combout\ ) ) ) # ( \HAB_FLAG|DOUT~1_combout\ & ( !\ULA1|Add1~29_sumout\ & ( (!\Decodificador|saida~2_combout\) # ((!\ULA1|Add1~21_sumout\ & 
-- (!\ULA1|Add1~17_sumout\ & !\ULA1|Add1~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~21_sumout\,
	datab => \Decodificador|ALT_INV_saida~2_combout\,
	datac => \ULA1|ALT_INV_Add1~17_sumout\,
	datad => \ULA1|ALT_INV_Add1~25_sumout\,
	datae => \HAB_FLAG|ALT_INV_DOUT~1_combout\,
	dataf => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \HAB_FLAG|DOUT~0_combout\);

-- Location: FF_X56_Y3_N1
\HAB_FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \HAB_FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HAB_FLAG|DOUT~q\);

-- Location: LABCELL_X56_Y4_N30
\Decodificador|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador|saida~5_combout\ = ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~5_combout\ & (\Decodificador|saida[1]~0_combout\ & !\ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \Decodificador|ALT_INV_saida[1]~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \Decodificador|saida~5_combout\);

-- Location: LABCELL_X56_Y4_N57
\MUX2|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[4]~4_combout\ = ( \Decodificador|saida~5_combout\ & ( (!\HAB_FLAG|DOUT~q\ & (!\Decodificador|saida~6_combout\ & !\Decodificador|Equal4~0_combout\)) ) ) # ( !\Decodificador|saida~5_combout\ & ( (!\Decodificador|saida~6_combout\ & 
-- !\Decodificador|Equal4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HAB_FLAG|ALT_INV_DOUT~q\,
	datac => \Decodificador|ALT_INV_saida~6_combout\,
	datad => \Decodificador|ALT_INV_Equal4~0_combout\,
	dataf => \Decodificador|ALT_INV_saida~5_combout\,
	combout => \MUX2|saida_MUX[4]~4_combout\);

-- Location: LABCELL_X57_Y4_N51
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

-- Location: FF_X57_Y4_N53
\REG_Retorno|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	ena => \Decodificador|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_Retorno|DOUT\(7));

-- Location: LABCELL_X57_Y4_N0
\MUX2|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[7]~8_combout\ = ( \Decodificador|saida~7_combout\ & ( (\MUX2|saida_MUX[4]~4_combout\ & \REG_Retorno|DOUT\(7)) ) ) # ( !\Decodificador|saida~7_combout\ & ( (\MUX2|saida_MUX[4]~4_combout\ & \incrementaPC|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX2|ALT_INV_saida_MUX[4]~4_combout\,
	datac => \REG_Retorno|ALT_INV_DOUT\(7),
	datad => \incrementaPC|ALT_INV_Add0~29_sumout\,
	dataf => \Decodificador|ALT_INV_saida~7_combout\,
	combout => \MUX2|saida_MUX[7]~8_combout\);

-- Location: FF_X57_Y4_N2
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X57_Y4_N24
\Decodificador|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador|saida[1]~0_combout\ = ( !\PC|DOUT[6]~DUPLICATE_q\ & ( !\PC|DOUT\(8) & ( (!\PC|DOUT[7]~DUPLICATE_q\ & (!\PC|DOUT[4]~DUPLICATE_q\ & !\PC|DOUT\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(8),
	combout => \Decodificador|saida[1]~0_combout\);

-- Location: LABCELL_X56_Y2_N9
\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( \PC|DOUT\(2) & ( \Decodificador|saida[1]~0_combout\ & ( (!\PC|DOUT\(3) & \PC|DOUT\(1)) ) ) ) # ( !\PC|DOUT\(2) & ( \Decodificador|saida[1]~0_combout\ & ( (\PC|DOUT\(0) & (\PC|DOUT\(3) & \PC|DOUT\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(1),
	datae => \PC|ALT_INV_DOUT\(2),
	dataf => \Decodificador|ALT_INV_saida[1]~0_combout\,
	combout => \RAM1|process_0~0_combout\);

-- Location: LABCELL_X57_Y4_N54
\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\);

-- Location: FF_X57_Y4_N55
\REG_Retorno|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~33_sumout\,
	ena => \Decodificador|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_Retorno|DOUT\(8));

-- Location: LABCELL_X57_Y3_N36
\MUX2|saida_MUX[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[8]~9_combout\ = ( \incrementaPC|Add0~33_sumout\ & ( (!\PC|DOUT[8]~1_combout\ & (((!\PC|DOUT[8]~0_combout\) # (\REG_Retorno|DOUT\(8))))) # (\PC|DOUT[8]~1_combout\ & (\RAM1|process_0~0_combout\ & ((!\PC|DOUT[8]~0_combout\)))) ) ) # ( 
-- !\incrementaPC|Add0~33_sumout\ & ( (!\PC|DOUT[8]~1_combout\ & (((\REG_Retorno|DOUT\(8) & \PC|DOUT[8]~0_combout\)))) # (\PC|DOUT[8]~1_combout\ & (\RAM1|process_0~0_combout\ & ((!\PC|DOUT[8]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011000011110101001100001111010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~0_combout\,
	datab => \REG_Retorno|ALT_INV_DOUT\(8),
	datac => \PC|ALT_INV_DOUT[8]~1_combout\,
	datad => \PC|ALT_INV_DOUT[8]~0_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \MUX2|saida_MUX[8]~9_combout\);

-- Location: FF_X57_Y3_N38
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: LABCELL_X57_Y3_N3
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \ROM1|memROM~3_combout\ & ( (!\ROM1|memROM~12_combout\) # (\PC|DOUT\(8)) ) ) # ( !\ROM1|memROM~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X57_Y3_N18
\MUX2|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[3]~3_combout\ = ( \ROM1|memROM~13_combout\ & ( (!\PC|DOUT[8]~1_combout\ & ((!\PC|DOUT[8]~0_combout\ & (\incrementaPC|Add0~13_sumout\)) # (\PC|DOUT[8]~0_combout\ & ((\REG_Retorno|DOUT\(3)))))) ) ) # ( !\ROM1|memROM~13_combout\ & ( 
-- (!\PC|DOUT[8]~1_combout\ & ((!\PC|DOUT[8]~0_combout\ & (\incrementaPC|Add0~13_sumout\)) # (\PC|DOUT[8]~0_combout\ & ((\REG_Retorno|DOUT\(3)))))) # (\PC|DOUT[8]~1_combout\ & (!\PC|DOUT[8]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001101110010011000110111000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~1_combout\,
	datab => \PC|ALT_INV_DOUT[8]~0_combout\,
	datac => \incrementaPC|ALT_INV_Add0~13_sumout\,
	datad => \REG_Retorno|ALT_INV_DOUT\(3),
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \MUX2|saida_MUX[3]~3_combout\);

-- Location: FF_X57_Y3_N19
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y4_N3
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT[1]~DUPLICATE_q\) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( (!\PC|DOUT[3]~DUPLICATE_q\ & (!\PC|DOUT[0]~DUPLICATE_q\ & !\PC|DOUT[1]~DUPLICATE_q\)) # 
-- (\PC|DOUT[3]~DUPLICATE_q\ & (\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000101101000000000010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X56_Y4_N27
\Decodificador|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador|Equal4~0_combout\ = ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~0_combout\ & \Decodificador|saida[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \Decodificador|ALT_INV_saida[1]~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \Decodificador|Equal4~0_combout\);

-- Location: LABCELL_X56_Y4_N42
\PC|DOUT[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[8]~0_combout\ = (!\Decodificador|Equal4~0_combout\ & \Decodificador|saida~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Decodificador|ALT_INV_Equal4~0_combout\,
	datad => \Decodificador|ALT_INV_saida~7_combout\,
	combout => \PC|DOUT[8]~0_combout\);

-- Location: FF_X57_Y4_N35
\REG_Retorno|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	ena => \Decodificador|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_Retorno|DOUT\(1));

-- Location: LABCELL_X57_Y3_N21
\MUX2|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[1]~1_combout\ = ( \ROM1|memROM~9_combout\ & ( (!\PC|DOUT[8]~1_combout\ & ((!\PC|DOUT[8]~0_combout\ & ((\incrementaPC|Add0~5_sumout\))) # (\PC|DOUT[8]~0_combout\ & (\REG_Retorno|DOUT\(1))))) # (\PC|DOUT[8]~1_combout\ & 
-- (!\PC|DOUT[8]~0_combout\)) ) ) # ( !\ROM1|memROM~9_combout\ & ( (!\PC|DOUT[8]~1_combout\ & ((!\PC|DOUT[8]~0_combout\ & ((\incrementaPC|Add0~5_sumout\))) # (\PC|DOUT[8]~0_combout\ & (\REG_Retorno|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~1_combout\,
	datab => \PC|ALT_INV_DOUT[8]~0_combout\,
	datac => \REG_Retorno|ALT_INV_DOUT\(1),
	datad => \incrementaPC|ALT_INV_Add0~5_sumout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \MUX2|saida_MUX[1]~1_combout\);

-- Location: FF_X57_Y3_N23
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y4_N39
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT[0]~DUPLICATE_q\)) # (\PC|DOUT[2]~DUPLICATE_q\ & ((!\PC|DOUT[1]~DUPLICATE_q\))) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( !\PC|DOUT[0]~DUPLICATE_q\ $ 
-- (!\PC|DOUT[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001111110000001100111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X56_Y4_N48
\PC|DOUT[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[8]~1_combout\ = ( \Decodificador|saida[1]~0_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~0_combout\ & !\ROM1|memROM~4_combout\)) ) ) ) # ( \Decodificador|saida[1]~0_combout\ & ( !\ROM1|memROM~1_combout\ & ( 
-- (\ROM1|memROM~5_combout\ & (\ROM1|memROM~0_combout\ & ((\ROM1|memROM~4_combout\) # (\HAB_FLAG|DOUT~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010001000100000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \HAB_FLAG|ALT_INV_DOUT~q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \Decodificador|ALT_INV_saida[1]~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \PC|DOUT[8]~1_combout\);

-- Location: FF_X57_Y4_N37
\REG_Retorno|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	ena => \Decodificador|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_Retorno|DOUT\(2));

-- Location: LABCELL_X57_Y3_N9
\MUX2|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[2]~2_combout\ = ( \PC|DOUT[8]~0_combout\ & ( (!\PC|DOUT[8]~1_combout\ & \REG_Retorno|DOUT\(2)) ) ) # ( !\PC|DOUT[8]~0_combout\ & ( (!\PC|DOUT[8]~1_combout\ & ((\incrementaPC|Add0~9_sumout\))) # (\PC|DOUT[8]~1_combout\ & 
-- (\ROM1|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~1_combout\,
	datab => \REG_Retorno|ALT_INV_DOUT\(2),
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \incrementaPC|ALT_INV_Add0~9_sumout\,
	dataf => \PC|ALT_INV_DOUT[8]~0_combout\,
	combout => \MUX2|saida_MUX[2]~2_combout\);

-- Location: FF_X57_Y3_N11
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y4_N36
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT[0]~DUPLICATE_q\ & ((!\PC|DOUT[1]~DUPLICATE_q\))) # (\PC|DOUT[0]~DUPLICATE_q\ & (\PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & 
-- (!\PC|DOUT[0]~DUPLICATE_q\ $ (!\PC|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000011001111000000111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X56_Y4_N18
\Decodificador|saida~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador|saida~6_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\PC|DOUT\(8) & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \Decodificador|saida~6_combout\);

-- Location: FF_X57_Y4_N31
\REG_Retorno|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	ena => \Decodificador|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_Retorno|DOUT\(0));

-- Location: LABCELL_X57_Y3_N12
\MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[0]~0_combout\ = ( \PC|DOUT[8]~1_combout\ & ( (!\PC|DOUT[8]~0_combout\ & \ROM1|memROM~7_combout\) ) ) # ( !\PC|DOUT[8]~1_combout\ & ( (!\PC|DOUT[8]~0_combout\ & ((\incrementaPC|Add0~1_sumout\))) # (\PC|DOUT[8]~0_combout\ & 
-- (\REG_Retorno|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_Retorno|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT[8]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \incrementaPC|ALT_INV_Add0~1_sumout\,
	dataf => \PC|ALT_INV_DOUT[8]~1_combout\,
	combout => \MUX2|saida_MUX[0]~0_combout\);

-- Location: FF_X57_Y3_N14
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: FF_X57_Y4_N13
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: FF_X57_Y4_N1
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUX2|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: LABCELL_X56_Y2_N48
\Decodificador|saida[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decodificador|saida[6]~4_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\) # ((!\Decodificador|saida[1]~0_combout\) # ((\ROM1|memROM~5_combout\) # (\ROM1|memROM~1_combout\))) ) ) # ( !\ROM1|memROM~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111101111111111111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \Decodificador|ALT_INV_saida[1]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \Decodificador|saida[6]~4_combout\);

-- Location: IOIBUF_X34_Y81_N75
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X78_Y81_N1
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X78_Y81_N35
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X36_Y81_N18
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X82_Y81_N92
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X78_Y81_N18
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X52_Y81_N18
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X68_Y81_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X88_Y51_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


