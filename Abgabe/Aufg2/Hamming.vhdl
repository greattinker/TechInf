library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Hamming is
  
  port (
    sw1   : in  std_logic_vector(3 downto 0); -- Erstes 4bit Wort
    sw2   : in  std_logic_vector(3 downto 0); -- Zweites 4bit Wort
    cc   : out std_logic_vector(7 downto 0)); -- 7 Segment Ausgabe

end Hamming;

architecture ham1 of Hamming is 
	signal xo : std_logic_vector(3 downto 0);
begin
	
	xo <= sw1 xor sw2; -- Jede Stelle nur 1, wenn sich die Woerter an der Stelle unterscheiden
	
	-- Je nach Anzahl der Einsen im Signal "xo" wird die Ausgabe 0-4 ausgegeben.
	with xo select
		cc <= "00000011" when "0000",
				"10011111" when "0001",
				"10011111" when "0010",
				"00100101" when "0011",
				"10011111" when "0100",
				"00100101" when "0101",
				"00100101" when "0110",
				"00001101" when "0111",
				"10011111" when "1000",
				"00100101" when "1001",
				"00100101" when "1010",
				"00001101" when "1011",
				"00100101" when "1100",
				"00001101" when "1101",
				"00001101" when "1110",
				"10011001" when "1111";
end ham1;
