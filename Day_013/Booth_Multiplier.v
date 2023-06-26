`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:04:21 06/25/2023 
// Design Name: 
// Module Name:    Booth_Multiplier 
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
module Booth_Multiplier(in1,in2,out);

input [4:0] in1,in2;
output reg [8:0] out;

//twos complement for both numbers

reg [4:0] temp1,temp2;

always@( * ) begin 
if(in1[4]==1) begin
temp1={in1[4],~(in1[3:0])+1'b1};
end
else begin
temp1=in1;
end
if(in2[4]==1) begin
temp2={in2[4],~(in2[3:0])+1'b1};
end
else begin
temp2=in2;
end
end

wire [2:0] temp_out1,temp_out2,temp_out3;

Recoding r1(temp1,temp_out1,temp_out2,temp_out3);

reg [8:0] pp1,pp2,pp3;

wire [4:0] int_temp1=(~(temp2)+1'b1);
wire [5:0] int_temp2=temp2<<1;
wire [5:0] int_temp3=(~(int_temp2)+1'b1);

always@( * ) begin

case(temp_out1)
3'b000:pp1=9'b000000000;
3'b001: begin
        if(temp2[4]==1'b1) begin
        pp1={4'b1111,temp2};
        end
        else begin
        pp1={4'b0000,temp2};
        end		  
	     end
3'b101: begin
        if(int_temp1[4]==1'b1) begin
        pp1={4'b1111,int_temp1};
        end
        else begin
        pp1={4'b0000,int_temp1};
        end		  
        end
3'b010:begin
        if(int_temp2[5]==1'b1) begin
        pp1={3'b111,int_temp2};
        end
        else begin
        pp1={3'b000,int_temp2};
        end		  
	     end
3'b110: begin
        if(int_temp3[5]==1'b1) begin
        pp1={3'b111,int_temp3};
        end
        else begin
        pp1={3'b000,int_temp3};
        end		  
	     end
endcase

case(temp_out2)
3'b000:pp2=9'b000000000;
3'b001: begin
        if(temp2[4]==1'b1) begin
        pp2={2'b11,temp2,2'b00};
        end
        else begin
        pp2={2'b00,temp2,2'b00};
        end		  
	     end
3'b101: begin
        if(int_temp1[4]==1'b1) begin
        pp2={2'b11,int_temp1,2'b00};
        end
        else begin
        pp2={2'b00,int_temp1,2'b00};
        end		  
	     end
3'b010:begin
        if(int_temp2[5]==1'b1) begin
        pp2={1'b1,int_temp2,2'b00};
        end
        else begin
        pp2={1'b0,int_temp2,2'b00};
        end		  
	     end
3'b110: begin
        if(int_temp3[5]==1'b1) begin
        pp2={1'b1,int_temp3,2'b00};
        end
        else begin
        pp2={1'b0,int_temp3,2'b00};
        end		  
	     end
endcase

case(temp_out3)
3'b000:pp3=9'b000000000;
3'b001: begin
        if(temp2[4]==1'b1) begin
        pp3={temp2,4'b0000};
        end
        else begin
        pp3={temp2,4'b0000};
        end		  
	     end
3'b101: begin
        if(int_temp1[4]==1'b1) begin
        pp3={int_temp1,4'b0000};
        end
        else begin
        pp3={int_temp1,4'b0000};
        end		  
	     end
3'b010: pp3={int_temp2,4'b0000};
        
3'b110: pp3={int_temp3,4'b0000};
        
endcase

end

always@( * ) begin
out=pp1+pp2+pp3;
end

endmodule
