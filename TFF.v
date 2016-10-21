`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:14 10/21/2016 
// Design Name: 
// Module Name:    TFF 
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
module TFF(
	output q,
    input t,
    input clk,
    input reset
    );
wire w1;
assign w1 = q ^ t;
DFF f1(q,w1,clk,reset);
endmodule
