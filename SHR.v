`timescale 1ns / 1ns

// Logical Right Shift Module
module SHR(xIn, xOut, shift);
    // Perform logical right shift
    input [31:0] xIn;
    output [31:0] xOut;
    
    assign out = in >> shift_amount;

endmodule
