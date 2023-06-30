`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:05:10 06/30/2023
// Design Name:   Carry_Look_Ahead_Adder
// Module Name:   CLA_TEST.v
// Project Name:  day_014
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Carry_Look_Ahead_Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLA_TEST_v;

	// Inputs
	reg [3:0] in1;
	reg [3:0] in2;

	// Outputs
	wire [4:0] out;

	// Instantiate the Unit Under Test (UUT)
	Carry_Look_Ahead_Adder uut (
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in1 = 0;
		in2 = 0;

		in1=4'b1011;
		in2=4'b0011;
		
		#10
		in1=4'b1011;
		in2=4'b1011;
		
		#10
		in1=4'b1011;
		in2=4'b0111;
		
		#10
		$stop;

	end
      
endmodule

