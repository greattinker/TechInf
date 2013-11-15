library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity EntprellAutomat_tb is

end EntprellAutomat_tb;

-------------------------------------------------------------------------------

architecture behavioral of EntprellAutomat_tb is

  component EntprellAutomat
    port (
		clk : in std_logic;
		btn : in std_logic;
		btnout  : out  std_logic
		);
  end component;

  -- Clock
  signal clk : std_logic := '0';
  
  -- Indicates end of simulation
  signal finished : std_logic := '0';
  signal btn : std_logic := '1';
  
  -- Further Ports of Component
  signal btnout : std_logic := '0';


begin

  -- Component to Test
  UUT: EntprellAutomat
    port map (
      clk => clk,
      btn => btn,
		btnout => btnout);

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


	 

    -- Wait for falling clock edge
	
    wait until falling_edge(clk);
   	btn <= '0';
    wait until falling_edge(clk);
     btn <= '1';
    wait for 20 sec;
    


	 
    finished <= '1';
    wait; -- forever
  end process Stimuli;

end behavioral;