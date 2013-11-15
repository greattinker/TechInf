
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity Multiplexer is
  
	port (
		clk : in std_logic;
		reset : in std_logic;
		seg1  : out std_logic_vector(7 downto 0);
		seg2  : out std_logic_vector(7 downto 0);
		seg3  : out std_logic_vector(7 downto 0);
		seg4  : out std_logic_vector(7 downto 0)
		);
		
end Multiplexer;

architecture multiplexer1 of Multiplexer is
	
	signal state : std_logic := '0';
	
	signal code1 : std_logic_vector(2 downto 0);
	signal decoded1 : std_logic_vector(7 downto 0);
	
	signal code2 : std_logic_vector(2 downto 0);
	signal decoded2 : std_logic_vector(7 downto 0);
	
	signal code3 : std_logic_vector(2 downto 0);
	signal decoded3 : std_logic_vector(7 downto 0);
	
	signal code4 : std_logic_vector(2 downto 0);
	signal decoded4 : std_logic_vector(7 downto 0);
	
	signal zaehler_state : std_logic :='0';
	signal zaehler_reset : std_logic := '0';
	
	signal old_all_seg : std_logic_vector(26 downto 0)
		:= "100100100100000001101010011";
	signal new_all_seg : std_logic_vector(26 downto 0)
		:= "100100100100000001101010011";
	
	component Decoder
		port (
			clk : in std_logic;
			code : in std_logic_vector(2 downto 0);
			decoded : out std_logic_vector(7 downto 0)
			);
	end component;
	
	component Zaehler
		port (
			clk : in std_logic;
			count_steps : in unsigned(31 downto 0);
			counter_reset : in std_logic;
			counter_state : out std_logic
			);
	end component;
	
begin 
	zaehler_semisecond : Zaehler PORT MAP (
								clk => clk, 
								count_steps => to_unsigned(25000, 32), 
								--count_steps => to_unsigned(25000000, 32), 
								counter_state => zaehler_state, 
								counter_reset => zaehler_reset);
	 decoder_1 : Decoder PORT MAP (
								clk => clk, 
								code =>code1,
								decoded =>decoded1);
	 decoder_2 : Decoder PORT MAP (
								clk => clk, 
								code =>code2,
								decoded =>decoded2);
	 decoder_3 : Decoder PORT MAP (
								clk => clk, 
								code =>code3,
								decoded =>decoded3);
	 decoder_4 : Decoder PORT MAP (
								clk => clk, 
								code =>code4,
								decoded =>decoded4);
	
	process(clk)
	begin
		if rising_edge(clk) then
			state <= zaehler_state;
			if reset = '1' then
				new_all_seg <= "100100100100000001101010011";
			end if;
			old_all_seg <= new_all_seg;
			
			if state = '0' then
				-- ausgabe anzeige
				code1 <= old_all_seg(26 downto 24);
				code2 <= old_all_seg(23 downto 21);
				code3 <= old_all_seg(20 downto 18);
				code4 <= old_all_seg(17 downto 15);
				
				-- verschiebe nach links
				new_all_seg <= old_all_seg(23 downto 0) & old_all_seg(26) & old_all_seg(25) & old_all_seg(24);
				
				--zaehler aktivieren
				zaehler_reset <= '1';
			else
				if zaehler_reset = '1' then
					zaehler_reset <= '0';
				end if;
			end if;
		end if;
	end process;
	
	
	
	
	seg1 <= decoded1;
	seg2 <= decoded2;
	seg3 <= decoded3;
	seg4 <= decoded4;
end multiplexer1;