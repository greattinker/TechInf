library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity EntprellAutomat is
  
  port (
		clk : in std_logic;
		btn : in std_logic;
		btnout  : out  std_logic
		);
		
end EntprellAutomat;

architecture prell of EntprellAutomat is 

	component Zaehler
		port (
			clk : in std_logic;
			zaehler_time : in unsigned(31 downto 0);
			zaehler_on : in std_logic;
			peak_out  : out  std_logic
		);
	end component;	
	
	type zustaende is (idle, count);  -- 2 Zustände, idle = button betätigen möglich, count = 3ms warten (bis 150.000 hochzählen bei 50Mhz)
	attribute enum_encoding : string;
	attribute enum_encoding of zustaende : type is "1 0";
	signal z_alt, z_neu : zustaende := idle;
	signal btn_s, btn_old, timer_on, btn_output : std_logic := '0';
	signal btn2 : std_logic := '1';
	signal peak : std_logic := '0';

begin

	timer : Zaehler PORT MAP (clk => clk, zaehler_time => to_unsigned(150000,32), zaehler_on => timer_on, peak_out => peak);

	process(clk)
	begin
		if rising_edge(clk) then
			btn2 <= btn;
			btn_old <= btn_s;
			btn_s <= not btn2;
		end if;
	end process;

	
	process(clk)
	begin
		if rising_edge(clk) then
			z_alt <= z_neu;
			case z_alt is
				when idle => 	if(btn_s /= btn_old) then
										btn_output <= btn_s;
										z_neu <= count;
										timer_on <= '1';
									end if;
				when count =>	if(peak = '1') then
										z_neu <= idle;
										timer_on <= '0';
									end if;
			end case;
		end if;
	end process;
	btnout <= btn_output;
end prell;