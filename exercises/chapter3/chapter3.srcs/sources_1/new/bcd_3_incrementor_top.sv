`timescale 1ns / 1ps

module bcd_3_incrementor_top(
    input logic [15:0] SW,
    output logic [15:0] LED,
    output wire [7:0] SSEG,
    output logic [7:0] AN,
    input logic clk
    );
    
    logic [7:0] sseg_leds [3:0];
    logic [3:0] display_value [2:0];
    
    hex_to_sseg hs0(.hex(display_value[0]), .dp(1), .sseg(sseg_leds[0]));
    hex_to_sseg hs1(.hex(display_value[1]), .dp(1), .sseg(sseg_leds[1]));
    hex_to_sseg hs2(.hex(display_value[2]), .dp(1), .sseg(sseg_leds[2]));
    hex_to_sseg hs3(.hex(4'h0), .dp(1), .sseg(sseg_leds[3]));
    
    disp_mux display(.clk(clk), .reset(0), .in3(sseg_leds[3]), .in2(sseg_leds[2]), .in1(sseg_leds[1]), .in0(sseg_leds[0]), .an(AN[3:0]), .sseg(SSEG));
    
    logic [3:0] a [2:0];
    logic [3:0] y [2:0];
    
    assign a[0] = SW[3:0] <= 4'h9 ? SW[3:0] : 4'h9;
    assign a[1] = SW[7:4] <= 4'h9 ? SW[7:4] : 4'h9;
    assign a[2] = SW[11:8] <= 4'h9 ? SW[11:8] : 4'h9;
    
    bcd_3_incrementor bcdinc(.a_0(a[0]), .a_1(a[1]), .a_2(a[2]), .y_0(y[0]), .y_1(y[1]), .y_2(y[2]));
    
    assign display_value[0] = SW[15] ? a[0] : y[0];
    assign display_value[1] = SW[15] ? a[1] : y[1];
    assign display_value[2] = SW[15] ? a[2] : y[2];
    
endmodule
 