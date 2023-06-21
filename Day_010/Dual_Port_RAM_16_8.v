`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:47 06/20/2023 
// Design Name: 
// Module Name:    Dual_Port_RAM_16_8 
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
module Dual_Port_RAM_16_8(clk,rst,rd_en,wr_en,wr_data,wr_addr,rd_addr,data_out);
input clk,rst;
input rd_en,wr_en;
input [7:0] wr_data;
input [3:0] rd_addr,wr_addr;
output reg [7:0] data_out;

reg [7:0] mem [15:0];
integer i;

always@(posedge clk or negedge rst) begin
if(!rst) begin
for(i=0;i<=15;i=i+1) begin
mem[i]<=8'd0;
end
data_out<=8'd0;
end
else begin
case({rd_en,wr_en})
2'b00: data_out<=data_out;
2'b01: begin
       if(wr_addr>=8'd0 && wr_addr<=8'd15) begin
		 mem[wr_addr]<=wr_data;
		 end
		 else begin
		 $display("Give Appropriate write address!!!");
		 end
       end
2'b10: begin
       if(rd_addr>=8'd0 && rd_addr<=8'd15) begin
		 data_out<=mem[rd_addr];
		 mem[rd_addr]<=8'dx;
		 end
		 else begin
		 $display("Give Appropriate raed address!!!");
		 end
       end
2'b11: begin
       begin
       if((rd_addr>=8'd0 && rd_addr<=8'd15)&&(wr_addr>=8'd0 && wr_addr<=8'd15)) begin
		 data_out<=mem[rd_addr];
		 mem[rd_addr]<=8'dx;
		 mem[wr_addr]<=wr_data;
		 end
		 else begin
		 $display("Give Appropriate raed address or write adress!!!");
		 end
       end
       end
default: data_out<=8'dx;
endcase
end
end

endmodule
