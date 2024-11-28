module pwm_measure (
    input logic clk,
    input logic reset,
    input logic pwm_in,
    output logic [15:0] distance
);

    logic [23:0] count;
    logic [15:0] raw_distance;
    logic old_pwm_in;
    
    always_ff @(posedge clk) begin
        old_pwm_in <= pwm_in;
    end
    
    always @(posedge clk) begin
        if ( reset ) begin
            count <= 0;
            raw_distance <= 0;        
        end else if ( pwm_in == 0 && old_pwm_in == 1) begin
            raw_distance <= count >> 8;
        end else if ( pwm_in == 1 && old_pwm_in == 0) begin
            count <= 0;
        end else if ( pwm_in == 1 && old_pwm_in == 1) begin
            count <= count + 1;
        end
    end
    
    averager #(4, 16)(
        .clk(clk),
        .reset(reset),
        .EN(1),
        .Din(raw_distance),
        .Q(distance)
    );

endmodule
