`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:04:41 06/25/2023 
// Design Name: 
// Module Name:    Recoding 
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
module Recoding(in,out1,out2,out3);

input [4:0] in;

output reg [2:0] out1,out2,out3;

reg check_bit;

always@ ( * ) begin
if(in[4]==1'b1) begin
check_bit=1'b1;
end
else begin
check_bit=1'b0;
end
end

always@( * ) begin
case({in[1:0],1'b0})
3'b000:out1=3'b000;
3'b001:out1=3'b001;
3'b010:out1=3'b001;
3'b011:out1=3'b010;
3'b100:out1=3'b110;
3'b101:out1=3'b101;
3'b110:out1=3'b101;
3'b111:out1=3'b000;
endcase
case(in[3:1])
3'b000:out2=3'b000;
3'b001:out2=3'b001;
3'b010:out2=3'b001;
3'b011:out2=3'b010;
3'b100:out2=3'b110;
3'b101:out2=3'b101;
3'b110:out2=3'b101;
3'b111:out2=3'b000;
endcase
case({check_bit,in[4:3]})
3'b000:out3=3'b000;
3'b001:out3=3'b001;
3'b010:out3=3'b001;
3'b011:out3=3'b010;
3'b100:out3=3'b110;
3'b101:out3=3'b101;
3'b110:out3=3'b101;
3'b111:out3=3'b000;
endcase
end


endmodule
