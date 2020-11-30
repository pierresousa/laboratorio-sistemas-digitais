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

-- DATE "09/01/2020 21:00:39"

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
-- RESULT[0]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[2]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[3]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[4]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[6]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[7]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[8]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[9]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[10]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[11]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[12]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[13]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[14]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[15]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[16]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[17]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[18]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[19]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[20]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[21]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[22]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[23]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[24]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[25]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[26]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[27]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[28]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[29]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[30]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESULT[31]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ZERO	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRC1[31]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[31]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[30]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[30]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[29]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[29]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[28]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[28]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[27]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[27]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[26]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[26]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[25]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[25]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[24]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[24]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[23]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[23]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[22]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[22]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[21]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[21]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[20]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[20]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[19]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[19]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[18]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[18]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[17]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[17]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[16]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[16]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[15]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[15]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[14]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[14]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[13]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[13]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[12]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[12]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[11]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[11]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[10]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[10]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[9]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[9]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[8]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[8]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[7]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[7]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[6]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[6]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[5]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[5]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[4]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[4]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[3]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[2]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[1]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC1[0]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SRC2[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CONTROL[0]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CONTROL[1]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CONTROL[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CONTROL[3]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \aux[31]~138clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~17_cout\ : std_logic;
SIGNAL \LessThan1~19_cout\ : std_logic;
SIGNAL \LessThan1~21_cout\ : std_logic;
SIGNAL \LessThan1~23_cout\ : std_logic;
SIGNAL \LessThan1~25_cout\ : std_logic;
SIGNAL \LessThan1~27_cout\ : std_logic;
SIGNAL \LessThan1~29_cout\ : std_logic;
SIGNAL \LessThan1~31_cout\ : std_logic;
SIGNAL \LessThan1~33_cout\ : std_logic;
SIGNAL \LessThan1~35_cout\ : std_logic;
SIGNAL \LessThan1~37_cout\ : std_logic;
SIGNAL \LessThan1~39_cout\ : std_logic;
SIGNAL \LessThan1~41_cout\ : std_logic;
SIGNAL \LessThan1~43_cout\ : std_logic;
SIGNAL \LessThan1~45_cout\ : std_logic;
SIGNAL \LessThan1~47_cout\ : std_logic;
SIGNAL \LessThan1~49_cout\ : std_logic;
SIGNAL \LessThan1~51_cout\ : std_logic;
SIGNAL \LessThan1~53_cout\ : std_logic;
SIGNAL \LessThan1~55_cout\ : std_logic;
SIGNAL \LessThan1~57_cout\ : std_logic;
SIGNAL \LessThan1~59_cout\ : std_logic;
SIGNAL \LessThan1~61_cout\ : std_logic;
SIGNAL \LessThan1~62_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \aux[0]~10_combout\ : std_logic;
SIGNAL \aux[1]~16_combout\ : std_logic;
SIGNAL \aux[2]~20_combout\ : std_logic;
SIGNAL \aux[3]~24_combout\ : std_logic;
SIGNAL \aux[4]~28_combout\ : std_logic;
SIGNAL \aux[5]~32_combout\ : std_logic;
SIGNAL \aux[6]~36_combout\ : std_logic;
SIGNAL \aux[7]~38_combout\ : std_logic;
SIGNAL \aux[8]~44_combout\ : std_logic;
SIGNAL \aux[9]~48_combout\ : std_logic;
SIGNAL \aux[10]~52_combout\ : std_logic;
SIGNAL \aux[11]~54_combout\ : std_logic;
SIGNAL \aux[12]~60_combout\ : std_logic;
SIGNAL \aux[13]~64_combout\ : std_logic;
SIGNAL \aux[14]~68_combout\ : std_logic;
SIGNAL \aux[15]~70_combout\ : std_logic;
SIGNAL \aux[16]~76_combout\ : std_logic;
SIGNAL \aux[17]~80_combout\ : std_logic;
SIGNAL \aux[18]~82_combout\ : std_logic;
SIGNAL \aux[19]~88_combout\ : std_logic;
SIGNAL \aux[20]~92_combout\ : std_logic;
SIGNAL \aux[21]~96_combout\ : std_logic;
SIGNAL \aux[22]~100_combout\ : std_logic;
SIGNAL \aux[23]~104_combout\ : std_logic;
SIGNAL \aux[24]~108_combout\ : std_logic;
SIGNAL \aux[26]~116_combout\ : std_logic;
SIGNAL \aux[27]~119_combout\ : std_logic;
SIGNAL \aux[28]~124_combout\ : std_logic;
SIGNAL \aux[29]~128_combout\ : std_logic;
SIGNAL \aux[30]~132_combout\ : std_logic;
SIGNAL \aux[31]~136_combout\ : std_logic;
SIGNAL \aux[0]~6_combout\ : std_logic;
SIGNAL \aux~5_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \aux[0]~11_combout\ : std_logic;
SIGNAL \aux[0]~7_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \aux[0]~8_combout\ : std_logic;
SIGNAL \aux[0]~9_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \aux[0]~4_combout\ : std_logic;
SIGNAL \aux[0]~12_combout\ : std_logic;
SIGNAL \aux[31]~138_combout\ : std_logic;
SIGNAL \aux[31]~138clkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \aux[1]~15_combout\ : std_logic;
SIGNAL \aux[31]~13_combout\ : std_logic;
SIGNAL \aux[1]~14_combout\ : std_logic;
SIGNAL \aux[1]~17_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \aux[2]~18_combout\ : std_logic;
SIGNAL \aux[2]~19_combout\ : std_logic;
SIGNAL \aux[2]~21_combout\ : std_logic;
SIGNAL \aux[3]~23_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \aux[3]~22_combout\ : std_logic;
SIGNAL \aux[3]~25_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \aux[4]~26_combout\ : std_logic;
SIGNAL \aux[4]~27_combout\ : std_logic;
SIGNAL \aux[4]~29_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \aux[5]~30_combout\ : std_logic;
SIGNAL \aux[5]~31_combout\ : std_logic;
SIGNAL \aux[5]~33_combout\ : std_logic;
SIGNAL \aux[6]~35_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \aux[6]~34_combout\ : std_logic;
SIGNAL \aux[6]~37_combout\ : std_logic;
SIGNAL \aux[7]~39_combout\ : std_logic;
SIGNAL \aux[7]~40_combout\ : std_logic;
SIGNAL \aux[7]~41_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \aux[8]~42_combout\ : std_logic;
SIGNAL \aux[8]~43_combout\ : std_logic;
SIGNAL \aux[8]~45_combout\ : std_logic;
SIGNAL \aux[9]~47_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \aux[9]~46_combout\ : std_logic;
SIGNAL \aux[9]~49_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \aux[10]~50_combout\ : std_logic;
SIGNAL \aux[10]~51_combout\ : std_logic;
SIGNAL \aux[10]~53_combout\ : std_logic;
SIGNAL \aux[11]~55_combout\ : std_logic;
SIGNAL \aux[11]~56_combout\ : std_logic;
SIGNAL \aux[11]~57_combout\ : std_logic;
SIGNAL \aux[12]~59_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \aux[12]~58_combout\ : std_logic;
SIGNAL \aux[12]~61_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \aux[13]~62_combout\ : std_logic;
SIGNAL \aux[13]~63_combout\ : std_logic;
SIGNAL \aux[13]~65_combout\ : std_logic;
SIGNAL \aux[14]~67_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \aux[14]~66_combout\ : std_logic;
SIGNAL \aux[14]~69_combout\ : std_logic;
SIGNAL \aux[15]~71_combout\ : std_logic;
SIGNAL \aux[15]~72_combout\ : std_logic;
SIGNAL \aux[15]~73_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \aux[16]~74_combout\ : std_logic;
SIGNAL \aux[16]~75_combout\ : std_logic;
SIGNAL \aux[16]~77_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \aux[17]~78_combout\ : std_logic;
SIGNAL \aux[17]~79_combout\ : std_logic;
SIGNAL \aux[17]~81_combout\ : std_logic;
SIGNAL \aux[18]~83_combout\ : std_logic;
SIGNAL \aux[18]~84_combout\ : std_logic;
SIGNAL \aux[18]~85_combout\ : std_logic;
SIGNAL \aux[19]~87_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \aux[19]~86_combout\ : std_logic;
SIGNAL \aux[19]~89_combout\ : std_logic;
SIGNAL \aux[20]~91_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \aux[20]~90_combout\ : std_logic;
SIGNAL \aux[20]~93_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \aux[21]~94_combout\ : std_logic;
SIGNAL \aux[21]~95_combout\ : std_logic;
SIGNAL \aux[21]~97_combout\ : std_logic;
SIGNAL \aux[22]~99_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \aux[22]~98_combout\ : std_logic;
SIGNAL \aux[22]~101_combout\ : std_logic;
SIGNAL \aux[23]~103_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \aux[23]~102_combout\ : std_logic;
SIGNAL \aux[23]~105_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \aux[24]~106_combout\ : std_logic;
SIGNAL \aux[24]~107_combout\ : std_logic;
SIGNAL \aux[24]~109_combout\ : std_logic;
SIGNAL \aux[25]~112_combout\ : std_logic;
SIGNAL \aux[25]~111_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \aux[25]~110_combout\ : std_logic;
SIGNAL \aux[25]~113_combout\ : std_logic;
SIGNAL \aux[26]~115_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \aux[26]~114_combout\ : std_logic;
SIGNAL \aux[26]~117_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \aux[27]~118_combout\ : std_logic;
SIGNAL \aux[27]~120_combout\ : std_logic;
SIGNAL \aux[27]~121_combout\ : std_logic;
SIGNAL \aux[28]~123_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \aux[28]~122_combout\ : std_logic;
SIGNAL \aux[28]~125_combout\ : std_logic;
SIGNAL \aux[29]~127_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \aux[29]~126_combout\ : std_logic;
SIGNAL \aux[29]~129_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \aux[30]~130_combout\ : std_logic;
SIGNAL \aux[30]~131_combout\ : std_logic;
SIGNAL \aux[30]~133_combout\ : std_logic;
SIGNAL \aux[31]~135_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \aux[31]~134_combout\ : std_logic;
SIGNAL \aux[31]~137_combout\ : std_logic;
SIGNAL \Equal6~6_combout\ : std_logic;
SIGNAL \Equal6~5_combout\ : std_logic;
SIGNAL \Equal6~7_combout\ : std_logic;
SIGNAL \Equal6~9_combout\ : std_logic;
SIGNAL \Equal6~8_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal6~4_combout\ : std_logic;
SIGNAL \Equal6~10_combout\ : std_logic;
SIGNAL aux : std_logic_vector(31 DOWNTO 0);
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

\aux[31]~138clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \aux[31]~138_combout\);

-- Location: LCCOMB_X46_Y34_N0
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((\SRC2~combout\(0) & !\SRC1~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(0),
	datab => \SRC1~combout\(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X46_Y34_N2
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\SRC1~combout\(1) & ((!\LessThan1~1_cout\) # (!\SRC2~combout\(1)))) # (!\SRC1~combout\(1) & (!\SRC2~combout\(1) & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(1),
	datab => \SRC2~combout\(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X46_Y34_N4
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\SRC1~combout\(2) & (\SRC2~combout\(2) & !\LessThan1~3_cout\)) # (!\SRC1~combout\(2) & ((\SRC2~combout\(2)) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(2),
	datab => \SRC2~combout\(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X46_Y34_N6
\LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\SRC1~combout\(3) & ((!\LessThan1~5_cout\) # (!\SRC2~combout\(3)))) # (!\SRC1~combout\(3) & (!\SRC2~combout\(3) & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(3),
	datab => \SRC2~combout\(3),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X46_Y34_N8
\LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\SRC1~combout\(4) & (\SRC2~combout\(4) & !\LessThan1~7_cout\)) # (!\SRC1~combout\(4) & ((\SRC2~combout\(4)) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(4),
	datab => \SRC2~combout\(4),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X46_Y34_N10
\LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\SRC1~combout\(5) & ((!\LessThan1~9_cout\) # (!\SRC2~combout\(5)))) # (!\SRC1~combout\(5) & (!\SRC2~combout\(5) & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(5),
	datab => \SRC2~combout\(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X46_Y34_N12
\LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\SRC2~combout\(6) & ((!\LessThan1~11_cout\) # (!\SRC1~combout\(6)))) # (!\SRC2~combout\(6) & (!\SRC1~combout\(6) & !\LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(6),
	datab => \SRC1~combout\(6),
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X46_Y34_N14
\LessThan1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((\SRC2~combout\(7) & (\SRC1~combout\(7) & !\LessThan1~13_cout\)) # (!\SRC2~combout\(7) & ((\SRC1~combout\(7)) # (!\LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(7),
	datab => \SRC1~combout\(7),
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X46_Y34_N16
\LessThan1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((\SRC1~combout\(8) & (\SRC2~combout\(8) & !\LessThan1~15_cout\)) # (!\SRC1~combout\(8) & ((\SRC2~combout\(8)) # (!\LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(8),
	datab => \SRC2~combout\(8),
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X46_Y34_N18
\LessThan1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~19_cout\ = CARRY((\SRC2~combout\(9) & (\SRC1~combout\(9) & !\LessThan1~17_cout\)) # (!\SRC2~combout\(9) & ((\SRC1~combout\(9)) # (!\LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(9),
	datab => \SRC1~combout\(9),
	datad => VCC,
	cin => \LessThan1~17_cout\,
	cout => \LessThan1~19_cout\);

-- Location: LCCOMB_X46_Y34_N20
\LessThan1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~21_cout\ = CARRY((\SRC1~combout\(10) & (\SRC2~combout\(10) & !\LessThan1~19_cout\)) # (!\SRC1~combout\(10) & ((\SRC2~combout\(10)) # (!\LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(10),
	datab => \SRC2~combout\(10),
	datad => VCC,
	cin => \LessThan1~19_cout\,
	cout => \LessThan1~21_cout\);

-- Location: LCCOMB_X46_Y34_N22
\LessThan1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~23_cout\ = CARRY((\SRC2~combout\(11) & (\SRC1~combout\(11) & !\LessThan1~21_cout\)) # (!\SRC2~combout\(11) & ((\SRC1~combout\(11)) # (!\LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(11),
	datab => \SRC1~combout\(11),
	datad => VCC,
	cin => \LessThan1~21_cout\,
	cout => \LessThan1~23_cout\);

-- Location: LCCOMB_X46_Y34_N24
\LessThan1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~25_cout\ = CARRY((\SRC1~combout\(12) & (\SRC2~combout\(12) & !\LessThan1~23_cout\)) # (!\SRC1~combout\(12) & ((\SRC2~combout\(12)) # (!\LessThan1~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(12),
	datab => \SRC2~combout\(12),
	datad => VCC,
	cin => \LessThan1~23_cout\,
	cout => \LessThan1~25_cout\);

-- Location: LCCOMB_X46_Y34_N26
\LessThan1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~27_cout\ = CARRY((\SRC1~combout\(13) & ((!\LessThan1~25_cout\) # (!\SRC2~combout\(13)))) # (!\SRC1~combout\(13) & (!\SRC2~combout\(13) & !\LessThan1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(13),
	datab => \SRC2~combout\(13),
	datad => VCC,
	cin => \LessThan1~25_cout\,
	cout => \LessThan1~27_cout\);

-- Location: LCCOMB_X46_Y34_N28
\LessThan1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~29_cout\ = CARRY((\SRC1~combout\(14) & (\SRC2~combout\(14) & !\LessThan1~27_cout\)) # (!\SRC1~combout\(14) & ((\SRC2~combout\(14)) # (!\LessThan1~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(14),
	datab => \SRC2~combout\(14),
	datad => VCC,
	cin => \LessThan1~27_cout\,
	cout => \LessThan1~29_cout\);

-- Location: LCCOMB_X46_Y34_N30
\LessThan1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~31_cout\ = CARRY((\SRC1~combout\(15) & ((!\LessThan1~29_cout\) # (!\SRC2~combout\(15)))) # (!\SRC1~combout\(15) & (!\SRC2~combout\(15) & !\LessThan1~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(15),
	datab => \SRC2~combout\(15),
	datad => VCC,
	cin => \LessThan1~29_cout\,
	cout => \LessThan1~31_cout\);

-- Location: LCCOMB_X46_Y33_N0
\LessThan1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~33_cout\ = CARRY((\SRC2~combout\(16) & ((!\LessThan1~31_cout\) # (!\SRC1~combout\(16)))) # (!\SRC2~combout\(16) & (!\SRC1~combout\(16) & !\LessThan1~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(16),
	datab => \SRC1~combout\(16),
	datad => VCC,
	cin => \LessThan1~31_cout\,
	cout => \LessThan1~33_cout\);

-- Location: LCCOMB_X46_Y33_N2
\LessThan1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~35_cout\ = CARRY((\SRC2~combout\(17) & (\SRC1~combout\(17) & !\LessThan1~33_cout\)) # (!\SRC2~combout\(17) & ((\SRC1~combout\(17)) # (!\LessThan1~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(17),
	datab => \SRC1~combout\(17),
	datad => VCC,
	cin => \LessThan1~33_cout\,
	cout => \LessThan1~35_cout\);

-- Location: LCCOMB_X46_Y33_N4
\LessThan1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~37_cout\ = CARRY((\SRC2~combout\(18) & ((!\LessThan1~35_cout\) # (!\SRC1~combout\(18)))) # (!\SRC2~combout\(18) & (!\SRC1~combout\(18) & !\LessThan1~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(18),
	datab => \SRC1~combout\(18),
	datad => VCC,
	cin => \LessThan1~35_cout\,
	cout => \LessThan1~37_cout\);

-- Location: LCCOMB_X46_Y33_N6
\LessThan1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~39_cout\ = CARRY((\SRC2~combout\(19) & (\SRC1~combout\(19) & !\LessThan1~37_cout\)) # (!\SRC2~combout\(19) & ((\SRC1~combout\(19)) # (!\LessThan1~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(19),
	datab => \SRC1~combout\(19),
	datad => VCC,
	cin => \LessThan1~37_cout\,
	cout => \LessThan1~39_cout\);

-- Location: LCCOMB_X46_Y33_N8
\LessThan1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~41_cout\ = CARRY((\SRC1~combout\(20) & (\SRC2~combout\(20) & !\LessThan1~39_cout\)) # (!\SRC1~combout\(20) & ((\SRC2~combout\(20)) # (!\LessThan1~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(20),
	datab => \SRC2~combout\(20),
	datad => VCC,
	cin => \LessThan1~39_cout\,
	cout => \LessThan1~41_cout\);

-- Location: LCCOMB_X46_Y33_N10
\LessThan1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~43_cout\ = CARRY((\SRC1~combout\(21) & ((!\LessThan1~41_cout\) # (!\SRC2~combout\(21)))) # (!\SRC1~combout\(21) & (!\SRC2~combout\(21) & !\LessThan1~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(21),
	datab => \SRC2~combout\(21),
	datad => VCC,
	cin => \LessThan1~41_cout\,
	cout => \LessThan1~43_cout\);

-- Location: LCCOMB_X46_Y33_N12
\LessThan1~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~45_cout\ = CARRY((\SRC1~combout\(22) & (\SRC2~combout\(22) & !\LessThan1~43_cout\)) # (!\SRC1~combout\(22) & ((\SRC2~combout\(22)) # (!\LessThan1~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(22),
	datab => \SRC2~combout\(22),
	datad => VCC,
	cin => \LessThan1~43_cout\,
	cout => \LessThan1~45_cout\);

-- Location: LCCOMB_X46_Y33_N14
\LessThan1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~47_cout\ = CARRY((\SRC2~combout\(23) & (\SRC1~combout\(23) & !\LessThan1~45_cout\)) # (!\SRC2~combout\(23) & ((\SRC1~combout\(23)) # (!\LessThan1~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(23),
	datab => \SRC1~combout\(23),
	datad => VCC,
	cin => \LessThan1~45_cout\,
	cout => \LessThan1~47_cout\);

-- Location: LCCOMB_X46_Y33_N16
\LessThan1~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~49_cout\ = CARRY((\SRC2~combout\(24) & ((!\LessThan1~47_cout\) # (!\SRC1~combout\(24)))) # (!\SRC2~combout\(24) & (!\SRC1~combout\(24) & !\LessThan1~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(24),
	datab => \SRC1~combout\(24),
	datad => VCC,
	cin => \LessThan1~47_cout\,
	cout => \LessThan1~49_cout\);

-- Location: LCCOMB_X46_Y33_N18
\LessThan1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~51_cout\ = CARRY((\SRC2~combout\(25) & (\SRC1~combout\(25) & !\LessThan1~49_cout\)) # (!\SRC2~combout\(25) & ((\SRC1~combout\(25)) # (!\LessThan1~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(25),
	datab => \SRC1~combout\(25),
	datad => VCC,
	cin => \LessThan1~49_cout\,
	cout => \LessThan1~51_cout\);

-- Location: LCCOMB_X46_Y33_N20
\LessThan1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~53_cout\ = CARRY((\SRC1~combout\(26) & (\SRC2~combout\(26) & !\LessThan1~51_cout\)) # (!\SRC1~combout\(26) & ((\SRC2~combout\(26)) # (!\LessThan1~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(26),
	datab => \SRC2~combout\(26),
	datad => VCC,
	cin => \LessThan1~51_cout\,
	cout => \LessThan1~53_cout\);

-- Location: LCCOMB_X46_Y33_N22
\LessThan1~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~55_cout\ = CARRY((\SRC2~combout\(27) & (\SRC1~combout\(27) & !\LessThan1~53_cout\)) # (!\SRC2~combout\(27) & ((\SRC1~combout\(27)) # (!\LessThan1~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(27),
	datab => \SRC1~combout\(27),
	datad => VCC,
	cin => \LessThan1~53_cout\,
	cout => \LessThan1~55_cout\);

-- Location: LCCOMB_X46_Y33_N24
\LessThan1~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~57_cout\ = CARRY((\SRC1~combout\(28) & (\SRC2~combout\(28) & !\LessThan1~55_cout\)) # (!\SRC1~combout\(28) & ((\SRC2~combout\(28)) # (!\LessThan1~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(28),
	datab => \SRC2~combout\(28),
	datad => VCC,
	cin => \LessThan1~55_cout\,
	cout => \LessThan1~57_cout\);

-- Location: LCCOMB_X46_Y33_N26
\LessThan1~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~59_cout\ = CARRY((\SRC2~combout\(29) & (\SRC1~combout\(29) & !\LessThan1~57_cout\)) # (!\SRC2~combout\(29) & ((\SRC1~combout\(29)) # (!\LessThan1~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(29),
	datab => \SRC1~combout\(29),
	datad => VCC,
	cin => \LessThan1~57_cout\,
	cout => \LessThan1~59_cout\);

-- Location: LCCOMB_X46_Y33_N28
\LessThan1~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~61_cout\ = CARRY((\SRC1~combout\(30) & (\SRC2~combout\(30) & !\LessThan1~59_cout\)) # (!\SRC1~combout\(30) & ((\SRC2~combout\(30)) # (!\LessThan1~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(30),
	datab => \SRC2~combout\(30),
	datad => VCC,
	cin => \LessThan1~59_cout\,
	cout => \LessThan1~61_cout\);

-- Location: LCCOMB_X46_Y33_N30
\LessThan1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~62_combout\ = (\SRC1~combout\(31) & (\LessThan1~61_cout\ & \SRC2~combout\(31))) # (!\SRC1~combout\(31) & ((\LessThan1~61_cout\) # (\SRC2~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SRC1~combout\(31),
	datad => \SRC2~combout\(31),
	cin => \LessThan1~61_cout\,
	combout => \LessThan1~62_combout\);

-- Location: LCCOMB_X45_Y34_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\SRC1~combout\(0) & ((GND) # (!\SRC2~combout\(0)))) # (!\SRC1~combout\(0) & (\SRC2~combout\(0) $ (GND)))
-- \Add0~1\ = CARRY((\SRC1~combout\(0)) # (!\SRC2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(0),
	datab => \SRC2~combout\(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X44_Y34_N2
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\SRC1~combout\(1) & ((\SRC2~combout\(1) & (\Add1~1\ & VCC)) # (!\SRC2~combout\(1) & (!\Add1~1\)))) # (!\SRC1~combout\(1) & ((\SRC2~combout\(1) & (!\Add1~1\)) # (!\SRC2~combout\(1) & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\SRC1~combout\(1) & (!\SRC2~combout\(1) & !\Add1~1\)) # (!\SRC1~combout\(1) & ((!\Add1~1\) # (!\SRC2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(1),
	datab => \SRC2~combout\(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X44_Y34_N4
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\SRC2~combout\(2) $ (\SRC1~combout\(2) $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\SRC2~combout\(2) & ((\SRC1~combout\(2)) # (!\Add1~3\))) # (!\SRC2~combout\(2) & (\SRC1~combout\(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(2),
	datab => \SRC1~combout\(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X45_Y34_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\SRC2~combout\(3) & ((\SRC1~combout\(3) & (!\Add0~5\)) # (!\SRC1~combout\(3) & ((\Add0~5\) # (GND))))) # (!\SRC2~combout\(3) & ((\SRC1~combout\(3) & (\Add0~5\ & VCC)) # (!\SRC1~combout\(3) & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\SRC2~combout\(3) & ((!\Add0~5\) # (!\SRC1~combout\(3)))) # (!\SRC2~combout\(3) & (!\SRC1~combout\(3) & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(3),
	datab => \SRC1~combout\(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X45_Y34_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\SRC1~combout\(4) $ (\SRC2~combout\(4) $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\SRC1~combout\(4) & ((!\Add0~7\) # (!\SRC2~combout\(4)))) # (!\SRC1~combout\(4) & (!\SRC2~combout\(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(4),
	datab => \SRC2~combout\(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X45_Y34_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\SRC2~combout\(5) & ((\SRC1~combout\(5) & (!\Add0~9\)) # (!\SRC1~combout\(5) & ((\Add0~9\) # (GND))))) # (!\SRC2~combout\(5) & ((\SRC1~combout\(5) & (\Add0~9\ & VCC)) # (!\SRC1~combout\(5) & (!\Add0~9\))))
-- \Add0~11\ = CARRY((\SRC2~combout\(5) & ((!\Add0~9\) # (!\SRC1~combout\(5)))) # (!\SRC2~combout\(5) & (!\SRC1~combout\(5) & !\Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(5),
	datab => \SRC1~combout\(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X45_Y34_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\SRC2~combout\(6) $ (\SRC1~combout\(6) $ (\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\SRC2~combout\(6) & (\SRC1~combout\(6) & !\Add0~11\)) # (!\SRC2~combout\(6) & ((\SRC1~combout\(6)) # (!\Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(6),
	datab => \SRC1~combout\(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X44_Y34_N14
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\SRC1~combout\(7) & ((\SRC2~combout\(7) & (\Add1~13\ & VCC)) # (!\SRC2~combout\(7) & (!\Add1~13\)))) # (!\SRC1~combout\(7) & ((\SRC2~combout\(7) & (!\Add1~13\)) # (!\SRC2~combout\(7) & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\SRC1~combout\(7) & (!\SRC2~combout\(7) & !\Add1~13\)) # (!\SRC1~combout\(7) & ((!\Add1~13\) # (!\SRC2~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(7),
	datab => \SRC2~combout\(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X45_Y34_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\SRC2~combout\(7) & ((\SRC1~combout\(7) & (!\Add0~13\)) # (!\SRC1~combout\(7) & ((\Add0~13\) # (GND))))) # (!\SRC2~combout\(7) & ((\SRC1~combout\(7) & (\Add0~13\ & VCC)) # (!\SRC1~combout\(7) & (!\Add0~13\))))
-- \Add0~15\ = CARRY((\SRC2~combout\(7) & ((!\Add0~13\) # (!\SRC1~combout\(7)))) # (!\SRC2~combout\(7) & (!\SRC1~combout\(7) & !\Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(7),
	datab => \SRC1~combout\(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X44_Y34_N16
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\SRC1~combout\(8) $ (\SRC2~combout\(8) $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\SRC1~combout\(8) & ((\SRC2~combout\(8)) # (!\Add1~15\))) # (!\SRC1~combout\(8) & (\SRC2~combout\(8) & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(8),
	datab => \SRC2~combout\(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X44_Y34_N18
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\SRC1~combout\(9) & ((\SRC2~combout\(9) & (\Add1~17\ & VCC)) # (!\SRC2~combout\(9) & (!\Add1~17\)))) # (!\SRC1~combout\(9) & ((\SRC2~combout\(9) & (!\Add1~17\)) # (!\SRC2~combout\(9) & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((\SRC1~combout\(9) & (!\SRC2~combout\(9) & !\Add1~17\)) # (!\SRC1~combout\(9) & ((!\Add1~17\) # (!\SRC2~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(9),
	datab => \SRC2~combout\(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X44_Y34_N20
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\SRC1~combout\(10) $ (\SRC2~combout\(10) $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\SRC1~combout\(10) & ((\SRC2~combout\(10)) # (!\Add1~19\))) # (!\SRC1~combout\(10) & (\SRC2~combout\(10) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(10),
	datab => \SRC2~combout\(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X44_Y34_N22
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\SRC2~combout\(11) & ((\SRC1~combout\(11) & (\Add1~21\ & VCC)) # (!\SRC1~combout\(11) & (!\Add1~21\)))) # (!\SRC2~combout\(11) & ((\SRC1~combout\(11) & (!\Add1~21\)) # (!\SRC1~combout\(11) & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((\SRC2~combout\(11) & (!\SRC1~combout\(11) & !\Add1~21\)) # (!\SRC2~combout\(11) & ((!\Add1~21\) # (!\SRC1~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(11),
	datab => \SRC1~combout\(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X45_Y34_N22
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\SRC2~combout\(11) & ((\SRC1~combout\(11) & (!\Add0~21\)) # (!\SRC1~combout\(11) & ((\Add0~21\) # (GND))))) # (!\SRC2~combout\(11) & ((\SRC1~combout\(11) & (\Add0~21\ & VCC)) # (!\SRC1~combout\(11) & (!\Add0~21\))))
-- \Add0~23\ = CARRY((\SRC2~combout\(11) & ((!\Add0~21\) # (!\SRC1~combout\(11)))) # (!\SRC2~combout\(11) & (!\SRC1~combout\(11) & !\Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(11),
	datab => \SRC1~combout\(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X44_Y34_N24
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\SRC1~combout\(12) $ (\SRC2~combout\(12) $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\SRC1~combout\(12) & ((\SRC2~combout\(12)) # (!\Add1~23\))) # (!\SRC1~combout\(12) & (\SRC2~combout\(12) & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(12),
	datab => \SRC2~combout\(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X45_Y34_N26
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\SRC2~combout\(13) & ((\SRC1~combout\(13) & (!\Add0~25\)) # (!\SRC1~combout\(13) & ((\Add0~25\) # (GND))))) # (!\SRC2~combout\(13) & ((\SRC1~combout\(13) & (\Add0~25\ & VCC)) # (!\SRC1~combout\(13) & (!\Add0~25\))))
-- \Add0~27\ = CARRY((\SRC2~combout\(13) & ((!\Add0~25\) # (!\SRC1~combout\(13)))) # (!\SRC2~combout\(13) & (!\SRC1~combout\(13) & !\Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(13),
	datab => \SRC1~combout\(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X45_Y34_N28
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\SRC2~combout\(14) $ (\SRC1~combout\(14) $ (\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((\SRC2~combout\(14) & (\SRC1~combout\(14) & !\Add0~27\)) # (!\SRC2~combout\(14) & ((\SRC1~combout\(14)) # (!\Add0~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(14),
	datab => \SRC1~combout\(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X44_Y34_N30
\Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\SRC2~combout\(15) & ((\SRC1~combout\(15) & (\Add1~29\ & VCC)) # (!\SRC1~combout\(15) & (!\Add1~29\)))) # (!\SRC2~combout\(15) & ((\SRC1~combout\(15) & (!\Add1~29\)) # (!\SRC1~combout\(15) & ((\Add1~29\) # (GND)))))
-- \Add1~31\ = CARRY((\SRC2~combout\(15) & (!\SRC1~combout\(15) & !\Add1~29\)) # (!\SRC2~combout\(15) & ((!\Add1~29\) # (!\SRC1~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(15),
	datab => \SRC1~combout\(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X45_Y34_N30
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\SRC1~combout\(15) & ((\SRC2~combout\(15) & (!\Add0~29\)) # (!\SRC2~combout\(15) & (\Add0~29\ & VCC)))) # (!\SRC1~combout\(15) & ((\SRC2~combout\(15) & ((\Add0~29\) # (GND))) # (!\SRC2~combout\(15) & (!\Add0~29\))))
-- \Add0~31\ = CARRY((\SRC1~combout\(15) & (\SRC2~combout\(15) & !\Add0~29\)) # (!\SRC1~combout\(15) & ((\SRC2~combout\(15)) # (!\Add0~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(15),
	datab => \SRC2~combout\(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X44_Y33_N0
\Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\SRC1~combout\(16) $ (\SRC2~combout\(16) $ (!\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\SRC1~combout\(16) & ((\SRC2~combout\(16)) # (!\Add1~31\))) # (!\SRC1~combout\(16) & (\SRC2~combout\(16) & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(16),
	datab => \SRC2~combout\(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X45_Y33_N2
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\SRC2~combout\(17) & ((\SRC1~combout\(17) & (!\Add0~33\)) # (!\SRC1~combout\(17) & ((\Add0~33\) # (GND))))) # (!\SRC2~combout\(17) & ((\SRC1~combout\(17) & (\Add0~33\ & VCC)) # (!\SRC1~combout\(17) & (!\Add0~33\))))
-- \Add0~35\ = CARRY((\SRC2~combout\(17) & ((!\Add0~33\) # (!\SRC1~combout\(17)))) # (!\SRC2~combout\(17) & (!\SRC1~combout\(17) & !\Add0~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(17),
	datab => \SRC1~combout\(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X44_Y33_N4
\Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\SRC1~combout\(18) $ (\SRC2~combout\(18) $ (!\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\SRC1~combout\(18) & ((\SRC2~combout\(18)) # (!\Add1~35\))) # (!\SRC1~combout\(18) & (\SRC2~combout\(18) & !\Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(18),
	datab => \SRC2~combout\(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X45_Y33_N4
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\SRC1~combout\(18) $ (\SRC2~combout\(18) $ (\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((\SRC1~combout\(18) & ((!\Add0~35\) # (!\SRC2~combout\(18)))) # (!\SRC1~combout\(18) & (!\SRC2~combout\(18) & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(18),
	datab => \SRC2~combout\(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X45_Y33_N6
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\SRC2~combout\(19) & ((\SRC1~combout\(19) & (!\Add0~37\)) # (!\SRC1~combout\(19) & ((\Add0~37\) # (GND))))) # (!\SRC2~combout\(19) & ((\SRC1~combout\(19) & (\Add0~37\ & VCC)) # (!\SRC1~combout\(19) & (!\Add0~37\))))
-- \Add0~39\ = CARRY((\SRC2~combout\(19) & ((!\Add0~37\) # (!\SRC1~combout\(19)))) # (!\SRC2~combout\(19) & (!\SRC1~combout\(19) & !\Add0~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(19),
	datab => \SRC1~combout\(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X45_Y33_N8
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((\SRC2~combout\(20) $ (\SRC1~combout\(20) $ (\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((\SRC2~combout\(20) & (\SRC1~combout\(20) & !\Add0~39\)) # (!\SRC2~combout\(20) & ((\SRC1~combout\(20)) # (!\Add0~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(20),
	datab => \SRC1~combout\(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X45_Y33_N10
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\SRC2~combout\(21) & ((\SRC1~combout\(21) & (!\Add0~41\)) # (!\SRC1~combout\(21) & ((\Add0~41\) # (GND))))) # (!\SRC2~combout\(21) & ((\SRC1~combout\(21) & (\Add0~41\ & VCC)) # (!\SRC1~combout\(21) & (!\Add0~41\))))
-- \Add0~43\ = CARRY((\SRC2~combout\(21) & ((!\Add0~41\) # (!\SRC1~combout\(21)))) # (!\SRC2~combout\(21) & (!\SRC1~combout\(21) & !\Add0~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(21),
	datab => \SRC1~combout\(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X45_Y33_N12
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((\SRC1~combout\(22) $ (\SRC2~combout\(22) $ (\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((\SRC1~combout\(22) & ((!\Add0~43\) # (!\SRC2~combout\(22)))) # (!\SRC1~combout\(22) & (!\SRC2~combout\(22) & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(22),
	datab => \SRC2~combout\(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X45_Y33_N14
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\SRC1~combout\(23) & ((\SRC2~combout\(23) & (!\Add0~45\)) # (!\SRC2~combout\(23) & (\Add0~45\ & VCC)))) # (!\SRC1~combout\(23) & ((\SRC2~combout\(23) & ((\Add0~45\) # (GND))) # (!\SRC2~combout\(23) & (!\Add0~45\))))
-- \Add0~47\ = CARRY((\SRC1~combout\(23) & (\SRC2~combout\(23) & !\Add0~45\)) # (!\SRC1~combout\(23) & ((\SRC2~combout\(23)) # (!\Add0~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(23),
	datab => \SRC2~combout\(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X44_Y33_N16
\Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((\SRC1~combout\(24) $ (\SRC2~combout\(24) $ (!\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((\SRC1~combout\(24) & ((\SRC2~combout\(24)) # (!\Add1~47\))) # (!\SRC1~combout\(24) & (\SRC2~combout\(24) & !\Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(24),
	datab => \SRC2~combout\(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X44_Y33_N18
\Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\SRC2~combout\(25) & ((\SRC1~combout\(25) & (\Add1~49\ & VCC)) # (!\SRC1~combout\(25) & (!\Add1~49\)))) # (!\SRC2~combout\(25) & ((\SRC1~combout\(25) & (!\Add1~49\)) # (!\SRC1~combout\(25) & ((\Add1~49\) # (GND)))))
-- \Add1~51\ = CARRY((\SRC2~combout\(25) & (!\SRC1~combout\(25) & !\Add1~49\)) # (!\SRC2~combout\(25) & ((!\Add1~49\) # (!\SRC1~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(25),
	datab => \SRC1~combout\(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X45_Y33_N20
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((\SRC2~combout\(26) $ (\SRC1~combout\(26) $ (\Add0~51\)))) # (GND)
-- \Add0~53\ = CARRY((\SRC2~combout\(26) & (\SRC1~combout\(26) & !\Add0~51\)) # (!\SRC2~combout\(26) & ((\SRC1~combout\(26)) # (!\Add0~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(26),
	datab => \SRC1~combout\(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X45_Y33_N22
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\SRC1~combout\(27) & ((\SRC2~combout\(27) & (!\Add0~53\)) # (!\SRC2~combout\(27) & (\Add0~53\ & VCC)))) # (!\SRC1~combout\(27) & ((\SRC2~combout\(27) & ((\Add0~53\) # (GND))) # (!\SRC2~combout\(27) & (!\Add0~53\))))
-- \Add0~55\ = CARRY((\SRC1~combout\(27) & (\SRC2~combout\(27) & !\Add0~53\)) # (!\SRC1~combout\(27) & ((\SRC2~combout\(27)) # (!\Add0~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(27),
	datab => \SRC2~combout\(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X44_Y33_N24
\Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((\SRC1~combout\(28) $ (\SRC2~combout\(28) $ (!\Add1~55\)))) # (GND)
-- \Add1~57\ = CARRY((\SRC1~combout\(28) & ((\SRC2~combout\(28)) # (!\Add1~55\))) # (!\SRC1~combout\(28) & (\SRC2~combout\(28) & !\Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(28),
	datab => \SRC2~combout\(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X44_Y33_N26
\Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\SRC1~combout\(29) & ((\SRC2~combout\(29) & (\Add1~57\ & VCC)) # (!\SRC2~combout\(29) & (!\Add1~57\)))) # (!\SRC1~combout\(29) & ((\SRC2~combout\(29) & (!\Add1~57\)) # (!\SRC2~combout\(29) & ((\Add1~57\) # (GND)))))
-- \Add1~59\ = CARRY((\SRC1~combout\(29) & (!\SRC2~combout\(29) & !\Add1~57\)) # (!\SRC1~combout\(29) & ((!\Add1~57\) # (!\SRC2~combout\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(29),
	datab => \SRC2~combout\(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X44_Y33_N28
\Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = ((\SRC1~combout\(30) $ (\SRC2~combout\(30) $ (!\Add1~59\)))) # (GND)
-- \Add1~61\ = CARRY((\SRC1~combout\(30) & ((\SRC2~combout\(30)) # (!\Add1~59\))) # (!\SRC1~combout\(30) & (\SRC2~combout\(30) & !\Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(30),
	datab => \SRC2~combout\(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X45_Y33_N28
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((\SRC1~combout\(30) $ (\SRC2~combout\(30) $ (\Add0~59\)))) # (GND)
-- \Add0~61\ = CARRY((\SRC1~combout\(30) & ((!\Add0~59\) # (!\SRC2~combout\(30)))) # (!\SRC1~combout\(30) & (!\SRC2~combout\(30) & !\Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(30),
	datab => \SRC2~combout\(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X44_Y33_N30
\Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \SRC1~combout\(31) $ (\Add1~61\ $ (\SRC2~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(31),
	datad => \SRC2~combout\(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X43_Y34_N12
\Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!aux(3) & (!aux(1) & (!aux(0) & !aux(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(3),
	datab => aux(1),
	datac => aux(0),
	datad => aux(2),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X43_Y35_N12
\aux[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[0]~10_combout\ = (\SRC2~combout\(0)) # (\SRC1~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC2~combout\(0),
	datad => \SRC1~combout\(0),
	combout => \aux[0]~10_combout\);

-- Location: LCCOMB_X43_Y34_N2
\aux[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[1]~16_combout\ = (!\SRC2~combout\(1) & !\SRC1~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(1),
	datad => \SRC1~combout\(1),
	combout => \aux[1]~16_combout\);

-- Location: LCCOMB_X43_Y34_N30
\aux[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[2]~20_combout\ = (!\SRC2~combout\(2) & !\SRC1~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC2~combout\(2),
	datad => \SRC1~combout\(2),
	combout => \aux[2]~20_combout\);

-- Location: LCCOMB_X43_Y34_N10
\aux[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[3]~24_combout\ = (!\SRC2~combout\(3) & !\SRC1~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC2~combout\(3),
	datac => \SRC1~combout\(3),
	combout => \aux[3]~24_combout\);

-- Location: LCCOMB_X41_Y35_N2
\aux[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[4]~28_combout\ = (!\SRC1~combout\(4) & !\SRC2~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(4),
	datad => \SRC2~combout\(4),
	combout => \aux[4]~28_combout\);

-- Location: LCCOMB_X41_Y35_N10
\aux[5]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[5]~32_combout\ = (!\SRC1~combout\(5) & !\SRC2~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(5),
	datad => \SRC2~combout\(5),
	combout => \aux[5]~32_combout\);

-- Location: LCCOMB_X47_Y35_N8
\aux[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[6]~36_combout\ = (!\SRC1~combout\(6) & !\SRC2~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(6),
	datad => \SRC2~combout\(6),
	combout => \aux[6]~36_combout\);

-- Location: LCCOMB_X42_Y35_N10
\aux[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[7]~38_combout\ = (\Equal3~0_combout\ & ((\Add1~14_combout\) # ((\Add0~14_combout\ & \Equal2~0_combout\)))) # (!\Equal3~0_combout\ & (\Add0~14_combout\ & (\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Add0~14_combout\,
	datac => \Equal2~0_combout\,
	datad => \Add1~14_combout\,
	combout => \aux[7]~38_combout\);

-- Location: LCCOMB_X42_Y34_N10
\aux[8]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[8]~44_combout\ = (!\SRC1~combout\(8) & !\SRC2~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC1~combout\(8),
	datac => \SRC2~combout\(8),
	combout => \aux[8]~44_combout\);

-- Location: LCCOMB_X42_Y34_N2
\aux[9]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[9]~48_combout\ = (!\SRC1~combout\(9) & !\SRC2~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(9),
	datad => \SRC2~combout\(9),
	combout => \aux[9]~48_combout\);

-- Location: LCCOMB_X42_Y34_N14
\aux[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[10]~52_combout\ = (!\SRC2~combout\(10) & !\SRC1~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC2~combout\(10),
	datac => \SRC1~combout\(10),
	combout => \aux[10]~52_combout\);

-- Location: LCCOMB_X42_Y35_N12
\aux[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[11]~54_combout\ = (\Equal3~0_combout\ & ((\Add1~22_combout\) # ((\Add0~22_combout\ & \Equal2~0_combout\)))) # (!\Equal3~0_combout\ & (\Add0~22_combout\ & (\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Add0~22_combout\,
	datac => \Equal2~0_combout\,
	datad => \Add1~22_combout\,
	combout => \aux[11]~54_combout\);

-- Location: LCCOMB_X40_Y35_N26
\aux[12]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[12]~60_combout\ = (!\SRC1~combout\(12) & !\SRC2~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(12),
	datad => \SRC2~combout\(12),
	combout => \aux[12]~60_combout\);

-- Location: LCCOMB_X40_Y35_N10
\aux[13]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[13]~64_combout\ = (!\SRC1~combout\(13) & !\SRC2~combout\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC1~combout\(13),
	datad => \SRC2~combout\(13),
	combout => \aux[13]~64_combout\);

-- Location: LCCOMB_X40_Y35_N2
\aux[14]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[14]~68_combout\ = (!\SRC2~combout\(14) & !\SRC1~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC2~combout\(14),
	datad => \SRC1~combout\(14),
	combout => \aux[14]~68_combout\);

-- Location: LCCOMB_X41_Y35_N6
\aux[15]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[15]~70_combout\ = (\Add0~30_combout\ & ((\Equal2~0_combout\) # ((\Add1~30_combout\ & \Equal3~0_combout\)))) # (!\Add0~30_combout\ & (\Add1~30_combout\ & (\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add1~30_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \aux[15]~70_combout\);

-- Location: LCCOMB_X42_Y33_N6
\aux[16]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[16]~76_combout\ = (!\SRC2~combout\(16) & !\SRC1~combout\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC2~combout\(16),
	datad => \SRC1~combout\(16),
	combout => \aux[16]~76_combout\);

-- Location: LCCOMB_X42_Y33_N26
\aux[17]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[17]~80_combout\ = (!\SRC1~combout\(17) & !\SRC2~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(17),
	datad => \SRC2~combout\(17),
	combout => \aux[17]~80_combout\);

-- Location: LCCOMB_X42_Y35_N16
\aux[18]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[18]~82_combout\ = (\Equal3~0_combout\ & ((\Add1~36_combout\) # ((\Equal2~0_combout\ & \Add0~36_combout\)))) # (!\Equal3~0_combout\ & (((\Equal2~0_combout\ & \Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Add1~36_combout\,
	datac => \Equal2~0_combout\,
	datad => \Add0~36_combout\,
	combout => \aux[18]~82_combout\);

-- Location: LCCOMB_X42_Y33_N2
\aux[19]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[19]~88_combout\ = (!\SRC1~combout\(19) & !\SRC2~combout\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(19),
	datac => \SRC2~combout\(19),
	combout => \aux[19]~88_combout\);

-- Location: LCCOMB_X43_Y33_N12
\aux[20]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[20]~92_combout\ = (!\SRC1~combout\(20) & !\SRC2~combout\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(20),
	datad => \SRC2~combout\(20),
	combout => \aux[20]~92_combout\);

-- Location: LCCOMB_X43_Y33_N0
\aux[21]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[21]~96_combout\ = (!\SRC1~combout\(21) & !\SRC2~combout\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(21),
	datad => \SRC2~combout\(21),
	combout => \aux[21]~96_combout\);

-- Location: LCCOMB_X45_Y35_N30
\aux[22]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[22]~100_combout\ = (!\SRC1~combout\(22) & !\SRC2~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(22),
	datad => \SRC2~combout\(22),
	combout => \aux[22]~100_combout\);

-- Location: LCCOMB_X47_Y33_N8
\aux[23]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[23]~104_combout\ = (!\SRC1~combout\(23) & !\SRC2~combout\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(23),
	datad => \SRC2~combout\(23),
	combout => \aux[23]~104_combout\);

-- Location: LCCOMB_X45_Y35_N6
\aux[24]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[24]~108_combout\ = (!\SRC2~combout\(24) & !\SRC1~combout\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC2~combout\(24),
	datad => \SRC1~combout\(24),
	combout => \aux[24]~108_combout\);

-- Location: LCCOMB_X46_Y35_N6
\aux[26]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[26]~116_combout\ = (!\SRC1~combout\(26) & !\SRC2~combout\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(26),
	datad => \SRC2~combout\(26),
	combout => \aux[26]~116_combout\);

-- Location: LCCOMB_X46_Y35_N12
\aux[27]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[27]~119_combout\ = (\SRC2~combout\(27) & ((\Equal4~0_combout\) # ((\SRC1~combout\(27) & \Equal5~0_combout\)))) # (!\SRC2~combout\(27) & (\SRC1~combout\(27) & (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(27),
	datab => \SRC1~combout\(27),
	datac => \Equal4~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \aux[27]~119_combout\);

-- Location: LCCOMB_X45_Y35_N10
\aux[28]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[28]~124_combout\ = (!\SRC2~combout\(28) & !\SRC1~combout\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(28),
	datac => \SRC1~combout\(28),
	combout => \aux[28]~124_combout\);

-- Location: LCCOMB_X47_Y35_N10
\aux[29]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[29]~128_combout\ = (!\SRC2~combout\(29) & !\SRC1~combout\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC2~combout\(29),
	datad => \SRC1~combout\(29),
	combout => \aux[29]~128_combout\);

-- Location: LCCOMB_X47_Y35_N24
\aux[30]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[30]~132_combout\ = (!\SRC1~combout\(30) & !\SRC2~combout\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(30),
	datad => \SRC2~combout\(30),
	combout => \aux[30]~132_combout\);

-- Location: LCCOMB_X44_Y35_N12
\aux[31]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[31]~136_combout\ = (!\SRC1~combout\(31) & !\SRC2~combout\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(31),
	datad => \SRC2~combout\(31),
	combout => \aux[31]~136_combout\);

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X43_Y35_N4
\aux[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[0]~6_combout\ = (\CONTROL~combout\(3)) # ((\CONTROL~combout\(0)) # ((!\CONTROL~combout\(1) & \CONTROL~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(1),
	datab => \CONTROL~combout\(3),
	datac => \CONTROL~combout\(0),
	datad => \CONTROL~combout\(2),
	combout => \aux[0]~6_combout\);

-- Location: LCCOMB_X43_Y35_N18
\aux~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux~5_combout\ = (\CONTROL~combout\(1) & (!\CONTROL~combout\(3) & (\CONTROL~combout\(0) & \CONTROL~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(1),
	datab => \CONTROL~combout\(3),
	datac => \CONTROL~combout\(0),
	datad => \CONTROL~combout\(2),
	combout => \aux~5_combout\);

-- Location: LCCOMB_X43_Y35_N28
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\CONTROL~combout\(1) & (!\CONTROL~combout\(3) & (\CONTROL~combout\(0) & !\CONTROL~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(1),
	datab => \CONTROL~combout\(3),
	datac => \CONTROL~combout\(0),
	datad => \CONTROL~combout\(2),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X43_Y35_N2
\aux[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[0]~11_combout\ = ((\aux[0]~10_combout\ & ((\Equal4~0_combout\))) # (!\aux[0]~10_combout\ & (!\aux~5_combout\))) # (!\aux[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[0]~10_combout\,
	datab => \aux[0]~6_combout\,
	datac => \aux~5_combout\,
	datad => \Equal4~0_combout\,
	combout => \aux[0]~11_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X43_Y35_N26
\aux[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[0]~7_combout\ = (\aux[0]~6_combout\ & ((\SRC1~combout\(0)) # (\SRC2~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(0),
	datac => \SRC2~combout\(0),
	datad => \aux[0]~6_combout\,
	combout => \aux[0]~7_combout\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y34_N0
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\SRC2~combout\(0) & (\SRC1~combout\(0) $ (VCC))) # (!\SRC2~combout\(0) & (\SRC1~combout\(0) & VCC))
-- \Add1~1\ = CARRY((\SRC2~combout\(0) & \SRC1~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(0),
	datab => \SRC1~combout\(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X42_Y35_N6
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\CONTROL~combout\(1) & (\CONTROL~combout\(2) & (!\CONTROL~combout\(0) & !\CONTROL~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(1),
	datab => \CONTROL~combout\(2),
	datac => \CONTROL~combout\(0),
	datad => \CONTROL~combout\(3),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X42_Y35_N30
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\CONTROL~combout\(1) & (!\CONTROL~combout\(2) & (!\CONTROL~combout\(0) & !\CONTROL~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(1),
	datab => \CONTROL~combout\(2),
	datac => \CONTROL~combout\(0),
	datad => \CONTROL~combout\(3),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X43_Y35_N8
\aux[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[0]~8_combout\ = (\Add0~0_combout\ & (!\Add1~0_combout\ & ((\Equal3~0_combout\)))) # (!\Add0~0_combout\ & ((\Equal2~0_combout\) # ((!\Add1~0_combout\ & \Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add1~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \aux[0]~8_combout\);

-- Location: LCCOMB_X43_Y35_N14
\aux[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[0]~9_combout\ = (!\aux[0]~8_combout\ & ((\aux~5_combout\) # ((\Equal4~0_combout\) # (!\aux[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux~5_combout\,
	datab => \aux[0]~7_combout\,
	datac => \aux[0]~8_combout\,
	datad => \Equal4~0_combout\,
	combout => \aux[0]~9_combout\);

-- Location: LCCOMB_X43_Y35_N10
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\CONTROL~combout\(1) & (!\CONTROL~combout\(3) & (!\CONTROL~combout\(0) & !\CONTROL~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(1),
	datab => \CONTROL~combout\(3),
	datac => \CONTROL~combout\(0),
	datad => \CONTROL~combout\(2),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X43_Y35_N16
\aux[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[0]~4_combout\ = (\SRC1~combout\(0) & (((\SRC2~combout\(0))) # (!\Equal5~0_combout\))) # (!\SRC1~combout\(0) & (!\Equal5~0_combout\ & ((\SRC2~combout\(0)) # (!\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(0),
	datab => \Equal5~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \SRC2~combout\(0),
	combout => \aux[0]~4_combout\);

-- Location: LCCOMB_X43_Y35_N20
\aux[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[0]~12_combout\ = (\aux[0]~9_combout\ & (\aux[0]~4_combout\ & ((\LessThan1~62_combout\) # (\aux[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~62_combout\,
	datab => \aux[0]~11_combout\,
	datac => \aux[0]~9_combout\,
	datad => \aux[0]~4_combout\,
	combout => \aux[0]~12_combout\);

-- Location: LCCOMB_X42_Y35_N18
\aux[31]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[31]~138_combout\ = (\CONTROL~combout\(0) & (!\CONTROL~combout\(3) & (\CONTROL~combout\(1) $ (!\CONTROL~combout\(2))))) # (!\CONTROL~combout\(0) & (\CONTROL~combout\(3) $ (((\CONTROL~combout\(1)) # (!\CONTROL~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL~combout\(1),
	datab => \CONTROL~combout\(2),
	datac => \CONTROL~combout\(3),
	datad => \CONTROL~combout\(0),
	combout => \aux[31]~138_combout\);

-- Location: CLKCTRL_G8
\aux[31]~138clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \aux[31]~138clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \aux[31]~138clkctrl_outclk\);

-- Location: LCCOMB_X43_Y35_N6
\aux[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(0) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[0]~12_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(0),
	datac => \aux[0]~12_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(0));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X45_Y34_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\SRC1~combout\(1) & ((\SRC2~combout\(1) & (!\Add0~1\)) # (!\SRC2~combout\(1) & (\Add0~1\ & VCC)))) # (!\SRC1~combout\(1) & ((\SRC2~combout\(1) & ((\Add0~1\) # (GND))) # (!\SRC2~combout\(1) & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\SRC1~combout\(1) & (\SRC2~combout\(1) & !\Add0~1\)) # (!\SRC1~combout\(1) & ((\SRC2~combout\(1)) # (!\Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(1),
	datab => \SRC2~combout\(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X43_Y34_N0
\aux[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[1]~15_combout\ = (\Add1~2_combout\ & ((\Equal3~0_combout\) # ((\Add0~2_combout\ & \Equal2~0_combout\)))) # (!\Add1~2_combout\ & (\Add0~2_combout\ & ((\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add0~2_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \aux[1]~15_combout\);

-- Location: LCCOMB_X43_Y35_N22
\aux[31]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[31]~13_combout\ = (!\Equal4~0_combout\ & (\aux[0]~6_combout\ & !\aux~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datac => \aux[0]~6_combout\,
	datad => \aux~5_combout\,
	combout => \aux[31]~13_combout\);

-- Location: LCCOMB_X43_Y34_N18
\aux[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[1]~14_combout\ = (\SRC1~combout\(1) & ((\Equal4~0_combout\) # ((\SRC2~combout\(1) & \Equal5~0_combout\)))) # (!\SRC1~combout\(1) & (\SRC2~combout\(1) & ((\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(1),
	datab => \SRC2~combout\(1),
	datac => \Equal5~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \aux[1]~14_combout\);

-- Location: LCCOMB_X43_Y34_N16
\aux[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[1]~17_combout\ = (\aux[1]~15_combout\) # ((\aux[1]~14_combout\) # ((\aux[1]~16_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[1]~16_combout\,
	datab => \aux[1]~15_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[1]~14_combout\,
	combout => \aux[1]~17_combout\);

-- Location: LCCOMB_X43_Y34_N22
\aux[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(1) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[1]~17_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(1),
	datac => \aux[1]~17_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(1));

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X45_Y34_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\SRC1~combout\(2) $ (\SRC2~combout\(2) $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\SRC1~combout\(2) & ((!\Add0~3\) # (!\SRC2~combout\(2)))) # (!\SRC1~combout\(2) & (!\SRC2~combout\(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(2),
	datab => \SRC2~combout\(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X43_Y34_N26
\aux[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[2]~18_combout\ = (\Add1~4_combout\ & ((\Equal3~0_combout\) # ((\Equal2~0_combout\ & \Add0~4_combout\)))) # (!\Add1~4_combout\ & (\Equal2~0_combout\ & (\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Equal2~0_combout\,
	datac => \Add0~4_combout\,
	datad => \Equal3~0_combout\,
	combout => \aux[2]~18_combout\);

-- Location: LCCOMB_X43_Y34_N4
\aux[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[2]~19_combout\ = (\SRC1~combout\(2) & ((\Equal4~0_combout\) # ((\SRC2~combout\(2) & \Equal5~0_combout\)))) # (!\SRC1~combout\(2) & (\SRC2~combout\(2) & ((\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(2),
	datab => \SRC2~combout\(2),
	datac => \Equal5~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \aux[2]~19_combout\);

-- Location: LCCOMB_X43_Y34_N24
\aux[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[2]~21_combout\ = (\aux[2]~18_combout\) # ((\aux[2]~19_combout\) # ((\aux[2]~20_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[2]~20_combout\,
	datab => \aux[2]~18_combout\,
	datac => \aux[2]~19_combout\,
	datad => \aux[31]~13_combout\,
	combout => \aux[2]~21_combout\);

-- Location: LCCOMB_X43_Y34_N28
\aux[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(2) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[2]~21_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(2),
	datac => \aux[2]~21_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(2));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X43_Y34_N8
\aux[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[3]~23_combout\ = (\SRC1~combout\(3) & ((\Equal4~0_combout\) # ((\SRC2~combout\(3) & \Equal5~0_combout\)))) # (!\SRC1~combout\(3) & (\SRC2~combout\(3) & ((\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(3),
	datab => \SRC2~combout\(3),
	datac => \Equal5~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \aux[3]~23_combout\);

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y34_N6
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\SRC1~combout\(3) & ((\SRC2~combout\(3) & (\Add1~5\ & VCC)) # (!\SRC2~combout\(3) & (!\Add1~5\)))) # (!\SRC1~combout\(3) & ((\SRC2~combout\(3) & (!\Add1~5\)) # (!\SRC2~combout\(3) & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\SRC1~combout\(3) & (!\SRC2~combout\(3) & !\Add1~5\)) # (!\SRC1~combout\(3) & ((!\Add1~5\) # (!\SRC2~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(3),
	datab => \SRC2~combout\(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X43_Y34_N14
\aux[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[3]~22_combout\ = (\Add0~6_combout\ & ((\Equal2~0_combout\) # ((\Add1~6_combout\ & \Equal3~0_combout\)))) # (!\Add0~6_combout\ & (\Add1~6_combout\ & (\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add1~6_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \aux[3]~22_combout\);

-- Location: LCCOMB_X43_Y34_N20
\aux[3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[3]~25_combout\ = (\aux[3]~23_combout\) # ((\aux[3]~22_combout\) # ((\aux[3]~24_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[3]~24_combout\,
	datab => \aux[31]~13_combout\,
	datac => \aux[3]~23_combout\,
	datad => \aux[3]~22_combout\,
	combout => \aux[3]~25_combout\);

-- Location: LCCOMB_X43_Y34_N6
\aux[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(3) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[3]~25_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(3),
	datac => \aux[3]~25_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(3));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y34_N8
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\SRC1~combout\(4) $ (\SRC2~combout\(4) $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\SRC1~combout\(4) & ((\SRC2~combout\(4)) # (!\Add1~7\))) # (!\SRC1~combout\(4) & (\SRC2~combout\(4) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(4),
	datab => \SRC2~combout\(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X41_Y35_N26
\aux[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[4]~26_combout\ = (\Add0~8_combout\ & ((\Equal2~0_combout\) # ((\Add1~8_combout\ & \Equal3~0_combout\)))) # (!\Add0~8_combout\ & (\Add1~8_combout\ & (\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add1~8_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \aux[4]~26_combout\);

-- Location: LCCOMB_X41_Y35_N20
\aux[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[4]~27_combout\ = (\SRC1~combout\(4) & ((\Equal4~0_combout\) # ((\Equal5~0_combout\ & \SRC2~combout\(4))))) # (!\SRC1~combout\(4) & (((\Equal4~0_combout\ & \SRC2~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(4),
	datab => \Equal5~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \SRC2~combout\(4),
	combout => \aux[4]~27_combout\);

-- Location: LCCOMB_X41_Y35_N8
\aux[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[4]~29_combout\ = (\aux[4]~26_combout\) # ((\aux[4]~27_combout\) # ((\aux[4]~28_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[4]~28_combout\,
	datab => \aux[4]~26_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[4]~27_combout\,
	combout => \aux[4]~29_combout\);

-- Location: LCCOMB_X41_Y35_N18
\aux[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(4) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[4]~29_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(4),
	datac => \aux[4]~29_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(4));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y34_N10
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\SRC1~combout\(5) & ((\SRC2~combout\(5) & (\Add1~9\ & VCC)) # (!\SRC2~combout\(5) & (!\Add1~9\)))) # (!\SRC1~combout\(5) & ((\SRC2~combout\(5) & (!\Add1~9\)) # (!\SRC2~combout\(5) & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\SRC1~combout\(5) & (!\SRC2~combout\(5) & !\Add1~9\)) # (!\SRC1~combout\(5) & ((!\Add1~9\) # (!\SRC2~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(5),
	datab => \SRC2~combout\(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X41_Y35_N14
\aux[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[5]~30_combout\ = (\Add0~10_combout\ & ((\Equal2~0_combout\) # ((\Add1~10_combout\ & \Equal3~0_combout\)))) # (!\Add0~10_combout\ & (\Add1~10_combout\ & (\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add1~10_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \aux[5]~30_combout\);

-- Location: LCCOMB_X41_Y35_N4
\aux[5]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[5]~31_combout\ = (\SRC1~combout\(5) & ((\Equal4~0_combout\) # ((\Equal5~0_combout\ & \SRC2~combout\(5))))) # (!\SRC1~combout\(5) & (((\Equal4~0_combout\ & \SRC2~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(5),
	datab => \Equal5~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \SRC2~combout\(5),
	combout => \aux[5]~31_combout\);

-- Location: LCCOMB_X41_Y35_N16
\aux[5]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[5]~33_combout\ = (\aux[5]~30_combout\) # ((\aux[5]~31_combout\) # ((\aux[5]~32_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[5]~32_combout\,
	datab => \aux[5]~30_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[5]~31_combout\,
	combout => \aux[5]~33_combout\);

-- Location: LCCOMB_X41_Y35_N0
\aux[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(5) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[5]~33_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(5),
	datac => \aux[5]~33_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(5));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y35_N28
\aux[6]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[6]~35_combout\ = (\SRC2~combout\(6) & ((\Equal4~0_combout\) # ((\Equal5~0_combout\ & \SRC1~combout\(6))))) # (!\SRC2~combout\(6) & (((\SRC1~combout\(6) & \Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \SRC2~combout\(6),
	datac => \SRC1~combout\(6),
	datad => \Equal4~0_combout\,
	combout => \aux[6]~35_combout\);

-- Location: LCCOMB_X44_Y34_N12
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\SRC1~combout\(6) $ (\SRC2~combout\(6) $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\SRC1~combout\(6) & ((\SRC2~combout\(6)) # (!\Add1~11\))) # (!\SRC1~combout\(6) & (\SRC2~combout\(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(6),
	datab => \SRC2~combout\(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X43_Y35_N24
\aux[6]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[6]~34_combout\ = (\Add0~12_combout\ & ((\Equal2~0_combout\) # ((\Add1~12_combout\ & \Equal3~0_combout\)))) # (!\Add0~12_combout\ & (\Add1~12_combout\ & ((\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add1~12_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \aux[6]~34_combout\);

-- Location: LCCOMB_X44_Y35_N2
\aux[6]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[6]~37_combout\ = (\aux[6]~35_combout\) # ((\aux[6]~34_combout\) # ((\aux[6]~36_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[6]~36_combout\,
	datab => \aux[6]~35_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[6]~34_combout\,
	combout => \aux[6]~37_combout\);

-- Location: LCCOMB_X44_Y35_N16
\aux[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(6) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[6]~37_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(6),
	datab => \aux[6]~37_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(6));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y35_N22
\aux[7]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[7]~39_combout\ = (\SRC2~combout\(7) & ((\Equal4~0_combout\) # ((\Equal5~0_combout\ & \SRC1~combout\(7))))) # (!\SRC2~combout\(7) & (((\SRC1~combout\(7) & \Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(7),
	datab => \Equal5~0_combout\,
	datac => \SRC1~combout\(7),
	datad => \Equal4~0_combout\,
	combout => \aux[7]~39_combout\);

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y35_N0
\aux[7]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[7]~40_combout\ = (!\SRC1~combout\(7) & !\SRC2~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(7),
	datad => \SRC2~combout\(7),
	combout => \aux[7]~40_combout\);

-- Location: LCCOMB_X42_Y35_N14
\aux[7]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[7]~41_combout\ = (\aux[7]~38_combout\) # ((\aux[7]~39_combout\) # ((\aux[31]~13_combout\ & \aux[7]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[7]~38_combout\,
	datab => \aux[7]~39_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[7]~40_combout\,
	combout => \aux[7]~41_combout\);

-- Location: LCCOMB_X42_Y35_N8
\aux[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(7) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & (\aux[7]~41_combout\)) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & ((aux(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aux[7]~41_combout\,
	datac => aux(7),
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(7));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X45_Y34_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\SRC2~combout\(8) $ (\SRC1~combout\(8) $ (\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\SRC2~combout\(8) & (\SRC1~combout\(8) & !\Add0~15\)) # (!\SRC2~combout\(8) & ((\SRC1~combout\(8)) # (!\Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(8),
	datab => \SRC1~combout\(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X42_Y34_N26
\aux[8]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[8]~42_combout\ = (\Add1~16_combout\ & ((\Equal3~0_combout\) # ((\Add0~16_combout\ & \Equal2~0_combout\)))) # (!\Add1~16_combout\ & (\Add0~16_combout\ & ((\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Add0~16_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \aux[8]~42_combout\);

-- Location: LCCOMB_X42_Y34_N20
\aux[8]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[8]~43_combout\ = (\SRC2~combout\(8) & ((\Equal4~0_combout\) # ((\SRC1~combout\(8) & \Equal5~0_combout\)))) # (!\SRC2~combout\(8) & (\SRC1~combout\(8) & (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(8),
	datab => \SRC1~combout\(8),
	datac => \Equal4~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \aux[8]~43_combout\);

-- Location: LCCOMB_X42_Y34_N24
\aux[8]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[8]~45_combout\ = (\aux[8]~42_combout\) # ((\aux[8]~43_combout\) # ((\aux[8]~44_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[8]~44_combout\,
	datab => \aux[8]~42_combout\,
	datac => \aux[8]~43_combout\,
	datad => \aux[31]~13_combout\,
	combout => \aux[8]~45_combout\);

-- Location: LCCOMB_X42_Y34_N30
\aux[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(8) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[8]~45_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(8),
	datac => \aux[8]~45_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(8));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y34_N0
\aux[9]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[9]~47_combout\ = (\SRC2~combout\(9) & ((\Equal4~0_combout\) # ((\SRC1~combout\(9) & \Equal5~0_combout\)))) # (!\SRC2~combout\(9) & (\SRC1~combout\(9) & (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(9),
	datab => \SRC1~combout\(9),
	datac => \Equal4~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \aux[9]~47_combout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X45_Y34_N18
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\SRC1~combout\(9) & ((\SRC2~combout\(9) & (!\Add0~17\)) # (!\SRC2~combout\(9) & (\Add0~17\ & VCC)))) # (!\SRC1~combout\(9) & ((\SRC2~combout\(9) & ((\Add0~17\) # (GND))) # (!\SRC2~combout\(9) & (!\Add0~17\))))
-- \Add0~19\ = CARRY((\SRC1~combout\(9) & (\SRC2~combout\(9) & !\Add0~17\)) # (!\SRC1~combout\(9) & ((\SRC2~combout\(9)) # (!\Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(9),
	datab => \SRC2~combout\(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X42_Y34_N22
\aux[9]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[9]~46_combout\ = (\Add1~18_combout\ & ((\Equal3~0_combout\) # ((\Add0~18_combout\ & \Equal2~0_combout\)))) # (!\Add1~18_combout\ & (\Add0~18_combout\ & (\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \Add0~18_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \aux[9]~46_combout\);

-- Location: LCCOMB_X42_Y34_N4
\aux[9]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[9]~49_combout\ = (\aux[9]~47_combout\) # ((\aux[9]~46_combout\) # ((\aux[9]~48_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[9]~48_combout\,
	datab => \aux[9]~47_combout\,
	datac => \aux[9]~46_combout\,
	datad => \aux[31]~13_combout\,
	combout => \aux[9]~49_combout\);

-- Location: LCCOMB_X42_Y34_N12
\aux[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(9) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[9]~49_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(9),
	datac => \aux[9]~49_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(9));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X45_Y34_N20
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\SRC1~combout\(10) $ (\SRC2~combout\(10) $ (\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\SRC1~combout\(10) & ((!\Add0~19\) # (!\SRC2~combout\(10)))) # (!\SRC1~combout\(10) & (!\SRC2~combout\(10) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(10),
	datab => \SRC2~combout\(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X42_Y34_N18
\aux[10]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[10]~50_combout\ = (\Add1~20_combout\ & ((\Equal3~0_combout\) # ((\Add0~20_combout\ & \Equal2~0_combout\)))) # (!\Add1~20_combout\ & (\Add0~20_combout\ & (\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \Add0~20_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \aux[10]~50_combout\);

-- Location: LCCOMB_X42_Y34_N16
\aux[10]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[10]~51_combout\ = (\SRC1~combout\(10) & ((\Equal4~0_combout\) # ((\SRC2~combout\(10) & \Equal5~0_combout\)))) # (!\SRC1~combout\(10) & (\SRC2~combout\(10) & (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(10),
	datab => \SRC2~combout\(10),
	datac => \Equal4~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \aux[10]~51_combout\);

-- Location: LCCOMB_X42_Y34_N8
\aux[10]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[10]~53_combout\ = (\aux[10]~50_combout\) # ((\aux[10]~51_combout\) # ((\aux[10]~52_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[10]~52_combout\,
	datab => \aux[10]~50_combout\,
	datac => \aux[10]~51_combout\,
	datad => \aux[31]~13_combout\,
	combout => \aux[10]~53_combout\);

-- Location: LCCOMB_X42_Y34_N6
\aux[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(10) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[10]~53_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(10),
	datac => \aux[10]~53_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(10));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X43_Y35_N30
\aux[11]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[11]~55_combout\ = (\Equal4~0_combout\ & (((\SRC1~combout\(11)) # (\SRC2~combout\(11))))) # (!\Equal4~0_combout\ & (\Equal5~0_combout\ & (\SRC1~combout\(11) & \SRC2~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal4~0_combout\,
	datac => \SRC1~combout\(11),
	datad => \SRC2~combout\(11),
	combout => \aux[11]~55_combout\);

-- Location: LCCOMB_X43_Y35_N0
\aux[11]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[11]~56_combout\ = (!\SRC2~combout\(11) & !\SRC1~combout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC2~combout\(11),
	datad => \SRC1~combout\(11),
	combout => \aux[11]~56_combout\);

-- Location: LCCOMB_X42_Y35_N26
\aux[11]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[11]~57_combout\ = (\aux[11]~54_combout\) # ((\aux[11]~55_combout\) # ((\aux[31]~13_combout\ & \aux[11]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[11]~54_combout\,
	datab => \aux[11]~55_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[11]~56_combout\,
	combout => \aux[11]~57_combout\);

-- Location: LCCOMB_X42_Y35_N24
\aux[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(11) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & (\aux[11]~57_combout\)) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & ((aux(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aux[11]~57_combout\,
	datac => aux(11),
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(11));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X40_Y35_N24
\aux[12]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[12]~59_combout\ = (\SRC2~combout\(12) & ((\Equal4~0_combout\) # ((\SRC1~combout\(12) & \Equal5~0_combout\)))) # (!\SRC2~combout\(12) & (\SRC1~combout\(12) & (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(12),
	datab => \SRC1~combout\(12),
	datac => \Equal4~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \aux[12]~59_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X45_Y34_N24
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\SRC1~combout\(12) $ (\SRC2~combout\(12) $ (\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\SRC1~combout\(12) & ((!\Add0~23\) # (!\SRC2~combout\(12)))) # (!\SRC1~combout\(12) & (!\SRC2~combout\(12) & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(12),
	datab => \SRC2~combout\(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X40_Y35_N18
\aux[12]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[12]~58_combout\ = (\Add1~24_combout\ & ((\Equal3~0_combout\) # ((\Equal2~0_combout\ & \Add0~24_combout\)))) # (!\Add1~24_combout\ & (\Equal2~0_combout\ & ((\Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \Add0~24_combout\,
	combout => \aux[12]~58_combout\);

-- Location: LCCOMB_X40_Y35_N28
\aux[12]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[12]~61_combout\ = (\aux[12]~59_combout\) # ((\aux[12]~58_combout\) # ((\aux[12]~60_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[12]~60_combout\,
	datab => \aux[31]~13_combout\,
	datac => \aux[12]~59_combout\,
	datad => \aux[12]~58_combout\,
	combout => \aux[12]~61_combout\);

-- Location: LCCOMB_X40_Y35_N6
\aux[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(12) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[12]~61_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(12),
	datab => \aux[12]~61_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(12));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y34_N26
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\SRC1~combout\(13) & ((\SRC2~combout\(13) & (\Add1~25\ & VCC)) # (!\SRC2~combout\(13) & (!\Add1~25\)))) # (!\SRC1~combout\(13) & ((\SRC2~combout\(13) & (!\Add1~25\)) # (!\SRC2~combout\(13) & ((\Add1~25\) # (GND)))))
-- \Add1~27\ = CARRY((\SRC1~combout\(13) & (!\SRC2~combout\(13) & !\Add1~25\)) # (!\SRC1~combout\(13) & ((!\Add1~25\) # (!\SRC2~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(13),
	datab => \SRC2~combout\(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X40_Y35_N30
\aux[13]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[13]~62_combout\ = (\Add0~26_combout\ & ((\Equal2~0_combout\) # ((\Equal3~0_combout\ & \Add1~26_combout\)))) # (!\Add0~26_combout\ & (((\Equal3~0_combout\ & \Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \Add1~26_combout\,
	combout => \aux[13]~62_combout\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X40_Y35_N8
\aux[13]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[13]~63_combout\ = (\SRC2~combout\(13) & ((\Equal4~0_combout\) # ((\SRC1~combout\(13) & \Equal5~0_combout\)))) # (!\SRC2~combout\(13) & (\SRC1~combout\(13) & (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(13),
	datab => \SRC1~combout\(13),
	datac => \Equal4~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \aux[13]~63_combout\);

-- Location: LCCOMB_X40_Y35_N20
\aux[13]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[13]~65_combout\ = (\aux[13]~62_combout\) # ((\aux[13]~63_combout\) # ((\aux[13]~64_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[13]~64_combout\,
	datab => \aux[13]~62_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[13]~63_combout\,
	combout => \aux[13]~65_combout\);

-- Location: LCCOMB_X40_Y35_N0
\aux[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(13) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[13]~65_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(13),
	datac => \aux[13]~65_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(13));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X40_Y35_N4
\aux[14]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[14]~67_combout\ = (\SRC1~combout\(14) & ((\Equal4~0_combout\) # ((\SRC2~combout\(14) & \Equal5~0_combout\)))) # (!\SRC1~combout\(14) & (\SRC2~combout\(14) & (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(14),
	datab => \SRC2~combout\(14),
	datac => \Equal4~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \aux[14]~67_combout\);

-- Location: LCCOMB_X44_Y34_N28
\Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\SRC1~combout\(14) $ (\SRC2~combout\(14) $ (!\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\SRC1~combout\(14) & ((\SRC2~combout\(14)) # (!\Add1~27\))) # (!\SRC1~combout\(14) & (\SRC2~combout\(14) & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(14),
	datab => \SRC2~combout\(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X40_Y35_N14
\aux[14]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[14]~66_combout\ = (\Add0~28_combout\ & ((\Equal2~0_combout\) # ((\Equal3~0_combout\ & \Add1~28_combout\)))) # (!\Add0~28_combout\ & (((\Equal3~0_combout\ & \Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \Add1~28_combout\,
	combout => \aux[14]~66_combout\);

-- Location: LCCOMB_X40_Y35_N16
\aux[14]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[14]~69_combout\ = (\aux[14]~67_combout\) # ((\aux[14]~66_combout\) # ((\aux[14]~68_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[14]~68_combout\,
	datab => \aux[31]~13_combout\,
	datac => \aux[14]~67_combout\,
	datad => \aux[14]~66_combout\,
	combout => \aux[14]~69_combout\);

-- Location: LCCOMB_X40_Y35_N22
\aux[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(14) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[14]~69_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(14),
	datac => \aux[14]~69_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(14));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X41_Y35_N28
\aux[15]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[15]~71_combout\ = (\SRC2~combout\(15) & ((\Equal4~0_combout\) # ((\Equal5~0_combout\ & \SRC1~combout\(15))))) # (!\SRC2~combout\(15) & (((\Equal4~0_combout\ & \SRC1~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(15),
	datab => \Equal5~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \SRC1~combout\(15),
	combout => \aux[15]~71_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X41_Y35_N22
\aux[15]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[15]~72_combout\ = (!\SRC1~combout\(15) & !\SRC2~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC1~combout\(15),
	datad => \SRC2~combout\(15),
	combout => \aux[15]~72_combout\);

-- Location: LCCOMB_X41_Y35_N24
\aux[15]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[15]~73_combout\ = (\aux[15]~70_combout\) # ((\aux[15]~71_combout\) # ((\aux[31]~13_combout\ & \aux[15]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[15]~70_combout\,
	datab => \aux[15]~71_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[15]~72_combout\,
	combout => \aux[15]~73_combout\);

-- Location: LCCOMB_X41_Y35_N30
\aux[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(15) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[15]~73_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(15),
	datac => \aux[15]~73_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(15));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X45_Y33_N0
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((\SRC1~combout\(16) $ (\SRC2~combout\(16) $ (\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((\SRC1~combout\(16) & ((!\Add0~31\) # (!\SRC2~combout\(16)))) # (!\SRC1~combout\(16) & (!\SRC2~combout\(16) & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(16),
	datab => \SRC2~combout\(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X42_Y33_N22
\aux[16]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[16]~74_combout\ = (\Add1~32_combout\ & ((\Equal3~0_combout\) # ((\Add0~32_combout\ & \Equal2~0_combout\)))) # (!\Add1~32_combout\ & (\Add0~32_combout\ & ((\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datab => \Add0~32_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \aux[16]~74_combout\);

-- Location: LCCOMB_X42_Y33_N24
\aux[16]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[16]~75_combout\ = (\SRC1~combout\(16) & ((\Equal4~0_combout\) # ((\Equal5~0_combout\ & \SRC2~combout\(16))))) # (!\SRC1~combout\(16) & (\Equal4~0_combout\ & ((\SRC2~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(16),
	datab => \Equal4~0_combout\,
	datac => \Equal5~0_combout\,
	datad => \SRC2~combout\(16),
	combout => \aux[16]~75_combout\);

-- Location: LCCOMB_X42_Y33_N20
\aux[16]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[16]~77_combout\ = (\aux[16]~74_combout\) # ((\aux[16]~75_combout\) # ((\aux[16]~76_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[16]~76_combout\,
	datab => \aux[16]~74_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[16]~75_combout\,
	combout => \aux[16]~77_combout\);

-- Location: LCCOMB_X42_Y33_N30
\aux[16]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(16) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[16]~77_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(16),
	datac => \aux[16]~77_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(16));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y33_N2
\Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\SRC2~combout\(17) & ((\SRC1~combout\(17) & (\Add1~33\ & VCC)) # (!\SRC1~combout\(17) & (!\Add1~33\)))) # (!\SRC2~combout\(17) & ((\SRC1~combout\(17) & (!\Add1~33\)) # (!\SRC1~combout\(17) & ((\Add1~33\) # (GND)))))
-- \Add1~35\ = CARRY((\SRC2~combout\(17) & (!\SRC1~combout\(17) & !\Add1~33\)) # (!\SRC2~combout\(17) & ((!\Add1~33\) # (!\SRC1~combout\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(17),
	datab => \SRC1~combout\(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X42_Y33_N14
\aux[17]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[17]~78_combout\ = (\Add0~34_combout\ & ((\Equal2~0_combout\) # ((\Add1~34_combout\ & \Equal3~0_combout\)))) # (!\Add0~34_combout\ & (\Add1~34_combout\ & (\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add1~34_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \aux[17]~78_combout\);

-- Location: LCCOMB_X42_Y33_N8
\aux[17]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[17]~79_combout\ = (\SRC2~combout\(17) & ((\Equal4~0_combout\) # ((\SRC1~combout\(17) & \Equal5~0_combout\)))) # (!\SRC2~combout\(17) & (\SRC1~combout\(17) & ((\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(17),
	datab => \SRC1~combout\(17),
	datac => \Equal5~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \aux[17]~79_combout\);

-- Location: LCCOMB_X42_Y33_N16
\aux[17]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[17]~81_combout\ = (\aux[17]~78_combout\) # ((\aux[17]~79_combout\) # ((\aux[17]~80_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[17]~80_combout\,
	datab => \aux[31]~13_combout\,
	datac => \aux[17]~78_combout\,
	datad => \aux[17]~79_combout\,
	combout => \aux[17]~81_combout\);

-- Location: LCCOMB_X42_Y33_N0
\aux[17]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(17) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[17]~81_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(17),
	datac => \aux[17]~81_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(17));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y35_N2
\aux[18]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[18]~83_combout\ = (\SRC2~combout\(18) & ((\Equal4~0_combout\) # ((\Equal5~0_combout\ & \SRC1~combout\(18))))) # (!\SRC2~combout\(18) & (((\SRC1~combout\(18) & \Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(18),
	datab => \Equal5~0_combout\,
	datac => \SRC1~combout\(18),
	datad => \Equal4~0_combout\,
	combout => \aux[18]~83_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y35_N4
\aux[18]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[18]~84_combout\ = (!\SRC1~combout\(18) & !\SRC2~combout\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRC1~combout\(18),
	datad => \SRC2~combout\(18),
	combout => \aux[18]~84_combout\);

-- Location: LCCOMB_X42_Y35_N28
\aux[18]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[18]~85_combout\ = (\aux[18]~82_combout\) # ((\aux[18]~83_combout\) # ((\aux[31]~13_combout\ & \aux[18]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[18]~82_combout\,
	datab => \aux[18]~83_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[18]~84_combout\,
	combout => \aux[18]~85_combout\);

-- Location: LCCOMB_X42_Y35_N20
\aux[18]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(18) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & (\aux[18]~85_combout\)) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & ((aux(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aux[18]~85_combout\,
	datac => aux(18),
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(18));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X42_Y33_N28
\aux[19]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[19]~87_combout\ = (\SRC1~combout\(19) & ((\Equal4~0_combout\) # ((\SRC2~combout\(19) & \Equal5~0_combout\)))) # (!\SRC1~combout\(19) & (\Equal4~0_combout\ & (\SRC2~combout\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(19),
	datab => \Equal4~0_combout\,
	datac => \SRC2~combout\(19),
	datad => \Equal5~0_combout\,
	combout => \aux[19]~87_combout\);

-- Location: LCCOMB_X44_Y33_N6
\Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\SRC1~combout\(19) & ((\SRC2~combout\(19) & (\Add1~37\ & VCC)) # (!\SRC2~combout\(19) & (!\Add1~37\)))) # (!\SRC1~combout\(19) & ((\SRC2~combout\(19) & (!\Add1~37\)) # (!\SRC2~combout\(19) & ((\Add1~37\) # (GND)))))
-- \Add1~39\ = CARRY((\SRC1~combout\(19) & (!\SRC2~combout\(19) & !\Add1~37\)) # (!\SRC1~combout\(19) & ((!\Add1~37\) # (!\SRC2~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(19),
	datab => \SRC2~combout\(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X42_Y33_N18
\aux[19]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[19]~86_combout\ = (\Add0~38_combout\ & ((\Equal2~0_combout\) # ((\Add1~38_combout\ & \Equal3~0_combout\)))) # (!\Add0~38_combout\ & (\Add1~38_combout\ & (\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \Add1~38_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \aux[19]~86_combout\);

-- Location: LCCOMB_X42_Y33_N4
\aux[19]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[19]~89_combout\ = (\aux[19]~87_combout\) # ((\aux[19]~86_combout\) # ((\aux[19]~88_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[19]~88_combout\,
	datab => \aux[19]~87_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[19]~86_combout\,
	combout => \aux[19]~89_combout\);

-- Location: LCCOMB_X42_Y33_N10
\aux[19]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(19) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[19]~89_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(19),
	datac => \aux[19]~89_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(19));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X43_Y33_N2
\aux[20]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[20]~91_combout\ = (\SRC1~combout\(20) & ((\Equal4~0_combout\) # ((\SRC2~combout\(20) & \Equal5~0_combout\)))) # (!\SRC1~combout\(20) & (\SRC2~combout\(20) & (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(20),
	datab => \SRC2~combout\(20),
	datac => \Equal4~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \aux[20]~91_combout\);

-- Location: LCCOMB_X44_Y33_N8
\Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((\SRC1~combout\(20) $ (\SRC2~combout\(20) $ (!\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((\SRC1~combout\(20) & ((\SRC2~combout\(20)) # (!\Add1~39\))) # (!\SRC1~combout\(20) & (\SRC2~combout\(20) & !\Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(20),
	datab => \SRC2~combout\(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X43_Y33_N8
\aux[20]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[20]~90_combout\ = (\Add0~40_combout\ & ((\Equal2~0_combout\) # ((\Add1~40_combout\ & \Equal3~0_combout\)))) # (!\Add0~40_combout\ & (\Add1~40_combout\ & ((\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Add1~40_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \aux[20]~90_combout\);

-- Location: LCCOMB_X43_Y33_N30
\aux[20]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[20]~93_combout\ = (\aux[20]~91_combout\) # ((\aux[20]~90_combout\) # ((\aux[20]~92_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[20]~92_combout\,
	datab => \aux[20]~91_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[20]~90_combout\,
	combout => \aux[20]~93_combout\);

-- Location: LCCOMB_X43_Y33_N22
\aux[20]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(20) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & (\aux[20]~93_combout\)) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & ((aux(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aux[20]~93_combout\,
	datac => aux(20),
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(20));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y33_N10
\Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\SRC1~combout\(21) & ((\SRC2~combout\(21) & (\Add1~41\ & VCC)) # (!\SRC2~combout\(21) & (!\Add1~41\)))) # (!\SRC1~combout\(21) & ((\SRC2~combout\(21) & (!\Add1~41\)) # (!\SRC2~combout\(21) & ((\Add1~41\) # (GND)))))
-- \Add1~43\ = CARRY((\SRC1~combout\(21) & (!\SRC2~combout\(21) & !\Add1~41\)) # (!\SRC1~combout\(21) & ((!\Add1~41\) # (!\SRC2~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(21),
	datab => \SRC2~combout\(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X43_Y33_N24
\aux[21]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[21]~94_combout\ = (\Add0~42_combout\ & ((\Equal2~0_combout\) # ((\Add1~42_combout\ & \Equal3~0_combout\)))) # (!\Add0~42_combout\ & (\Add1~42_combout\ & ((\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Add1~42_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \aux[21]~94_combout\);

-- Location: LCCOMB_X43_Y33_N18
\aux[21]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[21]~95_combout\ = (\SRC1~combout\(21) & ((\Equal4~0_combout\) # ((\SRC2~combout\(21) & \Equal5~0_combout\)))) # (!\SRC1~combout\(21) & (\SRC2~combout\(21) & (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(21),
	datab => \SRC2~combout\(21),
	datac => \Equal4~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \aux[21]~95_combout\);

-- Location: LCCOMB_X43_Y33_N14
\aux[21]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[21]~97_combout\ = (\aux[21]~94_combout\) # ((\aux[21]~95_combout\) # ((\aux[21]~96_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[21]~96_combout\,
	datab => \aux[31]~13_combout\,
	datac => \aux[21]~94_combout\,
	datad => \aux[21]~95_combout\,
	combout => \aux[21]~97_combout\);

-- Location: LCCOMB_X43_Y33_N28
\aux[21]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(21) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[21]~97_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(21),
	datac => \aux[21]~97_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(21));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X45_Y35_N16
\aux[22]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[22]~99_combout\ = (\SRC2~combout\(22) & ((\Equal4~0_combout\) # ((\SRC1~combout\(22) & \Equal5~0_combout\)))) # (!\SRC2~combout\(22) & (\SRC1~combout\(22) & (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(22),
	datab => \SRC1~combout\(22),
	datac => \Equal4~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \aux[22]~99_combout\);

-- Location: LCCOMB_X44_Y33_N12
\Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((\SRC2~combout\(22) $ (\SRC1~combout\(22) $ (!\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((\SRC2~combout\(22) & ((\SRC1~combout\(22)) # (!\Add1~43\))) # (!\SRC2~combout\(22) & (\SRC1~combout\(22) & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(22),
	datab => \SRC1~combout\(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X45_Y35_N14
\aux[22]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[22]~98_combout\ = (\Add0~44_combout\ & ((\Equal2~0_combout\) # ((\Add1~44_combout\ & \Equal3~0_combout\)))) # (!\Add0~44_combout\ & (\Add1~44_combout\ & ((\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \Add1~44_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \aux[22]~98_combout\);

-- Location: LCCOMB_X45_Y35_N8
\aux[22]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[22]~101_combout\ = (\aux[22]~99_combout\) # ((\aux[22]~98_combout\) # ((\aux[22]~100_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[22]~100_combout\,
	datab => \aux[31]~13_combout\,
	datac => \aux[22]~99_combout\,
	datad => \aux[22]~98_combout\,
	combout => \aux[22]~101_combout\);

-- Location: LCCOMB_X45_Y35_N22
\aux[22]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(22) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[22]~101_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(22),
	datac => \aux[22]~101_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(22));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X43_Y33_N26
\aux[23]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[23]~103_combout\ = (\SRC2~combout\(23) & ((\Equal4~0_combout\) # ((\SRC1~combout\(23) & \Equal5~0_combout\)))) # (!\SRC2~combout\(23) & (\SRC1~combout\(23) & (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(23),
	datab => \SRC1~combout\(23),
	datac => \Equal4~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \aux[23]~103_combout\);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y33_N14
\Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\SRC1~combout\(23) & ((\SRC2~combout\(23) & (\Add1~45\ & VCC)) # (!\SRC2~combout\(23) & (!\Add1~45\)))) # (!\SRC1~combout\(23) & ((\SRC2~combout\(23) & (!\Add1~45\)) # (!\SRC2~combout\(23) & ((\Add1~45\) # (GND)))))
-- \Add1~47\ = CARRY((\SRC1~combout\(23) & (!\SRC2~combout\(23) & !\Add1~45\)) # (!\SRC1~combout\(23) & ((!\Add1~45\) # (!\SRC2~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(23),
	datab => \SRC2~combout\(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X43_Y33_N4
\aux[23]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[23]~102_combout\ = (\Add0~46_combout\ & ((\Equal2~0_combout\) # ((\Add1~46_combout\ & \Equal3~0_combout\)))) # (!\Add0~46_combout\ & (\Add1~46_combout\ & ((\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \Add1~46_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \aux[23]~102_combout\);

-- Location: LCCOMB_X43_Y33_N20
\aux[23]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[23]~105_combout\ = (\aux[23]~103_combout\) # ((\aux[23]~102_combout\) # ((\aux[23]~104_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[23]~104_combout\,
	datab => \aux[23]~103_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[23]~102_combout\,
	combout => \aux[23]~105_combout\);

-- Location: LCCOMB_X43_Y33_N10
\aux[23]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(23) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[23]~105_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(23),
	datac => \aux[23]~105_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(23));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X45_Y33_N16
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\SRC2~combout\(24) $ (\SRC1~combout\(24) $ (\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((\SRC2~combout\(24) & (\SRC1~combout\(24) & !\Add0~47\)) # (!\SRC2~combout\(24) & ((\SRC1~combout\(24)) # (!\Add0~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(24),
	datab => \SRC1~combout\(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X45_Y35_N2
\aux[24]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[24]~106_combout\ = (\Add1~48_combout\ & ((\Equal3~0_combout\) # ((\Add0~48_combout\ & \Equal2~0_combout\)))) # (!\Add1~48_combout\ & (\Add0~48_combout\ & (\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~48_combout\,
	datab => \Add0~48_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \aux[24]~106_combout\);

-- Location: LCCOMB_X45_Y35_N20
\aux[24]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[24]~107_combout\ = (\SRC2~combout\(24) & ((\Equal4~0_combout\) # ((\SRC1~combout\(24) & \Equal5~0_combout\)))) # (!\SRC2~combout\(24) & (\SRC1~combout\(24) & (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(24),
	datab => \SRC1~combout\(24),
	datac => \Equal4~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \aux[24]~107_combout\);

-- Location: LCCOMB_X45_Y35_N24
\aux[24]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[24]~109_combout\ = (\aux[24]~106_combout\) # ((\aux[24]~107_combout\) # ((\aux[24]~108_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[24]~108_combout\,
	datab => \aux[24]~106_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[24]~107_combout\,
	combout => \aux[24]~109_combout\);

-- Location: LCCOMB_X45_Y35_N0
\aux[24]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(24) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[24]~109_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(24),
	datac => \aux[24]~109_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(24));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X46_Y35_N2
\aux[25]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[25]~112_combout\ = (!\SRC1~combout\(25) & !\SRC2~combout\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC1~combout\(25),
	datad => \SRC2~combout\(25),
	combout => \aux[25]~112_combout\);

-- Location: LCCOMB_X46_Y35_N16
\aux[25]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[25]~111_combout\ = (\SRC2~combout\(25) & ((\Equal4~0_combout\) # ((\SRC1~combout\(25) & \Equal5~0_combout\)))) # (!\SRC2~combout\(25) & (\SRC1~combout\(25) & (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(25),
	datab => \SRC1~combout\(25),
	datac => \Equal4~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \aux[25]~111_combout\);

-- Location: LCCOMB_X45_Y33_N18
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\SRC1~combout\(25) & ((\SRC2~combout\(25) & (!\Add0~49\)) # (!\SRC2~combout\(25) & (\Add0~49\ & VCC)))) # (!\SRC1~combout\(25) & ((\SRC2~combout\(25) & ((\Add0~49\) # (GND))) # (!\SRC2~combout\(25) & (!\Add0~49\))))
-- \Add0~51\ = CARRY((\SRC1~combout\(25) & (\SRC2~combout\(25) & !\Add0~49\)) # (!\SRC1~combout\(25) & ((\SRC2~combout\(25)) # (!\Add0~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(25),
	datab => \SRC2~combout\(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X46_Y35_N18
\aux[25]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[25]~110_combout\ = (\Add1~50_combout\ & ((\Equal3~0_combout\) # ((\Add0~50_combout\ & \Equal2~0_combout\)))) # (!\Add1~50_combout\ & (\Add0~50_combout\ & (\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~50_combout\,
	datab => \Add0~50_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \aux[25]~110_combout\);

-- Location: LCCOMB_X46_Y35_N4
\aux[25]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[25]~113_combout\ = (\aux[25]~111_combout\) # ((\aux[25]~110_combout\) # ((\aux[31]~13_combout\ & \aux[25]~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[31]~13_combout\,
	datab => \aux[25]~112_combout\,
	datac => \aux[25]~111_combout\,
	datad => \aux[25]~110_combout\,
	combout => \aux[25]~113_combout\);

-- Location: LCCOMB_X46_Y35_N26
\aux[25]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(25) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[25]~113_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(25),
	datac => \aux[25]~113_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(25));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X46_Y35_N8
\aux[26]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[26]~115_combout\ = (\SRC1~combout\(26) & ((\Equal4~0_combout\) # ((\SRC2~combout\(26) & \Equal5~0_combout\)))) # (!\SRC1~combout\(26) & (\SRC2~combout\(26) & (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(26),
	datab => \SRC2~combout\(26),
	datac => \Equal4~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \aux[26]~115_combout\);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y33_N20
\Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((\SRC2~combout\(26) $ (\SRC1~combout\(26) $ (!\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((\SRC2~combout\(26) & ((\SRC1~combout\(26)) # (!\Add1~51\))) # (!\SRC2~combout\(26) & (\SRC1~combout\(26) & !\Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(26),
	datab => \SRC1~combout\(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X46_Y35_N14
\aux[26]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[26]~114_combout\ = (\Add0~52_combout\ & ((\Equal2~0_combout\) # ((\Add1~52_combout\ & \Equal3~0_combout\)))) # (!\Add0~52_combout\ & (\Add1~52_combout\ & ((\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \Add1~52_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \aux[26]~114_combout\);

-- Location: LCCOMB_X46_Y35_N20
\aux[26]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[26]~117_combout\ = (\aux[26]~115_combout\) # ((\aux[26]~114_combout\) # ((\aux[26]~116_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[26]~116_combout\,
	datab => \aux[31]~13_combout\,
	datac => \aux[26]~115_combout\,
	datad => \aux[26]~114_combout\,
	combout => \aux[26]~117_combout\);

-- Location: LCCOMB_X46_Y35_N0
\aux[26]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(26) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[26]~117_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(26),
	datac => \aux[26]~117_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(26));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y33_N22
\Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\SRC2~combout\(27) & ((\SRC1~combout\(27) & (\Add1~53\ & VCC)) # (!\SRC1~combout\(27) & (!\Add1~53\)))) # (!\SRC2~combout\(27) & ((\SRC1~combout\(27) & (!\Add1~53\)) # (!\SRC1~combout\(27) & ((\Add1~53\) # (GND)))))
-- \Add1~55\ = CARRY((\SRC2~combout\(27) & (!\SRC1~combout\(27) & !\Add1~53\)) # (!\SRC2~combout\(27) & ((!\Add1~53\) # (!\SRC1~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(27),
	datab => \SRC1~combout\(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X46_Y35_N22
\aux[27]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[27]~118_combout\ = (\Add0~54_combout\ & ((\Equal2~0_combout\) # ((\Add1~54_combout\ & \Equal3~0_combout\)))) # (!\Add0~54_combout\ & (\Add1~54_combout\ & ((\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datab => \Add1~54_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \aux[27]~118_combout\);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X46_Y35_N30
\aux[27]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[27]~120_combout\ = (!\SRC2~combout\(27) & !\SRC1~combout\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRC2~combout\(27),
	datac => \SRC1~combout\(27),
	combout => \aux[27]~120_combout\);

-- Location: LCCOMB_X46_Y35_N24
\aux[27]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[27]~121_combout\ = (\aux[27]~119_combout\) # ((\aux[27]~118_combout\) # ((\aux[31]~13_combout\ & \aux[27]~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[27]~119_combout\,
	datab => \aux[27]~118_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[27]~120_combout\,
	combout => \aux[27]~121_combout\);

-- Location: LCCOMB_X46_Y35_N10
\aux[27]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(27) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[27]~121_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(27),
	datac => \aux[27]~121_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(27));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X45_Y35_N28
\aux[28]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[28]~123_combout\ = (\SRC2~combout\(28) & ((\Equal4~0_combout\) # ((\SRC1~combout\(28) & \Equal5~0_combout\)))) # (!\SRC2~combout\(28) & (\SRC1~combout\(28) & (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(28),
	datab => \SRC1~combout\(28),
	datac => \Equal4~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \aux[28]~123_combout\);

-- Location: LCCOMB_X45_Y33_N24
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = ((\SRC2~combout\(28) $ (\SRC1~combout\(28) $ (\Add0~55\)))) # (GND)
-- \Add0~57\ = CARRY((\SRC2~combout\(28) & (\SRC1~combout\(28) & !\Add0~55\)) # (!\SRC2~combout\(28) & ((\SRC1~combout\(28)) # (!\Add0~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC2~combout\(28),
	datab => \SRC1~combout\(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X45_Y35_N18
\aux[28]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[28]~122_combout\ = (\Add1~56_combout\ & ((\Equal3~0_combout\) # ((\Add0~56_combout\ & \Equal2~0_combout\)))) # (!\Add1~56_combout\ & (\Add0~56_combout\ & (\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datab => \Add0~56_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \aux[28]~122_combout\);

-- Location: LCCOMB_X45_Y35_N4
\aux[28]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[28]~125_combout\ = (\aux[28]~123_combout\) # ((\aux[28]~122_combout\) # ((\aux[28]~124_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[28]~124_combout\,
	datab => \aux[28]~123_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[28]~122_combout\,
	combout => \aux[28]~125_combout\);

-- Location: LCCOMB_X45_Y35_N26
\aux[28]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(28) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[28]~125_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(28),
	datac => \aux[28]~125_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(28));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y35_N30
\aux[29]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[29]~127_combout\ = (\SRC1~combout\(29) & ((\Equal4~0_combout\) # ((\Equal5~0_combout\ & \SRC2~combout\(29))))) # (!\SRC1~combout\(29) & (((\SRC2~combout\(29) & \Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \SRC1~combout\(29),
	datac => \SRC2~combout\(29),
	datad => \Equal4~0_combout\,
	combout => \aux[29]~127_combout\);

-- Location: LCCOMB_X45_Y33_N26
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\SRC1~combout\(29) & ((\SRC2~combout\(29) & (!\Add0~57\)) # (!\SRC2~combout\(29) & (\Add0~57\ & VCC)))) # (!\SRC1~combout\(29) & ((\SRC2~combout\(29) & ((\Add0~57\) # (GND))) # (!\SRC2~combout\(29) & (!\Add0~57\))))
-- \Add0~59\ = CARRY((\SRC1~combout\(29) & (\SRC2~combout\(29) & !\Add0~57\)) # (!\SRC1~combout\(29) & ((\SRC2~combout\(29)) # (!\Add0~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SRC1~combout\(29),
	datab => \SRC2~combout\(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X44_Y35_N24
\aux[29]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[29]~126_combout\ = (\Add1~58_combout\ & ((\Equal3~0_combout\) # ((\Add0~58_combout\ & \Equal2~0_combout\)))) # (!\Add1~58_combout\ & (\Add0~58_combout\ & (\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datab => \Add0~58_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \aux[29]~126_combout\);

-- Location: LCCOMB_X44_Y35_N4
\aux[29]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[29]~129_combout\ = (\aux[29]~127_combout\) # ((\aux[29]~126_combout\) # ((\aux[29]~128_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[29]~128_combout\,
	datab => \aux[29]~127_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[29]~126_combout\,
	combout => \aux[29]~129_combout\);

-- Location: LCCOMB_X44_Y35_N6
\aux[29]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(29) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[29]~129_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(29),
	datac => \aux[29]~129_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(29));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y35_N22
\aux[30]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[30]~130_combout\ = (\Add0~60_combout\ & ((\Equal2~0_combout\) # ((\Add1~60_combout\ & \Equal3~0_combout\)))) # (!\Add0~60_combout\ & (\Add1~60_combout\ & ((\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \Add1~60_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \aux[30]~130_combout\);

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y35_N0
\aux[30]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[30]~131_combout\ = (\SRC1~combout\(30) & ((\Equal4~0_combout\) # ((\Equal5~0_combout\ & \SRC2~combout\(30))))) # (!\SRC1~combout\(30) & (((\SRC2~combout\(30) & \Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \SRC1~combout\(30),
	datac => \SRC2~combout\(30),
	datad => \Equal4~0_combout\,
	combout => \aux[30]~131_combout\);

-- Location: LCCOMB_X44_Y35_N18
\aux[30]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[30]~133_combout\ = (\aux[30]~130_combout\) # ((\aux[30]~131_combout\) # ((\aux[30]~132_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[30]~132_combout\,
	datab => \aux[30]~130_combout\,
	datac => \aux[30]~131_combout\,
	datad => \aux[31]~13_combout\,
	combout => \aux[30]~133_combout\);

-- Location: LCCOMB_X44_Y35_N8
\aux[30]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(30) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[30]~133_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(30),
	datac => \aux[31]~138clkctrl_outclk\,
	datad => \aux[30]~133_combout\,
	combout => aux(30));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X44_Y35_N26
\aux[31]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[31]~135_combout\ = (\SRC2~combout\(31) & ((\Equal4~0_combout\) # ((\Equal5~0_combout\ & \SRC1~combout\(31))))) # (!\SRC2~combout\(31) & (((\SRC1~combout\(31) & \Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \SRC2~combout\(31),
	datac => \SRC1~combout\(31),
	datad => \Equal4~0_combout\,
	combout => \aux[31]~135_combout\);

-- Location: LCCOMB_X45_Y33_N30
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \SRC2~combout\(31) $ (\Add0~61\ $ (!\SRC1~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SRC2~combout\(31),
	datad => \SRC1~combout\(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X44_Y35_N20
\aux[31]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[31]~134_combout\ = (\Add1~62_combout\ & ((\Equal3~0_combout\) # ((\Add0~62_combout\ & \Equal2~0_combout\)))) # (!\Add1~62_combout\ & (\Add0~62_combout\ & (\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Add0~62_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \aux[31]~134_combout\);

-- Location: LCCOMB_X44_Y35_N14
\aux[31]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \aux[31]~137_combout\ = (\aux[31]~135_combout\) # ((\aux[31]~134_combout\) # ((\aux[31]~136_combout\ & \aux[31]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aux[31]~136_combout\,
	datab => \aux[31]~135_combout\,
	datac => \aux[31]~13_combout\,
	datad => \aux[31]~134_combout\,
	combout => \aux[31]~137_combout\);

-- Location: LCCOMB_X44_Y35_N10
\aux[31]\ : cycloneii_lcell_comb
-- Equation(s):
-- aux(31) = (GLOBAL(\aux[31]~138clkctrl_outclk\) & ((\aux[31]~137_combout\))) # (!GLOBAL(\aux[31]~138clkctrl_outclk\) & (aux(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(31),
	datac => \aux[31]~137_combout\,
	datad => \aux[31]~138clkctrl_outclk\,
	combout => aux(31));

-- Location: LCCOMB_X43_Y33_N16
\Equal6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~6_combout\ = (!aux(21) & !aux(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => aux(21),
	datad => aux(20),
	combout => \Equal6~6_combout\);

-- Location: LCCOMB_X42_Y33_N12
\Equal6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~5_combout\ = (!aux(19) & (!aux(17) & (!aux(18) & !aux(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(19),
	datab => aux(17),
	datac => aux(18),
	datad => aux(16),
	combout => \Equal6~5_combout\);

-- Location: LCCOMB_X43_Y33_N6
\Equal6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~7_combout\ = (!aux(23) & (!aux(22) & (\Equal6~6_combout\ & \Equal6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(23),
	datab => aux(22),
	datac => \Equal6~6_combout\,
	datad => \Equal6~5_combout\,
	combout => \Equal6~7_combout\);

-- Location: LCCOMB_X45_Y35_N12
\Equal6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~9_combout\ = (!aux(31) & (!aux(29) & (!aux(30) & !aux(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(31),
	datab => aux(29),
	datac => aux(30),
	datad => aux(28),
	combout => \Equal6~9_combout\);

-- Location: LCCOMB_X46_Y35_N28
\Equal6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~8_combout\ = (!aux(27) & (!aux(26) & (!aux(24) & !aux(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(27),
	datab => aux(26),
	datac => aux(24),
	datad => aux(25),
	combout => \Equal6~8_combout\);

-- Location: LCCOMB_X40_Y35_N12
\Equal6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = (!aux(14) & (!aux(13) & (!aux(15) & !aux(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(14),
	datab => aux(13),
	datac => aux(15),
	datad => aux(12),
	combout => \Equal6~3_combout\);

-- Location: LCCOMB_X41_Y35_N12
\Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (!aux(4) & (!aux(5) & (!aux(6) & !aux(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(4),
	datab => aux(5),
	datac => aux(6),
	datad => aux(7),
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X42_Y34_N28
\Equal6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (!aux(9) & (!aux(8) & (!aux(11) & !aux(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => aux(9),
	datab => aux(8),
	datac => aux(11),
	datad => aux(10),
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X41_Y34_N0
\Equal6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~4_combout\ = (\Equal6~0_combout\ & (\Equal6~3_combout\ & (\Equal6~1_combout\ & \Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Equal6~3_combout\,
	datac => \Equal6~1_combout\,
	datad => \Equal6~2_combout\,
	combout => \Equal6~4_combout\);

-- Location: LCCOMB_X41_Y34_N10
\Equal6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~10_combout\ = (\Equal6~7_combout\ & (\Equal6~9_combout\ & (\Equal6~8_combout\ & \Equal6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~7_combout\,
	datab => \Equal6~9_combout\,
	datac => \Equal6~8_combout\,
	datad => \Equal6~4_combout\,
	combout => \Equal6~10_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(0));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(1));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(2));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(3));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(4));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(5));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(6));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(7));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(8));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(9));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(10));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(11));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(12));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(13));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(14));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(15));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(16));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(17));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(18));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(19));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(20));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(21));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(22));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(23));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(24));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(25));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(26));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(27));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(28));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(29));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(30));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => aux(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RESULT(31));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


