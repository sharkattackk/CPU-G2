`timescale 1ns / 1ns
// Negate Module
module My_NEGATE(x, xNeg);
    input [31:0] x;
    output [31:0] xNeg;

    assign xNeg = !x;
endmodule