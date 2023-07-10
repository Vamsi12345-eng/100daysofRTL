`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:34:11 07/09/2023 
// Design Name: 
// Module Name:    Transmitter 
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
module Transmitter(data_in,start_bit,stop_bit,clk_in,rst,data_out);

input [7:0] data_in;
input start_bit,stop_bit;
input clk_in,rst;
output reg data_out;

wire clk,clk1;

Baud_Generator b1(clk_in,clk,clk1);

reg [3:0] present_state,next_state;

parameter s0=4'd0,
          s1=4'd1,
			 s2=4'd2,
			 s3=4'd3,
			 s4=4'd4,
			 s5=4'd5,
			 s6=4'd6,
			 s7=4'd7,
			 s8=4'd8,
			 s9=4'd9;

always@(posedge clk or negedge rst) begin
if(!rst) begin
present_state<=s0;
end
else begin
present_state<=next_state;
end
end

always@(present_state or data_in or start_bit or stop_bit) begin
case(present_state) 
s0:begin
   if(start_bit==1'b0) begin
	next_state=s1;
	data_out=1'b0;
	end
	else begin
	next_state=s0;
	data_out=1'b1;
	end
   end
s1: begin
    next_state=s2;
	 data_out=data_in[0];
    end

s2: begin
    next_state=s3;
	 data_out=data_in[1];
    end


s3: begin
    next_state=s4;
	 data_out=data_in[2];
    end


s4: begin
    next_state=s5;
	 data_out=data_in[3];
    end


s5: begin
    next_state=s6;
	 data_out=data_in[4];
    end

s6: begin
    next_state=s7;
	 data_out=data_in[5];
    end
	 
s7: begin
    next_state=s8;
	 data_out=data_in[6];
    end
	 
s8: begin
    next_state=s9;
	 data_out=data_in[7];
    end
	 
s9: begin
    next_state=s0;
	 data_out=stop_bit;
    end

default :next_state=s0;
endcase
end

endmodule
