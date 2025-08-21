onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+ip_rom_256x8_256x16_0 -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ip_rom_256x8_256x16_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ip_rom_256x8_256x16_0.udo}

run -all

endsim

quit -force
