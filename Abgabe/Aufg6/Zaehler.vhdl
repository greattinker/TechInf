library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Zaehler is
  
  port (
		clk : in std_logic;
		zaehler_time : in unsigned(31 downto 0); -- steuert wieviele Takte der Zaehler zaehlen soll, bis er einen peak ausgeben soll. (Zaehler zaehlt mod zaehler_time)
		zaehler_on : in std_logic; -- Steuersignal, bei 1 laeuft der Zaehler, bei 0 wird der Zaehler gestoppt und zurueckgesetzt
		peak_out  : out  std_logic -- gibt fuer einen Takt eine eins aus, sobald der durch "zaehler_time" angelegte Wert erreicht ist
		);
		
end Zaehler;

architecture timer of Zaehler is

	signal counter : unsigned(31 downto 0) := (others => '0'); -- Zaehlsignal
	signal peak : std_logic := '0'; -- Signal, dass an den Ausgang "peak_out" gegeben wird

begin

	--------------------------------------------------------------------------------------
	-- Liegt "zaehler_on" auf eins, wird das Signal "counter" inkrementiert.
	-- Wird der durch "zaehler_time" angegebene Maximalwert erreicht wird fuer einen Takt
	-- eine 1 an das Signal "peak" ausgegeben und "counter" auf 0 zurueckgesetzt
	-- Liegt "zaehler_on" auf null, wird "counter" auf 0 gesetzt und nicht hochgezaehlt.
	--------------------------------------------------------------------------------------
	process(clk)
	begin
		if rising_edge(clk) then
			peak <= '0';
			if(zaehler_on = '1') then
				if(counter = zaehler_time - 1) then
					counter <= (others => '0');
					peak <= '1';
				else
					counter <= counter + 1;
				end if;
			else
				counter <= (others => '0');
			end if;
		end if;
	end process;
	
	peak_out <= peak;

end timer;
