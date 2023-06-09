`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:36:35 06/15/2023 
// Design Name: 
// Module Name:    Bit_4_SISO 
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
module Bit_4_SISO(in,clk,rst,out);

input in;
input clk,rst;
output reg [3:0] out=0;

always@(posedge clk or negedge rst) begin
if(!rst) begin
out<=4'b0000;
end
else begin
out[0]<=in;
out[1]<=out[0];
out[2]<=out[1];
out[3]<=out[2];
end

end


endmodule
