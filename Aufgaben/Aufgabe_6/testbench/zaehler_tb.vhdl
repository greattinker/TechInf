library ieee;
use ieee.std_logic_1164.all;
use Ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
-------------------------------------------------------------------------------

entity zaehler_tb is

end zaehler_tb;

-------------------------------------------------------------------------------

architecture behavioral of zaehler_tb is

  component zaehler
    port (
     	clk : in std_logic;
		count_steps : in unsigned(31 downto 0);
		counter_reset : in std_logic;
		counter_state : out std_logic);
  end component;

  -- Clock
  signal clk : std_logic := '0';
  
  -- Indicates end of simulation
  signal finished : std_logic := '0';
  
  -- Further Ports of Component
  signal count_steps : unsigned(31 downto 0) := to_unsigned(1000, 32);
  signal counter_state  : std_logic;
  signal counter_reset  : std_logic := '0';


begin

  -- Component to Test
  UUT: zaehler
    port map (
      clk => clk,
      counter_reset => counter_reset,
      count_steps => count_steps,
      counter_state => counter_state);

  -- Generate Clock for 50 MHz
  clk <= not clk after 20 ns when finished ='0' else
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
    counter_reset <= '0';

    -- Wait for falling clock edge
    wait until falling_edge(clk);
    wait until falling_edge(clk);

    wait for 2 ms;
    counter_reset <= '1';
    wait for 4 ms;
    counter_reset <= '0';
    wait for 2 ms;
    counter_reset <= '1';
    wait for 7 ms;
    counter_reset <= '0';


	 
    finished <= '1';
    wait; -- forever
  end process Stimuli;

end behavioral;
