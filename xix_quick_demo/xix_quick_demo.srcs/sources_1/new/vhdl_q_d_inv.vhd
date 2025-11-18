----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2025/11/18 17:40:23
-- Design Name: 
-- Module Name: vhdl_q_d_inv - Behavioral
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

entity inv is
  port 
  (
    in_0: in STD_LOGIC_VECTOR(3 downto 0);
    out_0: out STD_LOGIC_VECTOR(3 downto 0)
  );
end;

architecture synth of vhdl_q_d_inv is
begin
  out_0 <= not in_0;
end;
