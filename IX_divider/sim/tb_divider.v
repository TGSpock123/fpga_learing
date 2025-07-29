`timescale 1ns/1ns
module tb_divider();

reg system_clock;
reg system_reset_n;
wire clock_flag;

initial begin
  system_clock = 1'b1;
  system_reset_n <= 1'b0;
  #20
  system_reset_n <= 1'b1;
end

always #10 system_clock = ~system_clock;

IX_divider divider_inst
(
  .system_clock(system_clock),
  .system_reset_n(system_reset_n),
  .clock_flag(clock_flag)
);

endmodule