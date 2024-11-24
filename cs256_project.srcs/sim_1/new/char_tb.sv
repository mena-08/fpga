`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 11:14:12 AM
// Design Name: 
// Module Name: char_tb
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


module char_tb(

    );
    
    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in ns
    parameter RESET_DURATION = 20; // Duration of reset in ns
    parameter NUM_CYCLES = 5000; // Number of cycles to run after reset

    // Testbench signals
    logic clk;
    logic rst;
    logic [10:0] drawX;
    logic [10:0] drawY;
    
    logic [10:0] x_pos;
    logic [10:0] y_pos;
//    assign x_pos = uut.x_pos;
//    assign y_pos = uut.y_pos;
    
    logic [10:0] x_new;
    logic [10:0] y_new;
//    assign x_new = uut.x_new;
//    assign y_new = uut.y_new;
    
    logic [11:0] random;

    logic vs, hs;

    // Instantiate the char_driver module
    lfsr_random_dynamic_seed uut (
        .clk(clk),
        .rst(rst),
        
        .random_out(random)
    );

//module lfsr_random_dynamic_seed (
//    input logic clk,              // Clock signal
//    input logic rst,              // Reset signal
//    output logic [11:0] random_out  // 12-bit random output
//);

//module project_toplevel(

//    input CLK100MHZ,
//    input CPU_RESETN,
    
//    output VGA_HS,
//    output VGA_VS,
//    output [3:0]VGA_R,
//    output [3:0]VGA_G,
//    output [3:0]VGA_B
//    );

    // Clock generation
    initial begin
        clk = 0;
        forever #(CLK_PERIOD / 2) clk = ~clk; // Toggle clock every half period
    end

    // Test sequence
    initial begin
        // Initialize signals
        rst = 1; // Assert reset
        drawX = 0;
        drawY = 0;

        // Wait for some time
        #(RESET_DURATION);
        rst = 0; // Deassert reset

        // Test the character movement and drawing
        for (int i = 0; i < NUM_CYCLES; i++) begin
            // Set draw position based on current x_pos and y_pos from the char_driver
//            drawX = uut.drawX;
//            drawY = uut.drawY;

//            x_pos = uut.char_drive0.x_pos;
//            y_pos = uut.char_drive0.y_pos;

            // Wait for a clock cycle
            #(CLK_PERIOD);
        end

        // Add additional tests by changing drawX and drawY
        // Move the character off-screen to test boundary conditions
        drawX = 700; // Out of bounds
        drawY = 500; // Out of bounds

        // Wait for a clock cycle
        #(CLK_PERIOD);

        // Print final values for verification
//        $display("Final char_color: %h", char_color);

        // Finish simulation
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time: %0t | drawX: %0d | drawY: %0d", 
                 $time, drawX, drawY);
    end
    
endmodule
