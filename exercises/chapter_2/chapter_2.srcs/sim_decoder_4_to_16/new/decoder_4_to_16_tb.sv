`timescale 1ns / 1ps

module decoder_4_to_16_tb;
    logic test_en;
    logic [3:0] test_in;
    logic [15:0] test_out;

    decoder_4_to_16 uut(.en(test_en), .a(test_in), .bcode(test_out));

    initial
    begin
        test_en = 0;
        for(int i = 0; i <= 4'b1111; i++) begin
            test_in = i;
            # 10;
        end
        test_en = 1;
        for(int i = 0; i <= 4'b1111; i++) begin
            test_in = i;
            # 10;
        end
        $stop;
    end

endmodule
