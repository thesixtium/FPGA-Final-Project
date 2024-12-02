// File info:
// - Math and SV based on https://www.youtube.com/watch?v=zNln9hJ5J78
// - Math based on http://www.ee.ic.ac.uk/pcheung/teaching/DE1_EE/stores/sg90_datasheet.pdf
// - Math and SV based on https://www.youtube.com/watch?v=JpzeoQI2MII
// - Output a PWM signal to control a servo

// Math:
// 1. Clock Frequency = 10 MHz
// 2. Servo Period = 20 ms
// 3. Clock Edges = 1 / Clock Frequency = 100 ns
// 4. Counter Length = Servo Period / Clock Edges = 200 000

module pwm (
    input  logic clk,           // 10 MHz clock
    input  logic en,            // Enable the PWM signal
    input  logic [23:0] angle,  // Calibrated value, not degrees or radians
   
    output logic servo          // Output PWM signal
);
    localparam SERVO_PERIOD = 'd199999;

    logic [20:0] counter;

    always @(posedge clk) begin
        // Counter that resets every servo period
        if(counter < SERVO_PERIOD) begin
            counter <= counter + 1;
        end else begin
            counter <= 0;
        end
        
        // Generate duty cycle
        if( ( counter < angle ) & en ) begin
            // Start of the signal high
            servo <= 1;
        end else begin
            servo <= 0;
        end
    end    
endmodule
