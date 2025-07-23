`timescale 1ns/1ns

module tb_half_adder();

reg in_0;
reg in_1;
wire sum;
wire cnt;

initial begin
  in_0 <= 1'b0;
  in_1 <= 1'b0;
end

always #10 in_0 <= {$random} % 2;
always #10 in_1 <= {$random} % 2;

initial begin
  $timeformat (-9, 0, "ns", 6);
  $monitor ("@time %t: in_0 = %b, in_1 = %b, sum = %b, cnt = %b. ", $time, in_0, in_1, sum, cnt);
end

IV_half_adder half_adder_inst
(
  .in_0 (in_0),
  .in_1 (in_1),
  .sum (sum),
  .cnt (cnt)
);

endmodule
