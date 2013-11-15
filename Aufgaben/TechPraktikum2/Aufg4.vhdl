
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- Kopplung wäre eine synchrone Kopplung synchroner Teilschaltungen mit einem Taktsignal
-- mit einer seriellen Anordnung und Kommunikation über Ausgänge (Ausgang des Entprellautomaten = Eingang des LED Automaten)

-- #########################################
-- ######  AUTOMAT ZUR LED STEUERUNG  ######

entity AutoLED is
  
  port (
		clk : in std_logic;
		btn : in std_logic;
		ld  : out  std_logic
		);
		
end AutoLED;

architecture led1 of AutoLED is 
	
	type zustaende is (aus, an);  -- 2 Zustände
	attribute enum_encoding : string;
	attribute enum_encoding of zustaende : type is "1 0"; -- an = 0, aus = 1 (low aktive LED)
	signal z_alt, z_neu : zustaende;

begin

	process(clk)  -- neuen Zustand übernehmen
	begin
		if rising_edge(clk) then
			z_alt <= z_neu;
		end if;
	end process;

	process(z_alt, btn)  -- neuen Zustand + Ausgabe berechnen
	begin
		case z_alt is
			when aus => z_neu <= an;
						ld <= an; -- oder ld <= 0, bin mir nicht sicher, ob es durch die kodierung oben so funktioniert
			when an	 => z_neu <= aus;
						ld <= aus;
			when others => null;
		end case;
	end process;
	
end led1;


-- #########################################
-- #########  AUTOMAT ENTPRELLUNG  #########

entity Entprellung is
  
  port (
		clk : in std_logic;
		btn : in std_logic;
		btnout  : out  std_logic
		);
		
end Entprellung;

architecture prel1 of Entprellung is 
	
	type zustaende is (idle, count);  -- 2 Zustände, idle = button betätigen möglich, count = 3ms warten (bis 150.000 hochzählen bei 50Mhz)
	attribute enum_encoding : string;
	attribute enum_encoding of zustaende : type is "1 0";
	signal z_alt, z_neu : zustaende;
	signal counter : std_logic_vector(17 downto 0);

begin

	process(clk)
	begin
		if rising_edge(clk) then -- neuen Zustand übernehmen + counter hochzählen falls in count
			z_alt <= z_neu;
			if(z_neu = count)
				counter <= counter + 1;
			end if;
		end if;
	end process;

	process(z_alt, btn) -- neuen Zustand + Ausgabe berechnen
	begin
		case z_alt is
			when idle => 	z_neu <= count;
							btnout <= btn;
							counter <= '000000000000000000';
			when count => 	if counter = '100100100111110000'
								z_neu <= idle;
							end if;
			when others => null;
		end case;
	end process;
	
end prell;


-- #########################################
