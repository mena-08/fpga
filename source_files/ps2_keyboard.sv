`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: ps2_keyboard
// Description: PS/2 keyboard decoder with action mapping for arrow keys.
//////////////////////////////////////////////////////////////////////////////////

module ps2_keyboard(
    input wire clk,             // System clock
    input wire ps2_data,        // PS/2 data line
    input wire ps2_clk,         // PS/2 clock line
    output reg [3:0] action     // Output action (e.g., move directions)
);

    reg [10:0] shift_reg = 0;    // Shift register to capture PS/2 frame
    reg [3:0] bit_count = 0;     // Bit counter
    reg key_valid = 0;           // High when a valid key is received
    reg key_release = 0;         // High when a key release event occurs
    reg [7:0] keycode = 0;       // Current keycode being processed

    always @(negedge ps2_clk or posedge clk) begin
        if (ps2_clk == 1'b0) begin
            // Shift data into the register
            shift_reg <= {ps2_data, shift_reg[10:1]};
            bit_count <= bit_count + 1;
            
            // Process frame when 11 bits are received
            if (bit_count == 11) begin
                bit_count <= 0; // Reset bit counter
                
                // Handle special codes
                if (shift_reg[8:1] == 8'hF0) begin
                    key_release <= 1'b1; // Release code
                end else begin
                    keycode <= shift_reg[8:1]; // Extract keycode
                    key_valid <= 1'b1;
                end
            end
        end
    end

    // Map keycodes to actions
    always @(posedge clk) begin
        if (key_valid && !key_release) begin
            case (keycode)
                8'h75: action <= 4'b0001; // Up Arrow
                8'h72: action <= 4'b0010; // Down Arrow
                8'h6B: action <= 4'b0100; // Left Arrow
                8'h74: action <= 4'b1000; // Right Arrow
                default: action <= 4'b0000; // No action
            endcase
        end else if (key_release) begin
            action <= 4'b0000; // Reset action on key release
            key_valid <= 1'b0; // Clear valid flag
        end
    end
endmodule