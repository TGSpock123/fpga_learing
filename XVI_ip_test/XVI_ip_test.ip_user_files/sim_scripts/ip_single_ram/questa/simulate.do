onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ip_single_ram_opt

do {wave.do}

view wave
view structure
view signals

do {ip_single_ram.udo}

run -all

quit -force
