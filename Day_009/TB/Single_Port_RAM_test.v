`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:03:13 06/19/2023
// Design Name:   Single_Port_RAM_16_8
// Module Name:   Single_Port_RAM_test.v
// Project Name:  day_009
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Single_Port_RAM_16_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Single_Port_RAM_test_v;

	// Inputs
	reg clk;
	reg rst;
	reg rd_en;
	reg wr_en;
	reg [7:0] wr_data;
	reg [3:0] wr_addr;
	reg [3:0] rd_addr;

	// Outputs
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	Single_Port_RAM_16_8 uut (
		.clk(clk), 
		.rst(rst), 
		.rd_en(rd_en), 
		.wr_en(wr_en), 
		.wr_data(wr_data), 
		.wr_addr(wr_addr), 
		.rd_addr(rd_addr), 
		.data_out(data_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		rd_en = 0;
		wr_en = 0;
		wr_data = 0;
		wr_addr = 0;
		rd_addr = 0;
 
 
 
 
      #20
		rd_en=1;
		wr_en=1;
		
		
		
		#10
		rd_en=0;
		wr_en=1;
		wr_addr=4'd4;
		wr_data=8'd12;
		
		#10
		rd_en=1;
		wr_en=0;
		rd_addr=4'd4;
		
		
		
		#100;
		$stop;
        
		

	end
    always #5 clk=~clk;  
endmodule

