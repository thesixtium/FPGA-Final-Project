// File info:
// - Original file
// - Enables the servo PWM for a short length of time on data change

module pwm_enable#(parameter N=8, CLK_CYCLES=10)(
    input logic [N-1:0] data,  // Input data
    input logic clk,           // 10 MHz clock
    input logic reset,         // Active high reset
    output logic en            // Servo enable
);
    logic [N-1:0] old_data;
    logic data_different;
    logic [255:0] current_clk_cycles;

    always_ff @(posedge clk) begin
        if (reset) begin
            old_data <= 'b0;
            data_different <= 0;
            current_clk_cycles <= 'b0;
        end else begin
            // When data changes, set en high for CLK_CYCLES
            old_data <= data;
            data_different <= data_different | (old_data ^ data);
            en <= ( current_clk_cycles <= CLK_CYCLES );
            
            if (data_different & ~(old_data ^ data)) begin
                current_clk_cycles <= current_clk_cycles + 1;
            end else begin
                current_clk_cycles <= 0;
            end
        end
    end

endmodule