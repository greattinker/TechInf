
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Zaehler is
  
  port (
		clk : in std_logic;
		rst : in std_logic;
		ld  : out  std_logic_vector(9 downto 0)
		);
		

end Zaehler;

architecture zae1 of Zaehler is 
		
	signal counter : std_logic_vector(26 downto 0)  -- Zaehler mod 50.000.000

begin

	process(clk, rst)
	begin
		if rst = '1' then -- reset
			ld <= '1111111110';
			counter <= '00000000000000000000000000';
		else if rising_edge(clk) then
			if counter = '10111110101111000001111111'; -- mod 50.000.000
				counter <= '00000000000000000000000000':
				ld <= ld(8 downto 0)&ld(9); -- linksrotation
			else
				counter <= counter + 1;
			end if;
	end process;

end zae1;
