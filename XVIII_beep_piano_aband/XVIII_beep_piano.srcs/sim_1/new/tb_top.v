`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/23 15:37:11
// Design Name: 
// Module Name: tb_top
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


module tb_top();

// 时钟和复位信号
reg clk_sys_p;
reg clk_sys_n;
reg rst_sys_n;

// 按键输入信号
reg in_button_0;

// 输出信号观察
wire out_led;

// 时钟参数
parameter CLK_PERIOD = 10; // 100MHz时钟，10ns周期

// 生成差分时钟
initial begin
    clk_sys_p = 0;
    clk_sys_n = 1;
    forever begin
        #(CLK_PERIOD/2) clk_sys_p = ~clk_sys_p;
        #(CLK_PERIOD/2) clk_sys_n = ~clk_sys_n;
    end
end

// 例化被测模块
XVIII_top uut (
    .clk_sys_p(clk_sys_p),
    .clk_sys_n(clk_sys_n),
    .rst_sys_n(rst_sys_n),
    .in_button_0(in_button_0),
    .out_led(out_led)
);

// 测试流程
initial begin
    // 初始化信号
    rst_sys_n = 0;
    in_button_0 = 1; // 按键释放状态（高电平）
    
    $display("=== 开始仿真 ===");
    $display("时间: %0t, 复位: %b, 按键: %b, LED: %b", $time, rst_sys_n, in_button_0, out_led);
    
    // 复位阶段
    #100; // 等待100ns
    rst_sys_n = 1; // 解除复位
    $display("时间: %0t, 解除复位", $time);
    
    // 等待系统稳定
    #1000;
    
    // 测试1：按键按下
    $display("=== 测试1：按键按下 ===");
    in_button_0 = 0; // 按键按下（低电平）
    $display("时间: %0t, 按键按下", $time);
    
    // 等待消抖时间（10ms = 10,000,000ns，但仿真中可以缩短）
    #200000; // 等待200us
    $display("时间: %0t, 按键: %b, LED: %b", $time, in_button_0, out_led);
    
    // 测试2：按键释放
    $display("=== 测试2：按键释放 ===");
    in_button_0 = 1; // 按键释放（高电平）
    $display("时间: %0t, 按键释放", $time);
    
    // 等待消抖时间
    #200000; // 等待200us
    $display("时间: %0t, 按键: %b, LED: %b", $time, in_button_0, out_led);
    
    // 测试3：快速按键（测试消抖）
    $display("=== 测试3：快速按键操作 ===");
    repeat(3) begin
        in_button_0 = 0;
        #50000; // 短暂按下
        in_button_0 = 1;
        #50000; // 短暂释放
    end
    
    // 最后一次正常按键
    in_button_0 = 0;
    #200000;
    $display("时间: %0t, 最终按键: %b, LED: %b", $time, in_button_0, out_led);
    
    in_button_0 = 1;
    #200000;
    $display("时间: %0t, 最终释放: %b, LED: %b", $time, in_button_0, out_led);
    
    // 结束仿真
    #100000;
    $display("=== 仿真结束 ===");
    $finish;
end

// 监控信号变化
always @(posedge out_led) begin
    $display("*** LED点亮 *** 时间: %0t", $time);
end

always @(negedge out_led) begin
    $display("*** LED熄灭 *** 时间: %0t", $time);
end

endmodule
