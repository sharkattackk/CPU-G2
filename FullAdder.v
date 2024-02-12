`timescale 1ns / 1ns
// Full Adder
module FullAdder(s, cOut, x, y, cIn);
    input x, y, cIn;
    output s, cOut;
    
    wire w1, w2, w3;
    XOR(w1, x, y);
    XOR(s, w1, cIn);
    AND(w2, x, y);
    AND(w2, w1, cIn);
    OR(cOut, w2, w3);
endmodule
