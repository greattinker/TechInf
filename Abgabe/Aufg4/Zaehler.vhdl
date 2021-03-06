library ieee;
use ieee.std_logic_1164.all;
use Ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Zaehler is
  
  port (
		clk : in std_logic;
		count_steps : in unsigned(31 downto 0);	-- zu zaehlende taktschritte, bis zur deaktivierung des counter_state signals
		counter_reset : in std_logic;
		counter_state : out std_logic);
		

end Zaehler;

architecture zae1 of Zaehler is 
		
	signal reset : std_logic := '0';
	signal reset_d : std_logic := '0';
	signal state : std_logic := '0';  
	signal counter : unsigned(31 downto 0) := (others => '0');  
begin
	
	process(clk)
	begin
			
		if rising_edge(clk) then
			if reset = '1' then -- zuruecksetzen des zaehlers
				counter <= (others => '0');
			end if;
			
			if counter < count_steps then -- zaehler aktiv
				state <= '1';
				counter <= counter + 1;
			else
				state <= '0';
			end if;	
		end if;	
	end process;	
	
	-- synchronisierung des reset-signals
	process(clk)
	begin
		if rising_edge(clk) then
			reset_d <= counter_reset;
			reset <= reset_d;
		end if;
	end process;
	
	
	counter_state <= state;
end zae1;

