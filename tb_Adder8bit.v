`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:46:32 09/06/2016
// Design Name:   Adder8bit
// Module Name:   /home/david/Desktop/Project Lab 1/MINI/tb_Adder8bit.v
// Project Name:  MINI
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Adder8bit;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg CIN;

	// Outputs
	wire [7:0] SUM;
	wire CARRY;

	// Instantiate the Unit Under Test (UUT)
	Adder8bit uut (
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
        
		// Add stimulus here
		A = 10;
		B = 5;
		#100;
		A = 2;
		B = 5;
		#100;
		A = 104;
		B = 10;
		#100;
		A = 64;
		B = 6;
		#100;
		A = 255;
		B = 0;
		#100;
	end
      
endmodule

