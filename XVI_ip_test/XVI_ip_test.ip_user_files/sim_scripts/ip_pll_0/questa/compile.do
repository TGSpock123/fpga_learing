vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  "+incdir+../../../ipstatic" \
"../../../../XVI_ip_test.gen/sources_1/ip/ip_pll_0/ip_pll_0_clk_wiz.v" \
"../../../../XVI_ip_test.gen/sources_1/ip/ip_pll_0/ip_pll_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

