`timescale 1ns / 1ps

module comparator_2bit_2
    (
        input logic [1:0] a, b,
        output logic eq
    );
    
    logic e0, e1;
    
    comparator_1bit bit0_comparator (.a(a[0]), .b(b[0]), .eq(e0));
    comparator_1bit bit1_comparator (.a(a[1]), .b(b[1]), .eq(e1));
    
    assign eq = e0 & e1;
endmodule
