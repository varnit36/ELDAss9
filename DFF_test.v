`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:59:43 10/21/2016
// Design Name:   DFF
// Module Name:   E:/Bhosdika/DFF_test.v
// Project Name:  Bhosdika
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DFF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DFF_test;

	// Inputs
	reg D;
	reg clk;
	reg reset;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	DFF uut (
		.Q(Q), 
		.D(D), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   always #5 clk=~clk;
	always #10 D=~D;
	
endmodule

