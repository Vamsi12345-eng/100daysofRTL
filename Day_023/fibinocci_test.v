`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:10:40 07/11/2023
// Design Name:   Fibinocci
// Module Name:   fibinocci_test.v
// Project Name:  fibinocci
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Fibinocci
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fibinocci_test_v;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	Fibinocci uut (
		.clk(clk), 
		.rst(rst), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		

	end
    always #5 clk=~clk;  
endmodule

