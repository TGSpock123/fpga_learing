`timescale 1ns/1ns
module tb_counter();

reg system_clock;
reg system_reset_n;
wire led_0;

initial begin
  system_clock = 1'b1;
  system_reset_n <= 1'b0;
  #20
  system_reset_n <= 1'b1;
end

always #10 system_clock = ~system_clock;

VIII_counter
#(
  .COUNT_MAX (25'd24)
)
VIII_counter_inst
(
  .system_clock(system_clock),
  .system_reset_n(system_reset_n),
  .led_0(led_0)
);

endmodule