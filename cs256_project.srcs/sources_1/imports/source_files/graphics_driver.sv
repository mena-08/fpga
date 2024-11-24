`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 05:13:13 PM
// Design Name: 
// Module Name: graphics_driver
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


module graphics_driver(

    input logic pixel_clk, rst, blank_in, hs_in, vs_in,
    input logic [10:0]drawX, drawY,

    input [11:0]background, foreground,
    
    output logic hs, vs, frame_clk,
    output [11:0]RGB

    );

    //Delay VGA signals by 2 clock cycles
    logic hs_reg0, vs_reg0, blank_reg0, blank;

    always_ff @ (posedge pixel_clk) begin
    
        
        if (rst) begin
            hs <= 10'd0;
            vs <= 10'd0;
            blank = 0; 
        end 
    
        blank_reg0 <= blank_in;
        hs_reg0 <= hs_in;
        vs_reg0 <= vs_in;        
        
        blank <= blank_reg0;
        hs <= hs_reg0;
        vs <= vs_reg0;
    
    end   
    
    
    logic [11:0]color;
    parameter transparent_mask = 12'h000;
    assign RGB = color;
    
    //  Set the transparency of color    
    always_comb begin
    
        if(blank)
            color = 12'd0;
        else begin
            if(foreground == transparent_mask)
                color = background;
            else
                color = foreground;
        end
        
    end
    
//blk_mem_gen_0 your_instance_name (
//  .clka(pixel_clk),    // input wire clka
//  .addra(drawX + drawY*640),  // input wire [10 : 0] addra
//  .douta(background)  // output wire [11 : 0] douta
//);
    
endmodule
