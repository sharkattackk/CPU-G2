`timescale 1ns / 1ns
// Full Adder
module FullAdder(s, cOut, x, y, cIn);
    input [7:0] x, y; 
    input cIn;
    output [7:0] s;
    output cOut;
    
    wire w1, w2, w3;
    XOR(w1, x, y);
    XOR(s, w1, cIn);
    AND(w2, x, y);
    AND(w2, w1, cIn);
    OR(cOut, w2, w3);
endmodule
