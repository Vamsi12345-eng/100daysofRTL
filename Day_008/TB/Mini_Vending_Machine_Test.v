`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:43:49 06/17/2023
// Design Name:   Mini_Vending_Machine
// Module Name:   Mini_Vending_Machine_Test.v
// Project Name:  day_008
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mini_Vending_Machine
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mini_Vending_Machine_Test_v;

	// Inputs
	reg clk;
	reg rst;
	reg [1:0] coin_in;

	// Outputs
	wire product_out;
	wire change_out;

	// Instantiate the Unit Under Test (UUT)
	Mini_Vending_Machine uut (
		.clk(clk), 
		.rst(rst), 
		.coin_in(coin_in), 
		.product_out(product_out), 
		.change_out(change_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		coin_in = 0;

		#10
		coin_in = 2'd1;
		
		#10
		coin_in = 2'd1;
		
		#10
		coin_in = 2'd2;
		
		#10
		coin_in = 2'd2;
		#10
		coin_in = 2'd2;
		
		#10
		coin_in = 2'd1;
		
		#10
		coin_in = 2'd1;
		
		#10
		coin_in = 2'd1;
       
		 #30
		 $stop;
	end
     always #5 clk=~clk; 
endmodule

