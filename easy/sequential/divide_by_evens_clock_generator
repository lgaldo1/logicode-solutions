/* Design a module that, given an input clock signal, generates three 
 * output clock signals with 2x, 4x, and 6x the period of the input clock.
 * 
 * When resetn is active, the module should reset all clocks to 0. 
 * When resetn becomes inactive again, the module should start a new period for 
 * each output clock. Specifically, if resetn became active in the middle of an 
 * output clock's period, the next period should restart instead of continuing 
 * from where the interrupted period left off.
 */

module divide_by_evens_clock (
    input  logic clk,
    input  logic resetn,
    output logic div2,
    output logic div4,
    output logic div6
);
  logic [3:0] clk_cnt;

  always @(posedge clk) begin
    if (!resetn) begin
      clk_cnt <= 0;
    end else begin
      if (clk_cnt == 11)
        clk_cnt <= 0;
      else 
        clk_cnt++;
    end
  end

  // taking windows of the counter and making high for the first N/2 clock cycles
  assign div2 = (clk_cnt % 2) == 1; 
  assign div4 = ((clk_cnt % 4) == 1) || ((clk_cnt % 4) == 2);
  assign div6 = ((clk_cnt % 6) == 1) || ((clk_cnt % 6) == 2) || ((clk_cnt % 6) == 3);
endmodule
