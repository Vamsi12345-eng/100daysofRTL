`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:14:19 06/02/2023
// Design Name:   priority_encoder_8_3
// Module Name:   priority_encoder_test.v
// Project Name:  day_002
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: priority_encoder_8_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module priority_encoder_test_v;

	// Inputs
	reg [7:0] in;

	// Outputs
	wire [2:0] out;

	// Instantiate the Unit Under Test (UUT)
	priority_encoder_8_3 uut (
		.in(in), 
		.out(out)
	);

   integer i;
	initial begin
		// Initialize Inputs
		in = 0;

		#10
		for(i=0;i<=256;i=i+1) begin
		#10
		in=i;
		end
		#25
		$finish;

	end
      
endmodule

