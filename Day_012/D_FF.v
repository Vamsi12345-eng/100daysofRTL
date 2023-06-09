`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:13 06/24/2023 
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
module D_FF(D_in,clk,rst,D_out);

input D_in;
input clk,rst;
output reg D_out;

wire clk_out;

Clock_Buffer B(clk,clk_out);

always@(posedge clk_out) begin
if(rst) begin
D_out<=0;
end
else begin
D_out<=D_in;
end
end

endmodule
