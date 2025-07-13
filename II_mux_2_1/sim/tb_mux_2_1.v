`timescale 1ns/1ns

module tb_mux_2_1();

reg in_0;
reg in_1;
reg sel_0;
wire out_0;

initial begin
  in_0 <= 1'b0;
  in_1 <= 1'b0;
  sel_0 <= 1'b0;
end

always #10 in_0 <= {$random} % 2;
always #10 in_1 <= {$random} % 2;
always #10 sel_0 <= {$random} % 2;

initial begin
  $timeformat(-9, 0, "ns", 6);
  $monitor("@time %t: in_0 = %b, in_1 = %b, sel_0 = %b, out_0 = %b", $time, in_0, in_1, sel_0, out_0);
end

II_mux_2_1 mux2_1_inst
(
  .in_0(in_0),
  .in_1(in_1),
  .sel_0(sel_0),
  .out_0(out_0)
);

endmodule
