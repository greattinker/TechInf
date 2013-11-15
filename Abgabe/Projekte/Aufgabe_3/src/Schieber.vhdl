library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use Ieee.std_logic_unsigned.all;

entity Schieber is
  
  port (
		clk : in std_logic;
		rst : in std_logic;
		ld  : out  std_logic_vector(9 downto 0)
		);
		

end Schieber;


architecture schieb1 of Schieber is 
	component zaehler
		port (
			clk : in std_logic;
			clk_out : out std_logic
			);
	end component;
	signal state : std_logic_vector(9 downto 0) := "0000000001";
	signal shift : std_logic;
	
begin
	custom_clk : zaehler PORT MAP (clk => clk, clk_out => shift); 
	
	process(clk)
	begin
	
		if rising_edge(clk) then
			if rst = '1' then
				state <= "0000000001";
			elsif shift = '1' then
				state <= state(8 downto 0)&state(9);
			end if;	
		end if;	
	end process;
	
	ld <= state;
		
end schieb1;
