`timescale 1ns / 1ps

module bcd_3_incrementor(
    input logic [3:0] a_0,
    input logic [3:0] a_1,
    input logic [3:0] a_2,
    output logic [3:0] y_0,
    output logic [3:0] y_1,
    output logic [3:0] y_2
    );
    
    logic carry_0, carry_1, carry_2;
    
    logic [3:0] a_inc_0;
    logic [3:0] a_inc_1;
    logic [3:0] a_inc_2;
    
    bcd_1_incrementor bcd_0(.a(a_0), .y(a_inc_0), .carry(carry_0));
    bcd_1_incrementor bcd_1(.a(a_1), .y(a_inc_1), .carry(carry_1));
    bcd_1_incrementor bcd_2(.a(a_2), .y(a_inc_2), .carry(carry_2));
    
    assign y_0 = a_inc_0;
    assign y_1 = carry_0 ? a_inc_1 : a_1;
    assign y_2 = carry_0 & carry_1 ? a_inc_2 : a_2;

endmodule
