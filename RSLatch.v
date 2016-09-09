`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:28:45 09/08/2016 
// Design Name: 
// Module Name:    RSLatch 
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
module RSLatch(
    input R,
    input S,
    output Q,
    output Qn
    );

assign Q  = (S &~ Qn);
assign Qn = (R &~ Q);

endmodule
