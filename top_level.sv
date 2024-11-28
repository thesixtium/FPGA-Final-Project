// https://www.youtube.com/watch?v=JpzeoQI2MII

`timescale 1ns / 1ps

module top_level(
    input logic clk,
    input logic reset,
    input  logic rx,
    input logic [15:0] switches_inputs,
    output logic [15:0] led,
    output logic shoulder_servo,
    output logic elbow_servo,
    output logic base_servo
    );
    
    logic [23:0] shoulder_angle;
    logic [23:0] elbow_angle;
    logic [23:0] base_angle;
    
    logic [7:0] data;
    logic slow_clk;
    logic en;
    logic [2:0] state;
    
    keyboardControl kbc (
    //ikKeyboardControl kbc (
        .clk(clk),
        .reset(reset),
        .rx(rx),
        .data(data),
        .shoulder_angle(shoulder_angle),
        .elbow_angle(elbow_angle),
        .base_angle(base_angle),
        .slow_clk(slow_clk),
        .state(state)
    );
    
    pwm_enable#(24, 200000 * 700)(
        .data(data),
        .clk(clk),
        .reset(reset),
        .en(en)
    );
   
    assign led[7:0] = data;
    assign led[15] = en;
    assign led[14] = slow_clk;
    assign led[13:11] = state;
    
    pwm shoulderPWM (clk, en, shoulder_angle, shoulder_servo);
    pwm elbowPWM    (clk, en, elbow_angle, elbow_servo);
    pwm basePWM     (clk, en, base_angle, base_servo);
endmodule