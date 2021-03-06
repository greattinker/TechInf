library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity Stoppuhr_tb is

end Stoppuhr_tb;

-------------------------------------------------------------------------------

architecture behavioral of Stoppuhr_tb is

  component Stoppuhr
    port (
		clk : in std_logic;
		rst : in std_logic;
		onoff : in std_logic;
		seg1 : out std_logic_vector(7 downto 0);
		seg2 : out std_logic_vector(7 downto 0);
		seg3 : out std_logic_vector(7 downto 0);
		seg4 : out std_logic_vector(7 downto 0)
		);
  end component;

  -- Clock
  signal clk : std_logic := '0';
  
  -- Indicates end of simulation
  signal finished : std_logic := '0';
  signal onoff : std_logic := '1';
  
  -- Further Ports of Component
  signal rst : std_logic := '0';
  signal seg1  : std_logic_vector(7 downto 0);
  signal seg2  : std_logic_vector(7 downto 0);
  signal seg3  : std_logic_vector(7 downto 0);
  signal seg4  : std_logic_vector(7 downto 0);


begin

  -- Component to Test
  UUT: Stoppuhr
    port map (
      clk => clk,
      rst => rst,
		onoff => onoff,
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
    rst <= '0';
	 

    -- Wait for falling clock edge
	
    wait until falling_edge(clk);
   	onoff <= '0';
    wait until falling_edge(clk);
     onoff <= '1';
    wait for 20 sec;
    


	 
    finished <= '1';
    wait; -- forever
  end process Stimuli;

end behavioral;