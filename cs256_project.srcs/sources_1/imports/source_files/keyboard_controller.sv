`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 02:54:15 PM
// Design Name: 
// Module Name: keyboard_controller
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


module keyboard_controller(
    input logic clk,           // System clock
    input logic ps2_clk,       // PS/2 clock
    input logic ps2_data,      // PS/2 data
    output logic [3:0] action  // Output action (e.g., move directions)
);

    // Signals from ps2_keyboard module
    logic [7:0] keycode;
    logic key_valid;
    logic key_release;

    // Instantiate ps2_keyboard module
    ps2_keyboard ps2_inst (
        .clk(clk),
        .ps2_clk(ps2_clk),
        .ps2_data(ps2_data),
        .keycode(keycode),
        .key_valid(key_valid),
        .key_release(key_release)
    );

    // Map keycodes to actions
    always_ff @(posedge clk) begin
        if (key_valid && !key_release) begin
            case (keycode)
                8'h75: action <= 4'b0001; // Up
                8'h72: action <= 4'b0010; // Down
                8'h6B: action <= 4'b0100; // Left
                8'h74: action <= 4'b1000; // Right
                default: action <= 4'b0000; // No action
            endcase
        end else if (key_release) begin
            action <= 4'b0000; // Reset action on key release
        end
    end
endmodule