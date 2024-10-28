`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 12:38:12 PM
// Design Name: 
// Module Name: vga_tb
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


module vga_tb(

    );
    
        // Testbench signals
    reg clk_main;            // 100 MHz clock signal
    reg rst;                 // Reset signal
    wire hs, vs;             // Horizontal sync and vertical sync signals
    wire r,g,b;
    wire [10:0]drawY;
    wire [10:0]drawX;
    wire pixel_clk;
    wire blank;
    // Instantiate the VGA controller module

// project_toplevel vga(

//    .CLK100MHZ(clk_main),
//    .CPU_RESETN(!rst),
    
//    .VGA_HS(hs),
//    .VGA_VS(vs),
//    .VGA_R(R),
//    .VGA_G(G),
//    .VGA_B(B),
//    .drawX(drawX),
//    .drawY(drawY)
//    );

 vga_controller vga(
    
    .*
    );

    // Clock generation: 100 MHz clock with a 10 ns period
    initial begin
        clk_main = 0;
        forever #1 clk_main = ~clk_main; // Toggle clock every 5 ns for a 10 ns period
    end

    // Testbench initialization
    initial begin
        // Initialize signals
        rst = 1; // Keep reset low
        #2
        rst = 0;


        // Let the simulation run for a specified amount of time
        #90000000; // Run the simulation for 1000 ns

        // End simulation
        $finish;
    end
    
endmodule
