`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:36:53 09/08/2016
// Design Name:   RSLatch
// Module Name:   /home/david/Desktop/Project Lab 1/MINI/tb_RSLatch.v
// Project Name:  MINI
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RSLatch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_RSLatch;

	// Inputs
	reg R;
	reg S;

	// Outputs
	wire Q;
	wire Qn;

	// Instantiate the Unit Under Test (UUT)
	RSLatch uut (
		.R(R), 
		.S(S), 
		.Q(Q), 
		.Qn(Qn)
	);

	initial begin
		// Initialize Inputs
		R = 0;
		S = 0;
    
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		R=1;
		#100;
		S=1;
		R=0;
		#100
		R=1;
		#100;
	end
      
endmodule

