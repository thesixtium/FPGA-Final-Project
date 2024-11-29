module fsm_controller (
    input logic clk,
    input logic reset,
    
    input logic keyboardControlled,
    input logic [7:0] keyboard_x,
    input logic [7:0] keyboard_y,
    input logic [7:0] data,
    
    input logic ultrasonicControlled,
    input logic [7:0] ultrasonic_x,
    input logic [7:0] ultrasonic_y,
    
    
    output logic [15:0] led,
    output logic shoulder_servo,
    output logic elbow_servo
);
    logic pwm_en;
    logic [7:0] inverse_kinematics_x;
    logic [7:0] inverse_kinematics_y;

    always @( posedge clk ) begin
        if ( reset ) begin
            led <= 16'b0101_0101_0101_0101;
            inverse_kinematics_x <= 2;
            inverse_kinematics_y <= 2;
            
        end else begin
            if ( keyboardControlled ) begin
                inverse_kinematics_x <= keyboard_x;
                inverse_kinematics_y <= keyboard_y;
            
                led[15] <= pwm_en;
                led[14:12] <= inverse_kinematics_x[2:0];
                led[11:9] <= inverse_kinematics_y[2:0];
                led[7:0] <= data;
                
            end else if ( ultrasonicControlled ) begin
                inverse_kinematics_x <= ultrasonic_x[7:3];
                inverse_kinematics_y <= ultrasonic_y;
                
                led[14] <= 1;
                led[7:0] <= ultrasonic_x[7:0];
            end else begin
                led <= 16'b0101_0101_0101_0101;
                inverse_kinematics_x <= 2;
                inverse_kinematics_y <= 2;
            end
        end 
    end
    
    pwm_enable #(24, 200000 * 700) pwme (
        .data(data),
        .clk(clk),
        .reset(reset),
        .en(pwm_en)
    );

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
   
    pwm shoulderPWM (clk, pwm_en | ultrasonicControlled, shoulder_angle, shoulder_servo);
    pwm elbowPWM    (clk, pwm_en | ultrasonicControlled, elbow_angle, elbow_servo);
endmodule
