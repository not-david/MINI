`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:38:48 09/05/2016
// Design Name:   FullAdder
// Module Name:   /home/david/Desktop/Project Lab 1/MINI/tb_FullAdder.v
// Project Name:  MINI
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FullAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_FullAdder;

	// Inputs
	reg A;
	reg B;
	reg CIN;

	// Outputs
	wire SUM;
	wire CARRY;

	// Instantiate the Unit Under Test (UUT)
	FullAdder uut (
		.A(A), 
		.B(B), 
		.CIN(CIN), 
		.SUM(SUM), 
		.CARRY(CARRY)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		CIN = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 1;
		B = 1;
		CIN = 1;
		#100;
		A= 1;
		B= 1;
		CIN = 0;
		#100;
		A = 1;
		B = 0;
		#100;
		// Add stimulus here

	end
      
endmodule

