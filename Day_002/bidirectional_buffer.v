`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:51:50 06/02/2023 
// Design Name: 
// Module Name:    bidirectional_buffer 
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
module bidirectional_buffer(sender_port,sender_in,sender_out,reciever_in,reciever_out);

input sender_port,sender_in,reciever_in;
output reciever_out,sender_out;

assign reciever_out=(sender_port==1)?sender_in:1'bz;
assign sender_out=(sender_port==0)?reciever_in:1'bz;

endmodule
