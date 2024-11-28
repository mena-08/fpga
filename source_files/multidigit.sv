`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 07:29:46 PM
// Design Name: 
// Module Name: multidigit
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


module multidigit(
    input clk,
    input rst,
    input logic [3:0]dig7,
    input logic [3:0]dig6,
    input logic [3:0]dig5,
    input logic [3:0]dig4,
    input logic [3:0]dig3,
    input logic [3:0]dig2,
    input logic [3:0]dig1,
    input logic [3:0]dig0,
    output logic a, b, c, d, e, f, g,
    output logic [7:0]an
    );
    
    //  num variable to hold current digit to display
    logic [3:0]num;
    
    always_ff @ (posedge clk) begin
    
        if (rst)    // Sync Reset
            an <= 8'hff;

        else begin
            //  Set first digit only if all digits not asserted
            unique case (an)
                8'b11111111    :   an[0] <= 0; // All digits are off
                8'b01111111    :   an[0] <= 0; //  Last cycle the last digit was asserted
                default :   an[0] <= 1;
            endcase
                    
            //  Shift register to set digits sequintially
            an[1] <= an[0];
            an[2] <= an[1];
            an[3] <= an[2];
            an[4] <= an[3];
            an[5] <= an[4];
            an[6] <= an[5];
            an[7] <= an[6];           
        end
    end
    
    always_comb begin
        
        //  Connect corresponding dig signal to input of sevenseg
        unique case (an)
            8'b11111110    :   num = dig0;
            8'b11111101    :   num = dig1;
            8'b11111011    :   num = dig2;
            8'b11110111    :   num = dig3;
            8'b11101111    :   num = dig4;
            8'b11011111    :   num = dig5;
            8'b10111111    :   num = dig6;
            8'b01111111    :   num = dig7;
            default        :   num = 8'h00;
        endcase    
    end
    
    //  Seven segment translator
    sevenseg hex_driver (.num(num), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g));

    
endmodule









