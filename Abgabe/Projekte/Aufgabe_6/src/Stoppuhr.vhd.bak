library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Stoppuhr is 

	port (
		clk : in std_logic;
		rst : in std_logic;
		ss : in std_logic;
		seg1 : out std_logic_vector(7 downto 0);
		seg2 : out std_logic_vector(7 downto 0);
		seg3 : out std_logic_vector(7 downto 0);
		seg4 : out std_logic_vector(7 downto 0));

end Stoppuhr;

architecture uhr of Stoppuhr is 

	component Zaehler
		port (
			clk : in std_logic;
			count_steps : in unsigned(31 downto 0);
			counter_reset : in std_logic;
			counter_state : out std_logic
			);
	end component;
	
	component Entprellung
		port (
			clk : in std_logic;
			btn_in : in std_logic;
			btn_out  : out  std_logic
			);
	end component;
	
	signal zaehler_state, zaehler_reset : std_logic := '0';
	signal min, sec1, sec2, ms : unsigned(3 downto 0) := (others => '0');
	signal onoff : std_logic;
	
	

begin

	zaehl : Zaehler PORT MAP (clk => clk, 
										count_steps => to_unsigned(5000000, 32), 
										counter_state => zaehler_state, 
										counter_reset => zaehler_reset);
										
	prell : Entprellung PORT MAP (
										clk => clk, 
										btn_in => ss, 
										btn_out => onoff);
										
	process(zaehler_state)
	begin
		if(zaehler_state = '1') then
			if(ms = to_unsigned(9, 4)) then
				if(sec2 = to_unsigned(9, 4)) then
					if(sec1 = to_unsigned(5, 4)) then
						if(min = to_unsigned(9, 4)) then
							min <= (others => '0');
							sec1 <= (others => '0');
							sec2 <= (others => '0');
							ms <= (others => '0');
						else
							min <= min + 1;
							sec1 <= (others => '0');
							sec2 <= (others => '0');
							ms <= (others => '0');
						end if;
					else
						
					end if;
				end if;
			end if;
		end if;
	end process
	
end uhr;