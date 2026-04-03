vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../xx_fft_lab.gen/sources_1/ip/dds_ila/hdl/verilog" \
"../../../../xx_fft_lab.gen/sources_1/ip/dds_ila/sim/dds_ila.v" \


vlog -work xil_defaultlib \
"glbl.v"

