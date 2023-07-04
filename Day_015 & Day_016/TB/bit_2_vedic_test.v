`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:32:27 07/03/2023
// Design Name:   bit_2_vedic
// Module Name:   bit_2_vedic_test.v
// Project Name:  day_015&016
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bit_2_vedic
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bit_2_vedic_test_v;

	// Inputs
	reg [1:0] in1;
	reg [1:0] in2;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	bit_2_vedic uut (
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);
integer i;
	initial begin
		// Initialize Inputs
		in1 = 0;
		in2 = 0;
  
      for(i=0;i<=3;i=i+1) begin
		#10
		in1=i;
		in2=i;
		end
		
		#10
		$stop;
		

	end
      
endmodule

