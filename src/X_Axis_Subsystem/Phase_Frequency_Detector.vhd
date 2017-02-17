--library declaration for the module.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

LIBRARY altera;
USE altera.altera_primitives_components.all;

entity PFD is
  port(
    correction   : out signed(1 downto 0);  -- Data output
    ref_clk      : in  std_logic;           -- Clock input
    feedback_clk : in  std_logic            -- Asynchronous clear input
  );
end PFD;

architecture Detect of PFD is      --architecture of the circuit.
  signal up, down, up_and_down : STD_LOGIC;
begin  --"begin" statement for architecture.
  up_ff   : DFF PORT MAP(q => up,   clk => ref_clk,      clrn => up_and_down, d => '1', prn => '0');
  down_ff : DFF PORT MAP(q => down, clk => feedback_clk, clrn => up_and_down, d => '1', prn => '0');

  up_and_down <= up and down;

  correction <= to_signed(+1, correction'length) when up   and not down else
                to_signed(-1, correction'length) when down and not up   else
                to_signed(0, correction'length);

end Detect;
