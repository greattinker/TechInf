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

-- DATE "11/08/2013 17:34:16"

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

ENTITY 	Hallo IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	seg1 : OUT std_logic_vector(7 DOWNTO 0);
	seg2 : OUT std_logic_vector(7 DOWNTO 0);
	seg3 : OUT std_logic_vector(7 DOWNTO 0);
	seg4 : OUT std_logic_vector(7 DOWNTO 0)
	);
END Hallo;

-- Design Ports Information
-- seg1[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg1[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg1[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg1[3]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg1[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg1[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg1[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg1[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg2[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg2[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg2[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg2[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg2[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg2[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg2[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg2[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg3[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg3[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg3[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg3[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg3[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg3[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg3[6]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg3[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg4[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg4[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg4[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg4[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg4[4]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg4[5]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg4[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- seg4[7]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Hallo IS
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
SIGNAL ww_seg1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg4 : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mult|counter[1]~27_combout\ : std_logic;
SIGNAL \mult|counter[9]~43_combout\ : std_logic;
SIGNAL \mult|counter[11]~47_combout\ : std_logic;
SIGNAL \mult|counter[15]~55_combout\ : std_logic;
SIGNAL \mult|counter[18]~61_combout\ : std_logic;
SIGNAL \mult|counter[19]~64\ : std_logic;
SIGNAL \mult|counter[20]~65_combout\ : std_logic;
SIGNAL \mult|counter[20]~66\ : std_logic;
SIGNAL \mult|counter[21]~67_combout\ : std_logic;
SIGNAL \mult|counter[21]~68\ : std_logic;
SIGNAL \mult|counter[22]~69_combout\ : std_logic;
SIGNAL \mult|counter[22]~70\ : std_logic;
SIGNAL \mult|counter[23]~71_combout\ : std_logic;
SIGNAL \mult|counter[23]~72\ : std_logic;
SIGNAL \mult|counter[24]~73_combout\ : std_logic;
SIGNAL \mult|Equal0~2_combout\ : std_logic;
SIGNAL \mult|Equal0~6_combout\ : std_logic;
SIGNAL \mult|Equal0~7_combout\ : std_logic;
SIGNAL \mult|Add0~0_combout\ : std_logic;
SIGNAL \mult|Add0~1_combout\ : std_logic;
SIGNAL \mult|mul~4_combout\ : std_logic;
SIGNAL \seg1[0]~output_o\ : std_logic;
SIGNAL \seg1[1]~output_o\ : std_logic;
SIGNAL \seg1[2]~output_o\ : std_logic;
SIGNAL \seg1[3]~output_o\ : std_logic;
SIGNAL \seg1[4]~output_o\ : std_logic;
SIGNAL \seg1[5]~output_o\ : std_logic;
SIGNAL \seg1[6]~output_o\ : std_logic;
SIGNAL \seg1[7]~output_o\ : std_logic;
SIGNAL \seg2[0]~output_o\ : std_logic;
SIGNAL \seg2[1]~output_o\ : std_logic;
SIGNAL \seg2[2]~output_o\ : std_logic;
SIGNAL \seg2[3]~output_o\ : std_logic;
SIGNAL \seg2[4]~output_o\ : std_logic;
SIGNAL \seg2[5]~output_o\ : std_logic;
SIGNAL \seg2[6]~output_o\ : std_logic;
SIGNAL \seg2[7]~output_o\ : std_logic;
SIGNAL \seg3[0]~output_o\ : std_logic;
SIGNAL \seg3[1]~output_o\ : std_logic;
SIGNAL \seg3[2]~output_o\ : std_logic;
SIGNAL \seg3[3]~output_o\ : std_logic;
SIGNAL \seg3[4]~output_o\ : std_logic;
SIGNAL \seg3[5]~output_o\ : std_logic;
SIGNAL \seg3[6]~output_o\ : std_logic;
SIGNAL \seg3[7]~output_o\ : std_logic;
SIGNAL \seg4[0]~output_o\ : std_logic;
SIGNAL \seg4[1]~output_o\ : std_logic;
SIGNAL \seg4[2]~output_o\ : std_logic;
SIGNAL \seg4[3]~output_o\ : std_logic;
SIGNAL \seg4[4]~output_o\ : std_logic;
SIGNAL \seg4[5]~output_o\ : std_logic;
SIGNAL \seg4[6]~output_o\ : std_logic;
SIGNAL \seg4[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dec3|decoded_out[0]~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \mult|mul~2_combout\ : std_logic;
SIGNAL \mult|counter[0]~25_combout\ : std_logic;
SIGNAL \mult|counter[0]~26\ : std_logic;
SIGNAL \mult|counter[1]~28\ : std_logic;
SIGNAL \mult|counter[2]~30\ : std_logic;
SIGNAL \mult|counter[3]~31_combout\ : std_logic;
SIGNAL \mult|counter[3]~32\ : std_logic;
SIGNAL \mult|counter[4]~33_combout\ : std_logic;
SIGNAL \mult|counter[4]~34\ : std_logic;
SIGNAL \mult|counter[5]~35_combout\ : std_logic;
SIGNAL \mult|counter[5]~36\ : std_logic;
SIGNAL \mult|counter[6]~37_combout\ : std_logic;
SIGNAL \mult|counter[6]~38\ : std_logic;
SIGNAL \mult|counter[7]~40\ : std_logic;
SIGNAL \mult|counter[8]~41_combout\ : std_logic;
SIGNAL \mult|counter[8]~42\ : std_logic;
SIGNAL \mult|counter[9]~44\ : std_logic;
SIGNAL \mult|counter[10]~45_combout\ : std_logic;
SIGNAL \mult|counter[10]~46\ : std_logic;
SIGNAL \mult|counter[11]~48\ : std_logic;
SIGNAL \mult|counter[12]~49_combout\ : std_logic;
SIGNAL \mult|counter[12]~50\ : std_logic;
SIGNAL \mult|counter[13]~51_combout\ : std_logic;
SIGNAL \mult|counter[13]~52\ : std_logic;
SIGNAL \mult|counter[14]~53_combout\ : std_logic;
SIGNAL \mult|counter[14]~54\ : std_logic;
SIGNAL \mult|counter[15]~56\ : std_logic;
SIGNAL \mult|counter[16]~57_combout\ : std_logic;
SIGNAL \mult|counter[16]~58\ : std_logic;
SIGNAL \mult|counter[17]~60\ : std_logic;
SIGNAL \mult|counter[18]~62\ : std_logic;
SIGNAL \mult|counter[19]~63_combout\ : std_logic;
SIGNAL \mult|counter[17]~59_combout\ : std_logic;
SIGNAL \mult|Equal0~5_combout\ : std_logic;
SIGNAL \mult|counter[2]~29_combout\ : std_logic;
SIGNAL \mult|Equal0~0_combout\ : std_logic;
SIGNAL \mult|Equal0~3_combout\ : std_logic;
SIGNAL \mult|counter[7]~39_combout\ : std_logic;
SIGNAL \mult|Equal0~1_combout\ : std_logic;
SIGNAL \mult|Equal0~4_combout\ : std_logic;
SIGNAL \mult|mul[3]~1_combout\ : std_logic;
SIGNAL \mult|mul~0_combout\ : std_logic;
SIGNAL \mult|Mux0~0_combout\ : std_logic;
SIGNAL \mult|mul~3_combout\ : std_logic;
SIGNAL \dec3|Mux4~8_combout\ : std_logic;
SIGNAL \dec3|Mux3~5_combout\ : std_logic;
SIGNAL \dec3|Mux2~5_combout\ : std_logic;
SIGNAL \dec3|Mux1~5_combout\ : std_logic;
SIGNAL \dec3|Mux0~5_combout\ : std_logic;
SIGNAL \dec2|decoded_out[0]~feeder_combout\ : std_logic;
SIGNAL \dec2|Mux4~5_combout\ : std_logic;
SIGNAL \dec2|Mux3~5_combout\ : std_logic;
SIGNAL \dec2|decoded_out[3]~feeder_combout\ : std_logic;
SIGNAL \dec2|Mux2~8_combout\ : std_logic;
SIGNAL \dec2|Mux1~8_combout\ : std_logic;
SIGNAL \dec2|decoded_out[6]~feeder_combout\ : std_logic;
SIGNAL \dec2|Mux0~8_combout\ : std_logic;
SIGNAL \dec1|decoded_out[0]~feeder_combout\ : std_logic;
SIGNAL \dec1|Mux4~5_combout\ : std_logic;
SIGNAL \dec1|Mux3~8_combout\ : std_logic;
SIGNAL \dec1|decoded_out[2]~feeder_combout\ : std_logic;
SIGNAL \dec1|Mux2~8_combout\ : std_logic;
SIGNAL \dec1|Mux1~5_combout\ : std_logic;
SIGNAL \dec1|decoded_out[6]~feeder_combout\ : std_logic;
SIGNAL \dec1|Mux0~8_combout\ : std_logic;
SIGNAL \dec0|decoded_out[0]~feeder_combout\ : std_logic;
SIGNAL \dec0|Mux4~5_combout\ : std_logic;
SIGNAL \dec0|Mux3~2_combout\ : std_logic;
SIGNAL \dec0|Mux2~2_combout\ : std_logic;
SIGNAL \dec0|Mux1~5_combout\ : std_logic;
SIGNAL \dec0|decoded_out[6]~feeder_combout\ : std_logic;
SIGNAL \dec0|Mux0~5_combout\ : std_logic;
SIGNAL \dec1|decoded_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dec2|decoded_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dec3|decoded_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dec0|decoded_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mult|mul\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mult|counter\ : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
seg1 <= ww_seg1;
seg2 <= ww_seg2;
seg3 <= ww_seg3;
seg4 <= ww_seg4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X24_Y28_N11
\mult|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[1]~27_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(1));

-- Location: FF_X24_Y28_N27
\mult|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[9]~43_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(9));

-- Location: FF_X24_Y28_N31
\mult|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[11]~47_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(11));

-- Location: FF_X24_Y27_N7
\mult|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[15]~55_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(15));

-- Location: FF_X24_Y27_N13
\mult|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[18]~61_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(18));

-- Location: FF_X24_Y27_N23
\mult|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[23]~71_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(23));

-- Location: FF_X24_Y27_N17
\mult|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[20]~65_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(20));

-- Location: FF_X24_Y27_N19
\mult|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[21]~67_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(21));

-- Location: FF_X24_Y27_N21
\mult|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[22]~69_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(22));

-- Location: FF_X24_Y27_N25
\mult|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[24]~73_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(24));

-- Location: LCCOMB_X24_Y28_N10
\mult|counter[1]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[1]~27_combout\ = (\mult|counter\(1) & (!\mult|counter[0]~26\)) # (!\mult|counter\(1) & ((\mult|counter[0]~26\) # (GND)))
-- \mult|counter[1]~28\ = CARRY((!\mult|counter[0]~26\) # (!\mult|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mult|counter\(1),
	datad => VCC,
	cin => \mult|counter[0]~26\,
	combout => \mult|counter[1]~27_combout\,
	cout => \mult|counter[1]~28\);

-- Location: LCCOMB_X24_Y28_N26
\mult|counter[9]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[9]~43_combout\ = (\mult|counter\(9) & (!\mult|counter[8]~42\)) # (!\mult|counter\(9) & ((\mult|counter[8]~42\) # (GND)))
-- \mult|counter[9]~44\ = CARRY((!\mult|counter[8]~42\) # (!\mult|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mult|counter\(9),
	datad => VCC,
	cin => \mult|counter[8]~42\,
	combout => \mult|counter[9]~43_combout\,
	cout => \mult|counter[9]~44\);

-- Location: LCCOMB_X24_Y28_N30
\mult|counter[11]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[11]~47_combout\ = (\mult|counter\(11) & (!\mult|counter[10]~46\)) # (!\mult|counter\(11) & ((\mult|counter[10]~46\) # (GND)))
-- \mult|counter[11]~48\ = CARRY((!\mult|counter[10]~46\) # (!\mult|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mult|counter\(11),
	datad => VCC,
	cin => \mult|counter[10]~46\,
	combout => \mult|counter[11]~47_combout\,
	cout => \mult|counter[11]~48\);

-- Location: LCCOMB_X24_Y27_N6
\mult|counter[15]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[15]~55_combout\ = (\mult|counter\(15) & (!\mult|counter[14]~54\)) # (!\mult|counter\(15) & ((\mult|counter[14]~54\) # (GND)))
-- \mult|counter[15]~56\ = CARRY((!\mult|counter[14]~54\) # (!\mult|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mult|counter\(15),
	datad => VCC,
	cin => \mult|counter[14]~54\,
	combout => \mult|counter[15]~55_combout\,
	cout => \mult|counter[15]~56\);

-- Location: LCCOMB_X24_Y27_N12
\mult|counter[18]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[18]~61_combout\ = (\mult|counter\(18) & (\mult|counter[17]~60\ $ (GND))) # (!\mult|counter\(18) & (!\mult|counter[17]~60\ & VCC))
-- \mult|counter[18]~62\ = CARRY((\mult|counter\(18) & !\mult|counter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mult|counter\(18),
	datad => VCC,
	cin => \mult|counter[17]~60\,
	combout => \mult|counter[18]~61_combout\,
	cout => \mult|counter[18]~62\);

-- Location: LCCOMB_X24_Y27_N14
\mult|counter[19]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[19]~63_combout\ = (\mult|counter\(19) & (!\mult|counter[18]~62\)) # (!\mult|counter\(19) & ((\mult|counter[18]~62\) # (GND)))
-- \mult|counter[19]~64\ = CARRY((!\mult|counter[18]~62\) # (!\mult|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mult|counter\(19),
	datad => VCC,
	cin => \mult|counter[18]~62\,
	combout => \mult|counter[19]~63_combout\,
	cout => \mult|counter[19]~64\);

-- Location: LCCOMB_X24_Y27_N16
\mult|counter[20]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[20]~65_combout\ = (\mult|counter\(20) & (\mult|counter[19]~64\ $ (GND))) # (!\mult|counter\(20) & (!\mult|counter[19]~64\ & VCC))
-- \mult|counter[20]~66\ = CARRY((\mult|counter\(20) & !\mult|counter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mult|counter\(20),
	datad => VCC,
	cin => \mult|counter[19]~64\,
	combout => \mult|counter[20]~65_combout\,
	cout => \mult|counter[20]~66\);

-- Location: LCCOMB_X24_Y27_N18
\mult|counter[21]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[21]~67_combout\ = (\mult|counter\(21) & (!\mult|counter[20]~66\)) # (!\mult|counter\(21) & ((\mult|counter[20]~66\) # (GND)))
-- \mult|counter[21]~68\ = CARRY((!\mult|counter[20]~66\) # (!\mult|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mult|counter\(21),
	datad => VCC,
	cin => \mult|counter[20]~66\,
	combout => \mult|counter[21]~67_combout\,
	cout => \mult|counter[21]~68\);

-- Location: LCCOMB_X24_Y27_N20
\mult|counter[22]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[22]~69_combout\ = (\mult|counter\(22) & (\mult|counter[21]~68\ $ (GND))) # (!\mult|counter\(22) & (!\mult|counter[21]~68\ & VCC))
-- \mult|counter[22]~70\ = CARRY((\mult|counter\(22) & !\mult|counter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mult|counter\(22),
	datad => VCC,
	cin => \mult|counter[21]~68\,
	combout => \mult|counter[22]~69_combout\,
	cout => \mult|counter[22]~70\);

-- Location: LCCOMB_X24_Y27_N22
\mult|counter[23]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[23]~71_combout\ = (\mult|counter\(23) & (!\mult|counter[22]~70\)) # (!\mult|counter\(23) & ((\mult|counter[22]~70\) # (GND)))
-- \mult|counter[23]~72\ = CARRY((!\mult|counter[22]~70\) # (!\mult|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mult|counter\(23),
	datad => VCC,
	cin => \mult|counter[22]~70\,
	combout => \mult|counter[23]~71_combout\,
	cout => \mult|counter[23]~72\);

-- Location: LCCOMB_X24_Y27_N24
\mult|counter[24]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[24]~73_combout\ = \mult|counter[23]~72\ $ (!\mult|counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mult|counter\(24),
	cin => \mult|counter[23]~72\,
	combout => \mult|counter[24]~73_combout\);

-- Location: FF_X28_Y28_N9
\mult|mul[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|mul~4_combout\,
	ena => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|mul\(3));

-- Location: LCCOMB_X24_Y28_N4
\mult|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|Equal0~2_combout\ = (\mult|counter\(9)) # ((\mult|counter\(10)) # ((\mult|counter\(8)) # (!\mult|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|counter\(9),
	datab => \mult|counter\(10),
	datac => \mult|counter\(11),
	datad => \mult|counter\(8),
	combout => \mult|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y27_N30
\mult|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|Equal0~6_combout\ = (((\mult|counter\(23)) # (!\mult|counter\(21))) # (!\mult|counter\(20))) # (!\mult|counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|counter\(22),
	datab => \mult|counter\(20),
	datac => \mult|counter\(23),
	datad => \mult|counter\(21),
	combout => \mult|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y27_N16
\mult|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|Equal0~7_combout\ = (\mult|Equal0~6_combout\) # (!\mult|counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mult|Equal0~6_combout\,
	datad => \mult|counter\(24),
	combout => \mult|Equal0~7_combout\);

-- Location: LCCOMB_X28_Y28_N12
\mult|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|Add0~0_combout\ = \mult|mul\(2) $ (((\mult|mul\(1) & \mult|mul\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mult|mul\(2),
	datac => \mult|mul\(1),
	datad => \mult|mul\(0),
	combout => \mult|Add0~0_combout\);

-- Location: LCCOMB_X28_Y28_N30
\mult|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|Add0~1_combout\ = \mult|mul\(3) $ (((\mult|mul\(2) & (\mult|mul\(1) & \mult|mul\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(2),
	datac => \mult|mul\(1),
	datad => \mult|mul\(0),
	combout => \mult|Add0~1_combout\);

-- Location: LCCOMB_X28_Y28_N8
\mult|mul~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|mul~4_combout\ = (!\rst~input_o\ & (\mult|Add0~1_combout\ & \mult|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \mult|Add0~1_combout\,
	datad => \mult|Mux0~0_combout\,
	combout => \mult|mul~4_combout\);

-- Location: IOOBUF_X23_Y29_N9
\seg1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec3|decoded_out\(0),
	devoe => ww_devoe,
	o => \seg1[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\seg1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec3|decoded_out\(1),
	devoe => ww_devoe,
	o => \seg1[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\seg1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec3|decoded_out\(2),
	devoe => ww_devoe,
	o => \seg1[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\seg1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec3|decoded_out\(3),
	devoe => ww_devoe,
	o => \seg1[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\seg1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec3|decoded_out\(4),
	devoe => ww_devoe,
	o => \seg1[4]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\seg1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec3|decoded_out\(5),
	devoe => ww_devoe,
	o => \seg1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\seg1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec3|decoded_out\(6),
	devoe => ww_devoe,
	o => \seg1[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\seg1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec3|decoded_out\(7),
	devoe => ww_devoe,
	o => \seg1[7]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\seg2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec2|decoded_out\(0),
	devoe => ww_devoe,
	o => \seg2[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\seg2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec2|decoded_out\(1),
	devoe => ww_devoe,
	o => \seg2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\seg2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec2|decoded_out\(2),
	devoe => ww_devoe,
	o => \seg2[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\seg2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec2|decoded_out\(3),
	devoe => ww_devoe,
	o => \seg2[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\seg2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec2|decoded_out\(4),
	devoe => ww_devoe,
	o => \seg2[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\seg2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec2|decoded_out\(5),
	devoe => ww_devoe,
	o => \seg2[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\seg2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec2|decoded_out\(6),
	devoe => ww_devoe,
	o => \seg2[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\seg2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec2|decoded_out\(7),
	devoe => ww_devoe,
	o => \seg2[7]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\seg3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out\(0),
	devoe => ww_devoe,
	o => \seg3[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\seg3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out\(1),
	devoe => ww_devoe,
	o => \seg3[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\seg3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out\(2),
	devoe => ww_devoe,
	o => \seg3[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\seg3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out\(3),
	devoe => ww_devoe,
	o => \seg3[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\seg3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out\(4),
	devoe => ww_devoe,
	o => \seg3[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\seg3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out\(5),
	devoe => ww_devoe,
	o => \seg3[5]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\seg3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out\(6),
	devoe => ww_devoe,
	o => \seg3[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\seg3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec1|decoded_out\(7),
	devoe => ww_devoe,
	o => \seg3[7]~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\seg4[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|decoded_out\(0),
	devoe => ww_devoe,
	o => \seg4[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\seg4[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|decoded_out\(1),
	devoe => ww_devoe,
	o => \seg4[1]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\seg4[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|decoded_out\(2),
	devoe => ww_devoe,
	o => \seg4[2]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\seg4[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|decoded_out\(3),
	devoe => ww_devoe,
	o => \seg4[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\seg4[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|decoded_out\(4),
	devoe => ww_devoe,
	o => \seg4[4]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\seg4[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|decoded_out\(5),
	devoe => ww_devoe,
	o => \seg4[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\seg4[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|decoded_out\(6),
	devoe => ww_devoe,
	o => \seg4[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\seg4[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec0|decoded_out\(7),
	devoe => ww_devoe,
	o => \seg4[7]~output_o\);

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

-- Location: LCCOMB_X26_Y27_N8
\dec3|decoded_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec3|decoded_out[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \dec3|decoded_out[0]~feeder_combout\);

-- Location: FF_X26_Y27_N9
\dec3|decoded_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec3|decoded_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec3|decoded_out\(0));

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

-- Location: LCCOMB_X28_Y28_N4
\mult|mul~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|mul~2_combout\ = (\mult|Add0~0_combout\ & (!\rst~input_o\ & \mult|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|Add0~0_combout\,
	datab => \rst~input_o\,
	datad => \mult|Mux0~0_combout\,
	combout => \mult|mul~2_combout\);

-- Location: LCCOMB_X24_Y28_N8
\mult|counter[0]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[0]~25_combout\ = \mult|counter\(0) $ (VCC)
-- \mult|counter[0]~26\ = CARRY(\mult|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mult|counter\(0),
	datad => VCC,
	combout => \mult|counter[0]~25_combout\,
	cout => \mult|counter[0]~26\);

-- Location: FF_X24_Y28_N9
\mult|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[0]~25_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(0));

-- Location: LCCOMB_X24_Y28_N12
\mult|counter[2]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[2]~29_combout\ = (\mult|counter\(2) & (\mult|counter[1]~28\ $ (GND))) # (!\mult|counter\(2) & (!\mult|counter[1]~28\ & VCC))
-- \mult|counter[2]~30\ = CARRY((\mult|counter\(2) & !\mult|counter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mult|counter\(2),
	datad => VCC,
	cin => \mult|counter[1]~28\,
	combout => \mult|counter[2]~29_combout\,
	cout => \mult|counter[2]~30\);

-- Location: LCCOMB_X24_Y28_N14
\mult|counter[3]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[3]~31_combout\ = (\mult|counter\(3) & (!\mult|counter[2]~30\)) # (!\mult|counter\(3) & ((\mult|counter[2]~30\) # (GND)))
-- \mult|counter[3]~32\ = CARRY((!\mult|counter[2]~30\) # (!\mult|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mult|counter\(3),
	datad => VCC,
	cin => \mult|counter[2]~30\,
	combout => \mult|counter[3]~31_combout\,
	cout => \mult|counter[3]~32\);

-- Location: FF_X24_Y28_N15
\mult|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[3]~31_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(3));

-- Location: LCCOMB_X24_Y28_N16
\mult|counter[4]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[4]~33_combout\ = (\mult|counter\(4) & (\mult|counter[3]~32\ $ (GND))) # (!\mult|counter\(4) & (!\mult|counter[3]~32\ & VCC))
-- \mult|counter[4]~34\ = CARRY((\mult|counter\(4) & !\mult|counter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mult|counter\(4),
	datad => VCC,
	cin => \mult|counter[3]~32\,
	combout => \mult|counter[4]~33_combout\,
	cout => \mult|counter[4]~34\);

-- Location: FF_X24_Y28_N17
\mult|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[4]~33_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(4));

-- Location: LCCOMB_X24_Y28_N18
\mult|counter[5]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[5]~35_combout\ = (\mult|counter\(5) & (!\mult|counter[4]~34\)) # (!\mult|counter\(5) & ((\mult|counter[4]~34\) # (GND)))
-- \mult|counter[5]~36\ = CARRY((!\mult|counter[4]~34\) # (!\mult|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mult|counter\(5),
	datad => VCC,
	cin => \mult|counter[4]~34\,
	combout => \mult|counter[5]~35_combout\,
	cout => \mult|counter[5]~36\);

-- Location: FF_X24_Y28_N19
\mult|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[5]~35_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(5));

-- Location: LCCOMB_X24_Y28_N20
\mult|counter[6]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[6]~37_combout\ = (\mult|counter\(6) & (\mult|counter[5]~36\ $ (GND))) # (!\mult|counter\(6) & (!\mult|counter[5]~36\ & VCC))
-- \mult|counter[6]~38\ = CARRY((\mult|counter\(6) & !\mult|counter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mult|counter\(6),
	datad => VCC,
	cin => \mult|counter[5]~36\,
	combout => \mult|counter[6]~37_combout\,
	cout => \mult|counter[6]~38\);

-- Location: FF_X24_Y28_N21
\mult|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[6]~37_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(6));

-- Location: LCCOMB_X24_Y28_N22
\mult|counter[7]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[7]~39_combout\ = (\mult|counter\(7) & (!\mult|counter[6]~38\)) # (!\mult|counter\(7) & ((\mult|counter[6]~38\) # (GND)))
-- \mult|counter[7]~40\ = CARRY((!\mult|counter[6]~38\) # (!\mult|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mult|counter\(7),
	datad => VCC,
	cin => \mult|counter[6]~38\,
	combout => \mult|counter[7]~39_combout\,
	cout => \mult|counter[7]~40\);

-- Location: LCCOMB_X24_Y28_N24
\mult|counter[8]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[8]~41_combout\ = (\mult|counter\(8) & (\mult|counter[7]~40\ $ (GND))) # (!\mult|counter\(8) & (!\mult|counter[7]~40\ & VCC))
-- \mult|counter[8]~42\ = CARRY((\mult|counter\(8) & !\mult|counter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mult|counter\(8),
	datad => VCC,
	cin => \mult|counter[7]~40\,
	combout => \mult|counter[8]~41_combout\,
	cout => \mult|counter[8]~42\);

-- Location: FF_X24_Y28_N25
\mult|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[8]~41_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(8));

-- Location: LCCOMB_X24_Y28_N28
\mult|counter[10]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[10]~45_combout\ = (\mult|counter\(10) & (\mult|counter[9]~44\ $ (GND))) # (!\mult|counter\(10) & (!\mult|counter[9]~44\ & VCC))
-- \mult|counter[10]~46\ = CARRY((\mult|counter\(10) & !\mult|counter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mult|counter\(10),
	datad => VCC,
	cin => \mult|counter[9]~44\,
	combout => \mult|counter[10]~45_combout\,
	cout => \mult|counter[10]~46\);

-- Location: FF_X24_Y28_N29
\mult|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[10]~45_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(10));

-- Location: LCCOMB_X24_Y27_N0
\mult|counter[12]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[12]~49_combout\ = (\mult|counter\(12) & (\mult|counter[11]~48\ $ (GND))) # (!\mult|counter\(12) & (!\mult|counter[11]~48\ & VCC))
-- \mult|counter[12]~50\ = CARRY((\mult|counter\(12) & !\mult|counter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mult|counter\(12),
	datad => VCC,
	cin => \mult|counter[11]~48\,
	combout => \mult|counter[12]~49_combout\,
	cout => \mult|counter[12]~50\);

-- Location: FF_X24_Y27_N1
\mult|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[12]~49_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(12));

-- Location: LCCOMB_X24_Y27_N2
\mult|counter[13]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[13]~51_combout\ = (\mult|counter\(13) & (!\mult|counter[12]~50\)) # (!\mult|counter\(13) & ((\mult|counter[12]~50\) # (GND)))
-- \mult|counter[13]~52\ = CARRY((!\mult|counter[12]~50\) # (!\mult|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mult|counter\(13),
	datad => VCC,
	cin => \mult|counter[12]~50\,
	combout => \mult|counter[13]~51_combout\,
	cout => \mult|counter[13]~52\);

-- Location: FF_X24_Y27_N3
\mult|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[13]~51_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(13));

-- Location: LCCOMB_X24_Y27_N4
\mult|counter[14]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[14]~53_combout\ = (\mult|counter\(14) & (\mult|counter[13]~52\ $ (GND))) # (!\mult|counter\(14) & (!\mult|counter[13]~52\ & VCC))
-- \mult|counter[14]~54\ = CARRY((\mult|counter\(14) & !\mult|counter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mult|counter\(14),
	datad => VCC,
	cin => \mult|counter[13]~52\,
	combout => \mult|counter[14]~53_combout\,
	cout => \mult|counter[14]~54\);

-- Location: FF_X24_Y27_N5
\mult|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[14]~53_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(14));

-- Location: LCCOMB_X24_Y27_N8
\mult|counter[16]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[16]~57_combout\ = (\mult|counter\(16) & (\mult|counter[15]~56\ $ (GND))) # (!\mult|counter\(16) & (!\mult|counter[15]~56\ & VCC))
-- \mult|counter[16]~58\ = CARRY((\mult|counter\(16) & !\mult|counter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mult|counter\(16),
	datad => VCC,
	cin => \mult|counter[15]~56\,
	combout => \mult|counter[16]~57_combout\,
	cout => \mult|counter[16]~58\);

-- Location: FF_X24_Y27_N9
\mult|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[16]~57_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(16));

-- Location: LCCOMB_X24_Y27_N10
\mult|counter[17]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|counter[17]~59_combout\ = (\mult|counter\(17) & (!\mult|counter[16]~58\)) # (!\mult|counter\(17) & ((\mult|counter[16]~58\) # (GND)))
-- \mult|counter[17]~60\ = CARRY((!\mult|counter[16]~58\) # (!\mult|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mult|counter\(17),
	datad => VCC,
	cin => \mult|counter[16]~58\,
	combout => \mult|counter[17]~59_combout\,
	cout => \mult|counter[17]~60\);

-- Location: FF_X24_Y27_N15
\mult|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[19]~63_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(19));

-- Location: FF_X24_Y27_N11
\mult|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[17]~59_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(17));

-- Location: LCCOMB_X24_Y27_N28
\mult|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|Equal0~5_combout\ = (((\mult|counter\(17)) # (!\mult|counter\(16))) # (!\mult|counter\(19))) # (!\mult|counter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|counter\(18),
	datab => \mult|counter\(19),
	datac => \mult|counter\(16),
	datad => \mult|counter\(17),
	combout => \mult|Equal0~5_combout\);

-- Location: FF_X24_Y28_N13
\mult|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[2]~29_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(2));

-- Location: LCCOMB_X24_Y28_N0
\mult|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|Equal0~0_combout\ = (((!\mult|counter\(2)) # (!\mult|counter\(0))) # (!\mult|counter\(3))) # (!\mult|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|counter\(1),
	datab => \mult|counter\(3),
	datac => \mult|counter\(0),
	datad => \mult|counter\(2),
	combout => \mult|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y27_N26
\mult|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|Equal0~3_combout\ = (\mult|counter\(15)) # (((!\mult|counter\(13)) # (!\mult|counter\(14))) # (!\mult|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|counter\(15),
	datab => \mult|counter\(12),
	datac => \mult|counter\(14),
	datad => \mult|counter\(13),
	combout => \mult|Equal0~3_combout\);

-- Location: FF_X24_Y28_N23
\mult|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|counter[7]~39_combout\,
	sclr => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|counter\(7));

-- Location: LCCOMB_X24_Y28_N2
\mult|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|Equal0~1_combout\ = (\mult|counter\(6)) # (((\mult|counter\(7)) # (!\mult|counter\(4))) # (!\mult|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|counter\(6),
	datab => \mult|counter\(5),
	datac => \mult|counter\(7),
	datad => \mult|counter\(4),
	combout => \mult|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y28_N8
\mult|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|Equal0~4_combout\ = (\mult|Equal0~2_combout\) # ((\mult|Equal0~0_combout\) # ((\mult|Equal0~3_combout\) # (\mult|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|Equal0~2_combout\,
	datab => \mult|Equal0~0_combout\,
	datac => \mult|Equal0~3_combout\,
	datad => \mult|Equal0~1_combout\,
	combout => \mult|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y28_N6
\mult|mul[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|mul[3]~1_combout\ = (\rst~input_o\) # ((!\mult|Equal0~7_combout\ & (!\mult|Equal0~5_combout\ & !\mult|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|Equal0~7_combout\,
	datab => \rst~input_o\,
	datac => \mult|Equal0~5_combout\,
	datad => \mult|Equal0~4_combout\,
	combout => \mult|mul[3]~1_combout\);

-- Location: FF_X28_Y28_N5
\mult|mul[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|mul~2_combout\,
	ena => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|mul\(2));

-- Location: LCCOMB_X28_Y28_N10
\mult|mul~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|mul~0_combout\ = (!\rst~input_o\ & (!\mult|mul\(0) & \mult|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \mult|mul\(0),
	datad => \mult|Mux0~0_combout\,
	combout => \mult|mul~0_combout\);

-- Location: FF_X28_Y28_N11
\mult|mul[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|mul~0_combout\,
	ena => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|mul\(0));

-- Location: LCCOMB_X28_Y28_N18
\mult|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|Mux0~0_combout\ = ((\mult|mul\(2)) # ((\mult|mul\(1)) # (\mult|mul\(0)))) # (!\mult|mul\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(2),
	datac => \mult|mul\(1),
	datad => \mult|mul\(0),
	combout => \mult|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y28_N22
\mult|mul~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mult|mul~3_combout\ = (!\rst~input_o\ & (\mult|Mux0~0_combout\ & (\mult|mul\(0) $ (\mult|mul\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(0),
	datab => \rst~input_o\,
	datac => \mult|mul\(1),
	datad => \mult|Mux0~0_combout\,
	combout => \mult|mul~3_combout\);

-- Location: FF_X28_Y28_N23
\mult|mul[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult|mul~3_combout\,
	ena => \mult|mul[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult|mul\(1));

-- Location: LCCOMB_X29_Y28_N8
\dec3|Mux4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec3|Mux4~8_combout\ = (\mult|mul\(3)) # ((\mult|mul\(2)) # (\mult|mul\(1) $ (!\mult|mul\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(1),
	datac => \mult|mul\(2),
	datad => \mult|mul\(0),
	combout => \dec3|Mux4~8_combout\);

-- Location: FF_X29_Y28_N9
\dec3|decoded_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec3|Mux4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec3|decoded_out\(1));

-- Location: LCCOMB_X28_Y28_N0
\dec3|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec3|Mux3~5_combout\ = (\mult|mul\(3)) # ((\mult|mul\(2) & (\mult|mul\(1))) # (!\mult|mul\(2) & (!\mult|mul\(1) & !\mult|mul\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(2),
	datac => \mult|mul\(1),
	datad => \mult|mul\(0),
	combout => \dec3|Mux3~5_combout\);

-- Location: FF_X27_Y28_N9
\dec3|decoded_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dec3|Mux3~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec3|decoded_out\(2));

-- Location: FF_X28_Y28_N1
\dec3|decoded_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec3|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec3|decoded_out\(3));

-- Location: LCCOMB_X29_Y28_N10
\dec3|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec3|Mux2~5_combout\ = (\mult|mul\(3)) # ((\mult|mul\(1) & ((\mult|mul\(2)) # (!\mult|mul\(0)))) # (!\mult|mul\(1) & (!\mult|mul\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(1),
	datac => \mult|mul\(2),
	datad => \mult|mul\(0),
	combout => \dec3|Mux2~5_combout\);

-- Location: FF_X29_Y28_N11
\dec3|decoded_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec3|Mux2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec3|decoded_out\(4));

-- Location: LCCOMB_X29_Y28_N30
\dec3|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec3|Mux1~5_combout\ = (\mult|mul\(3)) # ((\mult|mul\(1) & ((\mult|mul\(2)) # (\mult|mul\(0)))) # (!\mult|mul\(1) & ((!\mult|mul\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(1),
	datac => \mult|mul\(2),
	datad => \mult|mul\(0),
	combout => \dec3|Mux1~5_combout\);

-- Location: FF_X29_Y28_N29
\dec3|decoded_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dec3|Mux1~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec3|decoded_out\(5));

-- Location: FF_X29_Y28_N31
\dec3|decoded_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec3|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec3|decoded_out\(6));

-- Location: LCCOMB_X29_Y28_N24
\dec3|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec3|Mux0~5_combout\ = (\mult|mul\(3)) # ((\mult|mul\(1) & ((\mult|mul\(2)) # (\mult|mul\(0)))) # (!\mult|mul\(1) & ((!\mult|mul\(0)) # (!\mult|mul\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(1),
	datac => \mult|mul\(2),
	datad => \mult|mul\(0),
	combout => \dec3|Mux0~5_combout\);

-- Location: FF_X29_Y28_N25
\dec3|decoded_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec3|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec3|decoded_out\(7));

-- Location: LCCOMB_X26_Y28_N0
\dec2|decoded_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec2|decoded_out[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \dec2|decoded_out[0]~feeder_combout\);

-- Location: FF_X26_Y28_N1
\dec2|decoded_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec2|decoded_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec2|decoded_out\(0));

-- Location: LCCOMB_X29_Y28_N26
\dec2|Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec2|Mux4~5_combout\ = (\mult|mul\(3)) # ((\mult|mul\(2)) # (!\mult|mul\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(1),
	datac => \mult|mul\(2),
	combout => \dec2|Mux4~5_combout\);

-- Location: FF_X29_Y28_N27
\dec2|decoded_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec2|Mux4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec2|decoded_out\(1));

-- Location: LCCOMB_X28_Y28_N2
\dec2|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec2|Mux3~5_combout\ = (\mult|mul\(3)) # ((\mult|mul\(2) & (\mult|mul\(1) & \mult|mul\(0))) # (!\mult|mul\(2) & (!\mult|mul\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(2),
	datac => \mult|mul\(1),
	datad => \mult|mul\(0),
	combout => \dec2|Mux3~5_combout\);

-- Location: FF_X28_Y28_N3
\dec2|decoded_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec2|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec2|decoded_out\(2));

-- Location: LCCOMB_X27_Y28_N26
\dec2|decoded_out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec2|decoded_out[3]~feeder_combout\ = \dec2|Mux3~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dec2|Mux3~5_combout\,
	combout => \dec2|decoded_out[3]~feeder_combout\);

-- Location: FF_X27_Y28_N27
\dec2|decoded_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec2|decoded_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec2|decoded_out\(3));

-- Location: LCCOMB_X28_Y28_N28
\dec2|Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec2|Mux2~8_combout\ = (\mult|mul\(3)) # (((\mult|mul\(1) & \mult|mul\(0))) # (!\mult|mul\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(2),
	datac => \mult|mul\(1),
	datad => \mult|mul\(0),
	combout => \dec2|Mux2~8_combout\);

-- Location: FF_X28_Y28_N29
\dec2|decoded_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec2|Mux2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec2|decoded_out\(4));

-- Location: LCCOMB_X29_Y28_N12
\dec2|Mux1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec2|Mux1~8_combout\ = (\mult|mul\(3)) # (((\mult|mul\(2) & \mult|mul\(0))) # (!\mult|mul\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(1),
	datac => \mult|mul\(2),
	datad => \mult|mul\(0),
	combout => \dec2|Mux1~8_combout\);

-- Location: FF_X29_Y28_N13
\dec2|decoded_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec2|Mux1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec2|decoded_out\(5));

-- Location: LCCOMB_X29_Y28_N22
\dec2|decoded_out[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec2|decoded_out[6]~feeder_combout\ = \dec2|Mux1~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dec2|Mux1~8_combout\,
	combout => \dec2|decoded_out[6]~feeder_combout\);

-- Location: FF_X29_Y28_N23
\dec2|decoded_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec2|decoded_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec2|decoded_out\(6));

-- Location: LCCOMB_X29_Y28_N16
\dec2|Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec2|Mux0~8_combout\ = (\mult|mul\(3)) # ((\mult|mul\(2) $ (!\mult|mul\(0))) # (!\mult|mul\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(1),
	datac => \mult|mul\(2),
	datad => \mult|mul\(0),
	combout => \dec2|Mux0~8_combout\);

-- Location: FF_X29_Y28_N17
\dec2|decoded_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec2|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec2|decoded_out\(7));

-- Location: LCCOMB_X33_Y28_N0
\dec1|decoded_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \dec1|decoded_out[0]~feeder_combout\);

-- Location: FF_X33_Y28_N1
\dec1|decoded_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec1|decoded_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec1|decoded_out\(0));

-- Location: LCCOMB_X29_Y28_N18
\dec1|Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|Mux4~5_combout\ = (\mult|mul\(3)) # ((\mult|mul\(1) & ((\mult|mul\(2)) # (!\mult|mul\(0)))) # (!\mult|mul\(1) & ((\mult|mul\(0)) # (!\mult|mul\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(1),
	datac => \mult|mul\(2),
	datad => \mult|mul\(0),
	combout => \dec1|Mux4~5_combout\);

-- Location: FF_X29_Y28_N19
\dec1|decoded_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec1|Mux4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec1|decoded_out\(1));

-- Location: LCCOMB_X28_Y28_N6
\dec1|Mux3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|Mux3~8_combout\ = (\mult|mul\(3)) # ((!\mult|mul\(2) & ((!\mult|mul\(0)) # (!\mult|mul\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(2),
	datac => \mult|mul\(1),
	datad => \mult|mul\(0),
	combout => \dec1|Mux3~8_combout\);

-- Location: LCCOMB_X27_Y28_N4
\dec1|decoded_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[2]~feeder_combout\ = \dec1|Mux3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dec1|Mux3~8_combout\,
	combout => \dec1|decoded_out[2]~feeder_combout\);

-- Location: FF_X27_Y28_N5
\dec1|decoded_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec1|decoded_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec1|decoded_out\(2));

-- Location: FF_X28_Y28_N7
\dec1|decoded_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec1|Mux3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec1|decoded_out\(3));

-- Location: LCCOMB_X28_Y28_N16
\dec1|Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|Mux2~8_combout\ = (\mult|mul\(3)) # (((!\mult|mul\(1) & !\mult|mul\(0))) # (!\mult|mul\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(2),
	datac => \mult|mul\(1),
	datad => \mult|mul\(0),
	combout => \dec1|Mux2~8_combout\);

-- Location: FF_X28_Y28_N17
\dec1|decoded_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec1|Mux2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec1|decoded_out\(4));

-- Location: LCCOMB_X28_Y28_N26
\dec1|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|Mux1~5_combout\ = (\mult|mul\(3)) # ((\mult|mul\(1) & ((!\mult|mul\(0)))) # (!\mult|mul\(1) & ((\mult|mul\(0)) # (!\mult|mul\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(2),
	datac => \mult|mul\(1),
	datad => \mult|mul\(0),
	combout => \dec1|Mux1~5_combout\);

-- Location: FF_X28_Y28_N27
\dec1|decoded_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec1|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec1|decoded_out\(5));

-- Location: LCCOMB_X27_Y28_N6
\dec1|decoded_out[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|decoded_out[6]~feeder_combout\ = \dec1|Mux1~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dec1|Mux1~5_combout\,
	combout => \dec1|decoded_out[6]~feeder_combout\);

-- Location: FF_X27_Y28_N7
\dec1|decoded_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec1|decoded_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec1|decoded_out\(6));

-- Location: LCCOMB_X28_Y28_N20
\dec1|Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|Mux0~8_combout\ = (\mult|mul\(3)) # ((\mult|mul\(1) $ (\mult|mul\(0))) # (!\mult|mul\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(2),
	datac => \mult|mul\(1),
	datad => \mult|mul\(0),
	combout => \dec1|Mux0~8_combout\);

-- Location: FF_X28_Y28_N21
\dec1|decoded_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec1|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec1|decoded_out\(7));

-- Location: LCCOMB_X39_Y28_N0
\dec0|decoded_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|decoded_out[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \dec0|decoded_out[0]~feeder_combout\);

-- Location: FF_X39_Y28_N1
\dec0|decoded_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec0|decoded_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec0|decoded_out\(0));

-- Location: LCCOMB_X29_Y28_N20
\dec0|Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|Mux4~5_combout\ = (\mult|mul\(3)) # ((\mult|mul\(1)) # (!\mult|mul\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(1),
	datac => \mult|mul\(2),
	combout => \dec0|Mux4~5_combout\);

-- Location: FF_X29_Y28_N21
\dec0|decoded_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec0|Mux4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec0|decoded_out\(1));

-- Location: LCCOMB_X29_Y28_N14
\dec0|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|Mux3~2_combout\ = (\mult|mul\(3) & ((\mult|mul\(1)) # ((\mult|mul\(2)) # (\mult|mul\(0))))) # (!\mult|mul\(3) & (((!\mult|mul\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(1),
	datac => \mult|mul\(2),
	datad => \mult|mul\(0),
	combout => \dec0|Mux3~2_combout\);

-- Location: FF_X29_Y28_N15
\dec0|decoded_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec0|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec0|decoded_out\(2));

-- Location: FF_X29_Y28_N1
\dec0|decoded_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dec0|Mux3~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec0|decoded_out\(3));

-- Location: LCCOMB_X28_Y28_N14
\dec0|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|Mux2~2_combout\ = (\mult|mul\(3) & ((\mult|mul\(2)) # ((\mult|mul\(1)) # (\mult|mul\(0))))) # (!\mult|mul\(3) & (((!\mult|mul\(1))) # (!\mult|mul\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(2),
	datac => \mult|mul\(1),
	datad => \mult|mul\(0),
	combout => \dec0|Mux2~2_combout\);

-- Location: FF_X28_Y28_N15
\dec0|decoded_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec0|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec0|decoded_out\(4));

-- Location: LCCOMB_X29_Y28_N2
\dec0|Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|Mux1~5_combout\ = (\mult|mul\(1)) # ((\mult|mul\(3) & ((\mult|mul\(2)) # (\mult|mul\(0)))) # (!\mult|mul\(3) & (!\mult|mul\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(1),
	datac => \mult|mul\(2),
	datad => \mult|mul\(0),
	combout => \dec0|Mux1~5_combout\);

-- Location: FF_X29_Y28_N3
\dec0|decoded_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec0|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec0|decoded_out\(5));

-- Location: LCCOMB_X29_Y28_N4
\dec0|decoded_out[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|decoded_out[6]~feeder_combout\ = \dec0|Mux1~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dec0|Mux1~5_combout\,
	combout => \dec0|decoded_out[6]~feeder_combout\);

-- Location: FF_X29_Y28_N5
\dec0|decoded_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec0|decoded_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec0|decoded_out\(6));

-- Location: LCCOMB_X28_Y28_N24
\dec0|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|Mux0~5_combout\ = (\mult|mul\(1)) # ((\mult|mul\(3) & ((\mult|mul\(2)) # (\mult|mul\(0)))) # (!\mult|mul\(3) & ((!\mult|mul\(0)) # (!\mult|mul\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mult|mul\(3),
	datab => \mult|mul\(2),
	datac => \mult|mul\(1),
	datad => \mult|mul\(0),
	combout => \dec0|Mux0~5_combout\);

-- Location: FF_X28_Y28_N25
\dec0|decoded_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec0|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec0|decoded_out\(7));

ww_seg1(0) <= \seg1[0]~output_o\;

ww_seg1(1) <= \seg1[1]~output_o\;

ww_seg1(2) <= \seg1[2]~output_o\;

ww_seg1(3) <= \seg1[3]~output_o\;

ww_seg1(4) <= \seg1[4]~output_o\;

ww_seg1(5) <= \seg1[5]~output_o\;

ww_seg1(6) <= \seg1[6]~output_o\;

ww_seg1(7) <= \seg1[7]~output_o\;

ww_seg2(0) <= \seg2[0]~output_o\;

ww_seg2(1) <= \seg2[1]~output_o\;

ww_seg2(2) <= \seg2[2]~output_o\;

ww_seg2(3) <= \seg2[3]~output_o\;

ww_seg2(4) <= \seg2[4]~output_o\;

ww_seg2(5) <= \seg2[5]~output_o\;

ww_seg2(6) <= \seg2[6]~output_o\;

ww_seg2(7) <= \seg2[7]~output_o\;

ww_seg3(0) <= \seg3[0]~output_o\;

ww_seg3(1) <= \seg3[1]~output_o\;

ww_seg3(2) <= \seg3[2]~output_o\;

ww_seg3(3) <= \seg3[3]~output_o\;

ww_seg3(4) <= \seg3[4]~output_o\;

ww_seg3(5) <= \seg3[5]~output_o\;

ww_seg3(6) <= \seg3[6]~output_o\;

ww_seg3(7) <= \seg3[7]~output_o\;

ww_seg4(0) <= \seg4[0]~output_o\;

ww_seg4(1) <= \seg4[1]~output_o\;

ww_seg4(2) <= \seg4[2]~output_o\;

ww_seg4(3) <= \seg4[3]~output_o\;

ww_seg4(4) <= \seg4[4]~output_o\;

ww_seg4(5) <= \seg4[5]~output_o\;

ww_seg4(6) <= \seg4[6]~output_o\;

ww_seg4(7) <= \seg4[7]~output_o\;
END structure;


