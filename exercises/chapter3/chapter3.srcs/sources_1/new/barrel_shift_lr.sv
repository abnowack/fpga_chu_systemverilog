`timescale 1ns / 1ps

module barrel_shift_lr(
    input logic [7:0] a,
    input logic dir,
    input logic [2:0] amt,
    output logic [7:0] y
    );
    
    logic [7:0] y_l;
    logic [7:0] y_r;
    
    barrel_shift_l bsl(.a(a), .amt(amt), .y(y_l));
    barrel_shift_r bsr(.a(a), .amt(amt), .y(y_r));
    
    always_comb
        if (dir)
            y = y_l;
        else
            y = y_r;
endmodule
