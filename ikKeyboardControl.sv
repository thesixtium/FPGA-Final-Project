module keyboardControl (
    input  logic clk,
    input  logic reset,
    input  logic rx,
    output logic [7:0] data,
    output logic [23:0] shoulder_angle,
    output logic [23:0] elbow_angle,
    output logic [23:0] base_angle,
    output logic slow_clk,
    output logic [2:0] state
); 

    logic [7:0] data_in;
    logic [7:0] data_old;
    
    receiver ( .clk(clk), .reset(reset), .rx(rx), .data(data_in) );
    
    clk_divider (
        .clk(clk),
        .reset(reset),
        .divisor('b10000),
        .slow_clk(slow_clk)
    );
    
    logic fifoEmpty;
    logic fifoFull;
    syncFIFO #( 2, 8 ) (
        .reset(reset),
        .w_clk(clk),
        .r_clk(clk),
        .w_en(~fifoFull),
        .r_en('b1),
        .din(data_in),
        
        .dout(data),
        .empty(fifoEmpty),
        .full(fifoFull)
    );
    
    always_ff @(posedge clk) begin
        data_old <= data;
    end
    
    always @(posedge clk) begin
        if (reset) begin
            elbow_angle = 145000;
            shoulder_angle = 180000;
        end else begin
            case(data)
                8'b0111_0111 :  begin
                    elbow_angle <= 55000; // W - 135 Degrees
                    shoulder_angle <= 180000;
                end
                8'b0110_0001 :  begin
                    elbow_angle <= 100000; // A - 45 Degrees
                    shoulder_angle <= 1790000;
                end
                8'b0111_0011 :  begin
                    elbow_angle <= 1450000; // S
                    shoulder_angle <= 181000;
                end
                8'b0110_0100 :  begin
                    elbow_angle <= 185000;  // D
                    shoulder_angle <= 178000;
                end
            endcase
        end
    end
    
    // assign shoulder_angle = elbow_angle;
    // assign base_angle = 0;
    
    
endmodule
