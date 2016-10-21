`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:08:02 10/21/2016
// Design Name:   TFF
// Module Name:   E:/Bhosdika/tff_test.v
// Project Name:  Bhosdika
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TFF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tff_test;

	// Inputs
	reg t;
	reg clk;
	reg reset;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	TFF uut (
		.t(t), 
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		t = 1;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #2 reset = 1;
   always #5 clk=~clk;
	always #10 t=~t;
endmodule

