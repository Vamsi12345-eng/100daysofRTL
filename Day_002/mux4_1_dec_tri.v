`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:33:38 06/02/2023 
// Design Name: 
// Module Name:    mux4_1_dec_tri 
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
module mux4_1_dec_tri(in,sel,out);

input [3:0] in;
input [1:0] sel;
output out;
wire t1,t2,t3,t4;
wire out1,out2,out3,out4;

Decoder d1(sel,{t4,t3,t2,t1});
Tri_state_buff r1(in[0],t1,out);
Tri_state_buff r2(in[1],t2,out);
Tri_state_buff r3(in[2],t3,out);
Tri_state_buff r4(in[3],t4,out);

//assign out=out1+out2+out3+out4;


endmodule
