`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:31:35 10/21/2016
// Design Name:   ripplecounter
// Module Name:   E:/Bhosdika/ripple_testbench.v
// Project Name:  Bhosdika
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripplecounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_testbench;

	// Inputs
	reg t;
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	ripplecounter uut (
		.q(q), 
		.t(t), 
		.clk(clk), 
		.reset(reset)
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
		always #10 clk = ~clk;
endmodule

