`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:08:00 06/14/2023
// Design Name:   Sequence_detector
// Module Name:   Sequence_detector_test.v
// Project Name:  Day_006
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sequence_detector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Sequence_detector_test_v;

	// Inputs
	reg in;
	reg rst;
	reg clk;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	Sequence_detector uut (
		.in(in), 
		.out(out), 
		.rst(rst), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		rst = 1;
		clk = 0;

	 
	   #10
		in=1;
		
		#10
		in=0;
		
		#10
		in=1;
		

	end
      always #5 clk=~clk;
endmodule

