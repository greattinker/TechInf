
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Decoder is 

	port ( 
		clk : in std_logic;
		code : in std_logic_vector(2 downto 0);
		decoded : out std_logic_vector(7 downto 0));
end Decoder;

architecture decoder1 of Decoder is 
		
	signal code_in_d : std_logic_vector(2 downto 0) := "100";
	signal code_in : std_logic_vector(2 downto 0) := "100";
	signal decoded_out : std_logic_vector(7 downto 0) := (others => '1');
	
	begin
	
	process (clk)
	begin
		if rising_edge(clk) then
			case code_in is	
				 when "000" => decoded_out <= "10010001";
				 when "001" => decoded_out <= "11100011";
				 when "010" => decoded_out <= "10010001";
				 when "011" => decoded_out <= "00000011";
				 when others => decoded_out <= "11111111";
			end case;
		end if;
	end process;
	
	process (clk)
	begin
		if rising_edge(clk) then
			code_in_d <= code;
		end if;
	end process;
	
	process (clk)
	begin
		if rising_edge(clk) then
			code_in <= code_in_d;
		end if;
	end process;
	
	decoded <= decoded_out;
end decoder1;
