library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity EntprellteLED is
  
  port (
			clk : in std_logic;
			btn_e : in std_logic;
			ld_e  : out  std_logic
		);
		
end EntprellteLED;

architecture prellLED of EntprellteLED is 
	
	component EntprellAutomat
		port (
			clk : in std_logic;
			btn : in std_logic;
			btnout  : out  std_logic
		);
	end component;	
	
	component LEDAutomat
		port (
			clk : in std_logic;
			btn : in std_logic;
			ld  : out  std_logic
		);
	end component;	
	
	signal but : std_logic;

begin

	prell : EntprellAutomat PORT MAP (clk => clk, btn => btn_e, btnout => but);
	led1 : LEDAutomat PORT MAP (clk => clk, btn => but, ld => ld_e);
	
end prellLED;