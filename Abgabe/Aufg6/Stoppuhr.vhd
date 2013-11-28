library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Stoppuhr is 

	port (
		clk : in std_logic;
		rst : in std_logic;
		onoff : in std_logic;
		seg1 : out std_logic_vector(7 downto 0);
		seg2 : out std_logic_vector(7 downto 0);
		seg3 : out std_logic_vector(7 downto 0);
		seg4 : out std_logic_vector(7 downto 0));

end Stoppuhr;

architecture uhr of Stoppuhr is 

	-- Zaehler: gibt jede Zehntelsekunde einen Peak aus
	component Zaehler
		port (
			clk : in std_logic;
			zaehler_time : in unsigned(31 downto 0);
			zaehler_on : in std_logic;
			peak_out  : out  std_logic
			);
	end component;
	
	-- entprellt das Eingangssignal des (on/off) Buttons
	component EntprellAutomat
		port (
			clk : in std_logic;
			btn : in std_logic;
			btnout  : out  std_logic
			);
	end component;
	
	-- 4 Decoder: Je ein Decoder dekodiert eine Stelle der aktuellen Zeit fuer die 7-Segment Anzeige
	component Decoder
		port (
			clk : in std_logic;
			code : in std_logic_vector(3 downto 0);
			decoded : out std_logic_vector(7 downto 0)
			);
	end component;
	
	-- Steuersignal und Ausgabesignal des Zaehlers
	signal timer_on, peak : std_logic := '0';
	
	-- Je ein Signal fuer je eine Stelle der aktuellen Zeit
	signal min, sec1, sec2, ms : unsigned(3 downto 0) := (others => '0');
	
	-- Steuersignal fuer die Stoppuhr und Signale fuer den entprellten Button, sowie des alten Signalpegels des Buttons 
	signal running, onoff_db, onoff_old : std_logic := '0';
	
	-- Signale fuer die 7-Segment Anzeige
	signal segMin, segSec1, segSec2, segMs : std_logic_vector(7 downto 0) := (others => '0');
	

begin

	zaehl : Zaehler PORT MAP (clk => clk, 
										zaehler_time => to_unsigned(5000000, 32), 
										zaehler_on => timer_on, 
										peak_out => peak);
										
	prell : EntprellAutomat PORT MAP (
										clk => clk, 	
										btn => onoff, 
										btnout => onoff_db);
										
	-- Jeder Decoder dekodiert eine Stelle der aktuellen Zeit
	dec0 : Decoder PORT MAP(clk => clk, code => std_logic_vector(min), decoded => segMin);
	dec1 : Decoder PORT MAP(clk => clk, code => std_logic_vector(sec1), decoded => segSec1);
	dec2 : Decoder PORT MAP(clk => clk, code => std_logic_vector(sec2), decoded => segSec2);
	dec3 : Decoder PORT MAP(clk => clk, code => std_logic_vector(ms), decoded => segMs);
																												
										
	process(clk)
	begin
		if rising_edge(clk) then
			if(rst = '1') then											-- aktiver Reset setzt alles zurueck und stoppt die Uhr
				running <= '0';
				timer_on <= '0';
				min <= (others => '0');
				sec1 <= (others => '0'); 
				sec2 <= (others => '0');
				ms <= (others => '0');
			else
				onoff_old <= onoff_db;
				if(onoff_db = '1' and onoff_db /= onoff_old) then		--------------------------------------
					running <= not running;								--	on/off umschalten wenn btn gedrueckt
					timer_on <= not timer_on;							--------------------------------------
				end if;	
		
				if(running = '1') then									-- Wenn die Uhr laeuft...
					if(peak = '1') then									-- ...und der Zaehler einen Peak ausgibt...
						if(ms = to_unsigned(9, 4)) then					------------------------------------------
							if(sec2 = to_unsigned(9, 4)) then			--
								if(sec1 = to_unsigned(5, 4)) then		--
									if(min = to_unsigned(9, 4)) then	--
										min <= (others => '0');			--
										sec1 <= (others => '0');		--
										sec2 <= (others => '0');		--
										ms <= (others => '0');			--
									else								--
										min <= min + 1;					-- ...erhoehe die aktuelle Zeit
										sec1 <= (others => '0');		-- um eine Zehntelsekunde (mod 10 Minuten)
										sec2 <= (others => '0');		--
										ms <= (others => '0');			--
									end if;								--
								else									--
									sec1 <= sec1 + 1;					--
									sec2 <= (others => '0');			--
									ms <= (others => '0');				--
								end if;									--
							else										--
								sec2 <= sec2 + 1;						--
								ms <= (others => '0');					--
							end if;										--
						else											--
							ms <= ms + 1;								--
						end if;											--
					end if;												--
				end if;													------------------------------------------
				
			end if;
		end if;
	end process;
	
	seg4 <= segMin and "11111110";	-- Punkt der 7-Segment Anzeige aktivieren
	seg3 <= segSec1;
	seg2 <= segSec2 and "11111110"; -- Punkt der 7-Segment Anzeige aktivieren
	seg1 <= segMS;
	
end uhr;
