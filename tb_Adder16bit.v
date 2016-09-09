`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:06:42 09/06/2016
// Design Name:   Adder16bit
// Module Name:   /home/david/Desktop/Project Lab 1/MINI/tb_Adder16bit.v
// Project Name:  MINI
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder16bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Adder16bit;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg CIN;

	// Outputs
	wire [15:0] SUM;
	wire COUT;

	// Instantiate the Unit Under Test (UUT)
	Adder16bit uut (
		.A(A), 
		.B(B), 
		.CIN(CIN), 
		.SUM(SUM), 
		.COUT(COUT)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		CIN = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A = 100;
		B = 155;
		CIN = 0;
		#100;
		A = 62;
		B = 2;
		CIN = 0;
		#100;
		A = 10;
		B = 4;
		CIN = 1;
		#100;
		A = 1;
		B = 9;
		CIN = 0;
		#100;
	end
      
endmodule

