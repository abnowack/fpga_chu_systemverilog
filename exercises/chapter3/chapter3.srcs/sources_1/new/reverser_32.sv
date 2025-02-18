`timescale 1ns / 1ps

module reverser_32(
    input logic [31:0] a,
    input logic en,
    output logic [31:0] y
    );
    
    always_comb
        if (en)
            y = {a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11], a[12], a[13], a[14], a[15],
                 a[16], a[17], a[18], a[19], a[20], a[21], a[22], a[23], a[24], a[25], a[26], a[27], a[28], a[29], a[30], a[31]};
        else
            y = a;
endmodule
