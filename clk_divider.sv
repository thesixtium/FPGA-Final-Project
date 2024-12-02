// File info:
// - Original file
// - Produces a clock frequency that is the input frequency / divisor

module clk_divider (
    input  logic clk,             // Input clock
    input  logic reset,           // Active high reset
    input  logic [31:0] divisor,  // How much to divide the clock by
    output logic slow_clk         // Output slower clock
);

    logic [31:0] counter;

    always_ff @(posedge clk) begin
        if (reset) begin
            counter <= 0;
            slow_clk <= 0;
        end else begin
            counter <= counter + 1;
            
            if (counter >= divisor) begin
                counter <= 9'd0;
                slow_clk <= ~slow_clk;
            end
        end
    end
endmodule
