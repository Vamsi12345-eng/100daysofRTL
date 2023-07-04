`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:16:55 07/03/2023 
// Design Name: 
// Module Name:    bit_2_vedic 
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
module bit_2_vedic(in1,in2,out);

input [1:0] in1,in2;
output [3:0] out;

wire pp1,pp2,pp3,pp4;

assign pp1=in1[0]&in2[0];
assign pp2=in1[1]&in2[0];
assign pp3=in1[0]&in2[1];
assign pp4=in1[1]&in2[1];
assign out=pp1+{pp2,1'b0}+{pp3,1'b0}+{pp4,2'b00};

endmodule
