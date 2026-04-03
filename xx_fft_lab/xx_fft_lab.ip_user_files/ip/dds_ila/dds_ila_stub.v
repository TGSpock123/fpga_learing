// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Apr  1 21:30:14 2026
// Host        : tgspock-BOHK-WAX9X running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/tgspock/Github/fpga_learing/xx_fft_lab/xx_fft_lab.gen/sources_1/ip/dds_ila/dds_ila_stub.v
// Design      : dds_ila
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu19eg-ffvc1760-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2023.1" *)
module dds_ila(clk, probe0, probe1, probe2, probe3)
/* synthesis syn_black_box black_box_pad_pin="probe0[15:0],probe1[0:0],probe2[0:0],probe3[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [15:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [31:0]probe3;
endmodule
