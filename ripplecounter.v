`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:27:38 10/21/2016 
// Design Name: 
// Module Name:    ripplecounter 
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
module ripplecounter(q,t,clk,reset
    );
	input t,clk,reset;
	output [7:0]q;
	TFF iter1(q[0],t,clk,reset);
	TFF iter2(q[1],t,q[0],reset);
	TFF iter3(q[2],t,q[1],reset);
	TFF iter4(q[3],t,q[2],reset);
	TFF iter5(q[4],t,q[3],reset);
	TFF iter6(q[5],t,q[4],reset);
	TFF iter7(q[6],t,q[5],reset);
	TFF iter8(q[7],t,q[6],reset);
	
endmodule
