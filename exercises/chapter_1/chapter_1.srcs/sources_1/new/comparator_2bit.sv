`timescale 1ns / 1ps

module comparator_2bit
    (
        input logic [1:0] a, b,
        output logic eq
    );
    
    logic p0, p1, p2, p3;
    
    assign eq = p0 | p1 | p2 | p3;
    
    assign p0 = (~a[1] & ~b[1]) & (~a[0] & ~b[0]);
    assign p1 = (~a[1] & ~b[1]) & (a[0] & b[0]);
    assign p2 = (a[1] & b[1]) & (~a[0] & ~b[0]);
    assign p3 = (a[1] & b[1]) & (a[0] & b[0]);
endmodule
