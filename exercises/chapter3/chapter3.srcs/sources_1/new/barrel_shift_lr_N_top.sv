`timescale 1ns / 1ps

module barrel_shift_lr_N_top(
    input logic [15:0] SW,
    output logic [15:0] LED
    );
    
    barrel_shift_lr_N #(.N(3)) bs(.a(SW[7:0]), .dir(SW[15]), .amt(SW[14:12]), .y(LED));
endmodule
