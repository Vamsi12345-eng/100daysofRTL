`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:06:34 07/11/2023 
// Design Name: 
// Module Name:    Fibinocci 
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
module Fibinocci(clk,rst,out);

input clk,rst;
output  reg [31:0] out=0;

reg [31:0] temp1=0,temp2=1;
reg [31:0] temp_out;

always @(posedge clk or negedge rst) begin

if(!rst) begin
temp1=0;
temp2=1;
out=0;
end
else if(out==32'd4294967295) begin
temp1=0;
temp2=1;
out=0;
end
else begin
out=temp1+temp2;
temp2=temp1;
temp1=out;

end
end

endmodule
