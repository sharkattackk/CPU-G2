module Y_reg (
    input wire clk,
    input wire reset,
    input wire load,
    input wire [31:0] y_in, 
    output reg [31:0] y_out
);

    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            y_out <= 32'b0;
        end else if (load) begin
            y_out <= y_in;
        end
    end
endmodule