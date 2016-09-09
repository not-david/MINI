`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:07:40 09/05/2016
// Design Name:   HalfAdder
// Module Name:   /home/david/Desktop/Project Lab 1/MINI/tb_HalfAdder.v
// Project Name:  MINI
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: HalfAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_HalfAdder;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire SUM;
	wire CARRY;

	// Instantiate the Unit Under Test (UUT)
	HalfAdder uut (
		.A(A), 
		.B(B), 
		.SUM(SUM), 
		.CARRY(CARRY)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 1;
		#100;
		B = 1;
		#100;
		
		// Add stimulus here

	end
      
endmodule

