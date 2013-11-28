
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity Entprellung is
  
	port (
		clk : in std_logic;
		btn_in : in std_logic;
		btn_out  : out  std_logic
		);
		
end Entprellung;

architecture entprel1 of Entprellung is
	
	signal btn_old : std_logic := '0';
	signal state : std_logic := '0';
	
	signal zaehler_state : std_logic :='0';
	signal zaehler_state_d : std_logic :='0';
	signal zaehler_reset : std_logic := '0';
	
	
	
	-- Zaehler-Komponente wird eingebunden	
	component Zaehler
		port (
			clk : in std_logic;
			count_steps : in unsigned(31 downto 0);
			counter_reset : in std_logic;
			counter_state : out std_logic
			);
	end component;
	
begin 
	custom_zaehler : Zaehler PORT MAP (
								clk => clk, 
								count_steps => to_unsigned(150000, 32), 
								-- zu zaehlende Schritte, bis deaktivierung des counter_state signals
								counter_state => zaehler_state, 
								counter_reset => zaehler_reset);
	
	-- entprellung des eingangsignals btn_in
	process(clk)
	begin
		if rising_edge(clk) then			
			if state = '0' then -- falls ausserhalb der prelldauer				
				if btn_in /= btn_old then -- falls das eingangssignal sich aendert, wird der entpreller gestartet
					zaehler_reset <= '1';
					btn_old <= btn_in;
				end if;
			else
				-- zaehler_reset soll nur einen takt aktiv sein
				if zaehler_reset = '1' then
					zaehler_reset <= '0';
				end if;
			end if;
		end if;
	end process;
	
	-- synchronisierung des zaehler-zustands	
	process (clk)
	begin
		if rising_edge(clk) then
			state <= zaehler_state_d;
			zaehler_state_d <= zaehler_state;
		end if;
	end process;
	
	-- ausgabe des entprellten signals
	btn_out <= btn_old;
end entprel1;
