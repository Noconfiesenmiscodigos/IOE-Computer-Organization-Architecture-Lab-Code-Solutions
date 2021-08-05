`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:11:49 08/05/2021
// Design Name:   Basic_Gate_Implementation
// Module Name:   E:/HDL Project/Lab1/tf.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Basic_Gate_Implementation
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire Y1;
	wire Y2;
	wire Y3;
	wire Y4;
	wire Y5;
	wire Y6;
	wire Y7;

	// Instantiate the Unit Under Test (UUT)
	Basic_Gate_Implementation uut (
		.A(A), 
		.B(B), 
		.Y1(Y1), 
		.Y2(Y2), 
		.Y3(Y3), 
		.Y4(Y4), 
		.Y5(Y5), 
		.Y6(Y6), 
		.Y7(Y7)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

