`timescale 1ns / 1ps

module barrel_shift_lr_reverser_32(
    input logic [31:0] a,
    input logic dir,
    input logic [4:0] amt,
    output logic [31:0] y
    );
    
    logic [31:0] y_r;
    logic [31:0] y_reverse;
    logic [31:0] y_reverse_shift;
    logic [31:0] y_l;
    
    barrel_shift_r_32 bsr(.a(a), .amt(amt), .y(y_r));
    
    reverser_32 rev(.a(a), .en(1), .y(y_reverse));
    barrel_shift_r_32 bsr_rev(.a(y_reverse), .amt(amt), .y(y_reverse_shift));
    reverser_32 rev_y_l(.a(y_reverse_shift), .en(1), .y(y_l));
    
    always_comb
        if (dir)
            y = y_l;
        else
            y = y_r;
endmodule
