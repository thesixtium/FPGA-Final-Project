`timescale 1ns / 1ps

module pwm_enable_tb();

    // Parameters
    parameter CLK_PERIOD = 10; // 10ns for 100MHz clock

    // Signals
    logic [7:0] data = 0;
    logic clk = 0;
    logic reset = 0;
    logic en = 0;

    // Instantiate the Unit Under Test (UUT)
    pwm_enable uut (
        .data(data),
        .clk(clk),
        .reset(reset),
        .en(en)
    );
    
    always #(CLK_PERIOD / 2) clk = ~clk;

    // Test stimulus
    initial begin
        // End simulation
        reset = 1;
        #(10 * CLK_PERIOD);
        
        data = 1;
        reset = 0;
        #(20 * CLK_PERIOD);
        
        data = 2;
        #(20 * CLK_PERIOD);
        
        // data = 2;
        // #(20 * CLK_PERIOD);
        
        // data = 1;
        // #(20 * CLK_PERIOD);
        $stop;
    end

endmodule