`timescale 1ns / 1ps

module greater_than_4bit(
    input logic [3:0] a, b,
    output logic eq
    );

    logic gt10, gt32, eq10, eq32;
    logic p0, p1;

    greater_than_2bit gt_01(.a(a[1:0]), .b(b[1:0]), .eq(gt10));
    greater_than_2bit gt_32(.a(a[3:2]), .b(b[3:2]), .eq(gt32));
    equality_2bit eq_01(.a(a[1:0]), .b(b[1:0]), .eq(eq10));
    equality_2bit eq_32(.a(a[3:2]), .b(b[3:2]), .eq(eq32));

    assign p0 = ~gt32 & eq32 & gt10 & ~eq10;
    assign p1 = gt32 & ~eq32;

    assign eq = p0 | p1;

endmodule
