/* Design a module that computes y as x^2 + + 2x + + 1. */

module polynomial_1 (
    input  logic signed [ 7:0] x,
    output logic signed [15:0] y
);
  logic signed [15:0] x_2 = x * x;
  assign y = x_2 + (x << 1) + 1;
endmodule
