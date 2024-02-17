`timescale 1ns / 1ns
// XOR module

module XOR(m, x, y);
    input x, y;
    output m;

    assign m = x ^ y;  
endmodule