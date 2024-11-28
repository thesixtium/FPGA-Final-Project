module clk_divider (
    input  logic clk,
    input  logic reset,
    input  logic [31:0] divisor,
    output logic slow_clk
);

    logic [31:0] counter;

    always_ff @(posedge clk) begin
        if (reset) begin
            counter = 0;
            slow_clk = 0;
        end else begin
            counter = counter + 1;
            
            if (counter >= divisor) begin
                counter = 9'd0;
                slow_clk = ~slow_clk;
            end
        end
    end
endmodule
