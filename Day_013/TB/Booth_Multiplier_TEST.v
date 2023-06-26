`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:23:40 06/26/2023
// Design Name:   Booth_Multiplier
// Module Name:   Booth_Multiplier_TEST.v
// Project Name:  day_013
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Booth_Multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Booth_Multiplier_TEST_v;

	// Inputs
	reg [4:0] in1;
	reg [4:0] in2;

	// Outputs
	wire [8:0] out;

	// Instantiate the Unit Under Test (UUT)
	Booth_Multiplier uut (
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in1 = 5'b11000;
		in2 = 5'b11001;
		
		#10
		in1=5'b01011;
		in2=5'b10011;
		
		#30
		$stop;

		

	end
      
endmodule

