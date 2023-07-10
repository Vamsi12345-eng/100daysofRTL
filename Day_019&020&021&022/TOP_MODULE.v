`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:16:31 07/10/2023 
// Design Name: 
// Module Name:    TOP_MODULE 
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
module TOP_MODULE(data_in,clk,rst,data_out,start_bit,stop_bit);

input [7:0] data_in;
input clk,rst;
output [7:0] data_out;
input start_bit,stop_bit;
wire tx_in_rx_out;

Transmitter t1(data_in,start_bit,stop_bit,clk,rst,tx_in_rx_out);
Reciever r1(tx_in_rx_out,clk,rst,data_out);

endmodule
