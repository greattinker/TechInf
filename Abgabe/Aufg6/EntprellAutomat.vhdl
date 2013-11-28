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
	
	type zustaende is (idle, count);  -- 2 Zustaende, idle = button betaetigen moeglich, count = 3ms warten (bis 150.000 hochzaehlen bei 50Mhz)
	attribute enum_encoding : string;
	attribute enum_encoding of zustaende : type is "1 0";
	signal z_alt, z_neu : zustaende := idle; -- alter und neuer Zustand des Automaten
	signal btn_s, btn_output : std_logic := '0'; -- Synchronisiertes (Eingangs)Buttonsignal und Ausgangssignal des Automaten
	signal btn_old : std_logic := '0'; -- Speichern des vorherigen "btn_s" Pegels
	signal btn2 : std_logic := '1'; -- Synchronisierungssignal fuer den Button
	signal timer_on : std_logic := '0'; -- Steuerung des externen Zaehler Moduls
	signal peak : std_logic := '0'; -- Ausgabe des externen Zaehler Moduls

begin

	-- enthaltener Zaehler, der (falls aktiviert) alle 3ms fuer einen Takt eine eins an das Signal "peak" ausgibt
	timer : Zaehler PORT MAP (clk => clk, zaehler_time => to_unsigned(150000,32), zaehler_on => timer_on, peak_out => peak);

	-- Synchronisieren des Eingabesignals (Button) und Speichern des alten "btn_s" Pegels
	process(clk)
	begin
		if rising_edge(clk) then
			btn2 <= btn;
			btn_old <= btn_s;
			btn_s <= not btn2;
		end if;
	end process;

	-- Uebernehmen und berechnen des neuen Zustandes
	process(clk)
	begin
		if rising_edge(clk) then
			z_alt <= z_neu;
			case z_alt is
				when idle => 	if(btn_s /= btn_old) then		-- Wechseln in "count" und starten des Zaehlers, sobald sich btn_s aendert
										btn_output <= btn_s;
										z_neu <= count;
										timer_on <= '1';
									end if;
				when count =>	if(peak = '1') then				-- Wechseln zurueck in "idle", sobald der Zaehler eine eins an "peak" anlegt (3ms vergangen)
										z_neu <= idle;
										timer_on <= '0';
									end if;
			end case;
		end if;
	end process;
	
	btnout <= btn_output;
end prell;
