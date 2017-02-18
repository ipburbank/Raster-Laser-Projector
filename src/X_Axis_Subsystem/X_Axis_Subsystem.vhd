--library declaration for the module.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity X_Axis_Subsystem is
  port(
    clk_50            : in  std_logic;  -- 50MHZ_clock
	 reset             : in  std_logic;
    motor_ctrl_signal : out std_logic;  -- 
    feedback_clk      : in  std_logic   -- 
  );
end X_Axis_Subsystem;

architecture Behavioral of X_Axis_Subsystem is  --architecture of the circuit.
signal phase_correction : signed(1 downto 0);

-- signals for PLL
signal pll_configupdate_sig, pll_areset_sig, pll_scandataout_sig, pll_scandone_sig, pll_scanclk_sig, pll_scandata_sig, pll_scanclkena_sig : std_logic;
signal reconfig_busy : std_logic;

begin  --"begin" statement for architecture.
  detect : entity work.PFD PORT MAP (correction => phase_correction, ref_clk => '1', feedback_clk => feedback_clk);

  PLL_inst : entity work.PLL PORT MAP (
                areset       => pll_areset_sig,
                configupdate => pll_configupdate_sig,
                inclk0       => clk_50,
                scanclk      => pll_scanclk_sig,
                scanclkena   => pll_scanclkena_sig,
                scandata     => pll_scandata_sig,
                c0           => motor_ctrl_signal,
                --locked       => (),
                scandataout  => pll_scandataout_sig,
                scandone     => pll_scandone_sig
        );


        PLL_RECONFIG_inst : entity work.PLL_RECONFIG PORT MAP (
                clock            => clk_50,
                counter_param    => "000",
                counter_type     => "0000",
                data_in          => "000000000",
                pll_scandataout  => pll_scandataout_sig, -- pll_scandataout port must be connected to  the  scandataout port of the PLL.
                reconfig         => '0',
                reset            => reset,
                write_param      => '0', -- write data_in to param defined by counter_type and counter_param
                busy             => reconfig_busy,
                pll_areset       => pll_areset_sig, -- The  pll_areset port must be connected to the areset port of the ALTPLL 
                pll_configupdate => pll_configupdate_sig, -- NOT REQUIRED HOW IS THIS DIFFERENT THAN WRITE_PARAM? When asserted, the  pll_configupdate port loads selected data to PLL configuration latches. 
                pll_scanclk      => pll_scanclk_sig, -- Drives the  scanclk port on the PLL to be reconfigured.
					 pll_scanclkena   => pll_scanclkena_sig, -- This acts as a clock enable for the  scanclk port on the PLL to be reconfigured.
                pll_scandata     => pll_scandata_sig, -- Drives the  scandata port on the PLL to be reconfigured.
					 pll_scandone     => '0',
					 read_param       => '0'
        );

end Behavioral;
