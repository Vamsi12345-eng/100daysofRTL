`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:49 06/02/2023 
// Design Name: 
// Module Name:    Tri_state_buff 
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
module Tri_state_buff(in,enb,out);

input in,enb;

output out;

assign out=(enb==1)?in:1'bz;

endmodule
