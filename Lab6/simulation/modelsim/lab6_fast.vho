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

-- DATE "11/19/2024 18:08:57"

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

ENTITY 	Final_Desgin IS
    PORT (
	bottom_half : OUT std_logic_vector(6 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	Enable : IN std_logic;
	data_in : IN std_logic;
	Reg_A : IN std_logic_vector(7 DOWNTO 0);
	Reg_B : IN std_logic_vector(7 DOWNTO 0);
	student_id : OUT std_logic_vector(6 DOWNTO 0);
	top_half : OUT std_logic_vector(6 DOWNTO 0)
	);
END Final_Desgin;

-- Design Ports Information
-- bottom_half[6]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bottom_half[5]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bottom_half[4]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bottom_half[3]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bottom_half[2]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bottom_half[1]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- bottom_half[0]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[6]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[5]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[4]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[3]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[2]	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_half[6]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_half[5]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_half[4]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_half[3]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_half[2]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_half[1]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- top_half[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Enable	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reg_B[0]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reg_A[0]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reg_B[1]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reg_A[1]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reg_B[2]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reg_A[2]	=>  Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reg_B[3]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reg_A[3]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reg_B[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reg_A[4]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reg_B[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reg_A[5]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reg_B[6]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reg_A[6]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reg_A[7]	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reg_B[7]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Final_Desgin IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bottom_half : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_Reg_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Reg_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_student_id : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_top_half : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|Mux4~3_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \Enable~combout\ : std_logic;
SIGNAL \data_in~combout\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s6~regout\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s7~regout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s0~regout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s1~regout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s2~regout\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s3~regout\ : std_logic;
SIGNAL \inst|WideOr0~combout\ : std_logic;
SIGNAL \inst|WideOr2~1_combout\ : std_logic;
SIGNAL \inst8|Result[3]~3_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s4~regout\ : std_logic;
SIGNAL \inst|WideOr1~combout\ : std_logic;
SIGNAL \inst8|Result[3]~2_combout\ : std_logic;
SIGNAL \inst8|Mux6~3_combout\ : std_logic;
SIGNAL \inst8|Result[3]~0_combout\ : std_logic;
SIGNAL \inst8|Result[3]~1_combout\ : std_logic;
SIGNAL \inst8|Mux6~0_combout\ : std_logic;
SIGNAL \inst8|Add1~1\ : std_logic;
SIGNAL \inst8|Add1~2_combout\ : std_logic;
SIGNAL \inst8|Add0~1\ : std_logic;
SIGNAL \inst8|Add0~2_combout\ : std_logic;
SIGNAL \inst8|Mux6~1_combout\ : std_logic;
SIGNAL \inst8|Mux6~2_combout\ : std_logic;
SIGNAL \inst8|Mux6~4_combout\ : std_logic;
SIGNAL \inst8|Mux6~5_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst8|Add1~3\ : std_logic;
SIGNAL \inst8|Add1~4_combout\ : std_logic;
SIGNAL \inst8|Add0~3\ : std_logic;
SIGNAL \inst8|Add0~4_combout\ : std_logic;
SIGNAL \inst8|Mux5~1_combout\ : std_logic;
SIGNAL \inst8|Mux5~2_combout\ : std_logic;
SIGNAL \inst8|Mux5~3_combout\ : std_logic;
SIGNAL \inst8|Mux5~0_combout\ : std_logic;
SIGNAL \inst8|Mux5~4_combout\ : std_logic;
SIGNAL \inst8|Mux5~5_combout\ : std_logic;
SIGNAL \inst8|Mux4~0_combout\ : std_logic;
SIGNAL \inst8|Add1~5\ : std_logic;
SIGNAL \inst8|Add1~6_combout\ : std_logic;
SIGNAL \inst8|Add0~5\ : std_logic;
SIGNAL \inst8|Add0~6_combout\ : std_logic;
SIGNAL \inst8|Mux4~1_combout\ : std_logic;
SIGNAL \inst8|Mux4~2_combout\ : std_logic;
SIGNAL \inst8|Mux4~4_combout\ : std_logic;
SIGNAL \inst8|Mux4~5_combout\ : std_logic;
SIGNAL \inst8|Mux7~3_combout\ : std_logic;
SIGNAL \inst8|Mux7~5_combout\ : std_logic;
SIGNAL \inst8|Mux7~4_combout\ : std_logic;
SIGNAL \inst8|Mux7~7_combout\ : std_logic;
SIGNAL \inst8|Mux7~6_combout\ : std_logic;
SIGNAL \inst8|Add1~0_combout\ : std_logic;
SIGNAL \inst8|Add0~0_combout\ : std_logic;
SIGNAL \inst8|Mux7~0_combout\ : std_logic;
SIGNAL \inst8|Mux7~1_combout\ : std_logic;
SIGNAL \inst8|Mux7~2_combout\ : std_logic;
SIGNAL \inst8|Mux7~8_combout\ : std_logic;
SIGNAL \inst9|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|Mux6~0_combout\ : std_logic;
SIGNAL \inst|WideOr3~combout\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst4|Mux0~4_combout\ : std_logic;
SIGNAL \inst4|Mux1~4_combout\ : std_logic;
SIGNAL \inst|WideOr4~combout\ : std_logic;
SIGNAL \inst4|Mux2~4_combout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s5~regout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~3_combout\ : std_logic;
SIGNAL \inst4|Mux4~12_combout\ : std_logic;
SIGNAL \inst4|Mux5~4_combout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst8|Add1~7\ : std_logic;
SIGNAL \inst8|Add1~9\ : std_logic;
SIGNAL \inst8|Add1~11\ : std_logic;
SIGNAL \inst8|Add1~12_combout\ : std_logic;
SIGNAL \inst8|Mux1~0_combout\ : std_logic;
SIGNAL \inst8|Mux1~1_combout\ : std_logic;
SIGNAL \inst8|Add0~7\ : std_logic;
SIGNAL \inst8|Add0~9\ : std_logic;
SIGNAL \inst8|Add0~11\ : std_logic;
SIGNAL \inst8|Add0~12_combout\ : std_logic;
SIGNAL \inst8|Mux1~2_combout\ : std_logic;
SIGNAL \inst8|Mux1~3_combout\ : std_logic;
SIGNAL \inst8|Mux1~4_combout\ : std_logic;
SIGNAL \inst8|Mux1~5_combout\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~3_combout\ : std_logic;
SIGNAL \inst8|Add1~8_combout\ : std_logic;
SIGNAL \inst8|Add0~8_combout\ : std_logic;
SIGNAL \inst8|Mux3~1_combout\ : std_logic;
SIGNAL \inst8|Mux3~2_combout\ : std_logic;
SIGNAL \inst8|Mux3~4_combout\ : std_logic;
SIGNAL \inst8|Mux3~5_combout\ : std_logic;
SIGNAL \inst8|Mux0~5_combout\ : std_logic;
SIGNAL \inst8|Add1~13\ : std_logic;
SIGNAL \inst8|Add1~14_combout\ : std_logic;
SIGNAL \inst8|Mux0~2_combout\ : std_logic;
SIGNAL \inst8|Add0~13\ : std_logic;
SIGNAL \inst8|Add0~14_combout\ : std_logic;
SIGNAL \inst8|Mux0~3_combout\ : std_logic;
SIGNAL \inst8|Mux0~6_combout\ : std_logic;
SIGNAL \inst8|Mux0~4_combout\ : std_logic;
SIGNAL \inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst8|Mux2~2_combout\ : std_logic;
SIGNAL \inst8|Add0~10_combout\ : std_logic;
SIGNAL \inst8|Add1~10_combout\ : std_logic;
SIGNAL \inst8|Mux2~1_combout\ : std_logic;
SIGNAL \inst8|Mux2~3_combout\ : std_logic;
SIGNAL \inst8|Mux2~4_combout\ : std_logic;
SIGNAL \inst8|Mux2~5_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|Mux1~0_combout\ : std_logic;
SIGNAL \inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst7|Mux3~0_combout\ : std_logic;
SIGNAL \inst7|Mux4~0_combout\ : std_logic;
SIGNAL \inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|Mux6~0_combout\ : std_logic;
SIGNAL \inst6|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Reg_B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Reg_A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

bottom_half <= ww_bottom_half;
ww_clk <= clk;
ww_reset <= reset;
ww_Enable <= Enable;
ww_data_in <= data_in;
ww_Reg_A <= Reg_A;
ww_Reg_B <= Reg_B;
student_id <= ww_student_id;
top_half <= ww_top_half;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\inst7|ALT_INV_Mux6~0_combout\ <= NOT \inst7|Mux6~0_combout\;
\inst4|ALT_INV_Mux6~0_combout\ <= NOT \inst4|Mux6~0_combout\;
\inst9|ALT_INV_Mux6~0_combout\ <= NOT \inst9|Mux6~0_combout\;

-- Location: LCFF_X2_Y12_N17
\inst6|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Reg_B~combout\(0),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|Q\(0));

-- Location: LCCOMB_X4_Y12_N4
\inst8|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux4~3_combout\ = ((\inst8|Result[3]~3_combout\) # (!\inst8|Result[3]~2_combout\)) # (!\inst5|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Q\(3),
	datac => \inst8|Result[3]~3_combout\,
	datad => \inst8|Result[3]~2_combout\,
	combout => \inst8|Mux4~3_combout\);

-- Location: LCFF_X2_Y12_N13
\inst5|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Reg_A~combout\(6),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|Q\(6));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reg_B[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Reg_B(0),
	combout => \Reg_B~combout\(0));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reg_A[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Reg_A(6),
	combout => \Reg_A~combout\(6));

-- Location: CLKCTRL_G3
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

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reg_A[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Reg_A(1),
	combout => \Reg_A~combout\(1));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X2_Y12_N3
\inst5|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Reg_A~combout\(1),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|Q\(1));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reg_B[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Reg_B(1),
	combout => \Reg_B~combout\(1));

-- Location: LCFF_X2_Y12_N19
\inst6|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Reg_B~combout\(1),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|Q\(1));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Enable~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Enable,
	combout => \Enable~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X5_Y12_N18
\inst|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst|yfsm.s5~regout\ & ((\data_in~combout\))) # (!\inst|yfsm.s5~regout\ & (\inst|yfsm.s6~regout\ & !\data_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s5~regout\,
	datac => \inst|yfsm.s6~regout\,
	datad => \data_in~combout\,
	combout => \inst|Selector6~0_combout\);

-- Location: LCFF_X5_Y12_N19
\inst|yfsm.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Selector6~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s6~regout\);

-- Location: LCCOMB_X5_Y12_N16
\inst|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (\inst|yfsm.s6~regout\ & ((\data_in~combout\))) # (!\inst|yfsm.s6~regout\ & (\inst|yfsm.s7~regout\ & !\data_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|yfsm.s6~regout\,
	datac => \inst|yfsm.s7~regout\,
	datad => \data_in~combout\,
	combout => \inst|Selector7~0_combout\);

-- Location: LCFF_X5_Y12_N17
\inst|yfsm.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Selector7~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s7~regout\);

-- Location: LCCOMB_X5_Y12_N20
\inst|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst|yfsm.s7~regout\ & ((!\data_in~combout\))) # (!\inst|yfsm.s7~regout\ & ((\inst|yfsm.s0~regout\) # (\data_in~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|yfsm.s7~regout\,
	datac => \inst|yfsm.s0~regout\,
	datad => \data_in~combout\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCFF_X5_Y12_N21
\inst|yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Selector0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s0~regout\);

-- Location: LCCOMB_X5_Y12_N22
\inst|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst|yfsm.s0~regout\ & (\inst|yfsm.s1~regout\ & !\data_in~combout\)) # (!\inst|yfsm.s0~regout\ & ((\data_in~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|yfsm.s0~regout\,
	datac => \inst|yfsm.s1~regout\,
	datad => \data_in~combout\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCFF_X5_Y12_N23
\inst|yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Selector1~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s1~regout\);

-- Location: LCCOMB_X5_Y12_N28
\inst|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|yfsm.s1~regout\ & ((\data_in~combout\))) # (!\inst|yfsm.s1~regout\ & (\inst|yfsm.s2~regout\ & !\data_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s1~regout\,
	datac => \inst|yfsm.s2~regout\,
	datad => \data_in~combout\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCFF_X5_Y12_N29
\inst|yfsm.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Selector2~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s2~regout\);

-- Location: LCCOMB_X5_Y12_N8
\inst|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst|yfsm.s2~regout\ & ((\data_in~combout\))) # (!\inst|yfsm.s2~regout\ & (\inst|yfsm.s3~regout\ & !\data_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|yfsm.s2~regout\,
	datac => \inst|yfsm.s3~regout\,
	datad => \data_in~combout\,
	combout => \inst|Selector3~0_combout\);

-- Location: LCFF_X5_Y12_N9
\inst|yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Selector3~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s3~regout\);

-- Location: LCCOMB_X5_Y12_N14
\inst|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr0~combout\ = ((\inst|yfsm.s1~regout\) # ((\inst|yfsm.s3~regout\) # (\inst|yfsm.s2~regout\))) # (!\inst|yfsm.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s0~regout\,
	datab => \inst|yfsm.s1~regout\,
	datac => \inst|yfsm.s3~regout\,
	datad => \inst|yfsm.s2~regout\,
	combout => \inst|WideOr0~combout\);

-- Location: LCCOMB_X5_Y12_N30
\inst|WideOr2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr2~1_combout\ = (\inst|yfsm.s4~regout\) # ((\inst|yfsm.s6~regout\) # ((\inst|yfsm.s2~regout\) # (!\inst|yfsm.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s4~regout\,
	datab => \inst|yfsm.s6~regout\,
	datac => \inst|yfsm.s0~regout\,
	datad => \inst|yfsm.s2~regout\,
	combout => \inst|WideOr2~1_combout\);

-- Location: LCCOMB_X4_Y12_N20
\inst8|Result[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Result[3]~3_combout\ = (\Enable~combout\ & (!\inst|WideOr0~combout\ & \inst|WideOr2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable~combout\,
	datac => \inst|WideOr0~combout\,
	datad => \inst|WideOr2~1_combout\,
	combout => \inst8|Result[3]~3_combout\);

-- Location: LCCOMB_X5_Y12_N24
\inst|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst|yfsm.s3~regout\ & ((\data_in~combout\))) # (!\inst|yfsm.s3~regout\ & (\inst|yfsm.s4~regout\ & !\data_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s3~regout\,
	datac => \inst|yfsm.s4~regout\,
	datad => \data_in~combout\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCFF_X5_Y12_N25
\inst|yfsm.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Selector4~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s4~regout\);

-- Location: LCCOMB_X5_Y12_N12
\inst|WideOr1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr1~combout\ = (\inst|yfsm.s5~regout\) # ((\inst|yfsm.s1~regout\) # ((\inst|yfsm.s4~regout\) # (!\inst|yfsm.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s5~regout\,
	datab => \inst|yfsm.s1~regout\,
	datac => \inst|yfsm.s0~regout\,
	datad => \inst|yfsm.s4~regout\,
	combout => \inst|WideOr1~combout\);

-- Location: LCCOMB_X4_Y12_N26
\inst8|Result[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Result[3]~2_combout\ = (\Enable~combout\ & (\inst|WideOr1~combout\ & !\inst|WideOr0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable~combout\,
	datac => \inst|WideOr1~combout\,
	datad => \inst|WideOr0~combout\,
	combout => \inst8|Result[3]~2_combout\);

-- Location: LCCOMB_X4_Y12_N18
\inst8|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux6~3_combout\ = ((\inst8|Result[3]~3_combout\) # (!\inst8|Result[3]~2_combout\)) # (!\inst5|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Q\(1),
	datac => \inst8|Result[3]~3_combout\,
	datad => \inst8|Result[3]~2_combout\,
	combout => \inst8|Mux6~3_combout\);

-- Location: LCCOMB_X4_Y12_N28
\inst8|Result[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Result[3]~0_combout\ = (\Enable~combout\ & (\inst|WideOr0~combout\ & (\inst|WideOr1~combout\ $ (\inst|WideOr2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~combout\,
	datab => \inst|WideOr0~combout\,
	datac => \inst|WideOr1~combout\,
	datad => \inst|WideOr2~1_combout\,
	combout => \inst8|Result[3]~0_combout\);

-- Location: LCCOMB_X4_Y12_N6
\inst8|Result[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Result[3]~1_combout\ = (\Enable~combout\ & (\inst|WideOr0~combout\ & !\inst|WideOr2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable~combout\,
	datac => \inst|WideOr0~combout\,
	datad => \inst|WideOr2~1_combout\,
	combout => \inst8|Result[3]~1_combout\);

-- Location: LCCOMB_X4_Y12_N8
\inst8|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux6~0_combout\ = (\inst6|Q\(1) & ((\inst5|Q\(1) & (\inst8|Result[3]~0_combout\ & !\inst8|Result[3]~1_combout\)) # (!\inst5|Q\(1) & (\inst8|Result[3]~0_combout\ $ (!\inst8|Result[3]~1_combout\))))) # (!\inst6|Q\(1) & (\inst8|Result[3]~0_combout\ $ 
-- (((!\inst8|Result[3]~1_combout\) # (!\inst5|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Q\(1),
	datab => \inst5|Q\(1),
	datac => \inst8|Result[3]~0_combout\,
	datad => \inst8|Result[3]~1_combout\,
	combout => \inst8|Mux6~0_combout\);

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reg_A[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Reg_A(0),
	combout => \Reg_A~combout\(0));

-- Location: LCFF_X2_Y12_N1
\inst5|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Reg_A~combout\(0),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|Q\(0));

-- Location: LCCOMB_X2_Y12_N0
\inst8|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add1~0_combout\ = (\inst6|Q\(0) & (\inst5|Q\(0) $ (VCC))) # (!\inst6|Q\(0) & ((\inst5|Q\(0)) # (GND)))
-- \inst8|Add1~1\ = CARRY((\inst5|Q\(0)) # (!\inst6|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Q\(0),
	datab => \inst5|Q\(0),
	datad => VCC,
	combout => \inst8|Add1~0_combout\,
	cout => \inst8|Add1~1\);

-- Location: LCCOMB_X2_Y12_N2
\inst8|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add1~2_combout\ = (\inst6|Q\(1) & ((\inst5|Q\(1) & (!\inst8|Add1~1\)) # (!\inst5|Q\(1) & ((\inst8|Add1~1\) # (GND))))) # (!\inst6|Q\(1) & ((\inst5|Q\(1) & (\inst8|Add1~1\ & VCC)) # (!\inst5|Q\(1) & (!\inst8|Add1~1\))))
-- \inst8|Add1~3\ = CARRY((\inst6|Q\(1) & ((!\inst8|Add1~1\) # (!\inst5|Q\(1)))) # (!\inst6|Q\(1) & (!\inst5|Q\(1) & !\inst8|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Q\(1),
	datab => \inst5|Q\(1),
	datad => VCC,
	cin => \inst8|Add1~1\,
	combout => \inst8|Add1~2_combout\,
	cout => \inst8|Add1~3\);

-- Location: LCCOMB_X2_Y12_N16
\inst8|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add0~0_combout\ = (\inst6|Q\(0) & (\inst5|Q\(0) $ (VCC))) # (!\inst6|Q\(0) & (\inst5|Q\(0) & VCC))
-- \inst8|Add0~1\ = CARRY((\inst6|Q\(0) & \inst5|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Q\(0),
	datab => \inst5|Q\(0),
	datad => VCC,
	combout => \inst8|Add0~0_combout\,
	cout => \inst8|Add0~1\);

-- Location: LCCOMB_X2_Y12_N18
\inst8|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add0~2_combout\ = (\inst6|Q\(1) & ((\inst5|Q\(1) & (\inst8|Add0~1\ & VCC)) # (!\inst5|Q\(1) & (!\inst8|Add0~1\)))) # (!\inst6|Q\(1) & ((\inst5|Q\(1) & (!\inst8|Add0~1\)) # (!\inst5|Q\(1) & ((\inst8|Add0~1\) # (GND)))))
-- \inst8|Add0~3\ = CARRY((\inst6|Q\(1) & (!\inst5|Q\(1) & !\inst8|Add0~1\)) # (!\inst6|Q\(1) & ((!\inst8|Add0~1\) # (!\inst5|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Q\(1),
	datab => \inst5|Q\(1),
	datad => VCC,
	cin => \inst8|Add0~1\,
	combout => \inst8|Add0~2_combout\,
	cout => \inst8|Add0~3\);

-- Location: LCCOMB_X4_Y12_N2
\inst8|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux6~1_combout\ = (\inst8|Result[3]~3_combout\ & (\inst8|Add1~2_combout\)) # (!\inst8|Result[3]~3_combout\ & ((\inst8|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result[3]~3_combout\,
	datac => \inst8|Add1~2_combout\,
	datad => \inst8|Add0~2_combout\,
	combout => \inst8|Mux6~1_combout\);

-- Location: LCCOMB_X4_Y12_N0
\inst8|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux6~2_combout\ = (\inst8|Result[3]~1_combout\ & (((\inst8|Mux6~0_combout\)))) # (!\inst8|Result[3]~1_combout\ & ((\inst8|Result[3]~2_combout\ & (\inst8|Mux6~0_combout\)) # (!\inst8|Result[3]~2_combout\ & ((\inst8|Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result[3]~1_combout\,
	datab => \inst8|Result[3]~2_combout\,
	datac => \inst8|Mux6~0_combout\,
	datad => \inst8|Mux6~1_combout\,
	combout => \inst8|Mux6~2_combout\);

-- Location: LCCOMB_X4_Y12_N12
\inst8|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux6~4_combout\ = (\inst8|Result[3]~0_combout\ & (\inst8|Mux6~0_combout\)) # (!\inst8|Result[3]~0_combout\ & (((\inst8|Mux6~3_combout\ & \inst8|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux6~0_combout\,
	datab => \inst8|Mux6~3_combout\,
	datac => \inst8|Result[3]~0_combout\,
	datad => \inst8|Mux6~2_combout\,
	combout => \inst8|Mux6~4_combout\);

-- Location: LCCOMB_X4_Y12_N24
\inst8|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux6~5_combout\ = (\inst3|Mux0~0_combout\ & ((\inst5|Q\(1)) # ((\inst6|Q\(1))))) # (!\inst3|Mux0~0_combout\ & (((\inst8|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst5|Q\(1),
	datac => \inst6|Q\(1),
	datad => \inst8|Mux6~4_combout\,
	combout => \inst8|Mux6~5_combout\);

-- Location: LCFF_X4_Y12_N25
\inst8|Result[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst8|Mux6~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \Enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Result\(1));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reg_B[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Reg_B(2),
	combout => \Reg_B~combout\(2));

-- Location: LCFF_X2_Y12_N21
\inst6|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Reg_B~combout\(2),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|Q\(2));

-- Location: LCCOMB_X4_Y12_N10
\inst3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\inst|WideOr0~combout\ & (\Enable~combout\ & (\inst|WideOr1~combout\ & \inst|WideOr2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr0~combout\,
	datab => \Enable~combout\,
	datac => \inst|WideOr1~combout\,
	datad => \inst|WideOr2~1_combout\,
	combout => \inst3|Mux0~0_combout\);

-- Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reg_A[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Reg_A(2),
	combout => \Reg_A~combout\(2));

-- Location: LCFF_X2_Y12_N5
\inst5|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Reg_A~combout\(2),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|Q\(2));

-- Location: LCCOMB_X2_Y12_N4
\inst8|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add1~4_combout\ = ((\inst6|Q\(2) $ (\inst5|Q\(2) $ (\inst8|Add1~3\)))) # (GND)
-- \inst8|Add1~5\ = CARRY((\inst6|Q\(2) & (\inst5|Q\(2) & !\inst8|Add1~3\)) # (!\inst6|Q\(2) & ((\inst5|Q\(2)) # (!\inst8|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Q\(2),
	datab => \inst5|Q\(2),
	datad => VCC,
	cin => \inst8|Add1~3\,
	combout => \inst8|Add1~4_combout\,
	cout => \inst8|Add1~5\);

-- Location: LCCOMB_X2_Y12_N20
\inst8|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add0~4_combout\ = ((\inst6|Q\(2) $ (\inst5|Q\(2) $ (!\inst8|Add0~3\)))) # (GND)
-- \inst8|Add0~5\ = CARRY((\inst6|Q\(2) & ((\inst5|Q\(2)) # (!\inst8|Add0~3\))) # (!\inst6|Q\(2) & (\inst5|Q\(2) & !\inst8|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Q\(2),
	datab => \inst5|Q\(2),
	datad => VCC,
	cin => \inst8|Add0~3\,
	combout => \inst8|Add0~4_combout\,
	cout => \inst8|Add0~5\);

-- Location: LCCOMB_X3_Y12_N20
\inst8|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux5~1_combout\ = (\inst8|Result[3]~3_combout\ & (\inst8|Add1~4_combout\)) # (!\inst8|Result[3]~3_combout\ & ((\inst8|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Add1~4_combout\,
	datac => \inst8|Add0~4_combout\,
	datad => \inst8|Result[3]~3_combout\,
	combout => \inst8|Mux5~1_combout\);

-- Location: LCCOMB_X3_Y12_N22
\inst8|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux5~2_combout\ = (\inst5|Q\(2) & ((\inst6|Q\(2)) # ((\inst8|Result[3]~2_combout\ & \inst8|Result[3]~3_combout\)))) # (!\inst5|Q\(2) & (\inst8|Result[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result[3]~2_combout\,
	datab => \inst8|Result[3]~3_combout\,
	datac => \inst6|Q\(2),
	datad => \inst5|Q\(2),
	combout => \inst8|Mux5~2_combout\);

-- Location: LCCOMB_X3_Y12_N16
\inst8|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux5~3_combout\ = (\inst8|Mux5~0_combout\ & ((\inst8|Mux5~2_combout\) # ((!\inst8|Result[3]~2_combout\ & \inst8|Mux5~1_combout\)))) # (!\inst8|Mux5~0_combout\ & (!\inst8|Result[3]~2_combout\ & (\inst8|Mux5~1_combout\ & \inst8|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux5~0_combout\,
	datab => \inst8|Result[3]~2_combout\,
	datac => \inst8|Mux5~1_combout\,
	datad => \inst8|Mux5~2_combout\,
	combout => \inst8|Mux5~3_combout\);

-- Location: LCCOMB_X3_Y12_N6
\inst8|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux5~0_combout\ = (\inst5|Q\(2) & ((\inst8|Result[3]~0_combout\ & (\inst6|Q\(2) $ (\inst8|Result[3]~1_combout\))) # (!\inst8|Result[3]~0_combout\ & (!\inst6|Q\(2) & !\inst8|Result[3]~1_combout\)))) # (!\inst5|Q\(2) & (\inst8|Result[3]~0_combout\ $ 
-- (((!\inst8|Result[3]~1_combout\) # (!\inst6|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(2),
	datab => \inst8|Result[3]~0_combout\,
	datac => \inst6|Q\(2),
	datad => \inst8|Result[3]~1_combout\,
	combout => \inst8|Mux5~0_combout\);

-- Location: LCCOMB_X3_Y12_N10
\inst8|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux5~4_combout\ = (\inst8|Result[3]~1_combout\ & ((\inst8|Mux5~0_combout\))) # (!\inst8|Result[3]~1_combout\ & (\inst8|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result[3]~1_combout\,
	datac => \inst8|Mux5~3_combout\,
	datad => \inst8|Mux5~0_combout\,
	combout => \inst8|Mux5~4_combout\);

-- Location: LCCOMB_X3_Y12_N4
\inst8|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux5~5_combout\ = (\inst3|Mux0~0_combout\ & ((\inst5|Q\(2)) # ((\inst6|Q\(2))))) # (!\inst3|Mux0~0_combout\ & (((\inst8|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(2),
	datab => \inst6|Q\(2),
	datac => \inst3|Mux0~0_combout\,
	datad => \inst8|Mux5~4_combout\,
	combout => \inst8|Mux5~5_combout\);

-- Location: LCFF_X3_Y12_N5
\inst8|Result[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst8|Mux5~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \Enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Result\(2));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reg_B[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Reg_B(3),
	combout => \Reg_B~combout\(3));

-- Location: LCFF_X2_Y12_N23
\inst6|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Reg_B~combout\(3),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|Q\(3));

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reg_A[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Reg_A(3),
	combout => \Reg_A~combout\(3));

-- Location: LCFF_X2_Y12_N7
\inst5|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Reg_A~combout\(3),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|Q\(3));

-- Location: LCCOMB_X4_Y12_N14
\inst8|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux4~0_combout\ = (\inst6|Q\(3) & ((\inst5|Q\(3) & (\inst8|Result[3]~0_combout\ & !\inst8|Result[3]~1_combout\)) # (!\inst5|Q\(3) & (\inst8|Result[3]~0_combout\ $ (!\inst8|Result[3]~1_combout\))))) # (!\inst6|Q\(3) & (\inst8|Result[3]~0_combout\ $ 
-- (((!\inst8|Result[3]~1_combout\) # (!\inst5|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Q\(3),
	datab => \inst5|Q\(3),
	datac => \inst8|Result[3]~0_combout\,
	datad => \inst8|Result[3]~1_combout\,
	combout => \inst8|Mux4~0_combout\);

-- Location: LCCOMB_X2_Y12_N6
\inst8|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add1~6_combout\ = (\inst5|Q\(3) & ((\inst6|Q\(3) & (!\inst8|Add1~5\)) # (!\inst6|Q\(3) & (\inst8|Add1~5\ & VCC)))) # (!\inst5|Q\(3) & ((\inst6|Q\(3) & ((\inst8|Add1~5\) # (GND))) # (!\inst6|Q\(3) & (!\inst8|Add1~5\))))
-- \inst8|Add1~7\ = CARRY((\inst5|Q\(3) & (\inst6|Q\(3) & !\inst8|Add1~5\)) # (!\inst5|Q\(3) & ((\inst6|Q\(3)) # (!\inst8|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(3),
	datab => \inst6|Q\(3),
	datad => VCC,
	cin => \inst8|Add1~5\,
	combout => \inst8|Add1~6_combout\,
	cout => \inst8|Add1~7\);

-- Location: LCCOMB_X2_Y12_N22
\inst8|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add0~6_combout\ = (\inst5|Q\(3) & ((\inst6|Q\(3) & (\inst8|Add0~5\ & VCC)) # (!\inst6|Q\(3) & (!\inst8|Add0~5\)))) # (!\inst5|Q\(3) & ((\inst6|Q\(3) & (!\inst8|Add0~5\)) # (!\inst6|Q\(3) & ((\inst8|Add0~5\) # (GND)))))
-- \inst8|Add0~7\ = CARRY((\inst5|Q\(3) & (!\inst6|Q\(3) & !\inst8|Add0~5\)) # (!\inst5|Q\(3) & ((!\inst8|Add0~5\) # (!\inst6|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(3),
	datab => \inst6|Q\(3),
	datad => VCC,
	cin => \inst8|Add0~5\,
	combout => \inst8|Add0~6_combout\,
	cout => \inst8|Add0~7\);

-- Location: LCCOMB_X3_Y12_N12
\inst8|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux4~1_combout\ = (\inst8|Result[3]~3_combout\ & (\inst8|Add1~6_combout\)) # (!\inst8|Result[3]~3_combout\ & ((\inst8|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Result[3]~3_combout\,
	datac => \inst8|Add1~6_combout\,
	datad => \inst8|Add0~6_combout\,
	combout => \inst8|Mux4~1_combout\);

-- Location: LCCOMB_X3_Y12_N30
\inst8|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux4~2_combout\ = (\inst8|Result[3]~2_combout\ & (((\inst8|Mux4~0_combout\)))) # (!\inst8|Result[3]~2_combout\ & ((\inst8|Result[3]~1_combout\ & (\inst8|Mux4~0_combout\)) # (!\inst8|Result[3]~1_combout\ & ((\inst8|Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result[3]~2_combout\,
	datab => \inst8|Result[3]~1_combout\,
	datac => \inst8|Mux4~0_combout\,
	datad => \inst8|Mux4~1_combout\,
	combout => \inst8|Mux4~2_combout\);

-- Location: LCCOMB_X3_Y12_N28
\inst8|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux4~4_combout\ = (\inst8|Result[3]~0_combout\ & (((\inst8|Mux4~0_combout\)))) # (!\inst8|Result[3]~0_combout\ & (\inst8|Mux4~3_combout\ & ((\inst8|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux4~3_combout\,
	datab => \inst8|Mux4~0_combout\,
	datac => \inst8|Result[3]~0_combout\,
	datad => \inst8|Mux4~2_combout\,
	combout => \inst8|Mux4~4_combout\);

-- Location: LCCOMB_X3_Y12_N26
\inst8|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux4~5_combout\ = (\inst3|Mux0~0_combout\ & ((\inst5|Q\(3)) # ((\inst6|Q\(3))))) # (!\inst3|Mux0~0_combout\ & (((\inst8|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(3),
	datab => \inst6|Q\(3),
	datac => \inst3|Mux0~0_combout\,
	datad => \inst8|Mux4~4_combout\,
	combout => \inst8|Mux4~5_combout\);

-- Location: LCFF_X3_Y12_N27
\inst8|Result[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst8|Mux4~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \Enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Result\(3));

-- Location: LCCOMB_X5_Y12_N2
\inst8|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux7~3_combout\ = (\Enable~combout\ & (\inst|WideOr0~combout\ $ (\inst|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr0~combout\,
	datac => \Enable~combout\,
	datad => \inst|WideOr1~combout\,
	combout => \inst8|Mux7~3_combout\);

-- Location: LCCOMB_X6_Y12_N22
\inst8|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux7~5_combout\ = (\inst8|Mux7~3_combout\ & ((\inst|WideOr2~1_combout\ & ((\inst5|Q\(0)))) # (!\inst|WideOr2~1_combout\ & (\inst8|Mux7~1_combout\ & !\inst5|Q\(0))))) # (!\inst8|Mux7~3_combout\ & (\inst8|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux7~1_combout\,
	datab => \inst|WideOr2~1_combout\,
	datac => \inst5|Q\(0),
	datad => \inst8|Mux7~3_combout\,
	combout => \inst8|Mux7~5_combout\);

-- Location: LCCOMB_X6_Y12_N0
\inst8|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux7~4_combout\ = (\inst8|Mux7~1_combout\ & ((\inst|WideOr2~1_combout\) # ((\inst5|Q\(0) & \inst8|Mux7~3_combout\)))) # (!\inst8|Mux7~1_combout\ & (\inst5|Q\(0) & ((!\inst8|Mux7~3_combout\) # (!\inst|WideOr2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux7~1_combout\,
	datab => \inst|WideOr2~1_combout\,
	datac => \inst5|Q\(0),
	datad => \inst8|Mux7~3_combout\,
	combout => \inst8|Mux7~4_combout\);

-- Location: LCCOMB_X6_Y12_N30
\inst8|Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux7~7_combout\ = (\inst8|Mux7~5_combout\ & (\inst8|Mux7~4_combout\ $ (((\inst6|Q\(0)) # (\inst3|Mux0~0_combout\))))) # (!\inst8|Mux7~5_combout\ & ((\inst8|Mux7~4_combout\) # ((\inst6|Q\(0) & \inst3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Q\(0),
	datab => \inst8|Mux7~5_combout\,
	datac => \inst3|Mux0~0_combout\,
	datad => \inst8|Mux7~4_combout\,
	combout => \inst8|Mux7~7_combout\);

-- Location: LCCOMB_X6_Y12_N20
\inst8|Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux7~6_combout\ = (\inst3|Mux0~0_combout\ & ((\inst8|Mux7~5_combout\) # ((!\inst6|Q\(0) & !\inst8|Mux7~4_combout\)))) # (!\inst3|Mux0~0_combout\ & (\inst8|Mux7~4_combout\ $ (((\inst6|Q\(0) & \inst8|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Q\(0),
	datab => \inst8|Mux7~5_combout\,
	datac => \inst3|Mux0~0_combout\,
	datad => \inst8|Mux7~4_combout\,
	combout => \inst8|Mux7~6_combout\);

-- Location: LCCOMB_X6_Y12_N28
\inst8|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux7~0_combout\ = (\inst|WideOr2~1_combout\ & (\inst8|Add1~0_combout\)) # (!\inst|WideOr2~1_combout\ & ((\inst8|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~1_combout\,
	datac => \inst8|Add1~0_combout\,
	datad => \inst8|Add0~0_combout\,
	combout => \inst8|Mux7~0_combout\);

-- Location: LCCOMB_X5_Y12_N0
\inst8|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux7~1_combout\ = (\Enable~combout\ & (((!\inst|WideOr2~1_combout\ & \inst|WideOr0~combout\)) # (!\inst|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~combout\,
	datab => \inst|WideOr2~1_combout\,
	datac => \inst|WideOr0~combout\,
	datad => \inst|WideOr1~combout\,
	combout => \inst8|Mux7~1_combout\);

-- Location: LCCOMB_X6_Y12_N10
\inst8|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux7~2_combout\ = (\inst8|Mux7~1_combout\ & ((\inst8|Mux7~0_combout\))) # (!\inst8|Mux7~1_combout\ & (\inst8|Result\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result\(0),
	datab => \inst8|Mux7~0_combout\,
	datac => \inst8|Mux7~1_combout\,
	combout => \inst8|Mux7~2_combout\);

-- Location: LCCOMB_X6_Y12_N12
\inst8|Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux7~8_combout\ = (\inst8|Mux7~7_combout\ & (!\inst8|Mux7~3_combout\ & ((\inst8|Mux7~2_combout\) # (!\inst8|Mux7~6_combout\)))) # (!\inst8|Mux7~7_combout\ & (!\inst8|Mux7~6_combout\ & ((\inst8|Mux7~3_combout\) # (\inst8|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux7~3_combout\,
	datab => \inst8|Mux7~7_combout\,
	datac => \inst8|Mux7~6_combout\,
	datad => \inst8|Mux7~2_combout\,
	combout => \inst8|Mux7~8_combout\);

-- Location: LCFF_X6_Y12_N13
\inst8|Result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst8|Mux7~8_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Result\(0));

-- Location: LCCOMB_X6_Y12_N6
\inst9|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux0~0_combout\ = (\inst8|Result\(2) & (!\inst8|Result\(1) & (\inst8|Result\(3) $ (!\inst8|Result\(0))))) # (!\inst8|Result\(2) & (\inst8|Result\(0) & (\inst8|Result\(1) $ (!\inst8|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result\(1),
	datab => \inst8|Result\(2),
	datac => \inst8|Result\(3),
	datad => \inst8|Result\(0),
	combout => \inst9|Mux0~0_combout\);

-- Location: LCCOMB_X6_Y12_N24
\inst9|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux1~0_combout\ = (\inst8|Result\(1) & ((\inst8|Result\(0) & ((\inst8|Result\(3)))) # (!\inst8|Result\(0) & (\inst8|Result\(2))))) # (!\inst8|Result\(1) & (\inst8|Result\(2) & (\inst8|Result\(3) $ (\inst8|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result\(1),
	datab => \inst8|Result\(2),
	datac => \inst8|Result\(3),
	datad => \inst8|Result\(0),
	combout => \inst9|Mux1~0_combout\);

-- Location: LCCOMB_X6_Y12_N18
\inst9|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux2~0_combout\ = (\inst8|Result\(2) & (\inst8|Result\(3) & ((\inst8|Result\(1)) # (!\inst8|Result\(0))))) # (!\inst8|Result\(2) & (\inst8|Result\(1) & (!\inst8|Result\(3) & !\inst8|Result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result\(1),
	datab => \inst8|Result\(2),
	datac => \inst8|Result\(3),
	datad => \inst8|Result\(0),
	combout => \inst9|Mux2~0_combout\);

-- Location: LCCOMB_X6_Y12_N16
\inst9|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux3~0_combout\ = (\inst8|Result\(0) & (\inst8|Result\(1) $ ((!\inst8|Result\(2))))) # (!\inst8|Result\(0) & ((\inst8|Result\(1) & (!\inst8|Result\(2) & \inst8|Result\(3))) # (!\inst8|Result\(1) & (\inst8|Result\(2) & !\inst8|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result\(1),
	datab => \inst8|Result\(2),
	datac => \inst8|Result\(3),
	datad => \inst8|Result\(0),
	combout => \inst9|Mux3~0_combout\);

-- Location: LCCOMB_X6_Y12_N2
\inst9|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux4~0_combout\ = (\inst8|Result\(1) & (((!\inst8|Result\(3) & \inst8|Result\(0))))) # (!\inst8|Result\(1) & ((\inst8|Result\(2) & (!\inst8|Result\(3))) # (!\inst8|Result\(2) & ((\inst8|Result\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result\(1),
	datab => \inst8|Result\(2),
	datac => \inst8|Result\(3),
	datad => \inst8|Result\(0),
	combout => \inst9|Mux4~0_combout\);

-- Location: LCCOMB_X6_Y12_N8
\inst9|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux5~0_combout\ = (\inst8|Result\(1) & (!\inst8|Result\(3) & ((\inst8|Result\(0)) # (!\inst8|Result\(2))))) # (!\inst8|Result\(1) & (\inst8|Result\(0) & (\inst8|Result\(2) $ (!\inst8|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result\(1),
	datab => \inst8|Result\(2),
	datac => \inst8|Result\(3),
	datad => \inst8|Result\(0),
	combout => \inst9|Mux5~0_combout\);

-- Location: LCCOMB_X6_Y12_N26
\inst9|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux6~0_combout\ = (\inst8|Result\(0) & ((\inst8|Result\(3)) # (\inst8|Result\(1) $ (\inst8|Result\(2))))) # (!\inst8|Result\(0) & ((\inst8|Result\(1)) # (\inst8|Result\(2) $ (\inst8|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result\(1),
	datab => \inst8|Result\(2),
	datac => \inst8|Result\(3),
	datad => \inst8|Result\(0),
	combout => \inst9|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y8_N20
\inst|WideOr3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr3~combout\ = (\inst|yfsm.s4~regout\) # ((\inst|yfsm.s2~regout\) # (\inst|yfsm.s3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|yfsm.s4~regout\,
	datac => \inst|yfsm.s2~regout\,
	datad => \inst|yfsm.s3~regout\,
	combout => \inst|WideOr3~combout\);

-- Location: LCCOMB_X1_Y8_N22
\inst|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (!\inst|yfsm.s6~regout\ & !\inst|yfsm.s4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s6~regout\,
	datad => \inst|yfsm.s4~regout\,
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y8_N14
\inst4|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~4_combout\ = (!\inst|WideOr3~combout\ & (\inst|WideOr2~0_combout\ $ (((!\inst|yfsm.s1~regout\ & !\inst|yfsm.s3~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~combout\,
	datab => \inst|WideOr2~0_combout\,
	datac => \inst|yfsm.s1~regout\,
	datad => \inst|yfsm.s3~regout\,
	combout => \inst4|Mux0~4_combout\);

-- Location: LCCOMB_X1_Y8_N12
\inst4|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~4_combout\ = (\inst|WideOr3~combout\ & (!\inst|WideOr2~0_combout\ & (!\inst|yfsm.s1~regout\ & !\inst|yfsm.s3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~combout\,
	datab => \inst|WideOr2~0_combout\,
	datac => \inst|yfsm.s1~regout\,
	datad => \inst|yfsm.s3~regout\,
	combout => \inst4|Mux1~4_combout\);

-- Location: LCCOMB_X1_Y8_N24
\inst|WideOr4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr4~combout\ = (\inst|yfsm.s1~regout\) # (\inst|yfsm.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|yfsm.s1~regout\,
	datad => \inst|yfsm.s3~regout\,
	combout => \inst|WideOr4~combout\);

-- Location: LCCOMB_X1_Y8_N10
\inst4|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux2~4_combout\ = (\inst|WideOr3~combout\ & (!\inst|yfsm.s4~regout\ & (!\inst|WideOr4~combout\ & !\inst|yfsm.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~combout\,
	datab => \inst|yfsm.s4~regout\,
	datac => \inst|WideOr4~combout\,
	datad => \inst|yfsm.s6~regout\,
	combout => \inst4|Mux2~4_combout\);

-- Location: LCCOMB_X5_Y12_N26
\inst|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (\inst|yfsm.s4~regout\ & ((\data_in~combout\))) # (!\inst|yfsm.s4~regout\ & (\inst|yfsm.s5~regout\ & !\data_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s4~regout\,
	datac => \inst|yfsm.s5~regout\,
	datad => \data_in~combout\,
	combout => \inst|Selector5~0_combout\);

-- Location: LCFF_X5_Y12_N27
\inst|yfsm.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Selector5~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s5~regout\);

-- Location: LCCOMB_X1_Y8_N2
\inst4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst|yfsm.s5~regout\) # ((\inst|WideOr4~combout\ & (\inst|WideOr2~0_combout\ $ (\inst|WideOr3~combout\))) # (!\inst|WideOr4~combout\ & (!\inst|WideOr2~0_combout\ & !\inst|WideOr3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr4~combout\,
	datab => \inst|WideOr2~0_combout\,
	datac => \inst|WideOr3~combout\,
	datad => \inst|yfsm.s5~regout\,
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y8_N8
\inst4|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux4~3_combout\ = (\inst|yfsm.s6~regout\ & (!\inst|yfsm.s2~regout\ & !\inst|yfsm.s4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s6~regout\,
	datac => \inst|yfsm.s2~regout\,
	datad => \inst|yfsm.s4~regout\,
	combout => \inst4|Mux4~3_combout\);

-- Location: LCCOMB_X1_Y8_N30
\inst4|Mux4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux4~12_combout\ = (\inst|yfsm.s1~regout\) # ((\inst|yfsm.s5~regout\) # ((\inst4|Mux4~3_combout\) # (\inst|yfsm.s3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s1~regout\,
	datab => \inst|yfsm.s5~regout\,
	datac => \inst4|Mux4~3_combout\,
	datad => \inst|yfsm.s3~regout\,
	combout => \inst4|Mux4~12_combout\);

-- Location: LCCOMB_X1_Y8_N0
\inst4|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux5~4_combout\ = (\inst|yfsm.s1~regout\) # ((\inst|yfsm.s3~regout\) # ((\inst|WideOr3~combout\ & \inst|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~combout\,
	datab => \inst|WideOr2~0_combout\,
	datac => \inst|yfsm.s1~regout\,
	datad => \inst|yfsm.s3~regout\,
	combout => \inst4|Mux5~4_combout\);

-- Location: LCCOMB_X1_Y8_N28
\inst4|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (\inst|yfsm.s5~regout\) # ((\inst|WideOr2~0_combout\ & ((\inst|WideOr3~combout\))) # (!\inst|WideOr2~0_combout\ & ((!\inst|WideOr3~combout\) # (!\inst|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr4~combout\,
	datab => \inst|WideOr2~0_combout\,
	datac => \inst|WideOr3~combout\,
	datad => \inst|yfsm.s5~regout\,
	combout => \inst4|Mux6~0_combout\);

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reg_B[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Reg_B(6),
	combout => \Reg_B~combout\(6));

-- Location: LCFF_X2_Y12_N29
\inst6|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Reg_B~combout\(6),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|Q\(6));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reg_B[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Reg_B(5),
	combout => \Reg_B~combout\(5));

-- Location: LCFF_X2_Y12_N27
\inst6|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Reg_B~combout\(5),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|Q\(5));

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reg_A[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Reg_A(4),
	combout => \Reg_A~combout\(4));

-- Location: LCFF_X2_Y12_N9
\inst5|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Reg_A~combout\(4),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|Q\(4));

-- Location: LCCOMB_X2_Y12_N8
\inst8|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add1~8_combout\ = ((\inst6|Q\(4) $ (\inst5|Q\(4) $ (\inst8|Add1~7\)))) # (GND)
-- \inst8|Add1~9\ = CARRY((\inst6|Q\(4) & (\inst5|Q\(4) & !\inst8|Add1~7\)) # (!\inst6|Q\(4) & ((\inst5|Q\(4)) # (!\inst8|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Q\(4),
	datab => \inst5|Q\(4),
	datad => VCC,
	cin => \inst8|Add1~7\,
	combout => \inst8|Add1~8_combout\,
	cout => \inst8|Add1~9\);

-- Location: LCCOMB_X2_Y12_N10
\inst8|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add1~10_combout\ = (\inst5|Q\(5) & ((\inst6|Q\(5) & (!\inst8|Add1~9\)) # (!\inst6|Q\(5) & (\inst8|Add1~9\ & VCC)))) # (!\inst5|Q\(5) & ((\inst6|Q\(5) & ((\inst8|Add1~9\) # (GND))) # (!\inst6|Q\(5) & (!\inst8|Add1~9\))))
-- \inst8|Add1~11\ = CARRY((\inst5|Q\(5) & (\inst6|Q\(5) & !\inst8|Add1~9\)) # (!\inst5|Q\(5) & ((\inst6|Q\(5)) # (!\inst8|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(5),
	datab => \inst6|Q\(5),
	datad => VCC,
	cin => \inst8|Add1~9\,
	combout => \inst8|Add1~10_combout\,
	cout => \inst8|Add1~11\);

-- Location: LCCOMB_X2_Y12_N12
\inst8|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add1~12_combout\ = ((\inst5|Q\(6) $ (\inst6|Q\(6) $ (\inst8|Add1~11\)))) # (GND)
-- \inst8|Add1~13\ = CARRY((\inst5|Q\(6) & ((!\inst8|Add1~11\) # (!\inst6|Q\(6)))) # (!\inst5|Q\(6) & (!\inst6|Q\(6) & !\inst8|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(6),
	datab => \inst6|Q\(6),
	datad => VCC,
	cin => \inst8|Add1~11\,
	combout => \inst8|Add1~12_combout\,
	cout => \inst8|Add1~13\);

-- Location: LCCOMB_X1_Y12_N6
\inst8|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux1~0_combout\ = (\inst5|Q\(6) & ((\inst6|Q\(6) & (!\inst8|Result[3]~1_combout\ & \inst8|Result[3]~0_combout\)) # (!\inst6|Q\(6) & (\inst8|Result[3]~1_combout\ $ (!\inst8|Result[3]~0_combout\))))) # (!\inst5|Q\(6) & (\inst8|Result[3]~0_combout\ $ 
-- (((!\inst8|Result[3]~1_combout\) # (!\inst6|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(6),
	datab => \inst6|Q\(6),
	datac => \inst8|Result[3]~1_combout\,
	datad => \inst8|Result[3]~0_combout\,
	combout => \inst8|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y12_N16
\inst8|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux1~1_combout\ = (\inst8|Result[3]~2_combout\ & (((\inst8|Mux1~0_combout\)))) # (!\inst8|Result[3]~2_combout\ & (((\inst8|Add1~12_combout\)) # (!\inst8|Result[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result[3]~3_combout\,
	datab => \inst8|Result[3]~2_combout\,
	datac => \inst8|Add1~12_combout\,
	datad => \inst8|Mux1~0_combout\,
	combout => \inst8|Mux1~1_combout\);

-- Location: LCCOMB_X2_Y12_N24
\inst8|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add0~8_combout\ = ((\inst6|Q\(4) $ (\inst5|Q\(4) $ (!\inst8|Add0~7\)))) # (GND)
-- \inst8|Add0~9\ = CARRY((\inst6|Q\(4) & ((\inst5|Q\(4)) # (!\inst8|Add0~7\))) # (!\inst6|Q\(4) & (\inst5|Q\(4) & !\inst8|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Q\(4),
	datab => \inst5|Q\(4),
	datad => VCC,
	cin => \inst8|Add0~7\,
	combout => \inst8|Add0~8_combout\,
	cout => \inst8|Add0~9\);

-- Location: LCCOMB_X2_Y12_N26
\inst8|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add0~10_combout\ = (\inst5|Q\(5) & ((\inst6|Q\(5) & (\inst8|Add0~9\ & VCC)) # (!\inst6|Q\(5) & (!\inst8|Add0~9\)))) # (!\inst5|Q\(5) & ((\inst6|Q\(5) & (!\inst8|Add0~9\)) # (!\inst6|Q\(5) & ((\inst8|Add0~9\) # (GND)))))
-- \inst8|Add0~11\ = CARRY((\inst5|Q\(5) & (!\inst6|Q\(5) & !\inst8|Add0~9\)) # (!\inst5|Q\(5) & ((!\inst8|Add0~9\) # (!\inst6|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(5),
	datab => \inst6|Q\(5),
	datad => VCC,
	cin => \inst8|Add0~9\,
	combout => \inst8|Add0~10_combout\,
	cout => \inst8|Add0~11\);

-- Location: LCCOMB_X2_Y12_N28
\inst8|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add0~12_combout\ = ((\inst5|Q\(6) $ (\inst6|Q\(6) $ (!\inst8|Add0~11\)))) # (GND)
-- \inst8|Add0~13\ = CARRY((\inst5|Q\(6) & ((\inst6|Q\(6)) # (!\inst8|Add0~11\))) # (!\inst5|Q\(6) & (\inst6|Q\(6) & !\inst8|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(6),
	datab => \inst6|Q\(6),
	datad => VCC,
	cin => \inst8|Add0~11\,
	combout => \inst8|Add0~12_combout\,
	cout => \inst8|Add0~13\);

-- Location: LCCOMB_X1_Y12_N30
\inst8|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux1~2_combout\ = (\inst8|Result[3]~3_combout\) # ((\inst8|Result[3]~2_combout\ & (!\inst5|Q\(6))) # (!\inst8|Result[3]~2_combout\ & ((\inst8|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(6),
	datab => \inst8|Result[3]~3_combout\,
	datac => \inst8|Result[3]~2_combout\,
	datad => \inst8|Add0~12_combout\,
	combout => \inst8|Mux1~2_combout\);

-- Location: LCCOMB_X1_Y12_N12
\inst8|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux1~3_combout\ = (\inst8|Result[3]~0_combout\ & (\inst8|Mux1~0_combout\)) # (!\inst8|Result[3]~0_combout\ & ((\inst8|Result[3]~1_combout\ & (\inst8|Mux1~0_combout\)) # (!\inst8|Result[3]~1_combout\ & ((\inst8|Mux1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Mux1~0_combout\,
	datab => \inst8|Result[3]~0_combout\,
	datac => \inst8|Result[3]~1_combout\,
	datad => \inst8|Mux1~2_combout\,
	combout => \inst8|Mux1~3_combout\);

-- Location: LCCOMB_X1_Y12_N10
\inst8|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux1~4_combout\ = (\inst8|Mux1~3_combout\ & ((\inst8|Result[3]~0_combout\) # ((\inst8|Result[3]~1_combout\) # (\inst8|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result[3]~0_combout\,
	datab => \inst8|Result[3]~1_combout\,
	datac => \inst8|Mux1~1_combout\,
	datad => \inst8|Mux1~3_combout\,
	combout => \inst8|Mux1~4_combout\);

-- Location: LCCOMB_X1_Y12_N26
\inst8|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux1~5_combout\ = (\inst3|Mux0~0_combout\ & ((\inst5|Q\(6)) # ((\inst6|Q\(6))))) # (!\inst3|Mux0~0_combout\ & (((\inst8|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(6),
	datab => \inst6|Q\(6),
	datac => \inst3|Mux0~0_combout\,
	datad => \inst8|Mux1~4_combout\,
	combout => \inst8|Mux1~5_combout\);

-- Location: LCFF_X1_Y12_N27
\inst8|Result[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst8|Mux1~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \Enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Result\(6));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reg_B[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Reg_B(4),
	combout => \Reg_B~combout\(4));

-- Location: LCFF_X2_Y12_N25
\inst6|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Reg_B~combout\(4),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|Q\(4));

-- Location: LCCOMB_X1_Y12_N14
\inst8|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux3~0_combout\ = (\inst6|Q\(4) & ((\inst5|Q\(4) & (!\inst8|Result[3]~1_combout\ & \inst8|Result[3]~0_combout\)) # (!\inst5|Q\(4) & (\inst8|Result[3]~1_combout\ $ (!\inst8|Result[3]~0_combout\))))) # (!\inst6|Q\(4) & (\inst8|Result[3]~0_combout\ $ 
-- (((!\inst8|Result[3]~1_combout\) # (!\inst5|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Q\(4),
	datab => \inst5|Q\(4),
	datac => \inst8|Result[3]~1_combout\,
	datad => \inst8|Result[3]~0_combout\,
	combout => \inst8|Mux3~0_combout\);

-- Location: LCCOMB_X4_Y12_N22
\inst8|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux3~3_combout\ = ((\inst8|Result[3]~3_combout\) # (!\inst8|Result[3]~2_combout\)) # (!\inst5|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Q\(4),
	datac => \inst8|Result[3]~3_combout\,
	datad => \inst8|Result[3]~2_combout\,
	combout => \inst8|Mux3~3_combout\);

-- Location: LCCOMB_X1_Y12_N0
\inst8|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux3~1_combout\ = (\inst8|Result[3]~3_combout\ & (\inst8|Add1~8_combout\)) # (!\inst8|Result[3]~3_combout\ & ((\inst8|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Result[3]~3_combout\,
	datac => \inst8|Add1~8_combout\,
	datad => \inst8|Add0~8_combout\,
	combout => \inst8|Mux3~1_combout\);

-- Location: LCCOMB_X1_Y12_N2
\inst8|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux3~2_combout\ = (\inst8|Result[3]~2_combout\ & (((\inst8|Mux3~0_combout\)))) # (!\inst8|Result[3]~2_combout\ & ((\inst8|Result[3]~1_combout\ & (\inst8|Mux3~0_combout\)) # (!\inst8|Result[3]~1_combout\ & ((\inst8|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result[3]~2_combout\,
	datab => \inst8|Result[3]~1_combout\,
	datac => \inst8|Mux3~0_combout\,
	datad => \inst8|Mux3~1_combout\,
	combout => \inst8|Mux3~2_combout\);

-- Location: LCCOMB_X1_Y12_N28
\inst8|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux3~4_combout\ = (\inst8|Result[3]~0_combout\ & (\inst8|Mux3~0_combout\)) # (!\inst8|Result[3]~0_combout\ & (((\inst8|Mux3~3_combout\ & \inst8|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result[3]~0_combout\,
	datab => \inst8|Mux3~0_combout\,
	datac => \inst8|Mux3~3_combout\,
	datad => \inst8|Mux3~2_combout\,
	combout => \inst8|Mux3~4_combout\);

-- Location: LCCOMB_X1_Y12_N4
\inst8|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux3~5_combout\ = (\inst3|Mux0~0_combout\ & ((\inst5|Q\(4)) # ((\inst6|Q\(4))))) # (!\inst3|Mux0~0_combout\ & (((\inst8|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst5|Q\(4),
	datac => \inst6|Q\(4),
	datad => \inst8|Mux3~4_combout\,
	combout => \inst8|Mux3~5_combout\);

-- Location: LCFF_X1_Y12_N5
\inst8|Result[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst8|Mux3~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \Enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Result\(4));

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reg_A[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Reg_A(7),
	combout => \Reg_A~combout\(7));

-- Location: LCFF_X2_Y12_N15
\inst5|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Reg_A~combout\(7),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|Q\(7));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reg_B[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Reg_B(7),
	combout => \Reg_B~combout\(7));

-- Location: LCFF_X2_Y12_N31
\inst6|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Reg_B~combout\(7),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|Q\(7));

-- Location: LCCOMB_X1_Y12_N8
\inst8|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux0~5_combout\ = (\inst6|Q\(7) & (\inst8|Result[3]~1_combout\ $ (((\inst5|Q\(7)) # (!\inst8|Result[3]~0_combout\))))) # (!\inst6|Q\(7) & (\inst8|Result[3]~0_combout\ $ (((!\inst5|Q\(7)) # (!\inst8|Result[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Q\(7),
	datab => \inst8|Result[3]~1_combout\,
	datac => \inst5|Q\(7),
	datad => \inst8|Result[3]~0_combout\,
	combout => \inst8|Mux0~5_combout\);

-- Location: LCCOMB_X2_Y12_N14
\inst8|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add1~14_combout\ = \inst5|Q\(7) $ (\inst8|Add1~13\ $ (!\inst6|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Q\(7),
	datad => \inst6|Q\(7),
	cin => \inst8|Add1~13\,
	combout => \inst8|Add1~14_combout\);

-- Location: LCCOMB_X1_Y12_N24
\inst8|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux0~2_combout\ = (\inst8|Result[3]~2_combout\ & (((!\inst6|Q\(7) & \inst8|Result[3]~3_combout\)) # (!\inst5|Q\(7)))) # (!\inst8|Result[3]~2_combout\ & (((\inst8|Result[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Q\(7),
	datab => \inst5|Q\(7),
	datac => \inst8|Result[3]~3_combout\,
	datad => \inst8|Result[3]~2_combout\,
	combout => \inst8|Mux0~2_combout\);

-- Location: LCCOMB_X2_Y12_N30
\inst8|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Add0~14_combout\ = \inst5|Q\(7) $ (\inst8|Add0~13\ $ (\inst6|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Q\(7),
	datad => \inst6|Q\(7),
	cin => \inst8|Add0~13\,
	combout => \inst8|Add0~14_combout\);

-- Location: LCCOMB_X1_Y12_N22
\inst8|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux0~3_combout\ = (\inst8|Result[3]~2_combout\ & (((\inst8|Mux0~2_combout\)))) # (!\inst8|Result[3]~2_combout\ & ((\inst8|Mux0~2_combout\ & (\inst8|Add1~14_combout\)) # (!\inst8|Mux0~2_combout\ & ((\inst8|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result[3]~2_combout\,
	datab => \inst8|Add1~14_combout\,
	datac => \inst8|Mux0~2_combout\,
	datad => \inst8|Add0~14_combout\,
	combout => \inst8|Mux0~3_combout\);

-- Location: LCCOMB_X1_Y12_N18
\inst8|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux0~6_combout\ = (\inst8|Mux0~5_combout\ & ((\inst8|Result[3]~0_combout\) # ((\inst8|Result[3]~1_combout\) # (\inst8|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result[3]~0_combout\,
	datab => \inst8|Result[3]~1_combout\,
	datac => \inst8|Mux0~5_combout\,
	datad => \inst8|Mux0~3_combout\,
	combout => \inst8|Mux0~6_combout\);

-- Location: LCCOMB_X1_Y12_N20
\inst8|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux0~4_combout\ = (\inst3|Mux0~0_combout\ & ((\inst5|Q\(7)) # ((\inst6|Q\(7))))) # (!\inst3|Mux0~0_combout\ & (((\inst8|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux0~0_combout\,
	datab => \inst5|Q\(7),
	datac => \inst6|Q\(7),
	datad => \inst8|Mux0~6_combout\,
	combout => \inst8|Mux0~4_combout\);

-- Location: LCFF_X1_Y12_N21
\inst8|Result[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst8|Mux0~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \Enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Result\(7));

-- Location: LCCOMB_X3_Y12_N14
\inst8|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux2~0_combout\ = (\inst5|Q\(5) & ((\inst8|Result[3]~0_combout\ & (\inst6|Q\(5) $ (\inst8|Result[3]~1_combout\))) # (!\inst8|Result[3]~0_combout\ & (!\inst6|Q\(5) & !\inst8|Result[3]~1_combout\)))) # (!\inst5|Q\(5) & (\inst8|Result[3]~0_combout\ $ 
-- (((!\inst8|Result[3]~1_combout\) # (!\inst6|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(5),
	datab => \inst8|Result[3]~0_combout\,
	datac => \inst6|Q\(5),
	datad => \inst8|Result[3]~1_combout\,
	combout => \inst8|Mux2~0_combout\);

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reg_A[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_Reg_A(5),
	combout => \Reg_A~combout\(5));

-- Location: LCFF_X2_Y12_N11
\inst5|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Reg_A~combout\(5),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|Q\(5));

-- Location: LCCOMB_X3_Y12_N2
\inst8|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux2~2_combout\ = (\inst5|Q\(5) & ((\inst6|Q\(5)) # ((\inst8|Result[3]~2_combout\ & \inst8|Result[3]~3_combout\)))) # (!\inst5|Q\(5) & (\inst8|Result[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result[3]~2_combout\,
	datab => \inst8|Result[3]~3_combout\,
	datac => \inst6|Q\(5),
	datad => \inst5|Q\(5),
	combout => \inst8|Mux2~2_combout\);

-- Location: LCCOMB_X3_Y12_N24
\inst8|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux2~1_combout\ = (\inst8|Result[3]~3_combout\ & ((\inst8|Add1~10_combout\))) # (!\inst8|Result[3]~3_combout\ & (\inst8|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Add0~10_combout\,
	datac => \inst8|Result[3]~3_combout\,
	datad => \inst8|Add1~10_combout\,
	combout => \inst8|Mux2~1_combout\);

-- Location: LCCOMB_X3_Y12_N0
\inst8|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux2~3_combout\ = (\inst8|Mux2~2_combout\ & ((\inst8|Mux2~0_combout\) # ((!\inst8|Result[3]~2_combout\ & \inst8|Mux2~1_combout\)))) # (!\inst8|Mux2~2_combout\ & (!\inst8|Result[3]~2_combout\ & (\inst8|Mux2~1_combout\ & \inst8|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result[3]~2_combout\,
	datab => \inst8|Mux2~2_combout\,
	datac => \inst8|Mux2~1_combout\,
	datad => \inst8|Mux2~0_combout\,
	combout => \inst8|Mux2~3_combout\);

-- Location: LCCOMB_X3_Y12_N18
\inst8|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux2~4_combout\ = (\inst8|Result[3]~1_combout\ & (\inst8|Mux2~0_combout\)) # (!\inst8|Result[3]~1_combout\ & ((\inst8|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result[3]~1_combout\,
	datac => \inst8|Mux2~0_combout\,
	datad => \inst8|Mux2~3_combout\,
	combout => \inst8|Mux2~4_combout\);

-- Location: LCCOMB_X3_Y12_N8
\inst8|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux2~5_combout\ = (\inst3|Mux0~0_combout\ & ((\inst5|Q\(5)) # ((\inst6|Q\(5))))) # (!\inst3|Mux0~0_combout\ & (((\inst8|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Q\(5),
	datab => \inst6|Q\(5),
	datac => \inst3|Mux0~0_combout\,
	datad => \inst8|Mux2~4_combout\,
	combout => \inst8|Mux2~5_combout\);

-- Location: LCFF_X3_Y12_N9
\inst8|Result[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst8|Mux2~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \Enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|Result\(5));

-- Location: LCCOMB_X1_Y15_N8
\inst7|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst8|Result\(6) & (!\inst8|Result\(5) & (\inst8|Result\(4) $ (!\inst8|Result\(7))))) # (!\inst8|Result\(6) & (\inst8|Result\(4) & (\inst8|Result\(7) $ (!\inst8|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result\(6),
	datab => \inst8|Result\(4),
	datac => \inst8|Result\(7),
	datad => \inst8|Result\(5),
	combout => \inst7|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y15_N30
\inst7|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux1~0_combout\ = (\inst8|Result\(7) & ((\inst8|Result\(4) & ((\inst8|Result\(5)))) # (!\inst8|Result\(4) & (\inst8|Result\(6))))) # (!\inst8|Result\(7) & (\inst8|Result\(6) & (\inst8|Result\(4) $ (\inst8|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result\(6),
	datab => \inst8|Result\(4),
	datac => \inst8|Result\(7),
	datad => \inst8|Result\(5),
	combout => \inst7|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y15_N12
\inst7|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux2~0_combout\ = (\inst8|Result\(6) & (\inst8|Result\(7) & ((\inst8|Result\(5)) # (!\inst8|Result\(4))))) # (!\inst8|Result\(6) & (!\inst8|Result\(4) & (!\inst8|Result\(7) & \inst8|Result\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result\(6),
	datab => \inst8|Result\(4),
	datac => \inst8|Result\(7),
	datad => \inst8|Result\(5),
	combout => \inst7|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y15_N2
\inst7|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux3~0_combout\ = (\inst8|Result\(4) & (\inst8|Result\(6) $ (((!\inst8|Result\(5)))))) # (!\inst8|Result\(4) & ((\inst8|Result\(6) & (!\inst8|Result\(7) & !\inst8|Result\(5))) # (!\inst8|Result\(6) & (\inst8|Result\(7) & \inst8|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result\(6),
	datab => \inst8|Result\(4),
	datac => \inst8|Result\(7),
	datad => \inst8|Result\(5),
	combout => \inst7|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y15_N0
\inst7|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux4~0_combout\ = (\inst8|Result\(5) & (((\inst8|Result\(4) & !\inst8|Result\(7))))) # (!\inst8|Result\(5) & ((\inst8|Result\(6) & ((!\inst8|Result\(7)))) # (!\inst8|Result\(6) & (\inst8|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result\(6),
	datab => \inst8|Result\(4),
	datac => \inst8|Result\(7),
	datad => \inst8|Result\(5),
	combout => \inst7|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y15_N14
\inst7|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux5~0_combout\ = (\inst8|Result\(6) & (\inst8|Result\(4) & (\inst8|Result\(7) $ (\inst8|Result\(5))))) # (!\inst8|Result\(6) & (!\inst8|Result\(7) & ((\inst8|Result\(4)) # (\inst8|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result\(6),
	datab => \inst8|Result\(4),
	datac => \inst8|Result\(7),
	datad => \inst8|Result\(5),
	combout => \inst7|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y15_N20
\inst7|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux6~0_combout\ = (\inst8|Result\(4) & ((\inst8|Result\(7)) # (\inst8|Result\(6) $ (\inst8|Result\(5))))) # (!\inst8|Result\(4) & ((\inst8|Result\(5)) # (\inst8|Result\(6) $ (\inst8|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Result\(6),
	datab => \inst8|Result\(4),
	datac => \inst8|Result\(7),
	datad => \inst8|Result\(5),
	combout => \inst7|Mux6~0_combout\);

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bottom_half[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst9|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bottom_half(6));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bottom_half[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst9|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bottom_half(5));

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bottom_half[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst9|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bottom_half(4));

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bottom_half[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst9|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bottom_half(3));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bottom_half[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst9|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bottom_half(2));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bottom_half[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst9|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bottom_half(1));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\bottom_half[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst9|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_bottom_half(0));

-- Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst4|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(6));

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst4|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(5));

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst4|Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(4));

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(3));

-- Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst4|Mux4~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(2));

-- Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst4|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(1));

-- Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst4|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(0));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_half[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst7|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_half(6));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_half[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst7|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_half(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_half[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst7|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_half(4));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_half[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst7|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_half(3));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_half[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst7|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_half(2));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_half[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst7|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_half(1));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\top_half[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \inst7|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_top_half(0));
END structure;


