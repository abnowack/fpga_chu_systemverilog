`timescale 1ns / 1ps

module barrel_shift_lr_top(
    input logic [15:0] SW,
    output logic [7:0] LED
    );
    
    barrel_shift_lr bs(.a(SW[7:0]), .dir(SW[15]), .amt(SW[14:12]), .y(LED));
endmodule
