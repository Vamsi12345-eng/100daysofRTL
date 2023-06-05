`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:48:09 06/05/2023 
// Design Name: 
// Module Name:    D_FF 
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
module D_FF(clk,rst,D_in,D_out);
input D_in;
input clk,rst;
output reg D_out;

always@(posedge clk) begin
if(rst) begin
D_out<=1'b0;
end
else begin
D_out<=D_in;
end
end


endmodule
