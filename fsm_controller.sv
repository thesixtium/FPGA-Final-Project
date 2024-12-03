// File info
// - Original
// - Enacts the state-based logic of the finite state machine

module fsm_controller (
    input logic clk,          // 10 MHz clock
    input logic reset,        // Active high reset
    input logic [1:0] state,  // FSM State
    
    input logic keyboardControlled,  // If the arm is keyboard controlled
    input logic [7:0] keyboard_x,    // Desired arm x-coordinate if keyboard controlled
    input logic [7:0] keyboard_y,    // Desired arm y-coordinate if keyboard controlled
    input logic [7:0] data,          // Recieved UART data
    
    input logic ultrasonicControlled,  // If the arm is ultrasonic controlled
    input logic [7:0] ultrasonic_x,    // Desired arm x-coordinate if ultrasonic controlled
    input logic [7:0] ultrasonic_y,    // Desired arm y-coordinate if ultrasonic controlled
    
    input logic [7:0] xadc_x,  // Desired arm x-coordinate if xadc controlled
    input logic [7:0] xadc_y,  // Desired arm y-coordinate if xadc controlled
    
    output logic [15:0] led,      // LEDs
    output logic shoulder_servo,  // PWM for the shoulder servo
    output logic elbow_servo,     // PWM for the elbow servo
    output logic tx,              // Transmitting UART data
    
    // Display cathodes
    output logic CA,
    output logic CB,
    output logic CC,
    output logic CD,
    output logic CE,
    output logic CF,
    output logic CG,
    output logic DP,
    
    // Display anodes
    output logic AN1,
    output logic AN2,
    output logic AN3,
    output logic AN4
);

    logic pwm_en_x;
    logic pwm_en_y;
    logic [7:0] inverse_kinematics_x;
    logic [7:0] inverse_kinematics_y;
    
    // Clock divider for the dancing lights
    logic slow_clk;
    clk_divider cd (
        .clk(clk),
        .reset(reset),
        .divisor('d100000000),
        .slow_clk(slow_clk)
    );

    always @( posedge clk ) begin
        if ( reset ) begin
            // Show a distinct bit pattern for reset
            led <= 16'b1111_0000_1111_0000;
                
            inverse_kinematics_x <= 2;
            inverse_kinematics_y <= 2;
        end else begin
            if ( keyboardControlled ) begin
                inverse_kinematics_x <= keyboard_x;
                inverse_kinematics_y <= keyboard_y;
            
                // Change LEDs if in keyboard mode
                led[15] <= pwm_en_x | pwm_en_y;
                led[14:12] <= inverse_kinematics_x[2:0];
                led[11:9] <= inverse_kinematics_y[2:0];
                led[7:0] <= data;
                
            end else if ( ultrasonicControlled ) begin
                inverse_kinematics_x <= ultrasonic_x[7:0];
                inverse_kinematics_y <= ultrasonic_y;
                
                // Change LEDs if in ultrasonic mode
                led[15] <= 0;
                led[14] <= 1;
                led[13:8] <= 0;
                led[7:0] <= ultrasonic_x[7:0];
            end else if ( state == 2'b11) begin
                inverse_kinematics_x <= xadc_x;
                inverse_kinematics_y <= xadc_y;
                
                led[15:8] <= 0;
                led[7:0] <= xadc_x;
            end else begin
                // Show a distinct bit pattern for default state
                // - Helped worlds for debugging
                if ( slow_clk )
                    led <= 16'b0101_0101_0101_0101;
                else
                    led <= 16'b1010_1010_1010_1010;
                
                inverse_kinematics_x <= 2;
                inverse_kinematics_y <= 2;
            end
        end 
    end
    
    // Solves the problem of servos burning out by detecting the last
    //     time they were assigned a different value, and only enabling
    //     the servos for a short time after the change. Else, rely on
    //     the internal friction of the servo to keep it in place
    pwm_enable #(24, 200000 * 700) pwmex (
        .data(inverse_kinematics_x),
        .clk(clk),
        .reset(reset),
        .en(pwm_en_x)
    );
    pwm_enable #(24, 200000 * 700) pwmey (
        .data(inverse_kinematics_y),
        .clk(clk),
        .reset(reset),
        .en(pwm_en_y)
    );

    // Figure out the needed angle for the servos based on requested
    //     (x,y) values. Implemented as a 2D lookup table.
    logic [23:0] shoulder_angle;
    logic [23:0] elbow_angle;
    inverse_kinematics ik (
        .clk(clk),
        .reset(reset),
        .x(inverse_kinematics_x),
        .y(inverse_kinematics_y),
        .shoulder_angle(shoulder_angle),
        .elbow_angle(elbow_angle)
    );
   
    // PWMs for the output servos
    pwm shoulderPWM (clk, pwm_en_x | pwm_en_y, shoulder_angle, shoulder_servo);
    pwm elbowPWM    (clk, pwm_en_x | pwm_en_y, elbow_angle, elbow_servo);
    
    // Always transmit data back to my laptop for the simulation
    transmitter t (
        .clk(clk),
        .reset(reset), 
        .transmit(1), 
        .data({inverse_kinematics_x[3:0], inverse_kinematics_y[3:0]}),
        .TxD(tx)  
    );
    
    // Display to the seven segment display
    display d (
        .clk(clk),
        .reset(reset),
        .state(state),
        
        .x(inverse_kinematics_x), 
        .y(inverse_kinematics_y),
    
        .CA(CA),
        .CB(CB),
        .CC(CC),
        .CD(CD),
        .CE(CE),
        .CF(CF),
        .CG(CG),
        .DP(DP),
    
        .AN1(AN1), 
        .AN2(AN2), 
        .AN3(AN3), 
        .AN4(AN4)
    );
endmodule
