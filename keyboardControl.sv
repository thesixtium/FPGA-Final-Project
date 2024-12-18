// File info:
// - Original file
// - Change the desired x- and y-coordinates for the arm based on received rx commands

module keyboardControl #(parameter X_MAX=4, Y_MAX=4) (
    input  logic clk,         // 10 MHz clock
    input  logic reset,       // Active high reset
    input  logic rx,          // UART recieve line
    
    output logic [7:0] data,  // RX command recieved
    output logic [7:0] x,     // Desired x-coordinate
    output logic [7:0] y      // Desired y-coordinate
); 

    logic [7:0] data_in;
    logic [7:0] data_old;
    logic [7:0] internal_x;
    logic [7:0] internal_y;
    
    // Ensure output (x,y) range is [1,4] instead of [0,3]
    assign x = internal_x + 1;
    assign y = internal_y + 1;
    
    // Translate UART RX into 8 bits:
    //  - Remove start bit, parity, stop bits
    //  - Parallelize     
    receiver r ( .clk(clk), .reset(reset), .rx(rx), .data(data_in) );
    
    // Fifo Queue to store the keyboard value
    logic fifoEmpty;
    logic fifoFull;
    syncFIFO #( 2, 8 ) s (
        .reset(reset),
        .w_clk(clk),
        .r_clk(clk),
        .w_en(~fifoFull),  // Write when not full
        .r_en('b1),  // Always read
        .din(data_in),
        
        .dout(data),
        .empty(fifoEmpty),
        .full(fifoFull)
    );
    
    // Store the old data like in the button debouncer so can see
    //     if the data has changed later in the controller
    always_ff @(posedge clk) begin
        data_old <= data;
    end
    
    // Very simple decoder to increase/decrease target (x,y)
    //     of the servo arm
    // - w: y++
    // - a: x++
    // - s: y--
    // - d: x--
    always @(posedge clk) begin
        if (reset) begin
            internal_x <= 2;
            internal_y <= 3;
        end else if ( data_old ^ data ) begin
            case(data)
                8'b0111_0111 :  begin  // W
                    internal_y <= ( (internal_y + 1) % Y_MAX );
                end
                
                8'b0110_0001 :  begin  // A
                    internal_x <= ( (internal_x + 1) % X_MAX );
                end
                
                8'b0111_0011 :  begin  // S
                    internal_y <= ( (internal_y - 1) % Y_MAX );
                end
                
                8'b0110_0100 :  begin  // D
                    internal_x <= ( (internal_x - 1) % X_MAX );
                end
            endcase
        end
    end
endmodule
