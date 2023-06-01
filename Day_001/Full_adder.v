`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:48:43 05/30/2023 
// Design Name: 
// Module Name:    Full_adder 
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
module Full_adder(A,B,C,sum,carry);
input A,B,C;
output sum,carry;
wire w1,w2,w3;

Half_adder h1(A,B,w1,w2);
Half_adder h2(C,w1,sum,w3);
or o1(carry,w3,w2);
//assign carry=w2|w3;


endmodule
