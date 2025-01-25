`timescale 1ns / 1ps

module decoder_3_to_8_tb;
    logic test_en;
    logic [2:0] test_in;
    logic [7:0] test_out;

    decoder_3_to_8 uut(.en(test_en), .a(test_in), .bcode(test_out));

    initial
    begin
        test_en = 0;
        for(int i = 0; i <= 3'b111; i++) begin
            test_in = i;
            # 10;
        end
        test_en = 1;
        for(int i = 0; i <= 3'b111; i++) begin
            test_in = i;
            # 10;
        end
        $stop;
    end

endmodule
