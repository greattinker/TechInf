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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/01/2013 17:21:36"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Schieber IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	ld : OUT std_logic_vector(9 DOWNTO 0)
	);
END Schieber;

-- Design Ports Information
-- ld[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ld[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ld[2]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ld[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ld[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ld[5]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ld[6]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ld[7]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ld[8]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ld[9]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Schieber IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_ld : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \custom_clk|Add0~6_combout\ : std_logic;
SIGNAL \custom_clk|Add0~16_combout\ : std_logic;
SIGNAL \custom_clk|Add0~20_combout\ : std_logic;
SIGNAL \custom_clk|Add0~28_combout\ : std_logic;
SIGNAL \custom_clk|Add0~34_combout\ : std_logic;
SIGNAL \custom_clk|Add0~36_combout\ : std_logic;
SIGNAL \custom_clk|Add0~38_combout\ : std_logic;
SIGNAL \custom_clk|Add0~40_combout\ : std_logic;
SIGNAL \custom_clk|Equal0~0_combout\ : std_logic;
SIGNAL \custom_clk|Equal0~6_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \ld[0]~output_o\ : std_logic;
SIGNAL \ld[1]~output_o\ : std_logic;
SIGNAL \ld[2]~output_o\ : std_logic;
SIGNAL \ld[3]~output_o\ : std_logic;
SIGNAL \ld[4]~output_o\ : std_logic;
SIGNAL \ld[5]~output_o\ : std_logic;
SIGNAL \ld[6]~output_o\ : std_logic;
SIGNAL \ld[7]~output_o\ : std_logic;
SIGNAL \ld[8]~output_o\ : std_logic;
SIGNAL \ld[9]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \state~1_combout\ : std_logic;
SIGNAL \custom_clk|Add0~0_combout\ : std_logic;
SIGNAL \custom_clk|counter~1_combout\ : std_logic;
SIGNAL \custom_clk|Add0~1\ : std_logic;
SIGNAL \custom_clk|Add0~2_combout\ : std_logic;
SIGNAL \custom_clk|Add0~3\ : std_logic;
SIGNAL \custom_clk|Add0~4_combout\ : std_logic;
SIGNAL \custom_clk|Equal0~2_combout\ : std_logic;
SIGNAL \custom_clk|counter~4_combout\ : std_logic;
SIGNAL \custom_clk|Add0~5\ : std_logic;
SIGNAL \custom_clk|Add0~7\ : std_logic;
SIGNAL \custom_clk|Add0~8_combout\ : std_logic;
SIGNAL \custom_clk|Add0~9\ : std_logic;
SIGNAL \custom_clk|Add0~10_combout\ : std_logic;
SIGNAL \custom_clk|Add0~11\ : std_logic;
SIGNAL \custom_clk|Add0~12_combout\ : std_logic;
SIGNAL \custom_clk|Add0~13\ : std_logic;
SIGNAL \custom_clk|Add0~14_combout\ : std_logic;
SIGNAL \custom_clk|counter~0_combout\ : std_logic;
SIGNAL \custom_clk|Add0~15\ : std_logic;
SIGNAL \custom_clk|Add0~17\ : std_logic;
SIGNAL \custom_clk|Add0~18_combout\ : std_logic;
SIGNAL \custom_clk|Add0~19\ : std_logic;
SIGNAL \custom_clk|Add0~21\ : std_logic;
SIGNAL \custom_clk|Add0~22_combout\ : std_logic;
SIGNAL \custom_clk|Add0~23\ : std_logic;
SIGNAL \custom_clk|Add0~24_combout\ : std_logic;
SIGNAL \custom_clk|counter~2_combout\ : std_logic;
SIGNAL \custom_clk|Add0~25\ : std_logic;
SIGNAL \custom_clk|Add0~26_combout\ : std_logic;
SIGNAL \custom_clk|counter~3_combout\ : std_logic;
SIGNAL \custom_clk|Add0~27\ : std_logic;
SIGNAL \custom_clk|Add0~29\ : std_logic;
SIGNAL \custom_clk|Add0~30_combout\ : std_logic;
SIGNAL \custom_clk|counter~5_combout\ : std_logic;
SIGNAL \custom_clk|Equal0~3_combout\ : std_logic;
SIGNAL \custom_clk|Equal0~1_combout\ : std_logic;
SIGNAL \custom_clk|Equal0~4_combout\ : std_logic;
SIGNAL \custom_clk|Add0~31\ : std_logic;
SIGNAL \custom_clk|Add0~32_combout\ : std_logic;
SIGNAL \custom_clk|counter~6_combout\ : std_logic;
SIGNAL \custom_clk|counter~7_combout\ : std_logic;
SIGNAL \custom_clk|Equal0~5_combout\ : std_logic;
SIGNAL \custom_clk|counter~8_combout\ : std_logic;
SIGNAL \custom_clk|Add0~33\ : std_logic;
SIGNAL \custom_clk|Add0~35\ : std_logic;
SIGNAL \custom_clk|Add0~37\ : std_logic;
SIGNAL \custom_clk|Add0~39\ : std_logic;
SIGNAL \custom_clk|Add0~41\ : std_logic;
SIGNAL \custom_clk|Add0~42_combout\ : std_logic;
SIGNAL \custom_clk|counter~9_combout\ : std_logic;
SIGNAL \custom_clk|Add0~43\ : std_logic;
SIGNAL \custom_clk|Add0~44_combout\ : std_logic;
SIGNAL \custom_clk|counter~10_combout\ : std_logic;
SIGNAL \custom_clk|Add0~45\ : std_logic;
SIGNAL \custom_clk|Add0~46_combout\ : std_logic;
SIGNAL \custom_clk|counter~11_combout\ : std_logic;
SIGNAL \custom_clk|Add0~47\ : std_logic;
SIGNAL \custom_clk|Add0~49\ : std_logic;
SIGNAL \custom_clk|Add0~51\ : std_logic;
SIGNAL \custom_clk|Add0~52_combout\ : std_logic;
SIGNAL \custom_clk|Add0~50_combout\ : std_logic;
SIGNAL \custom_clk|counter~12_combout\ : std_logic;
SIGNAL \custom_clk|Add0~48_combout\ : std_logic;
SIGNAL \custom_clk|Equal0~7_combout\ : std_logic;
SIGNAL \custom_clk|Equal0~8_combout\ : std_logic;
SIGNAL \custom_clk|state~q\ : std_logic;
SIGNAL \state[1]~2_combout\ : std_logic;
SIGNAL \state~3_combout\ : std_logic;
SIGNAL \state~4_combout\ : std_logic;
SIGNAL \state~5_combout\ : std_logic;
SIGNAL \state~6_combout\ : std_logic;
SIGNAL \state~7_combout\ : std_logic;
SIGNAL \state~8_combout\ : std_logic;
SIGNAL \state~9_combout\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \state~0_combout\ : std_logic;
SIGNAL state : std_logic_vector(9 DOWNTO 0);
SIGNAL \custom_clk|counter\ : std_logic_vector(26 DOWNTO 0);
SIGNAL ALT_INV_state : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ld <= ww_ld;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
ALT_INV_state(0) <= NOT state(0);

-- Location: LCCOMB_X21_Y17_N12
\custom_clk|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~6_combout\ = (\custom_clk|counter\(3) & (!\custom_clk|Add0~5\)) # (!\custom_clk|counter\(3) & ((\custom_clk|Add0~5\) # (GND)))
-- \custom_clk|Add0~7\ = CARRY((!\custom_clk|Add0~5\) # (!\custom_clk|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|counter\(3),
	datad => VCC,
	cin => \custom_clk|Add0~5\,
	combout => \custom_clk|Add0~6_combout\,
	cout => \custom_clk|Add0~7\);

-- Location: LCCOMB_X21_Y17_N22
\custom_clk|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~16_combout\ = (\custom_clk|counter\(8) & (\custom_clk|Add0~15\ $ (GND))) # (!\custom_clk|counter\(8) & (!\custom_clk|Add0~15\ & VCC))
-- \custom_clk|Add0~17\ = CARRY((\custom_clk|counter\(8) & !\custom_clk|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|counter\(8),
	datad => VCC,
	cin => \custom_clk|Add0~15\,
	combout => \custom_clk|Add0~16_combout\,
	cout => \custom_clk|Add0~17\);

-- Location: LCCOMB_X21_Y17_N26
\custom_clk|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~20_combout\ = (\custom_clk|counter\(10) & (\custom_clk|Add0~19\ $ (GND))) # (!\custom_clk|counter\(10) & (!\custom_clk|Add0~19\ & VCC))
-- \custom_clk|Add0~21\ = CARRY((\custom_clk|counter\(10) & !\custom_clk|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|counter\(10),
	datad => VCC,
	cin => \custom_clk|Add0~19\,
	combout => \custom_clk|Add0~20_combout\,
	cout => \custom_clk|Add0~21\);

-- Location: LCCOMB_X21_Y16_N2
\custom_clk|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~28_combout\ = (\custom_clk|counter\(14) & (\custom_clk|Add0~27\ $ (GND))) # (!\custom_clk|counter\(14) & (!\custom_clk|Add0~27\ & VCC))
-- \custom_clk|Add0~29\ = CARRY((\custom_clk|counter\(14) & !\custom_clk|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|counter\(14),
	datad => VCC,
	cin => \custom_clk|Add0~27\,
	combout => \custom_clk|Add0~28_combout\,
	cout => \custom_clk|Add0~29\);

-- Location: LCCOMB_X21_Y16_N8
\custom_clk|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~34_combout\ = (\custom_clk|counter\(17) & (!\custom_clk|Add0~33\)) # (!\custom_clk|counter\(17) & ((\custom_clk|Add0~33\) # (GND)))
-- \custom_clk|Add0~35\ = CARRY((!\custom_clk|Add0~33\) # (!\custom_clk|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|counter\(17),
	datad => VCC,
	cin => \custom_clk|Add0~33\,
	combout => \custom_clk|Add0~34_combout\,
	cout => \custom_clk|Add0~35\);

-- Location: LCCOMB_X21_Y16_N10
\custom_clk|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~36_combout\ = (\custom_clk|counter\(18) & (\custom_clk|Add0~35\ $ (GND))) # (!\custom_clk|counter\(18) & (!\custom_clk|Add0~35\ & VCC))
-- \custom_clk|Add0~37\ = CARRY((\custom_clk|counter\(18) & !\custom_clk|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|counter\(18),
	datad => VCC,
	cin => \custom_clk|Add0~35\,
	combout => \custom_clk|Add0~36_combout\,
	cout => \custom_clk|Add0~37\);

-- Location: LCCOMB_X21_Y16_N12
\custom_clk|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~38_combout\ = (\custom_clk|counter\(19) & (!\custom_clk|Add0~37\)) # (!\custom_clk|counter\(19) & ((\custom_clk|Add0~37\) # (GND)))
-- \custom_clk|Add0~39\ = CARRY((!\custom_clk|Add0~37\) # (!\custom_clk|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|counter\(19),
	datad => VCC,
	cin => \custom_clk|Add0~37\,
	combout => \custom_clk|Add0~38_combout\,
	cout => \custom_clk|Add0~39\);

-- Location: LCCOMB_X21_Y16_N14
\custom_clk|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~40_combout\ = (\custom_clk|counter\(20) & (\custom_clk|Add0~39\ $ (GND))) # (!\custom_clk|counter\(20) & (!\custom_clk|Add0~39\ & VCC))
-- \custom_clk|Add0~41\ = CARRY((\custom_clk|counter\(20) & !\custom_clk|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|counter\(20),
	datad => VCC,
	cin => \custom_clk|Add0~39\,
	combout => \custom_clk|Add0~40_combout\,
	cout => \custom_clk|Add0~41\);

-- Location: FF_X21_Y17_N27
\custom_clk|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(10));

-- Location: FF_X21_Y17_N23
\custom_clk|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(8));

-- Location: LCCOMB_X21_Y17_N0
\custom_clk|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Equal0~0_combout\ = (!\custom_clk|counter\(10) & (!\custom_clk|counter\(9) & (!\custom_clk|counter\(8) & !\custom_clk|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|counter\(10),
	datab => \custom_clk|counter\(9),
	datac => \custom_clk|counter\(8),
	datad => \custom_clk|counter\(11),
	combout => \custom_clk|Equal0~0_combout\);

-- Location: FF_X21_Y17_N13
\custom_clk|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(3));

-- Location: FF_X21_Y16_N11
\custom_clk|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(18));

-- Location: LCCOMB_X22_Y16_N30
\custom_clk|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Equal0~6_combout\ = (\custom_clk|counter\(22) & (\custom_clk|counter\(21) & (\custom_clk|counter\(20) & \custom_clk|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|counter\(22),
	datab => \custom_clk|counter\(21),
	datac => \custom_clk|counter\(20),
	datad => \custom_clk|counter\(23),
	combout => \custom_clk|Equal0~6_combout\);

-- Location: IOIBUF_X0_Y24_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOOBUF_X0_Y20_N9
\ld[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_state(0),
	devoe => ww_devoe,
	o => \ld[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\ld[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(1),
	devoe => ww_devoe,
	o => \ld[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\ld[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(2),
	devoe => ww_devoe,
	o => \ld[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\ld[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(3),
	devoe => ww_devoe,
	o => \ld[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\ld[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(4),
	devoe => ww_devoe,
	o => \ld[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\ld[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(5),
	devoe => ww_devoe,
	o => \ld[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\ld[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(6),
	devoe => ww_devoe,
	o => \ld[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\ld[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(7),
	devoe => ww_devoe,
	o => \ld[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\ld[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(8),
	devoe => ww_devoe,
	o => \ld[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\ld[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(9),
	devoe => ww_devoe,
	o => \ld[9]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y24_N2
\state~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~1_combout\ = (!\rst~input_o\ & !state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => state(0),
	combout => \state~1_combout\);

-- Location: LCCOMB_X21_Y17_N6
\custom_clk|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~0_combout\ = \custom_clk|counter\(0) $ (VCC)
-- \custom_clk|Add0~1\ = CARRY(\custom_clk|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|counter\(0),
	datad => VCC,
	combout => \custom_clk|Add0~0_combout\,
	cout => \custom_clk|Add0~1\);

-- Location: LCCOMB_X22_Y16_N4
\custom_clk|counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|counter~1_combout\ = (\custom_clk|Add0~0_combout\ & \custom_clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \custom_clk|Add0~0_combout\,
	datad => \custom_clk|Equal0~8_combout\,
	combout => \custom_clk|counter~1_combout\);

-- Location: FF_X22_Y16_N5
\custom_clk|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(0));

-- Location: LCCOMB_X21_Y17_N8
\custom_clk|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~2_combout\ = (\custom_clk|counter\(1) & (!\custom_clk|Add0~1\)) # (!\custom_clk|counter\(1) & ((\custom_clk|Add0~1\) # (GND)))
-- \custom_clk|Add0~3\ = CARRY((!\custom_clk|Add0~1\) # (!\custom_clk|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|counter\(1),
	datad => VCC,
	cin => \custom_clk|Add0~1\,
	combout => \custom_clk|Add0~2_combout\,
	cout => \custom_clk|Add0~3\);

-- Location: FF_X21_Y17_N9
\custom_clk|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(1));

-- Location: LCCOMB_X21_Y17_N10
\custom_clk|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~4_combout\ = (\custom_clk|counter\(2) & (\custom_clk|Add0~3\ $ (GND))) # (!\custom_clk|counter\(2) & (!\custom_clk|Add0~3\ & VCC))
-- \custom_clk|Add0~5\ = CARRY((\custom_clk|counter\(2) & !\custom_clk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|counter\(2),
	datad => VCC,
	cin => \custom_clk|Add0~3\,
	combout => \custom_clk|Add0~4_combout\,
	cout => \custom_clk|Add0~5\);

-- Location: FF_X21_Y17_N11
\custom_clk|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(2));

-- Location: LCCOMB_X21_Y17_N4
\custom_clk|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Equal0~2_combout\ = (!\custom_clk|counter\(3) & (!\custom_clk|counter\(0) & (!\custom_clk|counter\(1) & !\custom_clk|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|counter\(3),
	datab => \custom_clk|counter\(0),
	datac => \custom_clk|counter\(1),
	datad => \custom_clk|counter\(2),
	combout => \custom_clk|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y16_N2
\custom_clk|counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|counter~4_combout\ = (\custom_clk|Add0~28_combout\ & \custom_clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|Add0~28_combout\,
	datad => \custom_clk|Equal0~8_combout\,
	combout => \custom_clk|counter~4_combout\);

-- Location: FF_X22_Y16_N3
\custom_clk|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(14));

-- Location: LCCOMB_X21_Y17_N14
\custom_clk|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~8_combout\ = (\custom_clk|counter\(4) & (\custom_clk|Add0~7\ $ (GND))) # (!\custom_clk|counter\(4) & (!\custom_clk|Add0~7\ & VCC))
-- \custom_clk|Add0~9\ = CARRY((\custom_clk|counter\(4) & !\custom_clk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|counter\(4),
	datad => VCC,
	cin => \custom_clk|Add0~7\,
	combout => \custom_clk|Add0~8_combout\,
	cout => \custom_clk|Add0~9\);

-- Location: FF_X21_Y17_N15
\custom_clk|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(4));

-- Location: LCCOMB_X21_Y17_N16
\custom_clk|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~10_combout\ = (\custom_clk|counter\(5) & (!\custom_clk|Add0~9\)) # (!\custom_clk|counter\(5) & ((\custom_clk|Add0~9\) # (GND)))
-- \custom_clk|Add0~11\ = CARRY((!\custom_clk|Add0~9\) # (!\custom_clk|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|counter\(5),
	datad => VCC,
	cin => \custom_clk|Add0~9\,
	combout => \custom_clk|Add0~10_combout\,
	cout => \custom_clk|Add0~11\);

-- Location: FF_X21_Y17_N17
\custom_clk|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(5));

-- Location: LCCOMB_X21_Y17_N18
\custom_clk|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~12_combout\ = (\custom_clk|counter\(6) & (\custom_clk|Add0~11\ $ (GND))) # (!\custom_clk|counter\(6) & (!\custom_clk|Add0~11\ & VCC))
-- \custom_clk|Add0~13\ = CARRY((\custom_clk|counter\(6) & !\custom_clk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|counter\(6),
	datad => VCC,
	cin => \custom_clk|Add0~11\,
	combout => \custom_clk|Add0~12_combout\,
	cout => \custom_clk|Add0~13\);

-- Location: FF_X21_Y17_N19
\custom_clk|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(6));

-- Location: LCCOMB_X21_Y17_N20
\custom_clk|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~14_combout\ = (\custom_clk|counter\(7) & (!\custom_clk|Add0~13\)) # (!\custom_clk|counter\(7) & ((\custom_clk|Add0~13\) # (GND)))
-- \custom_clk|Add0~15\ = CARRY((!\custom_clk|Add0~13\) # (!\custom_clk|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|counter\(7),
	datad => VCC,
	cin => \custom_clk|Add0~13\,
	combout => \custom_clk|Add0~14_combout\,
	cout => \custom_clk|Add0~15\);

-- Location: LCCOMB_X22_Y16_N10
\custom_clk|counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|counter~0_combout\ = (\custom_clk|Add0~14_combout\ & \custom_clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|Add0~14_combout\,
	datad => \custom_clk|Equal0~8_combout\,
	combout => \custom_clk|counter~0_combout\);

-- Location: FF_X22_Y16_N11
\custom_clk|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(7));

-- Location: LCCOMB_X21_Y17_N24
\custom_clk|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~18_combout\ = (\custom_clk|counter\(9) & (!\custom_clk|Add0~17\)) # (!\custom_clk|counter\(9) & ((\custom_clk|Add0~17\) # (GND)))
-- \custom_clk|Add0~19\ = CARRY((!\custom_clk|Add0~17\) # (!\custom_clk|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|counter\(9),
	datad => VCC,
	cin => \custom_clk|Add0~17\,
	combout => \custom_clk|Add0~18_combout\,
	cout => \custom_clk|Add0~19\);

-- Location: FF_X21_Y17_N25
\custom_clk|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(9));

-- Location: LCCOMB_X21_Y17_N28
\custom_clk|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~22_combout\ = (\custom_clk|counter\(11) & (!\custom_clk|Add0~21\)) # (!\custom_clk|counter\(11) & ((\custom_clk|Add0~21\) # (GND)))
-- \custom_clk|Add0~23\ = CARRY((!\custom_clk|Add0~21\) # (!\custom_clk|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|counter\(11),
	datad => VCC,
	cin => \custom_clk|Add0~21\,
	combout => \custom_clk|Add0~22_combout\,
	cout => \custom_clk|Add0~23\);

-- Location: FF_X21_Y17_N29
\custom_clk|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(11));

-- Location: LCCOMB_X21_Y17_N30
\custom_clk|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~24_combout\ = (\custom_clk|counter\(12) & (\custom_clk|Add0~23\ $ (GND))) # (!\custom_clk|counter\(12) & (!\custom_clk|Add0~23\ & VCC))
-- \custom_clk|Add0~25\ = CARRY((\custom_clk|counter\(12) & !\custom_clk|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|counter\(12),
	datad => VCC,
	cin => \custom_clk|Add0~23\,
	combout => \custom_clk|Add0~24_combout\,
	cout => \custom_clk|Add0~25\);

-- Location: LCCOMB_X22_Y16_N6
\custom_clk|counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|counter~2_combout\ = (\custom_clk|Add0~24_combout\ & \custom_clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \custom_clk|Add0~24_combout\,
	datad => \custom_clk|Equal0~8_combout\,
	combout => \custom_clk|counter~2_combout\);

-- Location: FF_X22_Y16_N7
\custom_clk|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(12));

-- Location: LCCOMB_X21_Y16_N0
\custom_clk|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~26_combout\ = (\custom_clk|counter\(13) & (!\custom_clk|Add0~25\)) # (!\custom_clk|counter\(13) & ((\custom_clk|Add0~25\) # (GND)))
-- \custom_clk|Add0~27\ = CARRY((!\custom_clk|Add0~25\) # (!\custom_clk|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|counter\(13),
	datad => VCC,
	cin => \custom_clk|Add0~25\,
	combout => \custom_clk|Add0~26_combout\,
	cout => \custom_clk|Add0~27\);

-- Location: LCCOMB_X22_Y16_N0
\custom_clk|counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|counter~3_combout\ = (\custom_clk|Add0~26_combout\ & \custom_clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \custom_clk|Add0~26_combout\,
	datad => \custom_clk|Equal0~8_combout\,
	combout => \custom_clk|counter~3_combout\);

-- Location: FF_X22_Y16_N1
\custom_clk|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(13));

-- Location: LCCOMB_X21_Y16_N4
\custom_clk|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~30_combout\ = (\custom_clk|counter\(15) & (!\custom_clk|Add0~29\)) # (!\custom_clk|counter\(15) & ((\custom_clk|Add0~29\) # (GND)))
-- \custom_clk|Add0~31\ = CARRY((!\custom_clk|Add0~29\) # (!\custom_clk|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|counter\(15),
	datad => VCC,
	cin => \custom_clk|Add0~29\,
	combout => \custom_clk|Add0~30_combout\,
	cout => \custom_clk|Add0~31\);

-- Location: LCCOMB_X22_Y16_N28
\custom_clk|counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|counter~5_combout\ = (\custom_clk|Add0~30_combout\ & \custom_clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \custom_clk|Add0~30_combout\,
	datad => \custom_clk|Equal0~8_combout\,
	combout => \custom_clk|counter~5_combout\);

-- Location: FF_X22_Y16_N29
\custom_clk|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(15));

-- Location: LCCOMB_X22_Y16_N14
\custom_clk|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Equal0~3_combout\ = (\custom_clk|counter\(12) & (\custom_clk|counter\(14) & (\custom_clk|counter\(15) & \custom_clk|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|counter\(12),
	datab => \custom_clk|counter\(14),
	datac => \custom_clk|counter\(15),
	datad => \custom_clk|counter\(13),
	combout => \custom_clk|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y17_N2
\custom_clk|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Equal0~1_combout\ = (!\custom_clk|counter\(6) & (!\custom_clk|counter\(4) & (\custom_clk|counter\(7) & !\custom_clk|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|counter\(6),
	datab => \custom_clk|counter\(4),
	datac => \custom_clk|counter\(7),
	datad => \custom_clk|counter\(5),
	combout => \custom_clk|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y16_N24
\custom_clk|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Equal0~4_combout\ = (\custom_clk|Equal0~0_combout\ & (\custom_clk|Equal0~2_combout\ & (\custom_clk|Equal0~3_combout\ & \custom_clk|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|Equal0~0_combout\,
	datab => \custom_clk|Equal0~2_combout\,
	datac => \custom_clk|Equal0~3_combout\,
	datad => \custom_clk|Equal0~1_combout\,
	combout => \custom_clk|Equal0~4_combout\);

-- Location: LCCOMB_X21_Y16_N6
\custom_clk|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~32_combout\ = (\custom_clk|counter\(16) & (\custom_clk|Add0~31\ $ (GND))) # (!\custom_clk|counter\(16) & (!\custom_clk|Add0~31\ & VCC))
-- \custom_clk|Add0~33\ = CARRY((\custom_clk|counter\(16) & !\custom_clk|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|counter\(16),
	datad => VCC,
	cin => \custom_clk|Add0~31\,
	combout => \custom_clk|Add0~32_combout\,
	cout => \custom_clk|Add0~33\);

-- Location: FF_X21_Y16_N7
\custom_clk|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(16));

-- Location: LCCOMB_X22_Y16_N26
\custom_clk|counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|counter~6_combout\ = (\custom_clk|Add0~34_combout\ & \custom_clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|Add0~34_combout\,
	datad => \custom_clk|Equal0~8_combout\,
	combout => \custom_clk|counter~6_combout\);

-- Location: FF_X22_Y16_N27
\custom_clk|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(17));

-- Location: LCCOMB_X22_Y16_N20
\custom_clk|counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|counter~7_combout\ = (\custom_clk|Add0~38_combout\ & \custom_clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|Add0~38_combout\,
	datad => \custom_clk|Equal0~8_combout\,
	combout => \custom_clk|counter~7_combout\);

-- Location: FF_X22_Y16_N21
\custom_clk|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(19));

-- Location: LCCOMB_X22_Y16_N22
\custom_clk|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Equal0~5_combout\ = (!\custom_clk|counter\(18) & (!\custom_clk|counter\(16) & (\custom_clk|counter\(17) & \custom_clk|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|counter\(18),
	datab => \custom_clk|counter\(16),
	datac => \custom_clk|counter\(17),
	datad => \custom_clk|counter\(19),
	combout => \custom_clk|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y16_N8
\custom_clk|counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|counter~8_combout\ = (\custom_clk|Add0~40_combout\ & \custom_clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|Add0~40_combout\,
	datad => \custom_clk|Equal0~8_combout\,
	combout => \custom_clk|counter~8_combout\);

-- Location: FF_X22_Y16_N9
\custom_clk|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(20));

-- Location: LCCOMB_X21_Y16_N16
\custom_clk|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~42_combout\ = (\custom_clk|counter\(21) & (!\custom_clk|Add0~41\)) # (!\custom_clk|counter\(21) & ((\custom_clk|Add0~41\) # (GND)))
-- \custom_clk|Add0~43\ = CARRY((!\custom_clk|Add0~41\) # (!\custom_clk|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|counter\(21),
	datad => VCC,
	cin => \custom_clk|Add0~41\,
	combout => \custom_clk|Add0~42_combout\,
	cout => \custom_clk|Add0~43\);

-- Location: LCCOMB_X22_Y16_N18
\custom_clk|counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|counter~9_combout\ = (\custom_clk|Add0~42_combout\ & \custom_clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \custom_clk|Add0~42_combout\,
	datad => \custom_clk|Equal0~8_combout\,
	combout => \custom_clk|counter~9_combout\);

-- Location: FF_X22_Y16_N19
\custom_clk|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(21));

-- Location: LCCOMB_X21_Y16_N18
\custom_clk|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~44_combout\ = (\custom_clk|counter\(22) & (\custom_clk|Add0~43\ $ (GND))) # (!\custom_clk|counter\(22) & (!\custom_clk|Add0~43\ & VCC))
-- \custom_clk|Add0~45\ = CARRY((\custom_clk|counter\(22) & !\custom_clk|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|counter\(22),
	datad => VCC,
	cin => \custom_clk|Add0~43\,
	combout => \custom_clk|Add0~44_combout\,
	cout => \custom_clk|Add0~45\);

-- Location: LCCOMB_X21_Y16_N28
\custom_clk|counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|counter~10_combout\ = (\custom_clk|Add0~44_combout\ & \custom_clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|Add0~44_combout\,
	datad => \custom_clk|Equal0~8_combout\,
	combout => \custom_clk|counter~10_combout\);

-- Location: FF_X21_Y16_N29
\custom_clk|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(22));

-- Location: LCCOMB_X21_Y16_N20
\custom_clk|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~46_combout\ = (\custom_clk|counter\(23) & (!\custom_clk|Add0~45\)) # (!\custom_clk|counter\(23) & ((\custom_clk|Add0~45\) # (GND)))
-- \custom_clk|Add0~47\ = CARRY((!\custom_clk|Add0~45\) # (!\custom_clk|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|counter\(23),
	datad => VCC,
	cin => \custom_clk|Add0~45\,
	combout => \custom_clk|Add0~46_combout\,
	cout => \custom_clk|Add0~47\);

-- Location: LCCOMB_X22_Y16_N12
\custom_clk|counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|counter~11_combout\ = (\custom_clk|Add0~46_combout\ & \custom_clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \custom_clk|Add0~46_combout\,
	datad => \custom_clk|Equal0~8_combout\,
	combout => \custom_clk|counter~11_combout\);

-- Location: FF_X22_Y16_N13
\custom_clk|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(23));

-- Location: LCCOMB_X21_Y16_N22
\custom_clk|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~48_combout\ = (\custom_clk|counter\(24) & (\custom_clk|Add0~47\ $ (GND))) # (!\custom_clk|counter\(24) & (!\custom_clk|Add0~47\ & VCC))
-- \custom_clk|Add0~49\ = CARRY((\custom_clk|counter\(24) & !\custom_clk|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|counter\(24),
	datad => VCC,
	cin => \custom_clk|Add0~47\,
	combout => \custom_clk|Add0~48_combout\,
	cout => \custom_clk|Add0~49\);

-- Location: LCCOMB_X21_Y16_N24
\custom_clk|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~50_combout\ = (\custom_clk|counter\(25) & (!\custom_clk|Add0~49\)) # (!\custom_clk|counter\(25) & ((\custom_clk|Add0~49\) # (GND)))
-- \custom_clk|Add0~51\ = CARRY((!\custom_clk|Add0~49\) # (!\custom_clk|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|counter\(25),
	datad => VCC,
	cin => \custom_clk|Add0~49\,
	combout => \custom_clk|Add0~50_combout\,
	cout => \custom_clk|Add0~51\);

-- Location: LCCOMB_X21_Y16_N26
\custom_clk|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Add0~52_combout\ = \custom_clk|counter\(26) $ (!\custom_clk|Add0~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|counter\(26),
	cin => \custom_clk|Add0~51\,
	combout => \custom_clk|Add0~52_combout\);

-- Location: FF_X21_Y16_N27
\custom_clk|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(26));

-- Location: LCCOMB_X21_Y16_N30
\custom_clk|counter~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|counter~12_combout\ = (\custom_clk|Add0~50_combout\ & \custom_clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|Add0~50_combout\,
	datad => \custom_clk|Equal0~8_combout\,
	combout => \custom_clk|counter~12_combout\);

-- Location: FF_X21_Y16_N31
\custom_clk|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(25));

-- Location: FF_X21_Y16_N23
\custom_clk|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|counter\(24));

-- Location: LCCOMB_X20_Y16_N0
\custom_clk|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Equal0~7_combout\ = (!\custom_clk|counter\(26) & (\custom_clk|counter\(25) & !\custom_clk|counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \custom_clk|counter\(26),
	datac => \custom_clk|counter\(25),
	datad => \custom_clk|counter\(24),
	combout => \custom_clk|Equal0~7_combout\);

-- Location: LCCOMB_X22_Y16_N16
\custom_clk|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \custom_clk|Equal0~8_combout\ = (((!\custom_clk|Equal0~7_combout\) # (!\custom_clk|Equal0~5_combout\)) # (!\custom_clk|Equal0~4_combout\)) # (!\custom_clk|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \custom_clk|Equal0~6_combout\,
	datab => \custom_clk|Equal0~4_combout\,
	datac => \custom_clk|Equal0~5_combout\,
	datad => \custom_clk|Equal0~7_combout\,
	combout => \custom_clk|Equal0~8_combout\);

-- Location: FF_X22_Y16_N17
\custom_clk|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \custom_clk|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \custom_clk|state~q\);

-- Location: LCCOMB_X1_Y24_N20
\state[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state[1]~2_combout\ = (\rst~input_o\) # (!\custom_clk|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \custom_clk|state~q\,
	combout => \state[1]~2_combout\);

-- Location: FF_X1_Y24_N3
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~1_combout\,
	ena => \state[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: LCCOMB_X1_Y24_N28
\state~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~3_combout\ = (!\rst~input_o\ & state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => state(1),
	combout => \state~3_combout\);

-- Location: FF_X1_Y24_N29
\state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~3_combout\,
	ena => \state[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(2));

-- Location: LCCOMB_X1_Y24_N30
\state~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~4_combout\ = (!\rst~input_o\ & state(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => state(2),
	combout => \state~4_combout\);

-- Location: FF_X1_Y24_N31
\state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~4_combout\,
	ena => \state[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(3));

-- Location: LCCOMB_X1_Y24_N16
\state~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~5_combout\ = (!\rst~input_o\ & state(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => state(3),
	combout => \state~5_combout\);

-- Location: FF_X1_Y24_N17
\state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~5_combout\,
	ena => \state[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(4));

-- Location: LCCOMB_X1_Y24_N18
\state~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~6_combout\ = (!\rst~input_o\ & state(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => state(4),
	combout => \state~6_combout\);

-- Location: FF_X1_Y24_N19
\state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~6_combout\,
	ena => \state[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(5));

-- Location: LCCOMB_X1_Y24_N12
\state~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~7_combout\ = (!\rst~input_o\ & state(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => state(5),
	combout => \state~7_combout\);

-- Location: FF_X1_Y24_N13
\state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~7_combout\,
	ena => \state[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(6));

-- Location: LCCOMB_X1_Y24_N14
\state~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~8_combout\ = (!\rst~input_o\ & state(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => state(6),
	combout => \state~8_combout\);

-- Location: FF_X1_Y24_N15
\state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~8_combout\,
	ena => \state[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(7));

-- Location: LCCOMB_X1_Y24_N0
\state~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~9_combout\ = (!\rst~input_o\ & state(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => state(7),
	combout => \state~9_combout\);

-- Location: FF_X1_Y24_N1
\state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~9_combout\,
	ena => \state[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(8));

-- Location: LCCOMB_X1_Y24_N26
\state~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~10_combout\ = (!\rst~input_o\ & state(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => state(8),
	combout => \state~10_combout\);

-- Location: FF_X1_Y24_N27
\state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~10_combout\,
	ena => \state[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(9));

-- Location: LCCOMB_X1_Y24_N8
\state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state~0_combout\ = (!\rst~input_o\ & ((\custom_clk|state~q\ & ((state(0)))) # (!\custom_clk|state~q\ & (!state(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => state(9),
	datac => state(0),
	datad => \custom_clk|state~q\,
	combout => \state~0_combout\);

-- Location: FF_X1_Y24_N9
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

ww_ld(0) <= \ld[0]~output_o\;

ww_ld(1) <= \ld[1]~output_o\;

ww_ld(2) <= \ld[2]~output_o\;

ww_ld(3) <= \ld[3]~output_o\;

ww_ld(4) <= \ld[4]~output_o\;

ww_ld(5) <= \ld[5]~output_o\;

ww_ld(6) <= \ld[6]~output_o\;

ww_ld(7) <= \ld[7]~output_o\;

ww_ld(8) <= \ld[8]~output_o\;

ww_ld(9) <= \ld[9]~output_o\;
END structure;


