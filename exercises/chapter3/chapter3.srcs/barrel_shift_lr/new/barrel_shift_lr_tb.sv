`timescale 1ns / 1ps

module barrel_shift_lr_tb(
    );
    
    logic [7:0] a;
    logic dir;
    logic [2:0] amt;
    logic [7:0] y;
    
    barrel_shift_lr bsr(.a(a), .dir(dir), .amt(amt), .y(y));
    
    initial
    begin
        a = 8'b10110111;
        dir = 0;
        for(int i = 0; i <= 3'b111; i++) begin
            amt = i;
            # 10;
        end
        dir = 1;
        for(int i = 0; i <= 3'b111; i++) begin
            amt = i;
            # 10;
        end
        $stop;
    end
    
endmodule
