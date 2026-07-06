/* Design a module that computes y as x^2 + + 2x + + 1. */

module polynomial_1 (
    input  logic signed [ 7:0] x,
    output logic signed [15:0] y
);
  logic signed [8:0] x_1 = x + 1;
  assign y = x_1 * x_1;
endmodule
