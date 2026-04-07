set_property PACKAGE_PIN H24 [get_ports clk_p]
set_property IOSTANDARD DIFF_SSTL12 [get_ports clk_p]
set_property PACKAGE_PIN E1 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

create_clock -period 5.000 -name sys_clk [get_ports clk_p]