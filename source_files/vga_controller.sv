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
    
    input pixel_clk,                //  Main Pixel Clk

    input rst,                  //  Sync Reset Signal
    
    output logic hs, vs,          //  Hsync and Vsync signals
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

//    assign pixel_clk = clk_main;

    //  Potentially add sync signal
    
    // CLK Divider
//    always_ff @ (posedge clk_main)
//    begin
//        if (rst)
//            clk_50 <= 1'b0;
//        else
//            clk_50 = ~ (clk_50)  ;      
//    end
    
//        always_ff @ (posedge clk_50)
//    begin
//        if (rst)
//            clk_25 <= 1'b0;
//        else
//            clk_25 <= ~ (clk_25);      
//    end
    
    
        //  Increment and Reset the vertical and horizontal counters
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
//    assign drawX = hc;
//    assign drawY = vc;
    
        
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
    
//    logic [10:0]blank_mask;
    always_comb begin
        if ( (hc < 640) & (vc < 480) ) //
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
    
//    assign blank = blank_mask[0];
//    assign drawX = hc;
//    assign drawY = vc;

    
    
//    //  Horizontal and Veritcal Maxes

//    parameter hbp = 48, hfp = 16;
//    parameter hsync_size = 96, hdisplay_size = 640;
    
//    parameter vbp = 33, vfp = 10;
//    parameter vsync_size = 2, vdisplay_size = 480;
    
//    parameter [9:0] hpixels = hdisplay_size + hbp + hfp + hsync_size - 1;
//    parameter [9:0] vlines = vdisplay_size + vbp + vfp + vsync_size - 1;

//    logic [9:0] hc, vc;
//    logic clk_50, clk_25;

//    assign pixel_clk = clk_25;

//    //  Potentially add sync signal
    
//    // CLK Divider
//    always_ff @ (posedge clk_main or posedge rst)
//    begin
//        if (rst)
//            clk_50 <= 1'b0;
//        else
//            clk_50 = ~ (clk_50)  ;      
//    end
    
//        always_ff @ (posedge clk_50 or posedge rst)
//    begin
//        if (rst)
//            clk_25 <= 1'b0;
//        else
//            clk_25 <= ~ (clk_25);      
//    end
    
//    ///////////////////////////////////////////////
//    //  Increment and Reset the vertical and horizontal counters
//    always_ff @ (posedge clk_25 or posedge rst) begin
    
//        if (rst) begin
//            hc <= 10'd0;
//            vc <= 10'd0; end 
            
//        else
//            if( hc == hpixels ) begin
            
//                hc <= 10'd0;
//                if ( vc == vlines ) begin
//                    vc <= 10'd0;
//                    end
//                else
//                    vc <= vc+1;
//            end
//            else
//                hc <= hc+1;
//    end    
//    assign drawX = hc;
//    assign drawY = vc;
//    ///////////////////////////////////////////////
        
//    always_ff @ (posedge clk_25 or posedge rst) begin
    
//        if (rst) begin
//            hs <= 1'b0;
//            vs <= 1'b0;
//            end
//        else begin
//            if ( ((hc >= hdisplay_size+hfp-1) & (hc < hdisplay_size+hfp+hsync_size-1)))
//                hs <= 1'b0;
//            else 
//                hs <= 1'b1;
 
//            if ( ((vc >= vdisplay_size+vfp-1) & (vc < vdisplay_size+vfp+vsync_size-1)) )
//                vs <= 1'b0;
//            else
//                vs <= 1'b1;
//        end
//    end
    
//    logic blank_ff;
//    assign blank = blank_ff;
//    always_comb begin
//        if ( (hc >= hdisplay_size) | (vc >= vdisplay_size))
//            blank_ff = 1'b1;
//        else
//            blank_ff = 1'b0;
//    end
    
    
endmodule







