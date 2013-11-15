
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Entprellung is
  
  port (
		clk : in std_logic;
		btn : in std_logic;
		btnout  : out  std_logic
		);
		
end Entprellung;

architecture entprel1 of Entprellung is
	type zustand is (idle, locked);
	attribute enum_encoding : string;
	attribute enum_encoding of zustaende : type is "1 0";
	signal z_alt, z_neu : zustand;
	signal counter : std_logic_vector(17 downto 0);
begin 
	process(clk)
	begin
		if rising_edge(clk) then
			z_alt <= z_neu;
			if z_neu = locked then
				counter = counter + 1;
			end if;
		end if;
	end process;

	process (z_alt, btn)
	begin
		case z_alt is
			when idle => 	if rising_edge(btn) then
								z_neu <= locked;
								counter <= '000000000000000000';
								btnout <= '1';
							else if falling_edge(btn) then
								z_neu <= locked;
								counter <= '000000000000000000';
								btnout <= '0';
							end if;
			when locked => 	if counter = '100100100111110000' then
								z_neu <= idle;
							end if;
			when others => 	null;
		end case;
	end process;
end entprel1;

entity LED is 

	port ( 
		clk : in std_logic;
		btn : in std_logic;
		ld : out std_logic
		);
end LED;

architecture led1 of LED is 

	type zustand is (an, aus);
	attribute enum_encoding : string;
	attribute enum_encoding of zustaende : type is "0 1"; --low-aktiv
	signal z_alt, z_neu : zustand;
	
	process (clk)
	begin
		if rising_edge(clk) then
			z_alt <= z_neu;
		end if;
	end process;
	
	process(btn)
	begin
		z_neu <= btn;
	end process;
