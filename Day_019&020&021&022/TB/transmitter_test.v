`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:44:10 07/09/2023
// Design Name:   Transmitter
// Module Name:   transmitter_test.v
// Project Name:  uart
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Transmitter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module transmitter_test_v;

	// Inputs
	reg [7:0] data_in;
	reg start_bit;
	reg stop_bit;
	reg clk;
	reg rst;

	// Outputs
	wire data_out;

	// Instantiate the Unit Under Test (UUT)
	Transmitter uut (
		.data_in(data_in), 
		.start_bit(start_bit), 
		.stop_bit(stop_bit), 
		.clk(clk), 
		.rst(rst), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		data_in = 8'd17;
		start_bit = 0;
		stop_bit = 0;
		clk = 0;
		rst = 1;
 
 
 
      #100
		$stop;
		

	end
      always #5 clk=~clk;
endmodule

