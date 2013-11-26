library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Multiplex is
  
  port (
		clk : in std_logic;
		rst : in std_logic;
		led_out  : out std_logic_vector(11 downto 0) -- 12bit breiter Ausgang (3bit je Zeichen)
		);
		
end Multiplex;

-- 000: _
-- 001: H
-- 010: A
-- 011: L
-- 100: O

architecture multi of Multiplex is 
--                                                  _  _  _  _  H  A  L  L  O  _  _  _
	signal tex : std_logic_vector(35 downto 0) := "000000000000001010011011100000000000"; -- kompletter Schriftzug der einmal durchlaufen wird
	signal counter : unsigned(24 downto 0) := (others => '0'); -- Zaehlersignal (mod 25.000.000)
	signal mul : unsigned(3 downto 0); -- Steuersignal Multiplexer (mod 10) : 9 moegliche 12bit breite Teilworte des kompletten Schriftzugs

begin

	------------------------------------------------------------------
	-- Inkrementieren des Steuersignals "mul" alle 25.000.000 Takte
	------------------------------------------------------------------
	process(clk)
	begin
		if rising_edge(clk) then
			if(rst = '1') then
				counter <= (others => '0');
				mul <= (others => '0');
			elsif(counter = "1011111010111100000111111") then
				counter <= (others => '0');
				mul <= mul + 1;
				if(mul = "1000") then
					mul <= "0000";
				end if;
			else
				counter <= counter + 1;
			end if;
		end if;
	end process;
	
	------------------------------------------------------------------------------------------------------------
	-- Je nach Steuersignal "mul" wird ein anderes 12bit breites Teilwort des kompletten Schriftzugs ausgegeben
	------------------------------------------------------------------------------------------------------------
	with mul select
		led_out <= 	tex(35 downto 24) when "0000",
						tex(32 downto 21) when "0001",
						tex(29 downto 18) when "0010",
						tex(26 downto 15) when "0011",
						tex(23 downto 12) when "0100",
						tex(20 downto 9) when "0101",
						tex(17 downto 6) when "0110",
						tex(14 downto 3) when "0111",
						tex(11 downto 0) when "1000",
						(others => '0') when others;
	
end multi;