`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: T G Spock
// 
// Create Date: 2025/08/09 22:14:37
// Design Name: 
// Module Name: counter
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


module counter
(
  input wire          clk_sys       ,
  input wire          rst_sys_n     ,
  input wire [16:0]   clk_freq_mhz  ,
  input wire [16:0]   count_20_ns   ,
  input wire [16:0]   count_us      ,
  input wire [16:0]   count_ms      ,
  input wire [16:0]   count_s       ,
  output wire         event_counter 
);

localparam CLK_FREQ_250_MHZ = 17'd250;
localparam CLK_FREQ_200_MHZ = 17'd200;
localparam CLK_FREQ_100_MHZ = 17'd100;
localparam CLK_FREQ_50_MHZ = 17'd50;
//this is for test conditons above 1ms;
localparam CLK_FREQ_1_MHZ = 17'd1;

function [29:0] get_250mhz_base;
  input [1:0] index;
  case(index)
    0: get_250mhz_base = 30'd5;
    1: get_250mhz_base = 30'd250;
    2: get_250mhz_base = 30'd250_000;
    3: get_250mhz_base = 30'd250_000_000;
  endcase
endfunction

function [29:0] get_200mhz_base;
  input [1:0] index;
  case(index)
    0: get_200mhz_base = 30'd4;
    1: get_200mhz_base = 30'd200;
    2: get_200mhz_base = 30'd200_000;
    3: get_200mhz_base = 30'd200_000_000;
  endcase
endfunction

function [29:0] get_100mhz_base;
  input [1:0] index;
  case(index)
    0: get_100mhz_base = 30'd2;
    1: get_100mhz_base = 30'd100;
    2: get_100mhz_base = 30'd100_000;
    3: get_100mhz_base = 30'd100_000_000;
  endcase
endfunction

function [29:0] get_50mhz_base;
  input [1:0] index;
  case(index)
    0: get_50mhz_base = 30'd1;
    1: get_50mhz_base = 30'd50;
    2: get_50mhz_base = 30'd50_000;
    3: get_50mhz_base = 30'd50_000_000;
  endcase
endfunction

function [29:0] get_1mhz_base;
  input [1:0] index;
  case(index)
    0: get_1mhz_base = 30'd1;
    1: get_1mhz_base = 30'd1;
    2: get_1mhz_base = 30'd1_000;
    3: get_1mhz_base = 30'd1_000_000;
  endcase
endfunction

reg [29:0] time_base_reg [3:0];
reg [47:0] count_middleware [5:0];
reg [47:0] count_max_dynamic;
reg [47:0] count_max_static;
reg [47:0] reg_count;
reg [16:0] reg_clk_freq_mhz;
reg [16:0] reg_count_20_ns;
reg [16:0] reg_count_us;
reg [16:0] reg_count_ms;
reg [16:0] reg_count_s;
reg reg_valid [3:0];
reg reg_event_counter;
wire if_time_changed;

assign event_counter = reg_event_counter;
assign if_time_changed = (count_20_ns != reg_count_20_ns) || 
                         (count_us != reg_count_us) || (count_ms != reg_count_ms) || 
                         (count_s != reg_count_s) || (clk_freq_mhz != reg_clk_freq_mhz);

//1st-level pipeline: clock on-demand selector
always @(posedge clk_sys) begin
  if (rst_sys_n == 1'b0) begin
    time_base_reg[0] <= {17{1'b0}};
    time_base_reg[1] <= {17{1'b0}};
    time_base_reg[2] <= {17{1'b0}};
    time_base_reg[3] <= {17{1'b0}};
    reg_count_20_ns  <= {17{1'b0}};
    reg_count_us     <= {17{1'b0}};
    reg_count_ms     <= {17{1'b0}};
    reg_count_s      <= {17{1'b0}};
    reg_valid[0]     <= 1'b0;
  end else begin
    case (clk_freq_mhz)
      CLK_FREQ_250_MHZ: begin
        time_base_reg[0] <= get_250mhz_base(0);
        time_base_reg[1] <= get_250mhz_base(1);
        time_base_reg[2] <= get_250mhz_base(2);
        time_base_reg[3] <= get_250mhz_base(3);
      end 
      CLK_FREQ_200_MHZ: begin
        time_base_reg[0] <= get_200mhz_base(0);
        time_base_reg[1] <= get_200mhz_base(1);
        time_base_reg[2] <= get_200mhz_base(2);
        time_base_reg[3] <= get_200mhz_base(3);
      end
      CLK_FREQ_100_MHZ: begin
        time_base_reg[0] <= get_100mhz_base(0);
        time_base_reg[1] <= get_100mhz_base(1);
        time_base_reg[2] <= get_100mhz_base(2);
        time_base_reg[3] <= get_100mhz_base(3);
      end
      CLK_FREQ_50_MHZ: begin
        time_base_reg[0] <= get_50mhz_base(0);
        time_base_reg[1] <= get_50mhz_base(1);
        time_base_reg[2] <= get_50mhz_base(2);
        time_base_reg[3] <= get_50mhz_base(3);
      end
      CLK_FREQ_1_MHZ: begin
        time_base_reg[0] <= get_1mhz_base(0);
        time_base_reg[1] <= get_1mhz_base(1);
        time_base_reg[2] <= get_1mhz_base(2);
        time_base_reg[3] <= get_1mhz_base(3);
      end
      default: begin
        time_base_reg[0] <= get_50mhz_base(0);
        time_base_reg[1] <= get_50mhz_base(1);
        time_base_reg[2] <= get_50mhz_base(2);
        time_base_reg[3] <= get_50mhz_base(3);
      end
    endcase

    if (if_time_changed == 1'b1) begin
      reg_valid[0] <= 1'b1;
    end else begin
      reg_valid[0] <= 1'b0;
    end

    reg_clk_freq_mhz <= clk_freq_mhz;
    reg_count_20_ns  <= count_20_ns ;
    reg_count_us     <= count_us    ;
    reg_count_ms     <= count_ms    ;
    reg_count_s      <= count_s     ;
  end
end

//2nd-level pipeline: multiplier
always @(posedge clk_sys) begin
  count_middleware[0] <= time_base_reg[0] * reg_count_20_ns;
  count_middleware[1] <= time_base_reg[1] * reg_count_us   ;
  count_middleware[2] <= time_base_reg[2] * reg_count_ms   ;
  count_middleware[3] <= time_base_reg[3] * reg_count_s    ;
  if (rst_sys_n == 1'b0) begin
    reg_valid[1]        <= 1'b0;
  end else begin
    reg_valid[1]        <= reg_valid[0];
  end
end

//3rd-level pipeline: first level of addition tree
always @(posedge clk_sys) begin
  count_middleware[4] <= count_middleware[0] + count_middleware[1];
  count_middleware[5] <= count_middleware[2] + count_middleware[3];
  if (rst_sys_n == 1'b0) begin
    reg_valid[2]        <= 1'b0;
  end else begin
    reg_valid[2]        <= reg_valid[1];
  end
end

//4th-level pipeline: second level of addition tree
always @(posedge clk_sys) begin
  count_max_dynamic <= count_middleware[4] + count_middleware[5];
  if (rst_sys_n == 1'b0) begin
    reg_valid[3]        <= 1'b0;
  end else begin
    reg_valid[3]        <= reg_valid[2];
  end
end

//countdown timer
always @(posedge clk_sys) begin
  if (rst_sys_n == 1'b0) begin
    reg_count        <= {48{1'b0}};
    count_max_static <= {48{1'b0}};
  end else begin
    if (reg_valid[3] == 1'b1) begin
      reg_count        <= {48{1'b0}};
      count_max_static <= count_max_dynamic;
    end else if (reg_count >= count_max_static) begin
      reg_count <= {48{1'b0}};
    end else begin
      reg_count <= reg_count + 1'b1;
    end
  end
end

//output event
always @(posedge clk_sys) begin
  if (rst_sys_n == 1'b0) begin
    reg_event_counter <= 1'b0;
  end else begin
    if (count_max_static != 48'b0) begin
      reg_event_counter <= (reg_count == (count_max_static - 1));
    end else begin
      reg_event_counter <= (reg_count == count_max_static);
    end
  end
end

endmodule
