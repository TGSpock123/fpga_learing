transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {/home/tgspock/Github/fpga_learing/xx_fft_lab/xx_fft_lab.cache/compile_simlib/riviera}
vlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../xx_fft_lab.gen/sources_1/ip/dds_ila/hdl/verilog" -l xil_defaultlib \
"../../../../xx_fft_lab.gen/sources_1/ip/dds_ila/sim/dds_ila.v" \


vlog -work xil_defaultlib \
"glbl.v"

