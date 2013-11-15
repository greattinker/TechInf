--
-- Copyright (c) 20013
-- Technische Universitaet Dresden, Dresden, Germany
-- Faculty of Computer Science
-- Institute for Computer Engineering
-- Chair for VLSI-Design, Diagnostics and Architecture
-- 
-- For internal educational use only.
-- The distribution of source code or generated files
-- is prohibited.
--

--
-- Entity: Example
-- Author(s): Martin Zabel, Matthias Haesing
-- 
-- Simple example for the Terasic DE0 board.
--
-- Revision:    $Revision: 1.1 $
-- Last change: $Date: 2013-10-09 12:49:38 $
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Multiplex is
  
  port (
		clk : in std_logic;
		rst : in std_logic;
		led_out  : out std_logic_vector(11 downto 0)
		);
		
end Multiplex;

-- 000: _
--	001: H
-- 010: A
-- 011: L
-- 100: O

architecture multi of Multiplex is 
--                                                 _  _  _  _  H  A  L  L  O  _  _  _
	signal tex : std_logic_vector(35 downto 0) := "000000000000001010011011100000000000";
	signal counter : unsigned(24 downto 0) := (others => '0');
	signal mul : unsigned(3 downto 0);

begin

	process(clk)
	begin
		if rising_edge(clk) then
			if(rst = '1') then
				counter <= (others => '0');
				mul <= (others => '0');
			elsif(counter = "1011111010111100000111111") then
		--	elsif(counter = "0000000000001100000111111") then
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