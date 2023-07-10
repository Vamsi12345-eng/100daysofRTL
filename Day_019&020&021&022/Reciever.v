`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:13:18 07/09/2023 
// Design Name: 
// Module Name:    Reciever 
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
module Reciever(data_in,clk_in,rst,data_out);

input data_in;
input rst,clk_in;
output [7:0] data_out;
reg [7:0] temp_data_out;

wire clk,clk1;

Baud_Generator b2(clk_in,clk1,clk);

reg [3:0] next_state;

parameter s0=4'd0,
          s1=4'd1,
			 s2=4'd2,
			 s3=4'd3,
			 s4=4'd4,
			 s5=4'd5,
			 s6=4'd6,
			 s7=4'd7,
			 s8=4'd8,
			 s9=4'd9,
			 s10=4'd10;
			 
integer counter=0;


always@(posedge clk or negedge rst) begin
if(!rst) begin
next_state<=s0;
end
else begin
case(next_state)
s0: begin
    if(data_in==1'b0) begin
	 next_state<=s1;
	 end
	 else begin
	 next_state<=s0;
	 end
	 end
s1: begin
    if(counter==24) begin
	 counter<=0;
	 next_state<=s2;
	 temp_data_out[0]<=data_in;
	 end
	 else begin
	 counter<=counter+1;
	 next_state<=s1;
	 end
    end
s2: begin
    if(counter==16) begin
	 counter<=0;
	 next_state<=s3;
	 temp_data_out[1]<=data_in;
	 end
	 else begin
	 counter<=counter+1;
	 next_state<=s2;
	 end
    end
s3: begin
    if(counter==16) begin
	 counter<=0;
	 next_state<=s4;
	 temp_data_out[2]<=data_in;
	 end
	 else begin
	 counter<=counter+1;
	 next_state<=s3;
	 end
    end
s4: begin
    if(counter==16) begin
	 counter<=0;
	 next_state<=s5;
	 temp_data_out[3]<=data_in;
	 end
	 else begin
	 counter<=counter+1;
	 next_state<=s4;
	 end
    end
s5: begin
    if(counter==16) begin
	 counter<=0;
	 next_state<=s6;
	 temp_data_out[4]<=data_in;
	 end
	 else begin
	 counter<=counter+1;
	 next_state<=s5;
	 end
    end
s6: begin
    if(counter==16) begin
	 counter<=0;
	 next_state<=s7;
	 temp_data_out[5]<=data_in;
	 end
	 else begin
	 counter<=counter+1;
	 next_state<=s6;
	 end
    end
s7: begin
    if(counter==16) begin
	 counter<=0;
	 next_state<=s8;
	 temp_data_out[6]<=data_in;
	 end
	 else begin
	 counter<=counter+1;
	 next_state<=s7;
	 end
    end
s8: begin
    if(counter==16) begin
	 counter<=0;
	 next_state<=s9;
	 temp_data_out[7]<=data_in;
	 end
	 else begin
	 counter<=counter+1;
	 next_state<=s8;
	 end
    end
s9: begin  // stop bit logic
    if(counter==16) begin
	 if(data_in==1'b1) begin
	 counter<=0;
	 next_state<=s10;
	 end
	 else begin
	 counter<=0;
	 next_state<=s0;
	 end
	 end
	 else begin
	 counter<=counter+1;
	 next_state<=s9;
	 end
    end
s10: begin
     next_state<=s0;
     end
default : next_state<=s0;
endcase
end
end

assign data_out=(next_state==s10)?temp_data_out:8'dx;
endmodule
