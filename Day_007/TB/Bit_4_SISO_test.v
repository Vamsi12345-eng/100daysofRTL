`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:48:31 06/15/2023
// Design Name:   Bit_4_SISO
// Module Name:   Bit_4_SISO_test.v
// Project Name:  day_007
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Bit_4_SISO
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Bit_4_SISO_test_v;

	// Inputs
	reg in;
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	Bit_4_SISO uut (
		.in(in), 
		.clk(clk), 
		.rst(rst), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		clk = 0;
		rst = 1;
		
		in=1;
		
		#50
		$stop;

		

	end
      always #5 clk=~clk;
endmodule

