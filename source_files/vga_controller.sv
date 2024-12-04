`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 11:25:18 AM
// Design Name: 
// Module Name: vga_controller
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


module vga_controller(
    
    input pixel_clk,                    //  Main Pixel Clk
    input rst,                          //  Sync Reset Signal
    
    output logic hs, vs,                //  Hsync and Vsync signals
    output logic [10:0] drawX, drawY,   //  Coordiantes of current pixel being drawn
    output logic blank
            
    );
    
    //  1280x800 VGA
//    parameter hpixels = 1679;
//    parameter hsync_size = 136;
//    parameter hbp = 200;
//    parameter h_res = 1280;
    
//    parameter vlines = 827;
//    parameter vsync_size = 3;
//    parameter vbp = 24;
//    parameter v_res = 800;    
    
//    640 x 480
    parameter hpixels = 799;
    parameter hsync_size = 96;
    parameter hbp = 48;
    parameter h_res = 640;
    
    parameter vlines = 524;
    parameter vsync_size = 2;
    parameter vbp = 33;
    parameter v_res = 480;
    
    
    logic [10:0] hc = 0, vc = 0;
    logic clk_50, clk_25;

    //increment and reset the vertical and horizontal counters
    always_ff @ (posedge pixel_clk) begin
        if (rst) begin
            hc <= 10'd0;
            vc <= 10'd0; end 
        else
            if( hc == 799 ) begin
                hc <= 10'd0;
                if ( vc == 524 ) 
                    vc <= 10'd0;             
                else
                    vc <= vc+1;
            end
            else
                hc <= hc+1;
    end    
        
    always_comb begin     
        if ((hc  >= 640+16) & (hc < 640+16+96))   // hsync_size
            hs = 1'b0;
        else
            hs = 1'b1;
        if ((vc  >= 480+10) & (vc < 480+10+2))     //  vsynce_size
            vs = 1'b0;
        else
            vs = 1'b1;    
    end

    always_comb begin
        if ( (hc < 640) & (vc < 480) )
            blank = 1'b0;
        else
            blank = 1'b1;
            
        if (blank == 1) begin    
            drawX = 999;
            drawY = 999; end
        
        else begin
            drawX = hc;
            drawY = vc;  end          
    end
    
endmodule
