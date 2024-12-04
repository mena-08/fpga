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
    
    //keyboard input
    input PS2_CLK,
    input PS2_DATA,
    
    //fpga buttons
    input BTNC, BTNU, BTNL, BTNR, BTND,
    
    //VGA values
    output VGA_HS,
    output VGA_VS,
    output [3:0]VGA_R,
    output [3:0]VGA_G,
    output [3:0]VGA_B,
    
    //7segment display
    output [7:0]LED,
    output CA, CB, CC, CD,CE,CF, CG, DP,
    output [7:0] AN
    );
    
    //sprites
    logic [11:0]background, foreground, char_color, back_rom;
    wire pixel_clk;
    wire frame_clk;

    logic VGA_HS_wire, VGA_VS_wire, blank_wire;
    logic [10:0] drawX, drawY;
    
    //create our clock
    clk_wiz_0 instance_name (.clk_out1(pixel_clk), .clk_in1(CLK100MHZ));
    vga_controller vga_controller_0 (.pixel_clk(pixel_clk), .rst(!CPU_RESETN), .hs(VGA_HS_wire), .vs(VGA_VS_wire), .drawX(drawX), .drawY(drawY), .blank(blank_wire));

    assign frame_clk = VGA_VS;

    blk_mem_gen_0 back_rom_0 (
      .clka(pixel_clk),    // input wire clka
      .addra(drawX + drawY*640),  // input wire [10 : 0] addra
      .douta(back_rom)  // output wire [11 : 0] douta
    );

    //assign background = 12'hFFF;

    // PS/2 Keyboard Control
    logic [31:0] keycode;   //last received keycode
    logic valid;            //valid keycode
    logic up, down, left, right; //movement controls derived from keyboard

    reg CLK50MHZ=0;    

    always @(posedge(CLK100MHZ))begin
        CLK50MHZ<=~CLK50MHZ;
    end

    PS2Receiver keyboard (
        .clk(CLK50MHZ),
        .kclk(PS2_CLK),
        .kdata(PS2_DATA),
        .keycodeout(keycode[31:0])
    );
    
    //test our keycodes
    assign LED = keycode[15:0];
    
    //7segment display
    logic hex_clk;
    logic [16:0] hex_counter=0;
    assign hex_clk = hex_counter[16];

     always_ff @ (posedge CLK100MHZ ) begin
       hex_counter <= hex_counter+1; 
    end
       
    
    //hold the previous keycode
    logic [31:0] prev_keycode;
    
    //decode keycodes to movement controls, including diagonals
    always_ff @(posedge CLK100MHZ or negedge CPU_RESETN) begin
        if (!CPU_RESETN) begin
            up <= 0;
            down <= 0;
            left <= 0;
            right <= 0;
            prev_keycode <= 32'b0;  // Reset previous keycode
        end else begin
            if (keycode) begin
                if (keycode[15:8] == 8'hE0) begin
                    //extended scan codes for pressed keys
                    case (keycode[7:0])
                        8'h75: up <= 1;        // Up arrow key
                        8'h72: down <= 1;      // Down arrow key
                        8'h6B: left <= 1;      // Left arrow key
                        8'h74: right <= 1;     // Right arrow key
                        default: begin
                            //do nothing
                        end
                    endcase
                end else if (keycode[15:8] == 8'hF0) begin
                    //break codes for released keys
                    case (keycode[7:0])
                        8'h75: up <= 0;        // Up arrow key released
                        8'h72: down <= 0;      // Down arrow key released
                        8'h6B: left <= 0;      // Left arrow key released
                        8'h74: right <= 0;     // Right arrow key released
                        default: begin
                            //do nothing
                        end
                    endcase
                end
            end
                //uodate the previous keycode
                prev_keycode <= keycode;
            end
    end

    
    graphics_driver graphics_driver0 (.pixel_clk(pixel_clk), .rst(!CPU_RESETN), .blank_in(blank_wire), .hs_in(VGA_HS_wire), .vs_in(VGA_VS_wire), .drawX(), .drawY(), .background(background), .foreground(foreground), .hs(VGA_HS), .vs(VGA_VS), .frame_clk(), .RGB({VGA_R, VGA_G, VGA_B}));

    //char_driver char_drive0(.pixel_clk(pixel_clk), .frame_clk(frame_clk), .rst(!CPU_RESETN), .en(en), .controls({BTND, BTNR, BTNL, BTNU}), .drawX(drawX), .drawY(drawY), .char_color(char_color)); //, .controls({BTNU, BTNL, BTNR, BTND})
    parameter transparent_mask = 12'h000;
    char_driver char_drive0(.pixel_clk(pixel_clk), .frame_clk(frame_clk), .rst(!CPU_RESETN), .en(en), .controls({down, right , left, up}), .drawX(drawX), .drawY(drawY), .char_color(char_color)); //, .controls({BTNU, BTNL, BTNR, BTND})


    //enemy colors for 4 enemies and 4 flipped enemies
    logic [11:0] enemy_color[0:7], enemy_flipped_color[0:7];
    logic[11:0]random_control[0:15];

    lfsr_random_dynamic_seed prbs(.clk(pixel_clk), .rst(!CPU_RESETN), .random_out(random_control[0]));

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

    //enemy enable logic
    logic en, enemy_en;
    assign en = !hit;

    logic [8:0]en_counter=0;
    always_ff @ (posedge pixel_clk) begin
        if(!CPU_RESETN)
            enemy_en <= 0;
        else if (en & !enemy_en)
            enemy_en <= (down||right||left||up);
        else if (!en)
            enemy_en <= 0;
        else
            enemy_en <= enemy_en;

    end

        
    //instantiate enemy modules
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

    //foreground logic, if char_color is transparent, combine all enemy colors
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

    //hit detection, if hit, change background color
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

    //background color update based on hit detection
    always_ff @ (posedge frame_clk) begin
        if(hit)
            hit_frame <= 1;
        else
            hit_frame <= 0;
    end

    assign background = back_rom | {hit_frame,hit_frame,hit_frame,hit_frame, 8'h00};   //Add Redshift

    //timer logic
    logic start_timer = 0;
    logic [15:0]time_counter = 0;
    logic [3:0] time_sec, time_tens, time_hund;

    always_ff @ (posedge frame_clk or negedge CPU_RESETN) begin
        if(!CPU_RESETN) begin
            time_counter <= 0;
            start_timer <= 0;
        end else begin
            if(en && start_timer)
                time_counter <= time_counter+1;
            else
                time_counter <= time_counter;
            if(left||right||up||down) 
                start_timer <= 1;
            else
                start_timer <= start_timer;
        end
        time_sec <= (time_counter/60)%10;
        time_tens <= (time_counter/600)%10;
        time_hund <= (time_counter/6000)%10; 
    end
        
   multidigit multi_ins(
        .clk(hex_clk),              // Connect the clock signal
        .rst(!CPU_RESETN),          // Reset signal (active low, inverted here)
        .dig7(4'h0),                // Set digit 7 to 0
        .dig6(4'h0),                // Set digit 6 to 0
        .dig5(4'h0),                // Set digit 5 to 0
        .dig4(4'h0),                // Set digit 4 to 0
        .dig3(4'h0),                // Map hundreds of seconds to digit 3
        .dig2(time_hund),           // Map tens of seconds to digit 2
        .dig1(time_tens),           // Map seconds to digit 1
        .dig0(time_sec),            // Set digit 0 to 0 as padding
        .a(CA),                     // Map segment 'a' to CA
        .b(CB),                     // Map segment 'b' to CB
        .c(CC),                     // Map segment 'c' to CC
        .d(CD),                     // Map segment 'd' to CD
        .e(CE),                     // Map segment 'e' to CE
        .f(CF),                     // Map segment 'f' to CF
        .g(CG),                     // Map segment 'g' to CG
        .an(AN)                     // Map the active-low anode control to AN
    );


endmodule
