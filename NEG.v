`timescale 1ns / 1ns
// Subtract Module
module NEG(x, xNot);
    input [31:0] x;
    output [31:0] xNot;

    assign xNot = ~x;
endmodule