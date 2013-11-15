
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Zaehler is
  
  port (
		clk : in std_logic;
		count_steps : in unsigned(31 downto 0);
		counter_en : in std_logic;
		counter_reset : in std_logic;
		counter_end : in std_logic;
		);
		

end Zaehler;

architecture zae1 of Zaehler is 
		

		signal counter : unsigned(26 downto 0) := count_steps;  
begin
	
	process(clk)
	begin
			
		if rising_edge(clk) then
			if(counter_en = '1') then
				
				if counter = counter_steps then
					counter_end <= 1;
				else
					counter <= counter + 1;
				end if;	
			end if;
		end if;	
	end process;	
	
	process (counter_reset)
	begin
		counter <= (others => '0');
	end process;
	
end zae1;

