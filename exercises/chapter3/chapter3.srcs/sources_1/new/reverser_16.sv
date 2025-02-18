`timescale 1ns / 1ps

module reverser_16(
    input logic [15:0] a,
    input logic en,
    output logic [15:0] y
    );
    
    always_comb
        if (en)
            y = {a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11], a[12], a[13], a[14], a[15]};
        else
            y = a;
endmodule
