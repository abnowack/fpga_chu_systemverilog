`timescale 1ns / 1ps

module reverser(
    input logic [7:0] a,
    input logic en,
    output logic [7:0] y
    );
    
    always_comb
        if (en)
            y = {a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7]};
        else
            y = a;
endmodule
