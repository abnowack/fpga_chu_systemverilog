`timescale 1ns / 1ps

module decoder_3_to_8(
    input logic en,
    input logic [2:0] a,
    output logic [7:0] bcode
    );
    
    logic en_0, en_1;
    
    assign en_0 = en & ~a[2];
    assign en_1 = en & a[2];
    
    decoder_2_to_4 decode_0(.en(en_0), .a(a[1:0]), .bcode(bcode[3:0]));
    decoder_2_to_4 decode_1(.en(en_1), .a(a[1:0]), .bcode(bcode[7:4]));
    
endmodule
