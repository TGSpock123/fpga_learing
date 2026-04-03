----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2026 08:23:04 PM
-- Design Name: 
-- Module Name: fft_lab_top - behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity fft_lab_top is
port 
( 
  clk_p : in std_logic;
  clk_n : in std_logic;
  rst_n : in std_logic
);
end fft_lab_top;

architecture behavioral of fft_lab_top is
  signal clk            : std_logic                     ;

  --DDS?????
  signal dds_en         : std_logic                     ;
  signal dds_valid      : std_logic                     ;
  signal dds_freq_word  : std_logic_vector(31 downto 0) ;
  signal dds_sample_out : std_logic_vector(15 downto 0) ;

  --DDS?????
  component dds_core is
  port
  (
    clk         : in  std_logic                     ;
    rst_n       : in  std_logic                     ;
    en          : in  std_logic                     ;
    freq_word   : in  std_logic_vector(31 downto 0) ;
    sample_out  : out std_logic_vector(15 downto 0) ;
    valid       : out std_logic                     
  );
  end component;

  --ILA?????
  component dds_ila is
    port (
      clk     : in std_logic;
      probe0  : in std_logic_vector(15 downto 0);
      probe1  : in std_logic_vector(0 downto 0);
      probe2  : in std_logic_vector(0 downto 0);
      probe3  : in std_logic_vector(31 downto 0)
      );
  end component;
begin
  --?????????
  ibufds_u0: IBUFDS
  generic map
  (
    DIFF_TERM     => FALSE,
    IBUF_LOW_PWR  => FALSE
  )
  port map
  (
    O   => clk  ,
    I   => clk_p,
    IB  => clk_n
  );

  --DDS?????
  dds_init: dds_core 
  port map (
    clk         => clk            ,
    rst_n       => rst_n          ,
    en          => dds_en         ,
    freq_word   => dds_freq_word  ,
    sample_out  => dds_sample_out ,
    valid       => dds_valid      
  );

  --ILA?????
  dds_ila_inst: dds_ila
  port map (
    clk         => clk            ,
    probe0      => dds_sample_out ,
    probe1(0)   => dds_valid      ,
    probe2(0)   => dds_en         ,
    probe3      => dds_freq_word  
  );

  process (clk)
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        dds_en <= '0';
        dds_freq_word <= (others => '0');
      else
        -- ??DDS????????
        dds_en <= '1';
        dds_freq_word <= X"0147AE14";
      end if;
    end if;
  end process;
end behavioral;
