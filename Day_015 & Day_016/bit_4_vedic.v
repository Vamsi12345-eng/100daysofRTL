`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:41:22 07/03/2023 
// Design Name: 
// Module Name:    bit_4_vedic 
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
module bit_4_vedic(in1,in2,out);

input [3:0] in1,in2;
output [7:0] out;

wire [3:0] pp1,pp2,pp3,pp4;

bit_2_vedic b1(in1[1:0],in2[1:0],pp1);
bit_2_vedic b2(in1[1:0],in2[3:2],pp2);
bit_2_vedic b3(in1[3:2],in2[1:0],pp3);
bit_2_vedic b4(in1[3:2],in2[3:2],pp4);

assign out=pp1+{pp2,2'b00}+{pp3,2'b00}+{pp4,4'b0000};

endmodule
