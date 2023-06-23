`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:06:17 06/23/2023
// Design Name:   Traffic_Light_Controller
// Module Name:   Traffic_Light_Controller_Test.v
// Project Name:  day_011
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Traffic_Light_Controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Traffic_Light_Controller_Test_v;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [2:0] D1;
	wire [2:0] D2;
	wire [2:0] D3;
	wire [2:0] D4;

	// Instantiate the Unit Under Test (UUT)
	Traffic_Light_Controller uut (
		.D1(D1), 
		.D2(D2), 
		.D3(D3), 
		.D4(D4), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		
		#10
		rst=1;
		



	end
     always #5 clk=~clk; 
endmodule

