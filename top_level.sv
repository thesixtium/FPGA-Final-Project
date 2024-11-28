// https://www.youtube.com/watch?v=JpzeoQI2MII

`timescale 1ns / 1ps

module top_level(
    input logic clk,
    input logic reset,
    input  logic rx,
    input logic [15:0] switches_inputs,
    output logic [15:0] led,
    output logic shoulder_servo,
    output logic elbow_servo
    );
    
    logic [7:0] data;
    logic [7:0] x;
    logic [7:0] y;
    keyboardControl #(4, 4) (
        .clk(clk),
        .reset(reset),
        .rx(rx),
        .data(data),
        .x(x),
        .y(y)
    );
    
    logic en;
    pwm_enable #(24, 200000 * 700)(
        .data(data),
        .clk(clk),
        .reset(reset),
        .en(en)
    );
    
    logic [23:0] shoulder_angle;
    logic [23:0] elbow_angle;
    inverse_kinematics (
        .clk(clk),
        .reset(reset),
        .x(x),
        .y(y),
        .shoulder_angle(shoulder_angle),
        .elbow_angle(elbow_angle)
    );
   
    assign led[15] = en;
    assign led[14:12] = x[2:0];
    assign led[11:9] = y[2:0];
    assign led[7:0] = data;
    
    pwm shoulderPWM (clk, en, shoulder_angle, shoulder_servo);
    pwm elbowPWM    (clk, en, elbow_angle, elbow_servo);
endmodule