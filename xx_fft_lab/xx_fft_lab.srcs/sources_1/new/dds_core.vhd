----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/27/2026 07:29:54 PM
-- Design Name: 
-- Module Name: dds_core - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use ieee.numeric_std.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library unisim;
--use unisim.vcomponents.all;

entity dds_core is
  port
  (
    --使用差分输入的时钟对产生的单端时钟信号, 1.2v LVDS
    clk       : in std_logic;
    --复位信号，低电平有效
    rst_n       : in std_logic;
    --使能信号，高电平有效
    en          : in std_logic;
    --频率控制字，32位，无符号步进值
    freq_word   : in std_logic_vector(31 downto 0);
    --输出正弦采样值，16位，最高位为符号位，表示当前正弦波的幅值
    sample_out  : out std_logic_vector(15 downto 0);
    --输出数据有效信号，当sample_out上的数据有效时，该信号为高电平
    valid       : out std_logic
  );
end dds_core;

architecture behavioral of dds_core is 
--相位累加器，32位无符号，每个时钟周期根据频率控制字增加相应的值
signal phase_accumulator: unsigned(31 downto 0) := (others => '0');
--查表地址
--前两位为象限标志，00表示第一象限，01表示第二象限，10表示第三象限，11表示第四象限
--后八位为象限内地址，访问1024/4深度的四分之一正弦波查找表
signal current_table_addr: unsigned(9 downto 0) := (others => '0');
--四分之一正弦波查找表地址，9位，表示当前相位在四分之一周期内的地址
signal quarter_addr: unsigned(8 downto 0) := (others => '0');
--是否需要对查表值取反的标志，第一和第二象限不需要取反，第三和第四象限需要取反
signal if_negate: std_logic := '0';
signal if_negate_reg: std_logic := '0';
--当前查表得到的正弦波采样值，16位有符号，表示当前相位对应的正弦波幅值
signal current_table_value: signed(15 downto 0) := (others => '0');
--四分之一正弦波查找表，1024/4个采样点，每个采样点16位有符号，表示对应相位的正弦波幅值
type sin_table_type is array(0 to 256) of signed(15 downto 0);
--预先计算好的四分之一周期正弦波查找表，使用16位有符号整数表示幅值，范围从0到32767
constant sin_table: sin_table_type := 
(
  0 => to_signed(0, 16),
  1 => to_signed(201, 16),
  2 => to_signed(402, 16),
  3 => to_signed(603, 16),
  4 => to_signed(804, 16),
  5 => to_signed(1005, 16),
  6 => to_signed(1206, 16),
  7 => to_signed(1407, 16),
  8 => to_signed(1608, 16),
  9 => to_signed(1809, 16),
  10 => to_signed(2009, 16),
  11 => to_signed(2210, 16),
  12 => to_signed(2410, 16),
  13 => to_signed(2611, 16),
  14 => to_signed(2811, 16),
  15 => to_signed(3012, 16),
  16 => to_signed(3212, 16),
  17 => to_signed(3412, 16),
  18 => to_signed(3612, 16),
  19 => to_signed(3811, 16),
  20 => to_signed(4011, 16),
  21 => to_signed(4210, 16),
  22 => to_signed(4410, 16),
  23 => to_signed(4609, 16),
  24 => to_signed(4808, 16),
  25 => to_signed(5007, 16),
  26 => to_signed(5205, 16),
  27 => to_signed(5404, 16),
  28 => to_signed(5602, 16),
  29 => to_signed(5800, 16),
  30 => to_signed(5998, 16),
  31 => to_signed(6195, 16),
  32 => to_signed(6393, 16),
  33 => to_signed(6590, 16),
  34 => to_signed(6786, 16),
  35 => to_signed(6983, 16),
  36 => to_signed(7179, 16),
  37 => to_signed(7375, 16),
  38 => to_signed(7571, 16),
  39 => to_signed(7767, 16),
  40 => to_signed(7962, 16),
  41 => to_signed(8157, 16),
  42 => to_signed(8351, 16),
  43 => to_signed(8545, 16),
  44 => to_signed(8739, 16),
  45 => to_signed(8933, 16),
  46 => to_signed(9126, 16),
  47 => to_signed(9319, 16),
  48 => to_signed(9512, 16),
  49 => to_signed(9704, 16),
  50 => to_signed(9896, 16),
  51 => to_signed(10087, 16),
  52 => to_signed(10278, 16),
  53 => to_signed(10469, 16),
  54 => to_signed(10659, 16),
  55 => to_signed(10849, 16),
  56 => to_signed(11039, 16),
  57 => to_signed(11228, 16),
  58 => to_signed(11417, 16),
  59 => to_signed(11605, 16),
  60 => to_signed(11793, 16),
  61 => to_signed(11980, 16),
  62 => to_signed(12167, 16),
  63 => to_signed(12353, 16),
  64 => to_signed(12539, 16),
  65 => to_signed(12725, 16),
  66 => to_signed(12910, 16),
  67 => to_signed(13094, 16),
  68 => to_signed(13279, 16),
  69 => to_signed(13462, 16),
  70 => to_signed(13645, 16),
  71 => to_signed(13828, 16),
  72 => to_signed(14010, 16),
  73 => to_signed(14191, 16),
  74 => to_signed(14372, 16),
  75 => to_signed(14553, 16),
  76 => to_signed(14732, 16),
  77 => to_signed(14912, 16),
  78 => to_signed(15090, 16),
  79 => to_signed(15269, 16),
  80 => to_signed(15446, 16),
  81 => to_signed(15623, 16),
  82 => to_signed(15800, 16),
  83 => to_signed(15976, 16),
  84 => to_signed(16151, 16),
  85 => to_signed(16325, 16),
  86 => to_signed(16499, 16),
  87 => to_signed(16673, 16),
  88 => to_signed(16846, 16),
  89 => to_signed(17018, 16),
  90 => to_signed(17189, 16),
  91 => to_signed(17360, 16),
  92 => to_signed(17530, 16),
  93 => to_signed(17700, 16),
  94 => to_signed(17869, 16),
  95 => to_signed(18037, 16),
  96 => to_signed(18204, 16),
  97 => to_signed(18371, 16),
  98 => to_signed(18537, 16),
  99 => to_signed(18703, 16),
  100 => to_signed(18868, 16),
  101 => to_signed(19032, 16),
  102 => to_signed(19195, 16),
  103 => to_signed(19357, 16),
  104 => to_signed(19519, 16),
  105 => to_signed(19680, 16),
  106 => to_signed(19841, 16),
  107 => to_signed(20000, 16),
  108 => to_signed(20159, 16),
  109 => to_signed(20317, 16),
  110 => to_signed(20475, 16),
  111 => to_signed(20631, 16),
  112 => to_signed(20787, 16),
  113 => to_signed(20942, 16),
  114 => to_signed(21096, 16),
  115 => to_signed(21250, 16),
  116 => to_signed(21403, 16),
  117 => to_signed(21554, 16),
  118 => to_signed(21705, 16),
  119 => to_signed(21856, 16),
  120 => to_signed(22005, 16),
  121 => to_signed(22154, 16),
  122 => to_signed(22301, 16),
  123 => to_signed(22448, 16),
  124 => to_signed(22594, 16),
  125 => to_signed(22739, 16),
  126 => to_signed(22884, 16),
  127 => to_signed(23027, 16),
  128 => to_signed(23170, 16),
  129 => to_signed(23311, 16),
  130 => to_signed(23452, 16),
  131 => to_signed(23592, 16),
  132 => to_signed(23731, 16),
  133 => to_signed(23870, 16),
  134 => to_signed(24007, 16),
  135 => to_signed(24143, 16),
  136 => to_signed(24279, 16),
  137 => to_signed(24413, 16),
  138 => to_signed(24547, 16),
  139 => to_signed(24680, 16),
  140 => to_signed(24811, 16),
  141 => to_signed(24942, 16),
  142 => to_signed(25072, 16),
  143 => to_signed(25201, 16),
  144 => to_signed(25329, 16),
  145 => to_signed(25456, 16),
  146 => to_signed(25582, 16),
  147 => to_signed(25708, 16),
  148 => to_signed(25832, 16),
  149 => to_signed(25955, 16),
  150 => to_signed(26077, 16),
  151 => to_signed(26198, 16),
  152 => to_signed(26319, 16),
  153 => to_signed(26438, 16),
  154 => to_signed(26556, 16),
  155 => to_signed(26674, 16),
  156 => to_signed(26790, 16),
  157 => to_signed(26905, 16),
  158 => to_signed(27019, 16),
  159 => to_signed(27133, 16),
  160 => to_signed(27245, 16),
  161 => to_signed(27356, 16),
  162 => to_signed(27466, 16),
  163 => to_signed(27575, 16),
  164 => to_signed(27683, 16),
  165 => to_signed(27790, 16),
  166 => to_signed(27896, 16),
  167 => to_signed(28001, 16),
  168 => to_signed(28105, 16),
  169 => to_signed(28208, 16),
  170 => to_signed(28310, 16),
  171 => to_signed(28411, 16),
  172 => to_signed(28510, 16),
  173 => to_signed(28609, 16),
  174 => to_signed(28706, 16),
  175 => to_signed(28803, 16),
  176 => to_signed(28898, 16),
  177 => to_signed(28992, 16),
  178 => to_signed(29085, 16),
  179 => to_signed(29177, 16),
  180 => to_signed(29268, 16),
  181 => to_signed(29358, 16),
  182 => to_signed(29447, 16),
  183 => to_signed(29534, 16),
  184 => to_signed(29621, 16),
  185 => to_signed(29706, 16),
  186 => to_signed(29791, 16),
  187 => to_signed(29874, 16),
  188 => to_signed(29956, 16),
  189 => to_signed(30037, 16),
  190 => to_signed(30117, 16),
  191 => to_signed(30195, 16),
  192 => to_signed(30273, 16),
  193 => to_signed(30349, 16),
  194 => to_signed(30424, 16),
  195 => to_signed(30498, 16),
  196 => to_signed(30571, 16),
  197 => to_signed(30643, 16),
  198 => to_signed(30714, 16),
  199 => to_signed(30783, 16),
  200 => to_signed(30852, 16),
  201 => to_signed(30919, 16),
  202 => to_signed(30985, 16),
  203 => to_signed(31050, 16),
  204 => to_signed(31113, 16),
  205 => to_signed(31176, 16),
  206 => to_signed(31237, 16),
  207 => to_signed(31297, 16),
  208 => to_signed(31356, 16),
  209 => to_signed(31414, 16),
  210 => to_signed(31470, 16),
  211 => to_signed(31526, 16),
  212 => to_signed(31580, 16),
  213 => to_signed(31633, 16),
  214 => to_signed(31685, 16),
  215 => to_signed(31736, 16),
  216 => to_signed(31785, 16),
  217 => to_signed(31833, 16),
  218 => to_signed(31880, 16),
  219 => to_signed(31926, 16),
  220 => to_signed(31971, 16),
  221 => to_signed(32014, 16),
  222 => to_signed(32057, 16),
  223 => to_signed(32098, 16),
  224 => to_signed(32137, 16),
  225 => to_signed(32176, 16),
  226 => to_signed(32213, 16),
  227 => to_signed(32250, 16),
  228 => to_signed(32285, 16),
  229 => to_signed(32318, 16),
  230 => to_signed(32351, 16),
  231 => to_signed(32382, 16),
  232 => to_signed(32412, 16),
  233 => to_signed(32441, 16),
  234 => to_signed(32469, 16),
  235 => to_signed(32495, 16),
  236 => to_signed(32521, 16),
  237 => to_signed(32545, 16),
  238 => to_signed(32567, 16),
  239 => to_signed(32589, 16),
  240 => to_signed(32609, 16),
  241 => to_signed(32628, 16),
  242 => to_signed(32646, 16),
  243 => to_signed(32663, 16),
  244 => to_signed(32678, 16),
  245 => to_signed(32692, 16),
  246 => to_signed(32705, 16),
  247 => to_signed(32717, 16),
  248 => to_signed(32728, 16),
  249 => to_signed(32737, 16),
  250 => to_signed(32745, 16),
  251 => to_signed(32752, 16),
  252 => to_signed(32757, 16),
  253 => to_signed(32761, 16),
  254 => to_signed(32765, 16),
  255 => to_signed(32766, 16),
  256 => to_signed(32767, 16)
);
--用于寄存valid信号的寄存器，保证在时钟上升沿时能够正确地将当前的象限标志和查表值传递到输出阶段
signal valid_reg_1: std_logic := '0';
begin
  --根据相位累加器的高10位计算当前的查表地址
  current_table_addr <= phase_accumulator(31 downto 22);
  --根据查表地址的高两位确定当前的象限，根据查表地址的低八位确定当前在四分之一周期内的地址，并根据象限标志确定是否需要对查表值取反
  process(current_table_addr) begin
    case current_table_addr(9 downto 8) is
      when "00" =>
        quarter_addr <= current_table_addr(8 downto 0);
        if_negate <= '0';
      when "01" =>
        quarter_addr <= to_unsigned(511, 9) - current_table_addr(8 downto 0) + to_unsigned(1, 9);
        if_negate <= '0';
      when "10" =>
        quarter_addr <= current_table_addr(8 downto 0);
        if_negate <= '1';
      when "11" =>
        quarter_addr <= to_unsigned(511, 9) - current_table_addr(8 downto 0) + to_unsigned(1, 9);
        if_negate <= '1';
      when others =>
        quarter_addr <= (others => '0');
        if_negate <= '0';
    end case;
  end process;

  --根据四分之一周期内的地址从查找表中获取当前的正弦波采样值
  process(clk) begin
    if rising_edge(clk) then
      if rst_n = '0' then
        if_negate_reg <= '0';
        current_table_value <= (others => '0');
        valid_reg_1 <= '0';
      elsif en = '1' then
        if_negate_reg <= if_negate;
        current_table_value <= sin_table(to_integer(quarter_addr));
        valid_reg_1 <= '1';
      else
        valid_reg_1 <= '0';
      end if;
    end if;
  end process;

  process(clk) begin
    if rising_edge(clk) then
      if rst_n = '0' then
        --复位时，清零相位累加器和输出采样值，并将valid信号置低
        sample_out <= (others => '0');
        phase_accumulator <= (others => '0');
        valid <= '0';
      else
        if en = '1' then
          phase_accumulator <= phase_accumulator + unsigned(freq_word);
        end if;
        if valid_reg_1 = '1' then
          if if_negate_reg = '1' then
            sample_out <= std_logic_vector(-current_table_value);
          else
            sample_out <= std_logic_vector(current_table_value);
          end if;
          valid <= '1';
          
        else
          valid <= '0';
        end if;
      end if;
    end if;
  end process;
end behavioral;
