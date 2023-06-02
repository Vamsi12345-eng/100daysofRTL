`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:41:50 06/02/2023
// Design Name:   bidirectional_buffer
// Module Name:   bidirectional_buffer_test.v
// Project Name:  day_002
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bidirectional_buffer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bidirectional_buffer_test_v;

	// Inputs
	reg sender_port;
	reg sender_in;
	reg reciever_in;

	// Outputs
	wire sender_out;
	wire reciever_out;

	// Instantiate the Unit Under Test (UUT)
	bidirectional_buffer uut (
		.sender_port(sender_port), 
		.sender_in(sender_in), 
		.sender_out(sender_out), 
		.reciever_in(reciever_in), 
		.reciever_out(reciever_out)
	);

	initial begin
		// Initialize Inputs
		sender_port = 0;
		sender_in = 0;
		reciever_in = 0;

		#10
		sender_port = 1;
		sender_in = 1;
		reciever_in = 0;
		
		#10
		sender_port = 1;
		sender_in = 1;
		reciever_in = 0;
		
		#25
		$finish;
		

	end
      
endmodule

