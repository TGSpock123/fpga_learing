----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2025/11/28 17:08:52
-- Design Name: 
-- Module Name: demo_and_eight - synth
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

entity demo_and_eight is
  port
  (
    in_0  : in STD_LOGIC_VECTOR(7 downto 0);
    out_0 : out STD_LOGIC
  );
end;

architecture synth of demo_and_eight is
begin
  out_0 <= and in_0;
end architecture;
