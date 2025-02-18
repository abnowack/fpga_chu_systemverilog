`timescale 1ns / 1ps

module dual_priority_encoder_tb(
    );
    
    logic [11:0] req;
    logic [3:0] first;
    logic [3:0] second;
    
    dual_priority_encoder dpe(.req(req), .first(first), .second(second));
    
    initial
    begin
        req = 12'b1011011100111000;
        # 10;
        req = 12'b0000011100111000;
        # 10;
        req = 12'b0001000100011111;
        # 10;
        req = 12'b0000000000000001;
        # 10;
        req = 12'b0000000000000011;
        # 10;
        req = 12'b0000000000000000;
        # 10;
        $stop;
    end
    
endmodule
