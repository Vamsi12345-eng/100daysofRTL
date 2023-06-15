`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:56:46 06/15/2023 
// Design Name: 
// Module Name:    Bit_4_UP_DOWN_COUNTER 
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
module Bit_4_UP_DOWN_COUNTER(trig,clk,rst,count_out);


input trig;
input clk,rst;
output reg [3:0] count_out=0;

always@(posedge clk or negedge rst) begin

if(!rst) begin
count_out=4'd0;
end

else if(trig==1'b1) begin
if(count_out>=4'd0 && count_out<4'd15) begin
count_out=count_out+1;
end
else begin
count_out=4'd0;
end
end

else if(trig==1'b0) begin
if(count_out>4'd0 && count_out<=4'd15) begin
count_out=count_out-1;
end
else begin
count_out=4'd15;
end
end
end

endmodule
