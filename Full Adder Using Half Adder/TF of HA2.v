`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:58:04 10/29/2021
// Design Name:   Half_Adder_2
// Module Name:   D:/Lab3/t12.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Half_Adder_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t12;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire S;
	wire C;

	// Instantiate the Unit Under Test (UUT)
	Half_Adder_2 uut (
		.A(A), 
		.B(B), 
		.S(S), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Initial begin
	A=0;
	B=0;
	#100;
	A=1;
	B=1;
	#100;
	   …
	$finish;


	end
      
endmodule

