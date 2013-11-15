library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity Multiplexer_tb is

end Multiplexer_tb;

-------------------------------------------------------------------------------

architecture behavioral of Multiplexer_tb is

  component Multiplexer
    port (
		clk : in std_logic;
		reset : in std_logic;
		seg1  : out std_logic_vector(7 downto 0);
		seg2  : out std_logic_vector(7 downto 0);
		seg3  : out std_logic_vector(7 downto 0);
		seg4  : out std_logic_vector(7 downto 0)
		);
  end component;

  -- Clock
  signal clk : std_logic := '0';
  
  -- Indicates end of simulation
  signal finished : std_logic := '0';
  
  -- Further Ports of Component
  signal reset : std_logic := '0';
  signal seg1  : std_logic_vector(7 downto 0);
  signal seg2  : std_logic_vector(7 downto 0);
  signal seg3  : std_logic_vector(7 downto 0);
  signal seg4  : std_logic_vector(7 downto 0);


begin

  -- Component to Test
  UUT: Multiplexer
    port map (
      clk => clk,
      reset => reset,
      seg1  => seg1,
      seg2  => seg2,
      seg3  => seg3,
      seg4  => seg4);

  -- Generate Clock for 50 MHz
  clk <= not clk after 10 ns when finished ='0' else
			clk;

  -- Stimuli
  Stimuli: process
  begin
    -- For a better reading of the simulation waveform, new inputs are assigned
    -- at the falling clock edge. The UUT can then capture the new inputs with
    -- the following rising edge.
    --
    -- Outputs of the UUT are visible after the rising edge.
    -- But keep in mind, the delay of the control signals inside the UUT.

    -- Input assignments at system startup
    reset <= '0';

    -- Wait for falling clock edge
	
    wait until falling_edge(clk);
    wait for 20 ms;
   	reset <= '1';
    wait for 1 ms;
    reset <= '0';
    wait for 20 ms;
    


	 
    finished <= '1';
    wait; -- forever
  end process Stimuli;

end behavioral;
