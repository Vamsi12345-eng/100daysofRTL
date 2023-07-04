`timescale 1ns / 1ps

module lfsr(clk,out);

input clk;
output reg [3:0] out=4'b1111;

always@(posedge clk) begin

out[0]<=out[3]^out[2];
out[1]<=out[0];
out[2]<=out[1];
out[3]<=out[2];
end

endmodule
