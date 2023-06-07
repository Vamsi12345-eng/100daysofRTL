`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:01:36 06/06/2023 
// Design Name: 
// Module Name:    JK_FF 
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
module JK_FF(J_in,K_in,clk,rst,JK_out);

input J_in,K_in;
input clk,rst;

output reg JK_out=0;

always@(posedge clk) begin

if(rst) begin
JK_out<=0;
end
else begin
case({J_in,K_in})
2'b00:JK_out<=JK_out;
2'b01:JK_out<=1'b0;
2'b10:JK_out<=1'b1;
2'b11:JK_out<=~JK_out;
default:JK_out<=1'bx;
endcase
end


end


endmodule
