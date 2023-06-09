`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:52:45 07/03/2023 
// Design Name: 
// Module Name:    bit_8_vedic 
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
module bit_8_vedic(in1,in2,out);

input [7:0] in1,in2;
output [15:0] out;

wire [7:0] pp1,pp2,pp3,pp4;

bit_4_vedic a1(in1[3:0],in2[3:0],pp1);
bit_4_vedic a2(in1[3:0],in2[7:4],pp2);
bit_4_vedic a3(in1[7:4],in2[3:0],pp3);
bit_4_vedic a4(in1[7:4],in2[7:4],pp4);

assign out=pp1+{pp2,4'b0000}+{pp3,4'b0000}+{pp4,8'b00000000};


endmodule
