// https://www.youtube.com/watch?v=zNln9hJ5J78
// http://www.ee.ic.ac.uk/pcheung/teaching/DE1_EE/stores/sg90_datasheet.pdf
// https://www.youtube.com/watch?v=JpzeoQI2MII

// Clock Frequency = 100 MHz
// Servo Period = 20 ms
// Clock Edges = 1 / Clock Frequency = 10 ns
// Counter Length = Servo Period / Clock Edges = 2 000 000
// Counter Bits = 2 ^ (21) - 1 = 2 097 151 -> 21 bits long

module pwm (
    input  logic clk,
    input  logic en,
    input  logic [23:0] angle,
    output logic servo
);
    //localparam SERVO_PERIOD = 'd1999999;
    localparam SERVO_PERIOD = 'd199999;

    logic [20:0] counter;

    always @(posedge clk) begin
        // Counter that resets every servo period (~20ms)
        if(counter < SERVO_PERIOD)
            counter <= counter + 1;
        else
            counter <= 0;
	
        // Duty cycle generation
        if( ( counter < angle ) & en )
            // High part of the duty cycle
            servo <= 1;
        else
            // Low part of the duty cycle
            servo <= 0;
    end    
endmodule
