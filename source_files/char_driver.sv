`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 10:34:09 AM
// Design Name: 
// Module Name: char_driver
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

module char_driver(

    input clk, rst,
    input [10:0] drawX, drawY,
    input [3:0]controls,
    
    output logic [11:0] char_color

);

    parameter x_start = 640 / 2, y_start = 480 / 2;
    parameter x_size = 16, y_size = 32;
    logic [10:0] x_pos = x_start, y_pos = y_start;
    logic signed [10:0] x_new, y_new;

    logic signed [3:0] x_vel = 0, y_vel = 0, x_acc = 0, y_acc = 0;
    
    //    Movement Controls
    always_ff @ (posedge clk or posedge rst) begin
        if (rst) begin 
            x_pos <= x_start;
            y_pos <= y_start;
//            x_vel <= 1;  // Reset velocity to default
//            y_vel <= 1; 
        end else begin
            // Handle X-axis bouncing with explicit boundary constraints
            if(x_new < 0) begin
                x_pos <= 0;   // Stick to left boundary
//                x_vel <= 1;   // Bounce to the right
            end else if(x_new + x_size >= 640) begin
                x_pos <= 640 - x_size;  // Stick to right boundary
//                x_vel <= -1;  // Bounce to the left
            end else begin
                x_pos <= x_new;  // Normal position update
            end

            // Handle Y-axis bouncing with explicit boundary constraints
            if(y_new < 0) begin
                y_pos <= 0;   // Stick to top boundary
//                y_vel <= 1;   // Bounce downwards
            end else if(y_new + y_size >= 480) begin
                y_pos <= 480 - y_size;  // Stick to bottom boundary
//                y_vel <= -1;  // Bounce upwards
            end else begin
                y_pos <= y_new;  // Normal position update
            end
            
            
            if(controls[0]) //ULRD
                y_vel <= -5;
            else if(controls[3])
                y_vel <= 5;
            else
                y_vel <= 0;
            if(controls[1])
                x_vel <= -5;
            else if(controls[2])
                x_vel <= 5;
            else
                x_vel <= 0;           
                
            
        end
    end
    
    // Update new position based on velocity
    always_comb begin
        // Calculate the next position
        x_new = $signed(x_pos) + $signed(x_vel);
        y_new = $signed(y_pos) + $signed(y_vel);
    end

    // Color and character rendering logic
    parameter transparent_mask = 12'hEEE;
    logic is_char;

    always_comb begin
        // Detect whether the character is currently being drawn.
        is_char = ((drawX >= x_pos) && (drawX < x_pos + x_size) && (drawY >= y_pos) && (drawY < y_pos + y_size));

        if (is_char)
//            char_color = 12'hFA5;  // Character color when visible
            char_color = (drawX - x_pos)*128;
        else
            char_color = transparent_mask;  // Transparent when not visible
    end

endmodule
