`timescale 1ns / 1ps

module barrel_shift_l_N
    #(parameter N, localparam M = 2**N-1)(
    input logic [M:0] a,
    input logic [N-1:0] amt,
    output logic [M:0] y
    );
    
    logic [M:0] s[0:N-1];
    
    generate
        genvar i;
        assign s[0] = amt[0] ? {a[M-1:0], a[M]} : a;
        for (i = 1; i < N; i = i+1)
            begin
                localparam A = 2**i;
                assign s[i] = amt[i] ? {s[i-1][M-A:0], s[i-1][M:M-A-1]} : s[i-1];
            end
    endgenerate

    assign y = s[N-1];
endmodule
