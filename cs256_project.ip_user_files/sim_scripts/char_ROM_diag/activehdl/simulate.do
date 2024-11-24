onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+char_ROM_diag -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.char_ROM_diag xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {char_ROM_diag.udo}

run -all

endsim

quit -force
