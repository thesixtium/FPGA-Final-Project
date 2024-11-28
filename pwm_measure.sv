module pwm_measure (
    input logic clk,
    input logic reset,
    input logic pwm_in,
    output logic [15:0] distance
);

    logic [15:0] count;
    logic old_pwm_in;
    
    always_ff @(posedge clk) begin
        old_pwm_in <= pwm_in;
    end
    
    always @(posedge clk) begin
        if ( reset ) begin
            count <= 0;
            distance <= 0;        
        end else if ( pwm_in == 0 && old_pwm_in == 0) begin
            
        end else if ( pwm_in == 0 && old_pwm_in == 1) begin
            distance <= count;
        end else if ( pwm_in == 1 && old_pwm_in == 0) begin
            count <= 0;
        end else if ( pwm_in == 1 && old_pwm_in == 1) begin
            count <= count + 1;
        end
    end

endmodule
