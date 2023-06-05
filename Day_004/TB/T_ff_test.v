`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:09:18 06/05/2023
// Design Name:   T_ff
// Module Name:   T_ff_test.v
// Project Name:  day_004
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: T_ff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module T_ff_test_v;

	// Inputs
	reg clk;
	reg rst;
	reg T_in;

	// Outputs
	wire T_out;

	// Instantiate the Unit Under Test (UUT)
	T_ff uut (
		.clk(clk), 
		.rst(rst), 
		.T_in(T_in), 
		.T_out(T_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		T_in = 0;

		#10;
		rst = 0;
		T_in = 1;
		
		#13;
		rst = 1;
		T_in = 1;

      
		#5;
		rst = 0;
		T_in = 0;



      #25;
		rst = 0;
		T_in = 1;

      #10;
		rst = 1;
		T_in = 1;
		
		#14
		$stop;

	end
     always #5 clk=~clk; 
endmodule

