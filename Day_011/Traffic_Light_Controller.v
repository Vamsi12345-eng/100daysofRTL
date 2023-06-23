`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:46:20 06/22/2023 
// Design Name: 
// Module Name:    Traffic_Light_Controller 
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
module Traffic_Light_Controller(D1,D2,D3,D4,clk,rst);


input clk,rst;
output reg [2:0] D1,D2,D3,D4;

wire divided_clk;

Clock_Divider d(clk,divided_clk);

reg [3:0] present_state,next_state;
reg [5:0] counter=0;

parameter s0=4'd0,
          s1=4'd1,
			 s2=4'd2,
			 s3=4'd3,
			 s4=4'd4,
			 s5=4'd5,
			 s6=4'd6,
			 s7=4'd7,
			 s8=4'd8;

always@(posedge divided_clk or negedge rst) begin
if(!rst) begin
present_state<=s0;
end
else begin
present_state<=next_state;
end
end

always@(posedge divided_clk) begin
if(counter==6'd60) begin
counter<=6'd0;
end
else begin
counter<=counter+1;
end
end



always@( present_state or counter ) begin
case(present_state) 
s0: begin
    if(counter>=6'd10) begin
	 next_state=s1;
	 end
	 else begin
	 next_state=s0;
	 D1=3'b001;
	 D2=3'b100;
	 D3=3'b100;
	 D4=3'b100;
	 end
	 end
s1: begin
    if(counter>=6'd15) begin
	 next_state=s2;
	 end
	 else begin
	 next_state=s1;
	 D1=3'b010;
	 D2=3'b100;
	 D3=3'b100;
	 D4=3'b100;
	 end
    end
s2: begin
    if(counter>=6'd25) begin
	 next_state=s3;
	 end
	 else begin
	 next_state=s2;
	 D1=3'b100;
	 D2=3'b001;
	 D3=3'b100;
	 D4=3'b100;
	 end
    end
s3: begin
    if(counter>=6'd30) begin
	 next_state=s4;
	 end
	 else begin
	 next_state=s3;
	 D1=3'b100;
	 D2=3'b010;
	 D3=3'b100;
	 D4=3'b100;
	 end
    end
s4: begin
    if(counter>=6'd40) begin
	 next_state=s5;
	 end
	 else begin
	 next_state=s4;
	 D1=3'b100;
	 D2=3'b100;
	 D3=3'b001;
	 D4=3'b100;
	 end
    end
s5: begin
    if(counter>=6'd45) begin
	 next_state=s6;
	 end
	 else begin
	 next_state=s5;
	 D1=3'b100;
	 D2=3'b100;
	 D3=3'b010;
	 D4=3'b100;
	 end
    end
s6: begin
    if(counter>=6'd55) begin
	 next_state=s7;
	 end
	 else begin
	 next_state=s6;
	 D1=3'b100;
	 D2=3'b100;
	 D3=3'b100;
	 D4=3'b001;
	 end
    end
s7: begin
    if(counter>=6'd60) begin
	 next_state=s0;
	 end
	 else begin
	 next_state=s7;
	 D1=3'b100;
	 D2=3'b100;
	 D3=3'b100;
	 D4=3'b010;
	 end
    end
default: begin
         next_state=s0;
			D1=3'b000;
	      D2=3'b000;
	      D3=3'b000;
	      D4=3'b000;  
			end
endcase
end

endmodule
