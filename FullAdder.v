`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:29:21 09/05/2016 
// Design Name: 
// Module Name:    FullAdder 
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
module FullAdder(
    input A,
    input B,
    input CIN,
    output SUM,
    output CARRY
    );
 
 wire s;
 wire c1;
 wire c2;
 
 

 HalfAdder u1 (
		.A(A), 
		.B(B), 
		.SUM(s), 
		.CARRY(c1)
	);
HalfAdder u2 (
		.A(s), 
		.B(CIN), 
		.SUM(SUM), 
		.CARRY(c2)
	);

 assign CARRY = (c2 | c1);

endmodule
