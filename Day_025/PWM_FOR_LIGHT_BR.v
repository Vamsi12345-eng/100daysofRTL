`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:00:20 07/27/2023 
// Design Name: 
// Module Name:    PWM_FOR_LIGHT_BR 
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
module PWM_FOR_LIGHT_BR(clk,rst,light_clk,D_C_M);

input clk,rst; // clk is default clock that works on 100mhz 
output reg light_clk=0; // light frequency generally works on 50 hzs in india
                  // as simulation will take too much of work i will use 50 k hz
input [6:0] D_C_M; // is duty cycle meter which works on 25,50,75 duty cycles only!!

parameter dim=7'd25,
          normal=7'd50,
			 high=7'd75;
			 
integer counter;
always@(posedge clk) begin
if(rst) begin
counter<=0;
light_clk<=0;
end
else begin
case(D_C_M)
normal: begin
        counter<=0;
		  if(counter==999) begin
		  light_clk<=~light_clk;
		  counter<=0;
		  end
		  else begin
		  light_clk<=light_clk;
		  counter<=counter+1;
		  end
        end

dim:    begin
        counter<=0;
		  if(counter<=499) begin
		  light_clk<=1'b1;
		  counter<=counter+1;
		  end
		  else if(counter>499 && counter<1998) begin
		  light_clk<=1'b0;
		  counter<=counter+1;
		  end
		  else if(counter==1998) begin
		  counter<=0;
		  end
        end

high:   begin
        counter<=0;
		  if(counter<=1498) begin
		  light_clk<=1'b1;
		  counter<=counter+1;
		  end
		  else if(counter>1498 && counter<1998) begin
		  light_clk<=1'b0;
		  counter<=counter+1;
		  end
		  else if(counter==1998) begin
		  counter<=0;
		  end
        end 

default: begin
         counter<=0;
			light_clk<=1'bx;
         end			
endcase
end
end

always@(D_C_M) begin
case(D_C_M) 
dim: $display("LIGHT IS DIM!!!");
normal: $display("LIGHT IS STABLE!!!");
high: $display("LIGHT AT MAX BRIGHTNESS!!!");
default: $display("SET APPROPRIATE LEVEL!!!");
endcase
end


endmodule
