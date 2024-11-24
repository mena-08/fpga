vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic" \
"/sw/workstations/apps/linux-ubuntu22.04-ivybridge/xilinx/2020.2/gcc-11.3.0/ekwesbbm3ihgiun3hq4k3jqblkshewa7/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/sw/workstations/apps/linux-ubuntu22.04-ivybridge/xilinx/2020.2/gcc-11.3.0/ekwesbbm3ihgiun3hq4k3jqblkshewa7/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/sw/workstations/apps/linux-ubuntu22.04-ivybridge/xilinx/2020.2/gcc-11.3.0/ekwesbbm3ihgiun3hq4k3jqblkshewa7/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../cs256_project.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
"../../../../cs256_project.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

