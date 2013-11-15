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
	signal btn2, btn_s, timer_on : std_logic := '0';
	signal peak : std_logic := '0';

begin

	timer : Zaehler PORT MAP (clk => clk, zaehler_time => "00000000000000100100100111110000", zaehler_on => timer_on, peak_out => peak);

	process(clk)
	begin
		if rising_edge(clk) then
			btn2 <= btn;
			btn_s <= not btn2;
		end if;
	end process;
	
	process(clk)
	begin
		if rising_edge(clk) then
			z_alt <= z_neu;
			if(z_alt = idle and z_neu = count) then
				btnout <= '1';
			else
				btnout <= '0';
			end if;
		end if;
	end process;
	
	process(clk)
	begin
		if rising_edge(clk) then
			case z_alt is
				when idle => 	if(btn_s = '1') then
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
	
end prell;