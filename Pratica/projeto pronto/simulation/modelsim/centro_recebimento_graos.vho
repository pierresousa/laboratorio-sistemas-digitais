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

-- DATE "10/30/2020 17:23:09"

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

ENTITY 	centro_recebimento_graos IS
    PORT (
	RESET : IN std_logic;
	CLOCK : IN std_logic;
	PODE_PESAR : IN std_logic;
	PESO_BRUTO : IN std_logic_vector(28 DOWNTO 0);
	PESO_CAMINHAO : IN std_logic_vector(28 DOWNTO 0);
	TIPO_GRAO : IN std_logic_vector(1 DOWNTO 0);
	LOCAL_SILO : OUT std_logic_vector(1 DOWNTO 0);
	SENSOR_VAGA_SOJA : IN std_logic;
	LAMPADA_VAGA_SOJA : OUT std_logic;
	SENSOR_VAGA_ARROZ : IN std_logic;
	LAMPADA_VAGA_ARROZ : OUT std_logic;
	SENSOR_VAGA_FEIJAO : IN std_logic;
	LAMPADA_VAGA_FEIJAO : OUT std_logic;
	MOTOR_ESCOTILHA_SOJA : OUT std_logic_vector(1 DOWNTO 0);
	MOTOR_ESCOTILHA_ARROZ : OUT std_logic_vector(1 DOWNTO 0);
	MOTOR_ESCOTILHA_FEIJAO : OUT std_logic_vector(1 DOWNTO 0);
	PESO_CARGA : OUT std_logic_vector(28 DOWNTO 0);
	VALOR_CARGA : OUT std_logic_vector(31 DOWNTO 0)
	);
END centro_recebimento_graos;

-- Design Ports Information
-- LOCAL_SILO[0]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LOCAL_SILO[1]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LAMPADA_VAGA_SOJA	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LAMPADA_VAGA_ARROZ	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LAMPADA_VAGA_FEIJAO	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MOTOR_ESCOTILHA_SOJA[0]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MOTOR_ESCOTILHA_SOJA[1]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MOTOR_ESCOTILHA_ARROZ[0]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MOTOR_ESCOTILHA_ARROZ[1]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MOTOR_ESCOTILHA_FEIJAO[0]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MOTOR_ESCOTILHA_FEIJAO[1]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[0]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[4]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[5]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[6]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[7]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[8]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[9]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[10]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[11]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[12]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[13]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[14]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[15]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[16]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[17]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[18]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[19]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[20]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[21]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[22]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[23]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[24]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[25]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[26]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[27]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PESO_CARGA[28]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[1]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[2]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[4]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[5]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[6]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[7]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[8]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[9]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[10]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[11]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[12]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[13]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[14]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[15]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[16]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[17]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[18]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[19]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[20]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[21]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[22]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[23]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[24]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[25]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[26]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[27]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[28]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[29]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[30]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VALOR_CARGA[31]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TIPO_GRAO[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TIPO_GRAO[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SENSOR_VAGA_SOJA	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SENSOR_VAGA_ARROZ	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SENSOR_VAGA_FEIJAO	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[0]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[2]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[3]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[4]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[5]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[6]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[7]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[8]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[9]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[10]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[11]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[12]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[13]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[14]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[15]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[16]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[17]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[18]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[19]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[20]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[21]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[22]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[23]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[24]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[25]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[26]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[27]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_CAMINHAO[28]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PODE_PESAR	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[0]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[1]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[2]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[3]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[4]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[5]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[6]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[7]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[8]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[9]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[10]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[11]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[12]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[13]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[14]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[15]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[16]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[17]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[18]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[19]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[20]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[21]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[22]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[23]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[24]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[25]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[26]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[27]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PESO_BRUTO[28]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF centro_recebimento_graos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_PODE_PESAR : std_logic;
SIGNAL ww_PESO_BRUTO : std_logic_vector(28 DOWNTO 0);
SIGNAL ww_PESO_CAMINHAO : std_logic_vector(28 DOWNTO 0);
SIGNAL ww_TIPO_GRAO : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LOCAL_SILO : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SENSOR_VAGA_SOJA : std_logic;
SIGNAL ww_LAMPADA_VAGA_SOJA : std_logic;
SIGNAL ww_SENSOR_VAGA_ARROZ : std_logic;
SIGNAL ww_LAMPADA_VAGA_ARROZ : std_logic;
SIGNAL ww_SENSOR_VAGA_FEIJAO : std_logic;
SIGNAL ww_LAMPADA_VAGA_FEIJAO : std_logic;
SIGNAL ww_MOTOR_ESCOTILHA_SOJA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MOTOR_ESCOTILHA_ARROZ : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MOTOR_ESCOTILHA_FEIJAO : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_PESO_CARGA : std_logic_vector(28 DOWNTO 0);
SIGNAL ww_VALOR_CARGA : std_logic_vector(31 DOWNTO 0);
SIGNAL \CLOCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VALOR_GRAO[2]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \estado_atual.PESAGEM_INICIAL~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~50_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][1]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][0]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][3]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][1]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][3]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][5]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][6]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][7]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][8]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][6]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][8]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][7]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][9]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][10]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][9]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][11]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][10]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][12]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][11]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][13]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][12]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][15]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][15]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][16]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][18]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][16]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][19]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][17]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][20]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][20]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][21]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][22]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][24]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][22]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][24]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][23]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][26]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][26]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][25]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][27]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][26]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][28]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][27]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][28]~combout\ : std_logic;
SIGNAL \CLOCK~combout\ : std_logic;
SIGNAL \CLOCK~clkctrl_outclk\ : std_logic;
SIGNAL \PODE_PESAR~combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \aux_PODE_PESAR~regout\ : std_logic;
SIGNAL \SENSOR_VAGA_ARROZ~combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \RESET~clkctrl_outclk\ : std_logic;
SIGNAL \estado_atual.ESPERA_VAGA_ARROZ~regout\ : std_logic;
SIGNAL \estado_proximo.ENTRA_SILO_ARROZ~0_combout\ : std_logic;
SIGNAL \estado_atual.ENTRA_SILO_ARROZ~regout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \estado_atual.DESCARREGA_ARROZ~regout\ : std_logic;
SIGNAL \estado_proximo.SAI_SILO_ARROZ~0_combout\ : std_logic;
SIGNAL \estado_atual.SAI_SILO_ARROZ~regout\ : std_logic;
SIGNAL \SENSOR_VAGA_FEIJAO~combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \estado_atual.ESPERA_VAGA_FEIJAO~regout\ : std_logic;
SIGNAL \estado_proximo.ENTRA_SILO_FEIJAO~0_combout\ : std_logic;
SIGNAL \estado_atual.ENTRA_SILO_FEIJAO~regout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \estado_atual.DESCARREGA_FEIJAO~regout\ : std_logic;
SIGNAL \estado_proximo.SAI_SILO_FEIJAO~0_combout\ : std_logic;
SIGNAL \estado_atual.SAI_SILO_FEIJAO~regout\ : std_logic;
SIGNAL \SENSOR_VAGA_SOJA~combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \estado_atual.ESPERA_VAGA_SOJA~regout\ : std_logic;
SIGNAL \estado_proximo.ENTRA_SILO_SOJA~0_combout\ : std_logic;
SIGNAL \estado_atual.ENTRA_SILO_SOJA~regout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \estado_atual.DESCARREGA_SOJA~regout\ : std_logic;
SIGNAL \estado_proximo.SAI_SILO_SOJA~0_combout\ : std_logic;
SIGNAL \estado_atual.SAI_SILO_SOJA~regout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \estado_atual.ESPERA_PESAGEM_FINAL~regout\ : std_logic;
SIGNAL \estado_proximo.PESAGEM_FINAL~0_combout\ : std_logic;
SIGNAL \estado_atual.PESAGEM_FINAL~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \estado_atual.INICIO~regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \estado_atual.PESAGEM_INICIAL~regout\ : std_logic;
SIGNAL \LOCAL_SILO~0_combout\ : std_logic;
SIGNAL \LOCAL_SILO~1_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \PESO_CARGA~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \PESO_CARGA~1_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \PESO_CARGA~2_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \PESO_CARGA~3_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \PESO_CARGA~4_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \PESO_CARGA~5_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \PESO_CARGA~6_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \PESO_CARGA~7_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \PESO_CARGA~8_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \PESO_CARGA~9_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \PESO_CARGA~10_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \PESO_CARGA~11_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \PESO_CARGA~12_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \PESO_CARGA~13_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \PESO_CARGA~14_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \PESO_CARGA~15_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \PESO_CARGA~16_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \PESO_CARGA~17_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \PESO_CARGA~18_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \PESO_CARGA~19_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \PESO_CARGA~20_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \PESO_CARGA~21_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \PESO_CARGA~22_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \PESO_CARGA~23_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \PESO_CARGA~24_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \PESO_CARGA~25_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \PESO_CARGA~26_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \PESO_CARGA~27_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \PESO_CARGA~28_combout\ : std_logic;
SIGNAL \VALOR_GRAO[2]~0_combout\ : std_logic;
SIGNAL \VALOR_GRAO[2]~0clkctrl_outclk\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][0]~combout\ : std_logic;
SIGNAL \VALOR_CARGA~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \VALOR_CARGA~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][2]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][2]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][3]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][4]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][5]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][7]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][6]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][5]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][4]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][4]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][9]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][8]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][11]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][10]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][12]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][13]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~31\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~33_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~35_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][14]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~34\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][13]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~37\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~39_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~41_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][14]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~40\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][15]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~43\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~45_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~47_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][17]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][17]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][16]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][14]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~27\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~29\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~31\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~33\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~46\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~48_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~50_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][18]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~35\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~49\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~51_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~53_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][18]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~52\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~54_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~56_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][19]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~55\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~57_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~59_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][20]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~58\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~60_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~62_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][21]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~61\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~63_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~65_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][23]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][23]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][22]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][21]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][19]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~37\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~39\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~41\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~43\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~45\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~46_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~64\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~66_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~68_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][25]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~47\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~48_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~67\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~69_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~71_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[2][24]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~70\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~72_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~74_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][27]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[1][25]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~49\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~51\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~52_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~73\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~75_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~77_combout\ : std_logic;
SIGNAL \Mult0|mult_core|decoder_node[0][28]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~53\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~54_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~76\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~78_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~80_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~55\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~56_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~79\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~81_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~83_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~57\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~58_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~82\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~84_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~86_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~85\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~87_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~89_combout\ : std_logic;
SIGNAL guarda_PESO_BRUTO : std_logic_vector(28 DOWNTO 0);
SIGNAL VALOR_GRAO : std_logic_vector(2 DOWNTO 0);
SIGNAL \TIPO_GRAO~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PESO_CAMINHAO~combout\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \PESO_BRUTO~combout\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \ALT_INV_RESET~combout\ : std_logic;

BEGIN

ww_RESET <= RESET;
ww_CLOCK <= CLOCK;
ww_PODE_PESAR <= PODE_PESAR;
ww_PESO_BRUTO <= PESO_BRUTO;
ww_PESO_CAMINHAO <= PESO_CAMINHAO;
ww_TIPO_GRAO <= TIPO_GRAO;
LOCAL_SILO <= ww_LOCAL_SILO;
ww_SENSOR_VAGA_SOJA <= SENSOR_VAGA_SOJA;
LAMPADA_VAGA_SOJA <= ww_LAMPADA_VAGA_SOJA;
ww_SENSOR_VAGA_ARROZ <= SENSOR_VAGA_ARROZ;
LAMPADA_VAGA_ARROZ <= ww_LAMPADA_VAGA_ARROZ;
ww_SENSOR_VAGA_FEIJAO <= SENSOR_VAGA_FEIJAO;
LAMPADA_VAGA_FEIJAO <= ww_LAMPADA_VAGA_FEIJAO;
MOTOR_ESCOTILHA_SOJA <= ww_MOTOR_ESCOTILHA_SOJA;
MOTOR_ESCOTILHA_ARROZ <= ww_MOTOR_ESCOTILHA_ARROZ;
MOTOR_ESCOTILHA_FEIJAO <= ww_MOTOR_ESCOTILHA_FEIJAO;
PESO_CARGA <= ww_PESO_CARGA;
VALOR_CARGA <= ww_VALOR_CARGA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK~combout\);

\VALOR_GRAO[2]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \VALOR_GRAO[2]~0_combout\);

\estado_atual.PESAGEM_INICIAL~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \estado_atual.PESAGEM_INICIAL~regout\);

\RESET~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RESET~combout\);
\ALT_INV_RESET~combout\ <= NOT \RESET~combout\;

-- Location: LCCOMB_X28_Y33_N8
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Mult0|mult_core|decoder_node[1][3]~combout\ & ((\Mult0|mult_core|decoder_node[0][4]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[0][4]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Mult0|mult_core|decoder_node[1][3]~combout\ & ((\Mult0|mult_core|decoder_node[0][4]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|decoder_node[0][4]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult0|mult_core|decoder_node[1][3]~combout\ & (!\Mult0|mult_core|decoder_node[0][4]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Mult0|mult_core|decoder_node[1][3]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult0|mult_core|decoder_node[0][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][3]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][4]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X28_Y33_N10
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult0|mult_core|decoder_node[0][5]~combout\ $ (\Mult0|mult_core|decoder_node[1][4]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult0|mult_core|decoder_node[0][5]~combout\ & ((\Mult0|mult_core|decoder_node[1][4]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\Mult0|mult_core|decoder_node[0][5]~combout\ & (\Mult0|mult_core|decoder_node[1][4]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][5]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][4]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X28_Y33_N12
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Mult0|mult_core|decoder_node[0][6]~combout\ & ((\Mult0|mult_core|decoder_node[1][5]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[1][5]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # (!\Mult0|mult_core|decoder_node[0][6]~combout\ & ((\Mult0|mult_core|decoder_node[1][5]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|decoder_node[1][5]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\Mult0|mult_core|decoder_node[0][6]~combout\ & (!\Mult0|mult_core|decoder_node[1][5]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\Mult0|mult_core|decoder_node[0][6]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\Mult0|mult_core|decoder_node[1][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][6]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][5]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X28_Y33_N14
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\Mult0|mult_core|decoder_node[0][7]~combout\ $ (\Mult0|mult_core|decoder_node[1][6]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\Mult0|mult_core|decoder_node[0][7]~combout\ & ((\Mult0|mult_core|decoder_node[1][6]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))) # 
-- (!\Mult0|mult_core|decoder_node[0][7]~combout\ & (\Mult0|mult_core|decoder_node[1][6]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][7]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][6]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X28_Y33_N20
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = (\Mult0|mult_core|decoder_node[1][9]~combout\ & ((\Mult0|mult_core|decoder_node[0][10]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[0][10]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)))) # (!\Mult0|mult_core|decoder_node[1][9]~combout\ & ((\Mult0|mult_core|decoder_node[0][10]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # (!\Mult0|mult_core|decoder_node[0][10]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ = CARRY((\Mult0|mult_core|decoder_node[1][9]~combout\ & (!\Mult0|mult_core|decoder_node[0][10]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # 
-- (!\Mult0|mult_core|decoder_node[1][9]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (!\Mult0|mult_core|decoder_node[0][10]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][9]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][10]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X28_Y33_N30
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ = ((\Mult0|mult_core|decoder_node[0][15]~combout\ $ (\Mult0|mult_core|decoder_node[1][14]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~27\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~29\ = CARRY((\Mult0|mult_core|decoder_node[0][15]~combout\ & ((\Mult0|mult_core|decoder_node[1][14]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~27\))) # 
-- (!\Mult0|mult_core|decoder_node[0][15]~combout\ & (\Mult0|mult_core|decoder_node[1][14]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][15]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][14]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~27\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~29\);

-- Location: LCCOMB_X28_Y32_N0
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~30_combout\ = (\Mult0|mult_core|decoder_node[1][15]~combout\ & ((\Mult0|mult_core|decoder_node[0][16]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~29\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[0][16]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~29\)))) # (!\Mult0|mult_core|decoder_node[1][15]~combout\ & ((\Mult0|mult_core|decoder_node[0][16]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~29\)) # (!\Mult0|mult_core|decoder_node[0][16]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~29\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~31\ = CARRY((\Mult0|mult_core|decoder_node[1][15]~combout\ & (!\Mult0|mult_core|decoder_node[0][16]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~29\)) # 
-- (!\Mult0|mult_core|decoder_node[1][15]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~29\) # (!\Mult0|mult_core|decoder_node[0][16]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][15]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][16]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~29\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~30_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~31\);

-- Location: LCCOMB_X28_Y32_N2
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~32_combout\ = ((\Mult0|mult_core|decoder_node[1][16]~combout\ $ (\Mult0|mult_core|decoder_node[0][17]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~31\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~33\ = CARRY((\Mult0|mult_core|decoder_node[1][16]~combout\ & ((\Mult0|mult_core|decoder_node[0][17]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~31\))) # 
-- (!\Mult0|mult_core|decoder_node[1][16]~combout\ & (\Mult0|mult_core|decoder_node[0][17]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][16]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][17]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~31\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~32_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~33\);

-- Location: LCCOMB_X28_Y32_N8
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~38_combout\ = (\Mult0|mult_core|decoder_node[0][20]~combout\ & ((\Mult0|mult_core|decoder_node[1][19]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~37\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[1][19]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~37\)))) # (!\Mult0|mult_core|decoder_node[0][20]~combout\ & ((\Mult0|mult_core|decoder_node[1][19]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~37\)) # (!\Mult0|mult_core|decoder_node[1][19]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~37\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~39\ = CARRY((\Mult0|mult_core|decoder_node[0][20]~combout\ & (!\Mult0|mult_core|decoder_node[1][19]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~37\)) # 
-- (!\Mult0|mult_core|decoder_node[0][20]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~37\) # (!\Mult0|mult_core|decoder_node[1][19]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][20]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][19]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~37\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~38_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~39\);

-- Location: LCCOMB_X28_Y32_N10
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~40_combout\ = ((\Mult0|mult_core|decoder_node[1][20]~combout\ $ (\Mult0|mult_core|decoder_node[0][21]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~39\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~41\ = CARRY((\Mult0|mult_core|decoder_node[1][20]~combout\ & ((\Mult0|mult_core|decoder_node[0][21]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~39\))) # 
-- (!\Mult0|mult_core|decoder_node[1][20]~combout\ & (\Mult0|mult_core|decoder_node[0][21]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][20]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][21]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~39\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~40_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~41\);

-- Location: LCCOMB_X28_Y32_N12
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~42_combout\ = (\Mult0|mult_core|decoder_node[1][21]~combout\ & ((\Mult0|mult_core|decoder_node[0][22]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~41\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[0][22]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~41\)))) # (!\Mult0|mult_core|decoder_node[1][21]~combout\ & ((\Mult0|mult_core|decoder_node[0][22]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~41\)) # (!\Mult0|mult_core|decoder_node[0][22]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~41\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~43\ = CARRY((\Mult0|mult_core|decoder_node[1][21]~combout\ & (!\Mult0|mult_core|decoder_node[0][22]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~41\)) # 
-- (!\Mult0|mult_core|decoder_node[1][21]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~41\) # (!\Mult0|mult_core|decoder_node[0][22]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][21]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][22]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~41\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~42_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~43\);

-- Location: LCCOMB_X28_Y32_N14
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~44_combout\ = ((\Mult0|mult_core|decoder_node[1][22]~combout\ $ (\Mult0|mult_core|decoder_node[0][23]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~43\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~45\ = CARRY((\Mult0|mult_core|decoder_node[1][22]~combout\ & ((\Mult0|mult_core|decoder_node[0][23]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~43\))) # 
-- (!\Mult0|mult_core|decoder_node[1][22]~combout\ & (\Mult0|mult_core|decoder_node[0][23]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][22]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][23]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~43\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~44_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~45\);

-- Location: LCCOMB_X28_Y32_N20
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~50_combout\ = (\Mult0|mult_core|decoder_node[0][26]~combout\ & ((\Mult0|mult_core|decoder_node[1][25]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~49\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[1][25]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~49\)))) # (!\Mult0|mult_core|decoder_node[0][26]~combout\ & ((\Mult0|mult_core|decoder_node[1][25]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~49\)) # (!\Mult0|mult_core|decoder_node[1][25]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~49\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~51\ = CARRY((\Mult0|mult_core|decoder_node[0][26]~combout\ & (!\Mult0|mult_core|decoder_node[1][25]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~49\)) # 
-- (!\Mult0|mult_core|decoder_node[0][26]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~49\) # (!\Mult0|mult_core|decoder_node[1][25]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][26]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][25]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~49\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~50_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~51\);

-- Location: LCCOMB_X21_Y33_N2
\Mult0|mult_core|decoder_node[1][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][0]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~0_combout\,
	combout => \Mult0|mult_core|decoder_node[1][0]~combout\);

-- Location: LCCOMB_X25_Y33_N22
\Mult0|mult_core|decoder_node[1][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][1]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~2_combout\,
	combout => \Mult0|mult_core|decoder_node[1][1]~combout\);

-- Location: LCCOMB_X21_Y33_N24
\Mult0|mult_core|decoder_node[2][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][0]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~0_combout\,
	combout => \Mult0|mult_core|decoder_node[2][0]~combout\);

-- Location: LCCOMB_X27_Y33_N30
\Mult0|mult_core|decoder_node[0][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][3]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VALOR_GRAO(0),
	datad => \Add0~6_combout\,
	combout => \Mult0|mult_core|decoder_node[0][3]~combout\);

-- Location: LCCOMB_X25_Y33_N8
\Mult0|mult_core|decoder_node[2][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][1]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~2_combout\,
	combout => \Mult0|mult_core|decoder_node[2][1]~combout\);

-- Location: LCCOMB_X27_Y33_N14
\Mult0|mult_core|decoder_node[1][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][3]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VALOR_GRAO(1),
	datad => \Add0~6_combout\,
	combout => \Mult0|mult_core|decoder_node[1][3]~combout\);

-- Location: LCCOMB_X25_Y33_N16
\Mult0|mult_core|decoder_node[0][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][5]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~10_combout\,
	combout => \Mult0|mult_core|decoder_node[0][5]~combout\);

-- Location: LCCOMB_X24_Y33_N24
\Mult0|mult_core|decoder_node[0][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][6]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~12_combout\,
	combout => \Mult0|mult_core|decoder_node[0][6]~combout\);

-- Location: LCCOMB_X22_Y33_N2
\Mult0|mult_core|decoder_node[0][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][7]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~14_combout\,
	combout => \Mult0|mult_core|decoder_node[0][7]~combout\);

-- Location: LCCOMB_X22_Y33_N4
\Mult0|mult_core|decoder_node[0][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][8]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~16_combout\,
	combout => \Mult0|mult_core|decoder_node[0][8]~combout\);

-- Location: LCCOMB_X24_Y33_N4
\Mult0|mult_core|decoder_node[2][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][6]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~12_combout\,
	combout => \Mult0|mult_core|decoder_node[2][6]~combout\);

-- Location: LCCOMB_X22_Y33_N30
\Mult0|mult_core|decoder_node[1][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][8]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VALOR_GRAO(1),
	datad => \Add0~16_combout\,
	combout => \Mult0|mult_core|decoder_node[1][8]~combout\);

-- Location: LCCOMB_X22_Y33_N12
\Mult0|mult_core|decoder_node[2][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][7]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~14_combout\,
	combout => \Mult0|mult_core|decoder_node[2][7]~combout\);

-- Location: LCCOMB_X22_Y33_N26
\Mult0|mult_core|decoder_node[1][9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][9]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VALOR_GRAO(1),
	datad => \Add0~18_combout\,
	combout => \Mult0|mult_core|decoder_node[1][9]~combout\);

-- Location: LCCOMB_X24_Y33_N22
\Mult0|mult_core|decoder_node[1][10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][10]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~20_combout\,
	combout => \Mult0|mult_core|decoder_node[1][10]~combout\);

-- Location: LCCOMB_X22_Y33_N10
\Mult0|mult_core|decoder_node[2][9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][9]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~18_combout\,
	combout => \Mult0|mult_core|decoder_node[2][9]~combout\);

-- Location: LCCOMB_X24_Y33_N12
\Mult0|mult_core|decoder_node[1][11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][11]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~22_combout\,
	combout => \Mult0|mult_core|decoder_node[1][11]~combout\);

-- Location: LCCOMB_X25_Y33_N4
\Mult0|mult_core|decoder_node[2][10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][10]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~20_combout\,
	combout => \Mult0|mult_core|decoder_node[2][10]~combout\);

-- Location: LCCOMB_X25_Y33_N28
\Mult0|mult_core|decoder_node[1][12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][12]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~24_combout\,
	combout => \Mult0|mult_core|decoder_node[1][12]~combout\);

-- Location: LCCOMB_X24_Y33_N26
\Mult0|mult_core|decoder_node[2][11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][11]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~22_combout\,
	combout => \Mult0|mult_core|decoder_node[2][11]~combout\);

-- Location: LCCOMB_X25_Y33_N6
\Mult0|mult_core|decoder_node[1][13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][13]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~26_combout\,
	combout => \Mult0|mult_core|decoder_node[1][13]~combout\);

-- Location: LCCOMB_X25_Y33_N20
\Mult0|mult_core|decoder_node[2][12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][12]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~24_combout\,
	combout => \Mult0|mult_core|decoder_node[2][12]~combout\);

-- Location: LCCOMB_X27_Y33_N20
\Mult0|mult_core|decoder_node[0][15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][15]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VALOR_GRAO(0),
	datad => \Add0~30_combout\,
	combout => \Mult0|mult_core|decoder_node[0][15]~combout\);

-- Location: LCCOMB_X27_Y32_N14
\Mult0|mult_core|decoder_node[1][15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][15]~combout\ = LCELL((\Add0~30_combout\ & VALOR_GRAO(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datac => VALOR_GRAO(1),
	combout => \Mult0|mult_core|decoder_node[1][15]~combout\);

-- Location: LCCOMB_X27_Y32_N2
\Mult0|mult_core|decoder_node[1][16]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][16]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~32_combout\,
	combout => \Mult0|mult_core|decoder_node[1][16]~combout\);

-- Location: LCCOMB_X27_Y32_N0
\Mult0|mult_core|decoder_node[0][18]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][18]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~36_combout\,
	combout => \Mult0|mult_core|decoder_node[0][18]~combout\);

-- Location: LCCOMB_X27_Y32_N8
\Mult0|mult_core|decoder_node[2][16]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][16]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~32_combout\,
	combout => \Mult0|mult_core|decoder_node[2][16]~combout\);

-- Location: LCCOMB_X27_Y32_N30
\Mult0|mult_core|decoder_node[0][19]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][19]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~38_combout\,
	combout => \Mult0|mult_core|decoder_node[0][19]~combout\);

-- Location: LCCOMB_X27_Y32_N18
\Mult0|mult_core|decoder_node[2][17]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][17]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VALOR_GRAO(2),
	datad => \Add0~34_combout\,
	combout => \Mult0|mult_core|decoder_node[2][17]~combout\);

-- Location: LCCOMB_X27_Y32_N12
\Mult0|mult_core|decoder_node[0][20]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][20]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~40_combout\,
	combout => \Mult0|mult_core|decoder_node[0][20]~combout\);

-- Location: LCCOMB_X27_Y32_N10
\Mult0|mult_core|decoder_node[1][20]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][20]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~40_combout\,
	combout => \Mult0|mult_core|decoder_node[1][20]~combout\);

-- Location: LCCOMB_X24_Y32_N20
\Mult0|mult_core|decoder_node[1][21]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][21]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~42_combout\,
	combout => \Mult0|mult_core|decoder_node[1][21]~combout\);

-- Location: LCCOMB_X24_Y32_N8
\Mult0|mult_core|decoder_node[1][22]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][22]~combout\ = LCELL((\Add0~44_combout\ & VALOR_GRAO(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datac => VALOR_GRAO(1),
	combout => \Mult0|mult_core|decoder_node[1][22]~combout\);

-- Location: LCCOMB_X24_Y32_N16
\Mult0|mult_core|decoder_node[0][24]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][24]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~48_combout\,
	combout => \Mult0|mult_core|decoder_node[0][24]~combout\);

-- Location: LCCOMB_X25_Y32_N14
\Mult0|mult_core|decoder_node[2][22]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][22]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~44_combout\,
	combout => \Mult0|mult_core|decoder_node[2][22]~combout\);

-- Location: LCCOMB_X24_Y32_N12
\Mult0|mult_core|decoder_node[1][24]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][24]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~48_combout\,
	combout => \Mult0|mult_core|decoder_node[1][24]~combout\);

-- Location: LCCOMB_X24_Y32_N26
\Mult0|mult_core|decoder_node[2][23]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][23]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~46_combout\,
	combout => \Mult0|mult_core|decoder_node[2][23]~combout\);

-- Location: LCCOMB_X25_Y32_N26
\Mult0|mult_core|decoder_node[0][26]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][26]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VALOR_GRAO(0),
	datad => \Add0~52_combout\,
	combout => \Mult0|mult_core|decoder_node[0][26]~combout\);

-- Location: LCCOMB_X25_Y32_N28
\Mult0|mult_core|decoder_node[1][26]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][26]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~52_combout\,
	combout => \Mult0|mult_core|decoder_node[1][26]~combout\);

-- Location: LCCOMB_X25_Y32_N30
\Mult0|mult_core|decoder_node[2][25]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][25]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~50_combout\,
	combout => \Mult0|mult_core|decoder_node[2][25]~combout\);

-- Location: LCCOMB_X25_Y32_N10
\Mult0|mult_core|decoder_node[1][27]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][27]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~54_combout\,
	combout => \Mult0|mult_core|decoder_node[1][27]~combout\);

-- Location: LCCOMB_X25_Y32_N4
\Mult0|mult_core|decoder_node[2][26]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][26]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~52_combout\,
	combout => \Mult0|mult_core|decoder_node[2][26]~combout\);

-- Location: LCCOMB_X25_Y32_N18
\Mult0|mult_core|decoder_node[1][28]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][28]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~56_combout\,
	combout => \Mult0|mult_core|decoder_node[1][28]~combout\);

-- Location: LCCOMB_X25_Y32_N20
\Mult0|mult_core|decoder_node[2][27]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][27]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~54_combout\,
	combout => \Mult0|mult_core|decoder_node[2][27]~combout\);

-- Location: LCCOMB_X25_Y32_N6
\Mult0|mult_core|decoder_node[2][28]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][28]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~56_combout\,
	combout => \Mult0|mult_core|decoder_node[2][28]~combout\);

-- Location: LCCOMB_X5_Y33_N30
\guarda_PESO_BRUTO[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(3) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((\PESO_BRUTO~combout\(3)))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (guarda_PESO_BRUTO(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => guarda_PESO_BRUTO(3),
	datac => \PESO_BRUTO~combout\(3),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(3));

-- Location: LCCOMB_X5_Y33_N24
\guarda_PESO_BRUTO[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(5) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(5))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PESO_BRUTO~combout\(5),
	datac => guarda_PESO_BRUTO(5),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(5));

-- Location: LCCOMB_X3_Y33_N22
\guarda_PESO_BRUTO[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(6) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(6))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PESO_BRUTO~combout\(6),
	datac => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	datad => guarda_PESO_BRUTO(6),
	combout => guarda_PESO_BRUTO(6));

-- Location: LCCOMB_X3_Y33_N14
\guarda_PESO_BRUTO[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(8) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(8))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PESO_BRUTO~combout\(8),
	datac => guarda_PESO_BRUTO(8),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(8));

-- Location: LCCOMB_X3_Y33_N20
\guarda_PESO_BRUTO[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(9) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(9))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PESO_BRUTO~combout\(9),
	datac => guarda_PESO_BRUTO(9),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(9));

-- Location: LCCOMB_X3_Y33_N30
\guarda_PESO_BRUTO[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(10) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((\PESO_BRUTO~combout\(10)))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (guarda_PESO_BRUTO(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => guarda_PESO_BRUTO(10),
	datac => \PESO_BRUTO~combout\(10),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(10));

-- Location: LCCOMB_X5_Y33_N14
\guarda_PESO_BRUTO[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(13) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(13))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PESO_BRUTO~combout\(13),
	datac => guarda_PESO_BRUTO(13),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(13));

-- Location: LCCOMB_X3_Y32_N24
\guarda_PESO_BRUTO[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(14) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(14))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PESO_BRUTO~combout\(14),
	datac => guarda_PESO_BRUTO(14),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(14));

-- Location: LCCOMB_X3_Y32_N14
\guarda_PESO_BRUTO[16]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(16) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(16))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PESO_BRUTO~combout\(16),
	datac => guarda_PESO_BRUTO(16),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(16));

-- Location: LCCOMB_X3_Y32_N2
\guarda_PESO_BRUTO[18]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(18) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((\PESO_BRUTO~combout\(18)))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (guarda_PESO_BRUTO(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => guarda_PESO_BRUTO(18),
	datac => \PESO_BRUTO~combout\(18),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(18));

-- Location: LCCOMB_X3_Y32_N4
\guarda_PESO_BRUTO[21]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(21) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(21))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PESO_BRUTO~combout\(21),
	datac => guarda_PESO_BRUTO(21),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(21));

-- Location: LCCOMB_X3_Y32_N12
\guarda_PESO_BRUTO[23]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(23) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(23))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PESO_BRUTO~combout\(23),
	datac => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	datad => guarda_PESO_BRUTO(23),
	combout => guarda_PESO_BRUTO(23));

-- Location: LCCOMB_X3_Y32_N18
\guarda_PESO_BRUTO[24]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(24) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((\PESO_BRUTO~combout\(24)))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (guarda_PESO_BRUTO(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => guarda_PESO_BRUTO(24),
	datac => \PESO_BRUTO~combout\(24),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(24));

-- Location: LCCOMB_X3_Y32_N20
\guarda_PESO_BRUTO[25]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(25) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(25))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PESO_BRUTO~combout\(25),
	datac => guarda_PESO_BRUTO(25),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(25));

-- Location: LCCOMB_X3_Y32_N30
\guarda_PESO_BRUTO[26]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(26) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((\PESO_BRUTO~combout\(26)))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (guarda_PESO_BRUTO(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => guarda_PESO_BRUTO(26),
	datac => \PESO_BRUTO~combout\(26),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(26));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[0]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(0),
	combout => \PESO_CAMINHAO~combout\(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[1]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(1),
	combout => \PESO_CAMINHAO~combout\(1));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[2]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(2),
	combout => \PESO_CAMINHAO~combout\(2));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[4]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(4),
	combout => \PESO_CAMINHAO~combout\(4));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[7]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(7),
	combout => \PESO_CAMINHAO~combout\(7));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[11]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(11),
	combout => \PESO_CAMINHAO~combout\(11));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[12]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(12),
	combout => \PESO_CAMINHAO~combout\(12));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[15]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(15),
	combout => \PESO_CAMINHAO~combout\(15));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[17]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(17),
	combout => \PESO_CAMINHAO~combout\(17));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[19]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(19),
	combout => \PESO_CAMINHAO~combout\(19));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[20]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(20),
	combout => \PESO_CAMINHAO~combout\(20));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[22]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(22),
	combout => \PESO_CAMINHAO~combout\(22));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[27]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(27),
	combout => \PESO_CAMINHAO~combout\(27));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK~I\ : cycloneii_io
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
	padio => ww_CLOCK,
	combout => \CLOCK~combout\);

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[2]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(2),
	combout => \PESO_BRUTO~combout\(2));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[3]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(3),
	combout => \PESO_BRUTO~combout\(3));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[5]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(5),
	combout => \PESO_BRUTO~combout\(5));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[6]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(6),
	combout => \PESO_BRUTO~combout\(6));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[8]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(8),
	combout => \PESO_BRUTO~combout\(8));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[9]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(9),
	combout => \PESO_BRUTO~combout\(9));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[10]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(10),
	combout => \PESO_BRUTO~combout\(10));

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[13]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(13),
	combout => \PESO_BRUTO~combout\(13));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[14]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(14),
	combout => \PESO_BRUTO~combout\(14));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[16]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(16),
	combout => \PESO_BRUTO~combout\(16));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[18]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(18),
	combout => \PESO_BRUTO~combout\(18));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[21]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(21),
	combout => \PESO_BRUTO~combout\(21));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[23]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(23),
	combout => \PESO_BRUTO~combout\(23));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[24]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(24),
	combout => \PESO_BRUTO~combout\(24));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[25]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(25),
	combout => \PESO_BRUTO~combout\(25));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[26]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(26),
	combout => \PESO_BRUTO~combout\(26));

-- Location: CLKCTRL_G3
\CLOCK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TIPO_GRAO[0]~I\ : cycloneii_io
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
	padio => ww_TIPO_GRAO(0),
	combout => \TIPO_GRAO~combout\(0));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PODE_PESAR~I\ : cycloneii_io
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
	padio => ww_PODE_PESAR,
	combout => \PODE_PESAR~combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RESET~I\ : cycloneii_io
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
	padio => ww_RESET,
	combout => \RESET~combout\);

-- Location: LCFF_X31_Y35_N31
aux_PODE_PESAR : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \PODE_PESAR~combout\,
	sload => VCC,
	ena => \ALT_INV_RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aux_PODE_PESAR~regout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SENSOR_VAGA_ARROZ~I\ : cycloneii_io
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
	padio => ww_SENSOR_VAGA_ARROZ,
	combout => \SENSOR_VAGA_ARROZ~combout\);

-- Location: LCCOMB_X32_Y35_N12
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Equal1~1_combout\ & ((\estado_atual.PESAGEM_INICIAL~regout\) # ((\SENSOR_VAGA_ARROZ~combout\ & \estado_atual.ESPERA_VAGA_ARROZ~regout\)))) # (!\Equal1~1_combout\ & (\SENSOR_VAGA_ARROZ~combout\ & 
-- (\estado_atual.ESPERA_VAGA_ARROZ~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \SENSOR_VAGA_ARROZ~combout\,
	datac => \estado_atual.ESPERA_VAGA_ARROZ~regout\,
	datad => \estado_atual.PESAGEM_INICIAL~regout\,
	combout => \Selector4~0_combout\);

-- Location: CLKCTRL_G2
\RESET~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~clkctrl_outclk\);

-- Location: LCFF_X32_Y35_N13
\estado_atual.ESPERA_VAGA_ARROZ\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.ESPERA_VAGA_ARROZ~regout\);

-- Location: LCCOMB_X32_Y35_N28
\estado_proximo.ENTRA_SILO_ARROZ~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado_proximo.ENTRA_SILO_ARROZ~0_combout\ = (!\SENSOR_VAGA_ARROZ~combout\ & \estado_atual.ESPERA_VAGA_ARROZ~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SENSOR_VAGA_ARROZ~combout\,
	datad => \estado_atual.ESPERA_VAGA_ARROZ~regout\,
	combout => \estado_proximo.ENTRA_SILO_ARROZ~0_combout\);

-- Location: LCFF_X32_Y35_N29
\estado_atual.ENTRA_SILO_ARROZ\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \estado_proximo.ENTRA_SILO_ARROZ~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.ENTRA_SILO_ARROZ~regout\);

-- Location: LCCOMB_X32_Y35_N30
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\estado_atual.ENTRA_SILO_ARROZ~regout\) # ((\SENSOR_VAGA_ARROZ~combout\ & \estado_atual.DESCARREGA_ARROZ~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SENSOR_VAGA_ARROZ~combout\,
	datac => \estado_atual.DESCARREGA_ARROZ~regout\,
	datad => \estado_atual.ENTRA_SILO_ARROZ~regout\,
	combout => \Selector5~0_combout\);

-- Location: LCFF_X32_Y35_N31
\estado_atual.DESCARREGA_ARROZ\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.DESCARREGA_ARROZ~regout\);

-- Location: LCCOMB_X32_Y35_N24
\estado_proximo.SAI_SILO_ARROZ~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado_proximo.SAI_SILO_ARROZ~0_combout\ = (!\SENSOR_VAGA_ARROZ~combout\ & \estado_atual.DESCARREGA_ARROZ~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SENSOR_VAGA_ARROZ~combout\,
	datad => \estado_atual.DESCARREGA_ARROZ~regout\,
	combout => \estado_proximo.SAI_SILO_ARROZ~0_combout\);

-- Location: LCFF_X32_Y35_N25
\estado_atual.SAI_SILO_ARROZ\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \estado_proximo.SAI_SILO_ARROZ~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.SAI_SILO_ARROZ~regout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SENSOR_VAGA_FEIJAO~I\ : cycloneii_io
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
	padio => ww_SENSOR_VAGA_FEIJAO,
	combout => \SENSOR_VAGA_FEIJAO~combout\);

-- Location: LCCOMB_X31_Y35_N24
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\TIPO_GRAO~combout\(1) & ((\LOCAL_SILO~0_combout\) # ((\estado_atual.ESPERA_VAGA_FEIJAO~regout\ & \SENSOR_VAGA_FEIJAO~combout\)))) # (!\TIPO_GRAO~combout\(1) & (((\estado_atual.ESPERA_VAGA_FEIJAO~regout\ & 
-- \SENSOR_VAGA_FEIJAO~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIPO_GRAO~combout\(1),
	datab => \LOCAL_SILO~0_combout\,
	datac => \estado_atual.ESPERA_VAGA_FEIJAO~regout\,
	datad => \SENSOR_VAGA_FEIJAO~combout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X31_Y35_N25
\estado_atual.ESPERA_VAGA_FEIJAO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.ESPERA_VAGA_FEIJAO~regout\);

-- Location: LCCOMB_X31_Y35_N4
\estado_proximo.ENTRA_SILO_FEIJAO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado_proximo.ENTRA_SILO_FEIJAO~0_combout\ = (\estado_atual.ESPERA_VAGA_FEIJAO~regout\ & !\SENSOR_VAGA_FEIJAO~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.ESPERA_VAGA_FEIJAO~regout\,
	datad => \SENSOR_VAGA_FEIJAO~combout\,
	combout => \estado_proximo.ENTRA_SILO_FEIJAO~0_combout\);

-- Location: LCFF_X31_Y35_N5
\estado_atual.ENTRA_SILO_FEIJAO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \estado_proximo.ENTRA_SILO_FEIJAO~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.ENTRA_SILO_FEIJAO~regout\);

-- Location: LCCOMB_X31_Y35_N0
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\estado_atual.ENTRA_SILO_FEIJAO~regout\) # ((\estado_atual.DESCARREGA_FEIJAO~regout\ & \SENSOR_VAGA_FEIJAO~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual.ENTRA_SILO_FEIJAO~regout\,
	datac => \estado_atual.DESCARREGA_FEIJAO~regout\,
	datad => \SENSOR_VAGA_FEIJAO~combout\,
	combout => \Selector7~0_combout\);

-- Location: LCFF_X31_Y35_N1
\estado_atual.DESCARREGA_FEIJAO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector7~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.DESCARREGA_FEIJAO~regout\);

-- Location: LCCOMB_X31_Y35_N20
\estado_proximo.SAI_SILO_FEIJAO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado_proximo.SAI_SILO_FEIJAO~0_combout\ = (!\SENSOR_VAGA_FEIJAO~combout\ & \estado_atual.DESCARREGA_FEIJAO~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SENSOR_VAGA_FEIJAO~combout\,
	datad => \estado_atual.DESCARREGA_FEIJAO~regout\,
	combout => \estado_proximo.SAI_SILO_FEIJAO~0_combout\);

-- Location: LCFF_X31_Y35_N21
\estado_atual.SAI_SILO_FEIJAO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \estado_proximo.SAI_SILO_FEIJAO~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.SAI_SILO_FEIJAO~regout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SENSOR_VAGA_SOJA~I\ : cycloneii_io
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
	padio => ww_SENSOR_VAGA_SOJA,
	combout => \SENSOR_VAGA_SOJA~combout\);

-- Location: LCCOMB_X31_Y35_N22
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\TIPO_GRAO~combout\(1) & \TIPO_GRAO~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIPO_GRAO~combout\(1),
	datac => \TIPO_GRAO~combout\(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X31_Y35_N18
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\estado_atual.PESAGEM_INICIAL~regout\ & ((\Equal1~0_combout\) # ((\estado_atual.ESPERA_VAGA_SOJA~regout\ & \SENSOR_VAGA_SOJA~combout\)))) # (!\estado_atual.PESAGEM_INICIAL~regout\ & (((\estado_atual.ESPERA_VAGA_SOJA~regout\ & 
-- \SENSOR_VAGA_SOJA~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.PESAGEM_INICIAL~regout\,
	datab => \Equal1~0_combout\,
	datac => \estado_atual.ESPERA_VAGA_SOJA~regout\,
	datad => \SENSOR_VAGA_SOJA~combout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X31_Y35_N19
\estado_atual.ESPERA_VAGA_SOJA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.ESPERA_VAGA_SOJA~regout\);

-- Location: LCCOMB_X32_Y35_N26
\estado_proximo.ENTRA_SILO_SOJA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado_proximo.ENTRA_SILO_SOJA~0_combout\ = (!\SENSOR_VAGA_SOJA~combout\ & \estado_atual.ESPERA_VAGA_SOJA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SENSOR_VAGA_SOJA~combout\,
	datad => \estado_atual.ESPERA_VAGA_SOJA~regout\,
	combout => \estado_proximo.ENTRA_SILO_SOJA~0_combout\);

-- Location: LCFF_X32_Y35_N27
\estado_atual.ENTRA_SILO_SOJA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \estado_proximo.ENTRA_SILO_SOJA~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.ENTRA_SILO_SOJA~regout\);

-- Location: LCCOMB_X32_Y35_N20
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\estado_atual.ENTRA_SILO_SOJA~regout\) # ((\SENSOR_VAGA_SOJA~combout\ & \estado_atual.DESCARREGA_SOJA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SENSOR_VAGA_SOJA~combout\,
	datac => \estado_atual.DESCARREGA_SOJA~regout\,
	datad => \estado_atual.ENTRA_SILO_SOJA~regout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X32_Y35_N21
\estado_atual.DESCARREGA_SOJA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.DESCARREGA_SOJA~regout\);

-- Location: LCCOMB_X31_Y35_N8
\estado_proximo.SAI_SILO_SOJA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado_proximo.SAI_SILO_SOJA~0_combout\ = (!\SENSOR_VAGA_SOJA~combout\ & \estado_atual.DESCARREGA_SOJA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENSOR_VAGA_SOJA~combout\,
	datad => \estado_atual.DESCARREGA_SOJA~regout\,
	combout => \estado_proximo.SAI_SILO_SOJA~0_combout\);

-- Location: LCFF_X31_Y35_N9
\estado_atual.SAI_SILO_SOJA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \estado_proximo.SAI_SILO_SOJA~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.SAI_SILO_SOJA~regout\);

-- Location: LCCOMB_X31_Y35_N12
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\estado_atual.SAI_SILO_SOJA~regout\) # ((\estado_atual.ESPERA_PESAGEM_FINAL~regout\ & ((\aux_PODE_PESAR~regout\) # (!\PODE_PESAR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PODE_PESAR~combout\,
	datab => \estado_atual.ESPERA_PESAGEM_FINAL~regout\,
	datac => \estado_atual.SAI_SILO_SOJA~regout\,
	datad => \aux_PODE_PESAR~regout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X31_Y35_N26
\Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\estado_atual.SAI_SILO_ARROZ~regout\) # ((\estado_atual.SAI_SILO_FEIJAO~regout\) # (\Selector8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual.SAI_SILO_ARROZ~regout\,
	datac => \estado_atual.SAI_SILO_FEIJAO~regout\,
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: LCFF_X31_Y35_N27
\estado_atual.ESPERA_PESAGEM_FINAL\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector8~1_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.ESPERA_PESAGEM_FINAL~regout\);

-- Location: LCCOMB_X31_Y35_N14
\estado_proximo.PESAGEM_FINAL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado_proximo.PESAGEM_FINAL~0_combout\ = (\PODE_PESAR~combout\ & (\estado_atual.ESPERA_PESAGEM_FINAL~regout\ & !\aux_PODE_PESAR~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PODE_PESAR~combout\,
	datac => \estado_atual.ESPERA_PESAGEM_FINAL~regout\,
	datad => \aux_PODE_PESAR~regout\,
	combout => \estado_proximo.PESAGEM_FINAL~0_combout\);

-- Location: LCFF_X31_Y35_N15
\estado_atual.PESAGEM_FINAL\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \estado_proximo.PESAGEM_FINAL~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.PESAGEM_FINAL~regout\);

-- Location: LCCOMB_X31_Y35_N16
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\estado_atual.PESAGEM_FINAL~regout\ & ((\estado_atual.INICIO~regout\) # ((\PODE_PESAR~combout\ & !\aux_PODE_PESAR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PODE_PESAR~combout\,
	datab => \aux_PODE_PESAR~regout\,
	datac => \estado_atual.INICIO~regout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X31_Y35_N17
\estado_atual.INICIO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.INICIO~regout\);

-- Location: LCCOMB_X31_Y35_N6
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\PODE_PESAR~combout\ & (!\estado_atual.INICIO~regout\ & !\aux_PODE_PESAR~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PODE_PESAR~combout\,
	datac => \estado_atual.INICIO~regout\,
	datad => \aux_PODE_PESAR~regout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X31_Y35_N28
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((!\TIPO_GRAO~combout\(1) & (!\TIPO_GRAO~combout\(0) & \estado_atual.PESAGEM_INICIAL~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIPO_GRAO~combout\(1),
	datab => \TIPO_GRAO~combout\(0),
	datac => \estado_atual.PESAGEM_INICIAL~regout\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCFF_X31_Y35_N29
\estado_atual.PESAGEM_INICIAL\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector1~1_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.PESAGEM_INICIAL~regout\);

-- Location: LCCOMB_X31_Y35_N30
\LOCAL_SILO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LOCAL_SILO~0_combout\ = (\TIPO_GRAO~combout\(0) & \estado_atual.PESAGEM_INICIAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TIPO_GRAO~combout\(0),
	datad => \estado_atual.PESAGEM_INICIAL~regout\,
	combout => \LOCAL_SILO~0_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TIPO_GRAO[1]~I\ : cycloneii_io
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
	padio => ww_TIPO_GRAO(1),
	combout => \TIPO_GRAO~combout\(1));

-- Location: LCCOMB_X32_Y35_N16
\LOCAL_SILO~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LOCAL_SILO~1_combout\ = (\estado_atual.PESAGEM_INICIAL~regout\ & \TIPO_GRAO~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual.PESAGEM_INICIAL~regout\,
	datad => \TIPO_GRAO~combout\(1),
	combout => \LOCAL_SILO~1_combout\);

-- Location: LCCOMB_X32_Y35_N10
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\estado_atual.DESCARREGA_SOJA~regout\) # ((\estado_atual.ENTRA_SILO_SOJA~regout\) # ((!\estado_atual.SAI_SILO_SOJA~regout\ & \SENSOR_VAGA_SOJA~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.DESCARREGA_SOJA~regout\,
	datab => \estado_atual.SAI_SILO_SOJA~regout\,
	datac => \SENSOR_VAGA_SOJA~combout\,
	datad => \estado_atual.ENTRA_SILO_SOJA~regout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X32_Y35_N18
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\estado_atual.ENTRA_SILO_ARROZ~regout\) # ((\estado_atual.DESCARREGA_ARROZ~regout\) # ((!\estado_atual.SAI_SILO_ARROZ~regout\ & \SENSOR_VAGA_ARROZ~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.SAI_SILO_ARROZ~regout\,
	datab => \estado_atual.ENTRA_SILO_ARROZ~regout\,
	datac => \SENSOR_VAGA_ARROZ~combout\,
	datad => \estado_atual.DESCARREGA_ARROZ~regout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X31_Y35_N2
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\estado_atual.ENTRA_SILO_FEIJAO~regout\) # ((\estado_atual.DESCARREGA_FEIJAO~regout\) # ((!\estado_atual.SAI_SILO_FEIJAO~regout\ & \SENSOR_VAGA_FEIJAO~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.SAI_SILO_FEIJAO~regout\,
	datab => \SENSOR_VAGA_FEIJAO~combout\,
	datac => \estado_atual.ENTRA_SILO_FEIJAO~regout\,
	datad => \estado_atual.DESCARREGA_FEIJAO~regout\,
	combout => \Selector11~0_combout\);

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[0]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(0),
	combout => \PESO_BRUTO~combout\(0));

-- Location: CLKCTRL_G9
\estado_atual.PESAGEM_INICIAL~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \estado_atual.PESAGEM_INICIAL~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\);

-- Location: LCCOMB_X5_Y33_N28
\guarda_PESO_BRUTO[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(0) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((\PESO_BRUTO~combout\(0)))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (guarda_PESO_BRUTO(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => guarda_PESO_BRUTO(0),
	datac => \PESO_BRUTO~combout\(0),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(0));

-- Location: LCCOMB_X4_Y33_N4
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\PESO_CAMINHAO~combout\(0) & (guarda_PESO_BRUTO(0) $ (VCC))) # (!\PESO_CAMINHAO~combout\(0) & ((guarda_PESO_BRUTO(0)) # (GND)))
-- \Add0~1\ = CARRY((guarda_PESO_BRUTO(0)) # (!\PESO_CAMINHAO~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PESO_CAMINHAO~combout\(0),
	datab => guarda_PESO_BRUTO(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X21_Y33_N0
\PESO_CARGA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~0_combout\ = (\Add0~0_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~0_combout\);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[1]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(1),
	combout => \PESO_BRUTO~combout\(1));

-- Location: LCCOMB_X4_Y33_N0
\guarda_PESO_BRUTO[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(1) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((\PESO_BRUTO~combout\(1)))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (guarda_PESO_BRUTO(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => guarda_PESO_BRUTO(1),
	datac => \PESO_BRUTO~combout\(1),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(1));

-- Location: LCCOMB_X4_Y33_N6
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\PESO_CAMINHAO~combout\(1) & ((guarda_PESO_BRUTO(1) & (!\Add0~1\)) # (!guarda_PESO_BRUTO(1) & ((\Add0~1\) # (GND))))) # (!\PESO_CAMINHAO~combout\(1) & ((guarda_PESO_BRUTO(1) & (\Add0~1\ & VCC)) # (!guarda_PESO_BRUTO(1) & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\PESO_CAMINHAO~combout\(1) & ((!\Add0~1\) # (!guarda_PESO_BRUTO(1)))) # (!\PESO_CAMINHAO~combout\(1) & (!guarda_PESO_BRUTO(1) & !\Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PESO_CAMINHAO~combout\(1),
	datab => guarda_PESO_BRUTO(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X22_Y33_N0
\PESO_CARGA~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~1_combout\ = (\Add0~2_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~1_combout\);

-- Location: LCCOMB_X3_Y33_N28
\guarda_PESO_BRUTO[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(2) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(2))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PESO_BRUTO~combout\(2),
	datab => guarda_PESO_BRUTO(2),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(2));

-- Location: LCCOMB_X4_Y33_N8
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\PESO_CAMINHAO~combout\(2) $ (guarda_PESO_BRUTO(2) $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\PESO_CAMINHAO~combout\(2) & (guarda_PESO_BRUTO(2) & !\Add0~3\)) # (!\PESO_CAMINHAO~combout\(2) & ((guarda_PESO_BRUTO(2)) # (!\Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PESO_CAMINHAO~combout\(2),
	datab => guarda_PESO_BRUTO(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X21_Y33_N26
\PESO_CARGA~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~2_combout\ = (\Add0~4_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~2_combout\);

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[3]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(3),
	combout => \PESO_CAMINHAO~combout\(3));

-- Location: LCCOMB_X4_Y33_N10
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (guarda_PESO_BRUTO(3) & ((\PESO_CAMINHAO~combout\(3) & (!\Add0~5\)) # (!\PESO_CAMINHAO~combout\(3) & (\Add0~5\ & VCC)))) # (!guarda_PESO_BRUTO(3) & ((\PESO_CAMINHAO~combout\(3) & ((\Add0~5\) # (GND))) # (!\PESO_CAMINHAO~combout\(3) & 
-- (!\Add0~5\))))
-- \Add0~7\ = CARRY((guarda_PESO_BRUTO(3) & (\PESO_CAMINHAO~combout\(3) & !\Add0~5\)) # (!guarda_PESO_BRUTO(3) & ((\PESO_CAMINHAO~combout\(3)) # (!\Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => guarda_PESO_BRUTO(3),
	datab => \PESO_CAMINHAO~combout\(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X27_Y33_N24
\PESO_CARGA~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~3_combout\ = (\Add0~6_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~6_combout\,
	datac => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~3_combout\);

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[4]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(4),
	combout => \PESO_BRUTO~combout\(4));

-- Location: LCCOMB_X7_Y33_N16
\guarda_PESO_BRUTO[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(4) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(4))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PESO_BRUTO~combout\(4),
	datac => guarda_PESO_BRUTO(4),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(4));

-- Location: LCCOMB_X4_Y33_N12
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\PESO_CAMINHAO~combout\(4) $ (guarda_PESO_BRUTO(4) $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\PESO_CAMINHAO~combout\(4) & (guarda_PESO_BRUTO(4) & !\Add0~7\)) # (!\PESO_CAMINHAO~combout\(4) & ((guarda_PESO_BRUTO(4)) # (!\Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PESO_CAMINHAO~combout\(4),
	datab => guarda_PESO_BRUTO(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X19_Y33_N12
\PESO_CARGA~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~4_combout\ = (\Add0~8_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~4_combout\);

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[5]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(5),
	combout => \PESO_CAMINHAO~combout\(5));

-- Location: LCCOMB_X4_Y33_N14
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (guarda_PESO_BRUTO(5) & ((\PESO_CAMINHAO~combout\(5) & (!\Add0~9\)) # (!\PESO_CAMINHAO~combout\(5) & (\Add0~9\ & VCC)))) # (!guarda_PESO_BRUTO(5) & ((\PESO_CAMINHAO~combout\(5) & ((\Add0~9\) # (GND))) # (!\PESO_CAMINHAO~combout\(5) & 
-- (!\Add0~9\))))
-- \Add0~11\ = CARRY((guarda_PESO_BRUTO(5) & (\PESO_CAMINHAO~combout\(5) & !\Add0~9\)) # (!guarda_PESO_BRUTO(5) & ((\PESO_CAMINHAO~combout\(5)) # (!\Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => guarda_PESO_BRUTO(5),
	datab => \PESO_CAMINHAO~combout\(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X24_Y33_N20
\PESO_CARGA~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~5_combout\ = (\estado_atual.PESAGEM_FINAL~regout\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual.PESAGEM_FINAL~regout\,
	datad => \Add0~10_combout\,
	combout => \PESO_CARGA~5_combout\);

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[6]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(6),
	combout => \PESO_CAMINHAO~combout\(6));

-- Location: LCCOMB_X4_Y33_N16
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((guarda_PESO_BRUTO(6) $ (\PESO_CAMINHAO~combout\(6) $ (\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((guarda_PESO_BRUTO(6) & ((!\Add0~11\) # (!\PESO_CAMINHAO~combout\(6)))) # (!guarda_PESO_BRUTO(6) & (!\PESO_CAMINHAO~combout\(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => guarda_PESO_BRUTO(6),
	datab => \PESO_CAMINHAO~combout\(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X17_Y33_N12
\PESO_CARGA~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~6_combout\ = (\Add0~12_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~12_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~6_combout\);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[7]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(7),
	combout => \PESO_BRUTO~combout\(7));

-- Location: LCCOMB_X3_Y33_N24
\guarda_PESO_BRUTO[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(7) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(7))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PESO_BRUTO~combout\(7),
	datac => guarda_PESO_BRUTO(7),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(7));

-- Location: LCCOMB_X4_Y33_N18
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\PESO_CAMINHAO~combout\(7) & ((guarda_PESO_BRUTO(7) & (!\Add0~13\)) # (!guarda_PESO_BRUTO(7) & ((\Add0~13\) # (GND))))) # (!\PESO_CAMINHAO~combout\(7) & ((guarda_PESO_BRUTO(7) & (\Add0~13\ & VCC)) # (!guarda_PESO_BRUTO(7) & 
-- (!\Add0~13\))))
-- \Add0~15\ = CARRY((\PESO_CAMINHAO~combout\(7) & ((!\Add0~13\) # (!guarda_PESO_BRUTO(7)))) # (!\PESO_CAMINHAO~combout\(7) & (!guarda_PESO_BRUTO(7) & !\Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PESO_CAMINHAO~combout\(7),
	datab => guarda_PESO_BRUTO(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X22_Y33_N22
\PESO_CARGA~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~7_combout\ = (\Add0~14_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~7_combout\);

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[8]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(8),
	combout => \PESO_CAMINHAO~combout\(8));

-- Location: LCCOMB_X4_Y33_N20
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((guarda_PESO_BRUTO(8) $ (\PESO_CAMINHAO~combout\(8) $ (\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((guarda_PESO_BRUTO(8) & ((!\Add0~15\) # (!\PESO_CAMINHAO~combout\(8)))) # (!guarda_PESO_BRUTO(8) & (!\PESO_CAMINHAO~combout\(8) & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => guarda_PESO_BRUTO(8),
	datab => \PESO_CAMINHAO~combout\(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X22_Y33_N20
\PESO_CARGA~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~8_combout\ = (\Add0~16_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~8_combout\);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[9]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(9),
	combout => \PESO_CAMINHAO~combout\(9));

-- Location: LCCOMB_X4_Y33_N22
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (guarda_PESO_BRUTO(9) & ((\PESO_CAMINHAO~combout\(9) & (!\Add0~17\)) # (!\PESO_CAMINHAO~combout\(9) & (\Add0~17\ & VCC)))) # (!guarda_PESO_BRUTO(9) & ((\PESO_CAMINHAO~combout\(9) & ((\Add0~17\) # (GND))) # (!\PESO_CAMINHAO~combout\(9) 
-- & (!\Add0~17\))))
-- \Add0~19\ = CARRY((guarda_PESO_BRUTO(9) & (\PESO_CAMINHAO~combout\(9) & !\Add0~17\)) # (!guarda_PESO_BRUTO(9) & ((\PESO_CAMINHAO~combout\(9)) # (!\Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => guarda_PESO_BRUTO(9),
	datab => \PESO_CAMINHAO~combout\(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X22_Y33_N18
\PESO_CARGA~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~9_combout\ = (\Add0~18_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~9_combout\);

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[10]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(10),
	combout => \PESO_CAMINHAO~combout\(10));

-- Location: LCCOMB_X4_Y33_N24
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((guarda_PESO_BRUTO(10) $ (\PESO_CAMINHAO~combout\(10) $ (\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((guarda_PESO_BRUTO(10) & ((!\Add0~19\) # (!\PESO_CAMINHAO~combout\(10)))) # (!guarda_PESO_BRUTO(10) & (!\PESO_CAMINHAO~combout\(10) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => guarda_PESO_BRUTO(10),
	datab => \PESO_CAMINHAO~combout\(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X19_Y33_N2
\PESO_CARGA~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~10_combout\ = (\Add0~20_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~10_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[11]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(11),
	combout => \PESO_BRUTO~combout\(11));

-- Location: LCCOMB_X4_Y33_N2
\guarda_PESO_BRUTO[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(11) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((\PESO_BRUTO~combout\(11)))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (guarda_PESO_BRUTO(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => guarda_PESO_BRUTO(11),
	datac => \PESO_BRUTO~combout\(11),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(11));

-- Location: LCCOMB_X4_Y33_N26
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\PESO_CAMINHAO~combout\(11) & ((guarda_PESO_BRUTO(11) & (!\Add0~21\)) # (!guarda_PESO_BRUTO(11) & ((\Add0~21\) # (GND))))) # (!\PESO_CAMINHAO~combout\(11) & ((guarda_PESO_BRUTO(11) & (\Add0~21\ & VCC)) # (!guarda_PESO_BRUTO(11) & 
-- (!\Add0~21\))))
-- \Add0~23\ = CARRY((\PESO_CAMINHAO~combout\(11) & ((!\Add0~21\) # (!guarda_PESO_BRUTO(11)))) # (!\PESO_CAMINHAO~combout\(11) & (!guarda_PESO_BRUTO(11) & !\Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PESO_CAMINHAO~combout\(11),
	datab => guarda_PESO_BRUTO(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X24_Y33_N10
\PESO_CARGA~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~11_combout\ = (\Add0~22_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~22_combout\,
	datac => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~11_combout\);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[12]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(12),
	combout => \PESO_BRUTO~combout\(12));

-- Location: LCCOMB_X3_Y33_N16
\guarda_PESO_BRUTO[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(12) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(12))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PESO_BRUTO~combout\(12),
	datac => guarda_PESO_BRUTO(12),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(12));

-- Location: LCCOMB_X4_Y33_N28
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\PESO_CAMINHAO~combout\(12) $ (guarda_PESO_BRUTO(12) $ (\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\PESO_CAMINHAO~combout\(12) & (guarda_PESO_BRUTO(12) & !\Add0~23\)) # (!\PESO_CAMINHAO~combout\(12) & ((guarda_PESO_BRUTO(12)) # (!\Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PESO_CAMINHAO~combout\(12),
	datab => guarda_PESO_BRUTO(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X22_Y33_N28
\PESO_CARGA~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~12_combout\ = (\Add0~24_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~24_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~12_combout\);

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[13]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(13),
	combout => \PESO_CAMINHAO~combout\(13));

-- Location: LCCOMB_X4_Y33_N30
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (guarda_PESO_BRUTO(13) & ((\PESO_CAMINHAO~combout\(13) & (!\Add0~25\)) # (!\PESO_CAMINHAO~combout\(13) & (\Add0~25\ & VCC)))) # (!guarda_PESO_BRUTO(13) & ((\PESO_CAMINHAO~combout\(13) & ((\Add0~25\) # (GND))) # 
-- (!\PESO_CAMINHAO~combout\(13) & (!\Add0~25\))))
-- \Add0~27\ = CARRY((guarda_PESO_BRUTO(13) & (\PESO_CAMINHAO~combout\(13) & !\Add0~25\)) # (!guarda_PESO_BRUTO(13) & ((\PESO_CAMINHAO~combout\(13)) # (!\Add0~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => guarda_PESO_BRUTO(13),
	datab => \PESO_CAMINHAO~combout\(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X17_Y33_N10
\PESO_CARGA~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~13_combout\ = (\Add0~26_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~26_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~13_combout\);

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[14]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(14),
	combout => \PESO_CAMINHAO~combout\(14));

-- Location: LCCOMB_X4_Y32_N0
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((guarda_PESO_BRUTO(14) $ (\PESO_CAMINHAO~combout\(14) $ (\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((guarda_PESO_BRUTO(14) & ((!\Add0~27\) # (!\PESO_CAMINHAO~combout\(14)))) # (!guarda_PESO_BRUTO(14) & (!\PESO_CAMINHAO~combout\(14) & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => guarda_PESO_BRUTO(14),
	datab => \PESO_CAMINHAO~combout\(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X21_Y33_N12
\PESO_CARGA~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~14_combout\ = (\estado_atual.PESAGEM_FINAL~regout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual.PESAGEM_FINAL~regout\,
	datad => \Add0~28_combout\,
	combout => \PESO_CARGA~14_combout\);

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[15]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(15),
	combout => \PESO_BRUTO~combout\(15));

-- Location: LCCOMB_X7_Y32_N28
\guarda_PESO_BRUTO[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(15) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((\PESO_BRUTO~combout\(15)))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (guarda_PESO_BRUTO(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => guarda_PESO_BRUTO(15),
	datac => \PESO_BRUTO~combout\(15),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(15));

-- Location: LCCOMB_X4_Y32_N2
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\PESO_CAMINHAO~combout\(15) & ((guarda_PESO_BRUTO(15) & (!\Add0~29\)) # (!guarda_PESO_BRUTO(15) & ((\Add0~29\) # (GND))))) # (!\PESO_CAMINHAO~combout\(15) & ((guarda_PESO_BRUTO(15) & (\Add0~29\ & VCC)) # (!guarda_PESO_BRUTO(15) & 
-- (!\Add0~29\))))
-- \Add0~31\ = CARRY((\PESO_CAMINHAO~combout\(15) & ((!\Add0~29\) # (!guarda_PESO_BRUTO(15)))) # (!\PESO_CAMINHAO~combout\(15) & (!guarda_PESO_BRUTO(15) & !\Add0~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PESO_CAMINHAO~combout\(15),
	datab => guarda_PESO_BRUTO(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X14_Y32_N12
\PESO_CARGA~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~15_combout\ = (\Add0~30_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~15_combout\);

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[16]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(16),
	combout => \PESO_CAMINHAO~combout\(16));

-- Location: LCCOMB_X4_Y32_N4
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((guarda_PESO_BRUTO(16) $ (\PESO_CAMINHAO~combout\(16) $ (\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((guarda_PESO_BRUTO(16) & ((!\Add0~31\) # (!\PESO_CAMINHAO~combout\(16)))) # (!guarda_PESO_BRUTO(16) & (!\PESO_CAMINHAO~combout\(16) & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => guarda_PESO_BRUTO(16),
	datab => \PESO_CAMINHAO~combout\(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X14_Y32_N18
\PESO_CARGA~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~16_combout\ = (\Add0~32_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~16_combout\);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[17]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(17),
	combout => \PESO_BRUTO~combout\(17));

-- Location: LCCOMB_X3_Y32_N28
\guarda_PESO_BRUTO[17]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(17) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(17))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PESO_BRUTO~combout\(17),
	datac => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	datad => guarda_PESO_BRUTO(17),
	combout => guarda_PESO_BRUTO(17));

-- Location: LCCOMB_X4_Y32_N6
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\PESO_CAMINHAO~combout\(17) & ((guarda_PESO_BRUTO(17) & (!\Add0~33\)) # (!guarda_PESO_BRUTO(17) & ((\Add0~33\) # (GND))))) # (!\PESO_CAMINHAO~combout\(17) & ((guarda_PESO_BRUTO(17) & (\Add0~33\ & VCC)) # (!guarda_PESO_BRUTO(17) & 
-- (!\Add0~33\))))
-- \Add0~35\ = CARRY((\PESO_CAMINHAO~combout\(17) & ((!\Add0~33\) # (!guarda_PESO_BRUTO(17)))) # (!\PESO_CAMINHAO~combout\(17) & (!guarda_PESO_BRUTO(17) & !\Add0~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PESO_CAMINHAO~combout\(17),
	datab => guarda_PESO_BRUTO(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X16_Y32_N24
\PESO_CARGA~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~17_combout\ = (\Add0~34_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~34_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~17_combout\);

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[18]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(18),
	combout => \PESO_CAMINHAO~combout\(18));

-- Location: LCCOMB_X4_Y32_N8
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((guarda_PESO_BRUTO(18) $ (\PESO_CAMINHAO~combout\(18) $ (\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((guarda_PESO_BRUTO(18) & ((!\Add0~35\) # (!\PESO_CAMINHAO~combout\(18)))) # (!guarda_PESO_BRUTO(18) & (!\PESO_CAMINHAO~combout\(18) & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => guarda_PESO_BRUTO(18),
	datab => \PESO_CAMINHAO~combout\(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X14_Y32_N8
\PESO_CARGA~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~18_combout\ = (\Add0~36_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~36_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~18_combout\);

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[19]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(19),
	combout => \PESO_BRUTO~combout\(19));

-- Location: LCCOMB_X3_Y32_N8
\guarda_PESO_BRUTO[19]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(19) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(19))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PESO_BRUTO~combout\(19),
	datac => guarda_PESO_BRUTO(19),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(19));

-- Location: LCCOMB_X4_Y32_N10
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\PESO_CAMINHAO~combout\(19) & ((guarda_PESO_BRUTO(19) & (!\Add0~37\)) # (!guarda_PESO_BRUTO(19) & ((\Add0~37\) # (GND))))) # (!\PESO_CAMINHAO~combout\(19) & ((guarda_PESO_BRUTO(19) & (\Add0~37\ & VCC)) # (!guarda_PESO_BRUTO(19) & 
-- (!\Add0~37\))))
-- \Add0~39\ = CARRY((\PESO_CAMINHAO~combout\(19) & ((!\Add0~37\) # (!guarda_PESO_BRUTO(19)))) # (!\PESO_CAMINHAO~combout\(19) & (!guarda_PESO_BRUTO(19) & !\Add0~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PESO_CAMINHAO~combout\(19),
	datab => guarda_PESO_BRUTO(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X16_Y32_N22
\PESO_CARGA~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~19_combout\ = (\Add0~38_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~38_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~19_combout\);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[20]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(20),
	combout => \PESO_BRUTO~combout\(20));

-- Location: LCCOMB_X3_Y32_N26
\guarda_PESO_BRUTO[20]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(20) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((\PESO_BRUTO~combout\(20)))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (guarda_PESO_BRUTO(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => guarda_PESO_BRUTO(20),
	datac => \PESO_BRUTO~combout\(20),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(20));

-- Location: LCCOMB_X4_Y32_N12
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((\PESO_CAMINHAO~combout\(20) $ (guarda_PESO_BRUTO(20) $ (\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((\PESO_CAMINHAO~combout\(20) & (guarda_PESO_BRUTO(20) & !\Add0~39\)) # (!\PESO_CAMINHAO~combout\(20) & ((guarda_PESO_BRUTO(20)) # (!\Add0~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PESO_CAMINHAO~combout\(20),
	datab => guarda_PESO_BRUTO(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X14_Y32_N22
\PESO_CARGA~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~20_combout\ = (\Add0~40_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~40_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~20_combout\);

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[21]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(21),
	combout => \PESO_CAMINHAO~combout\(21));

-- Location: LCCOMB_X4_Y32_N14
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (guarda_PESO_BRUTO(21) & ((\PESO_CAMINHAO~combout\(21) & (!\Add0~41\)) # (!\PESO_CAMINHAO~combout\(21) & (\Add0~41\ & VCC)))) # (!guarda_PESO_BRUTO(21) & ((\PESO_CAMINHAO~combout\(21) & ((\Add0~41\) # (GND))) # 
-- (!\PESO_CAMINHAO~combout\(21) & (!\Add0~41\))))
-- \Add0~43\ = CARRY((guarda_PESO_BRUTO(21) & (\PESO_CAMINHAO~combout\(21) & !\Add0~41\)) # (!guarda_PESO_BRUTO(21) & ((\PESO_CAMINHAO~combout\(21)) # (!\Add0~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => guarda_PESO_BRUTO(21),
	datab => \PESO_CAMINHAO~combout\(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X14_Y32_N24
\PESO_CARGA~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~21_combout\ = (\Add0~42_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~21_combout\);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[22]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(22),
	combout => \PESO_BRUTO~combout\(22));

-- Location: LCCOMB_X3_Y32_N22
\guarda_PESO_BRUTO[22]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(22) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(22))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PESO_BRUTO~combout\(22),
	datac => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	datad => guarda_PESO_BRUTO(22),
	combout => guarda_PESO_BRUTO(22));

-- Location: LCCOMB_X4_Y32_N16
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((\PESO_CAMINHAO~combout\(22) $ (guarda_PESO_BRUTO(22) $ (\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((\PESO_CAMINHAO~combout\(22) & (guarda_PESO_BRUTO(22) & !\Add0~43\)) # (!\PESO_CAMINHAO~combout\(22) & ((guarda_PESO_BRUTO(22)) # (!\Add0~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PESO_CAMINHAO~combout\(22),
	datab => guarda_PESO_BRUTO(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X14_Y32_N6
\PESO_CARGA~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~22_combout\ = (\Add0~44_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~44_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~22_combout\);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[23]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(23),
	combout => \PESO_CAMINHAO~combout\(23));

-- Location: LCCOMB_X4_Y32_N18
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (guarda_PESO_BRUTO(23) & ((\PESO_CAMINHAO~combout\(23) & (!\Add0~45\)) # (!\PESO_CAMINHAO~combout\(23) & (\Add0~45\ & VCC)))) # (!guarda_PESO_BRUTO(23) & ((\PESO_CAMINHAO~combout\(23) & ((\Add0~45\) # (GND))) # 
-- (!\PESO_CAMINHAO~combout\(23) & (!\Add0~45\))))
-- \Add0~47\ = CARRY((guarda_PESO_BRUTO(23) & (\PESO_CAMINHAO~combout\(23) & !\Add0~45\)) # (!guarda_PESO_BRUTO(23) & ((\PESO_CAMINHAO~combout\(23)) # (!\Add0~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => guarda_PESO_BRUTO(23),
	datab => \PESO_CAMINHAO~combout\(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X14_Y32_N20
\PESO_CARGA~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~23_combout\ = (\Add0~46_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~46_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~23_combout\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[24]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(24),
	combout => \PESO_CAMINHAO~combout\(24));

-- Location: LCCOMB_X4_Y32_N20
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((guarda_PESO_BRUTO(24) $ (\PESO_CAMINHAO~combout\(24) $ (\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((guarda_PESO_BRUTO(24) & ((!\Add0~47\) # (!\PESO_CAMINHAO~combout\(24)))) # (!guarda_PESO_BRUTO(24) & (!\PESO_CAMINHAO~combout\(24) & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => guarda_PESO_BRUTO(24),
	datab => \PESO_CAMINHAO~combout\(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X14_Y32_N10
\PESO_CARGA~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~24_combout\ = (\Add0~48_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~48_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~24_combout\);

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[25]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(25),
	combout => \PESO_CAMINHAO~combout\(25));

-- Location: LCCOMB_X4_Y32_N22
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (guarda_PESO_BRUTO(25) & ((\PESO_CAMINHAO~combout\(25) & (!\Add0~49\)) # (!\PESO_CAMINHAO~combout\(25) & (\Add0~49\ & VCC)))) # (!guarda_PESO_BRUTO(25) & ((\PESO_CAMINHAO~combout\(25) & ((\Add0~49\) # (GND))) # 
-- (!\PESO_CAMINHAO~combout\(25) & (!\Add0~49\))))
-- \Add0~51\ = CARRY((guarda_PESO_BRUTO(25) & (\PESO_CAMINHAO~combout\(25) & !\Add0~49\)) # (!guarda_PESO_BRUTO(25) & ((\PESO_CAMINHAO~combout\(25)) # (!\Add0~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => guarda_PESO_BRUTO(25),
	datab => \PESO_CAMINHAO~combout\(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X25_Y32_N24
\PESO_CARGA~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~25_combout\ = (\estado_atual.PESAGEM_FINAL~regout\ & \Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.PESAGEM_FINAL~regout\,
	datad => \Add0~50_combout\,
	combout => \PESO_CARGA~25_combout\);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[26]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(26),
	combout => \PESO_CAMINHAO~combout\(26));

-- Location: LCCOMB_X4_Y32_N24
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((guarda_PESO_BRUTO(26) $ (\PESO_CAMINHAO~combout\(26) $ (\Add0~51\)))) # (GND)
-- \Add0~53\ = CARRY((guarda_PESO_BRUTO(26) & ((!\Add0~51\) # (!\PESO_CAMINHAO~combout\(26)))) # (!guarda_PESO_BRUTO(26) & (!\PESO_CAMINHAO~combout\(26) & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => guarda_PESO_BRUTO(26),
	datab => \PESO_CAMINHAO~combout\(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X25_Y32_N22
\PESO_CARGA~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~26_combout\ = (\Add0~52_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~52_combout\,
	datac => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~26_combout\);

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[27]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(27),
	combout => \PESO_BRUTO~combout\(27));

-- Location: LCCOMB_X3_Y32_N16
\guarda_PESO_BRUTO[27]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(27) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (\PESO_BRUTO~combout\(27))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((guarda_PESO_BRUTO(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PESO_BRUTO~combout\(27),
	datac => guarda_PESO_BRUTO(27),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(27));

-- Location: LCCOMB_X4_Y32_N26
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\PESO_CAMINHAO~combout\(27) & ((guarda_PESO_BRUTO(27) & (!\Add0~53\)) # (!guarda_PESO_BRUTO(27) & ((\Add0~53\) # (GND))))) # (!\PESO_CAMINHAO~combout\(27) & ((guarda_PESO_BRUTO(27) & (\Add0~53\ & VCC)) # (!guarda_PESO_BRUTO(27) & 
-- (!\Add0~53\))))
-- \Add0~55\ = CARRY((\PESO_CAMINHAO~combout\(27) & ((!\Add0~53\) # (!guarda_PESO_BRUTO(27)))) # (!\PESO_CAMINHAO~combout\(27) & (!guarda_PESO_BRUTO(27) & !\Add0~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PESO_CAMINHAO~combout\(27),
	datab => guarda_PESO_BRUTO(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X25_Y32_N0
\PESO_CARGA~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~27_combout\ = (\estado_atual.PESAGEM_FINAL~regout\ & \Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.PESAGEM_FINAL~regout\,
	datad => \Add0~54_combout\,
	combout => \PESO_CARGA~27_combout\);

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_BRUTO[28]~I\ : cycloneii_io
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
	padio => ww_PESO_BRUTO(28),
	combout => \PESO_BRUTO~combout\(28));

-- Location: LCCOMB_X3_Y32_N6
\guarda_PESO_BRUTO[28]\ : cycloneii_lcell_comb
-- Equation(s):
-- guarda_PESO_BRUTO(28) = (GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & ((\PESO_BRUTO~combout\(28)))) # (!GLOBAL(\estado_atual.PESAGEM_INICIAL~clkctrl_outclk\) & (guarda_PESO_BRUTO(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => guarda_PESO_BRUTO(28),
	datac => \PESO_BRUTO~combout\(28),
	datad => \estado_atual.PESAGEM_INICIAL~clkctrl_outclk\,
	combout => guarda_PESO_BRUTO(28));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PESO_CAMINHAO[28]~I\ : cycloneii_io
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
	padio => ww_PESO_CAMINHAO(28),
	combout => \PESO_CAMINHAO~combout\(28));

-- Location: LCCOMB_X4_Y32_N28
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = guarda_PESO_BRUTO(28) $ (\Add0~55\ $ (\PESO_CAMINHAO~combout\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => guarda_PESO_BRUTO(28),
	datad => \PESO_CAMINHAO~combout\(28),
	cin => \Add0~55\,
	combout => \Add0~56_combout\);

-- Location: LCCOMB_X14_Y32_N4
\PESO_CARGA~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \PESO_CARGA~28_combout\ = (\Add0~56_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~56_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \PESO_CARGA~28_combout\);

-- Location: LCCOMB_X31_Y35_N10
\VALOR_GRAO[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VALOR_GRAO[2]~0_combout\ = (\estado_atual.PESAGEM_INICIAL~regout\ & ((\TIPO_GRAO~combout\(1)) # (\TIPO_GRAO~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TIPO_GRAO~combout\(1),
	datac => \TIPO_GRAO~combout\(0),
	datad => \estado_atual.PESAGEM_INICIAL~regout\,
	combout => \VALOR_GRAO[2]~0_combout\);

-- Location: CLKCTRL_G8
\VALOR_GRAO[2]~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \VALOR_GRAO[2]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \VALOR_GRAO[2]~0clkctrl_outclk\);

-- Location: LCCOMB_X27_Y33_N28
\VALOR_GRAO[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- VALOR_GRAO(0) = (GLOBAL(\VALOR_GRAO[2]~0clkctrl_outclk\) & ((\Equal1~0_combout\))) # (!GLOBAL(\VALOR_GRAO[2]~0clkctrl_outclk\) & (VALOR_GRAO(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VALOR_GRAO(0),
	datac => \Equal1~0_combout\,
	datad => \VALOR_GRAO[2]~0clkctrl_outclk\,
	combout => VALOR_GRAO(0));

-- Location: LCCOMB_X21_Y33_N20
\Mult0|mult_core|decoder_node[0][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][0]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~0_combout\,
	combout => \Mult0|mult_core|decoder_node[0][0]~combout\);

-- Location: LCCOMB_X21_Y33_N22
\VALOR_CARGA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VALOR_CARGA~0_combout\ = (\Mult0|mult_core|decoder_node[0][0]~combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|mult_core|decoder_node[0][0]~combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \VALOR_CARGA~0_combout\);

-- Location: LCCOMB_X25_Y33_N24
\Mult0|mult_core|decoder_node[0][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][1]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~2_combout\,
	combout => \Mult0|mult_core|decoder_node[0][1]~combout\);

-- Location: LCCOMB_X28_Y33_N2
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\Mult0|mult_core|decoder_node[1][0]~combout\ & (\Mult0|mult_core|decoder_node[0][1]~combout\ $ (VCC))) # (!\Mult0|mult_core|decoder_node[1][0]~combout\ & 
-- (\Mult0|mult_core|decoder_node[0][1]~combout\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult0|mult_core|decoder_node[1][0]~combout\ & \Mult0|mult_core|decoder_node[0][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][0]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][1]~combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X31_Y33_N0
\VALOR_CARGA~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VALOR_CARGA~1_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \VALOR_CARGA~1_combout\);

-- Location: LCCOMB_X27_Y33_N16
\Mult0|mult_core|decoder_node[0][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][2]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VALOR_GRAO(0),
	datad => \Add0~4_combout\,
	combout => \Mult0|mult_core|decoder_node[0][2]~combout\);

-- Location: LCCOMB_X28_Y33_N4
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|decoder_node[1][1]~combout\ & ((\Mult0|mult_core|decoder_node[0][2]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[0][2]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult0|mult_core|decoder_node[1][1]~combout\ & ((\Mult0|mult_core|decoder_node[0][2]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|decoder_node[0][2]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|decoder_node[1][1]~combout\ & (!\Mult0|mult_core|decoder_node[0][2]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\Mult0|mult_core|decoder_node[1][1]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Mult0|mult_core|decoder_node[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][1]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][2]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X29_Y33_N2
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\Mult0|mult_core|decoder_node[2][0]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ $ (VCC))) # (!\Mult0|mult_core|decoder_node[2][0]~combout\ & 
-- (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & VCC))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult0|mult_core|decoder_node[2][0]~combout\ & \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[2][0]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X30_Y33_N24
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X32_Y35_N22
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\TIPO_GRAO~combout\(0) & \TIPO_GRAO~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TIPO_GRAO~combout\(0),
	datad => \TIPO_GRAO~combout\(1),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X27_Y33_N22
\VALOR_GRAO[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- VALOR_GRAO(1) = (GLOBAL(\VALOR_GRAO[2]~0clkctrl_outclk\) & (!\Equal1~1_combout\)) # (!GLOBAL(\VALOR_GRAO[2]~0clkctrl_outclk\) & ((VALOR_GRAO(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~1_combout\,
	datac => VALOR_GRAO(1),
	datad => \VALOR_GRAO[2]~0clkctrl_outclk\,
	combout => VALOR_GRAO(1));

-- Location: LCCOMB_X27_Y33_N4
\Mult0|mult_core|decoder_node[1][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][2]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VALOR_GRAO(1),
	datad => \Add0~4_combout\,
	combout => \Mult0|mult_core|decoder_node[1][2]~combout\);

-- Location: LCCOMB_X28_Y33_N6
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult0|mult_core|decoder_node[0][3]~combout\ $ (\Mult0|mult_core|decoder_node[1][2]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|decoder_node[0][3]~combout\ & ((\Mult0|mult_core|decoder_node[1][2]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\Mult0|mult_core|decoder_node[0][3]~combout\ & (\Mult0|mult_core|decoder_node[1][2]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][3]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][2]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X29_Y33_N4
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_combout\ = (\Mult0|mult_core|decoder_node[2][1]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\Mult0|mult_core|decoder_node[2][1]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ = CARRY((\Mult0|mult_core|decoder_node[2][1]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|decoder_node[2][1]~combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[2][1]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\);

-- Location: LCCOMB_X27_Y33_N18
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_combout\ = (\estado_atual.PESAGEM_FINAL~regout\ & \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.PESAGEM_FINAL~regout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3_combout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_combout\);

-- Location: LCCOMB_X27_Y33_N8
\Mult0|mult_core|decoder_node[2][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][2]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VALOR_GRAO(2),
	datad => \Add0~4_combout\,
	combout => \Mult0|mult_core|decoder_node[2][2]~combout\);

-- Location: LCCOMB_X29_Y33_N6
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ (\Mult0|mult_core|decoder_node[2][2]~combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Mult0|mult_core|decoder_node[2][2]~combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\Mult0|mult_core|decoder_node[2][2]~combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Mult0|mult_core|decoder_node[2][2]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X30_Y33_N10
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X27_Y33_N26
\Mult0|mult_core|decoder_node[2][3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][3]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VALOR_GRAO(2),
	datad => \Add0~6_combout\,
	combout => \Mult0|mult_core|decoder_node[2][3]~combout\);

-- Location: LCCOMB_X29_Y33_N8
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\Mult0|mult_core|decoder_node[2][3]~combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ & VCC)) # (!\Mult0|mult_core|decoder_node[2][3]~combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\Mult0|mult_core|decoder_node[2][3]~combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)) # (!\Mult0|mult_core|decoder_node[2][3]~combout\ & 
-- ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (!\Mult0|mult_core|decoder_node[2][3]~combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\) # 
-- (!\Mult0|mult_core|decoder_node[2][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \Mult0|mult_core|decoder_node[2][3]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\);

-- Location: LCCOMB_X30_Y33_N16
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11_combout\);

-- Location: LCCOMB_X27_Y33_N12
\VALOR_GRAO[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- VALOR_GRAO(2) = (GLOBAL(\VALOR_GRAO[2]~0clkctrl_outclk\) & ((\Equal1~1_combout\))) # (!GLOBAL(\VALOR_GRAO[2]~0clkctrl_outclk\) & (VALOR_GRAO(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VALOR_GRAO(2),
	datab => \Equal1~1_combout\,
	datad => \VALOR_GRAO[2]~0clkctrl_outclk\,
	combout => VALOR_GRAO(2));

-- Location: LCCOMB_X25_Y33_N2
\Mult0|mult_core|decoder_node[2][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][4]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~8_combout\,
	combout => \Mult0|mult_core|decoder_node[2][4]~combout\);

-- Location: LCCOMB_X29_Y33_N10
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ $ (\Mult0|mult_core|decoder_node[2][4]~combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Mult0|mult_core|decoder_node[2][4]~combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (\Mult0|mult_core|decoder_node[2][4]~combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \Mult0|mult_core|decoder_node[2][4]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X30_Y33_N26
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\);

-- Location: LCCOMB_X25_Y33_N0
\Mult0|mult_core|decoder_node[2][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][5]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~10_combout\,
	combout => \Mult0|mult_core|decoder_node[2][5]~combout\);

-- Location: LCCOMB_X29_Y33_N12
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((\Mult0|mult_core|decoder_node[2][5]~combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ & VCC)) # (!\Mult0|mult_core|decoder_node[2][5]~combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)))) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((\Mult0|mult_core|decoder_node[2][5]~combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # (!\Mult0|mult_core|decoder_node[2][5]~combout\ & 
-- ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (!\Mult0|mult_core|decoder_node[2][5]~combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # 
-- (!\Mult0|mult_core|decoder_node[2][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datab => \Mult0|mult_core|decoder_node[2][5]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\);

-- Location: LCCOMB_X30_Y33_N0
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17_combout\);

-- Location: LCCOMB_X22_Y33_N14
\Mult0|mult_core|decoder_node[1][7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][7]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VALOR_GRAO(1),
	datad => \Add0~14_combout\,
	combout => \Mult0|mult_core|decoder_node[1][7]~combout\);

-- Location: LCCOMB_X24_Y33_N18
\Mult0|mult_core|decoder_node[1][6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][6]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~12_combout\,
	combout => \Mult0|mult_core|decoder_node[1][6]~combout\);

-- Location: LCCOMB_X25_Y33_N12
\Mult0|mult_core|decoder_node[1][5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][5]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~10_combout\,
	combout => \Mult0|mult_core|decoder_node[1][5]~combout\);

-- Location: LCCOMB_X25_Y33_N30
\Mult0|mult_core|decoder_node[1][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][4]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~8_combout\,
	combout => \Mult0|mult_core|decoder_node[1][4]~combout\);

-- Location: LCCOMB_X25_Y33_N10
\Mult0|mult_core|decoder_node[0][4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][4]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~8_combout\,
	combout => \Mult0|mult_core|decoder_node[0][4]~combout\);

-- Location: LCCOMB_X28_Y33_N16
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\Mult0|mult_core|decoder_node[0][8]~combout\ & ((\Mult0|mult_core|decoder_node[1][7]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[1][7]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)))) # (!\Mult0|mult_core|decoder_node[0][8]~combout\ & ((\Mult0|mult_core|decoder_node[1][7]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\Mult0|mult_core|decoder_node[1][7]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((\Mult0|mult_core|decoder_node[0][8]~combout\ & (!\Mult0|mult_core|decoder_node[1][7]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # 
-- (!\Mult0|mult_core|decoder_node[0][8]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\Mult0|mult_core|decoder_node[1][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][8]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][7]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X29_Y33_N14
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ = ((\Mult0|mult_core|decoder_node[2][6]~combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ = CARRY((\Mult0|mult_core|decoder_node[2][6]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\))) # (!\Mult0|mult_core|decoder_node[2][6]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[2][6]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X30_Y33_N14
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~18_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\);

-- Location: LCCOMB_X22_Y33_N24
\Mult0|mult_core|decoder_node[0][9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][9]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~18_combout\,
	combout => \Mult0|mult_core|decoder_node[0][9]~combout\);

-- Location: LCCOMB_X28_Y33_N18
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = ((\Mult0|mult_core|decoder_node[1][8]~combout\ $ (\Mult0|mult_core|decoder_node[0][9]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\Mult0|mult_core|decoder_node[1][8]~combout\ & ((\Mult0|mult_core|decoder_node[0][9]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\))) # 
-- (!\Mult0|mult_core|decoder_node[1][8]~combout\ & (\Mult0|mult_core|decoder_node[0][9]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][8]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][9]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X29_Y33_N16
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21_combout\ = (\Mult0|mult_core|decoder_node[2][7]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\)))) # 
-- (!\Mult0|mult_core|decoder_node[2][7]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22\ = CARRY((\Mult0|mult_core|decoder_node[2][7]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\)) # (!\Mult0|mult_core|decoder_node[2][7]~combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[2][7]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~19\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22\);

-- Location: LCCOMB_X30_Y33_N4
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~21_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23_combout\);

-- Location: LCCOMB_X22_Y33_N16
\Mult0|mult_core|decoder_node[2][8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][8]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~16_combout\,
	combout => \Mult0|mult_core|decoder_node[2][8]~combout\);

-- Location: LCCOMB_X29_Y33_N18
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ = ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ $ (\Mult0|mult_core|decoder_node[2][8]~combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((\Mult0|mult_core|decoder_node[2][8]~combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (\Mult0|mult_core|decoder_node[2][8]~combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datab => \Mult0|mult_core|decoder_node[2][8]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~22\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\);

-- Location: LCCOMB_X30_Y33_N18
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~24_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\);

-- Location: LCCOMB_X24_Y33_N8
\Mult0|mult_core|decoder_node[0][11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][11]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~22_combout\,
	combout => \Mult0|mult_core|decoder_node[0][11]~combout\);

-- Location: LCCOMB_X24_Y33_N6
\Mult0|mult_core|decoder_node[0][10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][10]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~20_combout\,
	combout => \Mult0|mult_core|decoder_node[0][10]~combout\);

-- Location: LCCOMB_X28_Y33_N22
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ = ((\Mult0|mult_core|decoder_node[1][10]~combout\ $ (\Mult0|mult_core|decoder_node[0][11]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ = CARRY((\Mult0|mult_core|decoder_node[1][10]~combout\ & ((\Mult0|mult_core|decoder_node[0][11]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\))) # 
-- (!\Mult0|mult_core|decoder_node[1][10]~combout\ & (\Mult0|mult_core|decoder_node[0][11]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][10]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][11]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X29_Y33_N20
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27_combout\ = (\Mult0|mult_core|decoder_node[2][9]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\)))) # 
-- (!\Mult0|mult_core|decoder_node[2][9]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28\ = CARRY((\Mult0|mult_core|decoder_node[2][9]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\)) # (!\Mult0|mult_core|decoder_node[2][9]~combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[2][9]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~25\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28\);

-- Location: LCCOMB_X30_Y33_N8
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~27_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29_combout\);

-- Location: LCCOMB_X25_Y33_N26
\Mult0|mult_core|decoder_node[0][12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][12]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~24_combout\,
	combout => \Mult0|mult_core|decoder_node[0][12]~combout\);

-- Location: LCCOMB_X28_Y33_N24
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ = (\Mult0|mult_core|decoder_node[1][11]~combout\ & ((\Mult0|mult_core|decoder_node[0][12]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[0][12]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)))) # (!\Mult0|mult_core|decoder_node[1][11]~combout\ & ((\Mult0|mult_core|decoder_node[0][12]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)) # (!\Mult0|mult_core|decoder_node[0][12]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ = CARRY((\Mult0|mult_core|decoder_node[1][11]~combout\ & (!\Mult0|mult_core|decoder_node[0][12]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)) # 
-- (!\Mult0|mult_core|decoder_node[1][11]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (!\Mult0|mult_core|decoder_node[0][12]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][11]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][12]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X29_Y33_N22
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\ = ((\Mult0|mult_core|decoder_node[2][10]~combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~31\ = CARRY((\Mult0|mult_core|decoder_node[2][10]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28\))) # (!\Mult0|mult_core|decoder_node[2][10]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[2][10]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~28\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~31\);

-- Location: LCCOMB_X30_Y33_N22
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~32_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~30_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~32_combout\);

-- Location: LCCOMB_X25_Y33_N18
\Mult0|mult_core|decoder_node[0][13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][13]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~26_combout\,
	combout => \Mult0|mult_core|decoder_node[0][13]~combout\);

-- Location: LCCOMB_X28_Y33_N26
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ = ((\Mult0|mult_core|decoder_node[1][12]~combout\ $ (\Mult0|mult_core|decoder_node[0][13]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\ = CARRY((\Mult0|mult_core|decoder_node[1][12]~combout\ & ((\Mult0|mult_core|decoder_node[0][13]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\))) # 
-- (!\Mult0|mult_core|decoder_node[1][12]~combout\ & (\Mult0|mult_core|decoder_node[0][13]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][12]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][13]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\);

-- Location: LCCOMB_X29_Y33_N24
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~33_combout\ = (\Mult0|mult_core|decoder_node[2][11]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~31\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~31\)))) # 
-- (!\Mult0|mult_core|decoder_node[2][11]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~31\)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~31\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~34\ = CARRY((\Mult0|mult_core|decoder_node[2][11]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~31\)) # (!\Mult0|mult_core|decoder_node[2][11]~combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~31\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[2][11]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~31\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~33_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~34\);

-- Location: LCCOMB_X30_Y33_N28
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~35_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~33_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~33_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~35_combout\);

-- Location: LCCOMB_X21_Y33_N10
\Mult0|mult_core|decoder_node[0][14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][14]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~28_combout\,
	combout => \Mult0|mult_core|decoder_node[0][14]~combout\);

-- Location: LCCOMB_X28_Y33_N28
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ = (\Mult0|mult_core|decoder_node[1][13]~combout\ & ((\Mult0|mult_core|decoder_node[0][14]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[0][14]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\)))) # (!\Mult0|mult_core|decoder_node[1][13]~combout\ & ((\Mult0|mult_core|decoder_node[0][14]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\)) # (!\Mult0|mult_core|decoder_node[0][14]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~27\ = CARRY((\Mult0|mult_core|decoder_node[1][13]~combout\ & (!\Mult0|mult_core|decoder_node[0][14]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\)) # 
-- (!\Mult0|mult_core|decoder_node[1][13]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\) # (!\Mult0|mult_core|decoder_node[0][14]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][13]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][14]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~27\);

-- Location: LCCOMB_X29_Y33_N26
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~36_combout\ = ((\Mult0|mult_core|decoder_node[2][12]~combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~34\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~37\ = CARRY((\Mult0|mult_core|decoder_node[2][12]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~34\))) # (!\Mult0|mult_core|decoder_node[2][12]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[2][12]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~34\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~36_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~37\);

-- Location: LCCOMB_X30_Y33_N2
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~38_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~36_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~36_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~38_combout\);

-- Location: LCCOMB_X25_Y33_N14
\Mult0|mult_core|decoder_node[2][13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][13]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~26_combout\,
	combout => \Mult0|mult_core|decoder_node[2][13]~combout\);

-- Location: LCCOMB_X29_Y33_N28
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~39_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ & ((\Mult0|mult_core|decoder_node[2][13]~combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~37\ & VCC)) # (!\Mult0|mult_core|decoder_node[2][13]~combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~37\)))) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ & ((\Mult0|mult_core|decoder_node[2][13]~combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~37\)) # (!\Mult0|mult_core|decoder_node[2][13]~combout\ & 
-- ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~37\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~40\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ & (!\Mult0|mult_core|decoder_node[2][13]~combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~37\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~37\) # 
-- (!\Mult0|mult_core|decoder_node[2][13]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~28_combout\,
	datab => \Mult0|mult_core|decoder_node[2][13]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~37\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~39_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~40\);

-- Location: LCCOMB_X30_Y33_N20
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~41_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~39_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~39_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~41_combout\);

-- Location: LCCOMB_X21_Y33_N14
\Mult0|mult_core|decoder_node[2][14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][14]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~28_combout\,
	combout => \Mult0|mult_core|decoder_node[2][14]~combout\);

-- Location: LCCOMB_X29_Y33_N30
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~42_combout\ = ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~30_combout\ $ (\Mult0|mult_core|decoder_node[2][14]~combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~40\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~43\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~30_combout\ & ((\Mult0|mult_core|decoder_node[2][14]~combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~40\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~30_combout\ & (\Mult0|mult_core|decoder_node[2][14]~combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~30_combout\,
	datab => \Mult0|mult_core|decoder_node[2][14]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~40\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~42_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~43\);

-- Location: LCCOMB_X30_Y33_N6
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~44_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~42_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~42_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~44_combout\);

-- Location: LCCOMB_X27_Y33_N2
\Mult0|mult_core|decoder_node[2][15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][15]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VALOR_GRAO(2),
	datad => \Add0~30_combout\,
	combout => \Mult0|mult_core|decoder_node[2][15]~combout\);

-- Location: LCCOMB_X29_Y32_N0
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~45_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~32_combout\ & ((\Mult0|mult_core|decoder_node[2][15]~combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~43\ & VCC)) # (!\Mult0|mult_core|decoder_node[2][15]~combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~43\)))) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~32_combout\ & ((\Mult0|mult_core|decoder_node[2][15]~combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~43\)) # (!\Mult0|mult_core|decoder_node[2][15]~combout\ & 
-- ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~43\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~46\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~32_combout\ & (!\Mult0|mult_core|decoder_node[2][15]~combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~43\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~32_combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~43\) # 
-- (!\Mult0|mult_core|decoder_node[2][15]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~32_combout\,
	datab => \Mult0|mult_core|decoder_node[2][15]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~43\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~45_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~46\);

-- Location: LCCOMB_X30_Y32_N28
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~47_combout\ = (\estado_atual.PESAGEM_FINAL~regout\ & \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual.PESAGEM_FINAL~regout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~45_combout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~47_combout\);

-- Location: LCCOMB_X27_Y32_N22
\Mult0|mult_core|decoder_node[1][17]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][17]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VALOR_GRAO(1),
	datad => \Add0~34_combout\,
	combout => \Mult0|mult_core|decoder_node[1][17]~combout\);

-- Location: LCCOMB_X27_Y32_N4
\Mult0|mult_core|decoder_node[0][17]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][17]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VALOR_GRAO(0),
	datad => \Add0~34_combout\,
	combout => \Mult0|mult_core|decoder_node[0][17]~combout\);

-- Location: LCCOMB_X27_Y32_N16
\Mult0|mult_core|decoder_node[0][16]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][16]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~32_combout\,
	combout => \Mult0|mult_core|decoder_node[0][16]~combout\);

-- Location: LCCOMB_X21_Y33_N4
\Mult0|mult_core|decoder_node[1][14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][14]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~28_combout\,
	combout => \Mult0|mult_core|decoder_node[1][14]~combout\);

-- Location: LCCOMB_X28_Y32_N4
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~34_combout\ = (\Mult0|mult_core|decoder_node[0][18]~combout\ & ((\Mult0|mult_core|decoder_node[1][17]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~33\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[1][17]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~33\)))) # (!\Mult0|mult_core|decoder_node[0][18]~combout\ & ((\Mult0|mult_core|decoder_node[1][17]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~33\)) # (!\Mult0|mult_core|decoder_node[1][17]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~33\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~35\ = CARRY((\Mult0|mult_core|decoder_node[0][18]~combout\ & (!\Mult0|mult_core|decoder_node[1][17]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~33\)) # 
-- (!\Mult0|mult_core|decoder_node[0][18]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~33\) # (!\Mult0|mult_core|decoder_node[1][17]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][18]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][17]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~33\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~34_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~35\);

-- Location: LCCOMB_X29_Y32_N2
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~48_combout\ = ((\Mult0|mult_core|decoder_node[2][16]~combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~34_combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~46\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~49\ = CARRY((\Mult0|mult_core|decoder_node[2][16]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~34_combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~46\))) # (!\Mult0|mult_core|decoder_node[2][16]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~34_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[2][16]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~34_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~46\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~48_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~49\);

-- Location: LCCOMB_X28_Y32_N30
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~50_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~48_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~48_combout\,
	datac => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~50_combout\);

-- Location: LCCOMB_X27_Y32_N28
\Mult0|mult_core|decoder_node[1][18]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][18]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~36_combout\,
	combout => \Mult0|mult_core|decoder_node[1][18]~combout\);

-- Location: LCCOMB_X28_Y32_N6
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~36_combout\ = ((\Mult0|mult_core|decoder_node[0][19]~combout\ $ (\Mult0|mult_core|decoder_node[1][18]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~35\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~37\ = CARRY((\Mult0|mult_core|decoder_node[0][19]~combout\ & ((\Mult0|mult_core|decoder_node[1][18]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~35\))) # 
-- (!\Mult0|mult_core|decoder_node[0][19]~combout\ & (\Mult0|mult_core|decoder_node[1][18]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][19]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][18]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~35\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~36_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~37\);

-- Location: LCCOMB_X29_Y32_N4
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~51_combout\ = (\Mult0|mult_core|decoder_node[2][17]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~36_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~49\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~36_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~49\)))) # 
-- (!\Mult0|mult_core|decoder_node[2][17]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~36_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~49\)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~36_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~49\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~52\ = CARRY((\Mult0|mult_core|decoder_node[2][17]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~36_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~49\)) # (!\Mult0|mult_core|decoder_node[2][17]~combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~49\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[2][17]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~36_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~49\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~51_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~52\);

-- Location: LCCOMB_X30_Y33_N12
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~53_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~51_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~51_combout\,
	datad => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~53_combout\);

-- Location: LCCOMB_X27_Y32_N24
\Mult0|mult_core|decoder_node[2][18]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][18]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~36_combout\,
	combout => \Mult0|mult_core|decoder_node[2][18]~combout\);

-- Location: LCCOMB_X29_Y32_N6
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~54_combout\ = ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~38_combout\ $ (\Mult0|mult_core|decoder_node[2][18]~combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~52\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~55\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~38_combout\ & ((\Mult0|mult_core|decoder_node[2][18]~combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~52\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~38_combout\ & (\Mult0|mult_core|decoder_node[2][18]~combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~38_combout\,
	datab => \Mult0|mult_core|decoder_node[2][18]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~52\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~54_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~55\);

-- Location: LCCOMB_X30_Y32_N26
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~56_combout\ = (\estado_atual.PESAGEM_FINAL~regout\ & \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual.PESAGEM_FINAL~regout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~54_combout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~56_combout\);

-- Location: LCCOMB_X27_Y32_N20
\Mult0|mult_core|decoder_node[2][19]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][19]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~38_combout\,
	combout => \Mult0|mult_core|decoder_node[2][19]~combout\);

-- Location: LCCOMB_X29_Y32_N8
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~57_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~40_combout\ & ((\Mult0|mult_core|decoder_node[2][19]~combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~55\ & VCC)) # (!\Mult0|mult_core|decoder_node[2][19]~combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~55\)))) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~40_combout\ & ((\Mult0|mult_core|decoder_node[2][19]~combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~55\)) # (!\Mult0|mult_core|decoder_node[2][19]~combout\ & 
-- ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~55\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~58\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~40_combout\ & (!\Mult0|mult_core|decoder_node[2][19]~combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~55\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~40_combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~55\) # 
-- (!\Mult0|mult_core|decoder_node[2][19]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~40_combout\,
	datab => \Mult0|mult_core|decoder_node[2][19]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~55\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~57_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~58\);

-- Location: LCCOMB_X30_Y32_N16
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~59_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~57_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~57_combout\,
	datac => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~59_combout\);

-- Location: LCCOMB_X27_Y32_N6
\Mult0|mult_core|decoder_node[2][20]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][20]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~40_combout\,
	combout => \Mult0|mult_core|decoder_node[2][20]~combout\);

-- Location: LCCOMB_X29_Y32_N10
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~60_combout\ = ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~42_combout\ $ (\Mult0|mult_core|decoder_node[2][20]~combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~58\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~61\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~42_combout\ & ((\Mult0|mult_core|decoder_node[2][20]~combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~58\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~42_combout\ & (\Mult0|mult_core|decoder_node[2][20]~combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~42_combout\,
	datab => \Mult0|mult_core|decoder_node[2][20]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~58\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~60_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~61\);

-- Location: LCCOMB_X30_Y32_N22
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~62_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~60_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~60_combout\,
	datac => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~62_combout\);

-- Location: LCCOMB_X24_Y32_N18
\Mult0|mult_core|decoder_node[2][21]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][21]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~42_combout\,
	combout => \Mult0|mult_core|decoder_node[2][21]~combout\);

-- Location: LCCOMB_X29_Y32_N12
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~63_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~44_combout\ & ((\Mult0|mult_core|decoder_node[2][21]~combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~61\ & VCC)) # (!\Mult0|mult_core|decoder_node[2][21]~combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~61\)))) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~44_combout\ & ((\Mult0|mult_core|decoder_node[2][21]~combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~61\)) # (!\Mult0|mult_core|decoder_node[2][21]~combout\ & 
-- ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~61\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~64\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~44_combout\ & (!\Mult0|mult_core|decoder_node[2][21]~combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~61\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~44_combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~61\) # 
-- (!\Mult0|mult_core|decoder_node[2][21]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~44_combout\,
	datab => \Mult0|mult_core|decoder_node[2][21]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~61\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~63_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~64\);

-- Location: LCCOMB_X30_Y32_N0
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~65_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~63_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~63_combout\,
	datac => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~65_combout\);

-- Location: LCCOMB_X24_Y32_N30
\Mult0|mult_core|decoder_node[1][23]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][23]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~46_combout\,
	combout => \Mult0|mult_core|decoder_node[1][23]~combout\);

-- Location: LCCOMB_X24_Y32_N10
\Mult0|mult_core|decoder_node[0][23]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][23]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~46_combout\,
	combout => \Mult0|mult_core|decoder_node[0][23]~combout\);

-- Location: LCCOMB_X24_Y32_N2
\Mult0|mult_core|decoder_node[0][22]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][22]~combout\ = LCELL((\Add0~44_combout\ & VALOR_GRAO(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datac => VALOR_GRAO(0),
	combout => \Mult0|mult_core|decoder_node[0][22]~combout\);

-- Location: LCCOMB_X24_Y32_N24
\Mult0|mult_core|decoder_node[0][21]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][21]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(0),
	datad => \Add0~42_combout\,
	combout => \Mult0|mult_core|decoder_node[0][21]~combout\);

-- Location: LCCOMB_X27_Y32_N26
\Mult0|mult_core|decoder_node[1][19]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][19]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~38_combout\,
	combout => \Mult0|mult_core|decoder_node[1][19]~combout\);

-- Location: LCCOMB_X28_Y32_N16
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~46_combout\ = (\Mult0|mult_core|decoder_node[0][24]~combout\ & ((\Mult0|mult_core|decoder_node[1][23]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~45\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[1][23]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~45\)))) # (!\Mult0|mult_core|decoder_node[0][24]~combout\ & ((\Mult0|mult_core|decoder_node[1][23]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~45\)) # (!\Mult0|mult_core|decoder_node[1][23]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~45\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~47\ = CARRY((\Mult0|mult_core|decoder_node[0][24]~combout\ & (!\Mult0|mult_core|decoder_node[1][23]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~45\)) # 
-- (!\Mult0|mult_core|decoder_node[0][24]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~45\) # (!\Mult0|mult_core|decoder_node[1][23]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[0][24]~combout\,
	datab => \Mult0|mult_core|decoder_node[1][23]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~45\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~46_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~47\);

-- Location: LCCOMB_X29_Y32_N14
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~66_combout\ = ((\Mult0|mult_core|decoder_node[2][22]~combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~46_combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~64\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~67\ = CARRY((\Mult0|mult_core|decoder_node[2][22]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~46_combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~64\))) # (!\Mult0|mult_core|decoder_node[2][22]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~46_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[2][22]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~46_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~64\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~66_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~67\);

-- Location: LCCOMB_X30_Y32_N2
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~68_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~66_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~66_combout\,
	datac => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~68_combout\);

-- Location: LCCOMB_X25_Y32_N12
\Mult0|mult_core|decoder_node[0][25]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][25]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VALOR_GRAO(0),
	datad => \Add0~50_combout\,
	combout => \Mult0|mult_core|decoder_node[0][25]~combout\);

-- Location: LCCOMB_X28_Y32_N18
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~48_combout\ = ((\Mult0|mult_core|decoder_node[1][24]~combout\ $ (\Mult0|mult_core|decoder_node[0][25]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~47\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~49\ = CARRY((\Mult0|mult_core|decoder_node[1][24]~combout\ & ((\Mult0|mult_core|decoder_node[0][25]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~47\))) # 
-- (!\Mult0|mult_core|decoder_node[1][24]~combout\ & (\Mult0|mult_core|decoder_node[0][25]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][24]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][25]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~47\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~48_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~49\);

-- Location: LCCOMB_X29_Y32_N16
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~69_combout\ = (\Mult0|mult_core|decoder_node[2][23]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~48_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~67\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~48_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~67\)))) # 
-- (!\Mult0|mult_core|decoder_node[2][23]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~48_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~67\)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~48_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~67\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~70\ = CARRY((\Mult0|mult_core|decoder_node[2][23]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~48_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~67\)) # (!\Mult0|mult_core|decoder_node[2][23]~combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~67\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[2][23]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~48_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~67\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~69_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~70\);

-- Location: LCCOMB_X30_Y32_N24
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~71_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~69_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~69_combout\,
	datac => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~71_combout\);

-- Location: LCCOMB_X24_Y32_N4
\Mult0|mult_core|decoder_node[2][24]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[2][24]~combout\ = LCELL((VALOR_GRAO(2) & \Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(2),
	datad => \Add0~48_combout\,
	combout => \Mult0|mult_core|decoder_node[2][24]~combout\);

-- Location: LCCOMB_X29_Y32_N18
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~72_combout\ = ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~50_combout\ $ (\Mult0|mult_core|decoder_node[2][24]~combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~70\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~73\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~50_combout\ & ((\Mult0|mult_core|decoder_node[2][24]~combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~70\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~50_combout\ & (\Mult0|mult_core|decoder_node[2][24]~combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~50_combout\,
	datab => \Mult0|mult_core|decoder_node[2][24]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~70\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~72_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~73\);

-- Location: LCCOMB_X30_Y32_N18
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~74_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~72_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~72_combout\,
	datac => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~74_combout\);

-- Location: LCCOMB_X25_Y32_N2
\Mult0|mult_core|decoder_node[0][27]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][27]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VALOR_GRAO(0),
	datad => \Add0~54_combout\,
	combout => \Mult0|mult_core|decoder_node[0][27]~combout\);

-- Location: LCCOMB_X25_Y32_N8
\Mult0|mult_core|decoder_node[1][25]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[1][25]~combout\ = LCELL((VALOR_GRAO(1) & \Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => VALOR_GRAO(1),
	datad => \Add0~50_combout\,
	combout => \Mult0|mult_core|decoder_node[1][25]~combout\);

-- Location: LCCOMB_X28_Y32_N22
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~52_combout\ = ((\Mult0|mult_core|decoder_node[1][26]~combout\ $ (\Mult0|mult_core|decoder_node[0][27]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~51\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~53\ = CARRY((\Mult0|mult_core|decoder_node[1][26]~combout\ & ((\Mult0|mult_core|decoder_node[0][27]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~51\))) # 
-- (!\Mult0|mult_core|decoder_node[1][26]~combout\ & (\Mult0|mult_core|decoder_node[0][27]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][26]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][27]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~51\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~52_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~53\);

-- Location: LCCOMB_X29_Y32_N20
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~75_combout\ = (\Mult0|mult_core|decoder_node[2][25]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~52_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~73\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~52_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~73\)))) # 
-- (!\Mult0|mult_core|decoder_node[2][25]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~52_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~73\)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~52_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~73\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~76\ = CARRY((\Mult0|mult_core|decoder_node[2][25]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~52_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~73\)) # (!\Mult0|mult_core|decoder_node[2][25]~combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~73\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[2][25]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~52_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~73\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~75_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~76\);

-- Location: LCCOMB_X30_Y32_N8
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~77_combout\ = (\estado_atual.PESAGEM_FINAL~regout\ & \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual.PESAGEM_FINAL~regout\,
	datac => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~75_combout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~77_combout\);

-- Location: LCCOMB_X25_Y32_N16
\Mult0|mult_core|decoder_node[0][28]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|decoder_node[0][28]~combout\ = LCELL((VALOR_GRAO(0) & \Add0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VALOR_GRAO(0),
	datad => \Add0~56_combout\,
	combout => \Mult0|mult_core|decoder_node[0][28]~combout\);

-- Location: LCCOMB_X28_Y32_N24
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~54_combout\ = (\Mult0|mult_core|decoder_node[1][27]~combout\ & ((\Mult0|mult_core|decoder_node[0][28]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~53\ & VCC)) # 
-- (!\Mult0|mult_core|decoder_node[0][28]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~53\)))) # (!\Mult0|mult_core|decoder_node[1][27]~combout\ & ((\Mult0|mult_core|decoder_node[0][28]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~53\)) # (!\Mult0|mult_core|decoder_node[0][28]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~53\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~55\ = CARRY((\Mult0|mult_core|decoder_node[1][27]~combout\ & (!\Mult0|mult_core|decoder_node[0][28]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~53\)) # 
-- (!\Mult0|mult_core|decoder_node[1][27]~combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~53\) # (!\Mult0|mult_core|decoder_node[0][28]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][27]~combout\,
	datab => \Mult0|mult_core|decoder_node[0][28]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~53\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~54_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~55\);

-- Location: LCCOMB_X29_Y32_N22
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~78_combout\ = ((\Mult0|mult_core|decoder_node[2][26]~combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~54_combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~76\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~79\ = CARRY((\Mult0|mult_core|decoder_node[2][26]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~54_combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~76\))) # (!\Mult0|mult_core|decoder_node[2][26]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~54_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[2][26]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~54_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~76\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~78_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~79\);

-- Location: LCCOMB_X30_Y32_N30
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~80_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~78_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~78_combout\,
	datac => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~80_combout\);

-- Location: LCCOMB_X28_Y32_N26
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~56_combout\ = (\Mult0|mult_core|decoder_node[1][28]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~55\ $ (GND))) # (!\Mult0|mult_core|decoder_node[1][28]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~55\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~57\ = CARRY((\Mult0|mult_core|decoder_node[1][28]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[1][28]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~55\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~56_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~57\);

-- Location: LCCOMB_X29_Y32_N24
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~81_combout\ = (\Mult0|mult_core|decoder_node[2][27]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~56_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~79\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~56_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~79\)))) # 
-- (!\Mult0|mult_core|decoder_node[2][27]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~56_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~79\)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~56_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~79\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~82\ = CARRY((\Mult0|mult_core|decoder_node[2][27]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~56_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~79\)) # (!\Mult0|mult_core|decoder_node[2][27]~combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~79\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[2][27]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~56_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~79\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~81_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~82\);

-- Location: LCCOMB_X30_Y32_N12
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~83_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~81_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~81_combout\,
	datac => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~83_combout\);

-- Location: LCCOMB_X28_Y32_N28
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~58_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~57\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~57\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~58_combout\);

-- Location: LCCOMB_X29_Y32_N26
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~84_combout\ = ((\Mult0|mult_core|decoder_node[2][28]~combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~58_combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~82\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~85\ = CARRY((\Mult0|mult_core|decoder_node[2][28]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~58_combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~82\))) # (!\Mult0|mult_core|decoder_node[2][28]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~58_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~82\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|decoder_node[2][28]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~58_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~82\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~84_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~85\);

-- Location: LCCOMB_X30_Y32_N10
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~86_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~84_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~84_combout\,
	datac => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~86_combout\);

-- Location: LCCOMB_X29_Y32_N28
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~87_combout\ = \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~85\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~85\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~87_combout\);

-- Location: LCCOMB_X30_Y32_N20
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~89_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~87_combout\ & \estado_atual.PESAGEM_FINAL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~87_combout\,
	datac => \estado_atual.PESAGEM_FINAL~regout\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~89_combout\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LOCAL_SILO[0]~I\ : cycloneii_io
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
	datain => \LOCAL_SILO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LOCAL_SILO(0));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LOCAL_SILO[1]~I\ : cycloneii_io
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
	datain => \LOCAL_SILO~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LOCAL_SILO(1));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LAMPADA_VAGA_SOJA~I\ : cycloneii_io
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
	datain => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LAMPADA_VAGA_SOJA);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LAMPADA_VAGA_ARROZ~I\ : cycloneii_io
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
	datain => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LAMPADA_VAGA_ARROZ);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LAMPADA_VAGA_FEIJAO~I\ : cycloneii_io
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
	datain => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LAMPADA_VAGA_FEIJAO);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MOTOR_ESCOTILHA_SOJA[0]~I\ : cycloneii_io
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
	datain => \estado_atual.ENTRA_SILO_SOJA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MOTOR_ESCOTILHA_SOJA(0));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MOTOR_ESCOTILHA_SOJA[1]~I\ : cycloneii_io
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
	datain => \estado_atual.SAI_SILO_SOJA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MOTOR_ESCOTILHA_SOJA(1));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MOTOR_ESCOTILHA_ARROZ[0]~I\ : cycloneii_io
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
	datain => \estado_atual.ENTRA_SILO_ARROZ~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MOTOR_ESCOTILHA_ARROZ(0));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MOTOR_ESCOTILHA_ARROZ[1]~I\ : cycloneii_io
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
	datain => \estado_atual.SAI_SILO_ARROZ~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MOTOR_ESCOTILHA_ARROZ(1));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MOTOR_ESCOTILHA_FEIJAO[0]~I\ : cycloneii_io
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
	datain => \estado_atual.ENTRA_SILO_FEIJAO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MOTOR_ESCOTILHA_FEIJAO(0));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MOTOR_ESCOTILHA_FEIJAO[1]~I\ : cycloneii_io
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
	datain => \estado_atual.SAI_SILO_FEIJAO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MOTOR_ESCOTILHA_FEIJAO(1));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[0]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(0));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[1]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(1));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[2]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(2));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[3]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(3));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[4]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(4));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[5]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(5));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[6]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(6));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[7]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(7));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[8]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(8));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[9]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(9));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[10]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(10));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[11]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(11));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[12]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(12));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[13]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(13));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[14]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(14));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[15]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(15));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[16]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(16));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[17]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(17));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[18]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(18));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[19]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(19));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[20]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(20));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[21]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(21));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[22]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(22));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[23]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(23));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[24]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(24));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[25]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(25));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[26]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(26));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[27]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(27));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PESO_CARGA[28]~I\ : cycloneii_io
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
	datain => \PESO_CARGA~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PESO_CARGA(28));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[0]~I\ : cycloneii_io
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
	datain => \VALOR_CARGA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(0));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[1]~I\ : cycloneii_io
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
	datain => \VALOR_CARGA~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(1));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[2]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[3]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(3));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[4]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(4));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[5]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(5));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[6]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(6));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[7]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(7));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[8]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(8));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[9]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(9));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[10]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(10));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[11]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(11));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[12]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(12));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[13]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(13));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[14]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(14));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[15]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(15));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[16]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(16));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[17]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(17));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[18]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(18));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[19]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(19));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[20]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(20));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[21]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(21));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[22]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(22));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[23]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(23));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[24]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(24));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[25]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(25));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[26]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(26));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[27]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(27));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[28]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(28));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[29]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(29));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[30]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(30));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VALOR_CARGA[31]~I\ : cycloneii_io
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
	datain => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VALOR_CARGA(31));
END structure;


