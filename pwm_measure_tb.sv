`timescale 1ns / 1ps

module pwm_measure_tb();

    // Parameters
    parameter CLK_PERIOD = 10; // 10ns for 100MHz clock

    // Signals
    logic [15:0] distance = 0;
    logic clk = 0;
    logic reset = 0;
    logic pwm_in = 0;

    // Instantiate the Unit Under Test (UUT)
    pwm_measure uut (
        clk,
        reset,
        pwm_in,
        distance
    );
    
    always #(CLK_PERIOD / 2) clk = ~clk;

    // Test stimulus
    initial begin
        // End simulation
        reset = 1;
        #(10 * CLK_PERIOD);
        
        pwm_in = 1;
        reset = 0;
        #(20 * CLK_PERIOD);
        
        pwm_in = 0;
        #(40 * CLK_PERIOD);
        
        // data = 2;
        // #(20 * CLK_PERIOD);
        
        // data = 1;
        // #(20 * CLK_PERIOD);
        $stop;
    end

endmodule