`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:19:06 07/06/2023
// Design Name:   B2G_G2B_CONV
// Module Name:   TEST.v
// Project Name:  Day_018
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: B2G_G2B_CONV
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_v;

	// Inputs
	reg chooser;
	reg [3:0] in;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	B2G_G2B_CONV uut (
		.chooser(chooser), 
		.in(in), 
		.out(out)
	);
integer i;
initial begin



for(i=0;i<=15;i=i+1) begin
#10
chooser=1'b1;
in=i;

end

for(i=0;i<=15;i=i+1) begin
#10
chooser=1'b0;
in=i;
end



#10
$stop;

end
      
endmodule

