`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:57 06/02/2023 
// Design Name: 
// Module Name:    Ripple_Carry_Adder 
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
module Ripple_Carry_Adder(a,b,out);
input [3:0] a,b;
output [4:0] out;
wire [3:0] c;
Half_adder h1(a[0],b[0],out[0],c[0]);
Full_adder F1(a[1],b[1],c[0],out[1],c[1]);
Full_adder F2(a[2],b[2],c[1],out[2],c[2]);
Full_adder F3(a[3],b[3],c[2],out[3],c[3]);
assign out[4]=c[3];
endmodule
