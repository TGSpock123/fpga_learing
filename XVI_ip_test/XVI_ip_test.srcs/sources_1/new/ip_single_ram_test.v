`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/16 16:05:32
// Design Name: 
// Module Name: ip_single_ram_test
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


module ip_single_ram_test
(
  input wire sys_clk_p,
  input wire sys_clk_n,
  input wire sys_rst_n,
  output wire led_0
);

wire clka;
wire ena;
wire wea;
wire [4:0] addra;
wire [7:0] dina;
wire [7:0] douta;

assign led_0 = 1'b1;

IBUFDS clock_sdc_0
(
  .I(sys_clk_p),
  .IB(sys_clk_n),
  .O(clka)
);

ram_write_read ram_write_read_inst
(
  .ram_clk(clka),
  .ram_rst_n(sys_rst_n),
  .ram_en(ena),
  .ram_we(wea),
  .ram_addr(addra),
  .ram_write_data(dina),
  .ram_read_data(douta)
);

ip_single_ram single_ram_0_inst 
(
  .clka(clka),    // input wire clka
  .ena(ena),      // input wire ena
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra),  // input wire [4 : 0] addra
  .dina(dina),    // input wire [7 : 0] dina
  .douta(douta)  // output wire [7 : 0] douta
);

ila_0 ila_0_inst 
(
	.clk(clka), // input wire clk
	.probe0(ena), // input wire [0:0]  probe0  
	.probe1(wea), // input wire [0:0]  probe1 
	.probe2(addra), // input wire [4:0]  probe2 
	.probe3(dina), // input wire [7:0]  probe3 
	.probe4(douta) // input wire [7:0]  probe4
);

endmodule
