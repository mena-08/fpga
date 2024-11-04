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
    
    input PS2_CLK,
    input PS2_DATA,
    
//    Buttons
    input BTNC, BTNU, BTNL, BTNR, BTND,
    
    output VGA_HS,
    output VGA_VS,
    output [3:0]VGA_R,
    output [3:0]VGA_G,
    output [3:0]VGA_B
    );
    
    logic [11:0]background= 12'hC30, foreground;
    wire pixel_clk;
    wire frame_clk;

    logic VGA_HS_wire, VGA_VS_wire, blank_wire;

    logic [10:0] drawX, drawY;
    clk_wiz_0 instance_name (.clk_out1(pixel_clk), .clk_in1(CLK100MHZ));
    vga_controller vga_controller_0 (.pixel_clk(pixel_clk), .rst(!CPU_RESETN), .hs(VGA_HS_wire), .vs(VGA_VS_wire), .drawX(drawX), .drawY(drawY), .blank(blank_wire));

    assign frame_clk = VGA_VS;

//blk_mem_gen_0 your_instance_name (
//  .clka(pixel_clk),    // input wire clka
//  .addra(drawX + drawY*640),  // input wire [10 : 0] addra
//  .douta(background)  // output wire [11 : 0] douta
//);

//    assign background = 12'hFFF;

    graphics_driver graphics_driver0 (.pixel_clk(pixel_clk), .rst(!CPU_RESETN), .blank_in(blank_wire), .hs_in(VGA_HS_wire), .vs_in(VGA_VS_wire), .drawX(), .drawY(), .background(background), .foreground(foreground), .hs(VGA_HS), .vs(VGA_VS), .frame_clk(), .RGB({VGA_R, VGA_G, VGA_B}));

    char_driver char_drive0(.clk(frame_clk), .rst(!CPU_RESETN), .controls({BTND, BTNR, BTNL, BTNU}), .drawX(drawX), .drawY(drawY), .char_color(foreground)); //, .controls({BTNU, BTNL, BTNR, BTND})

    logic [7:0]keycode;
    logic valid;
    ps2_keyboard ps2_keyboard_0(.clk(pixel_clk), .ps2_data(PS2_DATA), .ps2_clk(PS2_CLK), .keycode(keycode), .key_valid(valid));
    
always_ff @(posedge frame_clk) begin
    case(keycode)
        8'h75: background <= 12'hF00; // Up Arrow, Red color
        8'h72: background <= 12'h0F0; // Down Arrow, Green color
        8'h6B: background <= 12'h00F; // Left Arrow, Blue color
        8'h74: background <= 12'hFFF; // Right Arrow, White color
//        default: background <= 12'hF00; // Default to Black if no key matches
    endcase
end



    

//module ps2_keyboard(
//    input wire clk,             // System clock
//    input wire ps2_data,        // PS/2 data line
//    input wire ps2_clk,         // PS/2 clock line
//    output reg [7:0] keycode,   // Last key code received
//    output reg key_valid        // High when a key has been received
//);





endmodule
