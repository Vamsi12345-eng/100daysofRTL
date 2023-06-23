`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:45:42 06/22/2023 
// Design Name: 
// Module Name:    Clock_Divider 
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
module Clock_Divider(clk,divided_clk);

input clk;
output reg divided_clk=0;

parameter dividend_value=49;
//formula for divided clk= (100mhz/2*desired_frequency)-1;
//4999999

integer counter=0;

always@(posedge clk) begin
if(counter==dividend_value) begin
counter<=0;
divided_clk<=~divided_clk;
end
else begin
counter<=counter+1;
divided_clk<=divided_clk;
end
end


endmodule
