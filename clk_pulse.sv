// File info:
// - Original file

module clk_pulse (
    input  logic clk,
    input  logic reset,
    input  logic [31:0] divisor,
    output logic out
);

    logic [31:0] counter;

    always_ff @(posedge clk) begin
        if (reset) begin
            counter <= 0;
            out <= 0;
        end else begin
            counter <= counter + 1;
            
            if (counter >= divisor) begin
                counter <= 9'd0;
                out <= 1;
            end else begin
                out <= 0;
            end
        end
    end
endmodule
