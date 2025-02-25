`timescale 1ns / 1ps

module bcd_incrementor_3_tb(
    );
    
    logic [3:0] a_0;
    logic [3:0] a_1;
    logic [3:0] a_2;
    
    logic [3:0] y_0;
    logic [3:0] y_1;
    logic [3:0] y_2;
    
    bcd_3_incrementor bcd3(.a_0(a_0), .a_1(a_1), .a_2(a_2), .y_0(y_0), .y_1(y_1), .y_2(y_2));
    
    initial
    begin
        a_0 = 1;
        a_1 = 1;
        a_2 = 1;
        # 10;
        a_0 = 1;
        a_1 = 1;
        a_2 = 9;
        # 10;
        a_0 = 1;
        a_1 = 9;
        a_2 = 9;
        # 10;
        a_0 = 9;
        a_1 = 9;
        a_2 = 9;
        # 10;
        a_0 = 9;
        a_1 = 9;
        a_2 = 1;
        # 10;
        a_0 = 9;
        a_1 = 9;
        a_2 = 4;
        # 10;
        a_0 = 9;
        a_1 = 8;
        a_2 = 4;
        # 10;
        $stop;
    end
    
endmodule
