/* Build a module which controls a counter.
 * The counter starts counting when the start button (start) is pressed 
 * (pulses) and increases by 1 every clock cycle. When the stop button 
 * (stop) is pressed, the counter stops counting. When the reset button 
 * is pressed, the count resets to 0 and the counter stops counting.
 * If count ever reaches MAX, then it restarts from 0 on the next cycle.
 * Stop's functionality takes priority over start's functionality, and reset's 
 * functionality takes priority over both stop and start's functionality.
 */

 module counter #(
    parameter MAX = 99,
    parameter DATA_WIDTH = 16
) (
    input logic clk,
    input logic reset,
    start,
    stop,
    output logic [DATA_WIDTH-1:0] count
);

  logic running;

  always_ff @(posedge clk) begin
    if (reset)
      count <= 0;
    else if (stop) begin
      count <= count;
      running <= 0;
    end
    else if (start || running == 1) begin
      count <= (count == MAX)? 0 : count + 1;
      running <= 1;
    end
  end
endmodule