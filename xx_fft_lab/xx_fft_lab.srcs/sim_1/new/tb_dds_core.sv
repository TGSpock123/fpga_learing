`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2026 07:30:26 PM
// Design Name: 
// Module Name: tb_dds_core
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

`timescale 1ns/1ps
module tb_dds_core();

//时间间隔和模拟周期数
parameter real CLK_PERIOD = 5.0;
parameter int SIMULATE_CYCLES = 10000;

logic             clk       ;
logic             rst_n     ;
logic             en        ;
logic     [31:0]  freq_word ;
logic     [15:0]  sample_out;
logic             valid     ;

//统计变量
integer  file_handle;
integer  sample_count;
real phase_inc;

//时钟生成
initial begin
  clk = 0;
end

always #(CLK_PERIOD/2) begin
  clk = ~clk;
end

//实例化DDS核心模块
dds_core u_dds_core
(
  .clk        (clk),
  .rst_n      (rst_n),
  .en         (en),
  .freq_word  (freq_word),
  .sample_out (sample_out),
  .valid      (valid)
);

//测试序列
initial begin
  rst_n         = 0;
  en            = 0;
  freq_word     = 0;
  sample_count  = 0;

  //初始化统计变量
  $display("DDS TB start, clk frequency: %0.2f MHz. ", 1000.0/CLK_PERIOD);
  #100;
  rst_n = 1;
  $display("[%0t ns] Reset deasserted. ", $time);
  #100;

  //测试1：设置频率字为0.005 * 2^32，目标频率为1 MHz
  freq_word = 32'h147AE14; // 0.005 * 2^32 = 21474836.48
  phase_inc = real'(freq_word) / (2.0 ** 32) * 200.0; // 200 MHz * 0.005 = 1 MHz
  $display("[%0t ns] test 1: setting freq_word to %0d (target 1mhz, actual %0.3f mhz). ", $time, freq_word, phase_inc);
  en = 1;
  $display("[%0t ns] DDS enabled. ", $time);
  #(CLK_PERIOD * 1000);
  $display("[%0t ns] test 1 finished 1000 cycles. ", $time);
  
  en = 0;
  $display("[%0t ns] DDS disabled. ", $time);
  #(CLK_PERIOD * 100);

  //测试2：设置频率字为0.05 * 2^32，目标频率为10 MHz
  freq_word = 32'hCCCCCCD; //0.05 * 2^32 = 214748364.8
  phase_inc = real'(freq_word) / (2.0 ** 32) * 200.0; // 200 MHz * 0.05 = 10 MHz
  $display("[%0t ns] test 2: setting freq_word to %0d (target 10mhz, actual %0.3f mhz). ", $time, freq_word, phase_inc);
  en = 1;
  $display("[%0t ns] DDS enabled. ", $time);
  #(CLK_PERIOD * 1000);
  $display("[%0t ns] test 2 finished 1000 cycles. ", $time);

  en = 0;
  $display("[%0t ns] DDS disabled. ", $time);
  #(CLK_PERIOD * 100);
  $display("tb completed, total simulate time: %0t ns. ", $time);

  $finish;
end

//统计输出
always @(posedge clk) begin
  if(valid) begin
    sample_count = sample_count + 1;

    if (sample_count % 5 == 0) begin
      $display("[%0t ns] sample #%0d: %0d(0x%0h). ", $time, sample_count, $signed(sample_out), sample_out);
    end
  end
end

//波形生成
initial begin
  $dumpfile("tb_dds_core.vcd");
  $dumpvars(0, tb_dds_core);
end

//断言检查
always @(posedge clk) begin
  if (!rst_n && $time > 10) begin
    assert (sample_out == 0) 
      else   $error("[%0t ns] Error: sample_out is not zero during reset. ", $time);
    assert (valid == 0) 
      else   $error("[%0t ns] Error: valid is not zero during reset. ", $time);
  end
end

//当DDS被禁用时，valid应该保持为0
property p_valid_when_disabled;
  @(posedge clk) disable iff(!rst_n) (!en) |-> ##[0:3] (valid == 0);
endproperty

assert property (p_valid_when_disabled) 
else $error("[%0t ns] Error: valid is not zero when DDS is disabled. ", $time);

//统计最大值和最小值
real max_value;
real min_value;
real current_value;

initial begin
  max_value = -32768.0;
  min_value = 32767.0;
end

always @(posedge clk) begin
  if (valid) begin
    current_value = $signed(sample_out);
    if (current_value > max_value) begin
      max_value = current_value;
    end
    if (current_value < min_value) begin
      min_value = current_value;
    end
  end
end

final begin
  $display("statistics: total samples: %0d, max value: %0.2f, min value: %0.2f, peak-to-peak: %0.2f. ", sample_count, max_value, min_value, max_value - min_value);
end

endmodule
