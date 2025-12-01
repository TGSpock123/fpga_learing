----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2025/11/28 16:09:15
-- Design Name: 
-- Module Name: demo_inv - Behavioral
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

entity demo_inv is
  port 
  (
    in_0  : in  STD_LOGIC_VECTOR(3 downto 0);
    out_0 : out STD_LOGIC_VECTOR(3 downto 0)
  );
end;

architecture synth of demo_inv is
begin
  out_0 <= not in_0;
end;
