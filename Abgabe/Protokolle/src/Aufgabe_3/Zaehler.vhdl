
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Zaehler is
  
  port (
		clk : in std_logic;
		clk_out : out std_logic
		);
		

end Zaehler;

architecture zae1 of Zaehler is 
		

		signal counter : unsigned(26 downto 0) := (others => '0');  -- Zaehler mod 25.000.000
		signal state : std_logic := '1';
begin
	
	process(clk, state, counter)
	begin
			
		if rising_edge(clk) then
			
			state <= '0';
			if counter = to_unsigned(50000000, counter'length) then
				counter <= (others => '0');
				state <= '1';
			
			else
				counter <= counter + 1;
			end if;	
			
		end if;	
	end process;	
	
	clk_out <= state;	
end zae1;

