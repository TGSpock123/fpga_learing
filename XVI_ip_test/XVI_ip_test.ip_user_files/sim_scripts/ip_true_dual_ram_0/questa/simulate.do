onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ip_true_dual_ram_0_opt

do {wave.do}

view wave
view structure
view signals

do {ip_true_dual_ram_0.udo}

run -all

quit -force
