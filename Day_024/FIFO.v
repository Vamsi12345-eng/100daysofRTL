`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:35:12 07/17/2023 
// Design Name: 
// Module Name:    FIFO 
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
module FIFO (
  input wire clk,
  input wire reset,
  input wire write_enable,
  input wire read_enable,
  input wire [15:0] data_in,
  output reg [15:0] data_out,
  output reg empty = 1'b1,
  output reg full = 1'b0
);

  reg [15:0] memory [31:0];
  reg [4:0] write_ptr = 5'b0; // Initial value of write_ptr is 0
  reg [4:0] read_ptr = 5'b0; // Initial value of read_ptr is 0
  reg [4:0] count = 5'b0; // Initial value of count is 0
  
  always @(posedge clk) begin
    if (reset) begin
      write_ptr <= 5'b0;
      read_ptr <= 5'b0;
      count <= 5'b0;
      empty <= 1'b1;
      full <= 1'b0;
    end else begin
      if (write_enable && ~full) begin
        memory[write_ptr] <= data_in;
        write_ptr <= write_ptr + 1;
        count <= count + 1;
        empty <= 1'b0;
        if (count == 31)
          full <= 1'b1;
			 end
      if (read_enable && ~empty) begin
        data_out <= memory[read_ptr];
        read_ptr <= read_ptr + 1;
        count <= count - 1;
        full <= 1'b0;
        if (count == 1)
          empty <= 1'b1;
      end
    end
  end

endmodule 