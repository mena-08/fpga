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

    input pixel_clk, frame_clk, rst, en,
    input [10:0] drawX, drawY,
    input [3:0]controls,
    
    output logic [11:0] char_color

);

    parameter x_start = 640 / 2, y_start = 480 / 2;
    parameter x_size = 32, y_size = 32;
    logic [10:0] x_pos = x_start, y_pos = y_start;
    logic signed [10:0] x_new, y_new;

    logic signed [3:0] x_vel = 0, y_vel = 0;
//    logic signed [3:0] x_acc = 0, y_acc = 0;
//    parameter signed [3:0] MAX_VEL = 127;  // Maximum velocity limit (+ or -)


        
    logic UP,DOWN,LEFT,RIGHT;
    assign UP = controls[0] & en;
    assign DOWN = controls[3] & en;
    assign LEFT = controls[1] & en;
    assign RIGHT = controls[2] & en;
         
    //    Movement Controls
    always_ff @ (posedge frame_clk or posedge rst) begin
        if (rst) begin 
            x_pos <= x_start;
            y_pos <= y_start;
//            x_vel <= 1;  // Reset velocity to default
//            y_vel <= 1; 
        end else if(en) begin
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
        
        // Update Y-axis velocity
        if (UP)  // Up control
            y_vel <= -3;  // Clamp to -MAX_VEL
        else if (DOWN)  // Down control
            y_vel <= 3;    // Clamp to MAX_VEL
        else
            y_vel <= 0;  // No Y-axis control, reset Y velocity
        
        // Update X-axis velocity
        if (LEFT)  // Left control
            x_vel <= -3;  // Clamp to -MAX_VEL
        else if (RIGHT)  // Right control
            x_vel <= 3;    // Clamp to MAX_VEL
        else
            x_vel <= 0;  // No X-axis control, reset X velocity
                
                
        end
    end
    
    // Update new position based on velocity
    always_comb begin
        // Calculate the next position
        x_new = $signed(x_pos) + $signed(x_vel);
        y_new = $signed(y_pos) + $signed(y_vel);
    end

    // Color and character rendering logic
    parameter transparent_mask = 12'h000;
    logic is_char, diag = 0;
    logic [9:0] char_addr;
    logic [11:0] char_color0, char_color1;

    always_comb begin
        // Detect whether the character is currently being drawn.
        is_char = ((drawX >= x_pos) && (drawX < x_pos + x_size) && (drawY >= y_pos) && (drawY < y_pos + y_size));

        if (is_char)
//            char_color = 12'hFA5;  // Character color when visible
//            char_addr = (drawX - x_pos) + x_size*(drawY - y_pos);
            if (UP && !LEFT && !RIGHT) begin
                // Normal orientation (no flipping)
                char_addr = (drawX - x_pos) + x_size * (drawY - y_pos);
                diag = 0;
            end
            else if (DOWN && !LEFT && !RIGHT && !UP) begin
                // Flipped vertically (upside down)
                char_addr = (drawX - x_pos) + x_size * (y_size - (drawY - y_pos) - 1);
                diag = 0;
            end
            else if (LEFT && !UP && !DOWN && !RIGHT) begin
                // Flipped horizontally (left-right mirror)
                char_addr = (y_size - (drawY - y_pos) - 1) + y_size * (drawX - x_pos);
                diag = 0;
            end
            else if (RIGHT && !UP && !DOWN && !LEFT) begin
                // Flipped horizontally and vertically (both upside down and mirrored)
                char_addr = (drawY - y_pos) + y_size * (x_size - (drawX - x_pos) - 1);
                diag = 0;
            end
        
            // Default case: No direction change (Up and Right)
            else if (UP && RIGHT && !LEFT) begin
                // Default orientation (up and right, no flipping)
                char_addr = (drawX - x_pos) + x_size * (drawY - y_pos);
                diag = 1;
            end
            // Horizontal flip (up and left)
            else if (UP && LEFT && !RIGHT) begin
                // Flipped horizontally while keeping top-to-bottom
                char_addr = (y_size - (drawY - y_pos) - 1) + y_size * (drawX - x_pos);
                diag = 1;
            end
            // Upside down and left (down and left)
            else if (DOWN && LEFT && !RIGHT) begin
                // Flipped horizontally while upside down
                char_addr = (x_size - (drawX - x_pos) - 1) + x_size * (y_size - (drawY - y_pos) - 1);
                diag = 1;
            end
            // Upside down and right (down and right)
            else if (DOWN && RIGHT && !LEFT) begin
                // Flipped vertically (upside down)
                char_addr = (drawY - y_pos) + y_size * (x_size - (drawX - x_pos) - 1);
                diag = 1;
            end
            else begin
                // Default to facing up and right if no conditions are matched
                char_addr = (drawX - x_pos) + x_size * (drawY - y_pos);
                diag = 0;
            end
        else
            char_addr = 0;  // Transparent when not visible
            
            
            
    if(diag)
        char_color = char_color1;
    else
        char_color = char_color0;
   
    end
    
    char_ROM char_ROM_0 (
      .clka(pixel_clk),    // input wire clka
      .addra(char_addr),  // input wire [9 : 0] addra
      .douta(char_color0)  // output wire [11 : 0] douta
    );

    char_ROM_diag char_ROM_1 (
      .clka(pixel_clk),    // input wire clka
      .addra(char_addr),  // input wire [9 : 0] addra
      .douta(char_color1)  // output wire [11 : 0] douta
    );

endmodule
