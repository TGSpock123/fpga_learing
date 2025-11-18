----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2025/11/18 10:32:04
-- Design Name: 
-- Module Name: vhdl_quick_demo_silly - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;

entity vhdl_quick_demo_silly is 
  port 
  (
    in_0: in STD_LOGIC;
    in_1: in STD_LOGIC;
    in_2: in STD_LOGIC;
    out_0: out STD_LOGIC
  );
end;

architecture synth of vhdl_quick_demo_silly is
begin
  out_0 <=  (not in_0 and not in_1 and not in_2) or
            (in_0 and not in_1 and not in_2) or 
            (in_0 and not in_1 and in_2);
end;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
