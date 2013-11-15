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

entity Schieber_tb is

end Schieber_tb;

-------------------------------------------------------------------------------

architecture behavioral of Schieber_tb is

  component Schieber
    port (
      clk : in std_logic;
		rst : in std_logic;
		ld  : out  std_logic_vector(9 downto 0));
  end component;

  -- Clock
  signal clk : std_logic := '0';
  
  -- Indicates end of simulation
  signal finished : std_logic := '0';
  
  -- Further Ports of Component
  signal rst : std_logic := '0';
  signal ld  : std_logic_vector(9 downto 0);


begin

  -- Component to Test
  UUT: Schieber
    port map (
      clk => clk,
      rst => rst,
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
    rst <= '1';

    -- Wait for falling clock edge
    wait until falling_edge(clk);
    wait until falling_edge(clk);

    -- New input: reset
    rst <= '0';
    wait for 5 ms;


	 
    finished <= '1';
    wait; -- forever
  end process Stimuli;

end behavioral;
