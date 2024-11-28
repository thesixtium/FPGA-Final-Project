`timescale 1ns / 1ps

module pwm_tb();

    // Parameters
    parameter CLK_PERIOD = 10; // 10ns for 100MHz clock

    // Signals
    logic clk = 0;
    logic signal = 0;
    logic [7:0] angle = 0;

    // Instantiate the Unit Under Test (UUT)
    pwm uut ( .clk(clk), .angle(angle), .servo(signal));
    
    always #(CLK_PERIOD / 2) clk = ~clk;

    // Test stimulus
    initial begin
        // End simulation
        angle = 0;
        #(2000000 * CLK_PERIOD);
        
        angle = 45;
        #(2000000 * CLK_PERIOD);
        
        angle = 90;
        #(2000000 * CLK_PERIOD);
        
        angle = 135;
        #(2000000 * CLK_PERIOD);
        
        angle = 180;
        #(2000000 * CLK_PERIOD);
        $stop;
    end

endmodule