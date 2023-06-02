`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:22:14 06/02/2023
// Design Name:   mux4_1_dec_tri
// Module Name:   mux_4_1_dec_tri_test.v
// Project Name:  day_002
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux4_1_dec_tri
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_4_1_dec_tri_test_v;

	// Inputs
	reg [3:0] in;
	reg [1:0] sel;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux4_1_dec_tri uut (
		.in(in), 
		.sel(sel), 
		.out(out)
	);
integer i;
	initial begin
		// Initialize Inputs
		in = 4'b1110;
		sel = 0;

      for(i=0;i<=3;i=i+1) begin
		
		#10
		sel=i;
		end
		
		
		#10
		$finish;

	end
      
endmodule

