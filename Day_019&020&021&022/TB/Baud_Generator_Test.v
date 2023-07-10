`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:08:10 07/09/2023
// Design Name:   Baud_Generator
// Module Name:   Baud_Generator_Test.v
// Project Name:  uart
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Baud_Generator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Baud_Generator_Test_v;

	// Inputs
	reg clk_in;

	// Outputs
	wire clk_out1;
	wire clk_out2;

	// Instantiate the Unit Under Test (UUT)
	Baud_Generator uut (
		.clk_in(clk_in), 
		.clk_out1(clk_out1), 
		.clk_out2(clk_out2)
	);

	initial begin
		// Initialize Inputs
		clk_in = 0;


		        


	end
     always #5 clk_in=~clk_in; 
endmodule

