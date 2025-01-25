`timescale 1ns / 1ps

module decoder_2_to_4(
    input logic en,
    input logic [1:0] a,
    output logic [3:0] bcode
    );
    
    assign bcode[0] = en & ~a[1] & ~a[0];
    assign bcode[1] = en & ~a[1] & a[0]; 
    assign bcode[2] = en & a[1] & ~a[0]; 
    assign bcode[3] = en & a[1] & a[0]; 
    
endmodule
