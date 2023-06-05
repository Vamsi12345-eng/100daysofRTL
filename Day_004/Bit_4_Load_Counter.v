`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:25:23 06/05/2023 
// Design Name: 
// Module Name:    Bit_4_Load_Counter 
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
module Bit_4_Load_Counter(Load_in,clk,rst,counter_out);

input [3:0] Load_in;
input clk,rst;
output reg [3:0] counter_out;
//reg [3:0] counter;

always@(posedge clk) begin

if(rst) begin
counter_out<=0;
end
else if(Load_in>=0 && Load_in<=15) begin
counter_out<=Load_in;
end
else begin
counter_out<=counter_out+1;
end

end

endmodule
