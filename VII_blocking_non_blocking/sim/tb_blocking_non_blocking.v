module tb_blocking_non_blocking;

reg system_clk;
reg system_reset;
reg [1:0] data_in;
wire [1:0] data_out;

initial begin
  system_clk = 1'b1;
  system_reset = 1'b0;
  data_in = 2'b0;
  #20;
  system_reset = 1'b1;
end

always #10 system_clk = ~system_clk;
always #20 data_in <= {$random} % 4; 

VII_blocking_non_blocking blocking_non_blocking_inst
(
  .system_clk(system_clk),
  .system_reset(system_reset),
  .data_in(data_in),
  .data_out(data_out)
);

endmodule
