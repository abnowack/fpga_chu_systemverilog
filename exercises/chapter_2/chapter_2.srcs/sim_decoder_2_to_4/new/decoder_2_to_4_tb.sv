`timescale 1ns / 1ps

module decoder_2_to_4_tb;
    logic test_en;
    logic [2:0] test_in;
    logic [3:0] test_out;

    decoder_2_to_4 uut(.en(test_en), .a(test_in), .bcode(test_out));

    initial
    begin
        test_en = 0;
        for(int i = 0; i <= 2'b11; i++) begin
            test_in = i;
            # 10;
        end
        test_en = 1;
        for(int i = 0; i <= 2'b11; i++) begin
            test_in = i;
            # 10;
        end
        $stop;
    end

endmodule
