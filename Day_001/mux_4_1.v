`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:10 05/30/2023 
// Design Name: 
// Module Name:    mux_4_1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux_4_1(a,b,c,d,sel,out);
input a,b,c,d;
input [1:0] sel;
output out;
wire w1,w2;
mux_2_1 m1(a,b,sel[0],w1);
mux_2_1 m2(c,d,sel[0],w2);
mux_2_1 m3(w1,w2,sel[1],out);
endmodule
