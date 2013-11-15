library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Zaehler is
  
  port (
		clk : in std_logic;
		zaehler_time : in unsigned(31 downto 0);
		zaehler_on : in std_logic;
		peak_out  : out  std_logic
		);
		
end Zaehler;

architecture timer of Zaehler is

	signal counter : unsigned(31 downto 0) := (others => '0');
	signal peak : std_logic := '0';

begin

	process(clk)
	begin
		if rising_edge(clk) then
			peak <= '0';
			if(zaehler_on = '1') then
				if(counter = zaehler_time - 1) then
					counter <= (others => '0');
					peak <= '1';
				else
					counter <= counter + 1;
				end if;
			else
				counter <= (others => '0');
			end if;
		end if;
	end process;
	
	peak_out <= peak;

end timer;