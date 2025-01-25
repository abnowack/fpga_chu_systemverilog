`timescale 1ns / 1ps

module greater_than_2bit_tb;
    logic [2:0] test_in0, test_in1;
    logic test_out;

    greater_than_2bit uut(.a(test_in0), .b(test_in1), .eq(test_out));

    initial
    begin
        for(int i = 0; i <= 2'b11; i++) begin
            test_in0 = i;
            for(int j = 0; j <= 2'b11; j++) begin
                test_in1 = j;
                # 10;
            end
        end
        $stop;
    end

endmodule
