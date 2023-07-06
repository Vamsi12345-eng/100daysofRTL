`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:12:50 07/06/2023 
// Design Name: 
// Module Name:    B2G_G2B_CONV 
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
module B2G_G2B_CONV(chooser,in,out);

input chooser;
input [3:0] in;
output reg [3:0] out;

always@( * ) begin
if(chooser==1'b1) begin // means we choose the binary to grey converter
out[3]=in[3];
out[2]=in[3]^in[2];
out[1]=in[2]^in[1];
out[0]=in[1]^in[0];
end
else if(chooser==1'b0) begin // means we choose the grey to binary converter
out[3]=in[3];
out[2]=out[3]^in[2];
out[1]=out[2]^in[1];
out[0]=out[1]^in[0];
end
end

endmodule
