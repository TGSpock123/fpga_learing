module II_mux_2_1
(
  input wire in_0,
  input wire in_1,
  input wire sel_0,
//  output reg out_0
  output wire out_0
);

//if写法
//always@(*)
//  if(sel_0 == 1'b1)
//    out_0 = in_0;
//  else
//    out_0 = in_1;

//case写法
//always@(*)
//  case(sel_0)
//    1'b1: out_0 = in_0;
//    1'b0: out_0 = in_1;
//    default: out_0 = in_0;
//  endcase

//三元运算符
assign out_0 = (sel_0 == 1'b1) ? in_0 : in_1;

endmodule
