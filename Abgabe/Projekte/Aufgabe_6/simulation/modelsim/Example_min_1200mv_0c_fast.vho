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

-- DATE "11/15/2013 16:24:47"

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

ENTITY 	Stoppuhr IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	onoff : IN std_logic;
	seg1 : OUT std_logic_vector(7 DOWNTO 0);
	seg2 : OUT std_logic_vector(7 DOWNTO 0);
	seg3 : OUT std_logic_vector(7 DOWNTO 0);
	seg4 : OUT std_logic_vector(7 DOWNTO 0)
	);
END Stoppuhr;

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
-- onoff	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Stoppuhr IS
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
SIGNAL ww_onoff : std_logic;
SIGNAL ww_seg1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg4 : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \zaehl|counter[0]~32_combout\ : std_logic;
SIGNAL \zaehl|counter[0]~33\ : std_logic;
SIGNAL \zaehl|counter[1]~36_combout\ : std_logic;
SIGNAL \zaehl|counter[1]~37\ : std_logic;
SIGNAL \zaehl|counter[2]~38_combout\ : std_logic;
SIGNAL \zaehl|counter[2]~39\ : std_logic;
SIGNAL \zaehl|counter[3]~40_combout\ : std_logic;
SIGNAL \zaehl|counter[3]~41\ : std_logic;
SIGNAL \zaehl|counter[4]~42_combout\ : std_logic;
SIGNAL \zaehl|counter[4]~43\ : std_logic;
SIGNAL \zaehl|counter[5]~44_combout\ : std_logic;
SIGNAL \zaehl|counter[5]~45\ : std_logic;
SIGNAL \zaehl|counter[6]~46_combout\ : std_logic;
SIGNAL \zaehl|counter[6]~47\ : std_logic;
SIGNAL \zaehl|counter[7]~48_combout\ : std_logic;
SIGNAL \zaehl|counter[7]~49\ : std_logic;
SIGNAL \zaehl|counter[8]~50_combout\ : std_logic;
SIGNAL \zaehl|counter[8]~51\ : std_logic;
SIGNAL \zaehl|counter[9]~52_combout\ : std_logic;
SIGNAL \zaehl|counter[9]~53\ : std_logic;
SIGNAL \zaehl|counter[10]~54_combout\ : std_logic;
SIGNAL \zaehl|counter[10]~55\ : std_logic;
SIGNAL \zaehl|counter[11]~56_combout\ : std_logic;
SIGNAL \zaehl|counter[11]~57\ : std_logic;
SIGNAL \zaehl|counter[12]~58_combout\ : std_logic;
SIGNAL \zaehl|counter[12]~59\ : std_logic;
SIGNAL \zaehl|counter[13]~60_combout\ : std_logic;
SIGNAL \zaehl|counter[13]~61\ : std_logic;
SIGNAL \zaehl|counter[14]~62_combout\ : std_logic;
SIGNAL \zaehl|counter[14]~63\ : std_logic;
SIGNAL \zaehl|counter[15]~64_combout\ : std_logic;
SIGNAL \zaehl|counter[15]~65\ : std_logic;
SIGNAL \zaehl|counter[16]~66_combout\ : std_logic;
SIGNAL \zaehl|counter[16]~67\ : std_logic;
SIGNAL \zaehl|counter[17]~68_combout\ : std_logic;
SIGNAL \zaehl|counter[17]~69\ : std_logic;
SIGNAL \zaehl|counter[18]~70_combout\ : std_logic;
SIGNAL \zaehl|counter[18]~71\ : std_logic;
SIGNAL \zaehl|counter[19]~72_combout\ : std_logic;
SIGNAL \zaehl|counter[19]~73\ : std_logic;
SIGNAL \zaehl|counter[20]~74_combout\ : std_logic;
SIGNAL \zaehl|counter[20]~75\ : std_logic;
SIGNAL \zaehl|counter[21]~76_combout\ : std_logic;
SIGNAL \zaehl|counter[21]~77\ : std_logic;
SIGNAL \zaehl|counter[22]~78_combout\ : std_logic;
SIGNAL \zaehl|counter[22]~79\ : std_logic;
SIGNAL \zaehl|counter[23]~80_combout\ : std_logic;
SIGNAL \zaehl|counter[23]~81\ : std_logic;
SIGNAL \zaehl|counter[24]~82_combout\ : std_logic;
SIGNAL \zaehl|counter[24]~83\ : std_logic;
SIGNAL \zaehl|counter[25]~84_combout\ : std_logic;
SIGNAL \zaehl|counter[25]~85\ : std_logic;
SIGNAL \zaehl|counter[26]~86_combout\ : std_logic;
SIGNAL \zaehl|counter[26]~87\ : std_logic;
SIGNAL \zaehl|counter[27]~88_combout\ : std_logic;
SIGNAL \zaehl|counter[27]~89\ : std_logic;
SIGNAL \zaehl|counter[28]~90_combout\ : std_logic;
SIGNAL \zaehl|counter[28]~91\ : std_logic;
SIGNAL \zaehl|counter[29]~92_combout\ : std_logic;
SIGNAL \zaehl|counter[29]~93\ : std_logic;
SIGNAL \zaehl|counter[30]~94_combout\ : std_logic;
SIGNAL \zaehl|counter[30]~95\ : std_logic;
SIGNAL \zaehl|counter[31]~96_combout\ : std_logic;
SIGNAL \prell|timer|counter[0]~32_combout\ : std_logic;
SIGNAL \prell|timer|counter[0]~33\ : std_logic;
SIGNAL \prell|timer|counter[1]~35_combout\ : std_logic;
SIGNAL \prell|timer|counter[1]~36\ : std_logic;
SIGNAL \prell|timer|counter[2]~37_combout\ : std_logic;
SIGNAL \prell|timer|counter[2]~38\ : std_logic;
SIGNAL \prell|timer|counter[3]~39_combout\ : std_logic;
SIGNAL \prell|timer|counter[3]~40\ : std_logic;
SIGNAL \prell|timer|counter[4]~41_combout\ : std_logic;
SIGNAL \prell|timer|counter[4]~42\ : std_logic;
SIGNAL \prell|timer|counter[5]~43_combout\ : std_logic;
SIGNAL \prell|timer|counter[5]~44\ : std_logic;
SIGNAL \prell|timer|counter[6]~45_combout\ : std_logic;
SIGNAL \prell|timer|counter[6]~46\ : std_logic;
SIGNAL \prell|timer|counter[7]~47_combout\ : std_logic;
SIGNAL \prell|timer|counter[7]~48\ : std_logic;
SIGNAL \prell|timer|counter[8]~49_combout\ : std_logic;
SIGNAL \prell|timer|counter[8]~50\ : std_logic;
SIGNAL \prell|timer|counter[9]~51_combout\ : std_logic;
SIGNAL \prell|timer|counter[9]~52\ : std_logic;
SIGNAL \prell|timer|counter[10]~53_combout\ : std_logic;
SIGNAL \prell|timer|counter[10]~54\ : std_logic;
SIGNAL \prell|timer|counter[11]~55_combout\ : std_logic;
SIGNAL \prell|timer|counter[11]~56\ : std_logic;
SIGNAL \prell|timer|counter[12]~57_combout\ : std_logic;
SIGNAL \prell|timer|counter[12]~58\ : std_logic;
SIGNAL \prell|timer|counter[13]~59_combout\ : std_logic;
SIGNAL \prell|timer|counter[13]~60\ : std_logic;
SIGNAL \prell|timer|counter[14]~61_combout\ : std_logic;
SIGNAL \prell|timer|counter[14]~62\ : std_logic;
SIGNAL \prell|timer|counter[15]~63_combout\ : std_logic;
SIGNAL \prell|timer|counter[15]~64\ : std_logic;
SIGNAL \prell|timer|counter[16]~65_combout\ : std_logic;
SIGNAL \prell|timer|counter[16]~66\ : std_logic;
SIGNAL \prell|timer|counter[17]~67_combout\ : std_logic;
SIGNAL \prell|timer|counter[17]~68\ : std_logic;
SIGNAL \prell|timer|counter[18]~69_combout\ : std_logic;
SIGNAL \prell|timer|counter[18]~70\ : std_logic;
SIGNAL \prell|timer|counter[19]~71_combout\ : std_logic;
SIGNAL \prell|timer|counter[19]~72\ : std_logic;
SIGNAL \prell|timer|counter[20]~73_combout\ : std_logic;
SIGNAL \prell|timer|counter[20]~74\ : std_logic;
SIGNAL \prell|timer|counter[21]~75_combout\ : std_logic;
SIGNAL \prell|timer|counter[21]~76\ : std_logic;
SIGNAL \prell|timer|counter[22]~77_combout\ : std_logic;
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
SIGNAL \prell|timer|counter[27]~88\ : std_logic;
SIGNAL \prell|timer|counter[28]~89_combout\ : std_logic;
SIGNAL \prell|timer|counter[28]~90\ : std_logic;
SIGNAL \prell|timer|counter[29]~91_combout\ : std_logic;
SIGNAL \prell|timer|counter[29]~92\ : std_logic;
SIGNAL \prell|timer|counter[30]~93_combout\ : std_logic;
SIGNAL \prell|timer|counter[30]~94\ : std_logic;
SIGNAL \prell|timer|counter[31]~95_combout\ : std_logic;
SIGNAL \zaehl|peak~q\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \ms~4_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \sec2~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \sec1~3_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \min~7_combout\ : std_logic;
SIGNAL \prell|btn_output~q\ : std_logic;
SIGNAL \zaehl|Equal0~0_combout\ : std_logic;
SIGNAL \zaehl|Equal0~1_combout\ : std_logic;
SIGNAL \zaehl|Equal0~2_combout\ : std_logic;
SIGNAL \zaehl|Equal0~3_combout\ : std_logic;
SIGNAL \zaehl|Equal0~4_combout\ : std_logic;
SIGNAL \zaehl|Equal0~5_combout\ : std_logic;
SIGNAL \zaehl|Equal0~6_combout\ : std_logic;
SIGNAL \zaehl|Equal0~7_combout\ : std_logic;
SIGNAL \zaehl|Equal0~8_combout\ : std_logic;
SIGNAL \zaehl|Equal0~9_combout\ : std_logic;
SIGNAL \zaehl|Equal0~10_combout\ : std_logic;
SIGNAL \zaehl|peak~0_combout\ : std_logic;
SIGNAL \prell|btn_s~q\ : std_logic;
SIGNAL \prell|z_alt~q\ : std_logic;
SIGNAL \prell|btn_old~q\ : std_logic;
SIGNAL \prell|btn_output~0_combout\ : std_logic;
SIGNAL \zaehl|counter[29]~34_combout\ : std_logic;
SIGNAL \zaehl|counter[29]~35_combout\ : std_logic;
SIGNAL \prell|btn2~q\ : std_logic;
SIGNAL \prell|z_neu~q\ : std_logic;
SIGNAL \prell|timer|peak~q\ : std_logic;
SIGNAL \prell|timer_on~0_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~0_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~1_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~2_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~3_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~4_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~5_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~6_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~7_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~8_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~9_combout\ : std_logic;
SIGNAL \prell|timer|Equal0~10_combout\ : std_logic;
SIGNAL \prell|timer_on~q\ : std_logic;
SIGNAL \prell|timer|peak~0_combout\ : std_logic;
SIGNAL \prell|timer|counter[6]~34_combout\ : std_logic;
SIGNAL \prell|btn_output~1_combout\ : std_logic;
SIGNAL \prell|btn2~0_combout\ : std_logic;
SIGNAL \prell|z_neu~0_combout\ : std_logic;
SIGNAL \onoff~input_o\ : std_logic;
SIGNAL \prell|z_alt~feeder_combout\ : std_logic;
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
SIGNAL \ms~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \onoff_old~0_combout\ : std_logic;
SIGNAL \onoff_old~q\ : std_logic;
SIGNAL \running~0_combout\ : std_logic;
SIGNAL \running~q\ : std_logic;
SIGNAL \ms[2]~1_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \ms~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ms~2_combout\ : std_logic;
SIGNAL \dec3|Mux6~0_combout\ : std_logic;
SIGNAL \dec3|Mux5~0_combout\ : std_logic;
SIGNAL \dec3|Mux4~0_combout\ : std_logic;
SIGNAL \dec3|Mux3~0_combout\ : std_logic;
SIGNAL \dec3|Mux2~0_combout\ : std_logic;
SIGNAL \dec3|Mux1~0_combout\ : std_logic;
SIGNAL \dec3|Mux0~0_combout\ : std_logic;
SIGNAL \sec2~0_combout\ : std_logic;
SIGNAL \sec2[3]~1_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \sec2~4_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \sec2~2_combout\ : std_logic;
SIGNAL \dec2|Mux6~0_combout\ : std_logic;
SIGNAL \dec2|Mux5~0_combout\ : std_logic;
SIGNAL \dec2|Mux4~0_combout\ : std_logic;
SIGNAL \dec2|Mux3~0_combout\ : std_logic;
SIGNAL \dec2|Mux2~0_combout\ : std_logic;
SIGNAL \dec2|Mux1~0_combout\ : std_logic;
SIGNAL \dec2|Mux0~0_combout\ : std_logic;
SIGNAL \dec1|decoded_out[0]~feeder_combout\ : std_logic;
SIGNAL \sec1~0_combout\ : std_logic;
SIGNAL \min[3]~0_combout\ : std_logic;
SIGNAL \sec1[0]~1_combout\ : std_logic;
SIGNAL \sec1~4_combout\ : std_logic;
SIGNAL \min[3]~1_combout\ : std_logic;
SIGNAL \sec1~2_combout\ : std_logic;
SIGNAL \dec1|Mux6~0_combout\ : std_logic;
SIGNAL \dec1|Mux5~0_combout\ : std_logic;
SIGNAL \dec1|Mux4~0_combout\ : std_logic;
SIGNAL \dec1|Mux3~0_combout\ : std_logic;
SIGNAL \dec1|Mux2~0_combout\ : std_logic;
SIGNAL \dec1|Mux1~0_combout\ : std_logic;
SIGNAL \dec1|Mux0~0_combout\ : std_logic;
SIGNAL \min~2_combout\ : std_logic;
SIGNAL \min[3]~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \min~6_combout\ : std_logic;
SIGNAL \min[3]~4_combout\ : std_logic;
SIGNAL \min~5_combout\ : std_logic;
SIGNAL \dec0|Mux6~0_combout\ : std_logic;
SIGNAL \dec0|Mux5~0_combout\ : std_logic;
SIGNAL \dec0|Mux4~0_combout\ : std_logic;
SIGNAL \dec0|Mux3~0_combout\ : std_logic;
SIGNAL \dec0|Mux2~0_combout\ : std_logic;
SIGNAL \dec0|Mux1~0_combout\ : std_logic;
SIGNAL \dec0|Mux0~0_combout\ : std_logic;
SIGNAL \prell|timer|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dec1|decoded_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dec2|decoded_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dec3|decoded_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL sec2 : std_logic_vector(3 DOWNTO 0);
SIGNAL sec1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ms : std_logic_vector(3 DOWNTO 0);
SIGNAL min : std_logic_vector(3 DOWNTO 0);
SIGNAL \zaehl|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dec0|decoded_out\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_onoff <= onoff;
seg1 <= ww_seg1;
seg2 <= ww_seg2;
seg3 <= ww_seg3;
seg4 <= ww_seg4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X16_Y18_N1
\zaehl|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[0]~32_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(0));

-- Location: FF_X16_Y18_N3
\zaehl|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[1]~36_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(1));

-- Location: FF_X16_Y18_N5
\zaehl|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[2]~38_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(2));

-- Location: FF_X16_Y18_N7
\zaehl|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[3]~40_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(3));

-- Location: FF_X16_Y18_N13
\zaehl|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[6]~46_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(6));

-- Location: FF_X16_Y18_N15
\zaehl|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[7]~48_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(7));

-- Location: FF_X16_Y18_N9
\zaehl|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[4]~42_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(4));

-- Location: FF_X16_Y18_N11
\zaehl|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[5]~44_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(5));

-- Location: FF_X16_Y18_N21
\zaehl|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[10]~54_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(10));

-- Location: FF_X16_Y18_N17
\zaehl|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[8]~50_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(8));

-- Location: FF_X16_Y18_N19
\zaehl|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[9]~52_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(9));

-- Location: FF_X16_Y18_N23
\zaehl|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[11]~56_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(11));

-- Location: FF_X16_Y18_N25
\zaehl|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[12]~58_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(12));

-- Location: FF_X16_Y18_N27
\zaehl|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[13]~60_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(13));

-- Location: FF_X16_Y18_N31
\zaehl|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[15]~64_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(15));

-- Location: FF_X16_Y18_N29
\zaehl|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[14]~62_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(14));

-- Location: FF_X16_Y17_N1
\zaehl|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[16]~66_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(16));

-- Location: FF_X16_Y17_N3
\zaehl|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[17]~68_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(17));

-- Location: FF_X16_Y17_N9
\zaehl|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[20]~74_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(20));

-- Location: FF_X16_Y17_N11
\zaehl|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[21]~76_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(21));

-- Location: FF_X16_Y17_N15
\zaehl|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[23]~80_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(23));

-- Location: FF_X16_Y17_N13
\zaehl|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[22]~78_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(22));

-- Location: FF_X16_Y17_N5
\zaehl|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[18]~70_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(18));

-- Location: FF_X16_Y17_N7
\zaehl|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[19]~72_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(19));

-- Location: FF_X16_Y17_N17
\zaehl|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[24]~82_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(24));

-- Location: FF_X16_Y17_N19
\zaehl|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[25]~84_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(25));

-- Location: FF_X16_Y17_N21
\zaehl|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[26]~86_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(26));

-- Location: FF_X16_Y17_N23
\zaehl|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[27]~88_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(27));

-- Location: FF_X16_Y17_N25
\zaehl|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[28]~90_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(28));

-- Location: FF_X16_Y17_N27
\zaehl|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[29]~92_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(29));

-- Location: FF_X16_Y17_N29
\zaehl|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[30]~94_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(30));

-- Location: FF_X16_Y17_N31
\zaehl|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|counter[31]~96_combout\,
	sclr => \zaehl|counter[29]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|counter\(31));

-- Location: LCCOMB_X16_Y18_N0
\zaehl|counter[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[0]~32_combout\ = \zaehl|counter\(0) $ (VCC)
-- \zaehl|counter[0]~33\ = CARRY(\zaehl|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(0),
	datad => VCC,
	combout => \zaehl|counter[0]~32_combout\,
	cout => \zaehl|counter[0]~33\);

-- Location: LCCOMB_X16_Y18_N2
\zaehl|counter[1]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[1]~36_combout\ = (\zaehl|counter\(1) & (!\zaehl|counter[0]~33\)) # (!\zaehl|counter\(1) & ((\zaehl|counter[0]~33\) # (GND)))
-- \zaehl|counter[1]~37\ = CARRY((!\zaehl|counter[0]~33\) # (!\zaehl|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(1),
	datad => VCC,
	cin => \zaehl|counter[0]~33\,
	combout => \zaehl|counter[1]~36_combout\,
	cout => \zaehl|counter[1]~37\);

-- Location: LCCOMB_X16_Y18_N4
\zaehl|counter[2]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[2]~38_combout\ = (\zaehl|counter\(2) & (\zaehl|counter[1]~37\ $ (GND))) # (!\zaehl|counter\(2) & (!\zaehl|counter[1]~37\ & VCC))
-- \zaehl|counter[2]~39\ = CARRY((\zaehl|counter\(2) & !\zaehl|counter[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(2),
	datad => VCC,
	cin => \zaehl|counter[1]~37\,
	combout => \zaehl|counter[2]~38_combout\,
	cout => \zaehl|counter[2]~39\);

-- Location: LCCOMB_X16_Y18_N6
\zaehl|counter[3]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[3]~40_combout\ = (\zaehl|counter\(3) & (!\zaehl|counter[2]~39\)) # (!\zaehl|counter\(3) & ((\zaehl|counter[2]~39\) # (GND)))
-- \zaehl|counter[3]~41\ = CARRY((!\zaehl|counter[2]~39\) # (!\zaehl|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(3),
	datad => VCC,
	cin => \zaehl|counter[2]~39\,
	combout => \zaehl|counter[3]~40_combout\,
	cout => \zaehl|counter[3]~41\);

-- Location: LCCOMB_X16_Y18_N8
\zaehl|counter[4]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[4]~42_combout\ = (\zaehl|counter\(4) & (\zaehl|counter[3]~41\ $ (GND))) # (!\zaehl|counter\(4) & (!\zaehl|counter[3]~41\ & VCC))
-- \zaehl|counter[4]~43\ = CARRY((\zaehl|counter\(4) & !\zaehl|counter[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(4),
	datad => VCC,
	cin => \zaehl|counter[3]~41\,
	combout => \zaehl|counter[4]~42_combout\,
	cout => \zaehl|counter[4]~43\);

-- Location: LCCOMB_X16_Y18_N10
\zaehl|counter[5]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[5]~44_combout\ = (\zaehl|counter\(5) & (!\zaehl|counter[4]~43\)) # (!\zaehl|counter\(5) & ((\zaehl|counter[4]~43\) # (GND)))
-- \zaehl|counter[5]~45\ = CARRY((!\zaehl|counter[4]~43\) # (!\zaehl|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(5),
	datad => VCC,
	cin => \zaehl|counter[4]~43\,
	combout => \zaehl|counter[5]~44_combout\,
	cout => \zaehl|counter[5]~45\);

-- Location: LCCOMB_X16_Y18_N12
\zaehl|counter[6]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[6]~46_combout\ = (\zaehl|counter\(6) & (\zaehl|counter[5]~45\ $ (GND))) # (!\zaehl|counter\(6) & (!\zaehl|counter[5]~45\ & VCC))
-- \zaehl|counter[6]~47\ = CARRY((\zaehl|counter\(6) & !\zaehl|counter[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(6),
	datad => VCC,
	cin => \zaehl|counter[5]~45\,
	combout => \zaehl|counter[6]~46_combout\,
	cout => \zaehl|counter[6]~47\);

-- Location: LCCOMB_X16_Y18_N14
\zaehl|counter[7]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[7]~48_combout\ = (\zaehl|counter\(7) & (!\zaehl|counter[6]~47\)) # (!\zaehl|counter\(7) & ((\zaehl|counter[6]~47\) # (GND)))
-- \zaehl|counter[7]~49\ = CARRY((!\zaehl|counter[6]~47\) # (!\zaehl|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(7),
	datad => VCC,
	cin => \zaehl|counter[6]~47\,
	combout => \zaehl|counter[7]~48_combout\,
	cout => \zaehl|counter[7]~49\);

-- Location: LCCOMB_X16_Y18_N16
\zaehl|counter[8]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[8]~50_combout\ = (\zaehl|counter\(8) & (\zaehl|counter[7]~49\ $ (GND))) # (!\zaehl|counter\(8) & (!\zaehl|counter[7]~49\ & VCC))
-- \zaehl|counter[8]~51\ = CARRY((\zaehl|counter\(8) & !\zaehl|counter[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(8),
	datad => VCC,
	cin => \zaehl|counter[7]~49\,
	combout => \zaehl|counter[8]~50_combout\,
	cout => \zaehl|counter[8]~51\);

-- Location: LCCOMB_X16_Y18_N18
\zaehl|counter[9]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[9]~52_combout\ = (\zaehl|counter\(9) & (!\zaehl|counter[8]~51\)) # (!\zaehl|counter\(9) & ((\zaehl|counter[8]~51\) # (GND)))
-- \zaehl|counter[9]~53\ = CARRY((!\zaehl|counter[8]~51\) # (!\zaehl|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(9),
	datad => VCC,
	cin => \zaehl|counter[8]~51\,
	combout => \zaehl|counter[9]~52_combout\,
	cout => \zaehl|counter[9]~53\);

-- Location: LCCOMB_X16_Y18_N20
\zaehl|counter[10]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[10]~54_combout\ = (\zaehl|counter\(10) & (\zaehl|counter[9]~53\ $ (GND))) # (!\zaehl|counter\(10) & (!\zaehl|counter[9]~53\ & VCC))
-- \zaehl|counter[10]~55\ = CARRY((\zaehl|counter\(10) & !\zaehl|counter[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(10),
	datad => VCC,
	cin => \zaehl|counter[9]~53\,
	combout => \zaehl|counter[10]~54_combout\,
	cout => \zaehl|counter[10]~55\);

-- Location: LCCOMB_X16_Y18_N22
\zaehl|counter[11]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[11]~56_combout\ = (\zaehl|counter\(11) & (!\zaehl|counter[10]~55\)) # (!\zaehl|counter\(11) & ((\zaehl|counter[10]~55\) # (GND)))
-- \zaehl|counter[11]~57\ = CARRY((!\zaehl|counter[10]~55\) # (!\zaehl|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(11),
	datad => VCC,
	cin => \zaehl|counter[10]~55\,
	combout => \zaehl|counter[11]~56_combout\,
	cout => \zaehl|counter[11]~57\);

-- Location: LCCOMB_X16_Y18_N24
\zaehl|counter[12]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[12]~58_combout\ = (\zaehl|counter\(12) & (\zaehl|counter[11]~57\ $ (GND))) # (!\zaehl|counter\(12) & (!\zaehl|counter[11]~57\ & VCC))
-- \zaehl|counter[12]~59\ = CARRY((\zaehl|counter\(12) & !\zaehl|counter[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(12),
	datad => VCC,
	cin => \zaehl|counter[11]~57\,
	combout => \zaehl|counter[12]~58_combout\,
	cout => \zaehl|counter[12]~59\);

-- Location: LCCOMB_X16_Y18_N26
\zaehl|counter[13]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[13]~60_combout\ = (\zaehl|counter\(13) & (!\zaehl|counter[12]~59\)) # (!\zaehl|counter\(13) & ((\zaehl|counter[12]~59\) # (GND)))
-- \zaehl|counter[13]~61\ = CARRY((!\zaehl|counter[12]~59\) # (!\zaehl|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(13),
	datad => VCC,
	cin => \zaehl|counter[12]~59\,
	combout => \zaehl|counter[13]~60_combout\,
	cout => \zaehl|counter[13]~61\);

-- Location: LCCOMB_X16_Y18_N28
\zaehl|counter[14]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[14]~62_combout\ = (\zaehl|counter\(14) & (\zaehl|counter[13]~61\ $ (GND))) # (!\zaehl|counter\(14) & (!\zaehl|counter[13]~61\ & VCC))
-- \zaehl|counter[14]~63\ = CARRY((\zaehl|counter\(14) & !\zaehl|counter[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(14),
	datad => VCC,
	cin => \zaehl|counter[13]~61\,
	combout => \zaehl|counter[14]~62_combout\,
	cout => \zaehl|counter[14]~63\);

-- Location: LCCOMB_X16_Y18_N30
\zaehl|counter[15]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[15]~64_combout\ = (\zaehl|counter\(15) & (!\zaehl|counter[14]~63\)) # (!\zaehl|counter\(15) & ((\zaehl|counter[14]~63\) # (GND)))
-- \zaehl|counter[15]~65\ = CARRY((!\zaehl|counter[14]~63\) # (!\zaehl|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(15),
	datad => VCC,
	cin => \zaehl|counter[14]~63\,
	combout => \zaehl|counter[15]~64_combout\,
	cout => \zaehl|counter[15]~65\);

-- Location: LCCOMB_X16_Y17_N0
\zaehl|counter[16]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[16]~66_combout\ = (\zaehl|counter\(16) & (\zaehl|counter[15]~65\ $ (GND))) # (!\zaehl|counter\(16) & (!\zaehl|counter[15]~65\ & VCC))
-- \zaehl|counter[16]~67\ = CARRY((\zaehl|counter\(16) & !\zaehl|counter[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(16),
	datad => VCC,
	cin => \zaehl|counter[15]~65\,
	combout => \zaehl|counter[16]~66_combout\,
	cout => \zaehl|counter[16]~67\);

-- Location: LCCOMB_X16_Y17_N2
\zaehl|counter[17]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[17]~68_combout\ = (\zaehl|counter\(17) & (!\zaehl|counter[16]~67\)) # (!\zaehl|counter\(17) & ((\zaehl|counter[16]~67\) # (GND)))
-- \zaehl|counter[17]~69\ = CARRY((!\zaehl|counter[16]~67\) # (!\zaehl|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(17),
	datad => VCC,
	cin => \zaehl|counter[16]~67\,
	combout => \zaehl|counter[17]~68_combout\,
	cout => \zaehl|counter[17]~69\);

-- Location: LCCOMB_X16_Y17_N4
\zaehl|counter[18]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[18]~70_combout\ = (\zaehl|counter\(18) & (\zaehl|counter[17]~69\ $ (GND))) # (!\zaehl|counter\(18) & (!\zaehl|counter[17]~69\ & VCC))
-- \zaehl|counter[18]~71\ = CARRY((\zaehl|counter\(18) & !\zaehl|counter[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(18),
	datad => VCC,
	cin => \zaehl|counter[17]~69\,
	combout => \zaehl|counter[18]~70_combout\,
	cout => \zaehl|counter[18]~71\);

-- Location: LCCOMB_X16_Y17_N6
\zaehl|counter[19]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[19]~72_combout\ = (\zaehl|counter\(19) & (!\zaehl|counter[18]~71\)) # (!\zaehl|counter\(19) & ((\zaehl|counter[18]~71\) # (GND)))
-- \zaehl|counter[19]~73\ = CARRY((!\zaehl|counter[18]~71\) # (!\zaehl|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(19),
	datad => VCC,
	cin => \zaehl|counter[18]~71\,
	combout => \zaehl|counter[19]~72_combout\,
	cout => \zaehl|counter[19]~73\);

-- Location: LCCOMB_X16_Y17_N8
\zaehl|counter[20]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[20]~74_combout\ = (\zaehl|counter\(20) & (\zaehl|counter[19]~73\ $ (GND))) # (!\zaehl|counter\(20) & (!\zaehl|counter[19]~73\ & VCC))
-- \zaehl|counter[20]~75\ = CARRY((\zaehl|counter\(20) & !\zaehl|counter[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(20),
	datad => VCC,
	cin => \zaehl|counter[19]~73\,
	combout => \zaehl|counter[20]~74_combout\,
	cout => \zaehl|counter[20]~75\);

-- Location: LCCOMB_X16_Y17_N10
\zaehl|counter[21]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[21]~76_combout\ = (\zaehl|counter\(21) & (!\zaehl|counter[20]~75\)) # (!\zaehl|counter\(21) & ((\zaehl|counter[20]~75\) # (GND)))
-- \zaehl|counter[21]~77\ = CARRY((!\zaehl|counter[20]~75\) # (!\zaehl|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(21),
	datad => VCC,
	cin => \zaehl|counter[20]~75\,
	combout => \zaehl|counter[21]~76_combout\,
	cout => \zaehl|counter[21]~77\);

-- Location: LCCOMB_X16_Y17_N12
\zaehl|counter[22]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[22]~78_combout\ = (\zaehl|counter\(22) & (\zaehl|counter[21]~77\ $ (GND))) # (!\zaehl|counter\(22) & (!\zaehl|counter[21]~77\ & VCC))
-- \zaehl|counter[22]~79\ = CARRY((\zaehl|counter\(22) & !\zaehl|counter[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(22),
	datad => VCC,
	cin => \zaehl|counter[21]~77\,
	combout => \zaehl|counter[22]~78_combout\,
	cout => \zaehl|counter[22]~79\);

-- Location: LCCOMB_X16_Y17_N14
\zaehl|counter[23]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[23]~80_combout\ = (\zaehl|counter\(23) & (!\zaehl|counter[22]~79\)) # (!\zaehl|counter\(23) & ((\zaehl|counter[22]~79\) # (GND)))
-- \zaehl|counter[23]~81\ = CARRY((!\zaehl|counter[22]~79\) # (!\zaehl|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(23),
	datad => VCC,
	cin => \zaehl|counter[22]~79\,
	combout => \zaehl|counter[23]~80_combout\,
	cout => \zaehl|counter[23]~81\);

-- Location: LCCOMB_X16_Y17_N16
\zaehl|counter[24]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[24]~82_combout\ = (\zaehl|counter\(24) & (\zaehl|counter[23]~81\ $ (GND))) # (!\zaehl|counter\(24) & (!\zaehl|counter[23]~81\ & VCC))
-- \zaehl|counter[24]~83\ = CARRY((\zaehl|counter\(24) & !\zaehl|counter[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(24),
	datad => VCC,
	cin => \zaehl|counter[23]~81\,
	combout => \zaehl|counter[24]~82_combout\,
	cout => \zaehl|counter[24]~83\);

-- Location: LCCOMB_X16_Y17_N18
\zaehl|counter[25]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[25]~84_combout\ = (\zaehl|counter\(25) & (!\zaehl|counter[24]~83\)) # (!\zaehl|counter\(25) & ((\zaehl|counter[24]~83\) # (GND)))
-- \zaehl|counter[25]~85\ = CARRY((!\zaehl|counter[24]~83\) # (!\zaehl|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(25),
	datad => VCC,
	cin => \zaehl|counter[24]~83\,
	combout => \zaehl|counter[25]~84_combout\,
	cout => \zaehl|counter[25]~85\);

-- Location: LCCOMB_X16_Y17_N20
\zaehl|counter[26]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[26]~86_combout\ = (\zaehl|counter\(26) & (\zaehl|counter[25]~85\ $ (GND))) # (!\zaehl|counter\(26) & (!\zaehl|counter[25]~85\ & VCC))
-- \zaehl|counter[26]~87\ = CARRY((\zaehl|counter\(26) & !\zaehl|counter[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(26),
	datad => VCC,
	cin => \zaehl|counter[25]~85\,
	combout => \zaehl|counter[26]~86_combout\,
	cout => \zaehl|counter[26]~87\);

-- Location: LCCOMB_X16_Y17_N22
\zaehl|counter[27]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[27]~88_combout\ = (\zaehl|counter\(27) & (!\zaehl|counter[26]~87\)) # (!\zaehl|counter\(27) & ((\zaehl|counter[26]~87\) # (GND)))
-- \zaehl|counter[27]~89\ = CARRY((!\zaehl|counter[26]~87\) # (!\zaehl|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(27),
	datad => VCC,
	cin => \zaehl|counter[26]~87\,
	combout => \zaehl|counter[27]~88_combout\,
	cout => \zaehl|counter[27]~89\);

-- Location: LCCOMB_X16_Y17_N24
\zaehl|counter[28]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[28]~90_combout\ = (\zaehl|counter\(28) & (\zaehl|counter[27]~89\ $ (GND))) # (!\zaehl|counter\(28) & (!\zaehl|counter[27]~89\ & VCC))
-- \zaehl|counter[28]~91\ = CARRY((\zaehl|counter\(28) & !\zaehl|counter[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(28),
	datad => VCC,
	cin => \zaehl|counter[27]~89\,
	combout => \zaehl|counter[28]~90_combout\,
	cout => \zaehl|counter[28]~91\);

-- Location: LCCOMB_X16_Y17_N26
\zaehl|counter[29]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[29]~92_combout\ = (\zaehl|counter\(29) & (!\zaehl|counter[28]~91\)) # (!\zaehl|counter\(29) & ((\zaehl|counter[28]~91\) # (GND)))
-- \zaehl|counter[29]~93\ = CARRY((!\zaehl|counter[28]~91\) # (!\zaehl|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(29),
	datad => VCC,
	cin => \zaehl|counter[28]~91\,
	combout => \zaehl|counter[29]~92_combout\,
	cout => \zaehl|counter[29]~93\);

-- Location: LCCOMB_X16_Y17_N28
\zaehl|counter[30]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[30]~94_combout\ = (\zaehl|counter\(30) & (\zaehl|counter[29]~93\ $ (GND))) # (!\zaehl|counter\(30) & (!\zaehl|counter[29]~93\ & VCC))
-- \zaehl|counter[30]~95\ = CARRY((\zaehl|counter\(30) & !\zaehl|counter[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|counter\(30),
	datad => VCC,
	cin => \zaehl|counter[29]~93\,
	combout => \zaehl|counter[30]~94_combout\,
	cout => \zaehl|counter[30]~95\);

-- Location: LCCOMB_X16_Y17_N30
\zaehl|counter[31]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[31]~96_combout\ = \zaehl|counter\(31) $ (\zaehl|counter[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(31),
	cin => \zaehl|counter[30]~95\,
	combout => \zaehl|counter[31]~96_combout\);

-- Location: FF_X23_Y18_N1
\prell|timer|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[0]~32_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(0));

-- Location: FF_X23_Y18_N3
\prell|timer|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[1]~35_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(1));

-- Location: FF_X23_Y18_N5
\prell|timer|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[2]~37_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(2));

-- Location: FF_X23_Y18_N7
\prell|timer|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[3]~39_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(3));

-- Location: FF_X23_Y18_N9
\prell|timer|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[4]~41_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(4));

-- Location: FF_X23_Y18_N11
\prell|timer|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[5]~43_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(5));

-- Location: FF_X23_Y18_N13
\prell|timer|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[6]~45_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(6));

-- Location: FF_X23_Y18_N15
\prell|timer|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[7]~47_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(7));

-- Location: FF_X23_Y18_N19
\prell|timer|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[9]~51_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(9));

-- Location: FF_X23_Y18_N21
\prell|timer|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[10]~53_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(10));

-- Location: FF_X23_Y18_N17
\prell|timer|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[8]~49_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(8));

-- Location: FF_X23_Y18_N23
\prell|timer|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[11]~55_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(11));

-- Location: FF_X23_Y18_N25
\prell|timer|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[12]~57_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(12));

-- Location: FF_X23_Y18_N27
\prell|timer|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[13]~59_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(13));

-- Location: FF_X23_Y18_N31
\prell|timer|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[15]~63_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(15));

-- Location: FF_X23_Y18_N29
\prell|timer|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[14]~61_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(14));

-- Location: FF_X23_Y17_N1
\prell|timer|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[16]~65_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(16));

-- Location: FF_X23_Y17_N3
\prell|timer|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[17]~67_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(17));

-- Location: FF_X23_Y17_N5
\prell|timer|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[18]~69_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(18));

-- Location: FF_X23_Y17_N7
\prell|timer|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[19]~71_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(19));

-- Location: FF_X23_Y17_N9
\prell|timer|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[20]~73_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(20));

-- Location: FF_X23_Y17_N11
\prell|timer|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[21]~75_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(21));

-- Location: FF_X23_Y17_N13
\prell|timer|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[22]~77_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(22));

-- Location: FF_X23_Y17_N15
\prell|timer|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[23]~79_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(23));

-- Location: FF_X23_Y17_N17
\prell|timer|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[24]~81_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(24));

-- Location: FF_X23_Y17_N19
\prell|timer|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[25]~83_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(25));

-- Location: FF_X23_Y17_N21
\prell|timer|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[26]~85_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(26));

-- Location: FF_X23_Y17_N23
\prell|timer|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[27]~87_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(27));

-- Location: FF_X23_Y17_N25
\prell|timer|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[28]~89_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(28));

-- Location: FF_X23_Y17_N27
\prell|timer|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[29]~91_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(29));

-- Location: FF_X23_Y17_N29
\prell|timer|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[30]~93_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(30));

-- Location: FF_X23_Y17_N31
\prell|timer|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|timer|counter[31]~95_combout\,
	sclr => \prell|timer|counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer|counter\(31));

-- Location: LCCOMB_X23_Y18_N0
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

-- Location: LCCOMB_X23_Y18_N2
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

-- Location: LCCOMB_X23_Y18_N4
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

-- Location: LCCOMB_X23_Y18_N6
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

-- Location: LCCOMB_X23_Y18_N8
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

-- Location: LCCOMB_X23_Y18_N10
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

-- Location: LCCOMB_X23_Y18_N12
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

-- Location: LCCOMB_X23_Y18_N14
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

-- Location: LCCOMB_X23_Y18_N16
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

-- Location: LCCOMB_X23_Y18_N18
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

-- Location: LCCOMB_X23_Y18_N20
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

-- Location: LCCOMB_X23_Y18_N22
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

-- Location: LCCOMB_X23_Y18_N24
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

-- Location: LCCOMB_X23_Y18_N26
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

-- Location: LCCOMB_X23_Y18_N28
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

-- Location: LCCOMB_X23_Y18_N30
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

-- Location: LCCOMB_X23_Y17_N0
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

-- Location: LCCOMB_X23_Y17_N2
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

-- Location: LCCOMB_X23_Y17_N4
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

-- Location: LCCOMB_X23_Y17_N6
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

-- Location: LCCOMB_X23_Y17_N8
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

-- Location: LCCOMB_X23_Y17_N10
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

-- Location: LCCOMB_X23_Y17_N12
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

-- Location: LCCOMB_X23_Y17_N14
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

-- Location: LCCOMB_X23_Y17_N16
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

-- Location: LCCOMB_X23_Y17_N18
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

-- Location: LCCOMB_X23_Y17_N20
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

-- Location: LCCOMB_X23_Y17_N22
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

-- Location: LCCOMB_X23_Y17_N24
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

-- Location: LCCOMB_X23_Y17_N26
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

-- Location: LCCOMB_X23_Y17_N28
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

-- Location: LCCOMB_X23_Y17_N30
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

-- Location: FF_X27_Y28_N21
\ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ms~4_combout\,
	ena => \ms[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms(3));

-- Location: FF_X23_Y28_N11
\sec2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sec2~3_combout\,
	ena => \sec2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec2(2));

-- Location: FF_X31_Y28_N19
\sec1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sec1~3_combout\,
	ena => \sec1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec1(2));

-- Location: FF_X32_Y28_N29
\min[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \min~7_combout\,
	ena => \min[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(3));

-- Location: FF_X17_Y18_N9
\zaehl|peak\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zaehl|peak~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zaehl|peak~q\);

-- Location: LCCOMB_X27_Y28_N18
\Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = ms(3) $ (((ms(1) & (ms(0) & ms(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ms(3),
	datab => ms(1),
	datac => ms(0),
	datad => ms(2),
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X27_Y28_N20
\ms~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ms~4_combout\ = (\Add3~1_combout\ & (!\rst~input_o\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~1_combout\,
	datac => \rst~input_o\,
	datad => \Equal0~0_combout\,
	combout => \ms~4_combout\);

-- Location: LCCOMB_X23_Y28_N26
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = sec2(2) $ (((sec2(1) & sec2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec2(2),
	datab => sec2(1),
	datac => sec2(0),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X23_Y28_N10
\sec2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec2~3_combout\ = (!\rst~input_o\ & (\Add2~0_combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \Add2~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \sec2~3_combout\);

-- Location: LCCOMB_X31_Y28_N26
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = sec1(2) $ (((sec1(0) & sec1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sec1(2),
	datac => sec1(0),
	datad => sec1(1),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X31_Y28_N18
\sec1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec1~3_combout\ = (!\rst~input_o\ & (\Add1~0_combout\ & !\min[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \Add1~0_combout\,
	datad => \min[3]~1_combout\,
	combout => \sec1~3_combout\);

-- Location: LCCOMB_X31_Y28_N12
\Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = sec1(3) $ (((sec1(2) & (sec1(1) & sec1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec1(2),
	datab => sec1(1),
	datac => sec1(0),
	datad => sec1(3),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X32_Y28_N12
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = min(3) $ (((min(1) & (min(0) & min(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datab => min(1),
	datac => min(0),
	datad => min(2),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X32_Y28_N28
\min~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min~7_combout\ = (!\rst~input_o\ & (\min[3]~4_combout\ & \Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \min[3]~4_combout\,
	datad => \Add0~1_combout\,
	combout => \min~7_combout\);

-- Location: FF_X23_Y21_N23
\prell|btn_output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|btn_output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|btn_output~q\);

-- Location: LCCOMB_X17_Y18_N2
\zaehl|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|Equal0~0_combout\ = (((!\zaehl|counter\(1)) # (!\zaehl|counter\(2))) # (!\zaehl|counter\(3))) # (!\zaehl|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(0),
	datab => \zaehl|counter\(3),
	datac => \zaehl|counter\(2),
	datad => \zaehl|counter\(1),
	combout => \zaehl|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y18_N12
\zaehl|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|Equal0~1_combout\ = (((\zaehl|counter\(6)) # (\zaehl|counter\(7))) # (!\zaehl|counter\(5))) # (!\zaehl|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(4),
	datab => \zaehl|counter\(5),
	datac => \zaehl|counter\(6),
	datad => \zaehl|counter\(7),
	combout => \zaehl|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y18_N30
\zaehl|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|Equal0~2_combout\ = ((\zaehl|counter\(10)) # ((!\zaehl|counter\(11)) # (!\zaehl|counter\(8)))) # (!\zaehl|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(9),
	datab => \zaehl|counter\(10),
	datac => \zaehl|counter\(8),
	datad => \zaehl|counter\(11),
	combout => \zaehl|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y18_N0
\zaehl|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|Equal0~3_combout\ = (\zaehl|counter\(15)) # (((\zaehl|counter\(13)) # (\zaehl|counter\(12))) # (!\zaehl|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(15),
	datab => \zaehl|counter\(14),
	datac => \zaehl|counter\(13),
	datad => \zaehl|counter\(12),
	combout => \zaehl|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y18_N10
\zaehl|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|Equal0~4_combout\ = (\zaehl|Equal0~1_combout\) # ((\zaehl|Equal0~3_combout\) # ((\zaehl|Equal0~2_combout\) # (\zaehl|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|Equal0~1_combout\,
	datab => \zaehl|Equal0~3_combout\,
	datac => \zaehl|Equal0~2_combout\,
	datad => \zaehl|Equal0~0_combout\,
	combout => \zaehl|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y17_N0
\zaehl|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|Equal0~5_combout\ = (\zaehl|counter\(16)) # (\zaehl|counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \zaehl|counter\(16),
	datad => \zaehl|counter\(17),
	combout => \zaehl|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y18_N28
\zaehl|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|Equal0~6_combout\ = ((\zaehl|counter\(21)) # ((\zaehl|counter\(20)) # (\zaehl|counter\(23)))) # (!\zaehl|counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(22),
	datab => \zaehl|counter\(21),
	datac => \zaehl|counter\(20),
	datad => \zaehl|counter\(23),
	combout => \zaehl|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y18_N22
\zaehl|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|Equal0~7_combout\ = ((\zaehl|Equal0~5_combout\) # ((\zaehl|Equal0~6_combout\) # (!\zaehl|counter\(18)))) # (!\zaehl|counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(19),
	datab => \zaehl|Equal0~5_combout\,
	datac => \zaehl|counter\(18),
	datad => \zaehl|Equal0~6_combout\,
	combout => \zaehl|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y18_N24
\zaehl|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|Equal0~8_combout\ = (\zaehl|counter\(27)) # ((\zaehl|counter\(24)) # ((\zaehl|counter\(25)) # (\zaehl|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(27),
	datab => \zaehl|counter\(24),
	datac => \zaehl|counter\(25),
	datad => \zaehl|counter\(26),
	combout => \zaehl|Equal0~8_combout\);

-- Location: LCCOMB_X17_Y18_N18
\zaehl|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|Equal0~9_combout\ = (\zaehl|counter\(28)) # ((\zaehl|counter\(29)) # ((\zaehl|counter\(30)) # (\zaehl|counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|counter\(28),
	datab => \zaehl|counter\(29),
	datac => \zaehl|counter\(30),
	datad => \zaehl|counter\(31),
	combout => \zaehl|Equal0~9_combout\);

-- Location: LCCOMB_X17_Y18_N20
\zaehl|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|Equal0~10_combout\ = (\zaehl|Equal0~4_combout\) # ((\zaehl|Equal0~9_combout\) # ((\zaehl|Equal0~7_combout\) # (\zaehl|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|Equal0~4_combout\,
	datab => \zaehl|Equal0~9_combout\,
	datac => \zaehl|Equal0~7_combout\,
	datad => \zaehl|Equal0~8_combout\,
	combout => \zaehl|Equal0~10_combout\);

-- Location: LCCOMB_X17_Y18_N8
\zaehl|peak~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|peak~0_combout\ = (!\zaehl|Equal0~10_combout\ & \running~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|Equal0~10_combout\,
	datad => \running~q\,
	combout => \zaehl|peak~0_combout\);

-- Location: FF_X23_Y21_N1
\prell|btn_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \prell|btn2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|btn_s~q\);

-- Location: FF_X23_Y21_N11
\prell|z_alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|z_alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|z_alt~q\);

-- Location: FF_X23_Y21_N21
\prell|btn_old\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \prell|btn_s~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|btn_old~q\);

-- Location: LCCOMB_X23_Y21_N22
\prell|btn_output~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|btn_output~0_combout\ = (\prell|btn_s~q\ & ((\prell|btn_output~q\) # ((!\prell|btn_old~q\ & !\prell|z_alt~q\)))) # (!\prell|btn_s~q\ & (\prell|btn_output~q\ & ((\prell|z_alt~q\) # (!\prell|btn_old~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|btn_s~q\,
	datab => \prell|btn_old~q\,
	datac => \prell|btn_output~q\,
	datad => \prell|z_alt~q\,
	combout => \prell|btn_output~0_combout\);

-- Location: LCCOMB_X17_Y18_N6
\zaehl|counter[29]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[29]~34_combout\ = (\zaehl|Equal0~8_combout\) # (\zaehl|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \zaehl|Equal0~8_combout\,
	datad => \zaehl|Equal0~9_combout\,
	combout => \zaehl|counter[29]~34_combout\);

-- Location: LCCOMB_X17_Y18_N16
\zaehl|counter[29]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zaehl|counter[29]~35_combout\ = ((!\zaehl|Equal0~4_combout\ & (!\zaehl|Equal0~7_combout\ & !\zaehl|counter[29]~34_combout\))) # (!\running~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|Equal0~4_combout\,
	datab => \running~q\,
	datac => \zaehl|Equal0~7_combout\,
	datad => \zaehl|counter[29]~34_combout\,
	combout => \zaehl|counter[29]~35_combout\);

-- Location: FF_X23_Y21_N31
\prell|btn2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|btn2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|btn2~q\);

-- Location: FF_X23_Y21_N17
\prell|z_neu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|z_neu~0_combout\,
	ena => \prell|timer_on~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|z_neu~q\);

-- Location: FF_X23_Y21_N19
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

-- Location: LCCOMB_X23_Y21_N0
\prell|timer_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer_on~0_combout\ = (\prell|z_alt~q\ & (((\prell|timer|peak~q\)))) # (!\prell|z_alt~q\ & (\prell|btn_old~q\ $ ((\prell|btn_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|z_alt~q\,
	datab => \prell|btn_old~q\,
	datac => \prell|btn_s~q\,
	datad => \prell|timer|peak~q\,
	combout => \prell|timer_on~0_combout\);

-- Location: LCCOMB_X24_Y17_N24
\prell|timer|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~0_combout\ = (((!\prell|timer|counter\(0)) # (!\prell|timer|counter\(1))) # (!\prell|timer|counter\(2))) # (!\prell|timer|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(3),
	datab => \prell|timer|counter\(2),
	datac => \prell|timer|counter\(1),
	datad => \prell|timer|counter\(0),
	combout => \prell|timer|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y17_N18
\prell|timer|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~1_combout\ = (((\prell|timer|counter\(4)) # (!\prell|timer|counter\(5))) # (!\prell|timer|counter\(6))) # (!\prell|timer|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(7),
	datab => \prell|timer|counter\(6),
	datac => \prell|timer|counter\(5),
	datad => \prell|timer|counter\(4),
	combout => \prell|timer|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y17_N12
\prell|timer|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~2_combout\ = (((\prell|timer|counter\(9)) # (\prell|timer|counter\(10))) # (!\prell|timer|counter\(11))) # (!\prell|timer|counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(8),
	datab => \prell|timer|counter\(11),
	datac => \prell|timer|counter\(9),
	datad => \prell|timer|counter\(10),
	combout => \prell|timer|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y17_N22
\prell|timer|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~3_combout\ = ((\prell|timer|counter\(12)) # ((\prell|timer|counter\(13)) # (\prell|timer|counter\(15)))) # (!\prell|timer|counter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(14),
	datab => \prell|timer|counter\(12),
	datac => \prell|timer|counter\(13),
	datad => \prell|timer|counter\(15),
	combout => \prell|timer|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y17_N0
\prell|timer|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~4_combout\ = (\prell|timer|Equal0~2_combout\) # ((\prell|timer|Equal0~1_combout\) # ((\prell|timer|Equal0~3_combout\) # (\prell|timer|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|Equal0~2_combout\,
	datab => \prell|timer|Equal0~1_combout\,
	datac => \prell|timer|Equal0~3_combout\,
	datad => \prell|timer|Equal0~0_combout\,
	combout => \prell|timer|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y17_N2
\prell|timer|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~5_combout\ = (\prell|timer|counter\(16)) # (!\prell|timer|counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \prell|timer|counter\(16),
	datad => \prell|timer|counter\(17),
	combout => \prell|timer|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y17_N20
\prell|timer|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~6_combout\ = (\prell|timer|counter\(21)) # ((\prell|timer|counter\(23)) # ((\prell|timer|counter\(22)) # (\prell|timer|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(21),
	datab => \prell|timer|counter\(23),
	datac => \prell|timer|counter\(22),
	datad => \prell|timer|counter\(20),
	combout => \prell|timer|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y17_N6
\prell|timer|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~7_combout\ = (\prell|timer|counter\(19)) # ((\prell|timer|Equal0~6_combout\) # ((\prell|timer|counter\(18)) # (\prell|timer|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(19),
	datab => \prell|timer|Equal0~6_combout\,
	datac => \prell|timer|counter\(18),
	datad => \prell|timer|Equal0~5_combout\,
	combout => \prell|timer|Equal0~7_combout\);

-- Location: LCCOMB_X24_Y17_N16
\prell|timer|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~8_combout\ = (\prell|timer|counter\(24)) # ((\prell|timer|counter\(27)) # ((\prell|timer|counter\(25)) # (\prell|timer|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(24),
	datab => \prell|timer|counter\(27),
	datac => \prell|timer|counter\(25),
	datad => \prell|timer|counter\(26),
	combout => \prell|timer|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y17_N26
\prell|timer|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|Equal0~9_combout\ = (\prell|timer|counter\(31)) # ((\prell|timer|counter\(28)) # ((\prell|timer|counter\(29)) # (\prell|timer|counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer|counter\(31),
	datab => \prell|timer|counter\(28),
	datac => \prell|timer|counter\(29),
	datad => \prell|timer|counter\(30),
	combout => \prell|timer|Equal0~9_combout\);

-- Location: LCCOMB_X24_Y17_N4
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

-- Location: FF_X23_Y21_N13
\prell|timer_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prell|btn_output~1_combout\,
	ena => \prell|timer_on~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prell|timer_on~q\);

-- Location: LCCOMB_X23_Y21_N18
\prell|timer|peak~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|peak~0_combout\ = (\prell|timer_on~q\ & !\prell|timer|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer_on~q\,
	datad => \prell|timer|Equal0~10_combout\,
	combout => \prell|timer|peak~0_combout\);

-- Location: LCCOMB_X23_Y21_N6
\prell|timer|counter[6]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|timer|counter[6]~34_combout\ = (!\prell|timer|Equal0~10_combout\) # (!\prell|timer_on~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|timer_on~q\,
	datad => \prell|timer|Equal0~10_combout\,
	combout => \prell|timer|counter[6]~34_combout\);

-- Location: LCCOMB_X23_Y21_N12
\prell|btn_output~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|btn_output~1_combout\ = (!\prell|z_alt~q\ & (\prell|btn_old~q\ $ (\prell|btn_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|z_alt~q\,
	datab => \prell|btn_old~q\,
	datac => \prell|btn_s~q\,
	combout => \prell|btn_output~1_combout\);

-- Location: LCCOMB_X23_Y21_N30
\prell|btn2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|btn2~0_combout\ = !\onoff~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \onoff~input_o\,
	combout => \prell|btn2~0_combout\);

-- Location: LCCOMB_X23_Y21_N16
\prell|z_neu~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|z_neu~0_combout\ = !\prell|z_alt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \prell|z_alt~q\,
	combout => \prell|z_neu~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\onoff~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_onoff,
	o => \onoff~input_o\);

-- Location: LCCOMB_X23_Y21_N10
\prell|z_alt~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prell|z_alt~feeder_combout\ = \prell|z_neu~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \prell|z_neu~q\,
	combout => \prell|z_alt~feeder_combout\);

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
	i => GND,
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
	i => GND,
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

-- Location: LCCOMB_X24_Y28_N0
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

-- Location: FF_X24_Y28_N1
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

-- Location: LCCOMB_X27_Y28_N30
\ms~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ms~0_combout\ = (!\rst~input_o\ & !ms(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => ms(0),
	combout => \ms~0_combout\);

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

-- Location: LCCOMB_X23_Y21_N28
\onoff_old~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onoff_old~0_combout\ = (\rst~input_o\ & ((\onoff_old~q\))) # (!\rst~input_o\ & (\prell|btn_output~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|btn_output~q\,
	datab => \rst~input_o\,
	datac => \onoff_old~q\,
	combout => \onoff_old~0_combout\);

-- Location: FF_X23_Y21_N29
onoff_old : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \onoff_old~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \onoff_old~q\);

-- Location: LCCOMB_X23_Y21_N24
\running~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \running~0_combout\ = (!\rst~input_o\ & (\running~q\ $ (((\prell|btn_output~q\ & !\onoff_old~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prell|btn_output~q\,
	datab => \rst~input_o\,
	datac => \running~q\,
	datad => \onoff_old~q\,
	combout => \running~0_combout\);

-- Location: FF_X23_Y21_N25
running : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \running~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \running~q\);

-- Location: LCCOMB_X23_Y21_N2
\ms[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ms[2]~1_combout\ = (\rst~input_o\) # ((\zaehl|peak~q\ & \running~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|peak~q\,
	datab => \rst~input_o\,
	datad => \running~q\,
	combout => \ms[2]~1_combout\);

-- Location: FF_X27_Y28_N31
\ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ms~0_combout\,
	ena => \ms[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms(0));

-- Location: LCCOMB_X27_Y28_N24
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = ms(2) $ (((ms(1) & ms(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ms(1),
	datac => ms(0),
	datad => ms(2),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X27_Y28_N2
\ms~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ms~3_combout\ = (\Add3~0_combout\ & (!\rst~input_o\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~0_combout\,
	datac => \rst~input_o\,
	datad => \Equal0~0_combout\,
	combout => \ms~3_combout\);

-- Location: FF_X27_Y28_N3
\ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ms~3_combout\,
	ena => \ms[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms(2));

-- Location: LCCOMB_X27_Y28_N14
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ((ms(1)) # ((ms(2)) # (!ms(0)))) # (!ms(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ms(3),
	datab => ms(1),
	datac => ms(0),
	datad => ms(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X27_Y28_N16
\ms~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ms~2_combout\ = (!\rst~input_o\ & (\Equal0~0_combout\ & (ms(0) $ (ms(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => ms(0),
	datac => ms(1),
	datad => \Equal0~0_combout\,
	combout => \ms~2_combout\);

-- Location: FF_X27_Y28_N17
\ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ms~2_combout\,
	ena => \ms[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ms(1));

-- Location: LCCOMB_X27_Y28_N0
\dec3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec3|Mux6~0_combout\ = (ms(1) & ((ms(3)) # ((ms(0) & ms(2))))) # (!ms(1) & (ms(3) $ (((!ms(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ms(3),
	datab => ms(1),
	datac => ms(0),
	datad => ms(2),
	combout => \dec3|Mux6~0_combout\);

-- Location: FF_X27_Y28_N1
\dec3|decoded_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec3|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec3|decoded_out\(1));

-- Location: LCCOMB_X27_Y28_N10
\dec3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec3|Mux5~0_combout\ = (ms(0) & ((ms(1)) # (ms(3) $ (!ms(2))))) # (!ms(0) & ((ms(2) & (ms(3))) # (!ms(2) & ((ms(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ms(3),
	datab => ms(1),
	datac => ms(0),
	datad => ms(2),
	combout => \dec3|Mux5~0_combout\);

-- Location: FF_X27_Y28_N11
\dec3|decoded_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec3|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec3|decoded_out\(2));

-- Location: LCCOMB_X27_Y28_N4
\dec3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec3|Mux4~0_combout\ = (ms(0)) # ((ms(1) & (ms(3))) # (!ms(1) & ((ms(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ms(3),
	datab => ms(1),
	datac => ms(0),
	datad => ms(2),
	combout => \dec3|Mux4~0_combout\);

-- Location: FF_X27_Y28_N5
\dec3|decoded_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec3|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec3|decoded_out\(3));

-- Location: LCCOMB_X27_Y28_N22
\dec3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec3|Mux3~0_combout\ = (ms(1) & ((ms(3)) # ((ms(0) & ms(2))))) # (!ms(1) & (ms(2) $ (((!ms(3) & ms(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ms(3),
	datab => ms(1),
	datac => ms(0),
	datad => ms(2),
	combout => \dec3|Mux3~0_combout\);

-- Location: FF_X27_Y28_N23
\dec3|decoded_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec3|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec3|decoded_out\(4));

-- Location: LCCOMB_X27_Y28_N8
\dec3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec3|Mux2~0_combout\ = (ms(2) & (ms(3))) # (!ms(2) & (ms(1) & ((ms(3)) # (!ms(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ms(3),
	datab => ms(1),
	datac => ms(0),
	datad => ms(2),
	combout => \dec3|Mux2~0_combout\);

-- Location: FF_X27_Y28_N9
\dec3|decoded_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec3|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec3|decoded_out\(5));

-- Location: LCCOMB_X27_Y28_N26
\dec3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec3|Mux1~0_combout\ = (ms(3) & ((ms(1)) # ((ms(2))))) # (!ms(3) & (ms(2) & (ms(1) $ (ms(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ms(3),
	datab => ms(1),
	datac => ms(0),
	datad => ms(2),
	combout => \dec3|Mux1~0_combout\);

-- Location: FF_X27_Y28_N27
\dec3|decoded_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec3|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec3|decoded_out\(6));

-- Location: LCCOMB_X27_Y28_N12
\dec3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec3|Mux0~0_combout\ = (ms(1) & (ms(3))) # (!ms(1) & (ms(2) $ (((!ms(3) & ms(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ms(3),
	datab => ms(1),
	datac => ms(0),
	datad => ms(2),
	combout => \dec3|Mux0~0_combout\);

-- Location: FF_X27_Y28_N13
\dec3|decoded_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec3|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec3|decoded_out\(7));

-- Location: LCCOMB_X23_Y28_N30
\sec2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec2~0_combout\ = (!sec2(0) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec2(0),
	datad => \rst~input_o\,
	combout => \sec2~0_combout\);

-- Location: LCCOMB_X23_Y28_N22
\sec2[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec2[3]~1_combout\ = (\rst~input_o\) # ((\zaehl|peak~q\ & (!\Equal0~0_combout\ & \running~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|peak~q\,
	datab => \rst~input_o\,
	datac => \Equal0~0_combout\,
	datad => \running~q\,
	combout => \sec2[3]~1_combout\);

-- Location: FF_X23_Y28_N31
\sec2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sec2~0_combout\,
	ena => \sec2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec2(0));

-- Location: LCCOMB_X23_Y28_N28
\Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = sec2(3) $ (((sec2(2) & (sec2(1) & sec2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec2(2),
	datab => sec2(1),
	datac => sec2(0),
	datad => sec2(3),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X23_Y28_N20
\sec2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec2~4_combout\ = (\Add2~1_combout\ & (!\rst~input_o\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~1_combout\,
	datac => \rst~input_o\,
	datad => \Equal1~0_combout\,
	combout => \sec2~4_combout\);

-- Location: FF_X23_Y28_N21
\sec2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sec2~4_combout\,
	ena => \sec2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec2(3));

-- Location: LCCOMB_X23_Y28_N24
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (sec2(2)) # ((sec2(1)) # ((!sec2(3)) # (!sec2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec2(2),
	datab => sec2(1),
	datac => sec2(0),
	datad => sec2(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X23_Y28_N8
\sec2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec2~2_combout\ = (!\rst~input_o\ & (\Equal1~0_combout\ & (sec2(0) $ (sec2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec2(0),
	datab => \rst~input_o\,
	datac => sec2(1),
	datad => \Equal1~0_combout\,
	combout => \sec2~2_combout\);

-- Location: FF_X23_Y28_N9
\sec2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sec2~2_combout\,
	ena => \sec2[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec2(1));

-- Location: LCCOMB_X23_Y28_N0
\dec2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec2|Mux6~0_combout\ = (sec2(2) & ((sec2(3)) # ((sec2(1) & sec2(0))))) # (!sec2(2) & (sec2(1) $ (((!sec2(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec2(2),
	datab => sec2(1),
	datac => sec2(0),
	datad => sec2(3),
	combout => \dec2|Mux6~0_combout\);

-- Location: FF_X23_Y28_N1
\dec2|decoded_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec2|decoded_out\(1));

-- Location: LCCOMB_X23_Y28_N18
\dec2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec2|Mux5~0_combout\ = (sec2(2) & ((sec2(3)) # ((sec2(1) & sec2(0))))) # (!sec2(2) & ((sec2(1)) # ((sec2(0) & !sec2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec2(2),
	datab => sec2(1),
	datac => sec2(0),
	datad => sec2(3),
	combout => \dec2|Mux5~0_combout\);

-- Location: FF_X23_Y28_N19
\dec2|decoded_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec2|decoded_out\(2));

-- Location: LCCOMB_X23_Y28_N4
\dec2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec2|Mux4~0_combout\ = (sec2(0)) # ((sec2(1) & ((sec2(3)))) # (!sec2(1) & (sec2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec2(2),
	datab => sec2(1),
	datac => sec2(0),
	datad => sec2(3),
	combout => \dec2|Mux4~0_combout\);

-- Location: FF_X23_Y28_N5
\dec2|decoded_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec2|decoded_out\(3));

-- Location: LCCOMB_X23_Y28_N6
\dec2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec2|Mux3~0_combout\ = (sec2(1) & ((sec2(3)) # ((sec2(2) & sec2(0))))) # (!sec2(1) & (sec2(2) $ (((sec2(0) & !sec2(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec2(2),
	datab => sec2(1),
	datac => sec2(0),
	datad => sec2(3),
	combout => \dec2|Mux3~0_combout\);

-- Location: FF_X23_Y28_N7
\dec2|decoded_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec2|decoded_out\(4));

-- Location: LCCOMB_X23_Y28_N16
\dec2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec2|Mux2~0_combout\ = (sec2(2) & (((sec2(3))))) # (!sec2(2) & (sec2(1) & ((sec2(3)) # (!sec2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec2(2),
	datab => sec2(1),
	datac => sec2(0),
	datad => sec2(3),
	combout => \dec2|Mux2~0_combout\);

-- Location: FF_X23_Y28_N17
\dec2|decoded_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec2|decoded_out\(5));

-- Location: LCCOMB_X23_Y28_N2
\dec2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec2|Mux1~0_combout\ = (sec2(2) & ((sec2(3)) # (sec2(1) $ (sec2(0))))) # (!sec2(2) & (sec2(1) & ((sec2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec2(2),
	datab => sec2(1),
	datac => sec2(0),
	datad => sec2(3),
	combout => \dec2|Mux1~0_combout\);

-- Location: FF_X23_Y28_N3
\dec2|decoded_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec2|decoded_out\(6));

-- Location: LCCOMB_X23_Y28_N12
\dec2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec2|Mux0~0_combout\ = (sec2(1) & (((sec2(3))))) # (!sec2(1) & (sec2(2) $ (((sec2(0) & !sec2(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec2(2),
	datab => sec2(1),
	datac => sec2(0),
	datad => sec2(3),
	combout => \dec2|Mux0~0_combout\);

-- Location: FF_X23_Y28_N13
\dec2|decoded_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec2|Mux0~0_combout\,
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

-- Location: LCCOMB_X31_Y28_N22
\sec1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec1~0_combout\ = (!sec1(0) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sec1(0),
	datad => \rst~input_o\,
	combout => \sec1~0_combout\);

-- Location: LCCOMB_X23_Y28_N14
\min[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min[3]~0_combout\ = (\zaehl|peak~q\ & (\running~q\ & (!\Equal0~0_combout\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zaehl|peak~q\,
	datab => \running~q\,
	datac => \Equal0~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \min[3]~0_combout\);

-- Location: LCCOMB_X31_Y28_N14
\sec1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec1[0]~1_combout\ = (\min[3]~0_combout\) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \min[3]~0_combout\,
	datad => \rst~input_o\,
	combout => \sec1[0]~1_combout\);

-- Location: FF_X31_Y28_N23
\sec1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sec1~0_combout\,
	ena => \sec1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec1(0));

-- Location: LCCOMB_X31_Y28_N28
\sec1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec1~4_combout\ = (\Add1~1_combout\ & (!\rst~input_o\ & !\min[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \rst~input_o\,
	datad => \min[3]~1_combout\,
	combout => \sec1~4_combout\);

-- Location: FF_X31_Y28_N29
\sec1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sec1~4_combout\,
	ena => \sec1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec1(3));

-- Location: LCCOMB_X31_Y28_N16
\min[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min[3]~1_combout\ = (sec1(2) & (!sec1(1) & (sec1(0) & !sec1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec1(2),
	datab => sec1(1),
	datac => sec1(0),
	datad => sec1(3),
	combout => \min[3]~1_combout\);

-- Location: LCCOMB_X31_Y28_N0
\sec1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sec1~2_combout\ = (!\rst~input_o\ & (!\min[3]~1_combout\ & (sec1(0) $ (sec1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec1(0),
	datab => \rst~input_o\,
	datac => sec1(1),
	datad => \min[3]~1_combout\,
	combout => \sec1~2_combout\);

-- Location: FF_X31_Y28_N1
\sec1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sec1~2_combout\,
	ena => \sec1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec1(1));

-- Location: LCCOMB_X31_Y28_N8
\dec1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|Mux6~0_combout\ = (sec1(2) & ((sec1(3)) # ((sec1(1) & sec1(0))))) # (!sec1(2) & (sec1(1) $ (((!sec1(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec1(2),
	datab => sec1(1),
	datac => sec1(0),
	datad => sec1(3),
	combout => \dec1|Mux6~0_combout\);

-- Location: FF_X31_Y28_N9
\dec1|decoded_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec1|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec1|decoded_out\(1));

-- Location: LCCOMB_X31_Y28_N2
\dec1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|Mux5~0_combout\ = (sec1(2) & ((sec1(3)) # ((sec1(1) & sec1(0))))) # (!sec1(2) & ((sec1(1)) # ((sec1(0) & !sec1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec1(2),
	datab => sec1(1),
	datac => sec1(0),
	datad => sec1(3),
	combout => \dec1|Mux5~0_combout\);

-- Location: FF_X31_Y28_N3
\dec1|decoded_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec1|decoded_out\(2));

-- Location: LCCOMB_X31_Y28_N4
\dec1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|Mux4~0_combout\ = (sec1(0)) # ((sec1(1) & ((sec1(3)))) # (!sec1(1) & (sec1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec1(2),
	datab => sec1(1),
	datac => sec1(0),
	datad => sec1(3),
	combout => \dec1|Mux4~0_combout\);

-- Location: FF_X31_Y28_N5
\dec1|decoded_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec1|decoded_out\(3));

-- Location: LCCOMB_X31_Y28_N30
\dec1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|Mux3~0_combout\ = (sec1(1) & ((sec1(3)) # ((sec1(2) & sec1(0))))) # (!sec1(1) & (sec1(2) $ (((sec1(0) & !sec1(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec1(2),
	datab => sec1(1),
	datac => sec1(0),
	datad => sec1(3),
	combout => \dec1|Mux3~0_combout\);

-- Location: FF_X31_Y28_N31
\dec1|decoded_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec1|decoded_out\(4));

-- Location: LCCOMB_X31_Y28_N24
\dec1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|Mux2~0_combout\ = (sec1(2) & (((sec1(3))))) # (!sec1(2) & (sec1(1) & ((sec1(3)) # (!sec1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec1(2),
	datab => sec1(1),
	datac => sec1(0),
	datad => sec1(3),
	combout => \dec1|Mux2~0_combout\);

-- Location: FF_X31_Y28_N25
\dec1|decoded_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec1|decoded_out\(5));

-- Location: LCCOMB_X31_Y28_N10
\dec1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|Mux1~0_combout\ = (sec1(2) & ((sec1(3)) # (sec1(1) $ (sec1(0))))) # (!sec1(2) & (sec1(1) & ((sec1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec1(2),
	datab => sec1(1),
	datac => sec1(0),
	datad => sec1(3),
	combout => \dec1|Mux1~0_combout\);

-- Location: FF_X31_Y28_N11
\dec1|decoded_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec1|decoded_out\(6));

-- Location: LCCOMB_X31_Y28_N20
\dec1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec1|Mux0~0_combout\ = (sec1(1) & (((sec1(3))))) # (!sec1(1) & (sec1(2) $ (((sec1(0) & !sec1(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec1(2),
	datab => sec1(1),
	datac => sec1(0),
	datad => sec1(3),
	combout => \dec1|Mux0~0_combout\);

-- Location: FF_X31_Y28_N21
\dec1|decoded_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec1|decoded_out\(7));

-- Location: LCCOMB_X32_Y28_N22
\min~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min~2_combout\ = (!min(0) & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min(0),
	datad => \rst~input_o\,
	combout => \min~2_combout\);

-- Location: LCCOMB_X32_Y28_N14
\min[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min[3]~3_combout\ = (\rst~input_o\) # ((\min[3]~1_combout\ & \min[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \min[3]~1_combout\,
	datad => \min[3]~0_combout\,
	combout => \min[3]~3_combout\);

-- Location: FF_X32_Y28_N23
\min[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \min~2_combout\,
	ena => \min[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(0));

-- Location: LCCOMB_X32_Y28_N18
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = min(2) $ (((min(1) & min(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min(1),
	datac => min(0),
	datad => min(2),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X32_Y28_N2
\min~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min~6_combout\ = (!\rst~input_o\ & (\min[3]~4_combout\ & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \min[3]~4_combout\,
	datad => \Add0~0_combout\,
	combout => \min~6_combout\);

-- Location: FF_X32_Y28_N3
\min[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \min~6_combout\,
	ena => \min[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(2));

-- Location: LCCOMB_X32_Y28_N8
\min[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min[3]~4_combout\ = ((min(1)) # ((min(2)) # (!min(0)))) # (!min(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datab => min(1),
	datac => min(0),
	datad => min(2),
	combout => \min[3]~4_combout\);

-- Location: LCCOMB_X32_Y28_N24
\min~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \min~5_combout\ = (\min[3]~4_combout\ & (!\rst~input_o\ & (min(0) $ (min(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(0),
	datab => \min[3]~4_combout\,
	datac => min(1),
	datad => \rst~input_o\,
	combout => \min~5_combout\);

-- Location: FF_X32_Y28_N25
\min[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \min~5_combout\,
	ena => \min[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(1));

-- Location: LCCOMB_X32_Y28_N16
\dec0|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|Mux6~0_combout\ = (min(1) & ((min(3)) # ((min(0) & min(2))))) # (!min(1) & (min(3) $ (((!min(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datab => min(1),
	datac => min(0),
	datad => min(2),
	combout => \dec0|Mux6~0_combout\);

-- Location: FF_X32_Y28_N17
\dec0|decoded_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec0|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec0|decoded_out\(1));

-- Location: LCCOMB_X32_Y28_N10
\dec0|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|Mux5~0_combout\ = (min(0) & ((min(1)) # (min(3) $ (!min(2))))) # (!min(0) & ((min(2) & (min(3))) # (!min(2) & ((min(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datab => min(1),
	datac => min(0),
	datad => min(2),
	combout => \dec0|Mux5~0_combout\);

-- Location: FF_X32_Y28_N11
\dec0|decoded_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec0|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec0|decoded_out\(2));

-- Location: LCCOMB_X32_Y28_N20
\dec0|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|Mux4~0_combout\ = (min(0)) # ((min(1) & (min(3))) # (!min(1) & ((min(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datab => min(1),
	datac => min(0),
	datad => min(2),
	combout => \dec0|Mux4~0_combout\);

-- Location: FF_X32_Y28_N21
\dec0|decoded_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec0|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec0|decoded_out\(3));

-- Location: LCCOMB_X32_Y28_N6
\dec0|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|Mux3~0_combout\ = (min(1) & ((min(3)) # ((min(0) & min(2))))) # (!min(1) & (min(2) $ (((!min(3) & min(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datab => min(1),
	datac => min(0),
	datad => min(2),
	combout => \dec0|Mux3~0_combout\);

-- Location: FF_X32_Y28_N7
\dec0|decoded_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec0|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec0|decoded_out\(4));

-- Location: LCCOMB_X32_Y28_N0
\dec0|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|Mux2~0_combout\ = (min(2) & (min(3))) # (!min(2) & (min(1) & ((min(3)) # (!min(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datab => min(1),
	datac => min(0),
	datad => min(2),
	combout => \dec0|Mux2~0_combout\);

-- Location: FF_X32_Y28_N1
\dec0|decoded_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec0|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec0|decoded_out\(5));

-- Location: LCCOMB_X32_Y28_N26
\dec0|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|Mux1~0_combout\ = (min(3) & ((min(1)) # ((min(2))))) # (!min(3) & (min(2) & (min(1) $ (min(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datab => min(1),
	datac => min(0),
	datad => min(2),
	combout => \dec0|Mux1~0_combout\);

-- Location: FF_X32_Y28_N27
\dec0|decoded_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec0|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec0|decoded_out\(6));

-- Location: LCCOMB_X32_Y28_N4
\dec0|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dec0|Mux0~0_combout\ = (min(1) & (min(3))) # (!min(1) & (min(2) $ (((!min(3) & min(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datab => min(1),
	datac => min(0),
	datad => min(2),
	combout => \dec0|Mux0~0_combout\);

-- Location: FF_X32_Y28_N5
\dec0|decoded_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec0|Mux0~0_combout\,
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


