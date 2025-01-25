`timescale 1ns / 1ps

module top_decoder_3_to_8(
    input logic [15:0] SW,
    output logic [15:0] LED
    );

    decoder_3_to_8 decoder(.en(SW[0]), .a(SW[3:1]), .bcode(LED[7:0]));

endmodule
