`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:36:39 06/06/2023
// Design Name:   JK_FF
// Module Name:   JK_FF_test.v
// Project Name:  day_005
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JK_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JK_FF_test_v;

	// Inputs
	reg J_in;
	reg K_in;
	reg clk;
	reg rst;

	// Outputs
	wire JK_out;

	// Instantiate the Unit Under Test (UUT)
	JK_FF uut (
		.J_in(J_in), 
		.K_in(K_in), 
		.clk(clk), 
		.rst(rst), 
		.JK_out(JK_out)
	);

	initial begin
		// Initialize Inputs
		J_in = 0;
		K_in = 0;
		clk = 0;
		rst = 0;


     #10
	  {J_in,K_in}=2'b10;
	  
	  #10
	  {J_in,K_in}=2'b01;
	  
	  #10
	  {J_in,K_in}=2'b00;
	  
	  #10
	  {J_in,K_in}=2'b11;
	  
	  #10
	  {J_in,K_in}=2'b01;
	  
 
 
     #20
	  $stop;
	end
    always  #5 clk=~clk; 
endmodule

