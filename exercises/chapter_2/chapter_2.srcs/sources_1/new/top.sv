`timescale 1ns / 1ps

module top(
    input logic [15:0] SW,
    output logic [15:0] LED
    );

    greater_than_2bit gt2(.a(SW[3:2]), .b(SW[1:0]), .eq(LED[0]));
    greater_than_4bit gt4(.a(SW[15:12]), .b(SW[11:8]), .eq(LED[15]));

endmodule
