vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  \
"../../../../XVI_ip_test.gen/sources_1/ip/ip_rom_256x8_256x16_0/sim/ip_rom_256x8_256x16_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

