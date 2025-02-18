`timescale 1ns / 1ps

module barrel_shift_l_16(
    input logic [15:0] a,
    input logic [3:0] amt,
    output logic [15:0] y
    );
    
    logic [15:0] s0, s1, s2;
    assign s0 = amt[0] ? {a[14:0], a[15]} : a;
    assign s1 = amt[1] ? {s0[13:0], s0[15:14]} : s0;
    assign s2 = amt[2] ? {s1[11:0], s1[15:12]} : s1;
    assign y = amt[3] ? {s2[7:0], s2[15:8]} : s2;
endmodule
