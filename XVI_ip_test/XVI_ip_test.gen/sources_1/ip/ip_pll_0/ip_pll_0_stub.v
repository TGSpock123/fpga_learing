// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Aug 15 08:30:18 2025
// Host        : DESKTOP-IMB8E6N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/GitHub/fpga_learing/XVI_ip_test/XVI_ip_test.gen/sources_1/ip/ip_pll_0/ip_pll_0_stub.v
// Design      : ip_pll_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku5p-ffvb676-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ip_pll_0(clk_out1, clk_out2, clk_out3, clk_out4, resetn, 
  locked, clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,clk_out3,clk_out4,resetn,locked,clk_in1_p,clk_in1_n" */;
  output clk_out1;
  output clk_out2;
  output clk_out3;
  output clk_out4;
  input resetn;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
