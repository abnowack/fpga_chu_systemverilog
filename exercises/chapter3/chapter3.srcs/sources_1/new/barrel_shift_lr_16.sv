`timescale 1ns / 1ps

module barrel_shift_lr_16(
    input logic [15:0] a,
    input logic dir,
    input logic [3:0] amt,
    output logic [15:0] y
    );
    
    logic [15:0] y_l;
    logic [15:0] y_r;
    
    barrel_shift_l_16 bsl(.a(a), .amt(amt), .y(y_l));
    barrel_shift_r_16 bsr(.a(a), .amt(amt), .y(y_r));
    
    always_comb
        if (dir)
            y = y_l;
        else
            y = y_r;
endmodule
