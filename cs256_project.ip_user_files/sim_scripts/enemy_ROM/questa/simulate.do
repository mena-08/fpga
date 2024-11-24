onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib enemy_ROM_opt

do {wave.do}

view wave
view structure
view signals

do {enemy_ROM.udo}

run -all

quit -force
