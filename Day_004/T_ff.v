`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:00:36 06/05/2023 
// Design Name: 
// Module Name:    T_ff 
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
module T_ff(clk,rst,T_in,T_out);

input clk,rst;
input T_in;
output T_out;
wire temp;
assign temp=~T_in;
D_FF d1(clk,rst,temp,T_out);

endmodule
