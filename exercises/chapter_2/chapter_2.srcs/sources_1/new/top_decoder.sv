`timescale 1ns / 1ps

module top_decoder(
    input logic [15:0] SW,
    output logic [15:0] LED
    );

    decoder_2_to_4 decoder(.en(SW[0]), .a(SW[2:1]), .bcode(LED[3:0]));

endmodule
