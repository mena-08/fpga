module keyboard_controller (
    input clk,          // FPGA system clock
    input ps2_clk,      // PS/2 clock from keyboard
    input ps2_data,     // PS/2 data line
    output reg [7:0] keycode,  // Last received keycode
    output reg valid    // Indicates a valid keycode was received
);

    reg [10:0] shift_reg = 0;  // Shift register for incoming data
    reg [3:0] bit_count = 0;   // Bit counter
    reg [1:0] ps2_clk_sync = 2'b11;  // Synchronizer for PS2_CLK
    reg ps2_clk_filtered = 1;       // Debounced PS2_CLK
    reg break_code = 0;             // Indicates if a break code (F0) was received

    // Initialize outputs
    initial begin
        keycode = 8'b0;
        valid = 0;
    end

    // Synchronize PS2_CLK to the system clock domain
    always @(posedge clk) begin
        ps2_clk_sync <= {ps2_clk_sync[0], ps2_clk};
    end

    // Debounce PS2_CLK (simple edge-stabilizer)
    always @(posedge clk) begin
        if (ps2_clk_sync[1] == ps2_clk_sync[0])
            ps2_clk_filtered <= ps2_clk_sync[1];
    end

    // Detect falling edge of PS2_CLK
    wire ps2_clk_falling = (ps2_clk_filtered == 1) && (ps2_clk_sync[1] == 0);

    // Process data on falling edge of PS2_CLK
    always @(posedge clk) begin
        if (ps2_clk_falling) begin
            shift_reg <= {ps2_data, shift_reg[10:1]};  // Shift in data bit
            bit_count <= bit_count + 1;

            if (bit_count == 10) begin  // Full 11-bit frame received
                if (shift_reg[0] == 0 && shift_reg[10] == 1) begin
                    if (shift_reg[8:1] == 8'hF0) begin
                        break_code <= 1;  // Break code detected
                        valid <= 0;       // Ignore release events
                    end else if (!break_code) begin
                        keycode <= shift_reg[8:1];  // Store valid keycode
                        valid <= 1;                // Mark as valid key press
                    end else begin
                        break_code <= 0;  // Reset break code
                    end
                end
                bit_count <= 0;  // Reset bit counter
            end
        end
    end
endmodule
