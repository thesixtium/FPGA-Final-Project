module buttonControl (
    input  logic clk,
    input logic reset,
    input logic buttonUp,
    input logic buttonDown,
    output  logic [19:0] angle
);
    // switches at       0 = 0 degrees
    // switches at  98 304 = 90 degrees
    // switches at 196 605 = 180 degrees
    
    always_ff @(posedge clk) begin
        if(reset) begin
            angle = 20'd98_304;
        end else begin
            if (buttonUp) angle = angle + 1;
            else if (buttonDown) angle = angle - 1;
        end
            
    end
endmodule
