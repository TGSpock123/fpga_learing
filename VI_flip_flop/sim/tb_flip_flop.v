`timescale 1ns/1ns
module tb_flip_flop();

reg system_clk;
reg system_reset;
reg key_0;
wire led_0;

initial begin
  system_clk = 1'b1;
  system_reset <= 1'b0;
  key_0 <= 1'b0;

  #20
  system_reset <= 1'b1;

  #210
  system_reset <= 1'b0;

  #100
  system_reset <= 1'b1;
end

always #10 system_clk = ~system_clk;
always #20 key_0 <= {$random} % 2;

initial begin
  $timeformat(-9, 0, " ns", 6);
  $monitor("@time %t: key_0 = %b, led_0 = %b. ", $time, key_0, led_0);
end

VI_flip_flop filp_flop_inst
(
  .system_clk(system_clk),
  .system_reset(system_reset),
  .key_0(key_0),
  .led_0(led_0)
);

endmodule