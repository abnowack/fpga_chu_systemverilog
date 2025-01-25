`timescale 1ns / 1ps

module comparator_1bit
    (
        input logic a, b,
        output logic eq
    );
    
    logic p0, p1;
    
    assign eq = p0 | p1;
    
    assign p0 = ~a & ~b;
    assign p1 = a & b;
endmodule
