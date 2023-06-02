`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:17 06/02/2023 
// Design Name: 
// Module Name:    Decoder 
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
module Decoder(in,out);
input [1:0] in;
output reg [3:0] out;

always@(in) begin
case(in) 
2'b00: out=4'b0001;
2'b01: out=4'b0010;
2'b10: out=4'b0100;
2'b11: out=4'b1000;
default: out=4'bxxxx;
endcase
end

endmodule
