`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:54:37 06/15/2023
// Design Name:   Bit_4_UP_DOWN_COUNTER
// Module Name:   Bit_4_UP_DOWN_COUNTER_test.v
// Project Name:  day_007
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Bit_4_UP_DOWN_COUNTER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Bit_4_UP_DOWN_COUNTER_test_v;

	// Inputs

	reg trig;
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] count_out;

	// Instantiate the Unit Under Test (UUT)
	Bit_4_UP_DOWN_COUNTER uut (
		
		.trig(trig), 
		.clk(clk), 
		.rst(rst), 
		.count_out(count_out)
	);

	initial begin
		// Initialize Inputs
		trig = 0;
		clk = 0;
		rst = 1;
		
		#10
		trig=1'b1;
		#80
		trig=1'b0;
		#50
		$stop;

      
		

	end
      always #5 clk=~clk;
endmodule

