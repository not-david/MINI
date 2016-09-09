`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:01:37 09/06/2016 
// Design Name: 
// Module Name:    Adder16bit 
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
module Adder16bit(
    input [15:0] A,
    input [15:0] B,
    input CIN,
    output [15:0] SUM,
    output COUT
    );
wire c1;

Adder8bit u0 (
		.A(A[7:0]), 
		.B(B[7:0]), 
		.CIN(CIN), 
		.SUM(SUM[7:0]), 
		.CARRY(c1)
	);

Adder8bit u1 (
		.A(A[15:8]), 
		.B(B[15:8]), 
		.CIN(c1), 
		.SUM(SUM[15:8]), 
		.CARRY(COUT)
	);


endmodule
