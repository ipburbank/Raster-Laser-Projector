--library declaration for the module.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity X_Axis_Subsystem is
  port(
    clk_50            : in  std_logic;  -- 50MHZ_clock
    motor_ctrl_signal : out std_logic;  -- 
    feedback_clk      : in  std_logic   -- 
  );
end X_Axis_Subsystem;

architecture Behavioral of X_Axis_Subsystem is  --architecture of the circuit.
signal phase_correction : signed(1 downto 0);
begin  --"begin" statement for architecture.
  detect : entity work.PFD PORT MAP (correction => phase_correction, ref_clk => '1', feedback_clk => feedback_clk);
end Behavioral;
