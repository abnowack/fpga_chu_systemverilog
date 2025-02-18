`timescale 1ns / 1ps

module barrel_shift_lr_reverser_16(
    input logic [15:0] a,
    input logic dir,
    input logic [3:0] amt,
    output logic [15:0] y
    );
    
    logic [15:0] y_r;
    logic [15:0] y_reverse;
    logic [15:0] y_reverse_shift;
    logic [15:0] y_l;
    
    barrel_shift_r_16 bsr(.a(a), .amt(amt), .y(y_r));
    
    reverser_16 rev(.a(a), .en(1), .y(y_reverse));
    barrel_shift_r_16 bsr_rev(.a(y_reverse), .amt(amt), .y(y_reverse_shift));
    reverser_16 rev_y_l(.a(y_reverse_shift), .en(1), .y(y_l));
    
    always_comb
        if (dir)
            y = y_l;
        else
            y = y_r;
endmodule
