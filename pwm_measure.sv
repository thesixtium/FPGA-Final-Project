// File info:
// - Original

module pwm_measure #(parameter DIVISION_AMOUNT=1470)(
    input logic clk,
    input logic reset,
    input logic pwm_in,
    output logic [7:0] distance
);

    logic [31:0] count;
    logic [31:0] raw_distance;
    // logic [7:0]  stored_distance;
    logic old_pwm_in;
    
    // Update the signal every pulse to not overwhelm divider
    logic pulse;
    clk_pulse clkPulse (
        .clk(clk),
        .reset(reset),
        .divisor(DIVISION_AMOUNT * 0.5),
        .out(pulse)
    );
    
    // I found the ultrasonic sensor to give off random noisy values,
    //     both in FPGA's and using the same ultrasonic sensor with the
    //     same constants and same communication method with an Arduino
    //     for capstone. Thus, I needed to use an averager to smooth it out.
    // logic [31:0] averaged_distance;
    // averager #(20, 32) a (
    //     .clk(clk),
    //     .reset(reset),
    //     .EN(1),
    //     .Din(raw_distance),
    //     .Q(averaged_distance)
    // );
    
    // Division!! I know because I'm dividing by a constant I could use
    //     the method to divide shown in our labs that uses approximation
    //     and bit shifting, but I wanted to try making a dividor
    divider d (
        .clk(clk),
        .reset(reset),
        .x(raw_distance),
        .y(DIVISION_AMOUNT),
        .a(distance)
    );
    
    // Store old value so can detect changes in the signal
    always_ff @(posedge clk) begin
        old_pwm_in <= pwm_in;
    end
    
    always @(posedge clk) begin
        if ( reset ) begin
            count <= 0;
            raw_distance <= 0;  
            // stored_distance <= 0;      
        end else begin
            if ( pwm_in == 0 && old_pwm_in == 1) begin
                // If signal goes from high to low, assume done measuring
                raw_distance <= count;
            end else if ( pwm_in == 1 && old_pwm_in == 0) begin
                // If signal goes low to high, reset the count so you can start measuring
                count <= 0;
            end else if ( pwm_in == 1 && old_pwm_in == 1) begin
                // If signal is high and stays high, increase count
                count <= count + 1;
            end
            
            // if ( pulse ) begin
            //     stored_distance <= averaged_distance;
            // end 
        end
    end

endmodule
