set_property PACKAGE_PIN V23 [get_ports clock_system]
set_property PACKAGE_PIN W19 [get_ports reset_system_n]
set_property PACKAGE_PIN AE18 [get_ports {led[1]}]
set_property PACKAGE_PIN AC16 [get_ports {led[0]}]

set_property IOSTANDARD LVCMOS18 [get_ports clock_system]
set_property IOSTANDARD LVCMOS18 [get_ports reset_system_n]
set_property IOSTANDARD LVCMOS18 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[0]}]

# 设置供电电压
set_property CFGBVS GND [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]

# 压缩比特流，提升烧录速度
set_property BITSTREAM.CONFIG.CONFIGRATE 85.0 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE Yes [current_design]

set_property PACKAGE_PIN AA22 [get_ports {led[3]}]
set_property PACKAGE_PIN AB22 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[3]}]
