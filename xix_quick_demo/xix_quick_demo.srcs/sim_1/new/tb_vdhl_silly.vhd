----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2025/11/18 11:19:13
-- Design Name: 
-- Module Name: tb_vdhl_silly - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_vdhl_silly is
end tb_vdhl_silly;

architecture Behavioral of tb_vdhl_silly is
  component vhdl_quick_demo_silly
    port (
      in_0  : in  STD_LOGIC;
      in_1  : in  STD_LOGIC;
      in_2  : in  STD_LOGIC;
      out_0 : out STD_LOGIC
    );
  end component;

  signal counter_2_0: STD_LOGIC_VECTOR(2 downto 0) := "000";
  signal in_0_tb  : STD_LOGIC;
  signal in_1_tb  : STD_LOGIC;
  signal in_2_tb  : STD_LOGIC;
  signal out_0_tb : STD_LOGIC;

begin
  in_2_tb <= counter_2_0(0);
  in_1_tb <= counter_2_0(1);
  in_0_tb <= counter_2_0(2);

  uut: vhdl_quick_demo_silly 
  port map 
  (
    in_0 => in_0_tb,
    in_1 => in_1_tb,
    in_2 => in_2_tb,
    out_0 => out_0_tb
  );

  counter_proc: process 
  begin
    for i in 0 to 7 loop
      wait for 10 ns;
      counter_2_0 <= counter_2_0 + 1; 
    end loop;
  end process;

end Behavioral;
