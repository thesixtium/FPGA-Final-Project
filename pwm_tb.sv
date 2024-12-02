`timescale 1ns / 1ps

module pwm_tb();

    // Parameters
    parameter CLK_PERIOD = 10; // 10ns for 100MHz clock

    // Signals
    logic clk = 0;
    logic signal = 0;
    logic en = 0;
    logic [23:0] angle = 0;

    // Instantiate the Unit Under Test (UUT)
    pwm uut ( .clk(clk), .en(en), .angle(angle), .servo(signal));
    
    always #(CLK_PERIOD / 2) clk = ~clk;

    // Test stimulus
    initial begin
        en = 0;
        #(100 * CLK_PERIOD);
        en = 1;
        
        angle = 50_000;
        #(400_000 * CLK_PERIOD);
        
        angle = 100_000;
        #(400_000 * CLK_PERIOD);
        $stop;
    end

endmodule