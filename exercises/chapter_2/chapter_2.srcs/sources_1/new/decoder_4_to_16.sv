`timescale 1ns / 1ps

module decoder_4_to_16(
    input logic en,
    input logic [3:0] a,
    output logic [15:0] bcode
    );
    
    logic en_0, en_1, en_2, en_3;
    
    assign en_0 = en & ~a[3] & ~a[2];
    assign en_1 = en & ~a[3] & a[2];
    assign en_2 = en & a[3] & ~a[2];
    assign en_3 = en & a[3] & a[2];
    
    decoder_2_to_4 decode_0(.en(en_0), .a(a[1:0]), .bcode(bcode[3:0]));
    decoder_2_to_4 decode_1(.en(en_1), .a(a[1:0]), .bcode(bcode[7:4]));
    decoder_2_to_4 decode_2(.en(en_2), .a(a[1:0]), .bcode(bcode[11:8]));
    decoder_2_to_4 decode_3(.en(en_3), .a(a[1:0]), .bcode(bcode[15:12]));
    
endmodule
