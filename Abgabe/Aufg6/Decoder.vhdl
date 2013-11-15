library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- Decoder bekommt einen 3bit breiten Code für ein Zeichen und gibt den 8bit breiten Code für die 7-Segment Anzeige des Zeichens aus

entity Decoder is 

	port ( 
		clk : in std_logic;
		code : in std_logic_vector(3 downto 0);
		decoded : out std_logic_vector(7 downto 0));
end Decoder;

architecture decoder1 of Decoder is 
		
	signal decoded_out : std_logic_vector(7 downto 0) := (others => '0');
	
	begin
	
	process (clk)
	begin
		if rising_edge(clk) then
			case code is	
				 when "0000" => decoded_out <= "00000011";  	-- 0
				 when "0001" => decoded_out <= "10011111";	-- 1
				 when "0010" => decoded_out <= "00100101";  	-- 2
				 when "0011" => decoded_out <= "00001101";  	-- 3
				 when "0100" => decoded_out <= "10011001";  	-- 4
				 when "0101" => decoded_out <= "01001001";  	-- 5
				 when "0110" => decoded_out <= "01000001";	-- 6
				 when "0111" => decoded_out <= "00011111";	-- 7
				 when "1000" => decoded_out <= "00000001";	-- 8
				 when "1001" => decoded_out <= "00001001";	-- 9
				 when others => decoded_out <= "11111111";	-- error
			end case;
		end if;
	end process;
	
	decoded <= decoded_out;
	
end decoder1;
