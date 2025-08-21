`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/19 23:16:52
// Design Name: 
// Module Name: ip_double_ram_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//伪双端口和真双端口有不同的特色
module ip_double_ram_test
(
  input wire sys_clk_p,
  input wire sys_clk_n,
  input wire sys_rst_n,
  output wire led_0
);

wire sys_clk_single;
wire ram_rw_flag;

wire clka;
wire ena;
wire [0 : 0] wea;
wire [5 : 0] addra;
wire [7 : 0] dina;
wire [7 : 0] douta;

wire clkb;
wire enb;
wire [0 : 0] web;
wire [5 : 0] addrb;
wire [7 : 0] dinb;
wire [7 : 0] doutb;

assign led_0 = 1'b0;
assign clka = sys_clk_single;
assign clkb = sys_clk_single;

IBUFDS clk_differential_to_single
(
  .I(sys_clk_p),
  .IB(sys_clk_n),
  .O(sys_clk_single)
);

ip_simple_dual_ram_0 ip_simple_dual_ram_0_inst 
(
  .clka(clka),    // input wire clka
  .ena(ena),      // input wire ena
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra),  // input wire [5 : 0] addra
  .dina(dina),    // input wire [7 : 0] dina

  .clkb(clkb),    // input wire clkb
  .enb(enb),      // input wire enb
  .addrb(addrb),  // input wire [5 : 0] addrb
  .doutb(doutb)  // output wire [7 : 0] doutb
);

// ip_true_dual_ram_0 ip_true_dual_ram_0_inst 
// (
//   .clka(clka),    // input wire clka
//   .ena(ena),      // input wire ena
//   .wea(wea),      // input wire [0 : 0] wea
//   .addra(addra),  // input wire [5 : 0] addra
//   .dina(dina),    // input wire [7 : 0] dina
//   .douta(douta),  // output wire [7 : 0] douta
  
//   .clkb(clkb),    // input wire clkb
//   .enb(enb),      // input wire enb
//   .web(web),      // input wire [0 : 0] web
//   .addrb(addrb),  // input wire [5 : 0] addrb
//   .dinb(dinb),    // input wire [7 : 0] dinb
//   .doutb(doutb)  // output wire [7 : 0] doutb
// );

ram_write ram_write_inst
(
  .ram_clk_write     (clka),
  .ram_reset_n       (sys_rst_n),
  .ram_write_we      (wea),
  .ram_write_en      (ena),
  .ram_rw_flag       (ram_rw_flag),
  .ram_write_address (addra),
  .ram_write_data    (dina)
);

ram_read ram_read_inst
(
  .ram_clk_read     (clkb),
  .ram_reset_n      (sys_rst_n),
  .ram_rw_flag      (ram_rw_flag),
  .ram_read_data    (doutb),
  .ram_read_en      (enb),
  .ram_read_address (addrb)
);

endmodule
