transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {}
vlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../xx_fft_lab.gen/sources_1/ip/dds_ila/hdl/verilog" -l xil_defaultlib \
"../../../../xx_fft_lab.gen/sources_1/ip/dds_ila/sim/dds_ila.v" \


vlog -work xil_defaultlib \
"glbl.v"

