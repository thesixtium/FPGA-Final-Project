`timescale 1ns / 1ps

module clk_divider_tb();

    // Parameters
    parameter CLK_PERIOD = 10; // 10ns for 100MHz clock

    // Signals
    logic clk = 0;
    logic reset = 0;
    logic [31:0] divisor = 0;
    logic slow_clk = 0;

    // Instantiate the Unit Under Test (UUT)
    clk_divider uut ( clk, reset, divisor, slow_clk );
    
    always #(CLK_PERIOD / 2) clk = ~clk;

    // Test stimulus
    initial begin
        reset = 0;
        #(10 * CLK_PERIOD);
        reset = 1;
        #(10 * CLK_PERIOD);
        reset = 0;
        
        divisor = 8'd1;
        #(50 * CLK_PERIOD);
        
        divisor = 8'd2;
        #(50 * CLK_PERIOD);
        
        divisor = 8'd3;
        #(50 * CLK_PERIOD);
        
        divisor = 8'd4;
        #(50 * CLK_PERIOD);
        
        $stop;
    end

endmodule