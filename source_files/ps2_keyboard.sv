`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: ps2_keyboard
// Description: PS/2 keyboard decoder with action mapping for arrow keys.
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
// Company: Digilent Inc.
// Engineer: Thomas Kappenman
// 
// Create Date: 03/03/2015 09:33:36 PM
// Design Name: 
// Module Name: PS2Receiver
// Project Name: Nexys4DDR Keyboard Demo
// Target Devices: Nexys4DDR
// Tool Versions: 
// Description: PS2 Receiver module used to shift in keycodes from a keyboard plugged into the PS2 port
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module PS2Receiver(
    input logic clk,             // System clock
    input logic kclk,            // Keyboard clock
    input logic kdata,           // Keyboard data
    output logic [31:0] keycodeout // Output keycode
);

    // Internal signals
    logic kclkf, kdataf;         // Debounced signals
    logic [7:0] datacur;         // Current data byte
    logic [7:0] dataprev;        // Previous data byte
    logic [3:0] cnt;             // Counter for bit position
    logic [31:0] keycode;        // Internal keycode register
    logic flag;                  // Flag indicating keycode update

    // Initialize internal registers
    initial begin
        keycode <= 32'h00000000;
        cnt <= 4'b0000;
        flag <= 1'b0;
    end

    // Instantiate the debouncer module
    debouncer debounce(
        .clk(clk),
        .I0(kclk),
        .I1(kdata),
        .O0(kclkf),
        .O1(kdataf)
    );

    // Shift in keycode bits on the falling edge of the debounced keyboard clock
    always_ff @(negedge kclkf) begin
        case (cnt)
            0: ; // Start bit
            1: datacur[0] <= kdataf;
            2: datacur[1] <= kdataf;
            3: datacur[2] <= kdataf;
            4: datacur[3] <= kdataf;
            5: datacur[4] <= kdataf;
            6: datacur[5] <= kdataf;
            7: datacur[6] <= kdataf;
            8: datacur[7] <= kdataf;
            9: flag <= 1'b1; // Keycode fully received
            10: flag <= 1'b0; // Reset flag
        endcase

        if (cnt <= 9) 
            cnt <= cnt + 1;
        else if (cnt == 10) 
            cnt <= 0;
    end

    // Update the keycode register on the rising edge of the flag
    always_ff @(posedge flag) begin
        if (dataprev != datacur) begin
            keycode[31:24] <= keycode[23:16];
            keycode[23:16] <= keycode[15:8];
            keycode[15:8] <= dataprev;
            keycode[7:0] <= datacur;
            dataprev <= datacur;
        end
    end

    // Assign the output
    assign keycodeout = keycode;

endmodule
