// File info:
// - Original file

// Divider works by subtracting divisor from dividend until the
//     divisor is bigger than the dividen, then returning how
//     many times that occured as the quotient
module divider (
    input  logic        clk,
    input  logic        reset,
    input  logic [31:0] x,     // Dividend
    input  logic [31:0] y,     // Divisor
    output logic [31:0] a,     // Quotient
    output logic [31:0] b      // Remainder
);

    logic [1:0] state;
    // 00: Idle (default)
    // 01: Loading
    // 10: Dividing
    
    logic [31:0] dividend;
    logic [31:0] divide_counts;

    always @(posedge clk) begin
    
        if ( reset ) begin
            state <= 0;
            dividend <= 0;
            divide_counts <= 0;
            a <= 0;
            b <= 0;
        end else begin
            case ( state )
            
                default : begin
                    if ( y != 0 ) begin // No divide by 0
                        state <= 2'b01;
                    end
                end
                
                2'b01 : begin
                    dividend <= x;
                    state <= 2'b10;
                    divide_counts <= 0;
                end
                
                2'b10 : begin
                    if ( dividend >= y ) begin
                        dividend <= dividend - y;
                        divide_counts <= divide_counts + 1;
                    end else begin
                        a <= divide_counts;
                        b <= x - ( divide_counts * y );
                        state <= 2'b00;
                    end
                end
                
            endcase
        end
    
    end

endmodule
