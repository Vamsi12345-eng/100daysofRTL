`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:49:01 07/09/2023 
// Design Name: 
// Module Name:    Baud_Generator 
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
module Baud_Generator(clk_in,clk_out1,clk_out2);

input clk_in;
output reg clk_out1=0; // for transmitter
output reg clk_out2=0; // for reciever

integer counter1=0;
integer counter2=0;
parameter div_value1=51;
parameter div_value2=2;

always@(posedge clk_in) begin
if(counter1==div_value1) begin
counter1=0;
clk_out1=~clk_out1;
end
else begin
counter1=counter1+1;
clk_out1=clk_out1;
end
end

always@(posedge clk_in) begin
if(counter2==div_value2) begin
counter2=0;
clk_out2=~clk_out2;
end
else begin
counter2=counter2+1;
clk_out2=clk_out2;
end
end
endmodule
