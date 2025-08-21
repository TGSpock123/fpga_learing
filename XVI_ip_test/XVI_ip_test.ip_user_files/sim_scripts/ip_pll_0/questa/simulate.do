onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ip_pll_0_opt

do {wave.do}

view wave
view structure
view signals

do {ip_pll_0.udo}

run -all

quit -force
