set_property PACKAGE_PIN V23 [get_ports clk_sys]
set_property IOSTANDARD LVCMOS18 [get_ports clk_sys]
set_property PACKAGE_PIN W19 [get_ports rst_sys_n]
set_property IOSTANDARD LVCMOS18 [get_ports rst_sys_n]
set_property PACKAGE_PIN AC16 [get_ports out_cola]
set_property IOSTANDARD LVCMOS18 [get_ports out_cola]
set_property PACKAGE_PIN W20 [get_ports in_coin]
set_property IOSTANDARD LVCMOS18 [get_ports in_coin]

create_clock -period 10.000 -name clock_system [get_ports clk_sys]

# 设置供电电压
set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]

# 压缩比特流，提升烧录速度
set_property BITSTREAM.CONFIG.CONFIGRATE 85.0 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE Yes [current_design]

set_property PACKAGE_PIN AE18 [get_ports out_change]
set_property IOSTANDARD LVCMOS18 [get_ports out_change]
set_property PACKAGE_PIN AA22 [get_ports in_coin_one]
set_property PACKAGE_PIN AB22 [get_ports in_coin_point]
set_property IOSTANDARD LVCMOS18 [get_ports in_coin_one]
set_property IOSTANDARD LVCMOS18 [get_ports in_coin_point]
