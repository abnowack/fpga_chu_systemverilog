`timescale 1ns / 1ps

module bcd_1_incrementor(
    input logic [3:0] a,
    output logic [3:0] y,
    output logic carry
    );
    
    always_comb
        case (a)
            4'b0000: begin y = 4'b0001; carry = 0; end
            4'b0001: begin y = 4'b0010; carry = 0; end
            4'b0010: begin y = 4'b0011; carry = 0; end
            4'b0011: begin y = 4'b0100; carry = 0; end
            4'b0100: begin y = 4'b0101; carry = 0; end
            4'b0101: begin y = 4'b0110; carry = 0; end
            4'b0110: begin y = 4'b0111; carry = 0; end
            4'b0111: begin y = 4'b1000; carry = 0; end
            4'b1000: begin y = 4'b1001; carry = 0; end
            4'b1001: begin y = 4'b0000; carry = 1; end
            default: y = 4'b0000;
        endcase
        
endmodule
