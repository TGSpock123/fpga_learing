transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+dds_ila  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.dds_ila xil_defaultlib.glbl

do {dds_ila.udo}

run

endsim

quit -force
