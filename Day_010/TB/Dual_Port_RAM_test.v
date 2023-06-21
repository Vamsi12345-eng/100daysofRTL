`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:43:31 06/20/2023
// Design Name:   Dual_Port_RAM_16_8
// Module Name:   Dual_Port_RAM_test.v
// Project Name:  day_010
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Dual_Port_RAM_16_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Dual_Port_RAM_test_v;

	// Inputs
	reg clk;
	reg rst;
	reg rd_en;
	reg wr_en;
	reg [7:0] wr_data;
	reg [3:0] wr_addr;
	reg [3:0] rd_addr;

	// Outputs
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	Dual_Port_RAM_16_8 uut (
		.clk(clk), 
		.rst(rst), 
		.rd_en(rd_en), 
		.wr_en(wr_en), 
		.wr_data(wr_data), 
		.wr_addr(wr_addr), 
		.rd_addr(rd_addr), 
		.data_out(data_out)
	);
    integer i;
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		rd_en = 0;
		wr_en = 0;
		wr_data = 0;
		wr_addr = 0;
		rd_addr = 0;

		
		#10
		wr_en=1;
		rd_en=0;
		
		for(i=0;i<=15;i=i+1) begin
		#10
		wr_addr=i;
		wr_data=i+2;
		end
		
		#10
		wr_en=0;
		rd_en=1;
		
		for(i=0;i<=15;i=i+1) begin
		#10
		rd_addr=i;
		end
		
		#10
		wr_en=1;
		rd_en=0;
		
		for(i=0;i<=15;i=i+1) begin
		#10
		wr_addr=i;
		wr_data=i+3;
		end
		
		#10
		wr_en=1;
		rd_en=1;
		
		for(i=0;i<=15;i=i+1) begin
		#10
		wr_addr=i;
		wr_data=i+4;
		rd_addr=i;
		end
		
		#50
		$stop;

	end
      always #5 clk=~clk;
endmodule

