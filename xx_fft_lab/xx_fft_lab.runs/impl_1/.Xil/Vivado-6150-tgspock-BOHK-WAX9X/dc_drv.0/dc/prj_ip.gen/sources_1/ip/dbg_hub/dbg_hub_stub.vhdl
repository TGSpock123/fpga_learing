-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Thu Apr  2 00:41:46 2026
-- Host        : tgspock-BOHK-WAX9X running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/tgspock/Github/fpga_learing/xx_fft_lab/xx_fft_lab.runs/impl_1/.Xil/Vivado-6150-tgspock-BOHK-WAX9X/dc_drv.0/dc/prj_ip.gen/sources_1/ip/dbg_hub/dbg_hub_stub.vhdl
-- Design      : dbg_hub
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu19eg-ffvc1760-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dbg_hub is
  Port ( 
    sl_iport0_o : out STD_LOGIC_VECTOR ( 36 downto 0 );
    sl_oport0_i : in STD_LOGIC_VECTOR ( 16 downto 0 );
    clk : in STD_LOGIC
  );

end dbg_hub;

architecture stub of dbg_hub is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sl_iport0_o[36:0],sl_oport0_i[16:0],clk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xsdbm_v3_0_0_xsdbm,Vivado 2023.1";
begin
end;
