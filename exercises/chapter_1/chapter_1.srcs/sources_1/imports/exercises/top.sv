`timescale 1ns / 1ps

module top
    (
        input logic SW[1:0],
        output logic LED[4:0]
    );
    
    comparator_2bit comparator (.a(SW[1:0]), .b(SW[1:0]), .eq(LED[0]));
endmodule
