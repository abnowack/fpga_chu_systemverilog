`timescale 1ns / 1ps

module dual_priority_encoder(
    input logic [11:0] req,
    output logic [3:0] first,
    output logic [3:0] second
    );
    
    priority_encoder pe1(.req(req), .y(first));
    
    logic [11:0] first_decoded;
    priority_decoder de1(.a(first), .y(first_decoded));
    
    logic [11:0] req_mask;
    assign req_mask = req & ~first_decoded;
    
    priority_encoder pe2(.req(req_mask), .y(second));
    
endmodule
