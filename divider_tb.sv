`timescale 1ns / 1ps

module divider_tb();

    // Parameters
    parameter CLK_PERIOD = 10; // 10ns for 100MHz clock

    // Signals
    logic clk = 0;
    logic reset = 0;
    logic [31:0] number = 0;
    logic [31:0] divisor = 0;
    logic [31:0] quotient = 0;
    logic [31:0] remainder = 0;

    // Instantiate the Unit Under Test (UUT)
    divider uut (
        clk,
        reset,
        number,     // Dividend
        divisor,     // Divisor
        quotient,     // Quotient
        remainder      // Remainder
    );
    
    always #(CLK_PERIOD / 2) clk = ~clk;

    // Test stimulus
    initial begin
        #(100 * CLK_PERIOD);
        
        number = 9;
        divisor = 1;
        #(50 * CLK_PERIOD);
        
        number = 6;
        divisor = 2;
        #(50 * CLK_PERIOD);
        
        number = 8;
        divisor = 5;
        #(50 * CLK_PERIOD);
        
        number = 60_001;
        divisor = 2;
        #(60000 * CLK_PERIOD);
        $stop;
    end

endmodule