LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY PI_Controller IS
  PORT ( error : IN INTEGER ;
         control : OUT INTEGER;
         clk : in std_logic;
         reset : in std_logic) ;
END PI_Controller;

architecture Behavioral of PI_Controller is
  signal u1: std_logic_vector(15 downto 0);
  constant k1: std_logic_vector( 6 downto 0 ) := "1101011";
begin
  process( clk)
  begin
  end process;
end Behavioral;
