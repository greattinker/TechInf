--
-- Copyright (c) 2013
-- Technische Universitaet Dresden, Dresden, Germany
-- Faculty of Computer Science
-- Institute for Computer Engineering
-- Chair for VLSI-Design, Diagnostics and Architecture
-- 
-- For internal educational use only.
-- The distribution of source code or generated files
-- is prohibited.
--

--
-- Entity: Example_tb
-- Author(s): Martin Zabel
-- 
-- Testbench for Simple Example.
--
-- Revision:    $Revision: 1.1 $
-- Last change: $Date: 2013-10-09 12:49:38 $
--

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity Example_tb is

end Example_tb;

-------------------------------------------------------------------------------

architecture behavioral of Example_tb is

  component Example
    port (
      clk : in  std_logic;
      btn : in  std_logic_vector(2 downto 1);
      sw  : in  std_logic_vector(9 downto 0);
      ld  : out std_logic_vector(9 downto 0));
  end component;

  -- Clock
  signal clk : std_logic := '0';
  
  -- Indicates end of simulation
  signal finished : std_logic := '0';
  
  -- Further Ports of Component
  signal btn : std_logic_vector(2 downto 1);
  signal sw  : std_logic_vector(9 downto 0);
  signal ld  : std_logic_vector(9 downto 0);


begin

  -- Component to Test
  UUT: Example
    port map (
      clk => clk,
      btn => btn,
      sw  => sw,
      ld  => ld);

  -- Generate Clock for 2 MHz
  clk <= not clk after 250 ns when finished ='0' else
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
    btn <= (others => '1');
    sw  <= (others => '1');

    -- Wait for falling clock edge
    wait until falling_edge(clk);

    -- New input: reset
    btn <= "10";
    wait until falling_edge(clk);

    -- New input: no action
    btn <= "11";
    wait until falling_edge(clk);

    -- New input: load register
    btn <= "01";
    sw  <= "1111000000";
    wait until falling_edge(clk);
    
    -- New input: no action
    btn <= "11";
    wait until falling_edge(clk);

    -- New input: load register
    btn <= "01";
    sw  <= "1100110000";
    wait until falling_edge(clk);
    
    -- New input: reset
    btn <= "10";
    wait until falling_edge(clk);

    -- The end
    btn <= "11";
    wait until falling_edge(clk);
	 
    finished <= '1';
    wait; -- forever
  end process Stimuli;

end behavioral;
