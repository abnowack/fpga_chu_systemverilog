`timescale 1ns / 1ps

module top_decoder_4_to_16(
    input logic [15:0] SW,
    output logic [15:0] LED
    );

    decoder_4_to_16 decoder(.en(SW[0]), .a(SW[4:1]), .bcode(LED[15:0]));

endmodule
