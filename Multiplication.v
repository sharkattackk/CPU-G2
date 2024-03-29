module Multiplicaion(
    input signed [31:0] multiplicand, multiplier,
    output reg signed [63:0] product
);

reg signed [63:0] accumulator;
reg [1:0] state;
reg signed [31:0] M, S;
reg signed [63:0] Q;
integer i;
wire clk;

always @(posedge clk) begin
    case(state)
        2'b00: begin // Initial state
            M = multiplicand;
            S = -multiplicand; // 2's complement of M
            Q = {32'b0, multiplier}; // Pad multiplier with 32'b0
            accumulator = 64'b0;
            state = 2'b01;
        end
        2'b01: begin // Booth encoding
            if (Q[1] == 1 && Q[0] == 0) begin
                accumulator = accumulator + S;
                Q = Q + S;
            end else if (Q[1] == 0 && Q[0] == 1) begin
                accumulator = accumulator + M;
                Q = Q + M;
            end
            state = 2'b10;
        end
        2'b10: begin // Right shift Q and accumulator
            accumulator = accumulator >> 1;
            Q = Q >> 1;
            state = (i < 31) ? 2'b01 : 2'b11;
        end
        2'b11: begin // Final state
            product = accumulator;
            state = 2'b00; // Reset to initial state for next operation
        end
        default: state = 2'b00;
    endcase
end

endmodule
