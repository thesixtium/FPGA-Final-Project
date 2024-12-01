// File info
//  - Original
//  - Decides states of the FSM

module fsm (
    input logic clk,
    input logic reset,
    
    input logic right,
    input logic left,
    
    output logic [1:0] state,
    output logic keyboardControlled,
    output logic ultrasonicControlled
);
    // Possible states:
    // 00: Selection of ultrasonic or keyboard (default)
    // 01: Ultrasonic
    // 10: Keyboard

    always @(posedge clk) begin
        if ( reset ) begin
            state <= 0;
        end else begin
            case(state)
            
                default : begin
                    if ( right ) begin
                        state <= 2'b01;
                    end else if ( left ) begin
                        state <= 2'b10;
                    end
                end
                
                2'b01 : begin
                    if ( left && ~right ) begin
                        state <= 2'b10;
                    end else if (~left && ~right ) begin
                        state <= 2'b00;
                    end
                end
                
                2'b10 : begin
                    if ( right && ~left ) begin
                        state <= 2'b01;
                    end else if (~left && ~right ) begin
                        state <= 2'b00;
                    end
                end
            
            endcase
        end
    end
    
    assign keyboardControlled = ( state == 2'b10);
    assign ultrasonicControlled = ( state == 2'b01);
endmodule
