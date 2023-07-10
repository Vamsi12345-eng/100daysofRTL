`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:23:08 07/10/2023
// Design Name:   TOP_MODULE
// Module Name:   TOP_MODULE_TEST.v
// Project Name:  uart
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TOP_MODULE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TOP_MODULE_TEST_v;

	// Inputs
	reg [7:0] data_in;
	reg clk;
	reg rst;
	reg start_bit;
	reg stop_bit;

	// Outputs
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	TOP_MODULE uut (
		.data_in(data_in), 
		.clk(clk), 
		.rst(rst), 
		.data_out(data_out), 
		.start_bit(start_bit), 
		.stop_bit(stop_bit)
	);

	initial begin
		// Initialize Inputs
		data_in =8'd12;
		clk = 0;
		rst = 1;
		start_bit = 0;
		stop_bit = 1;
		
		

	end
      always #5 clk=~clk;
endmodule

