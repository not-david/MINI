`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:17:21 09/06/2016 
// Design Name: 
// Module Name:    Adder4bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Adder4bit(
    input [3:0] A,
    input [3:0] B,
    input CIN,
    output [3:0] SUM,
	 output CARRY
    );
	 wire c1;
	 wire c2;
	 wire c3;
FullAdder u0 (
		.A(A[0]), 
		.B(B[0]), 
		.CIN(CIN), 
		.SUM(SUM[0]), 
		.CARRY(c1)
	);
FullAdder u1 (
		.A(A[1]), 
		.B(B[1]), 
		.CIN(c1), 
		.SUM(SUM[1]), 
		.CARRY(c2)
	);
FullAdder u2 (
		.A(A[2]), 
		.B(B[2]), 
		.CIN(c2), 
		.SUM(SUM[2]), 
		.CARRY(c3)
	);
FullAdder u3 (
		.A(A[3]), 
		.B(B[3]), 
		.CIN(c3), 
		.SUM(SUM[3]), 
		.CARRY(CARRY)
	);

endmodule
