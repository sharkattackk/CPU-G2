`timescale 1ns / 1ns
// AND module
module AND(p, x, y);
    input x, y;
    output p;

    assign p = x & y;  
endmodule
