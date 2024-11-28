`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 06:54:40 PM
// Design Name: 
// Module Name: sevenseg
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


module sevenseg(
    input [3:0]num,
    output logic a,
    output logic b,
    output logic c,
    output logic d,
    output logic e,
    output logic f,
    output logic g
    );
    
    //  Intermediate signal to hold translation    
    logic [6:0]seg_out;

	always_comb
	begin
		unique case (num)
	 	   4'b0000   : seg_out = 7'b1000000; // '0'
	 	   4'b0001   : seg_out = 7'b1111001; // '1'
		   4'b0010   : seg_out = 7'b0100100; // '2'
	 	   4'b0011   : seg_out = 7'b0110000; // '3'
	 	   4'b0100   : seg_out = 7'b0011001; // '4'
		   4'b0101   : seg_out = 7'b0010010; // '5'
	 	   4'b0110   : seg_out = 7'b0000010; // '6'
	 	   4'b0111   : seg_out = 7'b1111000; // '7'
	 	   4'b1000   : seg_out = 7'b0000000; // '8'
		   4'b1001   : seg_out = 7'b0010000; // '9'
	 	   4'b1010   : seg_out = 7'b0001000; // 'A'
	 	   4'b1011   : seg_out = 7'b0000011; // 'b'
	 	   4'b1100   : seg_out = 7'b1000110; // 'C'
		   4'b1101   : seg_out = 7'b0100001; // 'd'
	 	   4'b1110   : seg_out = 7'b0000110; // 'E'
	 	   4'b1111   : seg_out = 7'b0001110; // 'F'
	 	   default   : seg_out = 7'b1111111; // All segments are off
	  	 endcase
	end    
    
    //  Assign segments of display depending on lookup tab;e
    assign a = seg_out[0];
    assign b = seg_out[1];
    assign c = seg_out[2];
    assign d = seg_out[3];
    assign e = seg_out[4];
    assign f = seg_out[5];
    assign g = seg_out[6];

endmodule
