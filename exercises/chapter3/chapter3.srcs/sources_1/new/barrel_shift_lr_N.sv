`timescale 1ns / 1ps

module barrel_shift_lr_N
    #(parameter N=8)(
    input logic [2**N-1:0] a,
    input logic dir,
    input logic [N-1:0] amt,
    output logic [2**N-1:0] y
    );
    
    logic [2**N-1:0] y_l;
    logic [2**N-1:0] y_r;
    
    barrel_shift_l_N #(.N(N)) bsl(.a(a), .amt(amt), .y(y_l));
    barrel_shift_r_N #(.N(N)) bsr(.a(a), .amt(amt), .y(y_r));
    
    always_comb
        if (dir)
            y = y_l;
        else
            y = y_r;
endmodule
