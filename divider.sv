// All ChatGPT generated!!

module divider (
    input  logic        clk,
    input  logic        reset,
    input  logic [15:0] x,     // Dividend
    input  logic [15:0] y,     // Divisor
    output logic [15:0] a,     // Quotient
    output logic [15:0] b      // Remainder
);

    // Internal registers
    logic [31:0] dividend;     // Extended dividend
    logic [15:0] quotient;     // Quotient being calculated
    logic [31:0] divisor;      // Extended divisor for comparison
    logic [4:0]  count;        // Loop counter (16 cycles for 16-bit division)

    // State variables
    typedef enum logic [1:0] {
        IDLE,    // Idle state
        LOAD,    // Load inputs
        DIVIDE,  // Perform division
        DONE     // Division completed
    } state_t;

    state_t state;

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            // Reset outputs and state
            a        <= 16'd0;
            b        <= 16'd0;
            state    <= IDLE;
            count    <= 5'd0;
            dividend <= 32'd0;
            divisor  <= 32'd0;
            quotient <= 16'd0;
        end else begin
            case (state)
                IDLE: begin
                    if (y != 0) begin // Prevent division by zero
                        state <= LOAD;
                    end
                end

                LOAD: begin
                    dividend <= {16'd0, x};  // Initialize the dividend (x) in lower 16 bits
                    divisor  <= {y, 16'd0};  // Align the divisor (y) in upper 16 bits
                    quotient <= 16'd0;      // Clear quotient
                    count    <= 16;         // Set counter to 16 (bit width)
                    state    <= DIVIDE;
                end

                DIVIDE: begin
                    if (count > 0) begin
                        dividend = {dividend[30:0], 1'b0}; // Left shift dividend by 1
                        if (dividend[31:16] >= y) begin
                            dividend[31:16] = dividend[31:16] - y; // Subtract divisor
                            quotient = {quotient[14:0], 1'b1};     // Set quotient bit
                        end else begin
                            quotient = {quotient[14:0], 1'b0};     // Clear quotient bit
                        end
                        count = count - 1; // Decrement counter
                    end else begin
                        a <= quotient;       // Assign quotient to output
                        b <= x - (y * quotient); // Assign remainder to output
                        state <= DONE;
                    end
                end

                DONE: begin
                    state <= IDLE;  // Return to idle for next operation
                end

                default: state <= IDLE;
            endcase
        end
    end

endmodule
