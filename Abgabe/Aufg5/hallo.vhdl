library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

------------------------------------------------------------------
-- Top Level:
-- Verbindet den Multiplexer mit 4 Decodern und legt den Ausgang
-- je eines Decoders an eine 7 Segment Anzeige
------------------------------------------------------------------
entity Hallo is 

	port (
		clk : in std_logic;
		rst : in std_logic;
		seg1 : out std_logic_vector(7 downto 0); 	--------------
		seg2 : out std_logic_vector(7 downto 0); 	-- 7 Segment
		seg3 : out std_logic_vector(7 downto 0);	-- Ausgaenge
		seg4 : out std_logic_vector(7 downto 0));	--------------

end Hallo;

architecture hello of hallo is 

	component Multiplex
		port (
			clk : in std_logic;
			rst : in std_logic;
			led_out  : out std_logic_vector(11 downto 0)
		);
	end component;
	
	component Decoder
		port (
			clk : in std_logic;
			code : in std_logic_vector(2 downto 0);
			decoded : out std_logic_vector(7 downto 0));
		
		end component;
		
		signal dig : std_logic_vector(11 downto 0); -- nimmt 12bit Wort aus dem Multiplexer entgegen
		signal dig0 : std_logic_vector(2 downto 0); -------------------------------------------
		signal dig1 : std_logic_vector(2 downto 0); -- 4*3bit die je ein Zeichen aus dem 12bit
		signal dig2 : std_logic_vector(2 downto 0); -- Wort des Multiplexers abzweigen 
		signal dig3 : std_logic_vector(2 downto 0); -------------------------------------------
		
begin

	-------------------------------------------------------------------------------
	-- Multiplexer Ausgang wird an das Signal "dig" angelegt
	-- Je ein Signal mit je einem Zeichen wird als Eingang eines Decoders angelegt
	-------------------------------------------------------------------------------
	mult : Multiplex PORT MAP( clk => clk, rst => rst, led_out => dig);
	dec0 : Decoder PORT MAP(clk => clk, code => dig0, decoded => seg4);
	dec1 : Decoder PORT MAP(clk => clk, code => dig1, decoded => seg3);
	dec2 : Decoder PORT MAP(clk => clk, code => dig2, decoded => seg2);
	dec3 : Decoder PORT MAP(clk => clk, code => dig3, decoded => seg1);
	
	-- abzweigen von je 3bit (ein Zeichen) aus dem Multiplexer Ausgang
	dig0 <= dig(11 downto 9);
	dig1 <= dig(8 downto 6);
	dig2 <= dig(5 downto 3);
	dig3 <= dig(2 downto 0);

end hello;
