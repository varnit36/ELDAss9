`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:58:25 10/21/2016 
// Design Name: 
// Module Name:    DFF 
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
module DFF(
	 output reg Q,
    input D,
    input clk,
    input reset
    );

always@(negedge clk)

if(reset == 0)
	Q<=1'b0;
else
	Q<=D;


endmodule
