`timescale 1ns / 1ns

module RCAdder_tb;

  // Signal declarations
  reg [7:0] x_tb;
  reg [7:0] y_tb;
  wire [7:0] carry_tb;

  // Design Under Test (DUT) instantiation
  RCAdder DUT (
    .x(x_tb),
    .y(y_tb),
    .carry(carry_tb)
  );

  // Test logic
  initial begin
    x_tb <= 8'b00000000;
    y_tb <= 8'b00000000;
    #20; // Wait for 20 time units
    x_tb <= 8'b00101010; // decimal 42
    y_tb <= 8'b00111010; // decimal 58
    #200; // Wait for 200 time units
    x_tb <= 8'b01101001; // decimal 105
    y_tb <= 8'b00010101; // decimal 21
    $finish; // End simulation
  end

endmodule

