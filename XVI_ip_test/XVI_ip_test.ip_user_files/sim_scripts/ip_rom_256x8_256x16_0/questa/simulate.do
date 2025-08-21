onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ip_rom_256x8_256x16_0_opt

do {wave.do}

view wave
view structure
view signals

do {ip_rom_256x8_256x16_0.udo}

run -all

quit -force
