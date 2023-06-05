`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:59:12 06/05/2023
// Design Name:   Bit_4_Load_Counter
// Module Name:   Bit_4_Load_Counter_test.v
// Project Name:  day_004
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Bit_4_Load_Counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Bit_4_Load_Counter_test_v;

	// Inputs
	reg [3:0] Load_in;
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] counter_out;

	// Instantiate the Unit Under Test (UUT)
	Bit_4_Load_Counter uut (
		.Load_in(Load_in), 
		.clk(clk), 
		.rst(rst), 
		.counter_out(counter_out)
	);

	initial begin
		// Initialize Inputs
		Load_in = 4'dz;
		clk = 0;
		rst = 0;

      #10
		rst=1;
		
		#10;
		rst=0;
		#10
		Load_in=4'd10;
		#10
		Load_in=4'dx;
		
		#100
		$stop;

	end
     always #5 clk=~clk; 
endmodule

