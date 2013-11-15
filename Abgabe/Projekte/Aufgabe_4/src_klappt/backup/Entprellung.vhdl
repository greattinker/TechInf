
library ieee;
use ieee.std_logic_1164.all;
use Ieee.std_logic_unsigned.all;


entity Entprellung is
  
  port (
		clk : in std_logic;
		btn : in std_logic;
		btnout  : out  std_logic
		);
		
end Entprellung;

architecture entprel1 of Entprellung is
	type zustand is (idle, locked);
	attribute enum_encoding : string;
	attribute enum_encoding of zustaende : type is "1 0";
	signal state : zustand := idle;
	signal counter : unsigned(17 downto 0):= (others => '0');
	
	component Zaehler
			port (
				clk : in std_logic;
				count_steps : in unsigned(31 downto 0);
				counter_en : in std_logic;
				counter_reset : in std_logic;
				counter_end : in std_logic;
				);
	end component;
	
begin 
	custom_zaehler : Zaehler PORT MAP (clk => clk, count_steps => to_unsigned(150000, count_steps'length), counter_en => zaehler_en, counter_reset => zaehler_res, counter_end => zaehler_end);
	process(clk)
	begin
		if rising_edge(clk) then
			
			if state = locked then
				if counter = to_unsigned(150000, counter'length) then
					state <= idle;
				else
					counter = counter + 1;
				end if;
			elsif idle then
				
			end if;
		end if;
	end process;

	process (z_alt, btn)
	begin
		case z_alt is
			when idle => 	if rising_edge(btn) then
								z_neu <= locked;
								counter <= (others => '0');
								btnout <= '1';
							else if falling_edge(btn) then
								z_neu <= locked;
								counter <= (others => '0');
								btnout <= '0';
							end if;
			when locked => 	if counter = to_unsigned(150000, counter'length) then
								z_neu <= idle;
							end if;
			when others => 	null;
		end case;
	end process;
end entprel1;
