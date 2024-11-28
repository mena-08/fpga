`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 06:03:37 PM
// Design Name: 
// Module Name: debouncer
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

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2015 09:08:56 PM
// Design Name: 
// Module Name: debouncer
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

module debouncer(
    input logic clk,       // System clock
    input logic I0,        // Input signal 0
    input logic I1,        // Input signal 1
    output logic O0,       // Debounced output 0
    output logic O1        // Debounced output 1
);

    logic [4:0] cnt0, cnt1;    // Counters for debounce timing
    logic Iv0 = 0, Iv1 = 0;    // Previous states of the input signals

    // Always block for debounce logic
    always_ff @(posedge clk) begin
        // Debounce logic for input I0
        if (I0 == Iv0) begin
            if (cnt0 == 19) 
                O0 <= I0;       // Set the debounced output after the counter reaches the threshold
            else 
                cnt0 <= cnt0 + 1; // Increment the counter
        end else begin
            cnt0 <= 5'b00000;   // Reset the counter
            Iv0 <= I0;          // Update the stored input value
        end

        // Debounce logic for input I1
        if (I1 == Iv1) begin
            if (cnt1 == 19) 
                O1 <= I1;       // Set the debounced output after the counter reaches the threshold
            else 
                cnt1 <= cnt1 + 1; // Increment the counter
        end else begin
            cnt1 <= 5'b00000;   // Reset the counter
            Iv1 <= I1;          // Update the stored input value
        end
    end

endmodule
