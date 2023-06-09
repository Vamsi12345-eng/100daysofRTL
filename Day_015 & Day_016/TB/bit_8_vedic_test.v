`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:08:56 07/03/2023
// Design Name:   bit_8_vedic
// Module Name:   bit_8_vedic_test.v
// Project Name:  day_015&016
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bit_8_vedic
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bit_8_vedic_test_v;

	// Inputs
	reg [7:0] in1;
	reg [7:0] in2;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	bit_8_vedic uut (
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);
integer i;
	initial begin
		// Initialize Inputs
		in1 = 0;
		in2 = 0;

		for(i=0;i<=6;i=i+1) begin
		#10
		in1=i;
		in2=i+3;
		end
		#10
		$stop;

	end
      
endmodule

