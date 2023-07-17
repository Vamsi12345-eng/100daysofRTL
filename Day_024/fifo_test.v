`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:38:20 07/17/2023
// Design Name:   FIFO
// Module Name:   fifo_test.v
// Project Name:  FIFO
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FIFO
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fifo_test_v;

	// Inputs
	reg clk;
	reg reset;
	reg write_enable;
	reg read_enable;
	reg [15:0] data_in;

	// Outputs
	wire [15:0] data_out;
	wire empty;
	wire full;

	// Instantiate the Unit Under Test (UUT)
	FIFO uut (
		.clk(clk), 
		.reset(reset), 
		.write_enable(write_enable), 
		.read_enable(read_enable), 
		.data_in(data_in), 
		.data_out(data_out), 
		.empty(empty), 
		.full(full)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		write_enable = 0;
		read_enable = 0;
		data_in = 0;

		
		#10
		write_enable = 1;
		data_in = 16'd12;
		
		#10
		write_enable = 1;
		data_in = 16'd13;
		
	
		#10
		write_enable = 0;
		read_enable = 1;
		
		#20
		$stop;
		

	end
     always #5 clk=~clk; 
endmodule

