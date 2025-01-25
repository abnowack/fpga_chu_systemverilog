`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2025 04:08:19 PM
// Design Name: 
// Module Name: top
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


module top
    (
        input logic SW[1:0],
        output logic LED[4:0]
    );
    
    logic p0, p1;
    
    assign p0 = ~SW[0] & ~SW[1];
    assign p1 = SW[0] & SW[1];
    assign LED[0] = SW[0];
    assign LED[1] = SW[1];
    assign LED[2] = p0;
    assign LED[3] = p1;
    assign LED[4] = p0 | p1;
endmodule
