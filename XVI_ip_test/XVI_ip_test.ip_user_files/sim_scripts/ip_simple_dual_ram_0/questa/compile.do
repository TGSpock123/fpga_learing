vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  \
"../../../../XVI_ip_test.gen/sources_1/ip/ip_simple_dual_ram_0/sim/ip_simple_dual_ram_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

