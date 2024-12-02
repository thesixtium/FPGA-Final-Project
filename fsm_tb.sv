`timescale 1ns / 1ps

module fsm_tb();

    // Parameters
    parameter CLK_PERIOD = 10; // 10ns for 100MHz clock

    // Signals
    logic clk = 0;
    logic reset = 0;
    logic right = 0;
    logic left = 0;
    
    logic [1:0] state = 0;
    logic keyboardControlled = 0;
    logic ultrasonicControlled = 0;

    // Instantiate the Unit Under Test (UUT)
    fsm uut (
        clk,
        reset,
        
        right,
        left,
        
        state,
        keyboardControlled,
        ultrasonicControlled
    );
    
    always #(CLK_PERIOD / 2) clk = ~clk;

    // Test stimulus
    initial begin
        reset = 1;
        #(5 * CLK_PERIOD);
        
        reset = 0;
        right = 0;
        left = 0;
        #(20 * CLK_PERIOD);
        
        right = 0;
        left = 1;
        #(20 * CLK_PERIOD);
        
        right = 1;
        left = 0;
        #(20 * CLK_PERIOD);
        
        right = 0;
        left = 0;
        #(20 * CLK_PERIOD);
        $stop;
    end

endmodule