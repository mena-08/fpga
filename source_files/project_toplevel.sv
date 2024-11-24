`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 01:09:24 PM
// Design Name: 
// Module Name: project_toplevel
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


module project_toplevel(

    input CLK100MHZ,
    input CPU_RESETN,
    
    input PS2_CLK,
    input PS2_DATA,
    
//    Buttons
    input BTNC, BTNU, BTNL, BTNR, BTND,
    
    output VGA_HS,
    output VGA_VS,
    output [3:0]VGA_R,
    output [3:0]VGA_G,
    output [3:0]VGA_B
    );
    
    logic [11:0]background, foreground, char_color, back_rom;
    wire pixel_clk;
    wire frame_clk;

    logic VGA_HS_wire, VGA_VS_wire, blank_wire;

    logic [10:0] drawX, drawY;
    clk_wiz_0 instance_name (.clk_out1(pixel_clk), .clk_in1(CLK100MHZ));
    vga_controller vga_controller_0 (.pixel_clk(pixel_clk), .rst(!CPU_RESETN), .hs(VGA_HS_wire), .vs(VGA_VS_wire), .drawX(drawX), .drawY(drawY), .blank(blank_wire));

    assign frame_clk = VGA_VS;

    blk_mem_gen_0 back_rom_0 (
      .clka(pixel_clk),    // input wire clka
      .addra(drawX + drawY*640),  // input wire [10 : 0] addra
      .douta(back_rom)  // output wire [11 : 0] douta
    );

//    assign background = 12'hFFF;

    graphics_driver graphics_driver0 (.pixel_clk(pixel_clk), .rst(!CPU_RESETN), .blank_in(blank_wire), .hs_in(VGA_HS_wire), .vs_in(VGA_VS_wire), .drawX(), .drawY(), .background(background), .foreground(foreground), .hs(VGA_HS), .vs(VGA_VS), .frame_clk(), .RGB({VGA_R, VGA_G, VGA_B}));

//    char_driver char_drive0(.pixel_clk(pixel_clk), .frame_clk(frame_clk), .rst(!CPU_RESETN), .en(en), .controls({BTND, BTNR, BTNL, BTNU}), .drawX(drawX), .drawY(drawY), .char_color(char_color)); //, .controls({BTNU, BTNL, BTNR, BTND})
    parameter transparent_mask = 12'h000;
    char_driver char_drive0(.pixel_clk(pixel_clk), .frame_clk(frame_clk), .rst(!CPU_RESETN), .en(en), .controls(keycode), .drawX(drawX), .drawY(drawY), .char_color(char_color)); //, .controls({BTNU, BTNL, BTNR, BTND})



// Declare enemy colors for 4 enemies and 4 flipped enemies
logic [11:0] enemy_color[0:7], enemy_flipped_color[0:7];


    logic[11:0]random_control[0:15];
    lfsr_random_dynamic_seed prbs(.clk(pixel_clk), .rst(!CPU_RESETN), .random_out(random_control[0]));
//    assign random_control[0] = 12'hFFF;
always_ff @(posedge pixel_clk) begin
    // Shift all registers, and load the new value into the first register
    random_control[1]  <= random_control[0];
    random_control[2]  <= random_control[1];
    random_control[3]  <= random_control[2];
    random_control[4]  <= random_control[3];
    random_control[5]  <= random_control[4];
    random_control[6]  <= random_control[5];
    random_control[7]  <= random_control[6];
    random_control[8]  <= random_control[7];
    random_control[9]  <= random_control[8];
    random_control[10] <= random_control[9];
    random_control[11] <= random_control[10];
    random_control[12] <= random_control[11];
    random_control[13] <= random_control[12];
    random_control[14] <= random_control[13];
    random_control[15] <= random_control[14];
end

logic en, enemy_en;
assign en = !hit;

logic [8:0]en_counter=0;
always_ff @ (posedge pixel_clk) begin
    if(!CPU_RESETN)
        enemy_en <= 0;
    else if (en & !enemy_en)
        enemy_en <= (BTND||BTNR|| BTNL||BTNU);
     else if (!en)
        enemy_en <= 0;
     else
        enemy_en <= enemy_en;

end

    
// Instantiate enemy modules
genvar i;
generate
    for(i = 0; i < 8; i = i + 1) begin : enemies
        enemy enemy_inst(
            .pixel_clk(pixel_clk), .frame_clk(frame_clk), .rst(!CPU_RESETN), .en(enemy_en),
            .control({random_control[2*i],1'b1}), .drawX(drawX), .drawY(drawY),
            .enemy_color(enemy_color[i])
        );
        enemy_flipped enemy_flipped_inst(
            .pixel_clk(pixel_clk), .frame_clk(frame_clk), .rst(!CPU_RESETN), .en(enemy_en),
            .control({random_control[2*i+1],1'b1}), .drawX(drawX), .drawY(drawY),
            .enemy_color(enemy_flipped_color[i])
        );
    end
endgenerate


//assign enemy_en = (en_counter >= 179) ? 1 : 0;

// Foreground logic: Combine all enemy colors if char_color is transparent
always_ff @ (posedge pixel_clk) begin
    foreground <= (char_color == transparent_mask) ? 
                  (enemy_color[0] | enemy_flipped_color[0] | 
                   enemy_color[1] | enemy_flipped_color[1] | 
                   enemy_color[2] | enemy_flipped_color[2] | 
                   enemy_color[3] | enemy_flipped_color[3] | 
                   enemy_color[4] | enemy_flipped_color[4] | 
                   enemy_color[5] | enemy_flipped_color[5] | 
                   enemy_color[6] | enemy_flipped_color[6] | 
                   enemy_color[7] | enemy_flipped_color[7]) : 
                  char_color;
end

// Hit detection: Set hit if any enemy or flipped enemy is non-transparent
logic hit = 0, hit_frame;
always_ff @(posedge pixel_clk) begin
//    if (drawX == 0 && drawY == 0) 
//        hit <= 0;
    if(!CPU_RESETN)
        hit <= 0;
    // Check for hit condition
    if ((char_color != transparent_mask) && 
        (enemy_color[0] || enemy_flipped_color[0] || 
         enemy_color[1] || enemy_flipped_color[1] || 
         enemy_color[2] || enemy_flipped_color[2] || 
         enemy_color[3] || enemy_flipped_color[3] || 
         enemy_color[4] || enemy_flipped_color[4] || 
         enemy_color[5] || enemy_flipped_color[5] || 
         enemy_color[6] || enemy_flipped_color[6] || 
         enemy_color[7] || enemy_flipped_color[7])) 
    begin
        hit <= 1;
    end
end

// Background color update based on hit detection
    always_ff @ (posedge frame_clk) begin
        if(hit)
            hit_frame <= 1;
        else
            hit_frame <= 0;
    end

assign background = back_rom | {hit_frame,hit_frame,hit_frame,hit_frame, 8'h00};   //Add Redshift



//    logic[11:0] enemy_color0, enemy_color1;
//    enemy enemy_0(.pixel_clk(pixel_clk), .frame_clk(frame_clk), .rst(!CPU_RESETN), .control(16'hFFFF), .drawX(drawX), .drawY(drawY), .enemy_color(enemy_color0)); 
//    enemy_flipped enemy_1(.pixel_clk(pixel_clk), .frame_clk(frame_clk), .rst(!CPU_RESETN), .control(16'hFFFF), .drawX(drawX), .drawY(drawY), .enemy_color(enemy_color1)); 

//    always_ff @ ( posedge pixel_clk) begin
//        if(char_color == transparent_mask)
//            foreground <= enemy_color0 | enemy_color1;
//        else
//            foreground <= char_color;  
            
     
//    end

//    logic hit = 0;
//    always_ff @ (posedge pixel_clk) begin
//        if(drawX == 0 && drawY == 0)
//            hit <= 0;
//        if((char_color != transparent_mask) && (enemy_color0 || enemy_color1))
//            hit <= 1;
//    end

//    always_ff @ (posedge frame_clk) begin
//        if(hit)
//            background <= 12'hF00;
//        else
//            background <= 12'h0F0; 
//    end

//    assign foreground = char_color;
//    assign foreground = enemy_color;

    logic [3:0]keycode;
    logic valid;
    
    ps2_keyboard keyboard_controller (
        .clk(pixel_clk),       // Connect system clock
        .ps2_clk(PS2_CLK),     // Connect PS/2 clock
        .ps2_data(PS2_DATA),   // Connect PS/2 data line
        .action(keycode)       // Output keycode for actions
    );


always_ff @(posedge frame_clk) begin
   case(keycode)
       8'h75: background <= 12'hF00; // Up Arrow, Red color
       8'h72: background <= 12'h0F0; // Down Arrow, Green color
       8'h6B: background <= 12'h00F; // Left Arrow, Blue color
       8'h74: background <= 12'hFFF; // Right Arrow, White color
//        default: background <= 12'hF00; // Default to Black if no key matches
   endcase
end


endmodule
