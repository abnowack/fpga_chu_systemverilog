`timescale 1ns / 1ps

module barrel_shift_r_tb(
    );
    
    logic [7:0] a;
    logic [2:0] amt;
    logic [7:0] y;
    
    barrel_shift_r bsr(.a(a), .amt(amt), .y(y));
    
    initial
    begin
        a = 8'b10110111;
        for(int i = 0; i <= 3'b111; i++) begin
            amt = i;
            # 10;
        end
        $stop;
    end
    
endmodule
