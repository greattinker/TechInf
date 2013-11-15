library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LEDAutomat is
  
  port (
		clk : in std_logic;
		btn : in std_logic;
		ld  : out  std_logic
		);
		
end LEDAutomat;

architecture led1 of LEDAutomat is 
	
	signal led : std_logic := '0';

begin

	process(clk)  -- neue Ausgabe übernehmen
	begin
		if rising_edge(clk) then
			ld <= led;
		end if;
	end process;

	process(clk)  -- neue Ausgabe berechnen
	begin
		if rising_edge(clk) then
			if(btn = '1') then
				led <= not led;
			end if;
		end if;
	end process;

	
end led1;