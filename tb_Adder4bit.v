`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:22:11 09/06/2016
// Design Name:   Adder4bit
// Module Name:   /home/david/Desktop/Project Lab 1/MINI/tb_Adder4bit.v
// Project Name:  MINI
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Adder4bit;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg CIN;

	// Outputs
	wire [3:0] SUM;
	wire CARRY;

	// Instantiate the Unit Under Test (UUT)
	Adder4bit uut (
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
      A = (4'b1111);
		B = 2;
		#100;
		A = 1;
		B = 0;
		CIN = 1;
		#100;
		B=1;
		#100;
		A = 13;
		B = 2;
		CIN = 0;
		#100;
		// Add stimulus here

	end
      
endmodule

