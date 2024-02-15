`timescale 1ns / 1ns
// OR module

module OR(m, x, y);
    input x, y;
    output m;

    assign m = x | y;  
endmodule