`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:53:54 06/07/2023 
// Design Name: 
// Module Name:    Mod_12_T_FF 
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
module Mod_12_T_FF(in_en,clk,count_out);

input in_en,clk;
output reg [3:0] count_out=4'd0;
wire soft_rst;

wire t1,t2,t3,t4;




always @(posedge clk) begin
if(soft_rst==1'b1) begin
count_out=4'b0000;
end
else begin
count_out={t4,t3,t2,t1};
end
end



assign soft_rst=((~t1)&(~t2)&t3&t4);

T_FF te(clk,soft_rst,in_en,t1);
T_FF tf(t1,soft_rst,in_en,t2);
T_FF tg(t2,soft_rst,in_en,t3);
T_FF th(t3,soft_rst,in_en,t4);

endmodule
