-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/04/2020 22:27:40"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	CONTROL : IN std_logic_vector(3 DOWNTO 0);
	SRC1 : IN std_logic_vector(31 DOWNTO 0);
	SRC2 : IN std_logic_vector(31 DOWNTO 0);
	RESULT : OUT std_logic_vector(31 DOWNTO 0);
	ZERO : OUT std_logic
	);
END alu;

-- Design Ports Information
-- RESULT[0]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[1]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[3]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[4]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[5]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[6]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[7]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[8]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[9]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[10]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[11]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[12]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[13]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[14]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[15]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[16]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[17]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[18]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[19]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[20]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[21]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[22]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[23]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[24]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[25]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[26]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[27]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[28]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[29]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[30]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[31]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ZERO	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CONTROL[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CONTROL[3]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CONTROL[2]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CONTROL[0]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[31]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[31]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[30]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[30]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[29]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[29]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[28]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[28]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[27]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[27]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[26]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[26]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[25]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[25]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[24]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[24]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[23]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[23]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[22]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[22]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[21]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[21]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[20]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[20]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[19]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[19]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[18]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[18]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[17]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[17]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[16]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[16]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[15]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[15]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[14]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[14]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[13]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[13]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[12]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[12]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[11]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[11]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[10]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[10]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[9]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[9]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[8]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[8]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[7]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[7]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[6]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[6]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[5]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[4]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[4]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[3]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[3]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[2]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[1]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[1]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CONTROL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SRC1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SRC2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RESULT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ZERO : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \local_count~94_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Equal6~6_combout\ : std_logic;
SIGNAL \local_count~5_combout\ : std_logic;
SIGNAL \local_count~11_combout\ : std_logic;
SIGNAL \local_count~17_combout\ : std_logic;
SIGNAL \local_count~200_combout\ : std_logic;
SIGNAL \local_count~26_combout\ : std_logic;
SIGNAL \local_count~203_combout\ : std_logic;
SIGNAL \local_count~35_combout\ : std_logic;
SIGNAL \local_count~206_combout\ : std_logic;
SIGNAL \local_count~47_combout\ : std_logic;
SIGNAL \local_count~210_combout\ : std_logic;
SIGNAL \local_count~53_combout\ : std_logic;
SIGNAL \local_count~212_combout\ : std_logic;
SIGNAL \local_count~59_combout\ : std_logic;
SIGNAL \local_count~214_combout\ : std_logic;
SIGNAL \local_count~65_combout\ : std_logic;
SIGNAL \local_count~216_combout\ : std_logic;
SIGNAL \local_count~68_combout\ : std_logic;
SIGNAL \local_count~217_combout\ : std_logic;
SIGNAL \local_count~74_combout\ : std_logic;
SIGNAL \local_count~219_combout\ : std_logic;
SIGNAL \local_count~83_combout\ : std_logic;
SIGNAL \local_count~92_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;
SIGNAL \local_count~93_combout\ : std_logic;
SIGNAL \local_count~97_combout\ : std_logic;
SIGNAL \local_count~95_combout\ : std_logic;
SIGNAL \local_count~96_combout\ : std_logic;
SIGNAL \local_count~99_combout\ : std_logic;
SIGNAL \local_count~98_combout\ : std_logic;
SIGNAL \local_count~100_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \local_count~2_combout\ : std_logic;
SIGNAL \local_count~195_combout\ : std_logic;
SIGNAL \local_count~103_combout\ : std_logic;
SIGNAL \local_count~102_combout\ : std_logic;
SIGNAL \local_count~101_combout\ : std_logic;
SIGNAL \local_count~104_combout\ : std_logic;
SIGNAL \local_count~196_combout\ : std_logic;
SIGNAL \local_count~106_combout\ : std_logic;
SIGNAL \local_count~105_combout\ : std_logic;
SIGNAL \local_count~107_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \local_count~8_combout\ : std_logic;
SIGNAL \local_count~197_combout\ : std_logic;
SIGNAL \local_count~109_combout\ : std_logic;
SIGNAL \local_count~108_combout\ : std_logic;
SIGNAL \local_count~110_combout\ : std_logic;
SIGNAL \local_count~111_combout\ : std_logic;
SIGNAL \local_count~198_combout\ : std_logic;
SIGNAL \local_count~112_combout\ : std_logic;
SIGNAL \local_count~113_combout\ : std_logic;
SIGNAL \local_count~114_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \local_count~14_combout\ : std_logic;
SIGNAL \local_count~199_combout\ : std_logic;
SIGNAL \local_count~115_combout\ : std_logic;
SIGNAL \local_count~116_combout\ : std_logic;
SIGNAL \local_count~118_combout\ : std_logic;
SIGNAL \local_count~117_combout\ : std_logic;
SIGNAL \local_count~119_combout\ : std_logic;
SIGNAL \local_count~120_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \local_count~20_combout\ : std_logic;
SIGNAL \local_count~201_combout\ : std_logic;
SIGNAL \local_count~121_combout\ : std_logic;
SIGNAL \local_count~122_combout\ : std_logic;
SIGNAL \local_count~123_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \local_count~23_combout\ : std_logic;
SIGNAL \local_count~202_combout\ : std_logic;
SIGNAL \local_count~124_combout\ : std_logic;
SIGNAL \local_count~125_combout\ : std_logic;
SIGNAL \local_count~126_combout\ : std_logic;
SIGNAL \local_count~127_combout\ : std_logic;
SIGNAL \local_count~128_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \local_count~29_combout\ : std_logic;
SIGNAL \local_count~204_combout\ : std_logic;
SIGNAL \local_count~130_combout\ : std_logic;
SIGNAL \local_count~129_combout\ : std_logic;
SIGNAL \local_count~131_combout\ : std_logic;
SIGNAL \local_count~132_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \local_count~32_combout\ : std_logic;
SIGNAL \local_count~205_combout\ : std_logic;
SIGNAL \local_count~133_combout\ : std_logic;
SIGNAL \local_count~134_combout\ : std_logic;
SIGNAL \local_count~136_combout\ : std_logic;
SIGNAL \local_count~135_combout\ : std_logic;
SIGNAL \local_count~137_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \local_count~38_combout\ : std_logic;
SIGNAL \local_count~207_combout\ : std_logic;
SIGNAL \local_count~139_combout\ : std_logic;
SIGNAL \local_count~138_combout\ : std_logic;
SIGNAL \local_count~140_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \local_count~41_combout\ : std_logic;
SIGNAL \local_count~208_combout\ : std_logic;
SIGNAL \local_count~142_combout\ : std_logic;
SIGNAL \local_count~141_combout\ : std_logic;
SIGNAL \local_count~143_combout\ : std_logic;
SIGNAL \local_count~144_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \local_count~44_combout\ : std_logic;
SIGNAL \local_count~209_combout\ : std_logic;
SIGNAL \local_count~145_combout\ : std_logic;
SIGNAL \local_count~146_combout\ : std_logic;
SIGNAL \local_count~148_combout\ : std_logic;
SIGNAL \local_count~147_combout\ : std_logic;
SIGNAL \local_count~149_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \local_count~50_combout\ : std_logic;
SIGNAL \local_count~211_combout\ : std_logic;
SIGNAL \local_count~151_combout\ : std_logic;
SIGNAL \local_count~150_combout\ : std_logic;
SIGNAL \local_count~152_combout\ : std_logic;
SIGNAL \local_count~154_combout\ : std_logic;
SIGNAL \local_count~153_combout\ : std_logic;
SIGNAL \local_count~155_combout\ : std_logic;
SIGNAL \local_count~156_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \local_count~56_combout\ : std_logic;
SIGNAL \local_count~213_combout\ : std_logic;
SIGNAL \local_count~157_combout\ : std_logic;
SIGNAL \local_count~158_combout\ : std_logic;
SIGNAL \local_count~159_combout\ : std_logic;
SIGNAL \local_count~160_combout\ : std_logic;
SIGNAL \local_count~161_combout\ : std_logic;
SIGNAL \local_count~162_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \local_count~62_combout\ : std_logic;
SIGNAL \local_count~215_combout\ : std_logic;
SIGNAL \local_count~163_combout\ : std_logic;
SIGNAL \local_count~164_combout\ : std_logic;
SIGNAL \local_count~165_combout\ : std_logic;
SIGNAL \local_count~166_combout\ : std_logic;
SIGNAL \local_count~167_combout\ : std_logic;
SIGNAL \local_count~168_combout\ : std_logic;
SIGNAL \local_count~169_combout\ : std_logic;
SIGNAL \local_count~170_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \local_count~71_combout\ : std_logic;
SIGNAL \local_count~218_combout\ : std_logic;
SIGNAL \local_count~172_combout\ : std_logic;
SIGNAL \local_count~171_combout\ : std_logic;
SIGNAL \local_count~173_combout\ : std_logic;
SIGNAL \local_count~174_combout\ : std_logic;
SIGNAL \local_count~175_combout\ : std_logic;
SIGNAL \local_count~176_combout\ : std_logic;
SIGNAL \local_count~177_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \local_count~77_combout\ : std_logic;
SIGNAL \local_count~220_combout\ : std_logic;
SIGNAL \local_count~178_combout\ : std_logic;
SIGNAL \local_count~179_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \local_count~80_combout\ : std_logic;
SIGNAL \local_count~221_combout\ : std_logic;
SIGNAL \local_count~181_combout\ : std_logic;
SIGNAL \local_count~180_combout\ : std_logic;
SIGNAL \local_count~182_combout\ : std_logic;
SIGNAL \local_count~222_combout\ : std_logic;
SIGNAL \local_count~184_combout\ : std_logic;
SIGNAL \local_count~183_combout\ : std_logic;
SIGNAL \local_count~185_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \local_count~86_combout\ : std_logic;
SIGNAL \local_count~223_combout\ : std_logic;
SIGNAL \local_count~187_combout\ : std_logic;
SIGNAL \local_count~186_combout\ : std_logic;
SIGNAL \local_count~188_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \local_count~89_combout\ : std_logic;
SIGNAL \local_count~224_combout\ : std_logic;
SIGNAL \local_count~190_combout\ : std_logic;
SIGNAL \local_count~189_combout\ : std_logic;
SIGNAL \local_count~191_combout\ : std_logic;
SIGNAL \local_count~225_combout\ : std_logic;
SIGNAL \local_count~193_combout\ : std_logic;
SIGNAL \local_count~192_combout\ : std_logic;
SIGNAL \local_count~194_combout\ : std_logic;
SIGNAL \Equal6~7_combout\ : std_logic;
SIGNAL \Equal6~8_combout\ : std_logic;
SIGNAL \Equal6~9_combout\ : std_logic;
SIGNAL \Equal6~4_combout\ : std_logic;
SIGNAL \Equal6~5_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~10_combout\ : std_logic;
SIGNAL \SRC2~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \SRC1~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CONTROL~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CONTROL <= CONTROL;
ww_SRC1 <= SRC1;
ww_SRC2 <= SRC2;
RESULT <= ww_RESULT;
ZERO <= ww_ZERO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X25_Y27_N0
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\SRC2~combout\(0) & (\SRC1~combout\(0) $ (VCC))) # (!\SRC2~combout\(0) & ((\SRC1~combout\(0)) # (GND)))
-- \Add1~1\ = CARRY((\SRC1~combout\(0)) # (!\SRC2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(0),
	datab => \SRC1~combout\(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X23_Y27_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\SRC2~combout\(0) & (\SRC1~combout\(0) $ (VCC))) # (!\SRC2~combout\(0) & (\SRC1~combout\(0) & VCC))
-- \Add0~1\ = CARRY((\SRC2~combout\(0) & \SRC1~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(0),
	datab => \SRC1~combout\(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X23_Y27_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\SRC2~combout\(1) & ((\SRC1~combout\(1) & (\Add0~1\ & VCC)) # (!\SRC1~combout\(1) & (!\Add0~1\)))) # (!\SRC2~combout\(1) & ((\SRC1~combout\(1) & (!\Add0~1\)) # (!\SRC1~combout\(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\SRC2~combout\(1) & (!\SRC1~combout\(1) & !\Add0~1\)) # (!\SRC2~combout\(1) & ((!\Add0~1\) # (!\SRC1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(1),
	datab => \SRC1~combout\(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X25_Y27_N4
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\SRC1~combout\(2) $ (\SRC2~combout\(2) $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\SRC1~combout\(2) & ((!\Add1~3\) # (!\SRC2~combout\(2)))) # (!\SRC1~combout\(2) & (!\SRC2~combout\(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(2),
	datab => \SRC2~combout\(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X23_Y27_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\SRC1~combout\(2) $ (\SRC2~combout\(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\SRC1~combout\(2) & ((\SRC2~combout\(2)) # (!\Add0~3\))) # (!\SRC1~combout\(2) & (\SRC2~combout\(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(2),
	datab => \SRC2~combout\(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X25_Y27_N6
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\SRC2~combout\(3) & ((\SRC1~combout\(3) & (!\Add1~5\)) # (!\SRC1~combout\(3) & ((\Add1~5\) # (GND))))) # (!\SRC2~combout\(3) & ((\SRC1~combout\(3) & (\Add1~5\ & VCC)) # (!\SRC1~combout\(3) & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\SRC2~combout\(3) & ((!\Add1~5\) # (!\SRC1~combout\(3)))) # (!\SRC2~combout\(3) & (!\SRC1~combout\(3) & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(3),
	datab => \SRC1~combout\(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X25_Y27_N8
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\SRC2~combout\(4) $ (\SRC1~combout\(4) $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\SRC2~combout\(4) & (\SRC1~combout\(4) & !\Add1~7\)) # (!\SRC2~combout\(4) & ((\SRC1~combout\(4)) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(4),
	datab => \SRC1~combout\(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X23_Y27_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\SRC2~combout\(4) $ (\SRC1~combout\(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\SRC2~combout\(4) & ((\SRC1~combout\(4)) # (!\Add0~7\))) # (!\SRC2~combout\(4) & (\SRC1~combout\(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(4),
	datab => \SRC1~combout\(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X23_Y27_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\SRC1~combout\(5) & ((\SRC2~combout\(5) & (\Add0~9\ & VCC)) # (!\SRC2~combout\(5) & (!\Add0~9\)))) # (!\SRC1~combout\(5) & ((\SRC2~combout\(5) & (!\Add0~9\)) # (!\SRC2~combout\(5) & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\SRC1~combout\(5) & (!\SRC2~combout\(5) & !\Add0~9\)) # (!\SRC1~combout\(5) & ((!\Add0~9\) # (!\SRC2~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(5),
	datab => \SRC2~combout\(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X25_Y27_N12
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\SRC1~combout\(6) $ (\SRC2~combout\(6) $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\SRC1~combout\(6) & ((!\Add1~11\) # (!\SRC2~combout\(6)))) # (!\SRC1~combout\(6) & (!\SRC2~combout\(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(6),
	datab => \SRC2~combout\(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X23_Y27_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\SRC2~combout\(6) $ (\SRC1~combout\(6) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\SRC2~combout\(6) & ((\SRC1~combout\(6)) # (!\Add0~11\))) # (!\SRC2~combout\(6) & (\SRC1~combout\(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(6),
	datab => \SRC1~combout\(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X23_Y27_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\SRC1~combout\(7) & ((\SRC2~combout\(7) & (\Add0~13\ & VCC)) # (!\SRC2~combout\(7) & (!\Add0~13\)))) # (!\SRC1~combout\(7) & ((\SRC2~combout\(7) & (!\Add0~13\)) # (!\SRC2~combout\(7) & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\SRC1~combout\(7) & (!\SRC2~combout\(7) & !\Add0~13\)) # (!\SRC1~combout\(7) & ((!\Add0~13\) # (!\SRC2~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(7),
	datab => \SRC2~combout\(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X25_Y27_N18
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\SRC1~combout\(9) & ((\SRC2~combout\(9) & (!\Add1~17\)) # (!\SRC2~combout\(9) & (\Add1~17\ & VCC)))) # (!\SRC1~combout\(9) & ((\SRC2~combout\(9) & ((\Add1~17\) # (GND))) # (!\SRC2~combout\(9) & (!\Add1~17\))))
-- \Add1~19\ = CARRY((\SRC1~combout\(9) & (\SRC2~combout\(9) & !\Add1~17\)) # (!\SRC1~combout\(9) & ((\SRC2~combout\(9)) # (!\Add1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(9),
	datab => \SRC2~combout\(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X23_Y27_N18
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\SRC2~combout\(9) & ((\SRC1~combout\(9) & (\Add0~17\ & VCC)) # (!\SRC1~combout\(9) & (!\Add0~17\)))) # (!\SRC2~combout\(9) & ((\SRC1~combout\(9) & (!\Add0~17\)) # (!\SRC1~combout\(9) & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\SRC2~combout\(9) & (!\SRC1~combout\(9) & !\Add0~17\)) # (!\SRC2~combout\(9) & ((!\Add0~17\) # (!\SRC1~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(9),
	datab => \SRC1~combout\(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X25_Y27_N24
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\SRC2~combout\(12) $ (\SRC1~combout\(12) $ (\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\SRC2~combout\(12) & (\SRC1~combout\(12) & !\Add1~23\)) # (!\SRC2~combout\(12) & ((\SRC1~combout\(12)) # (!\Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(12),
	datab => \SRC1~combout\(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X23_Y27_N24
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\SRC2~combout\(12) $ (\SRC1~combout\(12) $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\SRC2~combout\(12) & ((\SRC1~combout\(12)) # (!\Add0~23\))) # (!\SRC2~combout\(12) & (\SRC1~combout\(12) & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(12),
	datab => \SRC1~combout\(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X25_Y27_N26
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\SRC2~combout\(13) & ((\SRC1~combout\(13) & (!\Add1~25\)) # (!\SRC1~combout\(13) & ((\Add1~25\) # (GND))))) # (!\SRC2~combout\(13) & ((\SRC1~combout\(13) & (\Add1~25\ & VCC)) # (!\SRC1~combout\(13) & (!\Add1~25\))))
-- \Add1~27\ = CARRY((\SRC2~combout\(13) & ((!\Add1~25\) # (!\SRC1~combout\(13)))) # (!\SRC2~combout\(13) & (!\SRC1~combout\(13) & !\Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(13),
	datab => \SRC1~combout\(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X25_Y27_N28
\Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\SRC2~combout\(14) $ (\SRC1~combout\(14) $ (\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\SRC2~combout\(14) & (\SRC1~combout\(14) & !\Add1~27\)) # (!\SRC2~combout\(14) & ((\SRC1~combout\(14)) # (!\Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(14),
	datab => \SRC1~combout\(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X25_Y27_N30
\Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\SRC1~combout\(15) & ((\SRC2~combout\(15) & (!\Add1~29\)) # (!\SRC2~combout\(15) & (\Add1~29\ & VCC)))) # (!\SRC1~combout\(15) & ((\SRC2~combout\(15) & ((\Add1~29\) # (GND))) # (!\SRC2~combout\(15) & (!\Add1~29\))))
-- \Add1~31\ = CARRY((\SRC1~combout\(15) & (\SRC2~combout\(15) & !\Add1~29\)) # (!\SRC1~combout\(15) & ((\SRC2~combout\(15)) # (!\Add1~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(15),
	datab => \SRC2~combout\(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X25_Y26_N0
\Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\SRC1~combout\(16) $ (\SRC2~combout\(16) $ (\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\SRC1~combout\(16) & ((!\Add1~31\) # (!\SRC2~combout\(16)))) # (!\SRC1~combout\(16) & (!\SRC2~combout\(16) & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(16),
	datab => \SRC2~combout\(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X23_Y26_N0
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((\SRC1~combout\(16) $ (\SRC2~combout\(16) $ (!\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((\SRC1~combout\(16) & ((\SRC2~combout\(16)) # (!\Add0~31\))) # (!\SRC1~combout\(16) & (\SRC2~combout\(16) & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(16),
	datab => \SRC2~combout\(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X23_Y26_N2
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\SRC1~combout\(17) & ((\SRC2~combout\(17) & (\Add0~33\ & VCC)) # (!\SRC2~combout\(17) & (!\Add0~33\)))) # (!\SRC1~combout\(17) & ((\SRC2~combout\(17) & (!\Add0~33\)) # (!\SRC2~combout\(17) & ((\Add0~33\) # (GND)))))
-- \Add0~35\ = CARRY((\SRC1~combout\(17) & (!\SRC2~combout\(17) & !\Add0~33\)) # (!\SRC1~combout\(17) & ((!\Add0~33\) # (!\SRC2~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(17),
	datab => \SRC2~combout\(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X25_Y26_N4
\Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\SRC2~combout\(18) $ (\SRC1~combout\(18) $ (\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\SRC2~combout\(18) & (\SRC1~combout\(18) & !\Add1~35\)) # (!\SRC2~combout\(18) & ((\SRC1~combout\(18)) # (!\Add1~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(18),
	datab => \SRC1~combout\(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X23_Y26_N4
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\SRC2~combout\(18) $ (\SRC1~combout\(18) $ (!\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((\SRC2~combout\(18) & ((\SRC1~combout\(18)) # (!\Add0~35\))) # (!\SRC2~combout\(18) & (\SRC1~combout\(18) & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(18),
	datab => \SRC1~combout\(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X25_Y26_N8
\Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((\SRC1~combout\(20) $ (\SRC2~combout\(20) $ (\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((\SRC1~combout\(20) & ((!\Add1~39\) # (!\SRC2~combout\(20)))) # (!\SRC1~combout\(20) & (!\SRC2~combout\(20) & !\Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(20),
	datab => \SRC2~combout\(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X23_Y26_N8
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((\SRC2~combout\(20) $ (\SRC1~combout\(20) $ (!\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((\SRC2~combout\(20) & ((\SRC1~combout\(20)) # (!\Add0~39\))) # (!\SRC2~combout\(20) & (\SRC1~combout\(20) & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(20),
	datab => \SRC1~combout\(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X25_Y26_N12
\Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((\SRC1~combout\(22) $ (\SRC2~combout\(22) $ (\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((\SRC1~combout\(22) & ((!\Add1~43\) # (!\SRC2~combout\(22)))) # (!\SRC1~combout\(22) & (!\SRC2~combout\(22) & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(22),
	datab => \SRC2~combout\(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X23_Y26_N12
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((\SRC1~combout\(22) $ (\SRC2~combout\(22) $ (!\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((\SRC1~combout\(22) & ((\SRC2~combout\(22)) # (!\Add0~43\))) # (!\SRC1~combout\(22) & (\SRC2~combout\(22) & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(22),
	datab => \SRC2~combout\(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X25_Y26_N14
\Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\SRC1~combout\(23) & ((\SRC2~combout\(23) & (!\Add1~45\)) # (!\SRC2~combout\(23) & (\Add1~45\ & VCC)))) # (!\SRC1~combout\(23) & ((\SRC2~combout\(23) & ((\Add1~45\) # (GND))) # (!\SRC2~combout\(23) & (!\Add1~45\))))
-- \Add1~47\ = CARRY((\SRC1~combout\(23) & (\SRC2~combout\(23) & !\Add1~45\)) # (!\SRC1~combout\(23) & ((\SRC2~combout\(23)) # (!\Add1~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(23),
	datab => \SRC2~combout\(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X23_Y26_N14
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\SRC1~combout\(23) & ((\SRC2~combout\(23) & (\Add0~45\ & VCC)) # (!\SRC2~combout\(23) & (!\Add0~45\)))) # (!\SRC1~combout\(23) & ((\SRC2~combout\(23) & (!\Add0~45\)) # (!\SRC2~combout\(23) & ((\Add0~45\) # (GND)))))
-- \Add0~47\ = CARRY((\SRC1~combout\(23) & (!\SRC2~combout\(23) & !\Add0~45\)) # (!\SRC1~combout\(23) & ((!\Add0~45\) # (!\SRC2~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(23),
	datab => \SRC2~combout\(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X23_Y26_N16
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\SRC2~combout\(24) $ (\SRC1~combout\(24) $ (!\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((\SRC2~combout\(24) & ((\SRC1~combout\(24)) # (!\Add0~47\))) # (!\SRC2~combout\(24) & (\SRC1~combout\(24) & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(24),
	datab => \SRC1~combout\(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X25_Y26_N18
\Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\SRC1~combout\(25) & ((\SRC2~combout\(25) & (!\Add1~49\)) # (!\SRC2~combout\(25) & (\Add1~49\ & VCC)))) # (!\SRC1~combout\(25) & ((\SRC2~combout\(25) & ((\Add1~49\) # (GND))) # (!\SRC2~combout\(25) & (!\Add1~49\))))
-- \Add1~51\ = CARRY((\SRC1~combout\(25) & (\SRC2~combout\(25) & !\Add1~49\)) # (!\SRC1~combout\(25) & ((\SRC2~combout\(25)) # (!\Add1~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(25),
	datab => \SRC2~combout\(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X23_Y26_N18
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\SRC1~combout\(25) & ((\SRC2~combout\(25) & (\Add0~49\ & VCC)) # (!\SRC2~combout\(25) & (!\Add0~49\)))) # (!\SRC1~combout\(25) & ((\SRC2~combout\(25) & (!\Add0~49\)) # (!\SRC2~combout\(25) & ((\Add0~49\) # (GND)))))
-- \Add0~51\ = CARRY((\SRC1~combout\(25) & (!\SRC2~combout\(25) & !\Add0~49\)) # (!\SRC1~combout\(25) & ((!\Add0~49\) # (!\SRC2~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(25),
	datab => \SRC2~combout\(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X25_Y26_N20
\Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((\SRC1~combout\(26) $ (\SRC2~combout\(26) $ (\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((\SRC1~combout\(26) & ((!\Add1~51\) # (!\SRC2~combout\(26)))) # (!\SRC1~combout\(26) & (!\SRC2~combout\(26) & !\Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(26),
	datab => \SRC2~combout\(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X23_Y26_N22
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\SRC1~combout\(27) & ((\SRC2~combout\(27) & (\Add0~53\ & VCC)) # (!\SRC2~combout\(27) & (!\Add0~53\)))) # (!\SRC1~combout\(27) & ((\SRC2~combout\(27) & (!\Add0~53\)) # (!\SRC2~combout\(27) & ((\Add0~53\) # (GND)))))
-- \Add0~55\ = CARRY((\SRC1~combout\(27) & (!\SRC2~combout\(27) & !\Add0~53\)) # (!\SRC1~combout\(27) & ((!\Add0~53\) # (!\SRC2~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(27),
	datab => \SRC2~combout\(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X25_Y26_N24
\Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((\SRC1~combout\(28) $ (\SRC2~combout\(28) $ (\Add1~55\)))) # (GND)
-- \Add1~57\ = CARRY((\SRC1~combout\(28) & ((!\Add1~55\) # (!\SRC2~combout\(28)))) # (!\SRC1~combout\(28) & (!\SRC2~combout\(28) & !\Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(28),
	datab => \SRC2~combout\(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X23_Y26_N24
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = ((\SRC1~combout\(28) $ (\SRC2~combout\(28) $ (!\Add0~55\)))) # (GND)
-- \Add0~57\ = CARRY((\SRC1~combout\(28) & ((\SRC2~combout\(28)) # (!\Add0~55\))) # (!\SRC1~combout\(28) & (\SRC2~combout\(28) & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(28),
	datab => \SRC2~combout\(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X25_Y26_N26
\Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\SRC2~combout\(29) & ((\SRC1~combout\(29) & (!\Add1~57\)) # (!\SRC1~combout\(29) & ((\Add1~57\) # (GND))))) # (!\SRC2~combout\(29) & ((\SRC1~combout\(29) & (\Add1~57\ & VCC)) # (!\SRC1~combout\(29) & (!\Add1~57\))))
-- \Add1~59\ = CARRY((\SRC2~combout\(29) & ((!\Add1~57\) # (!\SRC1~combout\(29)))) # (!\SRC2~combout\(29) & (!\SRC1~combout\(29) & !\Add1~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(29),
	datab => \SRC1~combout\(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X23_Y26_N26
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\SRC1~combout\(29) & ((\SRC2~combout\(29) & (\Add0~57\ & VCC)) # (!\SRC2~combout\(29) & (!\Add0~57\)))) # (!\SRC1~combout\(29) & ((\SRC2~combout\(29) & (!\Add0~57\)) # (!\SRC2~combout\(29) & ((\Add0~57\) # (GND)))))
-- \Add0~59\ = CARRY((\SRC1~combout\(29) & (!\SRC2~combout\(29) & !\Add0~57\)) # (!\SRC1~combout\(29) & ((!\Add0~57\) # (!\SRC2~combout\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(29),
	datab => \SRC2~combout\(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X25_Y26_N28
\Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = ((\SRC2~combout\(30) $ (\SRC1~combout\(30) $ (\Add1~59\)))) # (GND)
-- \Add1~61\ = CARRY((\SRC2~combout\(30) & (\SRC1~combout\(30) & !\Add1~59\)) # (!\SRC2~combout\(30) & ((\SRC1~combout\(30)) # (!\Add1~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(30),
	datab => \SRC1~combout\(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X23_Y26_N28
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((\SRC2~combout\(30) $ (\SRC1~combout\(30) $ (!\Add0~59\)))) # (GND)
-- \Add0~61\ = CARRY((\SRC2~combout\(30) & ((\SRC1~combout\(30)) # (!\Add0~59\))) # (!\SRC2~combout\(30) & (\SRC1~combout\(30) & !\Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(30),
	datab => \SRC1~combout\(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X25_Y26_N30
\Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \SRC2~combout\(31) $ (\Add1~61\ $ (!\SRC1~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SRC2~combout\(31),
	datad => \SRC1~combout\(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X23_Y26_N30
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \SRC2~combout\(31) $ (\Add0~61\ $ (\SRC1~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SRC2~combout\(31),
	datad => \SRC1~combout\(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X24_Y29_N10
\local_count~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~94_combout\ = (\local_count~93_combout\ & ((\CONTROL~combout\(2) & ((\Add1~0_combout\))) # (!\CONTROL~combout\(2) & (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(2),
	datab => \local_count~93_combout\,
	datac => \Add0~0_combout\,
	datad => \Add1~0_combout\,
	combout => \local_count~94_combout\);

-- Location: LCCOMB_X23_Y30_N24
\Equal6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (!\local_count~116_combout\ & (!\local_count~107_combout\ & (!\local_count~113_combout\ & !\local_count~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~116_combout\,
	datab => \local_count~107_combout\,
	datac => \local_count~113_combout\,
	datad => \local_count~110_combout\,
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X23_Y30_N18
\Equal6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = (!\local_count~104_combout\ & (\Equal6~2_combout\ & !\local_count~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~104_combout\,
	datac => \Equal6~2_combout\,
	datad => \local_count~100_combout\,
	combout => \Equal6~3_combout\);

-- Location: LCCOMB_X22_Y27_N2
\Equal6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~6_combout\ = (!\local_count~143_combout\ & (!\local_count~146_combout\ & (!\local_count~152_combout\ & !\local_count~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~143_combout\,
	datab => \local_count~146_combout\,
	datac => \local_count~152_combout\,
	datad => \local_count~149_combout\,
	combout => \Equal6~6_combout\);

-- Location: LCCOMB_X24_Y27_N6
\local_count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~5_combout\ = (\CONTROL~combout\(2) & (\Add1~4_combout\ & ((\CONTROL~combout\(1))))) # (!\CONTROL~combout\(2) & (((\Add0~4_combout\) # (!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add0~4_combout\,
	datac => \CONTROL~combout\(2),
	datad => \CONTROL~combout\(1),
	combout => \local_count~5_combout\);

-- Location: LCCOMB_X23_Y28_N20
\local_count~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~11_combout\ = (\CONTROL~combout\(1) & ((\CONTROL~combout\(2) & (\Add1~8_combout\)) # (!\CONTROL~combout\(2) & ((\Add0~8_combout\))))) # (!\CONTROL~combout\(1) & (((!\CONTROL~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add0~8_combout\,
	datac => \CONTROL~combout\(1),
	datad => \CONTROL~combout\(2),
	combout => \local_count~11_combout\);

-- Location: LCCOMB_X22_Y29_N2
\local_count~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~17_combout\ = (\CONTROL~combout\(1) & ((\CONTROL~combout\(2) & (\Add1~12_combout\)) # (!\CONTROL~combout\(2) & ((\Add0~12_combout\))))) # (!\CONTROL~combout\(1) & (((!\CONTROL~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add0~12_combout\,
	datac => \CONTROL~combout\(1),
	datad => \CONTROL~combout\(2),
	combout => \local_count~17_combout\);

-- Location: LCCOMB_X22_Y29_N28
\local_count~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~200_combout\ = (\local_count~17_combout\ & !\CONTROL~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \local_count~17_combout\,
	datad => \CONTROL~combout\(0),
	combout => \local_count~200_combout\);

-- Location: LCCOMB_X24_Y27_N8
\local_count~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~26_combout\ = (\CONTROL~combout\(1) & ((\CONTROL~combout\(2) & ((\Add1~18_combout\))) # (!\CONTROL~combout\(2) & (\Add0~18_combout\)))) # (!\CONTROL~combout\(1) & (((!\CONTROL~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(1),
	datab => \Add0~18_combout\,
	datac => \CONTROL~combout\(2),
	datad => \Add1~18_combout\,
	combout => \local_count~26_combout\);

-- Location: LCCOMB_X24_Y27_N26
\local_count~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~203_combout\ = (!\CONTROL~combout\(0) & \local_count~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(0),
	datac => \local_count~26_combout\,
	combout => \local_count~203_combout\);

-- Location: LCCOMB_X22_Y26_N18
\local_count~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~35_combout\ = (\CONTROL~combout\(2) & (((\CONTROL~combout\(1) & \Add1~24_combout\)))) # (!\CONTROL~combout\(2) & ((\Add0~24_combout\) # ((!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(2),
	datab => \Add0~24_combout\,
	datac => \CONTROL~combout\(1),
	datad => \Add1~24_combout\,
	combout => \local_count~35_combout\);

-- Location: LCCOMB_X22_Y26_N4
\local_count~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~206_combout\ = (\local_count~35_combout\ & !\CONTROL~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \local_count~35_combout\,
	datad => \CONTROL~combout\(0),
	combout => \local_count~206_combout\);

-- Location: LCCOMB_X22_Y27_N20
\local_count~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~47_combout\ = (\CONTROL~combout\(2) & (((\CONTROL~combout\(1) & \Add1~32_combout\)))) # (!\CONTROL~combout\(2) & ((\Add0~32_combout\) # ((!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \CONTROL~combout\(2),
	datac => \CONTROL~combout\(1),
	datad => \Add1~32_combout\,
	combout => \local_count~47_combout\);

-- Location: LCCOMB_X22_Y27_N6
\local_count~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~210_combout\ = (\local_count~47_combout\ & !\CONTROL~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \local_count~47_combout\,
	datad => \CONTROL~combout\(0),
	combout => \local_count~210_combout\);

-- Location: LCCOMB_X24_Y26_N28
\local_count~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~53_combout\ = (\CONTROL~combout\(2) & (\CONTROL~combout\(1) & ((\Add1~36_combout\)))) # (!\CONTROL~combout\(2) & (((\Add0~36_combout\)) # (!\CONTROL~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(2),
	datab => \CONTROL~combout\(1),
	datac => \Add0~36_combout\,
	datad => \Add1~36_combout\,
	combout => \local_count~53_combout\);

-- Location: LCCOMB_X24_Y26_N22
\local_count~212\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~212_combout\ = (!\CONTROL~combout\(0) & \local_count~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(0),
	datad => \local_count~53_combout\,
	combout => \local_count~212_combout\);

-- Location: LCCOMB_X24_Y30_N10
\local_count~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~59_combout\ = (\CONTROL~combout\(2) & (((\Add1~40_combout\ & \CONTROL~combout\(1))))) # (!\CONTROL~combout\(2) & ((\Add0~40_combout\) # ((!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Add1~40_combout\,
	datac => \CONTROL~combout\(2),
	datad => \CONTROL~combout\(1),
	combout => \local_count~59_combout\);

-- Location: LCCOMB_X24_Y30_N20
\local_count~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~214_combout\ = (!\CONTROL~combout\(0) & \local_count~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROL~combout\(0),
	datad => \local_count~59_combout\,
	combout => \local_count~214_combout\);

-- Location: LCCOMB_X24_Y30_N22
\local_count~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~65_combout\ = (\CONTROL~combout\(2) & (((\Add1~44_combout\ & \CONTROL~combout\(1))))) # (!\CONTROL~combout\(2) & ((\Add0~44_combout\) # ((!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(2),
	datab => \Add0~44_combout\,
	datac => \Add1~44_combout\,
	datad => \CONTROL~combout\(1),
	combout => \local_count~65_combout\);

-- Location: LCCOMB_X24_Y30_N16
\local_count~216\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~216_combout\ = (!\CONTROL~combout\(0) & \local_count~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROL~combout\(0),
	datad => \local_count~65_combout\,
	combout => \local_count~216_combout\);

-- Location: LCCOMB_X22_Y28_N28
\local_count~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~68_combout\ = (\CONTROL~combout\(2) & (\CONTROL~combout\(1) & ((\Add1~46_combout\)))) # (!\CONTROL~combout\(2) & (((\Add0~46_combout\)) # (!\CONTROL~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(2),
	datab => \CONTROL~combout\(1),
	datac => \Add0~46_combout\,
	datad => \Add1~46_combout\,
	combout => \local_count~68_combout\);

-- Location: LCCOMB_X22_Y28_N6
\local_count~217\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~217_combout\ = (\local_count~68_combout\ & !\CONTROL~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \local_count~68_combout\,
	datac => \CONTROL~combout\(0),
	combout => \local_count~217_combout\);

-- Location: LCCOMB_X24_Y27_N20
\local_count~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~74_combout\ = (\CONTROL~combout\(2) & (((\Add1~50_combout\ & \CONTROL~combout\(1))))) # (!\CONTROL~combout\(2) & ((\Add0~50_combout\) # ((!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(2),
	datab => \Add0~50_combout\,
	datac => \Add1~50_combout\,
	datad => \CONTROL~combout\(1),
	combout => \local_count~74_combout\);

-- Location: LCCOMB_X24_Y27_N22
\local_count~219\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~219_combout\ = (!\CONTROL~combout\(0) & \local_count~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(0),
	datac => \local_count~74_combout\,
	combout => \local_count~219_combout\);

-- Location: LCCOMB_X22_Y26_N6
\local_count~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~83_combout\ = (\CONTROL~combout\(1) & ((\CONTROL~combout\(2) & (\Add1~56_combout\)) # (!\CONTROL~combout\(2) & ((\Add0~56_combout\))))) # (!\CONTROL~combout\(1) & (((!\CONTROL~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add0~56_combout\,
	datac => \CONTROL~combout\(1),
	datad => \CONTROL~combout\(2),
	combout => \local_count~83_combout\);

-- Location: LCCOMB_X22_Y26_N10
\local_count~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~92_combout\ = (\CONTROL~combout\(2) & (((\CONTROL~combout\(1) & \Add1~62_combout\)))) # (!\CONTROL~combout\(2) & ((\Add0~62_combout\) # ((!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(2),
	datab => \Add0~62_combout\,
	datac => \CONTROL~combout\(1),
	datad => \Add1~62_combout\,
	combout => \local_count~92_combout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(24),
	combout => \SRC2~combout\(24));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(7),
	combout => \SRC1~combout\(7));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CONTROL[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CONTROL(0),
	combout => \CONTROL~combout\(0));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(31),
	combout => \SRC2~combout\(31));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(31),
	combout => \SRC1~combout\(31));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(30),
	combout => \SRC1~combout\(30));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(29),
	combout => \SRC2~combout\(29));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(28),
	combout => \SRC2~combout\(28));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(27),
	combout => \SRC1~combout\(27));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(26),
	combout => \SRC1~combout\(26));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(25),
	combout => \SRC2~combout\(25));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(24),
	combout => \SRC1~combout\(24));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(23),
	combout => \SRC1~combout\(23));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(22),
	combout => \SRC2~combout\(22));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(21),
	combout => \SRC1~combout\(21));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(20),
	combout => \SRC1~combout\(20));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(19),
	combout => \SRC1~combout\(19));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(18),
	combout => \SRC1~combout\(18));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(17),
	combout => \SRC2~combout\(17));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(16),
	combout => \SRC2~combout\(16));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(15),
	combout => \SRC2~combout\(15));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(14),
	combout => \SRC2~combout\(14));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(13),
	combout => \SRC2~combout\(13));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(12),
	combout => \SRC1~combout\(12));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(11),
	combout => \SRC2~combout\(11));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(10),
	combout => \SRC1~combout\(10));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(9),
	combout => \SRC2~combout\(9));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(8),
	combout => \SRC1~combout\(8));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(7),
	combout => \SRC2~combout\(7));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(6),
	combout => \SRC2~combout\(6));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(5),
	combout => \SRC2~combout\(5));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(4),
	combout => \SRC1~combout\(4));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(3),
	combout => \SRC2~combout\(3));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(2),
	combout => \SRC2~combout\(2));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(1),
	combout => \SRC2~combout\(1));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(0),
	combout => \SRC2~combout\(0));

-- Location: LCCOMB_X25_Y29_N0
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\SRC1~combout\(0) & \SRC2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(0),
	datab => \SRC2~combout\(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X25_Y29_N2
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\SRC1~combout\(1) & ((!\LessThan0~1_cout\) # (!\SRC2~combout\(1)))) # (!\SRC1~combout\(1) & (!\SRC2~combout\(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(1),
	datab => \SRC2~combout\(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X25_Y29_N4
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\SRC1~combout\(2) & (\SRC2~combout\(2) & !\LessThan0~3_cout\)) # (!\SRC1~combout\(2) & ((\SRC2~combout\(2)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(2),
	datab => \SRC2~combout\(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X25_Y29_N6
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\SRC1~combout\(3) & ((!\LessThan0~5_cout\) # (!\SRC2~combout\(3)))) # (!\SRC1~combout\(3) & (!\SRC2~combout\(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(3),
	datab => \SRC2~combout\(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X25_Y29_N8
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\SRC2~combout\(4) & ((!\LessThan0~7_cout\) # (!\SRC1~combout\(4)))) # (!\SRC2~combout\(4) & (!\SRC1~combout\(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(4),
	datab => \SRC1~combout\(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X25_Y29_N10
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\SRC1~combout\(5) & ((!\LessThan0~9_cout\) # (!\SRC2~combout\(5)))) # (!\SRC1~combout\(5) & (!\SRC2~combout\(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(5),
	datab => \SRC2~combout\(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X25_Y29_N12
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\SRC1~combout\(6) & (\SRC2~combout\(6) & !\LessThan0~11_cout\)) # (!\SRC1~combout\(6) & ((\SRC2~combout\(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(6),
	datab => \SRC2~combout\(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X25_Y29_N14
\LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\SRC1~combout\(7) & ((!\LessThan0~13_cout\) # (!\SRC2~combout\(7)))) # (!\SRC1~combout\(7) & (!\SRC2~combout\(7) & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(7),
	datab => \SRC2~combout\(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X25_Y29_N16
\LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\SRC2~combout\(8) & ((!\LessThan0~15_cout\) # (!\SRC1~combout\(8)))) # (!\SRC2~combout\(8) & (!\SRC1~combout\(8) & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(8),
	datab => \SRC1~combout\(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X25_Y29_N18
\LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\SRC1~combout\(9) & ((!\LessThan0~17_cout\) # (!\SRC2~combout\(9)))) # (!\SRC1~combout\(9) & (!\SRC2~combout\(9) & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(9),
	datab => \SRC2~combout\(9),
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X25_Y29_N20
\LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\SRC2~combout\(10) & ((!\LessThan0~19_cout\) # (!\SRC1~combout\(10)))) # (!\SRC2~combout\(10) & (!\SRC1~combout\(10) & !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(10),
	datab => \SRC1~combout\(10),
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X25_Y29_N22
\LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\SRC1~combout\(11) & ((!\LessThan0~21_cout\) # (!\SRC2~combout\(11)))) # (!\SRC1~combout\(11) & (!\SRC2~combout\(11) & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(11),
	datab => \SRC2~combout\(11),
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X25_Y29_N24
\LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\SRC2~combout\(12) & ((!\LessThan0~23_cout\) # (!\SRC1~combout\(12)))) # (!\SRC2~combout\(12) & (!\SRC1~combout\(12) & !\LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(12),
	datab => \SRC1~combout\(12),
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X25_Y29_N26
\LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\SRC1~combout\(13) & ((!\LessThan0~25_cout\) # (!\SRC2~combout\(13)))) # (!\SRC1~combout\(13) & (!\SRC2~combout\(13) & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(13),
	datab => \SRC2~combout\(13),
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X25_Y29_N28
\LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\SRC1~combout\(14) & (\SRC2~combout\(14) & !\LessThan0~27_cout\)) # (!\SRC1~combout\(14) & ((\SRC2~combout\(14)) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(14),
	datab => \SRC2~combout\(14),
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X25_Y29_N30
\LessThan0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\SRC1~combout\(15) & ((!\LessThan0~29_cout\) # (!\SRC2~combout\(15)))) # (!\SRC1~combout\(15) & (!\SRC2~combout\(15) & !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(15),
	datab => \SRC2~combout\(15),
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X25_Y28_N0
\LessThan0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\SRC1~combout\(16) & (\SRC2~combout\(16) & !\LessThan0~31_cout\)) # (!\SRC1~combout\(16) & ((\SRC2~combout\(16)) # (!\LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(16),
	datab => \SRC2~combout\(16),
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X25_Y28_N2
\LessThan0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\SRC1~combout\(17) & ((!\LessThan0~33_cout\) # (!\SRC2~combout\(17)))) # (!\SRC1~combout\(17) & (!\SRC2~combout\(17) & !\LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(17),
	datab => \SRC2~combout\(17),
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X25_Y28_N4
\LessThan0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\SRC2~combout\(18) & ((!\LessThan0~35_cout\) # (!\SRC1~combout\(18)))) # (!\SRC2~combout\(18) & (!\SRC1~combout\(18) & !\LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(18),
	datab => \SRC1~combout\(18),
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X25_Y28_N6
\LessThan0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\SRC2~combout\(19) & (\SRC1~combout\(19) & !\LessThan0~37_cout\)) # (!\SRC2~combout\(19) & ((\SRC1~combout\(19)) # (!\LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(19),
	datab => \SRC1~combout\(19),
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X25_Y28_N8
\LessThan0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\SRC2~combout\(20) & ((!\LessThan0~39_cout\) # (!\SRC1~combout\(20)))) # (!\SRC2~combout\(20) & (!\SRC1~combout\(20) & !\LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(20),
	datab => \SRC1~combout\(20),
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X25_Y28_N10
\LessThan0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\SRC2~combout\(21) & (\SRC1~combout\(21) & !\LessThan0~41_cout\)) # (!\SRC2~combout\(21) & ((\SRC1~combout\(21)) # (!\LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(21),
	datab => \SRC1~combout\(21),
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X25_Y28_N12
\LessThan0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\SRC1~combout\(22) & (\SRC2~combout\(22) & !\LessThan0~43_cout\)) # (!\SRC1~combout\(22) & ((\SRC2~combout\(22)) # (!\LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(22),
	datab => \SRC2~combout\(22),
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X25_Y28_N14
\LessThan0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\SRC2~combout\(23) & (\SRC1~combout\(23) & !\LessThan0~45_cout\)) # (!\SRC2~combout\(23) & ((\SRC1~combout\(23)) # (!\LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(23),
	datab => \SRC1~combout\(23),
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X25_Y28_N16
\LessThan0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\SRC2~combout\(24) & ((!\LessThan0~47_cout\) # (!\SRC1~combout\(24)))) # (!\SRC2~combout\(24) & (!\SRC1~combout\(24) & !\LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(24),
	datab => \SRC1~combout\(24),
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X25_Y28_N18
\LessThan0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\SRC1~combout\(25) & ((!\LessThan0~49_cout\) # (!\SRC2~combout\(25)))) # (!\SRC1~combout\(25) & (!\SRC2~combout\(25) & !\LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(25),
	datab => \SRC2~combout\(25),
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X25_Y28_N20
\LessThan0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\SRC2~combout\(26) & ((!\LessThan0~51_cout\) # (!\SRC1~combout\(26)))) # (!\SRC2~combout\(26) & (!\SRC1~combout\(26) & !\LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(26),
	datab => \SRC1~combout\(26),
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X25_Y28_N22
\LessThan0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\SRC2~combout\(27) & (\SRC1~combout\(27) & !\LessThan0~53_cout\)) # (!\SRC2~combout\(27) & ((\SRC1~combout\(27)) # (!\LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(27),
	datab => \SRC1~combout\(27),
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X25_Y28_N24
\LessThan0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\SRC1~combout\(28) & (\SRC2~combout\(28) & !\LessThan0~55_cout\)) # (!\SRC1~combout\(28) & ((\SRC2~combout\(28)) # (!\LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(28),
	datab => \SRC2~combout\(28),
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X25_Y28_N26
\LessThan0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\SRC1~combout\(29) & ((!\LessThan0~57_cout\) # (!\SRC2~combout\(29)))) # (!\SRC1~combout\(29) & (!\SRC2~combout\(29) & !\LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(29),
	datab => \SRC2~combout\(29),
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X25_Y28_N28
\LessThan0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\SRC2~combout\(30) & ((!\LessThan0~59_cout\) # (!\SRC1~combout\(30)))) # (!\SRC2~combout\(30) & (!\SRC1~combout\(30) & !\LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(30),
	datab => \SRC1~combout\(30),
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X25_Y28_N30
\LessThan0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\SRC2~combout\(31) & ((\LessThan0~61_cout\) # (!\SRC1~combout\(31)))) # (!\SRC2~combout\(31) & (\LessThan0~61_cout\ & !\SRC1~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SRC2~combout\(31),
	datad => \SRC1~combout\(31),
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CONTROL[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CONTROL(1),
	combout => \CONTROL~combout\(1));

-- Location: LCCOMB_X24_Y29_N0
\local_count~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~93_combout\ = (!\CONTROL~combout\(3) & \CONTROL~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(3),
	datac => \CONTROL~combout\(1),
	combout => \local_count~93_combout\);

-- Location: LCCOMB_X24_Y29_N24
\local_count~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~97_combout\ = (\CONTROL~combout\(2) & (\CONTROL~combout\(0) & (\LessThan0~62_combout\ & \local_count~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(2),
	datab => \CONTROL~combout\(0),
	datac => \LessThan0~62_combout\,
	datad => \local_count~93_combout\,
	combout => \local_count~97_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CONTROL[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CONTROL(3),
	combout => \CONTROL~combout\(3));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(0),
	combout => \SRC1~combout\(0));

-- Location: LCCOMB_X24_Y29_N28
\local_count~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~95_combout\ = (\CONTROL~combout\(2) & (!\CONTROL~combout\(1) & (\CONTROL~combout\(3) & !\SRC1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(2),
	datab => \CONTROL~combout\(1),
	datac => \CONTROL~combout\(3),
	datad => \SRC1~combout\(0),
	combout => \local_count~95_combout\);

-- Location: LCCOMB_X24_Y29_N30
\local_count~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~96_combout\ = (!\CONTROL~combout\(0) & ((\local_count~94_combout\) # ((!\SRC2~combout\(0) & \local_count~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~94_combout\,
	datab => \SRC2~combout\(0),
	datac => \CONTROL~combout\(0),
	datad => \local_count~95_combout\,
	combout => \local_count~96_combout\);

-- Location: LCCOMB_X24_Y29_N20
\local_count~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~99_combout\ = (!\CONTROL~combout\(3) & ((\SRC1~combout\(0) & ((\CONTROL~combout\(0)) # (\SRC2~combout\(0)))) # (!\SRC1~combout\(0) & (\CONTROL~combout\(0) & \SRC2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(3),
	datab => \SRC1~combout\(0),
	datac => \CONTROL~combout\(0),
	datad => \SRC2~combout\(0),
	combout => \local_count~99_combout\);

-- Location: LCCOMB_X24_Y29_N18
\local_count~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~98_combout\ = (!\CONTROL~combout\(2) & !\CONTROL~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(2),
	datac => \CONTROL~combout\(1),
	combout => \local_count~98_combout\);

-- Location: LCCOMB_X24_Y29_N22
\local_count~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~100_combout\ = (\local_count~97_combout\) # ((\local_count~96_combout\) # ((\local_count~99_combout\ & \local_count~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~97_combout\,
	datab => \local_count~96_combout\,
	datac => \local_count~99_combout\,
	datad => \local_count~98_combout\,
	combout => \local_count~100_combout\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(1),
	combout => \SRC1~combout\(1));

-- Location: LCCOMB_X25_Y27_N2
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\SRC2~combout\(1) & ((\SRC1~combout\(1) & (!\Add1~1\)) # (!\SRC1~combout\(1) & ((\Add1~1\) # (GND))))) # (!\SRC2~combout\(1) & ((\SRC1~combout\(1) & (\Add1~1\ & VCC)) # (!\SRC1~combout\(1) & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\SRC2~combout\(1) & ((!\Add1~1\) # (!\SRC1~combout\(1)))) # (!\SRC2~combout\(1) & (!\SRC1~combout\(1) & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(1),
	datab => \SRC1~combout\(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CONTROL[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CONTROL(2),
	combout => \CONTROL~combout\(2));

-- Location: LCCOMB_X22_Y29_N0
\local_count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~2_combout\ = (\CONTROL~combout\(1) & ((\CONTROL~combout\(2) & ((\Add1~2_combout\))) # (!\CONTROL~combout\(2) & (\Add0~2_combout\)))) # (!\CONTROL~combout\(1) & (((!\CONTROL~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add1~2_combout\,
	datac => \CONTROL~combout\(1),
	datad => \CONTROL~combout\(2),
	combout => \local_count~2_combout\);

-- Location: LCCOMB_X23_Y30_N4
\local_count~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~195_combout\ = (!\CONTROL~combout\(0) & \local_count~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROL~combout\(0),
	datac => \local_count~2_combout\,
	combout => \local_count~195_combout\);

-- Location: LCCOMB_X23_Y30_N26
\local_count~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~103_combout\ = (\local_count~98_combout\ & ((\SRC2~combout\(1) & ((\SRC1~combout\(1)) # (!\local_count~195_combout\))) # (!\SRC2~combout\(1) & (!\local_count~195_combout\ & \SRC1~combout\(1))))) # (!\local_count~98_combout\ & 
-- (((\local_count~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~98_combout\,
	datab => \SRC2~combout\(1),
	datac => \local_count~195_combout\,
	datad => \SRC1~combout\(1),
	combout => \local_count~103_combout\);

-- Location: LCCOMB_X23_Y30_N8
\local_count~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~102_combout\ = (!\SRC2~combout\(1) & !\SRC1~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC2~combout\(1),
	datad => \SRC1~combout\(1),
	combout => \local_count~102_combout\);

-- Location: LCCOMB_X23_Y28_N0
\local_count~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~101_combout\ = (!\CONTROL~combout\(1) & (\CONTROL~combout\(2) & (!\CONTROL~combout\(0) & \CONTROL~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(1),
	datab => \CONTROL~combout\(2),
	datac => \CONTROL~combout\(0),
	datad => \CONTROL~combout\(3),
	combout => \local_count~101_combout\);

-- Location: LCCOMB_X23_Y30_N12
\local_count~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~104_combout\ = (\CONTROL~combout\(3) & (((\local_count~102_combout\ & \local_count~101_combout\)))) # (!\CONTROL~combout\(3) & ((\local_count~103_combout\) # ((\local_count~102_combout\ & \local_count~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(3),
	datab => \local_count~103_combout\,
	datac => \local_count~102_combout\,
	datad => \local_count~101_combout\,
	combout => \local_count~104_combout\);

-- Location: LCCOMB_X23_Y30_N30
\local_count~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~196_combout\ = (\local_count~5_combout\ & !\CONTROL~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~5_combout\,
	datac => \CONTROL~combout\(0),
	combout => \local_count~196_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(2),
	combout => \SRC1~combout\(2));

-- Location: LCCOMB_X23_Y30_N16
\local_count~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~106_combout\ = (\local_count~98_combout\ & ((\local_count~196_combout\ & (\SRC2~combout\(2) & \SRC1~combout\(2))) # (!\local_count~196_combout\ & ((\SRC2~combout\(2)) # (\SRC1~combout\(2)))))) # (!\local_count~98_combout\ & 
-- (\local_count~196_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~98_combout\,
	datab => \local_count~196_combout\,
	datac => \SRC2~combout\(2),
	datad => \SRC1~combout\(2),
	combout => \local_count~106_combout\);

-- Location: LCCOMB_X23_Y30_N14
\local_count~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~105_combout\ = (!\SRC2~combout\(2) & !\SRC1~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC2~combout\(2),
	datad => \SRC1~combout\(2),
	combout => \local_count~105_combout\);

-- Location: LCCOMB_X23_Y30_N2
\local_count~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~107_combout\ = (\local_count~106_combout\ & (((\local_count~101_combout\ & \local_count~105_combout\)) # (!\CONTROL~combout\(3)))) # (!\local_count~106_combout\ & (\local_count~101_combout\ & (\local_count~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~106_combout\,
	datab => \local_count~101_combout\,
	datac => \local_count~105_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~107_combout\);

-- Location: LCCOMB_X23_Y27_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\SRC1~combout\(3) & ((\SRC2~combout\(3) & (\Add0~5\ & VCC)) # (!\SRC2~combout\(3) & (!\Add0~5\)))) # (!\SRC1~combout\(3) & ((\SRC2~combout\(3) & (!\Add0~5\)) # (!\SRC2~combout\(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\SRC1~combout\(3) & (!\SRC2~combout\(3) & !\Add0~5\)) # (!\SRC1~combout\(3) & ((!\Add0~5\) # (!\SRC2~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(3),
	datab => \SRC2~combout\(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X24_Y27_N16
\local_count~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~8_combout\ = (\CONTROL~combout\(2) & (\Add1~6_combout\ & ((\CONTROL~combout\(1))))) # (!\CONTROL~combout\(2) & (((\Add0~6_combout\) # (!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add0~6_combout\,
	datac => \CONTROL~combout\(2),
	datad => \CONTROL~combout\(1),
	combout => \local_count~8_combout\);

-- Location: LCCOMB_X24_Y27_N18
\local_count~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~197_combout\ = (!\CONTROL~combout\(0) & \local_count~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(0),
	datac => \local_count~8_combout\,
	combout => \local_count~197_combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(3),
	combout => \SRC1~combout\(3));

-- Location: LCCOMB_X23_Y30_N6
\local_count~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~109_combout\ = (\local_count~98_combout\ & ((\local_count~197_combout\ & (\SRC2~combout\(3) & \SRC1~combout\(3))) # (!\local_count~197_combout\ & ((\SRC2~combout\(3)) # (\SRC1~combout\(3)))))) # (!\local_count~98_combout\ & 
-- (\local_count~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~98_combout\,
	datab => \local_count~197_combout\,
	datac => \SRC2~combout\(3),
	datad => \SRC1~combout\(3),
	combout => \local_count~109_combout\);

-- Location: LCCOMB_X23_Y30_N28
\local_count~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~108_combout\ = (!\SRC2~combout\(3) & !\SRC1~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC2~combout\(3),
	datad => \SRC1~combout\(3),
	combout => \local_count~108_combout\);

-- Location: LCCOMB_X23_Y30_N0
\local_count~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~110_combout\ = (\local_count~109_combout\ & (((\local_count~108_combout\ & \local_count~101_combout\)) # (!\CONTROL~combout\(3)))) # (!\local_count~109_combout\ & (\local_count~108_combout\ & ((\local_count~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~109_combout\,
	datab => \local_count~108_combout\,
	datac => \CONTROL~combout\(3),
	datad => \local_count~101_combout\,
	combout => \local_count~110_combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(4),
	combout => \SRC2~combout\(4));

-- Location: LCCOMB_X23_Y28_N10
\local_count~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~111_combout\ = (!\SRC1~combout\(4) & !\SRC2~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(4),
	datac => \SRC2~combout\(4),
	combout => \local_count~111_combout\);

-- Location: LCCOMB_X23_Y28_N30
\local_count~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~198_combout\ = (\local_count~11_combout\ & !\CONTROL~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~11_combout\,
	datac => \CONTROL~combout\(0),
	combout => \local_count~198_combout\);

-- Location: LCCOMB_X23_Y28_N12
\local_count~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~112_combout\ = (\local_count~98_combout\ & ((\SRC2~combout\(4) & ((\SRC1~combout\(4)) # (!\local_count~198_combout\))) # (!\SRC2~combout\(4) & (\SRC1~combout\(4) & !\local_count~198_combout\)))) # (!\local_count~98_combout\ & 
-- (((\local_count~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(4),
	datab => \local_count~98_combout\,
	datac => \SRC1~combout\(4),
	datad => \local_count~198_combout\,
	combout => \local_count~112_combout\);

-- Location: LCCOMB_X23_Y28_N22
\local_count~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~113_combout\ = (\local_count~111_combout\ & ((\local_count~101_combout\) # ((\local_count~112_combout\ & !\CONTROL~combout\(3))))) # (!\local_count~111_combout\ & (((\local_count~112_combout\ & !\CONTROL~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~111_combout\,
	datab => \local_count~101_combout\,
	datac => \local_count~112_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~113_combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(5),
	combout => \SRC1~combout\(5));

-- Location: LCCOMB_X23_Y30_N10
\local_count~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~114_combout\ = (!\SRC1~combout\(5) & !\SRC2~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(5),
	datad => \SRC2~combout\(5),
	combout => \local_count~114_combout\);

-- Location: LCCOMB_X25_Y27_N10
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\SRC1~combout\(5) & ((\SRC2~combout\(5) & (!\Add1~9\)) # (!\SRC2~combout\(5) & (\Add1~9\ & VCC)))) # (!\SRC1~combout\(5) & ((\SRC2~combout\(5) & ((\Add1~9\) # (GND))) # (!\SRC2~combout\(5) & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\SRC1~combout\(5) & (\SRC2~combout\(5) & !\Add1~9\)) # (!\SRC1~combout\(5) & ((\SRC2~combout\(5)) # (!\Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(5),
	datab => \SRC2~combout\(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X24_Y27_N28
\local_count~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~14_combout\ = (\CONTROL~combout\(2) & (((\Add1~10_combout\ & \CONTROL~combout\(1))))) # (!\CONTROL~combout\(2) & ((\Add0~10_combout\) # ((!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add1~10_combout\,
	datac => \CONTROL~combout\(2),
	datad => \CONTROL~combout\(1),
	combout => \local_count~14_combout\);

-- Location: LCCOMB_X24_Y27_N14
\local_count~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~199_combout\ = (!\CONTROL~combout\(0) & \local_count~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(0),
	datad => \local_count~14_combout\,
	combout => \local_count~199_combout\);

-- Location: LCCOMB_X23_Y30_N20
\local_count~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~115_combout\ = (\local_count~98_combout\ & ((\SRC1~combout\(5) & ((\SRC2~combout\(5)) # (!\local_count~199_combout\))) # (!\SRC1~combout\(5) & (!\local_count~199_combout\ & \SRC2~combout\(5))))) # (!\local_count~98_combout\ & 
-- (((\local_count~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~98_combout\,
	datab => \SRC1~combout\(5),
	datac => \local_count~199_combout\,
	datad => \SRC2~combout\(5),
	combout => \local_count~115_combout\);

-- Location: LCCOMB_X23_Y30_N22
\local_count~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~116_combout\ = (\local_count~114_combout\ & ((\local_count~101_combout\) # ((\local_count~115_combout\ & !\CONTROL~combout\(3))))) # (!\local_count~114_combout\ & (((\local_count~115_combout\ & !\CONTROL~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~114_combout\,
	datab => \local_count~101_combout\,
	datac => \local_count~115_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~116_combout\);

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(6),
	combout => \SRC1~combout\(6));

-- Location: LCCOMB_X23_Y29_N10
\local_count~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~118_combout\ = (\local_count~200_combout\ & (((\SRC1~combout\(6) & \SRC2~combout\(6))) # (!\local_count~98_combout\))) # (!\local_count~200_combout\ & (\local_count~98_combout\ & ((\SRC1~combout\(6)) # (\SRC2~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~200_combout\,
	datab => \local_count~98_combout\,
	datac => \SRC1~combout\(6),
	datad => \SRC2~combout\(6),
	combout => \local_count~118_combout\);

-- Location: LCCOMB_X23_Y29_N24
\local_count~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~117_combout\ = (!\SRC1~combout\(6) & !\SRC2~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(6),
	datad => \SRC2~combout\(6),
	combout => \local_count~117_combout\);

-- Location: LCCOMB_X23_Y29_N4
\local_count~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~119_combout\ = (\local_count~118_combout\ & (((\local_count~101_combout\ & \local_count~117_combout\)) # (!\CONTROL~combout\(3)))) # (!\local_count~118_combout\ & (\local_count~101_combout\ & (\local_count~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~118_combout\,
	datab => \local_count~101_combout\,
	datac => \local_count~117_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~119_combout\);

-- Location: LCCOMB_X23_Y29_N6
\local_count~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~120_combout\ = (!\SRC1~combout\(7) & !\SRC2~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(7),
	datad => \SRC2~combout\(7),
	combout => \local_count~120_combout\);

-- Location: LCCOMB_X25_Y27_N14
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\SRC1~combout\(7) & ((\SRC2~combout\(7) & (!\Add1~13\)) # (!\SRC2~combout\(7) & (\Add1~13\ & VCC)))) # (!\SRC1~combout\(7) & ((\SRC2~combout\(7) & ((\Add1~13\) # (GND))) # (!\SRC2~combout\(7) & (!\Add1~13\))))
-- \Add1~15\ = CARRY((\SRC1~combout\(7) & (\SRC2~combout\(7) & !\Add1~13\)) # (!\SRC1~combout\(7) & ((\SRC2~combout\(7)) # (!\Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(7),
	datab => \SRC2~combout\(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X24_Y27_N0
\local_count~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~20_combout\ = (\CONTROL~combout\(2) & (((\Add1~14_combout\ & \CONTROL~combout\(1))))) # (!\CONTROL~combout\(2) & ((\Add0~14_combout\) # ((!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add1~14_combout\,
	datac => \CONTROL~combout\(2),
	datad => \CONTROL~combout\(1),
	combout => \local_count~20_combout\);

-- Location: LCCOMB_X24_Y27_N10
\local_count~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~201_combout\ = (!\CONTROL~combout\(0) & \local_count~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(0),
	datad => \local_count~20_combout\,
	combout => \local_count~201_combout\);

-- Location: LCCOMB_X23_Y29_N8
\local_count~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~121_combout\ = (\local_count~98_combout\ & ((\SRC1~combout\(7) & ((\SRC2~combout\(7)) # (!\local_count~201_combout\))) # (!\SRC1~combout\(7) & (!\local_count~201_combout\ & \SRC2~combout\(7))))) # (!\local_count~98_combout\ & 
-- (((\local_count~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(7),
	datab => \local_count~98_combout\,
	datac => \local_count~201_combout\,
	datad => \SRC2~combout\(7),
	combout => \local_count~121_combout\);

-- Location: LCCOMB_X23_Y29_N2
\local_count~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~122_combout\ = (\local_count~120_combout\ & ((\local_count~101_combout\) # ((\local_count~121_combout\ & !\CONTROL~combout\(3))))) # (!\local_count~120_combout\ & (((\local_count~121_combout\ & !\CONTROL~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~120_combout\,
	datab => \local_count~101_combout\,
	datac => \local_count~121_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~122_combout\);

-- Location: LCCOMB_X23_Y29_N12
\local_count~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~123_combout\ = (!\SRC2~combout\(8) & !\SRC1~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(8),
	datac => \SRC1~combout\(8),
	combout => \local_count~123_combout\);

-- Location: LCCOMB_X23_Y27_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\SRC2~combout\(8) $ (\SRC1~combout\(8) $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\SRC2~combout\(8) & ((\SRC1~combout\(8)) # (!\Add0~15\))) # (!\SRC2~combout\(8) & (\SRC1~combout\(8) & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(8),
	datab => \SRC1~combout\(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(8),
	combout => \SRC2~combout\(8));

-- Location: LCCOMB_X25_Y27_N16
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\SRC1~combout\(8) $ (\SRC2~combout\(8) $ (\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\SRC1~combout\(8) & ((!\Add1~15\) # (!\SRC2~combout\(8)))) # (!\SRC1~combout\(8) & (!\SRC2~combout\(8) & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(8),
	datab => \SRC2~combout\(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X24_Y27_N12
\local_count~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~23_combout\ = (\CONTROL~combout\(2) & (((\Add1~16_combout\ & \CONTROL~combout\(1))))) # (!\CONTROL~combout\(2) & ((\Add0~16_combout\) # ((!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(2),
	datab => \Add0~16_combout\,
	datac => \Add1~16_combout\,
	datad => \CONTROL~combout\(1),
	combout => \local_count~23_combout\);

-- Location: LCCOMB_X24_Y27_N30
\local_count~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~202_combout\ = (!\CONTROL~combout\(0) & \local_count~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(0),
	datad => \local_count~23_combout\,
	combout => \local_count~202_combout\);

-- Location: LCCOMB_X23_Y29_N14
\local_count~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~124_combout\ = (\local_count~98_combout\ & ((\SRC2~combout\(8) & ((\SRC1~combout\(8)) # (!\local_count~202_combout\))) # (!\SRC2~combout\(8) & (\SRC1~combout\(8) & !\local_count~202_combout\)))) # (!\local_count~98_combout\ & 
-- (((\local_count~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(8),
	datab => \local_count~98_combout\,
	datac => \SRC1~combout\(8),
	datad => \local_count~202_combout\,
	combout => \local_count~124_combout\);

-- Location: LCCOMB_X23_Y29_N0
\local_count~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~125_combout\ = (\local_count~123_combout\ & ((\local_count~101_combout\) # ((\local_count~124_combout\ & !\CONTROL~combout\(3))))) # (!\local_count~123_combout\ & (((\local_count~124_combout\ & !\CONTROL~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~123_combout\,
	datab => \local_count~101_combout\,
	datac => \local_count~124_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~125_combout\);

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(9),
	combout => \SRC1~combout\(9));

-- Location: LCCOMB_X23_Y29_N18
\local_count~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~126_combout\ = (!\SRC2~combout\(9) & !\SRC1~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC2~combout\(9),
	datad => \SRC1~combout\(9),
	combout => \local_count~126_combout\);

-- Location: LCCOMB_X23_Y29_N20
\local_count~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~127_combout\ = (\local_count~203_combout\ & (((\SRC1~combout\(9) & \SRC2~combout\(9))) # (!\local_count~98_combout\))) # (!\local_count~203_combout\ & (\local_count~98_combout\ & ((\SRC1~combout\(9)) # (\SRC2~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~203_combout\,
	datab => \SRC1~combout\(9),
	datac => \SRC2~combout\(9),
	datad => \local_count~98_combout\,
	combout => \local_count~127_combout\);

-- Location: LCCOMB_X23_Y29_N30
\local_count~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~128_combout\ = (\local_count~126_combout\ & ((\local_count~101_combout\) # ((\local_count~127_combout\ & !\CONTROL~combout\(3))))) # (!\local_count~126_combout\ & (((\local_count~127_combout\ & !\CONTROL~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~126_combout\,
	datab => \local_count~101_combout\,
	datac => \local_count~127_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~128_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(10),
	combout => \SRC2~combout\(10));

-- Location: LCCOMB_X23_Y27_N20
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\SRC2~combout\(10) $ (\SRC1~combout\(10) $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\SRC2~combout\(10) & ((\SRC1~combout\(10)) # (!\Add0~19\))) # (!\SRC2~combout\(10) & (\SRC1~combout\(10) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(10),
	datab => \SRC1~combout\(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X25_Y27_N20
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\SRC1~combout\(10) $ (\SRC2~combout\(10) $ (\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\SRC1~combout\(10) & ((!\Add1~19\) # (!\SRC2~combout\(10)))) # (!\SRC1~combout\(10) & (!\SRC2~combout\(10) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(10),
	datab => \SRC2~combout\(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X24_Y29_N8
\local_count~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~29_combout\ = (\CONTROL~combout\(2) & (\CONTROL~combout\(1) & ((\Add1~20_combout\)))) # (!\CONTROL~combout\(2) & (((\Add0~20_combout\)) # (!\CONTROL~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(2),
	datab => \CONTROL~combout\(1),
	datac => \Add0~20_combout\,
	datad => \Add1~20_combout\,
	combout => \local_count~29_combout\);

-- Location: LCCOMB_X24_Y29_N26
\local_count~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~204_combout\ = (\local_count~29_combout\ & !\CONTROL~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \local_count~29_combout\,
	datac => \CONTROL~combout\(0),
	combout => \local_count~204_combout\);

-- Location: LCCOMB_X24_Y29_N16
\local_count~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~130_combout\ = (\local_count~98_combout\ & ((\SRC1~combout\(10) & ((\SRC2~combout\(10)) # (!\local_count~204_combout\))) # (!\SRC1~combout\(10) & (\SRC2~combout\(10) & !\local_count~204_combout\)))) # (!\local_count~98_combout\ & 
-- (((\local_count~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(10),
	datab => \local_count~98_combout\,
	datac => \SRC2~combout\(10),
	datad => \local_count~204_combout\,
	combout => \local_count~130_combout\);

-- Location: LCCOMB_X23_Y31_N24
\local_count~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~129_combout\ = (!\SRC2~combout\(10) & !\SRC1~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC2~combout\(10),
	datad => \SRC1~combout\(10),
	combout => \local_count~129_combout\);

-- Location: LCCOMB_X22_Y28_N0
\local_count~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~131_combout\ = (\local_count~130_combout\ & (((\local_count~129_combout\ & \local_count~101_combout\)) # (!\CONTROL~combout\(3)))) # (!\local_count~130_combout\ & (\local_count~129_combout\ & (\local_count~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~130_combout\,
	datab => \local_count~129_combout\,
	datac => \local_count~101_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~131_combout\);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(11),
	combout => \SRC1~combout\(11));

-- Location: LCCOMB_X22_Y28_N18
\local_count~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~132_combout\ = (!\SRC2~combout\(11) & !\SRC1~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC2~combout\(11),
	datac => \SRC1~combout\(11),
	combout => \local_count~132_combout\);

-- Location: LCCOMB_X25_Y27_N22
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\SRC2~combout\(11) & ((\SRC1~combout\(11) & (!\Add1~21\)) # (!\SRC1~combout\(11) & ((\Add1~21\) # (GND))))) # (!\SRC2~combout\(11) & ((\SRC1~combout\(11) & (\Add1~21\ & VCC)) # (!\SRC1~combout\(11) & (!\Add1~21\))))
-- \Add1~23\ = CARRY((\SRC2~combout\(11) & ((!\Add1~21\) # (!\SRC1~combout\(11)))) # (!\SRC2~combout\(11) & (!\SRC1~combout\(11) & !\Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(11),
	datab => \SRC1~combout\(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X23_Y27_N22
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\SRC2~combout\(11) & ((\SRC1~combout\(11) & (\Add0~21\ & VCC)) # (!\SRC1~combout\(11) & (!\Add0~21\)))) # (!\SRC2~combout\(11) & ((\SRC1~combout\(11) & (!\Add0~21\)) # (!\SRC1~combout\(11) & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((\SRC2~combout\(11) & (!\SRC1~combout\(11) & !\Add0~21\)) # (!\SRC2~combout\(11) & ((!\Add0~21\) # (!\SRC1~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(11),
	datab => \SRC1~combout\(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X22_Y28_N16
\local_count~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~32_combout\ = (\CONTROL~combout\(2) & (\Add1~22_combout\ & ((\CONTROL~combout\(1))))) # (!\CONTROL~combout\(2) & (((\Add0~22_combout\) # (!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(2),
	datab => \Add1~22_combout\,
	datac => \Add0~22_combout\,
	datad => \CONTROL~combout\(1),
	combout => \local_count~32_combout\);

-- Location: LCCOMB_X22_Y28_N10
\local_count~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~205_combout\ = (!\CONTROL~combout\(0) & \local_count~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROL~combout\(0),
	datac => \local_count~32_combout\,
	combout => \local_count~205_combout\);

-- Location: LCCOMB_X22_Y28_N20
\local_count~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~133_combout\ = (\local_count~98_combout\ & ((\SRC1~combout\(11) & ((\SRC2~combout\(11)) # (!\local_count~205_combout\))) # (!\SRC1~combout\(11) & (\SRC2~combout\(11) & !\local_count~205_combout\)))) # (!\local_count~98_combout\ & 
-- (((\local_count~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(11),
	datab => \SRC2~combout\(11),
	datac => \local_count~98_combout\,
	datad => \local_count~205_combout\,
	combout => \local_count~133_combout\);

-- Location: LCCOMB_X22_Y28_N30
\local_count~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~134_combout\ = (\local_count~101_combout\ & ((\local_count~132_combout\) # ((\local_count~133_combout\ & !\CONTROL~combout\(3))))) # (!\local_count~101_combout\ & (((\local_count~133_combout\ & !\CONTROL~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~101_combout\,
	datab => \local_count~132_combout\,
	datac => \local_count~133_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~134_combout\);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(12),
	combout => \SRC2~combout\(12));

-- Location: LCCOMB_X22_Y28_N26
\local_count~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~136_combout\ = (\local_count~206_combout\ & (((\SRC1~combout\(12) & \SRC2~combout\(12))) # (!\local_count~98_combout\))) # (!\local_count~206_combout\ & (\local_count~98_combout\ & ((\SRC1~combout\(12)) # (\SRC2~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~206_combout\,
	datab => \local_count~98_combout\,
	datac => \SRC1~combout\(12),
	datad => \SRC2~combout\(12),
	combout => \local_count~136_combout\);

-- Location: LCCOMB_X22_Y28_N24
\local_count~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~135_combout\ = (!\SRC1~combout\(12) & !\SRC2~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(12),
	datad => \SRC2~combout\(12),
	combout => \local_count~135_combout\);

-- Location: LCCOMB_X22_Y28_N12
\local_count~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~137_combout\ = (\local_count~101_combout\ & ((\local_count~135_combout\) # ((\local_count~136_combout\ & !\CONTROL~combout\(3))))) # (!\local_count~101_combout\ & (\local_count~136_combout\ & ((!\CONTROL~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~101_combout\,
	datab => \local_count~136_combout\,
	datac => \local_count~135_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~137_combout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(13),
	combout => \SRC1~combout\(13));

-- Location: LCCOMB_X23_Y27_N26
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\SRC2~combout\(13) & ((\SRC1~combout\(13) & (\Add0~25\ & VCC)) # (!\SRC1~combout\(13) & (!\Add0~25\)))) # (!\SRC2~combout\(13) & ((\SRC1~combout\(13) & (!\Add0~25\)) # (!\SRC1~combout\(13) & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((\SRC2~combout\(13) & (!\SRC1~combout\(13) & !\Add0~25\)) # (!\SRC2~combout\(13) & ((!\Add0~25\) # (!\SRC1~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(13),
	datab => \SRC1~combout\(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X24_Y28_N18
\local_count~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~38_combout\ = (\CONTROL~combout\(2) & (\Add1~26_combout\ & ((\CONTROL~combout\(1))))) # (!\CONTROL~combout\(2) & (((\Add0~26_combout\) # (!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \CONTROL~combout\(2),
	datac => \Add0~26_combout\,
	datad => \CONTROL~combout\(1),
	combout => \local_count~38_combout\);

-- Location: LCCOMB_X24_Y28_N4
\local_count~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~207_combout\ = (!\CONTROL~combout\(0) & \local_count~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROL~combout\(0),
	datad => \local_count~38_combout\,
	combout => \local_count~207_combout\);

-- Location: LCCOMB_X24_Y28_N2
\local_count~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~139_combout\ = (\local_count~98_combout\ & ((\SRC2~combout\(13) & ((\SRC1~combout\(13)) # (!\local_count~207_combout\))) # (!\SRC2~combout\(13) & (!\local_count~207_combout\ & \SRC1~combout\(13))))) # (!\local_count~98_combout\ & 
-- (((\local_count~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(13),
	datab => \local_count~98_combout\,
	datac => \local_count~207_combout\,
	datad => \SRC1~combout\(13),
	combout => \local_count~139_combout\);

-- Location: LCCOMB_X24_Y28_N0
\local_count~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~138_combout\ = (!\SRC1~combout\(13) & !\SRC2~combout\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(13),
	datad => \SRC2~combout\(13),
	combout => \local_count~138_combout\);

-- Location: LCCOMB_X24_Y28_N20
\local_count~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~140_combout\ = (\CONTROL~combout\(3) & (((\local_count~101_combout\ & \local_count~138_combout\)))) # (!\CONTROL~combout\(3) & ((\local_count~139_combout\) # ((\local_count~101_combout\ & \local_count~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(3),
	datab => \local_count~139_combout\,
	datac => \local_count~101_combout\,
	datad => \local_count~138_combout\,
	combout => \local_count~140_combout\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(14),
	combout => \SRC1~combout\(14));

-- Location: LCCOMB_X23_Y27_N28
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\SRC2~combout\(14) $ (\SRC1~combout\(14) $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((\SRC2~combout\(14) & ((\SRC1~combout\(14)) # (!\Add0~27\))) # (!\SRC2~combout\(14) & (\SRC1~combout\(14) & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(14),
	datab => \SRC1~combout\(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X22_Y27_N28
\local_count~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~41_combout\ = (\CONTROL~combout\(2) & (\Add1~28_combout\ & (\CONTROL~combout\(1)))) # (!\CONTROL~combout\(2) & (((\Add0~28_combout\) # (!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \CONTROL~combout\(2),
	datac => \CONTROL~combout\(1),
	datad => \Add0~28_combout\,
	combout => \local_count~41_combout\);

-- Location: LCCOMB_X22_Y27_N30
\local_count~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~208_combout\ = (\local_count~41_combout\ & !\CONTROL~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \local_count~41_combout\,
	datad => \CONTROL~combout\(0),
	combout => \local_count~208_combout\);

-- Location: LCCOMB_X22_Y27_N10
\local_count~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~142_combout\ = (\local_count~98_combout\ & ((\SRC1~combout\(14) & ((\SRC2~combout\(14)) # (!\local_count~208_combout\))) # (!\SRC1~combout\(14) & (\SRC2~combout\(14) & !\local_count~208_combout\)))) # (!\local_count~98_combout\ & 
-- (((\local_count~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~98_combout\,
	datab => \SRC1~combout\(14),
	datac => \SRC2~combout\(14),
	datad => \local_count~208_combout\,
	combout => \local_count~142_combout\);

-- Location: LCCOMB_X22_Y27_N8
\local_count~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~141_combout\ = (!\SRC2~combout\(14) & !\SRC1~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC2~combout\(14),
	datad => \SRC1~combout\(14),
	combout => \local_count~141_combout\);

-- Location: LCCOMB_X22_Y27_N12
\local_count~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~143_combout\ = (\local_count~142_combout\ & (((\local_count~101_combout\ & \local_count~141_combout\)) # (!\CONTROL~combout\(3)))) # (!\local_count~142_combout\ & (\local_count~101_combout\ & (\local_count~141_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~142_combout\,
	datab => \local_count~101_combout\,
	datac => \local_count~141_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~143_combout\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(15),
	combout => \SRC1~combout\(15));

-- Location: LCCOMB_X22_Y27_N22
\local_count~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~144_combout\ = (!\SRC2~combout\(15) & !\SRC1~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(15),
	datac => \SRC1~combout\(15),
	combout => \local_count~144_combout\);

-- Location: LCCOMB_X23_Y27_N30
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\SRC2~combout\(15) & ((\SRC1~combout\(15) & (\Add0~29\ & VCC)) # (!\SRC1~combout\(15) & (!\Add0~29\)))) # (!\SRC2~combout\(15) & ((\SRC1~combout\(15) & (!\Add0~29\)) # (!\SRC1~combout\(15) & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((\SRC2~combout\(15) & (!\SRC1~combout\(15) & !\Add0~29\)) # (!\SRC2~combout\(15) & ((!\Add0~29\) # (!\SRC1~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(15),
	datab => \SRC1~combout\(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X22_Y27_N24
\local_count~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~44_combout\ = (\CONTROL~combout\(2) & (\Add1~30_combout\ & (\CONTROL~combout\(1)))) # (!\CONTROL~combout\(2) & (((\Add0~30_combout\) # (!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \CONTROL~combout\(2),
	datac => \CONTROL~combout\(1),
	datad => \Add0~30_combout\,
	combout => \local_count~44_combout\);

-- Location: LCCOMB_X22_Y27_N26
\local_count~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~209_combout\ = (\local_count~44_combout\ & !\CONTROL~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \local_count~44_combout\,
	datad => \CONTROL~combout\(0),
	combout => \local_count~209_combout\);

-- Location: LCCOMB_X22_Y27_N16
\local_count~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~145_combout\ = (\local_count~209_combout\ & (((\SRC2~combout\(15) & \SRC1~combout\(15))) # (!\local_count~98_combout\))) # (!\local_count~209_combout\ & (\local_count~98_combout\ & ((\SRC2~combout\(15)) # (\SRC1~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(15),
	datab => \local_count~209_combout\,
	datac => \SRC1~combout\(15),
	datad => \local_count~98_combout\,
	combout => \local_count~145_combout\);

-- Location: LCCOMB_X22_Y27_N18
\local_count~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~146_combout\ = (\local_count~144_combout\ & ((\local_count~101_combout\) # ((\local_count~145_combout\ & !\CONTROL~combout\(3))))) # (!\local_count~144_combout\ & (((\local_count~145_combout\ & !\CONTROL~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~144_combout\,
	datab => \local_count~101_combout\,
	datac => \local_count~145_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~146_combout\);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(16),
	combout => \SRC1~combout\(16));

-- Location: LCCOMB_X22_Y27_N14
\local_count~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~148_combout\ = (\local_count~210_combout\ & (((\SRC1~combout\(16) & \SRC2~combout\(16))) # (!\local_count~98_combout\))) # (!\local_count~210_combout\ & (\local_count~98_combout\ & ((\SRC1~combout\(16)) # (\SRC2~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~210_combout\,
	datab => \SRC1~combout\(16),
	datac => \SRC2~combout\(16),
	datad => \local_count~98_combout\,
	combout => \local_count~148_combout\);

-- Location: LCCOMB_X22_Y27_N4
\local_count~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~147_combout\ = (!\SRC1~combout\(16) & !\SRC2~combout\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC1~combout\(16),
	datac => \SRC2~combout\(16),
	combout => \local_count~147_combout\);

-- Location: LCCOMB_X22_Y27_N0
\local_count~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~149_combout\ = (\local_count~148_combout\ & (((\local_count~101_combout\ & \local_count~147_combout\)) # (!\CONTROL~combout\(3)))) # (!\local_count~148_combout\ & (\local_count~101_combout\ & (\local_count~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~148_combout\,
	datab => \local_count~101_combout\,
	datac => \local_count~147_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~149_combout\);

-- Location: LCCOMB_X25_Y26_N2
\Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\SRC1~combout\(17) & ((\SRC2~combout\(17) & (!\Add1~33\)) # (!\SRC2~combout\(17) & (\Add1~33\ & VCC)))) # (!\SRC1~combout\(17) & ((\SRC2~combout\(17) & ((\Add1~33\) # (GND))) # (!\SRC2~combout\(17) & (!\Add1~33\))))
-- \Add1~35\ = CARRY((\SRC1~combout\(17) & (\SRC2~combout\(17) & !\Add1~33\)) # (!\SRC1~combout\(17) & ((\SRC2~combout\(17)) # (!\Add1~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(17),
	datab => \SRC2~combout\(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X24_Y28_N22
\local_count~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~50_combout\ = (\CONTROL~combout\(2) & (((\Add1~34_combout\ & \CONTROL~combout\(1))))) # (!\CONTROL~combout\(2) & ((\Add0~34_combout\) # ((!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \CONTROL~combout\(2),
	datac => \Add1~34_combout\,
	datad => \CONTROL~combout\(1),
	combout => \local_count~50_combout\);

-- Location: LCCOMB_X24_Y28_N8
\local_count~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~211_combout\ = (!\CONTROL~combout\(0) & \local_count~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROL~combout\(0),
	datad => \local_count~50_combout\,
	combout => \local_count~211_combout\);

-- Location: LCCOMB_X24_Y28_N16
\local_count~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~151_combout\ = (\local_count~98_combout\ & ((\SRC1~combout\(17) & ((\SRC2~combout\(17)) # (!\local_count~211_combout\))) # (!\SRC1~combout\(17) & (!\local_count~211_combout\ & \SRC2~combout\(17))))) # (!\local_count~98_combout\ & 
-- (((\local_count~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(17),
	datab => \local_count~98_combout\,
	datac => \local_count~211_combout\,
	datad => \SRC2~combout\(17),
	combout => \local_count~151_combout\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(17),
	combout => \SRC1~combout\(17));

-- Location: LCCOMB_X24_Y28_N30
\local_count~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~150_combout\ = (!\SRC1~combout\(17) & !\SRC2~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(17),
	datad => \SRC2~combout\(17),
	combout => \local_count~150_combout\);

-- Location: LCCOMB_X24_Y28_N10
\local_count~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~152_combout\ = (\local_count~151_combout\ & (((\local_count~150_combout\ & \local_count~101_combout\)) # (!\CONTROL~combout\(3)))) # (!\local_count~151_combout\ & (\local_count~150_combout\ & (\local_count~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~151_combout\,
	datab => \local_count~150_combout\,
	datac => \local_count~101_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~152_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(18),
	combout => \SRC2~combout\(18));

-- Location: LCCOMB_X24_Y26_N26
\local_count~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~154_combout\ = (\local_count~212_combout\ & (((\SRC1~combout\(18) & \SRC2~combout\(18))) # (!\local_count~98_combout\))) # (!\local_count~212_combout\ & (\local_count~98_combout\ & ((\SRC1~combout\(18)) # (\SRC2~combout\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~212_combout\,
	datab => \local_count~98_combout\,
	datac => \SRC1~combout\(18),
	datad => \SRC2~combout\(18),
	combout => \local_count~154_combout\);

-- Location: LCCOMB_X24_Y26_N8
\local_count~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~153_combout\ = (!\SRC1~combout\(18) & !\SRC2~combout\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(18),
	datad => \SRC2~combout\(18),
	combout => \local_count~153_combout\);

-- Location: LCCOMB_X24_Y26_N12
\local_count~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~155_combout\ = (\CONTROL~combout\(3) & (((\local_count~153_combout\ & \local_count~101_combout\)))) # (!\CONTROL~combout\(3) & ((\local_count~154_combout\) # ((\local_count~153_combout\ & \local_count~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(3),
	datab => \local_count~154_combout\,
	datac => \local_count~153_combout\,
	datad => \local_count~101_combout\,
	combout => \local_count~155_combout\);

-- Location: LCCOMB_X24_Y26_N6
\local_count~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~156_combout\ = (!\SRC2~combout\(19) & !\SRC1~combout\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(19),
	datad => \SRC1~combout\(19),
	combout => \local_count~156_combout\);

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(19),
	combout => \SRC2~combout\(19));

-- Location: LCCOMB_X23_Y26_N6
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\SRC1~combout\(19) & ((\SRC2~combout\(19) & (\Add0~37\ & VCC)) # (!\SRC2~combout\(19) & (!\Add0~37\)))) # (!\SRC1~combout\(19) & ((\SRC2~combout\(19) & (!\Add0~37\)) # (!\SRC2~combout\(19) & ((\Add0~37\) # (GND)))))
-- \Add0~39\ = CARRY((\SRC1~combout\(19) & (!\SRC2~combout\(19) & !\Add0~37\)) # (!\SRC1~combout\(19) & ((!\Add0~37\) # (!\SRC2~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(19),
	datab => \SRC2~combout\(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X25_Y26_N6
\Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\SRC1~combout\(19) & ((\SRC2~combout\(19) & (!\Add1~37\)) # (!\SRC2~combout\(19) & (\Add1~37\ & VCC)))) # (!\SRC1~combout\(19) & ((\SRC2~combout\(19) & ((\Add1~37\) # (GND))) # (!\SRC2~combout\(19) & (!\Add1~37\))))
-- \Add1~39\ = CARRY((\SRC1~combout\(19) & (\SRC2~combout\(19) & !\Add1~37\)) # (!\SRC1~combout\(19) & ((\SRC2~combout\(19)) # (!\Add1~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(19),
	datab => \SRC2~combout\(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X24_Y26_N24
\local_count~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~56_combout\ = (\CONTROL~combout\(2) & (\CONTROL~combout\(1) & ((\Add1~38_combout\)))) # (!\CONTROL~combout\(2) & (((\Add0~38_combout\)) # (!\CONTROL~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(2),
	datab => \CONTROL~combout\(1),
	datac => \Add0~38_combout\,
	datad => \Add1~38_combout\,
	combout => \local_count~56_combout\);

-- Location: LCCOMB_X24_Y26_N2
\local_count~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~213_combout\ = (!\CONTROL~combout\(0) & \local_count~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(0),
	datac => \local_count~56_combout\,
	combout => \local_count~213_combout\);

-- Location: LCCOMB_X24_Y26_N16
\local_count~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~157_combout\ = (\local_count~213_combout\ & (((\SRC2~combout\(19) & \SRC1~combout\(19))) # (!\local_count~98_combout\))) # (!\local_count~213_combout\ & (\local_count~98_combout\ & ((\SRC2~combout\(19)) # (\SRC1~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(19),
	datab => \SRC1~combout\(19),
	datac => \local_count~213_combout\,
	datad => \local_count~98_combout\,
	combout => \local_count~157_combout\);

-- Location: LCCOMB_X24_Y26_N10
\local_count~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~158_combout\ = (\local_count~156_combout\ & ((\local_count~101_combout\) # ((\local_count~157_combout\ & !\CONTROL~combout\(3))))) # (!\local_count~156_combout\ & (((\local_count~157_combout\ & !\CONTROL~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~156_combout\,
	datab => \local_count~101_combout\,
	datac => \local_count~157_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~158_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(20),
	combout => \SRC2~combout\(20));

-- Location: LCCOMB_X24_Y30_N24
\local_count~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~159_combout\ = (!\SRC1~combout\(20) & !\SRC2~combout\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC1~combout\(20),
	datad => \SRC2~combout\(20),
	combout => \local_count~159_combout\);

-- Location: LCCOMB_X24_Y30_N2
\local_count~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~160_combout\ = (\local_count~214_combout\ & (((\SRC1~combout\(20) & \SRC2~combout\(20))) # (!\local_count~98_combout\))) # (!\local_count~214_combout\ & (\local_count~98_combout\ & ((\SRC1~combout\(20)) # (\SRC2~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~214_combout\,
	datab => \SRC1~combout\(20),
	datac => \local_count~98_combout\,
	datad => \SRC2~combout\(20),
	combout => \local_count~160_combout\);

-- Location: LCCOMB_X24_Y30_N4
\local_count~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~161_combout\ = (\local_count~159_combout\ & ((\local_count~101_combout\) # ((\local_count~160_combout\ & !\CONTROL~combout\(3))))) # (!\local_count~159_combout\ & (\local_count~160_combout\ & ((!\CONTROL~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~159_combout\,
	datab => \local_count~160_combout\,
	datac => \local_count~101_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~161_combout\);

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(21),
	combout => \SRC2~combout\(21));

-- Location: LCCOMB_X24_Y26_N20
\local_count~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~162_combout\ = (!\SRC1~combout\(21) & !\SRC2~combout\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(21),
	datad => \SRC2~combout\(21),
	combout => \local_count~162_combout\);

-- Location: LCCOMB_X25_Y26_N10
\Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\SRC1~combout\(21) & ((\SRC2~combout\(21) & (!\Add1~41\)) # (!\SRC2~combout\(21) & (\Add1~41\ & VCC)))) # (!\SRC1~combout\(21) & ((\SRC2~combout\(21) & ((\Add1~41\) # (GND))) # (!\SRC2~combout\(21) & (!\Add1~41\))))
-- \Add1~43\ = CARRY((\SRC1~combout\(21) & (\SRC2~combout\(21) & !\Add1~41\)) # (!\SRC1~combout\(21) & ((\SRC2~combout\(21)) # (!\Add1~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(21),
	datab => \SRC2~combout\(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X23_Y26_N10
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\SRC1~combout\(21) & ((\SRC2~combout\(21) & (\Add0~41\ & VCC)) # (!\SRC2~combout\(21) & (!\Add0~41\)))) # (!\SRC1~combout\(21) & ((\SRC2~combout\(21) & (!\Add0~41\)) # (!\SRC2~combout\(21) & ((\Add0~41\) # (GND)))))
-- \Add0~43\ = CARRY((\SRC1~combout\(21) & (!\SRC2~combout\(21) & !\Add0~41\)) # (!\SRC1~combout\(21) & ((!\Add0~41\) # (!\SRC2~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(21),
	datab => \SRC2~combout\(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X24_Y26_N4
\local_count~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~62_combout\ = (\CONTROL~combout\(2) & (\CONTROL~combout\(1) & (\Add1~42_combout\))) # (!\CONTROL~combout\(2) & (((\Add0~42_combout\)) # (!\CONTROL~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(2),
	datab => \CONTROL~combout\(1),
	datac => \Add1~42_combout\,
	datad => \Add0~42_combout\,
	combout => \local_count~62_combout\);

-- Location: LCCOMB_X24_Y26_N30
\local_count~215\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~215_combout\ = (!\CONTROL~combout\(0) & \local_count~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(0),
	datac => \local_count~62_combout\,
	combout => \local_count~215_combout\);

-- Location: LCCOMB_X24_Y26_N14
\local_count~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~163_combout\ = (\local_count~215_combout\ & (((\SRC1~combout\(21) & \SRC2~combout\(21))) # (!\local_count~98_combout\))) # (!\local_count~215_combout\ & (\local_count~98_combout\ & ((\SRC1~combout\(21)) # (\SRC2~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(21),
	datab => \local_count~215_combout\,
	datac => \SRC2~combout\(21),
	datad => \local_count~98_combout\,
	combout => \local_count~163_combout\);

-- Location: LCCOMB_X24_Y26_N0
\local_count~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~164_combout\ = (\local_count~162_combout\ & ((\local_count~101_combout\) # ((\local_count~163_combout\ & !\CONTROL~combout\(3))))) # (!\local_count~162_combout\ & (((\local_count~163_combout\ & !\CONTROL~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~162_combout\,
	datab => \local_count~101_combout\,
	datac => \local_count~163_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~164_combout\);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(22),
	combout => \SRC1~combout\(22));

-- Location: LCCOMB_X24_Y30_N6
\local_count~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~165_combout\ = (!\SRC1~combout\(22) & !\SRC2~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC1~combout\(22),
	datad => \SRC2~combout\(22),
	combout => \local_count~165_combout\);

-- Location: LCCOMB_X24_Y30_N8
\local_count~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~166_combout\ = (\local_count~216_combout\ & (((\SRC1~combout\(22) & \SRC2~combout\(22))) # (!\local_count~98_combout\))) # (!\local_count~216_combout\ & (\local_count~98_combout\ & ((\SRC1~combout\(22)) # (\SRC2~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~216_combout\,
	datab => \SRC1~combout\(22),
	datac => \local_count~98_combout\,
	datad => \SRC2~combout\(22),
	combout => \local_count~166_combout\);

-- Location: LCCOMB_X24_Y30_N18
\local_count~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~167_combout\ = (\local_count~165_combout\ & ((\local_count~101_combout\) # ((\local_count~166_combout\ & !\CONTROL~combout\(3))))) # (!\local_count~165_combout\ & (\local_count~166_combout\ & ((!\CONTROL~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~165_combout\,
	datab => \local_count~166_combout\,
	datac => \local_count~101_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~167_combout\);

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(23),
	combout => \SRC2~combout\(23));

-- Location: LCCOMB_X22_Y28_N14
\local_count~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~168_combout\ = (!\SRC1~combout\(23) & !\SRC2~combout\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC1~combout\(23),
	datac => \SRC2~combout\(23),
	combout => \local_count~168_combout\);

-- Location: LCCOMB_X22_Y28_N8
\local_count~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~169_combout\ = (\local_count~217_combout\ & (((\SRC2~combout\(23) & \SRC1~combout\(23))) # (!\local_count~98_combout\))) # (!\local_count~217_combout\ & (\local_count~98_combout\ & ((\SRC2~combout\(23)) # (\SRC1~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~217_combout\,
	datab => \SRC2~combout\(23),
	datac => \local_count~98_combout\,
	datad => \SRC1~combout\(23),
	combout => \local_count~169_combout\);

-- Location: LCCOMB_X22_Y28_N2
\local_count~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~170_combout\ = (\local_count~101_combout\ & ((\local_count~168_combout\) # ((\local_count~169_combout\ & !\CONTROL~combout\(3))))) # (!\local_count~101_combout\ & (((\local_count~169_combout\ & !\CONTROL~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~101_combout\,
	datab => \local_count~168_combout\,
	datac => \local_count~169_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~170_combout\);

-- Location: LCCOMB_X25_Y26_N16
\Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((\SRC2~combout\(24) $ (\SRC1~combout\(24) $ (\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((\SRC2~combout\(24) & (\SRC1~combout\(24) & !\Add1~47\)) # (!\SRC2~combout\(24) & ((\SRC1~combout\(24)) # (!\Add1~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(24),
	datab => \SRC1~combout\(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X23_Y28_N8
\local_count~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~71_combout\ = (\CONTROL~combout\(2) & (((\CONTROL~combout\(1) & \Add1~48_combout\)))) # (!\CONTROL~combout\(2) & ((\Add0~48_combout\) # ((!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datab => \CONTROL~combout\(2),
	datac => \CONTROL~combout\(1),
	datad => \Add1~48_combout\,
	combout => \local_count~71_combout\);

-- Location: LCCOMB_X23_Y28_N2
\local_count~218\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~218_combout\ = (\local_count~71_combout\ & !\CONTROL~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \local_count~71_combout\,
	datac => \CONTROL~combout\(0),
	combout => \local_count~218_combout\);

-- Location: LCCOMB_X23_Y28_N18
\local_count~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~172_combout\ = (\local_count~98_combout\ & ((\SRC2~combout\(24) & ((\SRC1~combout\(24)) # (!\local_count~218_combout\))) # (!\SRC2~combout\(24) & (\SRC1~combout\(24) & !\local_count~218_combout\)))) # (!\local_count~98_combout\ & 
-- (((\local_count~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(24),
	datab => \SRC1~combout\(24),
	datac => \local_count~98_combout\,
	datad => \local_count~218_combout\,
	combout => \local_count~172_combout\);

-- Location: LCCOMB_X23_Y28_N24
\local_count~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~171_combout\ = (!\SRC2~combout\(24) & !\SRC1~combout\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(24),
	datac => \SRC1~combout\(24),
	combout => \local_count~171_combout\);

-- Location: LCCOMB_X23_Y28_N4
\local_count~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~173_combout\ = (\local_count~172_combout\ & (((\local_count~101_combout\ & \local_count~171_combout\)) # (!\CONTROL~combout\(3)))) # (!\local_count~172_combout\ & (\local_count~101_combout\ & (\local_count~171_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~172_combout\,
	datab => \local_count~101_combout\,
	datac => \local_count~171_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~173_combout\);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(25),
	combout => \SRC1~combout\(25));

-- Location: LCCOMB_X24_Y27_N24
\local_count~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~174_combout\ = (!\SRC1~combout\(25) & !\SRC2~combout\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC1~combout\(25),
	datad => \SRC2~combout\(25),
	combout => \local_count~174_combout\);

-- Location: LCCOMB_X24_Y27_N2
\local_count~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~175_combout\ = (\local_count~219_combout\ & (((\SRC2~combout\(25) & \SRC1~combout\(25))) # (!\local_count~98_combout\))) # (!\local_count~219_combout\ & (\local_count~98_combout\ & ((\SRC2~combout\(25)) # (\SRC1~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~219_combout\,
	datab => \SRC2~combout\(25),
	datac => \local_count~98_combout\,
	datad => \SRC1~combout\(25),
	combout => \local_count~175_combout\);

-- Location: LCCOMB_X24_Y27_N4
\local_count~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~176_combout\ = (\local_count~174_combout\ & ((\local_count~101_combout\) # ((!\CONTROL~combout\(3) & \local_count~175_combout\)))) # (!\local_count~174_combout\ & (((!\CONTROL~combout\(3) & \local_count~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~174_combout\,
	datab => \local_count~101_combout\,
	datac => \CONTROL~combout\(3),
	datad => \local_count~175_combout\,
	combout => \local_count~176_combout\);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(26),
	combout => \SRC2~combout\(26));

-- Location: LCCOMB_X23_Y28_N6
\local_count~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~177_combout\ = (!\SRC1~combout\(26) & !\SRC2~combout\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(26),
	datad => \SRC2~combout\(26),
	combout => \local_count~177_combout\);

-- Location: LCCOMB_X23_Y26_N20
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((\SRC2~combout\(26) $ (\SRC1~combout\(26) $ (!\Add0~51\)))) # (GND)
-- \Add0~53\ = CARRY((\SRC2~combout\(26) & ((\SRC1~combout\(26)) # (!\Add0~51\))) # (!\SRC2~combout\(26) & (\SRC1~combout\(26) & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(26),
	datab => \SRC1~combout\(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X23_Y28_N28
\local_count~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~77_combout\ = (\CONTROL~combout\(2) & (\Add1~52_combout\ & (\CONTROL~combout\(1)))) # (!\CONTROL~combout\(2) & (((\Add0~52_combout\) # (!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~52_combout\,
	datab => \CONTROL~combout\(2),
	datac => \CONTROL~combout\(1),
	datad => \Add0~52_combout\,
	combout => \local_count~77_combout\);

-- Location: LCCOMB_X23_Y28_N14
\local_count~220\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~220_combout\ = (!\CONTROL~combout\(0) & \local_count~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROL~combout\(0),
	datad => \local_count~77_combout\,
	combout => \local_count~220_combout\);

-- Location: LCCOMB_X23_Y28_N16
\local_count~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~178_combout\ = (\local_count~98_combout\ & ((\SRC1~combout\(26) & ((\SRC2~combout\(26)) # (!\local_count~220_combout\))) # (!\SRC1~combout\(26) & (!\local_count~220_combout\ & \SRC2~combout\(26))))) # (!\local_count~98_combout\ & 
-- (((\local_count~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(26),
	datab => \local_count~98_combout\,
	datac => \local_count~220_combout\,
	datad => \SRC2~combout\(26),
	combout => \local_count~178_combout\);

-- Location: LCCOMB_X23_Y28_N26
\local_count~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~179_combout\ = (\local_count~177_combout\ & ((\local_count~101_combout\) # ((\local_count~178_combout\ & !\CONTROL~combout\(3))))) # (!\local_count~177_combout\ & (((\local_count~178_combout\ & !\CONTROL~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~177_combout\,
	datab => \local_count~101_combout\,
	datac => \local_count~178_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~179_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(27),
	combout => \SRC2~combout\(27));

-- Location: LCCOMB_X25_Y26_N22
\Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\SRC1~combout\(27) & ((\SRC2~combout\(27) & (!\Add1~53\)) # (!\SRC2~combout\(27) & (\Add1~53\ & VCC)))) # (!\SRC1~combout\(27) & ((\SRC2~combout\(27) & ((\Add1~53\) # (GND))) # (!\SRC2~combout\(27) & (!\Add1~53\))))
-- \Add1~55\ = CARRY((\SRC1~combout\(27) & (\SRC2~combout\(27) & !\Add1~53\)) # (!\SRC1~combout\(27) & ((\SRC2~combout\(27)) # (!\Add1~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(27),
	datab => \SRC2~combout\(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X24_Y30_N26
\local_count~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~80_combout\ = (\CONTROL~combout\(2) & (((\Add1~54_combout\ & \CONTROL~combout\(1))))) # (!\CONTROL~combout\(2) & ((\Add0~54_combout\) # ((!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datab => \Add1~54_combout\,
	datac => \CONTROL~combout\(2),
	datad => \CONTROL~combout\(1),
	combout => \local_count~80_combout\);

-- Location: LCCOMB_X24_Y30_N12
\local_count~221\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~221_combout\ = (!\CONTROL~combout\(0) & \local_count~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROL~combout\(0),
	datad => \local_count~80_combout\,
	combout => \local_count~221_combout\);

-- Location: LCCOMB_X24_Y30_N30
\local_count~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~181_combout\ = (\local_count~98_combout\ & ((\SRC1~combout\(27) & ((\SRC2~combout\(27)) # (!\local_count~221_combout\))) # (!\SRC1~combout\(27) & (\SRC2~combout\(27) & !\local_count~221_combout\)))) # (!\local_count~98_combout\ & 
-- (((\local_count~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~98_combout\,
	datab => \SRC1~combout\(27),
	datac => \SRC2~combout\(27),
	datad => \local_count~221_combout\,
	combout => \local_count~181_combout\);

-- Location: LCCOMB_X24_Y30_N28
\local_count~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~180_combout\ = (!\SRC2~combout\(27) & !\SRC1~combout\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC2~combout\(27),
	datac => \SRC1~combout\(27),
	combout => \local_count~180_combout\);

-- Location: LCCOMB_X24_Y30_N0
\local_count~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~182_combout\ = (\local_count~181_combout\ & (((\local_count~180_combout\ & \local_count~101_combout\)) # (!\CONTROL~combout\(3)))) # (!\local_count~181_combout\ & (\local_count~180_combout\ & (\local_count~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~181_combout\,
	datab => \local_count~180_combout\,
	datac => \local_count~101_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~182_combout\);

-- Location: LCCOMB_X22_Y26_N24
\local_count~222\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~222_combout\ = (\local_count~83_combout\ & !\CONTROL~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~83_combout\,
	datad => \CONTROL~combout\(0),
	combout => \local_count~222_combout\);

-- Location: LCCOMB_X22_Y26_N26
\local_count~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~184_combout\ = (\local_count~98_combout\ & ((\SRC1~combout\(28) & ((\SRC2~combout\(28)) # (!\local_count~222_combout\))) # (!\SRC1~combout\(28) & (!\local_count~222_combout\ & \SRC2~combout\(28))))) # (!\local_count~98_combout\ & 
-- (((\local_count~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(28),
	datab => \local_count~98_combout\,
	datac => \local_count~222_combout\,
	datad => \SRC2~combout\(28),
	combout => \local_count~184_combout\);

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(28),
	combout => \SRC1~combout\(28));

-- Location: LCCOMB_X22_Y26_N8
\local_count~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~183_combout\ = (!\SRC2~combout\(28) & !\SRC1~combout\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(28),
	datad => \SRC1~combout\(28),
	combout => \local_count~183_combout\);

-- Location: LCCOMB_X22_Y26_N28
\local_count~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~185_combout\ = (\local_count~101_combout\ & ((\local_count~183_combout\) # ((\local_count~184_combout\ & !\CONTROL~combout\(3))))) # (!\local_count~101_combout\ & (\local_count~184_combout\ & ((!\CONTROL~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~101_combout\,
	datab => \local_count~184_combout\,
	datac => \local_count~183_combout\,
	datad => \CONTROL~combout\(3),
	combout => \local_count~185_combout\);

-- Location: LCCOMB_X24_Y29_N12
\local_count~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~86_combout\ = (\CONTROL~combout\(1) & ((\CONTROL~combout\(2) & (!\Add1~58_combout\)) # (!\CONTROL~combout\(2) & ((!\Add0~58_combout\))))) # (!\CONTROL~combout\(1) & (((\CONTROL~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datab => \Add0~58_combout\,
	datac => \CONTROL~combout\(1),
	datad => \CONTROL~combout\(2),
	combout => \local_count~86_combout\);

-- Location: LCCOMB_X24_Y29_N14
\local_count~223\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~223_combout\ = (\CONTROL~combout\(0)) # (\local_count~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROL~combout\(0),
	datad => \local_count~86_combout\,
	combout => \local_count~223_combout\);

-- Location: LCCOMB_X24_Y29_N4
\local_count~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~187_combout\ = (\local_count~98_combout\ & ((\SRC1~combout\(29) & (!\local_count~223_combout\ & !\SRC2~combout\(29))) # (!\SRC1~combout\(29) & ((!\SRC2~combout\(29)) # (!\local_count~223_combout\))))) # (!\local_count~98_combout\ & 
-- (((\local_count~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(29),
	datab => \local_count~98_combout\,
	datac => \local_count~223_combout\,
	datad => \SRC2~combout\(29),
	combout => \local_count~187_combout\);

-- Location: LCCOMB_X24_Y29_N2
\local_count~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~186_combout\ = (\SRC1~combout\(29)) # (\SRC2~combout\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(29),
	datad => \SRC2~combout\(29),
	combout => \local_count~186_combout\);

-- Location: LCCOMB_X24_Y29_N6
\local_count~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~188_combout\ = (\CONTROL~combout\(3) & (\local_count~101_combout\ & ((!\local_count~186_combout\)))) # (!\CONTROL~combout\(3) & (((\local_count~101_combout\ & !\local_count~186_combout\)) # (!\local_count~187_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(3),
	datab => \local_count~101_combout\,
	datac => \local_count~187_combout\,
	datad => \local_count~186_combout\,
	combout => \local_count~188_combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC1[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC1(29),
	combout => \SRC1~combout\(29));

-- Location: LCCOMB_X24_Y28_N26
\local_count~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~89_combout\ = (\CONTROL~combout\(2) & (((\Add1~60_combout\ & \CONTROL~combout\(1))))) # (!\CONTROL~combout\(2) & ((\Add0~60_combout\) # ((!\CONTROL~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \CONTROL~combout\(2),
	datac => \Add1~60_combout\,
	datad => \CONTROL~combout\(1),
	combout => \local_count~89_combout\);

-- Location: LCCOMB_X24_Y28_N28
\local_count~224\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~224_combout\ = (!\CONTROL~combout\(0) & \local_count~89_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROL~combout\(0),
	datad => \local_count~89_combout\,
	combout => \local_count~224_combout\);

-- Location: LCCOMB_X24_Y28_N6
\local_count~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~190_combout\ = (\local_count~98_combout\ & ((\SRC2~combout\(30) & ((\SRC1~combout\(30)) # (!\local_count~224_combout\))) # (!\SRC2~combout\(30) & (\SRC1~combout\(30) & !\local_count~224_combout\)))) # (!\local_count~98_combout\ & 
-- (((\local_count~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(30),
	datab => \SRC1~combout\(30),
	datac => \local_count~98_combout\,
	datad => \local_count~224_combout\,
	combout => \local_count~190_combout\);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SRC2[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SRC2(30),
	combout => \SRC2~combout\(30));

-- Location: LCCOMB_X24_Y28_N12
\local_count~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~189_combout\ = (!\SRC1~combout\(30) & !\SRC2~combout\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(30),
	datad => \SRC2~combout\(30),
	combout => \local_count~189_combout\);

-- Location: LCCOMB_X24_Y28_N24
\local_count~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~191_combout\ = (\local_count~190_combout\ & (((\local_count~101_combout\ & \local_count~189_combout\)) # (!\CONTROL~combout\(3)))) # (!\local_count~190_combout\ & (((\local_count~101_combout\ & \local_count~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~190_combout\,
	datab => \CONTROL~combout\(3),
	datac => \local_count~101_combout\,
	datad => \local_count~189_combout\,
	combout => \local_count~191_combout\);

-- Location: LCCOMB_X22_Y26_N20
\local_count~225\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~225_combout\ = (\local_count~92_combout\ & !\CONTROL~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~92_combout\,
	datad => \CONTROL~combout\(0),
	combout => \local_count~225_combout\);

-- Location: LCCOMB_X22_Y26_N0
\local_count~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~193_combout\ = (\local_count~225_combout\ & (((\SRC2~combout\(31) & \SRC1~combout\(31))) # (!\local_count~98_combout\))) # (!\local_count~225_combout\ & (\local_count~98_combout\ & ((\SRC2~combout\(31)) # (\SRC1~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(31),
	datab => \SRC1~combout\(31),
	datac => \local_count~225_combout\,
	datad => \local_count~98_combout\,
	combout => \local_count~193_combout\);

-- Location: LCCOMB_X22_Y26_N30
\local_count~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~192_combout\ = (!\SRC2~combout\(31) & !\SRC1~combout\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(31),
	datac => \SRC1~combout\(31),
	combout => \local_count~192_combout\);

-- Location: LCCOMB_X22_Y26_N2
\local_count~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \local_count~194_combout\ = (\CONTROL~combout\(3) & (((\local_count~101_combout\ & \local_count~192_combout\)))) # (!\CONTROL~combout\(3) & ((\local_count~193_combout\) # ((\local_count~101_combout\ & \local_count~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(3),
	datab => \local_count~193_combout\,
	datac => \local_count~101_combout\,
	datad => \local_count~192_combout\,
	combout => \local_count~194_combout\);

-- Location: LCCOMB_X22_Y26_N12
\Equal6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~7_combout\ = (\Equal6~6_combout\ & (!\local_count~185_combout\ & (!\local_count~179_combout\ & !\local_count~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~6_combout\,
	datab => \local_count~185_combout\,
	datac => \local_count~179_combout\,
	datad => \local_count~182_combout\,
	combout => \Equal6~7_combout\);

-- Location: LCCOMB_X24_Y26_N18
\Equal6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~8_combout\ = (!\local_count~158_combout\ & (!\local_count~164_combout\ & (!\local_count~161_combout\ & !\local_count~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~158_combout\,
	datab => \local_count~164_combout\,
	datac => \local_count~161_combout\,
	datad => \local_count~155_combout\,
	combout => \Equal6~8_combout\);

-- Location: LCCOMB_X22_Y26_N22
\Equal6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~9_combout\ = (!\local_count~194_combout\ & (!\local_count~191_combout\ & \Equal6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \local_count~194_combout\,
	datac => \local_count~191_combout\,
	datad => \Equal6~8_combout\,
	combout => \Equal6~9_combout\);

-- Location: LCCOMB_X22_Y28_N4
\Equal6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~4_combout\ = (!\local_count~137_combout\ & (!\local_count~131_combout\ & (!\local_count~134_combout\ & !\local_count~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~137_combout\,
	datab => \local_count~131_combout\,
	datac => \local_count~134_combout\,
	datad => \local_count~140_combout\,
	combout => \Equal6~4_combout\);

-- Location: LCCOMB_X22_Y28_N22
\Equal6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~5_combout\ = (\Equal6~3_combout\ & (\Equal6~4_combout\ & (!\local_count~173_combout\ & !\local_count~170_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~3_combout\,
	datab => \Equal6~4_combout\,
	datac => \local_count~173_combout\,
	datad => \local_count~170_combout\,
	combout => \Equal6~5_combout\);

-- Location: LCCOMB_X23_Y29_N16
\Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\local_count~128_combout\ & (!\local_count~125_combout\ & (!\local_count~119_combout\ & !\local_count~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~128_combout\,
	datab => \local_count~125_combout\,
	datac => \local_count~119_combout\,
	datad => \local_count~122_combout\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X23_Y29_N26
\Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (!\local_count~176_combout\ & (!\local_count~188_combout\ & (\Equal6~0_combout\ & !\local_count~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \local_count~176_combout\,
	datab => \local_count~188_combout\,
	datac => \Equal6~0_combout\,
	datad => \local_count~167_combout\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X22_Y26_N16
\Equal6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~10_combout\ = (\Equal6~7_combout\ & (\Equal6~9_combout\ & (\Equal6~5_combout\ & \Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~7_combout\,
	datab => \Equal6~9_combout\,
	datac => \Equal6~5_combout\,
	datad => \Equal6~1_combout\,
	combout => \Equal6~10_combout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(0));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(1));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(2));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(3));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(4));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(5));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(6));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(7));

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(8));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(9));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(10));

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(11));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(12));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(13));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(14));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(15));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(16));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(17));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(18));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(19));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(20));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(21));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(22));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(23));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(24));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(25));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(26));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(27));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(28));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(29));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(30));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RESULT[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \local_count~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(31));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ZERO~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Equal6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ZERO);
END structure;


