`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:22:23 06/02/2023
// Design Name:   Ripple_Carry_Adder
// Module Name:   Ripple_Carry_Adder_Test.v
// Project Name:  day_002
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ripple_Carry_Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ripple_Carry_Adder_Test_v;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [4:0] out;

	// Instantiate the Unit Under Test (UUT)
	Ripple_Carry_Adder uut (
		.a(a), 
		.b(b), 
		.out(out)
	);
 integer i;
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
    for(i=0;i<=8;i=i+1) begin
	 #15
	 a=i;
	 b=i+4;
	 end
	 
	 #25
	 $finish;
		

	end
      
endmodule

