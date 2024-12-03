// File info:
//  - Original file
//  - Note all physical units are in inches
//  - Project inspired by https://www.youtube.com/watch?v=JpzeoQI2MII

`timescale 1ns / 1ps

module top_level(
    // Inputs
    input logic clk,         // 10 MHz clock
    input logic reset,       // Middle button on Basys3
    input logic rx,          // UART recieve
    input logic ultrasonic,  // Ultrasonic sensor PWM
    input logic [15:0] switches_inputs,  // Switches
    
    // Outputs
    output logic tx,              // UART transmit 
    output logic shoulder_servo,  // Shoulder Servo PWM
    output logic elbow_servo,     // Elbow Servo PWM
    output logic [15:0] led,      // LEDs
    
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
    output logic AN4,
    
    // XADC
    input logic vauxp15,
    input logic vauxn15
    );
    
    // State of the FSM
    logic [1:0] state;
    
    // Whether arm is keyboard controlled or ultrasonic controlled
    logic keyboardControlled;
    logic ultrasonicControlled;
    
    // Finite State Machine
    // Possible states:
    //  - Start state
    //  - Keyboard Controlled
    //  - Ultrasonic Controlled
    fsm f (
        .clk(clk),
        .reset(reset),
        
        .right(switches_inputs[0]),
        .left(switches_inputs[15]),
        
        .state(state),
        .keyboardControlled(keyboardControlled),
        .ultrasonicControlled(ultrasonicControlled)
    );
    
    // The (x,y) coordinates of the arm if controlled by the ultrasonic
    //   - Only used one ultasonic, so hardcode the y to be 2"
    logic [7:0] ultrasonic_x;
    logic [7:0] ultrasonic_y = 2;
    
    // Measure the ultrasonic sensor's PWM signal
    //  - Sensor also has UART and Analog outputs
    //  - Measuring PWM seemed the coolest
    pwm_measure pwmm (
        .clk(clk),
        .reset(reset),
        .pwm_in(ultrasonic),
        .distance(ultrasonic_x)
    );
    
    // The (x,y) coordinates of the arm if controlled by keyboard
    //   - Also return the data sent over UART for display
    logic [7:0] data;
    logic [7:0] keyboard_x;
    logic [7:0] keyboard_y;
    keyboardControl #(4, 4) kbc (
        .clk(clk),
        .reset(reset),
        .rx(rx),
        .data(data),
        .x(keyboard_x),
        .y(keyboard_y)
    );
    
    // Gives the digital equivilant of the XADC's analog value
    logic [7:0] xadc_x;
    logic [7:0] xadc_y = 3;
    analog a (
        .clk(clk),
        .reset(reset),
        .vauxp15(vauxp15),
        .vauxn15(vauxn15),
        
        .xadc_x(xadc_x)
    );
    
    // Wrapper to do all the finite state machine controll as the FSM
    //     above only decides the state, it doesn't do much with it
    fsm_controller fsmc (
        .clk(clk),
        .reset(reset),
        .state(state),
        
        // Keyboard Controlled Information
        .keyboardControlled(keyboardControlled),
        .keyboard_x(keyboard_x),
        .keyboard_y(keyboard_y),
        .data(data),
        
        // Ultrasonic Controlled Information
        .ultrasonicControlled(ultrasonicControlled),
        .ultrasonic_x(ultrasonic_x),
        .ultrasonic_y(ultrasonic_y),
        
        // XADC Controlled Information
        .xadc_x(xadc_x),
        .xadc_y(xadc_y),
        
        // Outputs
        .led(led),
        .shoulder_servo(shoulder_servo),
        .elbow_servo(elbow_servo),
        .tx(tx),
    
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