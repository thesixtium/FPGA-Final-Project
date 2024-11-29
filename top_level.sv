// https://www.youtube.com/watch?v=JpzeoQI2MII

`timescale 1ns / 1ps

module top_level(
    input logic clk,
    input logic reset,
    input logic rx,
    input logic ultrasonic,
    input logic [15:0] switches_inputs,
    
    output logic tx,
    output logic shoulder_servo,
    output logic elbow_servo,
    output logic [15:0] led
    );
    
    //logic [1:0] state;
    //logic keyboardControlled;
    //logic ultrasonicControlled;
    //fsm f (
    //    .clk(clk),
      //  .reset(reset),
        
     //   .right(switches_inputs[0]),
     //   .left(switches_inputs[15]),
        
       // .state(state),
     //   .keyboardControlled(keyboardControlled),
     //   .ultrasonicControlled(ultrasonicControlled)
    //);
    
    //logic [7:0] ultrasonic_x;
    //logic [7:0] ultrasonic_y = 2;
    //pwm_measure pwmm (
    //    .clk(clk),
    //    .reset(reset),
    //    .pwm_in(ultrasonic),
    //    .distance(ultrasonic_x)
    //);
    
    //logic [7:0] data;
    //logic [7:0] keyboard_x;
    //logic [7:0] keyboard_y;
    //keyboardControl #(4, 4) kbc (
    //    .clk(clk),
    //    .reset(reset),
    //    .rx(rx),
    //    .data(data),
    //    .x(keyboard_x),
    //    .y(keyboard_y)
    //);
    
    //fsm_controller fsmc (
     //   .clk(clk),
     //   .reset(reset),
        
     //   .keyboardControlled(keyboardControlled),
     //   .keyboard_x(keyboard_x),
     //   .keyboard_y(keyboard_y),
    //    .data(data),
        
    //    .ultrasonicControlled(ultrasonicControlled),
    //    .ultrasonic_x(ultrasonic_x),
    //    .ultrasonic_y(ultrasonic_y),
        
        
    //    .led(led),
    //    .shoulder_servo(shoulder_servo),
    //    .elbow_servo(elbow_servo)
    //);
    
    transmitter (
         .clk(clk), //UART input clock
         .reset(reset), // reset signal
        .transmit(1), //btn signal to trigger the UART communication
    .data({4'b0110, 4'b1001}), // data transmitted
    .TxD(tx) // Transmitter serial output. TxD will be held high during reset, or when no transmissions aretaking place. 
    );
    
    
endmodule