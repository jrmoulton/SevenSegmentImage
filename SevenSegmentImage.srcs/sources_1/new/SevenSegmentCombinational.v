`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2021 12:12:31 PM
// Design Name: 
// Module Name: SevenSegmentCombinational
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SevenSegmentCombinational(input x0, x1, x2, x3, output wire a, b, c, d, e, f, g);
    assign a = x3 | x1 | x2&x0 | ~x2&~x0;
    assign b = ~x2 | x1&x0 | ~x1&~x0;
    assign c = x3 | x2 | ~x1 | x0;
    assign d = x0&x2&~x1 | x1&~x0 | x1&~x2| x3 | ~x0&~x2;
    assign e = ~x0&~x3&~x2 | ~x0&~x3&x2&x1 | ~x0&x3&~x2&~x1;
    assign f = x3 | x2&~x1 | x2&~x0 | ~x1&~x0;
    assign g = x1&~x0 | x2&~x1 | x3 | ~x2&x1;
    
endmodule
