`timescale 1ns / 1ps

module barrel_shift_lr_32(
    input logic [31:0] a,
    input logic dir,
    input logic [4:0] amt,
    output logic [31:0] y
    );
    
    logic [31:0] y_l;
    logic [31:0] y_r;
    
    barrel_shift_l_32 bsl(.a(a), .amt(amt), .y(y_l));
    barrel_shift_r_32 bsr(.a(a), .amt(amt), .y(y_r));
    
    always_comb
        if (dir)
            y = y_l;
        else
            y = y_r;
endmodule
