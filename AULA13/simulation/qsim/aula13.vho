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

-- DATE "04/26/2024 00:55:53"

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

ENTITY 	top_level IS
    PORT (
	CLOCK_50 : IN std_logic;
	Write_Rd : IN std_logic;
	Sel_ULA : IN std_logic_vector(1 DOWNTO 0);
	opcode : BUFFER std_logic_vector(5 DOWNTO 0);
	Funct : BUFFER std_logic_vector(5 DOWNTO 0);
	saida_ULA : BUFFER std_logic_vector(31 DOWNTO 0);
	RS_OUT : BUFFER std_logic_vector(31 DOWNTO 0);
	RT_OUT : BUFFER std_logic_vector(31 DOWNTO 0);
	Rs_End : BUFFER std_logic_vector(4 DOWNTO 0);
	Rt_End : BUFFER std_logic_vector(4 DOWNTO 0);
	Rd_End : BUFFER std_logic_vector(4 DOWNTO 0);
	PC_OUT : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- opcode[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[4]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[2]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[4]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Funct[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[4]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[5]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[7]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[8]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[9]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[10]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[11]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[12]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[13]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[14]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[15]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[16]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[17]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[18]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[19]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[20]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[21]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[22]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[23]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[24]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[25]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[26]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[27]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[28]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[29]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[30]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[31]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[0]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[2]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[3]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[4]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[5]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[6]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[8]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[9]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[10]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[11]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[12]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[13]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[14]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[15]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[16]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[17]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[18]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[19]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[20]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[21]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[22]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[23]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[24]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[25]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[26]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[27]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[28]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[29]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[30]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[31]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[3]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[4]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[6]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[8]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[9]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[10]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[11]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[12]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[13]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[14]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[15]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[16]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[17]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[18]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[19]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[20]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[21]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[22]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[23]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[24]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[25]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[26]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[27]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[28]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[29]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[30]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[31]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[3]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rs_End[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[0]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[1]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rt_End[4]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rd_End[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rd_End[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rd_End[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rd_End[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rd_End[4]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[9]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[10]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[11]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[12]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[13]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[14]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[15]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[16]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[17]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[18]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[19]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[20]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[21]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[22]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[23]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[24]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[25]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[26]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[27]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[28]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[29]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[30]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[31]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel_ULA[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel_ULA[1]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write_Rd	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
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
SIGNAL ww_Write_Rd : std_logic;
SIGNAL ww_Sel_ULA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Funct : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_saida_ULA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RS_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RT_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Rs_End : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Rt_End : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Rd_End : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL \Sel_ULA[0]~input_o\ : std_logic;
SIGNAL \Sel_ULA[1]~input_o\ : std_logic;
SIGNAL \Write_Rd~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~17_sumout\ : std_logic;
SIGNAL \Somador|Add0~18\ : std_logic;
SIGNAL \Somador|Add0~13_sumout\ : std_logic;
SIGNAL \Somador|Add0~14\ : std_logic;
SIGNAL \Somador|Add0~9_sumout\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~10\ : std_logic;
SIGNAL \Somador|Add0~5_sumout\ : std_logic;
SIGNAL \Somador|Add0~6\ : std_logic;
SIGNAL \Somador|Add0~1_sumout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \Somador|Add0~2\ : std_logic;
SIGNAL \Somador|Add0~21_sumout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~22\ : std_logic;
SIGNAL \Somador|Add0~25_sumout\ : std_logic;
SIGNAL \Somador|Add0~26\ : std_logic;
SIGNAL \Somador|Add0~29_sumout\ : std_logic;
SIGNAL \Somador|Add0~30\ : std_logic;
SIGNAL \Somador|Add0~33_sumout\ : std_logic;
SIGNAL \Somador|Add0~34\ : std_logic;
SIGNAL \Somador|Add0~37_sumout\ : std_logic;
SIGNAL \PC|DOUT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~38\ : std_logic;
SIGNAL \Somador|Add0~41_sumout\ : std_logic;
SIGNAL \PC|DOUT[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~42\ : std_logic;
SIGNAL \Somador|Add0~45_sumout\ : std_logic;
SIGNAL \Somador|Add0~46\ : std_logic;
SIGNAL \Somador|Add0~49_sumout\ : std_logic;
SIGNAL \PC|DOUT[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~50\ : std_logic;
SIGNAL \Somador|Add0~53_sumout\ : std_logic;
SIGNAL \PC|DOUT[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~54\ : std_logic;
SIGNAL \Somador|Add0~57_sumout\ : std_logic;
SIGNAL \Somador|Add0~58\ : std_logic;
SIGNAL \Somador|Add0~61_sumout\ : std_logic;
SIGNAL \PC|DOUT[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~62\ : std_logic;
SIGNAL \Somador|Add0~65_sumout\ : std_logic;
SIGNAL \Somador|Add0~66\ : std_logic;
SIGNAL \Somador|Add0~69_sumout\ : std_logic;
SIGNAL \PC|DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~70\ : std_logic;
SIGNAL \Somador|Add0~73_sumout\ : std_logic;
SIGNAL \Somador|Add0~74\ : std_logic;
SIGNAL \Somador|Add0~77_sumout\ : std_logic;
SIGNAL \Somador|Add0~78\ : std_logic;
SIGNAL \Somador|Add0~81_sumout\ : std_logic;
SIGNAL \PC|DOUT[24]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~82\ : std_logic;
SIGNAL \Somador|Add0~85_sumout\ : std_logic;
SIGNAL \Somador|Add0~86\ : std_logic;
SIGNAL \Somador|Add0~89_sumout\ : std_logic;
SIGNAL \PC|DOUT[26]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~90\ : std_logic;
SIGNAL \Somador|Add0~93_sumout\ : std_logic;
SIGNAL \Somador|Add0~94\ : std_logic;
SIGNAL \Somador|Add0~97_sumout\ : std_logic;
SIGNAL \Somador|Add0~98\ : std_logic;
SIGNAL \Somador|Add0~101_sumout\ : std_logic;
SIGNAL \Somador|Add0~102\ : std_logic;
SIGNAL \Somador|Add0~105_sumout\ : std_logic;
SIGNAL \Somador|Add0~106\ : std_logic;
SIGNAL \Somador|Add0~109_sumout\ : std_logic;
SIGNAL \Somador|Add0~110\ : std_logic;
SIGNAL \Somador|Add0~113_sumout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT[26]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[24]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[19]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[17]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[16]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[14]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_Write_Rd <= Write_Rd;
ww_Sel_ULA <= Sel_ULA;
opcode <= ww_opcode;
Funct <= ww_Funct;
saida_ULA <= ww_saida_ULA;
RS_OUT <= ww_RS_OUT;
RT_OUT <= ww_RT_OUT;
Rs_End <= ww_Rs_End;
Rt_End <= ww_Rt_End;
Rd_End <= ww_Rd_End;
PC_OUT <= ww_PC_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\PC|ALT_INV_DOUT[26]~DUPLICATE_q\ <= NOT \PC|DOUT[26]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[24]~DUPLICATE_q\ <= NOT \PC|DOUT[24]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[21]~DUPLICATE_q\ <= NOT \PC|DOUT[21]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[19]~DUPLICATE_q\ <= NOT \PC|DOUT[19]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[17]~DUPLICATE_q\ <= NOT \PC|DOUT[17]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[16]~DUPLICATE_q\ <= NOT \PC|DOUT[16]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[14]~DUPLICATE_q\ <= NOT \PC|DOUT[14]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[13]~DUPLICATE_q\ <= NOT \PC|DOUT[13]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC|DOUT[5]~DUPLICATE_q\;
\PC|ALT_INV_DOUT\(31) <= NOT \PC|DOUT\(31);
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\PC|ALT_INV_DOUT\(29) <= NOT \PC|DOUT\(29);
\PC|ALT_INV_DOUT\(28) <= NOT \PC|DOUT\(28);
\PC|ALT_INV_DOUT\(27) <= NOT \PC|DOUT\(27);
\PC|ALT_INV_DOUT\(25) <= NOT \PC|DOUT\(25);
\PC|ALT_INV_DOUT\(23) <= NOT \PC|DOUT\(23);
\PC|ALT_INV_DOUT\(22) <= NOT \PC|DOUT\(22);
\PC|ALT_INV_DOUT\(20) <= NOT \PC|DOUT\(20);
\PC|ALT_INV_DOUT\(18) <= NOT \PC|DOUT\(18);
\PC|ALT_INV_DOUT\(15) <= NOT \PC|DOUT\(15);
\PC|ALT_INV_DOUT\(12) <= NOT \PC|DOUT\(12);
\PC|ALT_INV_DOUT\(11) <= NOT \PC|DOUT\(11);
\PC|ALT_INV_DOUT\(10) <= NOT \PC|DOUT\(10);
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);

-- Location: IOOBUF_X60_Y81_N53
\opcode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_opcode(0));

-- Location: IOOBUF_X38_Y81_N53
\opcode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_opcode(1));

-- Location: IOOBUF_X26_Y81_N93
\opcode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_opcode(2));

-- Location: IOOBUF_X89_Y4_N45
\opcode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_opcode(3));

-- Location: IOOBUF_X34_Y81_N93
\opcode[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_opcode(4));

-- Location: IOOBUF_X60_Y81_N19
\opcode[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_opcode(5));

-- Location: IOOBUF_X52_Y0_N36
\Funct[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_Funct(0));

-- Location: IOOBUF_X50_Y0_N93
\Funct[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Funct(1));

-- Location: IOOBUF_X72_Y0_N19
\Funct[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Funct(2));

-- Location: IOOBUF_X2_Y0_N42
\Funct[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Funct(3));

-- Location: IOOBUF_X89_Y35_N45
\Funct[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Funct(4));

-- Location: IOOBUF_X32_Y0_N53
\Funct[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Funct(5));

-- Location: IOOBUF_X66_Y81_N59
\saida_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(0));

-- Location: IOOBUF_X89_Y37_N39
\saida_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(1));

-- Location: IOOBUF_X36_Y0_N53
\saida_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(2));

-- Location: IOOBUF_X40_Y0_N2
\saida_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(3));

-- Location: IOOBUF_X36_Y0_N19
\saida_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(4));

-- Location: IOOBUF_X4_Y0_N36
\saida_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(5));

-- Location: IOOBUF_X38_Y81_N36
\saida_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(6));

-- Location: IOOBUF_X58_Y81_N42
\saida_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(7));

-- Location: IOOBUF_X84_Y81_N36
\saida_ULA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(8));

-- Location: IOOBUF_X74_Y81_N76
\saida_ULA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(9));

-- Location: IOOBUF_X68_Y0_N36
\saida_ULA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(10));

-- Location: IOOBUF_X66_Y81_N93
\saida_ULA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(11));

-- Location: IOOBUF_X66_Y0_N76
\saida_ULA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(12));

-- Location: IOOBUF_X72_Y81_N36
\saida_ULA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(13));

-- Location: IOOBUF_X54_Y81_N53
\saida_ULA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(14));

-- Location: IOOBUF_X89_Y4_N62
\saida_ULA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(15));

-- Location: IOOBUF_X68_Y0_N53
\saida_ULA[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(16));

-- Location: IOOBUF_X89_Y38_N5
\saida_ULA[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(17));

-- Location: IOOBUF_X52_Y81_N2
\saida_ULA[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(18));

-- Location: IOOBUF_X40_Y0_N36
\saida_ULA[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(19));

-- Location: IOOBUF_X32_Y0_N36
\saida_ULA[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(20));

-- Location: IOOBUF_X89_Y6_N39
\saida_ULA[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(21));

-- Location: IOOBUF_X89_Y38_N39
\saida_ULA[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(22));

-- Location: IOOBUF_X4_Y0_N2
\saida_ULA[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(23));

-- Location: IOOBUF_X72_Y81_N2
\saida_ULA[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(24));

-- Location: IOOBUF_X89_Y35_N96
\saida_ULA[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(25));

-- Location: IOOBUF_X89_Y37_N56
\saida_ULA[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(26));

-- Location: IOOBUF_X89_Y6_N5
\saida_ULA[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(27));

-- Location: IOOBUF_X64_Y81_N53
\saida_ULA[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(28));

-- Location: IOOBUF_X56_Y81_N2
\saida_ULA[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(29));

-- Location: IOOBUF_X40_Y81_N53
\saida_ULA[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(30));

-- Location: IOOBUF_X89_Y9_N5
\saida_ULA[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_ULA(31));

-- Location: IOOBUF_X72_Y81_N19
\RS_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(0));

-- Location: IOOBUF_X32_Y81_N36
\RS_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(1));

-- Location: IOOBUF_X56_Y81_N36
\RS_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(2));

-- Location: IOOBUF_X28_Y81_N36
\RS_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(3));

-- Location: IOOBUF_X89_Y8_N39
\RS_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(4));

-- Location: IOOBUF_X89_Y36_N39
\RS_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(5));

-- Location: IOOBUF_X78_Y81_N19
\RS_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(6));

-- Location: IOOBUF_X26_Y0_N59
\RS_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(7));

-- Location: IOOBUF_X89_Y36_N5
\RS_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(8));

-- Location: IOOBUF_X54_Y81_N19
\RS_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(9));

-- Location: IOOBUF_X60_Y81_N36
\RS_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(10));

-- Location: IOOBUF_X50_Y81_N42
\RS_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(11));

-- Location: IOOBUF_X78_Y81_N53
\RS_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(12));

-- Location: IOOBUF_X40_Y81_N36
\RS_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(13));

-- Location: IOOBUF_X36_Y0_N2
\RS_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(14));

-- Location: IOOBUF_X60_Y81_N2
\RS_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(15));

-- Location: IOOBUF_X8_Y0_N36
\RS_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(16));

-- Location: IOOBUF_X89_Y36_N22
\RS_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(17));

-- Location: IOOBUF_X4_Y0_N53
\RS_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(18));

-- Location: IOOBUF_X38_Y0_N19
\RS_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(19));

-- Location: IOOBUF_X72_Y0_N53
\RS_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(20));

-- Location: IOOBUF_X34_Y0_N76
\RS_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(21));

-- Location: IOOBUF_X40_Y81_N2
\RS_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(22));

-- Location: IOOBUF_X50_Y81_N59
\RS_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(23));

-- Location: IOOBUF_X38_Y81_N2
\RS_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(24));

-- Location: IOOBUF_X66_Y0_N59
\RS_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(25));

-- Location: IOOBUF_X38_Y81_N19
\RS_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(26));

-- Location: IOOBUF_X26_Y81_N76
\RS_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(27));

-- Location: IOOBUF_X56_Y81_N19
\RS_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(28));

-- Location: IOOBUF_X6_Y0_N36
\RS_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(29));

-- Location: IOOBUF_X2_Y0_N93
\RS_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(30));

-- Location: IOOBUF_X78_Y81_N2
\RS_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(31));

-- Location: IOOBUF_X58_Y81_N59
\RT_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(0));

-- Location: IOOBUF_X80_Y81_N36
\RT_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(1));

-- Location: IOOBUF_X28_Y81_N19
\RT_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(2));

-- Location: IOOBUF_X89_Y4_N79
\RT_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(3));

-- Location: IOOBUF_X89_Y9_N39
\RT_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(4));

-- Location: IOOBUF_X54_Y81_N36
\RT_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(5));

-- Location: IOOBUF_X36_Y0_N36
\RT_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(6));

-- Location: IOOBUF_X6_Y0_N53
\RT_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(7));

-- Location: IOOBUF_X89_Y8_N56
\RT_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(8));

-- Location: IOOBUF_X64_Y81_N36
\RT_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(9));

-- Location: IOOBUF_X36_Y81_N53
\RT_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(10));

-- Location: IOOBUF_X80_Y81_N19
\RT_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(11));

-- Location: IOOBUF_X86_Y81_N19
\RT_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(12));

-- Location: IOOBUF_X34_Y81_N42
\RT_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(13));

-- Location: IOOBUF_X40_Y0_N53
\RT_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(14));

-- Location: IOOBUF_X52_Y81_N36
\RT_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(15));

-- Location: IOOBUF_X54_Y81_N2
\RT_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(16));

-- Location: IOOBUF_X68_Y81_N19
\RT_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(17));

-- Location: IOOBUF_X76_Y81_N36
\RT_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(18));

-- Location: IOOBUF_X78_Y81_N36
\RT_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(19));

-- Location: IOOBUF_X89_Y37_N22
\RT_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(20));

-- Location: IOOBUF_X66_Y81_N76
\RT_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(21));

-- Location: IOOBUF_X36_Y81_N2
\RT_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(22));

-- Location: IOOBUF_X80_Y81_N53
\RT_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(23));

-- Location: IOOBUF_X70_Y81_N2
\RT_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(24));

-- Location: IOOBUF_X8_Y0_N53
\RT_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(25));

-- Location: IOOBUF_X70_Y0_N19
\RT_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(26));

-- Location: IOOBUF_X89_Y8_N22
\RT_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(27));

-- Location: IOOBUF_X30_Y0_N36
\RT_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(28));

-- Location: IOOBUF_X72_Y81_N53
\RT_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(29));

-- Location: IOOBUF_X2_Y0_N59
\RT_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(30));

-- Location: IOOBUF_X26_Y0_N42
\RT_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(31));

-- Location: IOOBUF_X34_Y0_N93
\Rs_End[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_End(0));

-- Location: IOOBUF_X28_Y0_N36
\Rs_End[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_End(1));

-- Location: IOOBUF_X62_Y81_N2
\Rs_End[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_End(2));

-- Location: IOOBUF_X2_Y0_N76
\Rs_End[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_End(3));

-- Location: IOOBUF_X30_Y81_N53
\Rs_End[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rs_End(4));

-- Location: IOOBUF_X52_Y81_N19
\Rt_End[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_End(0));

-- Location: IOOBUF_X36_Y81_N19
\Rt_End[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_End(1));

-- Location: IOOBUF_X62_Y81_N53
\Rt_End[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_End(2));

-- Location: IOOBUF_X76_Y81_N19
\Rt_End[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_End(3));

-- Location: IOOBUF_X84_Y81_N19
\Rt_End[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rt_End(4));

-- Location: IOOBUF_X32_Y0_N19
\Rd_End[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rd_End(0));

-- Location: IOOBUF_X89_Y9_N56
\Rd_End[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rd_End(1));

-- Location: IOOBUF_X72_Y0_N36
\Rd_End[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rd_End(2));

-- Location: IOOBUF_X62_Y81_N36
\Rd_End[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rd_End(3));

-- Location: IOOBUF_X89_Y36_N56
\Rd_End[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Rd_End(4));

-- Location: IOOBUF_X30_Y0_N2
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X74_Y81_N93
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X54_Y0_N2
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X52_Y0_N19
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X54_Y0_N19
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

-- Location: IOOBUF_X64_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: IOOBUF_X64_Y0_N36
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

-- Location: IOOBUF_X64_Y0_N53
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X66_Y0_N93
\PC_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(9),
	devoe => ww_devoe,
	o => ww_PC_OUT(9));

-- Location: IOOBUF_X50_Y0_N42
\PC_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(10),
	devoe => ww_devoe,
	o => ww_PC_OUT(10));

-- Location: IOOBUF_X66_Y0_N42
\PC_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(11),
	devoe => ww_devoe,
	o => ww_PC_OUT(11));

-- Location: IOOBUF_X52_Y0_N2
\PC_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[12]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(12));

-- Location: IOOBUF_X62_Y0_N53
\PC_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(13),
	devoe => ww_devoe,
	o => ww_PC_OUT(13));

-- Location: IOOBUF_X62_Y0_N19
\PC_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(14),
	devoe => ww_devoe,
	o => ww_PC_OUT(14));

-- Location: IOOBUF_X54_Y0_N36
\PC_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(15),
	devoe => ww_devoe,
	o => ww_PC_OUT(15));

-- Location: IOOBUF_X64_Y0_N19
\PC_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(16),
	devoe => ww_devoe,
	o => ww_PC_OUT(16));

-- Location: IOOBUF_X56_Y0_N2
\PC_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(17),
	devoe => ww_devoe,
	o => ww_PC_OUT(17));

-- Location: IOOBUF_X58_Y0_N59
\PC_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(18),
	devoe => ww_devoe,
	o => ww_PC_OUT(18));

-- Location: IOOBUF_X58_Y0_N76
\PC_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(19),
	devoe => ww_devoe,
	o => ww_PC_OUT(19));

-- Location: IOOBUF_X56_Y0_N36
\PC_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(20),
	devoe => ww_devoe,
	o => ww_PC_OUT(20));

-- Location: IOOBUF_X60_Y0_N2
\PC_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(21),
	devoe => ww_devoe,
	o => ww_PC_OUT(21));

-- Location: IOOBUF_X58_Y0_N42
\PC_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(22),
	devoe => ww_devoe,
	o => ww_PC_OUT(22));

-- Location: IOOBUF_X56_Y0_N19
\PC_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(23),
	devoe => ww_devoe,
	o => ww_PC_OUT(23));

-- Location: IOOBUF_X60_Y0_N19
\PC_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(24),
	devoe => ww_devoe,
	o => ww_PC_OUT(24));

-- Location: IOOBUF_X56_Y0_N53
\PC_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(25),
	devoe => ww_devoe,
	o => ww_PC_OUT(25));

-- Location: IOOBUF_X54_Y0_N53
\PC_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(26),
	devoe => ww_devoe,
	o => ww_PC_OUT(26));

-- Location: IOOBUF_X62_Y0_N36
\PC_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(27),
	devoe => ww_devoe,
	o => ww_PC_OUT(27));

-- Location: IOOBUF_X58_Y0_N93
\PC_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(28),
	devoe => ww_devoe,
	o => ww_PC_OUT(28));

-- Location: IOOBUF_X60_Y0_N53
\PC_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(29),
	devoe => ww_devoe,
	o => ww_PC_OUT(29));

-- Location: IOOBUF_X62_Y0_N2
\PC_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(30),
	devoe => ww_devoe,
	o => ww_PC_OUT(30));

-- Location: IOOBUF_X60_Y0_N36
\PC_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(31),
	devoe => ww_devoe,
	o => ww_PC_OUT(31));

-- Location: IOIBUF_X89_Y35_N61
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: FF_X59_Y2_N1
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \PC|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: MLABCELL_X59_Y2_N0
\PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~0_combout\ = ( !\PC|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PC|ALT_INV_DOUT\(2),
	combout => \PC|DOUT[2]~0_combout\);

-- Location: FF_X59_Y2_N2
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \PC|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y2_N30
\Somador|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~17_sumout\ = SUM(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( \PC|DOUT\(3) ) + ( !VCC ))
-- \Somador|Add0~18\ = CARRY(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( \PC|DOUT\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => GND,
	sumout => \Somador|Add0~17_sumout\,
	cout => \Somador|Add0~18\);

-- Location: FF_X59_Y2_N31
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: MLABCELL_X59_Y2_N33
\Somador|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~13_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \Somador|Add0~18\ ))
-- \Somador|Add0~14\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \Somador|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	cin => \Somador|Add0~18\,
	sumout => \Somador|Add0~13_sumout\,
	cout => \Somador|Add0~14\);

-- Location: FF_X59_Y2_N35
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: MLABCELL_X59_Y2_N36
\Somador|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~9_sumout\ = SUM(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~14\ ))
-- \Somador|Add0~10\ = CARRY(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \Somador|Add0~14\,
	sumout => \Somador|Add0~9_sumout\,
	cout => \Somador|Add0~10\);

-- Location: FF_X59_Y2_N38
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y2_N39
\Somador|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~5_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \Somador|Add0~10\ ))
-- \Somador|Add0~6\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \Somador|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(6),
	cin => \Somador|Add0~10\,
	sumout => \Somador|Add0~5_sumout\,
	cout => \Somador|Add0~6\);

-- Location: FF_X59_Y2_N41
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: MLABCELL_X59_Y2_N42
\Somador|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~1_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \Somador|Add0~6\ ))
-- \Somador|Add0~2\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \Somador|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \Somador|Add0~6\,
	sumout => \Somador|Add0~1_sumout\,
	cout => \Somador|Add0~2\);

-- Location: FF_X59_Y2_N43
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: FF_X59_Y2_N32
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y2_N6
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \PC|DOUT[5]~DUPLICATE_q\ & ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (\PC|DOUT\(4) & (\PC|DOUT\(7) & (!\PC|DOUT\(2) & \PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(6),
	datae => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: FF_X59_Y2_N37
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: FF_X59_Y2_N47
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: MLABCELL_X59_Y2_N45
\Somador|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~21_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \Somador|Add0~2\ ))
-- \Somador|Add0~22\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \Somador|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \Somador|Add0~2\,
	sumout => \Somador|Add0~21_sumout\,
	cout => \Somador|Add0~22\);

-- Location: FF_X59_Y2_N46
\PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y2_N48
\Somador|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~25_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \Somador|Add0~22\ ))
-- \Somador|Add0~26\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \Somador|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(9),
	cin => \Somador|Add0~22\,
	sumout => \Somador|Add0~25_sumout\,
	cout => \Somador|Add0~26\);

-- Location: FF_X59_Y2_N50
\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

-- Location: MLABCELL_X59_Y2_N51
\Somador|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~29_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \Somador|Add0~26\ ))
-- \Somador|Add0~30\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \Somador|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(10),
	cin => \Somador|Add0~26\,
	sumout => \Somador|Add0~29_sumout\,
	cout => \Somador|Add0~30\);

-- Location: FF_X59_Y2_N52
\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

-- Location: MLABCELL_X59_Y2_N54
\Somador|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~33_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \Somador|Add0~30\ ))
-- \Somador|Add0~34\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \Somador|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(11),
	cin => \Somador|Add0~30\,
	sumout => \Somador|Add0~33_sumout\,
	cout => \Somador|Add0~34\);

-- Location: FF_X59_Y2_N56
\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

-- Location: FF_X59_Y2_N59
\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

-- Location: MLABCELL_X59_Y2_N57
\Somador|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~37_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \Somador|Add0~34\ ))
-- \Somador|Add0~38\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \Somador|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(12),
	cin => \Somador|Add0~34\,
	sumout => \Somador|Add0~37_sumout\,
	cout => \Somador|Add0~38\);

-- Location: FF_X59_Y2_N58
\PC|DOUT[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[12]~DUPLICATE_q\);

-- Location: FF_X59_Y1_N2
\PC|DOUT[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[13]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y1_N0
\Somador|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~41_sumout\ = SUM(( \PC|DOUT[13]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~38\ ))
-- \Somador|Add0~42\ = CARRY(( \PC|DOUT[13]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[13]~DUPLICATE_q\,
	cin => \Somador|Add0~38\,
	sumout => \Somador|Add0~41_sumout\,
	cout => \Somador|Add0~42\);

-- Location: FF_X59_Y1_N1
\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

-- Location: FF_X59_Y1_N5
\PC|DOUT[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[14]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y1_N3
\Somador|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~45_sumout\ = SUM(( \PC|DOUT[14]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~42\ ))
-- \Somador|Add0~46\ = CARRY(( \PC|DOUT[14]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[14]~DUPLICATE_q\,
	cin => \Somador|Add0~42\,
	sumout => \Somador|Add0~45_sumout\,
	cout => \Somador|Add0~46\);

-- Location: FF_X59_Y1_N4
\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

-- Location: MLABCELL_X59_Y1_N6
\Somador|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~49_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \Somador|Add0~46\ ))
-- \Somador|Add0~50\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \Somador|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(15),
	cin => \Somador|Add0~46\,
	sumout => \Somador|Add0~49_sumout\,
	cout => \Somador|Add0~50\);

-- Location: FF_X59_Y1_N7
\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

-- Location: FF_X59_Y1_N11
\PC|DOUT[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[16]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y1_N9
\Somador|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~53_sumout\ = SUM(( \PC|DOUT[16]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~50\ ))
-- \Somador|Add0~54\ = CARRY(( \PC|DOUT[16]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[16]~DUPLICATE_q\,
	cin => \Somador|Add0~50\,
	sumout => \Somador|Add0~53_sumout\,
	cout => \Somador|Add0~54\);

-- Location: FF_X59_Y1_N10
\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

-- Location: FF_X59_Y1_N14
\PC|DOUT[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[17]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y1_N12
\Somador|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~57_sumout\ = SUM(( \PC|DOUT[17]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~54\ ))
-- \Somador|Add0~58\ = CARRY(( \PC|DOUT[17]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[17]~DUPLICATE_q\,
	cin => \Somador|Add0~54\,
	sumout => \Somador|Add0~57_sumout\,
	cout => \Somador|Add0~58\);

-- Location: FF_X59_Y1_N13
\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

-- Location: MLABCELL_X59_Y1_N15
\Somador|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~61_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \Somador|Add0~58\ ))
-- \Somador|Add0~62\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \Somador|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(18),
	cin => \Somador|Add0~58\,
	sumout => \Somador|Add0~61_sumout\,
	cout => \Somador|Add0~62\);

-- Location: FF_X59_Y1_N17
\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

-- Location: FF_X59_Y1_N20
\PC|DOUT[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[19]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y1_N18
\Somador|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~65_sumout\ = SUM(( \PC|DOUT[19]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~62\ ))
-- \Somador|Add0~66\ = CARRY(( \PC|DOUT[19]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[19]~DUPLICATE_q\,
	cin => \Somador|Add0~62\,
	sumout => \Somador|Add0~65_sumout\,
	cout => \Somador|Add0~66\);

-- Location: FF_X59_Y1_N19
\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

-- Location: MLABCELL_X59_Y1_N21
\Somador|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~69_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \Somador|Add0~66\ ))
-- \Somador|Add0~70\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \Somador|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \Somador|Add0~66\,
	sumout => \Somador|Add0~69_sumout\,
	cout => \Somador|Add0~70\);

-- Location: FF_X59_Y1_N23
\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

-- Location: FF_X59_Y1_N26
\PC|DOUT[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[21]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y1_N24
\Somador|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~73_sumout\ = SUM(( \PC|DOUT[21]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~70\ ))
-- \Somador|Add0~74\ = CARRY(( \PC|DOUT[21]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[21]~DUPLICATE_q\,
	cin => \Somador|Add0~70\,
	sumout => \Somador|Add0~73_sumout\,
	cout => \Somador|Add0~74\);

-- Location: FF_X59_Y1_N25
\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

-- Location: MLABCELL_X59_Y1_N27
\Somador|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~77_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \Somador|Add0~74\ ))
-- \Somador|Add0~78\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \Somador|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(22),
	cin => \Somador|Add0~74\,
	sumout => \Somador|Add0~77_sumout\,
	cout => \Somador|Add0~78\);

-- Location: FF_X59_Y1_N29
\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

-- Location: MLABCELL_X59_Y1_N30
\Somador|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~81_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \Somador|Add0~78\ ))
-- \Somador|Add0~82\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \Somador|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(23),
	cin => \Somador|Add0~78\,
	sumout => \Somador|Add0~81_sumout\,
	cout => \Somador|Add0~82\);

-- Location: FF_X59_Y1_N31
\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

-- Location: FF_X59_Y1_N35
\PC|DOUT[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[24]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y1_N33
\Somador|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~85_sumout\ = SUM(( \PC|DOUT[24]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~82\ ))
-- \Somador|Add0~86\ = CARRY(( \PC|DOUT[24]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[24]~DUPLICATE_q\,
	cin => \Somador|Add0~82\,
	sumout => \Somador|Add0~85_sumout\,
	cout => \Somador|Add0~86\);

-- Location: FF_X59_Y1_N34
\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

-- Location: MLABCELL_X59_Y1_N36
\Somador|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~89_sumout\ = SUM(( \PC|DOUT\(25) ) + ( GND ) + ( \Somador|Add0~86\ ))
-- \Somador|Add0~90\ = CARRY(( \PC|DOUT\(25) ) + ( GND ) + ( \Somador|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(25),
	cin => \Somador|Add0~86\,
	sumout => \Somador|Add0~89_sumout\,
	cout => \Somador|Add0~90\);

-- Location: FF_X59_Y1_N38
\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

-- Location: FF_X59_Y1_N41
\PC|DOUT[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[26]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y1_N39
\Somador|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~93_sumout\ = SUM(( \PC|DOUT[26]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~90\ ))
-- \Somador|Add0~94\ = CARRY(( \PC|DOUT[26]~DUPLICATE_q\ ) + ( GND ) + ( \Somador|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[26]~DUPLICATE_q\,
	cin => \Somador|Add0~90\,
	sumout => \Somador|Add0~93_sumout\,
	cout => \Somador|Add0~94\);

-- Location: FF_X59_Y1_N40
\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

-- Location: MLABCELL_X59_Y1_N42
\Somador|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~97_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \Somador|Add0~94\ ))
-- \Somador|Add0~98\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \Somador|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(27),
	cin => \Somador|Add0~94\,
	sumout => \Somador|Add0~97_sumout\,
	cout => \Somador|Add0~98\);

-- Location: FF_X59_Y1_N43
\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

-- Location: MLABCELL_X59_Y1_N45
\Somador|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~101_sumout\ = SUM(( \PC|DOUT\(28) ) + ( GND ) + ( \Somador|Add0~98\ ))
-- \Somador|Add0~102\ = CARRY(( \PC|DOUT\(28) ) + ( GND ) + ( \Somador|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(28),
	cin => \Somador|Add0~98\,
	sumout => \Somador|Add0~101_sumout\,
	cout => \Somador|Add0~102\);

-- Location: FF_X59_Y1_N47
\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

-- Location: MLABCELL_X59_Y1_N48
\Somador|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~105_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \Somador|Add0~102\ ))
-- \Somador|Add0~106\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \Somador|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(29),
	cin => \Somador|Add0~102\,
	sumout => \Somador|Add0~105_sumout\,
	cout => \Somador|Add0~106\);

-- Location: FF_X59_Y1_N50
\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

-- Location: MLABCELL_X59_Y1_N51
\Somador|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~109_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \Somador|Add0~106\ ))
-- \Somador|Add0~110\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \Somador|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(30),
	cin => \Somador|Add0~106\,
	sumout => \Somador|Add0~109_sumout\,
	cout => \Somador|Add0~110\);

-- Location: FF_X59_Y1_N52
\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

-- Location: MLABCELL_X59_Y1_N54
\Somador|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~113_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \Somador|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(31),
	cin => \Somador|Add0~110\,
	sumout => \Somador|Add0~113_sumout\);

-- Location: FF_X59_Y1_N56
\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Somador|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

-- Location: IOIBUF_X74_Y81_N41
\Sel_ULA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel_ULA(0),
	o => \Sel_ULA[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\Sel_ULA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel_ULA(1),
	o => \Sel_ULA[1]~input_o\);

-- Location: IOIBUF_X56_Y81_N52
\Write_Rd~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write_Rd,
	o => \Write_Rd~input_o\);

-- Location: MLABCELL_X15_Y33_N0
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


