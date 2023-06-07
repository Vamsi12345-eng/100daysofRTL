`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:43:29 06/06/2023 
// Design Name: 
// Module Name:    SR_latch 
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
module SR_latch(S_in,R_in,Q_out,Q_not_out);

input S_in,R_in;
output Q_out,Q_not_out;

nor n1(Q_out,R_in,Q_not_out);
nor n2(Q_not_out,S_in,Q_out);


endmodule
