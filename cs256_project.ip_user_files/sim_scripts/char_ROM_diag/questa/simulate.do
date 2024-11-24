onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib char_ROM_diag_opt

do {wave.do}

view wave
view structure
view signals

do {char_ROM_diag.udo}

run -all

quit -force
