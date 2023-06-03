`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:50:45 06/04/2023
// Design Name:   ALU
// Module Name:   ALU_TEST.v
// Project Name:  day_003
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_TEST_v;

	// Inputs
	reg [1:0] opcode;
	reg [3:0] in1;
	reg [3:0] in2;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.opcode(opcode), 
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		opcode = 0;
		in1 = 0;
		in2 = 0;

		#10
		opcode=2'b01;
		in1=4'b1011;
		in2=4'b0110;
		
		#10
		opcode=2'b00;
		in1=4'b1100;
		in2=4'b0111;
		
		#10
		opcode=2'b10;
		in1=4'b1100;
		in2=4'b0111;
		
		#10
		opcode=2'b11;
		in1=4'b1100;
		in2=4'b0111;
		
		#13
		$finish;
		
		

	end
      
endmodule

