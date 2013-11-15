
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

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
			btn_in : in std_logic;
			btn_out  : out  std_logic
			);
	end component;
	
	signal led_sig : std_logic := '0';
	signal btn_led : std_logic;
	signal btn_out : std_logic;
	signal btn_out_d : std_logic;
	signal btn_in_d :std_logic := '0';
	signal btn_in :std_logic := '0';
	
	begin
	custom_entpreller : Entprellung PORT MAP (
										clk => clk, 
										btn_in => btn_in, 
										btn_out => btn_out);
	process (btn_led )
	begin
			if btn_led = '0' then
				led_sig <= not led_sig;
			end if;
	end process;	
	
	process (clk)
	begin
		if rising_edge(clk) then
			btn_in_d <= btn;
		end if;
	end process;
	
	process (clk)
	begin
		if rising_edge(clk) then
			btn_in <= btn_in_d;
		end if;
	end process;
	
	process (clk)
	begin
		if rising_edge(clk) then
			btn_out_d <= btn_out;
		end if;
	end process;
	
	process (clk)
	begin
		if rising_edge(clk) then
			btn_led <= btn_out_d;
		end if;
	end process;
	
	ld <= not led_sig;
end led1;
