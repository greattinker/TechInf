library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity LED_tb is

end LED_tb;

-------------------------------------------------------------------------------

architecture behavioral of LED_tb is

  component LED
    port (
     	clk : in std_logic;
		btn : in std_logic;
		ld : out std_logic);
  end component;

  -- Clock
  signal clk : std_logic := '0';
  
  -- Indicates end of simulation
  signal finished : std_logic := '0';
  
  -- Further Ports of Component
  signal btn : std_logic := '0';
  signal ld  : std_logic;


begin

  -- Component to Test
  UUT: LED
    port map (
      clk => clk,
      btn => btn,
      ld  => ld);

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
    btn <= '1';

    -- Wait for falling clock edge
	
    wait until falling_edge(clk);
	 wait for 3 ms;
    wait for 1 ms;
    btn <= '0';
    wait for 1 ms;
    btn <= '1';
    wait for 2 ms;
    btn <= '0';
    wait for 1 ms;
    btn <= '1';
    wait for 1 ms;
    btn <= '0';
    wait for 10 ms;
    btn <= '0';
    wait for 70 ms;
    btn <= '1';
    wait for 7 ms;


	 
    finished <= '1';
    wait; -- forever
  end process Stimuli;

end behavioral;
