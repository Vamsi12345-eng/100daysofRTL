`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:57:45 06/06/2023
// Design Name:   SR_latch
// Module Name:   SR_latch_test.v
// Project Name:  day_005
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SR_latch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SR_latch_test_v;

	// Inputs
	reg S_in;
	reg R_in;

	// Outputs
	wire Q_out;
	wire Q_not_out;

	// Instantiate the Unit Under Test (UUT)
	SR_latch uut (
		.S_in(S_in), 
		.R_in(R_in), 
		.Q_out(Q_out), 
		.Q_not_out(Q_not_out)
	);

	initial begin
		// Initialize Inputs
		S_in = 0;
		R_in = 0;

      #10
		{R_in,S_in}=2'b00;
		
		#10
		{R_in,S_in}=2'b01;
		
		#10
		{R_in,S_in}=2'b10;
		
		#10
		{R_in,S_in}=2'b11;
		
		#10
		{R_in,S_in}=2'b00;
		
		#10
		{R_in,S_in}=2'b01;
		
		#10
		{R_in,S_in}=2'b10;
		
		
		#10
		{R_in,S_in}=2'b01;
		
		#10
		{R_in,S_in}=2'b10;
		
		#10
		$stop;
		
		

	end
      
endmodule

