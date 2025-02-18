`timescale 1ns / 1ps

module barrel_shift_r_top(
    input logic [15:0] SW,
    output logic [7:0] LED
    );
    
    barrel_shift_r bsr(.a(SW[7:0]), .amt(SW[15:13]), .y(LED));
endmodule
