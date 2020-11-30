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

-- DATE "09/18/2020 21:31:22"

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

ENTITY 	pseudo_mux IS
    PORT (
	RESET : IN std_logic;
	CLOCK : IN std_logic;
	S : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Q : OUT std_logic
	);
END pseudo_mux;

-- Design Ports Information
-- Q	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RESET	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- D	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF pseudo_mux IS
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
SIGNAL ww_S : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL \CLOCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK~combout\ : std_logic;
SIGNAL \CLOCK~clkctrl_outclk\ : std_logic;
SIGNAL \A~combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \state_final~1_combout\ : std_logic;
SIGNAL \S~combout\ : std_logic;
SIGNAL \B~combout\ : std_logic;
SIGNAL \state_final~5_combout\ : std_logic;
SIGNAL \State~13_combout\ : std_logic;
SIGNAL \State.SA~regout\ : std_logic;
SIGNAL \State.SB~0_combout\ : std_logic;
SIGNAL \State.SB~regout\ : std_logic;
SIGNAL \State.SC~regout\ : std_logic;
SIGNAL \State~12_combout\ : std_logic;
SIGNAL \State.SD~regout\ : std_logic;
SIGNAL \state_final~7_combout\ : std_logic;
SIGNAL \state_final~6_combout\ : std_logic;
SIGNAL \C~combout\ : std_logic;
SIGNAL \D~combout\ : std_logic;
SIGNAL \state_final~8_combout\ : std_logic;
SIGNAL \state_final~9_combout\ : std_logic;
SIGNAL \state_final~10_combout\ : std_logic;
SIGNAL \state_final~3_combout\ : std_logic;
SIGNAL \state_final~_emulated_regout\ : std_logic;
SIGNAL \state_final~2_combout\ : std_logic;

BEGIN

ww_RESET <= RESET;
ww_CLOCK <= CLOCK;
ww_S <= S;
ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK~combout\);

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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_A,
	combout => \A~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X30_Y35_N4
\state_final~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_final~1_combout\ = (\RESET~combout\ & (\A~combout\)) # (!\RESET~combout\ & ((\state_final~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\,
	datac => \state_final~1_combout\,
	datad => \RESET~combout\,
	combout => \state_final~1_combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_S,
	combout => \S~combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_B,
	combout => \B~combout\);

-- Location: LCCOMB_X30_Y35_N8
\state_final~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_final~5_combout\ = (\S~combout\ & (\B~combout\)) # (!\S~combout\ & ((\state_final~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~combout\,
	datac => \B~combout\,
	datad => \state_final~2_combout\,
	combout => \state_final~5_combout\);

-- Location: LCCOMB_X30_Y35_N22
\State~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \State~13_combout\ = (\State.SA~regout\ & (!\state_final~6_combout\)) # (!\State.SA~regout\ & ((\S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_final~6_combout\,
	datab => \S~combout\,
	datac => \State.SA~regout\,
	combout => \State~13_combout\);

-- Location: LCFF_X30_Y35_N23
\State.SA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \State~13_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \State.SA~regout\);

-- Location: LCCOMB_X30_Y35_N12
\State.SB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \State.SB~0_combout\ = !\State.SA~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.SA~regout\,
	combout => \State.SB~0_combout\);

-- Location: LCFF_X30_Y35_N13
\State.SB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \State.SB~0_combout\,
	aclr => \RESET~combout\,
	ena => \S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \State.SB~regout\);

-- Location: LCFF_X30_Y35_N31
\State.SC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \State.SB~regout\,
	aclr => \RESET~combout\,
	sload => VCC,
	ena => \S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \State.SC~regout\);

-- Location: LCCOMB_X30_Y35_N26
\State~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \State~12_combout\ = (\State.SA~regout\ & \State.SC~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.SA~regout\,
	datad => \State.SC~regout\,
	combout => \State~12_combout\);

-- Location: LCFF_X30_Y35_N27
\State.SD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \State~12_combout\,
	aclr => \RESET~combout\,
	ena => \S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \State.SD~regout\);

-- Location: LCCOMB_X30_Y35_N14
\state_final~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_final~7_combout\ = (\State.SB~regout\) # ((\State.SC~regout\) # ((!\S~combout\ & \State.SD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\,
	datab => \State.SD~regout\,
	datac => \State.SB~regout\,
	datad => \State.SC~regout\,
	combout => \state_final~7_combout\);

-- Location: LCCOMB_X30_Y35_N20
\state_final~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_final~6_combout\ = (!\State.SB~regout\ & (!\State.SC~regout\ & ((\S~combout\) # (!\State.SD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\,
	datab => \State.SD~regout\,
	datac => \State.SB~regout\,
	datad => \State.SC~regout\,
	combout => \state_final~6_combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_C,
	combout => \C~combout\);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_D,
	combout => \D~combout\);

-- Location: LCCOMB_X30_Y35_N24
\state_final~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_final~8_combout\ = (\State.SB~regout\ & (\C~combout\)) # (!\State.SB~regout\ & ((\D~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~combout\,
	datac => \D~combout\,
	datad => \State.SB~regout\,
	combout => \state_final~8_combout\);

-- Location: LCCOMB_X30_Y35_N2
\state_final~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_final~9_combout\ = (\S~combout\ & (\state_final~8_combout\)) # (!\S~combout\ & ((\state_final~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~combout\,
	datac => \state_final~8_combout\,
	datad => \state_final~2_combout\,
	combout => \state_final~9_combout\);

-- Location: LCCOMB_X30_Y35_N28
\state_final~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_final~10_combout\ = (\A~combout\ & ((\state_final~6_combout\) # ((\state_final~7_combout\ & \state_final~9_combout\)))) # (!\A~combout\ & (\state_final~7_combout\ & ((\state_final~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\,
	datab => \state_final~7_combout\,
	datac => \state_final~6_combout\,
	datad => \state_final~9_combout\,
	combout => \state_final~10_combout\);

-- Location: LCCOMB_X30_Y35_N0
\state_final~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_final~3_combout\ = \state_final~1_combout\ $ (((\State.SA~regout\ & ((\state_final~10_combout\))) # (!\State.SA~regout\ & (\state_final~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.SA~regout\,
	datab => \state_final~5_combout\,
	datac => \state_final~1_combout\,
	datad => \state_final~10_combout\,
	combout => \state_final~3_combout\);

-- Location: LCFF_X30_Y35_N1
\state_final~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \state_final~3_combout\,
	aclr => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_final~_emulated_regout\);

-- Location: LCCOMB_X30_Y35_N18
\state_final~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_final~2_combout\ = (\RESET~combout\ & (\A~combout\)) # (!\RESET~combout\ & ((\state_final~1_combout\ $ (\state_final~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\,
	datab => \RESET~combout\,
	datac => \state_final~1_combout\,
	datad => \state_final~_emulated_regout\,
	combout => \state_final~2_combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \state_final~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q);
END structure;


