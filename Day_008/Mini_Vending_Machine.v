`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:28:22 06/17/2023 
// Design Name: 
// Module Name:    Mini_Vending_Machine 
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
module Mini_Vending_Machine(clk,rst,coin_in,product_out,change_out);

input clk,rst;
input [1:0] coin_in;
output reg product_out;
output reg change_out;

reg [1:0] present_state,next_state;

parameter s0=2'b00,
          s1=2'b01,
			 s2=2'b10;

always@(posedge clk or negedge rst) begin
if(!rst)
present_state<=s0;
else 
present_state<=next_state;
end

always@(present_state or coin_in) begin
case(present_state)
s0: begin
    if(coin_in==2'b01) begin
	 next_state=s1;
	 product_out=1'b0;
	 change_out=1'b0;
	 end
	 else if(coin_in==2'b10) begin
	 next_state=s2;
	 product_out=1'b0;
	 change_out=1'b0;
	 end
    end
s1: begin
    if(coin_in==2'b01) begin
	 next_state=s2;
	 product_out=1'b0;
	 change_out=1'b0;
	 end
	 else if(coin_in==2'b10) begin
	 next_state=s0;
	 product_out=1'b1;
	 change_out=1'b0;
	 end
    end
s2: begin
    if(coin_in==2'b01) begin
	 next_state=s0;
	 product_out=1'b1;
	 change_out=1'b0;
	 end
	 else if(coin_in==2'b10) begin
	 next_state=s0;
	 product_out=1'b1;
	 change_out=1'b1;
	 end
    end
default: begin
         next_state=s0;
			product_out=1'b0;
			change_out=1'b0;
         end
endcase

end

endmodule
