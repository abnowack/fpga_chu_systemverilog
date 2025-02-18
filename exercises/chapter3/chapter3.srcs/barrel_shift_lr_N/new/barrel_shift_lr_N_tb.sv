`timescale 1ns / 1ps

module barrel_shift_lr_N_tb(
    );
    
    logic [15:0] a;
    logic dir;
    logic [3:0] amt;
    logic [15:0] y;
    
    barrel_shift_lr_N #(.N(4)) bsr(.a(a), .dir(dir), .amt(amt), .y(y));
    
    initial
    begin
        a = 16'b1011011100111000;
        dir = 0;
        for(int i = 0; i <= 4'b1111; i++) begin
            amt = i;
            # 10;
        end
        dir = 1;
        for(int i = 0; i <= 4'b1111; i++) begin
            amt = i;
            # 10;
        end
        $stop;
    end
    
endmodule
