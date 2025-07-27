`define BLOCKING

module VII_blocking_non_blocking
(
  input wire system_clk,
  input wire system_reset,
  input wire [1:0] data_in,
  output reg [1:0] data_out
);

reg [1:0] data_reg;

always@(posedge system_clk or negedge system_reset)
  if(system_reset == 1'b0) begin
    data_reg = 2'b0;
    data_out = 2'b0;
  end
  else begin
  `ifdef BLOCKING
    data_reg = data_in;
    data_out = data_reg;
  `else
    data_reg <= data_in;
    data_out <= data_reg;
  `endif 
  end

endmodule
