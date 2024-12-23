// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Nov 27 10:00:29 2024
// Host        : rsws13.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/menao/Project_Test/fpga/cs256_project.gen/sources_1/ip/enemy_ROM/enemy_ROM_stub.v
// Design      : enemy_ROM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *)
module enemy_ROM(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[8:0],douta[11:0]" */;
  input clka;
  input [8:0]addra;
  output [11:0]douta;
endmodule
