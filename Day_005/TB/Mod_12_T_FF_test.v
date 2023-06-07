`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:31:07 06/07/2023
// Design Name:   Mod_12_T_FF
// Module Name:   Mod_12_T_FF_test.v
// Project Name:  day_005
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mod_12_T_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mod_12_T_FF_test_v;

	// Inputs
	reg in_en;
	reg clk;
	

	// Outputs
	wire [3:0] count_out;

	// Instantiate the Unit Under Test (UUT)
	Mod_12_T_FF uut (
		.in_en(in_en), 
		.clk(clk), 
		.count_out(count_out)
	);

	initial begin
		// Initialize Inputs
		in_en = 0;
		clk = 0;
 

		
		#10

		in_en=1'b1;
		
		#280
		$stop;
		
		

	end
     always #5 clk=~clk; 
endmodule

