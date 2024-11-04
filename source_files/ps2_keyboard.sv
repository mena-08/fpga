`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 03:30:34 PM
// Design Name: 
// Module Name: ps2_keyboard
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


module ps2_keyboard(
    input wire clk,             // System clock
    input wire ps2_data,        // PS/2 data line
    input wire ps2_clk,         // PS/2 clock line
    output reg [7:0] keycode,   // Last key code received
    output reg key_valid        // High when a key has been received
);

    reg [10:0] shift_reg = 0;   // Shift register to capture PS/2 frame
    reg [3:0] bit_count = 0;    // Bit counter

    always @(negedge ps2_clk) begin
        shift_reg <= {ps2_data, shift_reg[10:1]};
        bit_count <= bit_count + 1;
        
        // After 11 bits, we have a complete frame
        if (bit_count == 11) begin
            keycode <= shift_reg[8:1];  // Extract 8 data bits (ignore start, parity, stop bits)
            key_valid <= 1'b1;
            bit_count <= 0;             // Reset counter for next frame
        end else begin
            key_valid <= 1'b0;
        end
    end
endmodule
