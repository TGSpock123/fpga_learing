set_property PACKAGE_PIN W19 [get_ports sys_rst_n]
set_property IOSTANDARD LVCMOS18 [get_ports sys_rst_n]
set_property IOSTANDARD DIFF_SSTL12 [get_ports sys_clk_n]
set_property IOSTANDARD DIFF_SSTL12 [get_ports sys_clk_p]
set_property PACKAGE_PIN V24 [get_ports sys_clk_p]
set_property PACKAGE_PIN W24 [get_ports sys_clk_n]
set_property PACKAGE_PIN E13 [get_ports uart_tx_output]
set_property IOSTANDARD LVCMOS33 [get_ports uart_tx_output]
set_property PACKAGE_PIN E12 [get_ports uart_rx_input]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rx_input]

create_clock -period 10.000 -name clock_system -waveform {0.000 5.000} [get_ports sys_clk_p]

# 设置供电电压
set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]

# 压缩比特流，提升烧录速度
set_property BITSTREAM.CONFIG.CONFIGRATE 85.0 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE Yes [current_design]
