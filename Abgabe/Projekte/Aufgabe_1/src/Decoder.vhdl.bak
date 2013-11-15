--
-- Copyright (c) 20013
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
-- Entity: Example
-- Author(s): Martin Zabel, Matthias Haesing
-- 
-- Simple example for the Terasic DE0 board.
--
-- Revision:    $Revision: 1.1 $
-- Last change: $Date: 2013-10-09 12:49:38 $
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Example is
  
  port (
    clk  : in  std_logic;
    btn  : in  std_logic_vector(2 downto 1);
    sw   : in  std_logic_vector(9 downto 0);
    ld   : out std_logic_vector(9 downto 0));

end Example;

architecture rtl of Example is

  -- Internal Control Signals (high active)
  signal rst  : std_logic;              -- Reset
  signal load : std_logic;              -- Load Register

  -- Register with Power-Up Value
  signal reg : std_logic_vector(9 downto 0) := "0101010101";
  
begin  -- rtl

  -----------------------------------------------------------------------------
  -- Assignment of Internal Control Signals
  -- Also synchronizes external buttons to clock "clk".
  -----------------------------------------------------------------------------
  process (clk)
  begin  -- process
    if rising_edge(clk) then
      rst  <= not btn(1); -- Control Signals high active
      load <= not btn(2);
    end if;
  end process;

  -----------------------------------------------------------------------------
  -- Logic
  -- - Load register with all zero when pressing the reset button.
  -- - Load register with state of switches pressing the load button.
  -----------------------------------------------------------------------------
  process (clk)
  begin  -- process
    if rising_edge(clk) then
      if rst = '1' then
        reg <= (others => '0');
      elsif load = '1' then
        reg <= sw;
      end if;
    end if;
  end process;

  -----------------------------------------------------------------------------
  -- Outputs
  -----------------------------------------------------------------------------
  ld <= reg;
end rtl;
