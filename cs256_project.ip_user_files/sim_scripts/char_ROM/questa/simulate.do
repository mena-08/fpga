onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib char_ROM_opt

do {wave.do}

view wave
view structure
view signals

do {char_ROM.udo}

run -all

quit -force
