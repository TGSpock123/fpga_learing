----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2025/12/01 16:37:39
-- Design Name: 
-- Module Name: demo_mux_two - synth
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


-- library IEEE;
-- use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity demo_mux_two is port 
(
  in_0      : in  STD_LOGIC_VECTOR(3 downto 0);
  in_1      : in  STD_LOGIC_VECTOR(3 downto 0);
  switch_0  : in  STD_LOGIC                   ;
  out_0     : out STD_LOGIC_VECTOR(3 downto 0)
);
end demo_mux_two;

architecture synth of demo_mux_two is begin

  out_0 <= in_1 when switch_0 else in_0;

end synth;
