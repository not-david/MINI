`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:43:19 09/06/2016 
// Design Name: 
// Module Name:    Adder8bit 
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
module Adder8bit(
    input [7:0] A,
    input [7:0] B,
    input CIN,
    output [7:0] SUM,
    output CARRY
    );
wire c1;

Adder4bit u0 (
		.A(A[3:0]), 
		.B(B[3:0]), 
		.CIN(CIN), 
		.SUM(SUM[3:0]), 
		.CARRY(c1)
	);
Adder4bit u1 (
		.A(A[7:4]), 
		.B(B[7:4]), 
		.CIN(c1), 
		.SUM(SUM[7:4]), 
		.CARRY(CARRY)
	);

endmodule
