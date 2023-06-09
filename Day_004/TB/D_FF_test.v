`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:52:38 06/05/2023
// Design Name:   D_FF
// Module Name:   D_FF_test.v
// Project Name:  day_004
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_FF_test_v;

	// Inputs
	reg clk;
	reg rst;
	reg D_in;

	// Outputs
	wire D_out;

	// Instantiate the Unit Under Test (UUT)
	D_FF uut (
		.clk(clk), 
		.rst(rst), 
		.D_in(D_in), 
		.D_out(D_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		D_in = 0;

		
		#10;
		rst = 0;
		D_in = 1;
		
		#13;
		rst = 1;
		D_in = 1;

      
		#5;
		rst = 0;
		D_in = 0;



      #25;
		rst = 0;
		D_in = 1;

      #10;
		rst = 1;
		D_in = 1;
		
		#14
		$stop;



	end
   always #5 clk=~clk;   
endmodule

