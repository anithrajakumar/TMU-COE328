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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "11/26/2024 14:54:38"

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

ENTITY 	combined IS
    PORT (
	current_state : OUT std_logic_vector(1 TO 7);
	data_in : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	student_id : OUT std_logic_vector(1 TO 7)
	);
END combined;

-- Design Ports Information
-- current_state[1]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- current_state[2]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- current_state[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- current_state[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- current_state[5]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- current_state[6]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- current_state[7]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[1]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[2]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[3]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[4]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[5]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[6]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[7]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_in	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF combined IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_current_state : std_logic_vector(1 TO 7);
SIGNAL ww_data_in : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_student_id : std_logic_vector(1 TO 7);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \data_in~combout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \inst|yfsm.s2~regout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s0~regout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s5~regout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s4~regout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s1~regout\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s7~regout\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s6~regout\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s3~regout\ : std_logic;
SIGNAL \inst|WideOr0~combout\ : std_logic;
SIGNAL \inst|WideOr1~combout\ : std_logic;
SIGNAL \inst|WideOr2~combout\ : std_logic;
SIGNAL \inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|Mux6~0_combout\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|WideOr3~combout\ : std_logic;
SIGNAL \inst5|Mux0~4_combout\ : std_logic;
SIGNAL \inst5|Mux1~4_combout\ : std_logic;
SIGNAL \inst5|Mux2~4_combout\ : std_logic;
SIGNAL \inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~3_combout\ : std_logic;
SIGNAL \inst5|Mux4~12_combout\ : std_logic;
SIGNAL \inst5|Mux5~4_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

current_state <= ww_current_state;
ww_data_in <= data_in;
ww_clk <= clk;
ww_reset <= reset;
student_id <= ww_student_id;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~clk_delay_ctrl_clkout\);
\inst5|ALT_INV_Mux6~0_combout\ <= NOT \inst5|Mux6~0_combout\;
\inst6|ALT_INV_Mux5~0_combout\ <= NOT \inst6|Mux5~0_combout\;

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKDELAYCTRL_G7
\clk~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \clk~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G7
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_data_in,
	combout => \data_in~combout\);

-- Location: LCCOMB_X33_Y4_N10
\inst|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\data_in~combout\ & ((\inst|yfsm.s3~regout\))) # (!\data_in~combout\ & (\inst|yfsm.s2~regout\ & !\inst|yfsm.s3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\,
	datac => \inst|yfsm.s2~regout\,
	datad => \inst|yfsm.s3~regout\,
	combout => \inst|Selector2~0_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCFF_X33_Y4_N11
\inst|yfsm.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Selector2~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s2~regout\);

-- Location: LCCOMB_X33_Y4_N22
\inst|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\data_in~combout\ & ((!\inst|yfsm.s2~regout\))) # (!\data_in~combout\ & ((\inst|yfsm.s0~regout\) # (\inst|yfsm.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\,
	datac => \inst|yfsm.s0~regout\,
	datad => \inst|yfsm.s2~regout\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCFF_X33_Y4_N23
\inst|yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Selector0~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s0~regout\);

-- Location: LCCOMB_X33_Y4_N0
\inst|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (\data_in~combout\ & ((!\inst|yfsm.s0~regout\))) # (!\data_in~combout\ & (\inst|yfsm.s5~regout\ & \inst|yfsm.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\,
	datac => \inst|yfsm.s5~regout\,
	datad => \inst|yfsm.s0~regout\,
	combout => \inst|Selector5~0_combout\);

-- Location: LCFF_X33_Y4_N1
\inst|yfsm.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Selector5~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s5~regout\);

-- Location: LCCOMB_X33_Y4_N8
\inst|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\data_in~combout\ & ((\inst|yfsm.s5~regout\))) # (!\data_in~combout\ & (\inst|yfsm.s4~regout\ & !\inst|yfsm.s5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\,
	datac => \inst|yfsm.s4~regout\,
	datad => \inst|yfsm.s5~regout\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCFF_X33_Y4_N9
\inst|yfsm.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Selector4~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s4~regout\);

-- Location: LCCOMB_X33_Y4_N26
\inst|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\data_in~combout\ & ((\inst|yfsm.s4~regout\))) # (!\data_in~combout\ & (\inst|yfsm.s1~regout\ & !\inst|yfsm.s4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\,
	datac => \inst|yfsm.s1~regout\,
	datad => \inst|yfsm.s4~regout\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCFF_X33_Y4_N27
\inst|yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Selector1~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s1~regout\);

-- Location: LCCOMB_X33_Y4_N28
\inst|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (\data_in~combout\ & ((\inst|yfsm.s1~regout\))) # (!\data_in~combout\ & (\inst|yfsm.s7~regout\ & !\inst|yfsm.s1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\,
	datac => \inst|yfsm.s7~regout\,
	datad => \inst|yfsm.s1~regout\,
	combout => \inst|Selector7~0_combout\);

-- Location: LCFF_X33_Y4_N29
\inst|yfsm.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Selector7~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s7~regout\);

-- Location: LCCOMB_X33_Y4_N24
\inst|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\data_in~combout\ & ((\inst|yfsm.s7~regout\))) # (!\data_in~combout\ & (\inst|yfsm.s6~regout\ & !\inst|yfsm.s7~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\,
	datac => \inst|yfsm.s6~regout\,
	datad => \inst|yfsm.s7~regout\,
	combout => \inst|Selector6~0_combout\);

-- Location: LCFF_X33_Y4_N25
\inst|yfsm.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Selector6~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s6~regout\);

-- Location: LCCOMB_X33_Y4_N12
\inst|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\data_in~combout\ & ((\inst|yfsm.s6~regout\))) # (!\data_in~combout\ & (\inst|yfsm.s3~regout\ & !\inst|yfsm.s6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\,
	datac => \inst|yfsm.s3~regout\,
	datad => \inst|yfsm.s6~regout\,
	combout => \inst|Selector3~0_combout\);

-- Location: LCFF_X33_Y4_N13
\inst|yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Selector3~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s3~regout\);

-- Location: LCCOMB_X33_Y4_N2
\inst|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr0~combout\ = (\inst|yfsm.s1~regout\) # ((\inst|yfsm.s3~regout\) # ((\inst|yfsm.s2~regout\) # (!\inst|yfsm.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s1~regout\,
	datab => \inst|yfsm.s3~regout\,
	datac => \inst|yfsm.s2~regout\,
	datad => \inst|yfsm.s0~regout\,
	combout => \inst|WideOr0~combout\);

-- Location: LCCOMB_X33_Y4_N20
\inst|WideOr1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr1~combout\ = (\inst|yfsm.s1~regout\) # ((\inst|yfsm.s4~regout\) # ((\inst|yfsm.s5~regout\) # (!\inst|yfsm.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s1~regout\,
	datab => \inst|yfsm.s4~regout\,
	datac => \inst|yfsm.s5~regout\,
	datad => \inst|yfsm.s0~regout\,
	combout => \inst|WideOr1~combout\);

-- Location: LCCOMB_X33_Y4_N30
\inst|WideOr2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr2~combout\ = (\inst|yfsm.s4~regout\) # ((\inst|yfsm.s6~regout\) # ((\inst|yfsm.s2~regout\) # (!\inst|yfsm.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s4~regout\,
	datab => \inst|yfsm.s6~regout\,
	datac => \inst|yfsm.s2~regout\,
	datad => \inst|yfsm.s0~regout\,
	combout => \inst|WideOr2~combout\);

-- Location: LCCOMB_X64_Y4_N16
\inst6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux0~0_combout\ = (\inst|WideOr1~combout\ & (\inst|WideOr0~combout\ $ (\inst|WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr0~combout\,
	datac => \inst|WideOr1~combout\,
	datad => \inst|WideOr2~combout\,
	combout => \inst6|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y4_N22
\inst6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux1~0_combout\ = (!\inst|WideOr0~combout\ & (\inst|WideOr1~combout\ $ (\inst|WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr0~combout\,
	datac => \inst|WideOr1~combout\,
	datad => \inst|WideOr2~combout\,
	combout => \inst6|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y4_N12
\inst6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux2~0_combout\ = (\inst|WideOr0~combout\ & (!\inst|WideOr1~combout\ & \inst|WideOr2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr0~combout\,
	datac => \inst|WideOr1~combout\,
	datad => \inst|WideOr2~combout\,
	combout => \inst6|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y4_N14
\inst6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux3~0_combout\ = (\inst|WideOr0~combout\ & (\inst|WideOr1~combout\ & !\inst|WideOr2~combout\)) # (!\inst|WideOr0~combout\ & (\inst|WideOr1~combout\ $ (!\inst|WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr0~combout\,
	datac => \inst|WideOr1~combout\,
	datad => \inst|WideOr2~combout\,
	combout => \inst6|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y4_N0
\inst6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux4~0_combout\ = ((!\inst|WideOr0~combout\ & \inst|WideOr1~combout\)) # (!\inst|WideOr2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr0~combout\,
	datac => \inst|WideOr1~combout\,
	datad => \inst|WideOr2~combout\,
	combout => \inst6|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y4_N2
\inst6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux5~0_combout\ = (\inst|WideOr0~combout\ & (\inst|WideOr1~combout\ & \inst|WideOr2~combout\)) # (!\inst|WideOr0~combout\ & ((\inst|WideOr1~combout\) # (\inst|WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr0~combout\,
	datac => \inst|WideOr1~combout\,
	datad => \inst|WideOr2~combout\,
	combout => \inst6|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y4_N24
\inst6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux6~0_combout\ = (\inst|WideOr0~combout\ & (\inst|WideOr1~combout\)) # (!\inst|WideOr0~combout\ & (!\inst|WideOr1~combout\ & !\inst|WideOr2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr0~combout\,
	datac => \inst|WideOr1~combout\,
	datad => \inst|WideOr2~combout\,
	combout => \inst6|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y4_N10
\inst|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (!\inst|yfsm.s4~regout\ & !\inst|yfsm.s6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|yfsm.s4~regout\,
	datad => \inst|yfsm.s6~regout\,
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X32_Y4_N0
\inst|WideOr3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr3~combout\ = (\inst|yfsm.s4~regout\) # ((\inst|yfsm.s3~regout\) # (\inst|yfsm.s2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s4~regout\,
	datab => \inst|yfsm.s3~regout\,
	datac => \inst|yfsm.s2~regout\,
	combout => \inst|WideOr3~combout\);

-- Location: LCCOMB_X32_Y4_N6
\inst5|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux0~4_combout\ = (!\inst|WideOr3~combout\ & (\inst|WideOr2~0_combout\ $ (((!\inst|yfsm.s3~regout\ & !\inst|yfsm.s1~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~0_combout\,
	datab => \inst|yfsm.s3~regout\,
	datac => \inst|yfsm.s1~regout\,
	datad => \inst|WideOr3~combout\,
	combout => \inst5|Mux0~4_combout\);

-- Location: LCCOMB_X32_Y4_N20
\inst5|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux1~4_combout\ = (!\inst|WideOr2~0_combout\ & (!\inst|yfsm.s3~regout\ & (!\inst|yfsm.s1~regout\ & \inst|WideOr3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~0_combout\,
	datab => \inst|yfsm.s3~regout\,
	datac => \inst|yfsm.s1~regout\,
	datad => \inst|WideOr3~combout\,
	combout => \inst5|Mux1~4_combout\);

-- Location: LCCOMB_X32_Y4_N22
\inst5|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux2~4_combout\ = (\inst|WideOr2~0_combout\ & (!\inst|yfsm.s3~regout\ & (!\inst|yfsm.s1~regout\ & \inst|WideOr3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~0_combout\,
	datab => \inst|yfsm.s3~regout\,
	datac => \inst|yfsm.s1~regout\,
	datad => \inst|WideOr3~combout\,
	combout => \inst5|Mux2~4_combout\);

-- Location: LCCOMB_X32_Y4_N12
\inst|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr0~0_combout\ = (!\inst|yfsm.s3~regout\ & !\inst|yfsm.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|yfsm.s3~regout\,
	datac => \inst|yfsm.s1~regout\,
	combout => \inst|WideOr0~0_combout\);

-- Location: LCCOMB_X32_Y4_N26
\inst5|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = (\inst|yfsm.s5~regout\) # ((\inst|WideOr0~0_combout\ & (!\inst|WideOr3~combout\ & !\inst|WideOr2~0_combout\)) # (!\inst|WideOr0~0_combout\ & (\inst|WideOr3~combout\ $ (\inst|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr0~0_combout\,
	datab => \inst|WideOr3~combout\,
	datac => \inst|yfsm.s5~regout\,
	datad => \inst|WideOr2~0_combout\,
	combout => \inst5|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y4_N28
\inst5|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux4~3_combout\ = (!\inst|yfsm.s4~regout\ & (!\inst|yfsm.s2~regout\ & \inst|yfsm.s6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|yfsm.s4~regout\,
	datac => \inst|yfsm.s2~regout\,
	datad => \inst|yfsm.s6~regout\,
	combout => \inst5|Mux4~3_combout\);

-- Location: LCCOMB_X32_Y4_N18
\inst5|Mux4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux4~12_combout\ = (\inst|yfsm.s1~regout\) # ((\inst|yfsm.s3~regout\) # ((\inst|yfsm.s5~regout\) # (\inst5|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s1~regout\,
	datab => \inst|yfsm.s3~regout\,
	datac => \inst|yfsm.s5~regout\,
	datad => \inst5|Mux4~3_combout\,
	combout => \inst5|Mux4~12_combout\);

-- Location: LCCOMB_X32_Y4_N24
\inst5|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux5~4_combout\ = ((!\inst|yfsm.s6~regout\ & (!\inst|yfsm.s4~regout\ & \inst|WideOr3~combout\))) # (!\inst|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr0~0_combout\,
	datab => \inst|yfsm.s6~regout\,
	datac => \inst|yfsm.s4~regout\,
	datad => \inst|WideOr3~combout\,
	combout => \inst5|Mux5~4_combout\);

-- Location: LCCOMB_X32_Y4_N4
\inst5|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\inst|yfsm.s5~regout\) # ((\inst|WideOr3~combout\ & ((\inst|WideOr0~0_combout\) # (\inst|WideOr2~0_combout\))) # (!\inst|WideOr3~combout\ & ((!\inst|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr0~0_combout\,
	datab => \inst|WideOr3~combout\,
	datac => \inst|yfsm.s5~regout\,
	datad => \inst|WideOr2~0_combout\,
	combout => \inst5|Mux6~0_combout\);

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\current_state[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_current_state(1));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\current_state[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst6|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_current_state(2));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\current_state[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst6|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_current_state(3));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\current_state[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst6|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_current_state(4));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\current_state[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst6|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_current_state(5));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\current_state[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst6|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_current_state(6));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\current_state[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst6|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_current_state(7));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst5|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(1));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst5|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(2));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst5|Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(3));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst5|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(4));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst5|Mux4~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(5));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst5|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(6));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst5|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(7));
END structure;


