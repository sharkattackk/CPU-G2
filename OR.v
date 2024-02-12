`timescale 1ns / 1ns
// OR module

module OR(m, x, y);
    input [31:0] x, y;
    output [31:0] m;

    assign m = (x | y);  
endmodule