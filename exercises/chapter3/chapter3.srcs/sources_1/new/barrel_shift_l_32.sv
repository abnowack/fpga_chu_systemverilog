`timescale 1ns / 1ps

module barrel_shift_l_32(
    input logic [31:0] a,
    input logic [4:0] amt,
    output logic [31:0] y
    );
    
    logic [31:0] s0, s1, s2, s3;
    assign s0 = amt[0] ? {a[30:0], a[31]} : a;
    assign s1 = amt[1] ? {s0[29:0], s0[31:30]} : s0;
    assign s2 = amt[2] ? {s1[27:0], s1[31:28]} : s1;
    assign s3 = amt[3] ? {s2[23:0], s2[31:24]} : s2;
    assign y = amt[4] ? {s3[15:0], s3[31:16]} : s3;
endmodule
