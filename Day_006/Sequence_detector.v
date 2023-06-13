`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:27:45 06/14/2023 
// Design Name: 
// Module Name:    Sequence_detector 
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
module Sequence_detector(in,out,rst,clk);

input in;
input clk;
input rst;
output reg out;

parameter s0=2'b00,
          s1=2'b01,
			 s2=2'b10;

reg [1:0]present_state,next_state;

			 
always@(posedge clk or negedge rst) begin
if(!rst)
present_state<=0;
else 
present_state<=next_state;
end

always@(present_state or in) begin
case(present_state)
s0: begin
     if(in==1'b0) begin
	  next_state=s0;
	  out=0;
	  end
	  else begin
	  next_state=s1;
	  out=0;
	  end
    end
s1: begin
    if(in==1'b0) begin
	 next_state=s2;
	 out=0;
	 end
	 else begin
	 next_state=s0;
	 out=0;
	 end
    end
s2: begin
    if(in==1'b1) begin
	 next_state=s0;
	 out=1;
	 end
	 else begin
	 next_state=s0;
	 out=0;
	 end
    end
default: next_state=s0;
endcase

end



endmodule
