`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2024 08:08:46 PM
// Design Name: 
// Module Name: enemy
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


module enemy(

    input pixel_clk, frame_clk, rst, en,
    input [10:0] drawX, drawY,
    input [15:0] control,
        
    output logic [11:0] enemy_color
    

    );
    
    
    parameter width = 8, length = 48;
    parameter x_size = width, y_size = length;
    parameter x_start = 640 / 8, y_start = 480;

    logic signed[10:0] x_pos = x_start, y_pos = y_start;
    logic signed [10:0] x_new, y_new;

    logic signed [3:0] x_vel = 0, y_vel = -3;
    logic [10:0]random = 0;
    
    logic[9:0]start_in;
    logic [3:0]speed;
    logic flip,direction,start=1;
    assign start_in = control[9:0];
//    assign direction = control[10];
    assign flip = control[10];
    logic flip_reg; //Hold sprite direction
    assign speed = 3+control[12:11]+counter%3;

    //    Movement Controls
    logic [9:0]counter=0;
    always_ff @ (posedge frame_clk or posedge rst) begin
        if (rst) begin 
            x_pos <= x_start;
            y_pos <= y_start;
            y_vel <= -1;
            start <= 1;
            counter <= 1;
        end else if (en) begin

            
            counter <= counter+1;
    
            if ((x_new <= -x_size || x_new > 640 + x_size) || (y_new <= -y_size || y_new > 480 + y_size) || start == 1) begin // Enemy reached end of screen reset position
                    start <= 0;
                    //random <= random + 64;
//                x_pos <= (x_start + random)%640;
//                y_pos <= y_start;
//                    x_pos <= start_in%640;
////                    y_size <= length;
////                    x_size <= width;
//                    x_vel <= 0;
////                    if(flip) begin
//                    y_pos <=  480;
//                    y_vel <= -3;
                
       
                    //            if(en) begin
//                if(direction) begin
                    x_pos <= (start_in+counter)%640;
//                    y_size <= length;
//                    x_size <= width;
                    x_vel <= 0;
                    if(flip) begin
                        y_pos <=  480;
                        y_vel <= -speed;
                    end else begin
                        y_pos <=  -y_size;
                        y_vel <= speed;
                    end
                    
                    flip_reg <= flip;
                    
//                end else begin
//                    x_pos <= start_in%480;
//                    y_size <= width;
//                    x_size <= length;
//                    y_vel <= 0;
//                    if(flip) begin
//                        x_pos <=  640;
//                        x_vel <= -3;
//                    end else begin
//                        x_pos <=  -x_size;
//                        x_vel <= 3;                    
//                    end                     
//               end                       
               
                
                
            end else begin
                x_pos <= x_new;
                y_pos <= y_new;
            end            

//            x_pos <= x_new%640;
//            y_pos <= y_new%480;


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
    logic is_char;
    logic [8:0] char_addr;

    always_comb begin
        // Detect whether the character is currently being drawn.
        is_char = ($signed(drawX) >= $signed(x_pos)) && 
                  ($signed(drawX) < $signed(x_pos + x_size)) && 
                  ($signed(drawY) >= $signed(y_pos)) && 
                  ($signed(drawY) < $signed(y_pos + y_size));
                  
        if (is_char) begin
            if(!flip_reg)    
                char_addr = (drawY - y_pos) + y_size * (x_size - (drawX - x_pos) - 1); // Rotated 90° clockwise
            else   
                char_addr = (y_size - (drawY - y_pos) - 1) + y_size * (x_size - (drawX - x_pos) - 1);
        end else
            char_addr = 0;  // Transparent when not visible
            


    end

enemy_ROM enemy_ROM_0 (
  .clka(pixel_clk),    // input wire clka
  .addra(char_addr),  // input wire [7 : 0] addra
  .douta(enemy_color)  // output wire [11 : 0] douta
);

endmodule