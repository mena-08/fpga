module lfsr_random_dynamic_seed (
    input logic clk,              // Clock signal
    input logic rst,              // Reset signal
    output logic [11:0] random_out  // 12-bit random output
);

    logic [11:0] lfsr_reg;
  logic [15:0] cycle_counter;//reseeding
    parameter SEED_INTERVAL = 1000;//interval clocks for reseeding

    //initial seed value
    logic [11:0] seed_value = 12'h1;

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            lfsr_reg <= seed_value;// Initial seed
            cycle_counter <= 0;
        end else begin
            //increment cycle counter and then reseed
            if (cycle_counter >= SEED_INTERVAL) begin
                cycle_counter <= 0;       //reset counter
                seed_value <= lfsr_reg;   //change the seed dynamically
                lfsr_reg <= seed_value;   //reinitialize LFSR with new seed
            end else begin
                cycle_counter <= cycle_counter + 1;
                //XOR feedback taps for a 12-bit LFSR
                lfsr_reg <= {lfsr_reg[10:0], lfsr_reg[11] ^ lfsr_reg[10] ^ lfsr_reg[3] ^ lfsr_reg[0]};
            end
        end
    end

    assign random_out = lfsr_reg;

endmodule
