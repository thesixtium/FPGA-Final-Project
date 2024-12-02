`timescale 1ns / 1ps

module inverse_kinematics_tb();

    // Parameters
    parameter CLK_PERIOD = 10; // 10ns for 100MHz clock

    // Signals
    logic clk = 0;
    logic reset = 0;
    logic [7:0]  x = 1;
    logic [7:0]  y = 1;
    logic [23:0] shoulder_angle = 0;
    logic [23:0] elbow_angle = 0;

    // Instantiate the Unit Under Test (UUT)
    inverse_kinematics uut (
        clk,
        reset,
        x,
        y,
        shoulder_angle,
        elbow_angle
    );
    
    always #(CLK_PERIOD / 2) clk = ~clk;

    // Test stimulus
    initial begin
        // End simulation
        reset = 1;
        #(10 * CLK_PERIOD);
        reset = 0;
        
        x = 1;
        y = 2;
        #(10 * CLK_PERIOD);
        
        x = 1;
        y = 2;
        #(10 * CLK_PERIOD);
        
        x = 2;
        y = 3;
        #(10 * CLK_PERIOD);
        
        x = 4;
        y = 4;
        #(10 * CLK_PERIOD);
        
        x = 4;
        y = 2;
        #(10 * CLK_PERIOD);
        
        $stop;
    end

endmodule