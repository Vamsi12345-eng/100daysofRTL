`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:49:29 07/27/2023
// Design Name:   PWM_FOR_LIGHT_BR
// Module Name:   test.v
// Project Name:  Day_025
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PWM_FOR_LIGHT_BR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_v;

	// Inputs
	reg clk;
	reg rst;
	reg [6:0] D_C_M;

	// Outputs
	wire light_clk;

	// Instantiate the Unit Under Test (UUT)
	PWM_FOR_LIGHT_BR uut (
		.clk(clk), 
		.rst(rst), 
		.light_clk(light_clk), 
		.D_C_M(D_C_M)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		D_C_M = 0;

      #10
		D_C_M=7'd25;
		
		#100000
		D_C_M=7'd50;
		
		#100000
		D_C_M=7'd75;
		
		#100000
		D_C_M=7'd100;
		
		#100000
		$stop;
		

	end
     always #5 clk=~clk; 
endmodule

