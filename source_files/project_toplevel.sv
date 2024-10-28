`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 01:09:24 PM
// Design Name: 
// Module Name: project_toplevel
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module project_toplevel(

    input CLK100MHZ,
    input CPU_RESETN,
    
    output VGA_HS,
    output VGA_VS,
    output [3:0]VGA_R,
    output [3:0]VGA_G,
    output [3:0]VGA_B
    );
    
    
    logic blank;
    logic [3:0]R;
    logic [3:0]G;
    logic [3:0]B;
    logic [11:0]RGB;
    logic [11:0]background;
    wire pixel_clk;
    wire frame_clk;
//    logic [11:0]RGB_mem;

    logic VGA_HS_reg, VGA_VS_reg, blank_reg;
    logic VGA_HS_wire, VGA_VS_wire, blank_wire;

    logic [10:0] drawX, drawY;
    clk_wiz_0 instance_name (.clk_out1(pixel_clk), .clk_in1(CLK100MHZ));
    vga_controller vga_controller_0 (.pixel_clk(pixel_clk), .rst(!CPU_RESETN), .hs(VGA_HS_wire), .vs(VGA_VS_wire), .drawX(drawX), .drawY(drawY), .blank(blank_wire));



//    always_ff @ (posedge pixel_clk) begin
    
//        VGA_HS_reg <= VGA_HS_wire;
//        VGA_VS_reg <= VGA_VS_wire;
//        blank_reg <= blank_wire;
    
//    end

//    assign VGA_HS = VGA_HS_reg;
//    assign VGA_VS = VGA_VS_reg;
//    assign blank = blank_reg;

    assign frame_clk = VGA_VS;

blk_mem_gen_0 your_instance_name (
  .clka(pixel_clk),    // input wire clka
  .addra(drawX + drawY*640),  // input wire [10 : 0] addra
  .douta(background)  // output wire [11 : 0] douta
);


    graphics_driver graphics_driver0 (.pixel_clk(pixel_clk), .rst(!CPU_RESETN), .blank_in(blank_wire), .hs_in(VGA_HS_wire), .vs_in(VGA_VS_wire), .drawX(), .drawY(), .background(background), .foreground(), .hs(VGA_HS), .vs(VGA_VS), .frame_clk(), .RGB({VGA_R, VGA_G, VGA_B}));


endmodule
