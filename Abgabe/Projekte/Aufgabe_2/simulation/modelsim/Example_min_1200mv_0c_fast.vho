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

-- DATE "10/25/2013 16:53:25"

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

ENTITY 	Hamming IS
    PORT (
	sw1 : IN std_logic_vector(3 DOWNTO 0);
	sw2 : IN std_logic_vector(3 DOWNTO 0);
	cc : OUT std_logic_vector(7 DOWNTO 0)
	);
END Hamming;

-- Design Ports Information
-- cc[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- cc[1]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- cc[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- cc[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- cc[4]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- cc[5]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- cc[6]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- cc[7]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sw1[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw2[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw2[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw2[2]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw2[3]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Hamming IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cc : std_logic_vector(7 DOWNTO 0);
SIGNAL \sw2[2]~input_o\ : std_logic;
SIGNAL \sw2[3]~input_o\ : std_logic;
SIGNAL \cc[0]~output_o\ : std_logic;
SIGNAL \cc[1]~output_o\ : std_logic;
SIGNAL \cc[2]~output_o\ : std_logic;
SIGNAL \cc[3]~output_o\ : std_logic;
SIGNAL \cc[4]~output_o\ : std_logic;
SIGNAL \cc[5]~output_o\ : std_logic;
SIGNAL \cc[6]~output_o\ : std_logic;
SIGNAL \cc[7]~output_o\ : std_logic;
SIGNAL \sw1[3]~input_o\ : std_logic;
SIGNAL \sw1[2]~input_o\ : std_logic;
SIGNAL \sw1[0]~input_o\ : std_logic;
SIGNAL \sw2[0]~input_o\ : std_logic;
SIGNAL \sw2[1]~input_o\ : std_logic;
SIGNAL \sw1[1]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL xo : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

ww_sw1 <= sw1;
ww_sw2 <= sw2;
cc <= ww_cc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;

-- Location: IOIBUF_X0_Y25_N15
\sw2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw2(2),
	o => \sw2[2]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\sw2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw2(3),
	o => \sw2[3]~input_o\);

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
	i => \ALT_INV_Mux5~0_combout\,
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
	i => \Mux4~0_combout\,
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
	i => \Mux3~0_combout\,
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
	i => \Mux2~0_combout\,
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
	i => \Mux1~0_combout\,
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
	i => GND,
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
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \cc[7]~output_o\);

-- Location: IOIBUF_X0_Y23_N8
\sw1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1(3),
	o => \sw1[3]~input_o\);

-- Location: LCCOMB_X1_Y25_N6
\xo[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- xo(3) = \sw2[3]~input_o\ $ (\sw1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw2[3]~input_o\,
	datac => \sw1[3]~input_o\,
	combout => xo(3));

-- Location: IOIBUF_X0_Y25_N22
\sw1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1(2),
	o => \sw1[2]~input_o\);

-- Location: LCCOMB_X1_Y25_N28
\xo[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- xo(2) = \sw2[2]~input_o\ $ (\sw1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw2[2]~input_o\,
	datad => \sw1[2]~input_o\,
	combout => xo(2));

-- Location: IOIBUF_X0_Y24_N1
\sw1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1(0),
	o => \sw1[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\sw2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw2(0),
	o => \sw2[0]~input_o\);

-- Location: LCCOMB_X1_Y25_N0
\xo[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- xo(0) = \sw1[0]~input_o\ $ (\sw2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw1[0]~input_o\,
	datac => \sw2[0]~input_o\,
	combout => xo(0));

-- Location: IOIBUF_X0_Y22_N15
\sw2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw2(1),
	o => \sw2[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\sw1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1(1),
	o => \sw1[1]~input_o\);

-- Location: LCCOMB_X1_Y25_N2
\xo[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- xo(1) = \sw2[1]~input_o\ $ (\sw1[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw2[1]~input_o\,
	datad => \sw1[1]~input_o\,
	combout => xo(1));

-- Location: LCCOMB_X1_Y25_N24
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (xo(3) & ((xo(2)) # ((xo(0)) # (xo(1))))) # (!xo(3) & ((xo(2) & ((xo(0)) # (xo(1)))) # (!xo(2) & (xo(0) & xo(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xo(3),
	datab => xo(2),
	datac => xo(0),
	datad => xo(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y25_N26
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (xo(3) & (((!xo(1)) # (!xo(0))) # (!xo(2)))) # (!xo(3) & ((xo(2)) # ((xo(0)) # (xo(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xo(3),
	datab => xo(2),
	datac => xo(0),
	datad => xo(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y25_N12
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (xo(3) & ((xo(2) & ((xo(0)) # (xo(1)))) # (!xo(2) & (xo(0) $ (!xo(1)))))) # (!xo(3) & (xo(2) $ (xo(0) $ (xo(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xo(3),
	datab => xo(2),
	datac => xo(0),
	datad => xo(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y25_N14
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (xo(3) & ((xo(2) & (xo(0) & xo(1))) # (!xo(2) & (!xo(0) & !xo(1))))) # (!xo(3) & ((xo(2) & (!xo(0) & !xo(1))) # (!xo(2) & (xo(0) $ (xo(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xo(3),
	datab => xo(2),
	datac => xo(0),
	datad => xo(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y25_N16
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (xo(3) & ((xo(2) & (!xo(0) & !xo(1))) # (!xo(2) & (xo(0) $ (xo(1)))))) # (!xo(3) & ((xo(2) & (xo(0) $ (xo(1)))) # (!xo(2) & (xo(0) & xo(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xo(3),
	datab => xo(2),
	datac => xo(0),
	datad => xo(1),
	combout => \Mux1~0_combout\);

ww_cc(0) <= \cc[0]~output_o\;

ww_cc(1) <= \cc[1]~output_o\;

ww_cc(2) <= \cc[2]~output_o\;

ww_cc(3) <= \cc[3]~output_o\;

ww_cc(4) <= \cc[4]~output_o\;

ww_cc(5) <= \cc[5]~output_o\;

ww_cc(6) <= \cc[6]~output_o\;

ww_cc(7) <= \cc[7]~output_o\;
END structure;


