`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:41:32 05/30/2023 
// Design Name: 
// Module Name:    Half_adder 
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
module Half_adder(a,b,sum,carry);
input a,b;
output sum,carry;

assign sum= a^b;
assign carry=a&b;


endmodule
