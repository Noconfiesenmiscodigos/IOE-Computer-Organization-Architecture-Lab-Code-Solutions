`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:57:19 10/29/2021
// Design Name:   Half_Adder_1
// Module Name:   D:/Lab3/t11.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Half_Adder_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t11;

	// Outputs
	wire ;

	// Instantiate the Unit Under Test (UUT)
	Half_Adder_1 uut (
		.()
	);

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Initial begin
	A=0;
	B=0;
	#100;
	A=0;
	B=1;
	#100;
	   …
	$finish;

	end
      
endmodule

