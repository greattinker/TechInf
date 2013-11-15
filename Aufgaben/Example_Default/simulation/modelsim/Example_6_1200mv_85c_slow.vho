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

-- DATE "10/25/2013 15:39:26"

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

ENTITY 	Example IS
    PORT (
	clk : IN std_logic;
	btn : IN std_logic_vector(2 DOWNTO 1);
	sw : IN std_logic_vector(9 DOWNTO 0);
	ld : OUT std_logic_vector(9 DOWNTO 0)
	);
END Example;

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
-- sw[0]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn[1]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn[2]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Example IS
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
SIGNAL ww_btn : std_logic_vector(2 DOWNTO 1);
SIGNAL ww_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ld : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \load~q\ : std_logic;
SIGNAL \load~0_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \btn[2]~input_o\ : std_logic;
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
SIGNAL \btn[1]~input_o\ : std_logic;
SIGNAL \rst~0_combout\ : std_logic;
SIGNAL \rst~q\ : std_logic;
SIGNAL \reg~0_combout\ : std_logic;
SIGNAL \reg[0]~1_combout\ : std_logic;
SIGNAL \reg~2_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \reg~3_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \reg~4_combout\ : std_logic;
SIGNAL \reg~5_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \reg~6_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \reg~7_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \reg~8_combout\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \reg~9_combout\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \reg~10_combout\ : std_logic;
SIGNAL reg : std_logic_vector(9 DOWNTO 0);
SIGNAL ALT_INV_reg : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_btn <= btn;
ww_sw <= sw;
ld <= ww_ld;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
ALT_INV_reg(8) <= NOT reg(8);
ALT_INV_reg(6) <= NOT reg(6);
ALT_INV_reg(4) <= NOT reg(4);
ALT_INV_reg(2) <= NOT reg(2);
ALT_INV_reg(0) <= NOT reg(0);

-- Location: FF_X1_Y24_N7
load : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load~q\);

-- Location: LCCOMB_X1_Y24_N6
\load~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \load~0_combout\ = !\btn[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \btn[2]~input_o\,
	combout => \load~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\sw[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\sw[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\sw[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\btn[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn(2),
	o => \btn[2]~input_o\);

-- Location: IOOBUF_X0_Y20_N9
\ld[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_reg(0),
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
	i => reg(1),
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
	i => ALT_INV_reg(2),
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
	i => reg(3),
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
	i => ALT_INV_reg(4),
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
	i => reg(5),
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
	i => ALT_INV_reg(6),
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
	i => reg(7),
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
	i => ALT_INV_reg(8),
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
	i => reg(9),
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

-- Location: IOIBUF_X0_Y23_N15
\btn[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn(1),
	o => \btn[1]~input_o\);

-- Location: LCCOMB_X1_Y24_N28
\rst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst~0_combout\ = !\btn[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn[1]~input_o\,
	combout => \rst~0_combout\);

-- Location: FF_X1_Y24_N29
rst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rst~q\);

-- Location: LCCOMB_X1_Y24_N8
\reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg~0_combout\ = (\rst~q\) # (!\sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datad => \rst~q\,
	combout => \reg~0_combout\);

-- Location: LCCOMB_X1_Y24_N24
\reg[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg[0]~1_combout\ = (\load~q\) # (\rst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~q\,
	datad => \rst~q\,
	combout => \reg[0]~1_combout\);

-- Location: FF_X1_Y24_N9
\reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg~0_combout\,
	ena => \reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(0));

-- Location: LCCOMB_X1_Y24_N2
\reg~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg~2_combout\ = (\sw[1]~input_o\ & !\rst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datad => \rst~q\,
	combout => \reg~2_combout\);

-- Location: FF_X1_Y24_N3
\reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg~2_combout\,
	ena => \reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(1));

-- Location: IOIBUF_X0_Y25_N22
\sw[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X1_Y24_N4
\reg~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg~3_combout\ = (\rst~q\) # (!\sw[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[2]~input_o\,
	datad => \rst~q\,
	combout => \reg~3_combout\);

-- Location: FF_X1_Y24_N5
\reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg~3_combout\,
	ena => \reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(2));

-- Location: IOIBUF_X0_Y23_N8
\sw[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LCCOMB_X1_Y24_N30
\reg~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg~4_combout\ = (\sw[3]~input_o\ & !\rst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[3]~input_o\,
	datad => \rst~q\,
	combout => \reg~4_combout\);

-- Location: FF_X1_Y24_N31
\reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg~4_combout\,
	ena => \reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(3));

-- Location: LCCOMB_X1_Y24_N16
\reg~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg~5_combout\ = (\rst~q\) # (!\sw[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datad => \rst~q\,
	combout => \reg~5_combout\);

-- Location: FF_X1_Y24_N17
\reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg~5_combout\,
	ena => \reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(4));

-- Location: IOIBUF_X0_Y22_N15
\sw[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LCCOMB_X1_Y24_N18
\reg~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg~6_combout\ = (\sw[5]~input_o\ & !\rst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[5]~input_o\,
	datad => \rst~q\,
	combout => \reg~6_combout\);

-- Location: FF_X1_Y24_N19
\reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg~6_combout\,
	ena => \reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(5));

-- Location: IOIBUF_X0_Y25_N15
\sw[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: LCCOMB_X1_Y24_N12
\reg~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg~7_combout\ = (\rst~q\) # (!\sw[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[6]~input_o\,
	datad => \rst~q\,
	combout => \reg~7_combout\);

-- Location: FF_X1_Y24_N13
\reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg~7_combout\,
	ena => \reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(6));

-- Location: IOIBUF_X0_Y26_N8
\sw[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: LCCOMB_X1_Y24_N14
\reg~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg~8_combout\ = (\sw[7]~input_o\ & !\rst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[7]~input_o\,
	datad => \rst~q\,
	combout => \reg~8_combout\);

-- Location: FF_X1_Y24_N15
\reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg~8_combout\,
	ena => \reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(7));

-- Location: IOIBUF_X0_Y26_N1
\sw[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: LCCOMB_X1_Y24_N0
\reg~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg~9_combout\ = (\rst~q\) # (!\sw[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[8]~input_o\,
	datad => \rst~q\,
	combout => \reg~9_combout\);

-- Location: FF_X1_Y24_N1
\reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg~9_combout\,
	ena => \reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(8));

-- Location: IOIBUF_X0_Y25_N1
\sw[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: LCCOMB_X1_Y24_N26
\reg~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg~10_combout\ = (\sw[9]~input_o\ & !\rst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[9]~input_o\,
	datad => \rst~q\,
	combout => \reg~10_combout\);

-- Location: FF_X1_Y24_N27
\reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg~10_combout\,
	ena => \reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg(9));

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


