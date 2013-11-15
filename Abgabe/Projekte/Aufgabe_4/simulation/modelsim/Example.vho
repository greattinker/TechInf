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

-- DATE "11/15/2013 15:11:14"

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

ENTITY 	EntprellteLED IS
    PORT (
	clk : IN std_logic;
	btn_e : IN std_logic;
	ld_e : OUT std_logic
	);
END EntprellteLED;

-- Design Ports Information
-- ld_e	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_e	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF EntprellteLED IS
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
SIGNAL ww_btn_e : std_logic;
SIGNAL ww_ld_e : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \prell|timer|counter[6]~45_combout\ : std_logic;
SIGNAL \prell|timer|counter[11]~55_combout\ : std_logic;
SIGNAL \prell|timer|counter[13]~59_combout\ : std_logic;
SIGNAL \prell|timer|counter[15]~63_combout\ : std_logic;
SIGNAL \prell|timer|counter[19]~71_combout\ : std_logic;
SIGNAL \prell|timer|counter[21]~75_combout\ : std_logic;
SIGNAL \prell|timer|counter[22]~77_combout\ : std_logic;
SIGNAL \prell|timer|counter[29]~91_combout\ : std_logic;
SIGNAL \prell|btn_s~q\ : std_logic;
SIGNAL \prell|timer|Equal0~3_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~5_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~6_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~7_combout\ : std_logic;
SIGNAL \prell|btn2~q\ : std_logic;
SIGNAL \prell|btn_s~0_combout\ : std_logic;
SIGNAL \btn_e~input_o\ : std_logic;
SIGNAL \ld_e~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \prell|z_alt~q\ : std_logic;
SIGNAL \prell|timer|counter[0]~32_combout\ : std_logic;
SIGNAL \prell|timer|counter[16]~34_combout\ : std_logic;
SIGNAL \prell|timer|counter[0]~33\ : std_logic;
SIGNAL \prell|timer|counter[1]~35_combout\ : std_logic;
SIGNAL \prell|timer|counter[1]~36\ : std_logic;
SIGNAL \prell|timer|counter[2]~37_combout\ : std_logic;
SIGNAL \prell|timer|counter[2]~38\ : std_logic;
SIGNAL \prell|timer|counter[3]~40\ : std_logic;
SIGNAL \prell|timer|counter[4]~41_combout\ : std_logic;
SIGNAL \prell|timer|counter[4]~42\ : std_logic;
SIGNAL \prell|timer|counter[5]~44\ : std_logic;
SIGNAL \prell|timer|counter[6]~46\ : std_logic;
SIGNAL \prell|timer|counter[7]~47_combout\ : std_logic;
SIGNAL \prell|timer|counter[7]~48\ : std_logic;
SIGNAL \prell|timer|counter[8]~49_combout\ : std_logic;
SIGNAL \prell|timer|counter[8]~50\ : std_logic;
SIGNAL \prell|timer|counter[9]~51_combout\ : std_logic;
SIGNAL \prell|timer|counter[9]~52\ : std_logic;
SIGNAL \prell|timer|counter[10]~53_combout\ : std_logic;
SIGNAL \prell|timer|counter[10]~54\ : std_logic;
SIGNAL \prell|timer|counter[11]~56\ : std_logic;
SIGNAL \prell|timer|counter[12]~57_combout\ : std_logic;
SIGNAL \prell|timer|counter[12]~58\ : std_logic;
SIGNAL \prell|timer|counter[13]~60\ : std_logic;
SIGNAL \prell|timer|counter[14]~61_combout\ : std_logic;
SIGNAL \prell|timer|counter[14]~62\ : std_logic;
SIGNAL \prell|timer|counter[15]~64\ : std_logic;
SIGNAL \prell|timer|counter[16]~65_combout\ : std_logic;
SIGNAL \prell|timer|counter[16]~66\ : std_logic;
SIGNAL \prell|timer|counter[17]~67_combout\ : std_logic;
SIGNAL \prell|timer|counter[17]~68\ : std_logic;
SIGNAL \prell|timer|counter[18]~69_combout\ : std_logic;
SIGNAL \prell|timer|counter[18]~70\ : std_logic;
SIGNAL \prell|timer|counter[19]~72\ : std_logic;
SIGNAL \prell|timer|counter[20]~73_combout\ : std_logic;
SIGNAL \prell|timer|counter[20]~74\ : std_logic;
SIGNAL \prell|timer|counter[21]~76\ : std_logic;
SIGNAL \prell|timer|counter[22]~78\ : std_logic;
SIGNAL \prell|timer|counter[23]~79_combout\ : std_logic;
SIGNAL \prell|timer|counter[23]~80\ : std_logic;
SIGNAL \prell|timer|counter[24]~81_combout\ : std_logic;
SIGNAL \prell|timer|counter[24]~82\ : std_logic;
SIGNAL \prell|timer|counter[25]~83_combout\ : std_logic;
SIGNAL \prell|timer|counter[25]~84\ : std_logic;
SIGNAL \prell|timer|counter[26]~85_combout\ : std_logic;
SIGNAL \prell|timer|counter[26]~86\ : std_logic;
SIGNAL \prell|timer|counter[27]~87_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~8_combout\ : std_logic;
SIGNAL \prell|timer|counter[27]~88\ : std_logic;
SIGNAL \prell|timer|counter[28]~89_combout\ : std_logic;
SIGNAL \prell|timer|counter[28]~90\ : std_logic;
SIGNAL \prell|timer|counter[29]~92\ : std_logic;
SIGNAL \prell|timer|counter[30]~93_combout\ : std_logic;
SIGNAL \prell|timer|counter[30]~94\ : std_logic;
SIGNAL \prell|timer|counter[31]~95_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~9_combout\ : std_logic;
SIGNAL \prell|timer|counter[3]~39_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~0_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~2_combout\ : std_logic;
SIGNAL \prell|timer|counter[5]~43_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~1_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~4_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~10_combout\ : std_logic;
SIGNAL \prell|timer|peak~0_combout\ : std_logic;
SIGNAL \prell|timer|peak~q\ : std_logic;
SIGNAL \prell|z_neu~0_combout\ : std_logic;
SIGNAL \prell|z_neu~q\ : std_logic;
SIGNAL \prell|process_1~0_combout\ : std_logic;
SIGNAL \prell|btnout~q\ : std_logic;
SIGNAL \led1|led~0_combout\ : std_logic;
SIGNAL \led1|led~q\ : std_logic;
SIGNAL \led1|ld~feeder_combout\ : std_logic;
SIGNAL \led1|ld~q\ : std_logic;
SIGNAL \prell|timer|counter\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_btn_e <= btn_e;
ld_e <= ww_ld_e;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X16_Y19_N13
\prell|timer|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[6]~45_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(6));

-- Location: FF_X16_Y19_N23
\prell|timer|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[11]~55_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(11));

-- Location: FF_X16_Y19_N27
\prell|timer|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[13]~59_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(13));

-- Location: FF_X16_Y19_N31
\prell|timer|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[15]~63_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(15));

-- Location: FF_X16_Y18_N7
\prell|timer|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[19]~71_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(19));

-- Location: FF_X16_Y18_N11
\prell|timer|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[21]~75_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(21));

-- Location: FF_X16_Y18_N13
\prell|timer|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[22]~77_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(22));

-- Location: FF_X16_Y18_N27
\prell|timer|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[29]~91_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(29));

-- Location: LCCOMB_X16_Y19_N12
\prell|timer|counter[6]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[6]~45_combout\ = (\prell|timer|counter\(6) & (\prell|timer|counter[5]~44\ $ (GND))) # (!\prell|timer|counter\(6) & (!\prell|timer|counter[5]~44\ & VCC))
-- \prell|timer|counter[6]~46\ = CARRY((\prell|timer|counter\(6) & !\prell|timer|counter[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(6),
	datad => VCC,
	cin => \prell|timer|counter[5]~44\,
	combout => \prell|timer|counter[6]~45_combout\,
	cout => \prell|timer|counter[6]~46\);

-- Location: LCCOMB_X16_Y19_N22
\prell|timer|counter[11]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[11]~55_combout\ = (\prell|timer|counter\(11) & (!\prell|timer|counter[10]~54\)) # (!\prell|timer|counter\(11) & ((\prell|timer|counter[10]~54\) # (GND)))
-- \prell|timer|counter[11]~56\ = CARRY((!\prell|timer|counter[10]~54\) # (!\prell|timer|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(11),
	datad => VCC,
	cin => \prell|timer|counter[10]~54\,
	combout => \prell|timer|counter[11]~55_combout\,
	cout => \prell|timer|counter[11]~56\);

-- Location: LCCOMB_X16_Y19_N26
\prell|timer|counter[13]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[13]~59_combout\ = (\prell|timer|counter\(13) & (!\prell|timer|counter[12]~58\)) # (!\prell|timer|counter\(13) & ((\prell|timer|counter[12]~58\) # (GND)))
-- \prell|timer|counter[13]~60\ = CARRY((!\prell|timer|counter[12]~58\) # (!\prell|timer|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(13),
	datad => VCC,
	cin => \prell|timer|counter[12]~58\,
	combout => \prell|timer|counter[13]~59_combout\,
	cout => \prell|timer|counter[13]~60\);

-- Location: LCCOMB_X16_Y19_N30
\prell|timer|counter[15]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[15]~63_combout\ = (\prell|timer|counter\(15) & (!\prell|timer|counter[14]~62\)) # (!\prell|timer|counter\(15) & ((\prell|timer|counter[14]~62\) # (GND)))
-- \prell|timer|counter[15]~64\ = CARRY((!\prell|timer|counter[14]~62\) # (!\prell|timer|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(15),
	datad => VCC,
	cin => \prell|timer|counter[14]~62\,
	combout => \prell|timer|counter[15]~63_combout\,
	cout => \prell|timer|counter[15]~64\);

-- Location: LCCOMB_X16_Y18_N6
\prell|timer|counter[19]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[19]~71_combout\ = (\prell|timer|counter\(19) & (!\prell|timer|counter[18]~70\)) # (!\prell|timer|counter\(19) & ((\prell|timer|counter[18]~70\) # (GND)))
-- \prell|timer|counter[19]~72\ = CARRY((!\prell|timer|counter[18]~70\) # (!\prell|timer|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(19),
	datad => VCC,
	cin => \prell|timer|counter[18]~70\,
	combout => \prell|timer|counter[19]~71_combout\,
	cout => \prell|timer|counter[19]~72\);

-- Location: LCCOMB_X16_Y18_N10
\prell|timer|counter[21]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[21]~75_combout\ = (\prell|timer|counter\(21) & (!\prell|timer|counter[20]~74\)) # (!\prell|timer|counter\(21) & ((\prell|timer|counter[20]~74\) # (GND)))
-- \prell|timer|counter[21]~76\ = CARRY((!\prell|timer|counter[20]~74\) # (!\prell|timer|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(21),
	datad => VCC,
	cin => \prell|timer|counter[20]~74\,
	combout => \prell|timer|counter[21]~75_combout\,
	cout => \prell|timer|counter[21]~76\);

-- Location: LCCOMB_X16_Y18_N12
\prell|timer|counter[22]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[22]~77_combout\ = (\prell|timer|counter\(22) & (\prell|timer|counter[21]~76\ $ (GND))) # (!\prell|timer|counter\(22) & (!\prell|timer|counter[21]~76\ & VCC))
-- \prell|timer|counter[22]~78\ = CARRY((\prell|timer|counter\(22) & !\prell|timer|counter[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(22),
	datad => VCC,
	cin => \prell|timer|counter[21]~76\,
	combout => \prell|timer|counter[22]~77_combout\,
	cout => \prell|timer|counter[22]~78\);

-- Location: LCCOMB_X16_Y18_N26
\prell|timer|counter[29]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[29]~91_combout\ = (\prell|timer|counter\(29) & (!\prell|timer|counter[28]~90\)) # (!\prell|timer|counter\(29) & ((\prell|timer|counter[28]~90\) # (GND)))
-- \prell|timer|counter[29]~92\ = CARRY((!\prell|timer|counter[28]~90\) # (!\prell|timer|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(29),
	datad => VCC,
	cin => \prell|timer|counter[28]~90\,
	combout => \prell|timer|counter[29]~91_combout\,
	cout => \prell|timer|counter[29]~92\);

-- Location: FF_X9_Y20_N13
\prell|btn_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|btn_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|btn_s~q\);

-- Location: LCCOMB_X17_Y19_N6
\prell|timer|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~3_combout\ = (\prell|timer|counter\(12)) # ((\prell|timer|counter\(15)) # ((\prell|timer|counter\(13)) # (!\prell|timer|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(12),
	datab => \prell|timer|counter\(15),
	datac => \prell|timer|counter\(13),
	datad => \prell|timer|counter\(14),
	combout => \prell|timer|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y19_N2
\prell|timer|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~5_combout\ = (\prell|timer|counter\(18)) # (((\prell|timer|counter\(16)) # (\prell|timer|counter\(19))) # (!\prell|timer|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(18),
	datab => \prell|timer|counter\(17),
	datac => \prell|timer|counter\(16),
	datad => \prell|timer|counter\(19),
	combout => \prell|timer|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y19_N12
\prell|timer|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~6_combout\ = (\prell|timer|counter\(21)) # (\prell|timer|counter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \prell|timer|counter\(21),
	datad => \prell|timer|counter\(20),
	combout => \prell|timer|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y19_N22
\prell|timer|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~7_combout\ = (\prell|timer|counter\(23)) # ((\prell|timer|Equal0~5_combout\) # ((\prell|timer|counter\(22)) # (\prell|timer|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(23),
	datab => \prell|timer|Equal0~5_combout\,
	datac => \prell|timer|counter\(22),
	datad => \prell|timer|Equal0~6_combout\,
	combout => \prell|timer|Equal0~7_combout\);

-- Location: FF_X9_Y20_N7
\prell|btn2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \btn_e~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|btn2~q\);

-- Location: LCCOMB_X9_Y20_N12
\prell|btn_s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|btn_s~0_combout\ = !\prell|btn2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \prell|btn2~q\,
	combout => \prell|btn_s~0_combout\);

-- Location: IOIBUF_X0_Y21_N8
\btn_e~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_e,
	o => \btn_e~input_o\);

-- Location: IOOBUF_X0_Y20_N9
\ld_e~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1|ld~q\,
	devoe => ww_devoe,
	o => \ld_e~output_o\);

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

-- Location: FF_X9_Y20_N17
\prell|z_alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \prell|z_neu~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|z_alt~q\);

-- Location: LCCOMB_X16_Y19_N0
\prell|timer|counter[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[0]~32_combout\ = \prell|timer|counter\(0) $ (VCC)
-- \prell|timer|counter[0]~33\ = CARRY(\prell|timer|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(0),
	datad => VCC,
	combout => \prell|timer|counter[0]~32_combout\,
	cout => \prell|timer|counter[0]~33\);

-- Location: LCCOMB_X9_Y20_N8
\prell|timer|counter[16]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[16]~34_combout\ = (!\prell|timer|Equal0~10_combout\) # (!\prell|z_neu~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \prell|z_neu~q\,
	datad => \prell|timer|Equal0~10_combout\,
	combout => \prell|timer|counter[16]~34_combout\);

-- Location: FF_X16_Y19_N1
\prell|timer|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[0]~32_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(0));

-- Location: LCCOMB_X16_Y19_N2
\prell|timer|counter[1]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[1]~35_combout\ = (\prell|timer|counter\(1) & (!\prell|timer|counter[0]~33\)) # (!\prell|timer|counter\(1) & ((\prell|timer|counter[0]~33\) # (GND)))
-- \prell|timer|counter[1]~36\ = CARRY((!\prell|timer|counter[0]~33\) # (!\prell|timer|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(1),
	datad => VCC,
	cin => \prell|timer|counter[0]~33\,
	combout => \prell|timer|counter[1]~35_combout\,
	cout => \prell|timer|counter[1]~36\);

-- Location: FF_X16_Y19_N3
\prell|timer|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[1]~35_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(1));

-- Location: LCCOMB_X16_Y19_N4
\prell|timer|counter[2]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[2]~37_combout\ = (\prell|timer|counter\(2) & (\prell|timer|counter[1]~36\ $ (GND))) # (!\prell|timer|counter\(2) & (!\prell|timer|counter[1]~36\ & VCC))
-- \prell|timer|counter[2]~38\ = CARRY((\prell|timer|counter\(2) & !\prell|timer|counter[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(2),
	datad => VCC,
	cin => \prell|timer|counter[1]~36\,
	combout => \prell|timer|counter[2]~37_combout\,
	cout => \prell|timer|counter[2]~38\);

-- Location: FF_X16_Y19_N5
\prell|timer|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[2]~37_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(2));

-- Location: LCCOMB_X16_Y19_N6
\prell|timer|counter[3]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[3]~39_combout\ = (\prell|timer|counter\(3) & (!\prell|timer|counter[2]~38\)) # (!\prell|timer|counter\(3) & ((\prell|timer|counter[2]~38\) # (GND)))
-- \prell|timer|counter[3]~40\ = CARRY((!\prell|timer|counter[2]~38\) # (!\prell|timer|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(3),
	datad => VCC,
	cin => \prell|timer|counter[2]~38\,
	combout => \prell|timer|counter[3]~39_combout\,
	cout => \prell|timer|counter[3]~40\);

-- Location: LCCOMB_X16_Y19_N8
\prell|timer|counter[4]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[4]~41_combout\ = (\prell|timer|counter\(4) & (\prell|timer|counter[3]~40\ $ (GND))) # (!\prell|timer|counter\(4) & (!\prell|timer|counter[3]~40\ & VCC))
-- \prell|timer|counter[4]~42\ = CARRY((\prell|timer|counter\(4) & !\prell|timer|counter[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(4),
	datad => VCC,
	cin => \prell|timer|counter[3]~40\,
	combout => \prell|timer|counter[4]~41_combout\,
	cout => \prell|timer|counter[4]~42\);

-- Location: FF_X16_Y19_N9
\prell|timer|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[4]~41_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(4));

-- Location: LCCOMB_X16_Y19_N10
\prell|timer|counter[5]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[5]~43_combout\ = (\prell|timer|counter\(5) & (!\prell|timer|counter[4]~42\)) # (!\prell|timer|counter\(5) & ((\prell|timer|counter[4]~42\) # (GND)))
-- \prell|timer|counter[5]~44\ = CARRY((!\prell|timer|counter[4]~42\) # (!\prell|timer|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(5),
	datad => VCC,
	cin => \prell|timer|counter[4]~42\,
	combout => \prell|timer|counter[5]~43_combout\,
	cout => \prell|timer|counter[5]~44\);

-- Location: LCCOMB_X16_Y19_N14
\prell|timer|counter[7]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[7]~47_combout\ = (\prell|timer|counter\(7) & (!\prell|timer|counter[6]~46\)) # (!\prell|timer|counter\(7) & ((\prell|timer|counter[6]~46\) # (GND)))
-- \prell|timer|counter[7]~48\ = CARRY((!\prell|timer|counter[6]~46\) # (!\prell|timer|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(7),
	datad => VCC,
	cin => \prell|timer|counter[6]~46\,
	combout => \prell|timer|counter[7]~47_combout\,
	cout => \prell|timer|counter[7]~48\);

-- Location: FF_X16_Y19_N15
\prell|timer|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[7]~47_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(7));

-- Location: LCCOMB_X16_Y19_N16
\prell|timer|counter[8]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[8]~49_combout\ = (\prell|timer|counter\(8) & (\prell|timer|counter[7]~48\ $ (GND))) # (!\prell|timer|counter\(8) & (!\prell|timer|counter[7]~48\ & VCC))
-- \prell|timer|counter[8]~50\ = CARRY((\prell|timer|counter\(8) & !\prell|timer|counter[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(8),
	datad => VCC,
	cin => \prell|timer|counter[7]~48\,
	combout => \prell|timer|counter[8]~49_combout\,
	cout => \prell|timer|counter[8]~50\);

-- Location: FF_X16_Y19_N17
\prell|timer|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[8]~49_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(8));

-- Location: LCCOMB_X16_Y19_N18
\prell|timer|counter[9]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[9]~51_combout\ = (\prell|timer|counter\(9) & (!\prell|timer|counter[8]~50\)) # (!\prell|timer|counter\(9) & ((\prell|timer|counter[8]~50\) # (GND)))
-- \prell|timer|counter[9]~52\ = CARRY((!\prell|timer|counter[8]~50\) # (!\prell|timer|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(9),
	datad => VCC,
	cin => \prell|timer|counter[8]~50\,
	combout => \prell|timer|counter[9]~51_combout\,
	cout => \prell|timer|counter[9]~52\);

-- Location: FF_X16_Y19_N19
\prell|timer|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[9]~51_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(9));

-- Location: LCCOMB_X16_Y19_N20
\prell|timer|counter[10]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[10]~53_combout\ = (\prell|timer|counter\(10) & (\prell|timer|counter[9]~52\ $ (GND))) # (!\prell|timer|counter\(10) & (!\prell|timer|counter[9]~52\ & VCC))
-- \prell|timer|counter[10]~54\ = CARRY((\prell|timer|counter\(10) & !\prell|timer|counter[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(10),
	datad => VCC,
	cin => \prell|timer|counter[9]~52\,
	combout => \prell|timer|counter[10]~53_combout\,
	cout => \prell|timer|counter[10]~54\);

-- Location: FF_X16_Y19_N21
\prell|timer|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[10]~53_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(10));

-- Location: LCCOMB_X16_Y19_N24
\prell|timer|counter[12]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[12]~57_combout\ = (\prell|timer|counter\(12) & (\prell|timer|counter[11]~56\ $ (GND))) # (!\prell|timer|counter\(12) & (!\prell|timer|counter[11]~56\ & VCC))
-- \prell|timer|counter[12]~58\ = CARRY((\prell|timer|counter\(12) & !\prell|timer|counter[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(12),
	datad => VCC,
	cin => \prell|timer|counter[11]~56\,
	combout => \prell|timer|counter[12]~57_combout\,
	cout => \prell|timer|counter[12]~58\);

-- Location: FF_X16_Y19_N25
\prell|timer|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[12]~57_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(12));

-- Location: LCCOMB_X16_Y19_N28
\prell|timer|counter[14]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[14]~61_combout\ = (\prell|timer|counter\(14) & (\prell|timer|counter[13]~60\ $ (GND))) # (!\prell|timer|counter\(14) & (!\prell|timer|counter[13]~60\ & VCC))
-- \prell|timer|counter[14]~62\ = CARRY((\prell|timer|counter\(14) & !\prell|timer|counter[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(14),
	datad => VCC,
	cin => \prell|timer|counter[13]~60\,
	combout => \prell|timer|counter[14]~61_combout\,
	cout => \prell|timer|counter[14]~62\);

-- Location: FF_X16_Y19_N29
\prell|timer|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[14]~61_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(14));

-- Location: LCCOMB_X16_Y18_N0
\prell|timer|counter[16]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[16]~65_combout\ = (\prell|timer|counter\(16) & (\prell|timer|counter[15]~64\ $ (GND))) # (!\prell|timer|counter\(16) & (!\prell|timer|counter[15]~64\ & VCC))
-- \prell|timer|counter[16]~66\ = CARRY((\prell|timer|counter\(16) & !\prell|timer|counter[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(16),
	datad => VCC,
	cin => \prell|timer|counter[15]~64\,
	combout => \prell|timer|counter[16]~65_combout\,
	cout => \prell|timer|counter[16]~66\);

-- Location: FF_X16_Y18_N1
\prell|timer|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[16]~65_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(16));

-- Location: LCCOMB_X16_Y18_N2
\prell|timer|counter[17]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[17]~67_combout\ = (\prell|timer|counter\(17) & (!\prell|timer|counter[16]~66\)) # (!\prell|timer|counter\(17) & ((\prell|timer|counter[16]~66\) # (GND)))
-- \prell|timer|counter[17]~68\ = CARRY((!\prell|timer|counter[16]~66\) # (!\prell|timer|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(17),
	datad => VCC,
	cin => \prell|timer|counter[16]~66\,
	combout => \prell|timer|counter[17]~67_combout\,
	cout => \prell|timer|counter[17]~68\);

-- Location: FF_X16_Y18_N3
\prell|timer|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[17]~67_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(17));

-- Location: LCCOMB_X16_Y18_N4
\prell|timer|counter[18]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[18]~69_combout\ = (\prell|timer|counter\(18) & (\prell|timer|counter[17]~68\ $ (GND))) # (!\prell|timer|counter\(18) & (!\prell|timer|counter[17]~68\ & VCC))
-- \prell|timer|counter[18]~70\ = CARRY((\prell|timer|counter\(18) & !\prell|timer|counter[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(18),
	datad => VCC,
	cin => \prell|timer|counter[17]~68\,
	combout => \prell|timer|counter[18]~69_combout\,
	cout => \prell|timer|counter[18]~70\);

-- Location: FF_X16_Y18_N5
\prell|timer|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[18]~69_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(18));

-- Location: LCCOMB_X16_Y18_N8
\prell|timer|counter[20]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[20]~73_combout\ = (\prell|timer|counter\(20) & (\prell|timer|counter[19]~72\ $ (GND))) # (!\prell|timer|counter\(20) & (!\prell|timer|counter[19]~72\ & VCC))
-- \prell|timer|counter[20]~74\ = CARRY((\prell|timer|counter\(20) & !\prell|timer|counter[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(20),
	datad => VCC,
	cin => \prell|timer|counter[19]~72\,
	combout => \prell|timer|counter[20]~73_combout\,
	cout => \prell|timer|counter[20]~74\);

-- Location: FF_X16_Y18_N9
\prell|timer|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[20]~73_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(20));

-- Location: LCCOMB_X16_Y18_N14
\prell|timer|counter[23]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[23]~79_combout\ = (\prell|timer|counter\(23) & (!\prell|timer|counter[22]~78\)) # (!\prell|timer|counter\(23) & ((\prell|timer|counter[22]~78\) # (GND)))
-- \prell|timer|counter[23]~80\ = CARRY((!\prell|timer|counter[22]~78\) # (!\prell|timer|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(23),
	datad => VCC,
	cin => \prell|timer|counter[22]~78\,
	combout => \prell|timer|counter[23]~79_combout\,
	cout => \prell|timer|counter[23]~80\);

-- Location: FF_X16_Y18_N15
\prell|timer|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[23]~79_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(23));

-- Location: LCCOMB_X16_Y18_N16
\prell|timer|counter[24]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[24]~81_combout\ = (\prell|timer|counter\(24) & (\prell|timer|counter[23]~80\ $ (GND))) # (!\prell|timer|counter\(24) & (!\prell|timer|counter[23]~80\ & VCC))
-- \prell|timer|counter[24]~82\ = CARRY((\prell|timer|counter\(24) & !\prell|timer|counter[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(24),
	datad => VCC,
	cin => \prell|timer|counter[23]~80\,
	combout => \prell|timer|counter[24]~81_combout\,
	cout => \prell|timer|counter[24]~82\);

-- Location: FF_X16_Y18_N17
\prell|timer|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[24]~81_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(24));

-- Location: LCCOMB_X16_Y18_N18
\prell|timer|counter[25]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[25]~83_combout\ = (\prell|timer|counter\(25) & (!\prell|timer|counter[24]~82\)) # (!\prell|timer|counter\(25) & ((\prell|timer|counter[24]~82\) # (GND)))
-- \prell|timer|counter[25]~84\ = CARRY((!\prell|timer|counter[24]~82\) # (!\prell|timer|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(25),
	datad => VCC,
	cin => \prell|timer|counter[24]~82\,
	combout => \prell|timer|counter[25]~83_combout\,
	cout => \prell|timer|counter[25]~84\);

-- Location: FF_X16_Y18_N19
\prell|timer|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[25]~83_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(25));

-- Location: LCCOMB_X16_Y18_N20
\prell|timer|counter[26]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[26]~85_combout\ = (\prell|timer|counter\(26) & (\prell|timer|counter[25]~84\ $ (GND))) # (!\prell|timer|counter\(26) & (!\prell|timer|counter[25]~84\ & VCC))
-- \prell|timer|counter[26]~86\ = CARRY((\prell|timer|counter\(26) & !\prell|timer|counter[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(26),
	datad => VCC,
	cin => \prell|timer|counter[25]~84\,
	combout => \prell|timer|counter[26]~85_combout\,
	cout => \prell|timer|counter[26]~86\);

-- Location: FF_X16_Y18_N21
\prell|timer|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[26]~85_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(26));

-- Location: LCCOMB_X16_Y18_N22
\prell|timer|counter[27]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[27]~87_combout\ = (\prell|timer|counter\(27) & (!\prell|timer|counter[26]~86\)) # (!\prell|timer|counter\(27) & ((\prell|timer|counter[26]~86\) # (GND)))
-- \prell|timer|counter[27]~88\ = CARRY((!\prell|timer|counter[26]~86\) # (!\prell|timer|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(27),
	datad => VCC,
	cin => \prell|timer|counter[26]~86\,
	combout => \prell|timer|counter[27]~87_combout\,
	cout => \prell|timer|counter[27]~88\);

-- Location: FF_X16_Y18_N23
\prell|timer|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[27]~87_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(27));

-- Location: LCCOMB_X17_Y19_N24
\prell|timer|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~8_combout\ = (\prell|timer|counter\(25)) # ((\prell|timer|counter\(26)) # ((\prell|timer|counter\(27)) # (\prell|timer|counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(25),
	datab => \prell|timer|counter\(26),
	datac => \prell|timer|counter\(27),
	datad => \prell|timer|counter\(24),
	combout => \prell|timer|Equal0~8_combout\);

-- Location: LCCOMB_X16_Y18_N24
\prell|timer|counter[28]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[28]~89_combout\ = (\prell|timer|counter\(28) & (\prell|timer|counter[27]~88\ $ (GND))) # (!\prell|timer|counter\(28) & (!\prell|timer|counter[27]~88\ & VCC))
-- \prell|timer|counter[28]~90\ = CARRY((\prell|timer|counter\(28) & !\prell|timer|counter[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(28),
	datad => VCC,
	cin => \prell|timer|counter[27]~88\,
	combout => \prell|timer|counter[28]~89_combout\,
	cout => \prell|timer|counter[28]~90\);

-- Location: FF_X16_Y18_N25
\prell|timer|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[28]~89_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(28));

-- Location: LCCOMB_X16_Y18_N28
\prell|timer|counter[30]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[30]~93_combout\ = (\prell|timer|counter\(30) & (\prell|timer|counter[29]~92\ $ (GND))) # (!\prell|timer|counter\(30) & (!\prell|timer|counter[29]~92\ & VCC))
-- \prell|timer|counter[30]~94\ = CARRY((\prell|timer|counter\(30) & !\prell|timer|counter[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prell|timer|counter\(30),
	datad => VCC,
	cin => \prell|timer|counter[29]~92\,
	combout => \prell|timer|counter[30]~93_combout\,
	cout => \prell|timer|counter[30]~94\);

-- Location: FF_X16_Y18_N29
\prell|timer|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[30]~93_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(30));

-- Location: LCCOMB_X16_Y18_N30
\prell|timer|counter[31]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[31]~95_combout\ = \prell|timer|counter\(31) $ (\prell|timer|counter[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(31),
	cin => \prell|timer|counter[30]~94\,
	combout => \prell|timer|counter[31]~95_combout\);

-- Location: FF_X16_Y18_N31
\prell|timer|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[31]~95_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(31));

-- Location: LCCOMB_X17_Y19_N26
\prell|timer|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~9_combout\ = (\prell|timer|counter\(29)) # ((\prell|timer|counter\(31)) # ((\prell|timer|counter\(30)) # (\prell|timer|counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(29),
	datab => \prell|timer|counter\(31),
	datac => \prell|timer|counter\(30),
	datad => \prell|timer|counter\(28),
	combout => \prell|timer|Equal0~9_combout\);

-- Location: FF_X16_Y19_N7
\prell|timer|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[3]~39_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(3));

-- Location: LCCOMB_X17_Y19_N0
\prell|timer|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~0_combout\ = (((!\prell|timer|counter\(1)) # (!\prell|timer|counter\(2))) # (!\prell|timer|counter\(3))) # (!\prell|timer|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(0),
	datab => \prell|timer|counter\(3),
	datac => \prell|timer|counter\(2),
	datad => \prell|timer|counter\(1),
	combout => \prell|timer|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y19_N4
\prell|timer|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~2_combout\ = ((\prell|timer|counter\(10)) # ((\prell|timer|counter\(9)) # (!\prell|timer|counter\(8)))) # (!\prell|timer|counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(11),
	datab => \prell|timer|counter\(10),
	datac => \prell|timer|counter\(8),
	datad => \prell|timer|counter\(9),
	combout => \prell|timer|Equal0~2_combout\);

-- Location: FF_X16_Y19_N11
\prell|timer|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[5]~43_combout\,
	sclr => \prell|timer|counter[16]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(5));

-- Location: LCCOMB_X17_Y19_N10
\prell|timer|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~1_combout\ = (((\prell|timer|counter\(4)) # (!\prell|timer|counter\(5))) # (!\prell|timer|counter\(7))) # (!\prell|timer|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(6),
	datab => \prell|timer|counter\(7),
	datac => \prell|timer|counter\(4),
	datad => \prell|timer|counter\(5),
	combout => \prell|timer|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y19_N16
\prell|timer|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~4_combout\ = (\prell|timer|Equal0~3_combout\) # ((\prell|timer|Equal0~0_combout\) # ((\prell|timer|Equal0~2_combout\) # (\prell|timer|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|Equal0~3_combout\,
	datab => \prell|timer|Equal0~0_combout\,
	datac => \prell|timer|Equal0~2_combout\,
	datad => \prell|timer|Equal0~1_combout\,
	combout => \prell|timer|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y19_N20
\prell|timer|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~10_combout\ = (\prell|timer|Equal0~7_combout\) # ((\prell|timer|Equal0~8_combout\) # ((\prell|timer|Equal0~9_combout\) # (\prell|timer|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|Equal0~7_combout\,
	datab => \prell|timer|Equal0~8_combout\,
	datac => \prell|timer|Equal0~9_combout\,
	datad => \prell|timer|Equal0~4_combout\,
	combout => \prell|timer|Equal0~10_combout\);

-- Location: LCCOMB_X9_Y20_N2
\prell|timer|peak~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|peak~0_combout\ = (\prell|z_neu~q\ & !\prell|timer|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \prell|z_neu~q\,
	datad => \prell|timer|Equal0~10_combout\,
	combout => \prell|timer|peak~0_combout\);

-- Location: FF_X9_Y20_N3
\prell|timer|peak\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|peak~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|peak~q\);

-- Location: LCCOMB_X9_Y20_N22
\prell|z_neu~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|z_neu~0_combout\ = (\prell|z_alt~q\ & (((\prell|z_neu~q\ & !\prell|timer|peak~q\)))) # (!\prell|z_alt~q\ & ((\prell|btn_s~q\) # ((\prell|z_neu~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|btn_s~q\,
	datab => \prell|z_alt~q\,
	datac => \prell|z_neu~q\,
	datad => \prell|timer|peak~q\,
	combout => \prell|z_neu~0_combout\);

-- Location: FF_X9_Y20_N23
\prell|z_neu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|z_neu~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|z_neu~q\);

-- Location: LCCOMB_X9_Y20_N28
\prell|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|process_1~0_combout\ = (\prell|z_neu~q\ & !\prell|z_alt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \prell|z_neu~q\,
	datad => \prell|z_alt~q\,
	combout => \prell|process_1~0_combout\);

-- Location: FF_X9_Y20_N29
\prell|btnout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|btnout~q\);

-- Location: LCCOMB_X9_Y20_N10
\led1|led~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led1|led~0_combout\ = \led1|led~q\ $ (\prell|btnout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led1|led~q\,
	datad => \prell|btnout~q\,
	combout => \led1|led~0_combout\);

-- Location: FF_X9_Y20_N11
\led1|led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led1|led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led1|led~q\);

-- Location: LCCOMB_X9_Y20_N24
\led1|ld~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led1|ld~feeder_combout\ = \led1|led~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led1|led~q\,
	combout => \led1|ld~feeder_combout\);

-- Location: FF_X9_Y20_N25
\led1|ld\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led1|ld~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led1|ld~q\);

ww_ld_e <= \ld_e~output_o\;
END structure;


