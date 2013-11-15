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

-- DATE "11/15/2013 16:34:15"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Decoder IS
    PORT (
	sw : IN std_logic_vector(3 DOWNTO 0);
	cc : OUT std_logic_vector(7 DOWNTO 0)
	);
END Decoder;

-- Design Ports Information
-- cc[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- cc[1]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- cc[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- cc[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- cc[4]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- cc[5]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- cc[6]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- cc[7]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sw[0]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cc : std_logic_vector(7 DOWNTO 0);
SIGNAL \cc[0]~output_o\ : std_logic;
SIGNAL \cc[1]~output_o\ : std_logic;
SIGNAL \cc[2]~output_o\ : std_logic;
SIGNAL \cc[3]~output_o\ : std_logic;
SIGNAL \cc[4]~output_o\ : std_logic;
SIGNAL \cc[5]~output_o\ : std_logic;
SIGNAL \cc[6]~output_o\ : std_logic;
SIGNAL \cc[7]~output_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_sw <= sw;
cc <= ww_cc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X23_Y29_N9
\cc[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \cc[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\cc[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \cc[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\cc[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \cc[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\cc[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \cc[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\cc[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \cc[4]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\cc[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \cc[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\cc[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \cc[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\cc[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \cc[7]~output_o\);

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

-- Location: LCCOMB_X26_Y28_N0
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\sw[0]~input_o\ & ((\sw[3]~input_o\) # (\sw[2]~input_o\ $ (\sw[1]~input_o\)))) # (!\sw[0]~input_o\ & ((\sw[1]~input_o\) # (\sw[2]~input_o\ $ (\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X26_Y28_N26
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\sw[2]~input_o\ & (\sw[0]~input_o\ & (\sw[3]~input_o\ $ (\sw[1]~input_o\)))) # (!\sw[2]~input_o\ & (!\sw[3]~input_o\ & ((\sw[1]~input_o\) # (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X26_Y28_N12
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\sw[1]~input_o\ & (((!\sw[3]~input_o\ & \sw[0]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[2]~input_o\ & (!\sw[3]~input_o\)) # (!\sw[2]~input_o\ & ((\sw[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X26_Y28_N6
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\sw[1]~input_o\ & ((\sw[2]~input_o\ & ((\sw[0]~input_o\))) # (!\sw[2]~input_o\ & (\sw[3]~input_o\ & !\sw[0]~input_o\)))) # (!\sw[1]~input_o\ & (!\sw[3]~input_o\ & (\sw[2]~input_o\ $ (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X26_Y28_N16
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\sw[2]~input_o\ & (\sw[3]~input_o\ & ((\sw[1]~input_o\) # (!\sw[0]~input_o\)))) # (!\sw[2]~input_o\ & (!\sw[3]~input_o\ & (\sw[1]~input_o\ & !\sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X26_Y28_N2
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\sw[3]~input_o\ & ((\sw[0]~input_o\ & ((\sw[1]~input_o\))) # (!\sw[0]~input_o\ & (\sw[2]~input_o\)))) # (!\sw[3]~input_o\ & (\sw[2]~input_o\ & (\sw[1]~input_o\ $ (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X26_Y28_N20
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\sw[2]~input_o\ & (!\sw[1]~input_o\ & (\sw[3]~input_o\ $ (!\sw[0]~input_o\)))) # (!\sw[2]~input_o\ & (\sw[0]~input_o\ & (\sw[3]~input_o\ $ (!\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Mux0~0_combout\);

ww_cc(0) <= \cc[0]~output_o\;

ww_cc(1) <= \cc[1]~output_o\;

ww_cc(2) <= \cc[2]~output_o\;

ww_cc(3) <= \cc[3]~output_o\;

ww_cc(4) <= \cc[4]~output_o\;

ww_cc(5) <= \cc[5]~output_o\;

ww_cc(6) <= \cc[6]~output_o\;

ww_cc(7) <= \cc[7]~output_o\;
END structure;


