`timescale 1ns / 1ns
// Full Adder
module FullAdder(s, cOut, a, b, cIn);
    input a, b, cIn;
    output s, cOut;
    
    wire w1, w2, w3;

    // XOR for sum calc
    XOR xor1(w1, a, b);
    XOR xor2(s, w1, cIn);
 
    // AND for carry out calc
    AND and1(w2, a, b);
    AND and2(w3, w1, cIn);

    // OR for carry out
    OR or1(cOut, w2, w3);
endmodule
