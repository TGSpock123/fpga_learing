----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2026/01/21 11:14:17
-- Design Name: 
-- Module Name: demo_mux_four - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_4 is
  port(
    in_0, in_1, in_2, in_3: in std_logic_vector(3 downto 0);
    condition_0: in std_logic_vector(1 downto 0);
    out_0: out std_logic_vector(3 downto 0)
  );
end;

architecture synth1 of mux_4 is
begin
  out_0 <=  in_0 when condition_0 = "00" else
            in_1 when condition_0 = "01" else
            in_2 when condition_0 = "10" else
            in_3;
end;
