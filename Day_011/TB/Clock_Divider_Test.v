`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:56:35 06/22/2023
// Design Name:   Clock_Divider
// Module Name:   Clock_Divider_Test.v
// Project Name:  day_011
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Clock_Divider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Clock_Divider_Test_v;

	// Inputs
	reg clk;

	// Outputs
	wire divided_clk;

	// Instantiate the Unit Under Test (UUT)
	Clock_Divider uut (
		.clk(clk), 
		.divided_clk(divided_clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		
		

	end
      always #5 clk=~clk;
endmodule

