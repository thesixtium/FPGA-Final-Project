`timescale 1ns / 1ps

module pwm_measure_tb();

    // Parameters
    parameter CLK_PERIOD = 100; // 100ns for 10MHz clock
    parameter SERVO_PERIOD = 50_000_000;
    //parameter SERVO_PERIOD = 600_000;

    // Signals
    logic [7:0] distance = 0;
    logic [7:0] target = 0;
    logic clk = 0;
    logic reset = 0;
    logic pwm_in = 0;

    // Instantiate the Unit Under Test (UUT)
    pwm_measure #(1664) uut  ( clk, reset, pwm_in, distance );
    
    always #(CLK_PERIOD / 2) clk = ~clk;

    // Test stimulus
    initial begin
        // End simulation
        reset = 1;
        #(10 * CLK_PERIOD);
        
        reset = 0;
        #(10 * CLK_PERIOD);
        
		pwm_in = 1;
		target = 4;
        #(147_000 * target);
		pwm_in = 0;
        #(SERVO_PERIOD - (147_000 * target));
        
		pwm_in = 1;
		target = 1;
        #(147_000 * target);
		pwm_in = 0;
        #(SERVO_PERIOD - (147_000 * target));
        
		pwm_in = 1;
		target = 2;
        #(147_000 * target);
		pwm_in = 0;
        #(SERVO_PERIOD - (147_000 * target));
        
        pwm_in = 1;
        target = 4;
        #(147_000 * target);
		pwm_in = 0;
        #(SERVO_PERIOD - (147_000 * target));
        
        pwm_in = 1;
        target = 3;
        #(147_000 * target);
		pwm_in = 0;
        #(SERVO_PERIOD - (147_000 * target));
        
        pwm_in = 1;
        target = 4;
        #(147_000 * target);
		pwm_in = 0;
        #(SERVO_PERIOD - (147_000 * target));
        
        $stop;
    end

endmodule