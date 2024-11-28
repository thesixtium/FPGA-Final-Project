`timescale 1ns / 1ps

module inverse_tb();

    // Parameters
    parameter CLK_PERIOD = 10; // 10ns for 100MHz clock

    // Signals
    logic clk = 0;
    logic reset = 0;
    logic [15:0] number = 9;
    logic [15:0] divisor = 1;
    logic [15:0] result = 0;
    logic [15:0] result2 = 0;

    // Instantiate the Unit Under Test (UUT)
    inverse_kinematics uut (
        clk,
        reset,
        number,
        divisor,
        result,
        result2
        );
    
    always #(CLK_PERIOD / 2) clk = ~clk;

    // Test stimulus
    initial begin
        #(100 * CLK_PERIOD);
        
        number = 6;
        divisor = 2;
        #(50 * CLK_PERIOD);
        
        number = 8;
        divisor = 5;
        #(50 * CLK_PERIOD);
        
        // data = 2;
        // #(20 * CLK_PERIOD);
        
        // data = 1;
        // #(20 * CLK_PERIOD);
        $stop;
    end

endmodule