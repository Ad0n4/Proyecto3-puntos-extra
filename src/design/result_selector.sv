`timescale 1ns/1ps

module result_selector (
    input  logic [6:0] quotient_i,
    input  logic [4:0] remainder_i,
    input  logic       select_i,

    output logic [6:0] selected_result_o
);

    assign selected_result_o = (select_i) ? {2'b00, remainder_i} : quotient_i;

endmodule