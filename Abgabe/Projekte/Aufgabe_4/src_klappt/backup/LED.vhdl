
library ieee;
use ieee.std_logic_1164.all;
use Ieee.std_logic_unsigned.all;

entity LED is 

	port ( 
		clk : in std_logic;
		btn : in std_logic;
		ld : out std_logic
		);
end LED;

architecture led1 of LED is 
	
	component Entprellung
			port (
				clk : in std_logic;
				btn : in std_logic;
				btnout  : out  std_logic
				);
	end component;
	
	signal btnsig : std_logic;
	
	begin
	custom_entpreller : Entprellung PORT MAP (clk => clk, btn => btn, btnout => btnsig);
	
	process (clk)
	begin
		if rising_edge(clk) then
			led <= btnsig;
		end if;
	end process;
end led1;
