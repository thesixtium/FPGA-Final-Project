// File info:
// - Original file

module keyboardControl #(parameter X_MAX=4, Y_MAX=4) (
    input  logic clk,
    input  logic reset,
    input  logic rx,
    output logic [7:0] data,
    output logic [7:0] x,
    output logic [7:0] y
); 

    logic [7:0] data_in;
    logic [7:0] data_old;
    
    // Translate UART RX into 8 bits:
    //  - Remove start bit, parity, stop bits
    //  - Parallelize     
    receiver ( .clk(clk), .reset(reset), .rx(rx), .data(data_in) );
    
    // Clock divider to lower sample rate of the keyboard
    clk_divider (
        .clk(clk),
        .reset(reset),
        .divisor('b10000),
        .slow_clk(slow_clk)
    );
    
    // Fifo Queue to store the keyboard value and go between clock domains
    logic fifoEmpty;
    logic fifoFull;
    syncFIFO #( 2, 8 ) (
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
            x <= 2;
            y <= 4;
        end else if ( data_old ^ data ) begin
            case(data)
                8'b0111_0111 :  begin  // W
                    y <= ( (y + 1) % Y_MAX ) + 1;
                end
                
                8'b0110_0001 :  begin  // A
                    x <= ( (x + 1) % X_MAX ) + 1;
                end
                
                8'b0111_0011 :  begin  // S
                    y <= ( (y + 1) % Y_MAX ) + 1;
                end
                
                8'b0110_0100 :  begin  // D
                    x <= ( (x - 1) % X_MAX ) + 1;
                end
            endcase
        end
    end
endmodule
