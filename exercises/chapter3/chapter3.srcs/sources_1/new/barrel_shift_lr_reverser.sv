`timescale 1ns / 1ps

module barrel_shift_lr_reverser(
    input logic [7:0] a,
    input logic dir,
    input logic [2:0] amt,
    output logic [7:0] y
    );
    
    logic [7:0] y_r;
    logic [7:0] y_reverse;
    logic [7:0] y_reverse_shift;
    logic [7:0] y_l;
    
    barrel_shift_r bsr(.a(a), .amt(amt), .y(y_r));
    
    reverser rev(.a(a), .en(1), .y(y_reverse));
    barrel_shift_r bsr_rev(.a(y_reverse), .amt(amt), .y(y_reverse_shift));
    reverser rev_y_l(.a(y_reverse_shift), .en(1), .y(y_l));
    
    always_comb
        if (dir)
            y = y_l;
        else
            y = y_r;
endmodule
