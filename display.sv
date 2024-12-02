// File info:
// - Based on parts of given SystemVerilog from labs
// - Combined files together
// - Displays FSM state and desired x- and y-coordinates

module display (
    input  logic       clk,    // 10 MHz clock
    input  logic       reset,  // Active high reset
    input  logic [1:0] state,  // FSM state
    
    input  logic [3:0] x,  // Desired x-coordinate
    input  logic [3:0] y,  // Desired y-coordinate
    
    // Display cathodes
    output logic       CA,
    output logic       CB,
    output logic       CC,
    output logic       CD,
    output logic       CE,
    output logic       CF,
    output logic       CG,
    output logic       DP,
    
    // Display anodes
    output logic        AN1, AN2, AN3, AN4
);

    logic [6:0] digit1;
    logic [6:0] digit2;
    logic [6:0] digit3;
    logic [6:0] digit4;
    logic [3:0] d, q;
    logic [13:0] count;
    logic [3:0] digit_select;
    logic [3:0] an_outputs;
    logic [6:0] digit;
    
    // Which digit is getting shown (anode active low)
    assign digit_select = q;
    assign an_outputs = ~q;
    
    // Never use the decimal point
    assign DP = 1;
    
    always @(posedge clk) begin
        if ( reset ) begin
            digit1 <= 7'b000_0000;
            digit2 <= 7'b000_0000;
            digit3 <= 7'b000_0000;
            digit4 <= 7'b000_0000;
        end else begin
        
            // This case statement selects what digits to display
            case ( state ) 
                //       A
                //     F   B
                //       G
                //     E   C
                //       D  DP
                // abc_defg
                
                // 00: Selection of ultrasonic or keyboard (default)
                // 01: Ultrasonic
                // 10: Keyboard
            
                default : begin
                    digit1 <= 7'b000_0001;
                    digit2 <= 7'b000_0001;
                end
                
                2'b01 : begin
                    digit1 <= 7'b001_1100;
                    digit2 <= 7'b011_0000;
                end
                
                2'b10 : begin
                    digit1 <= 7'b001_1111;
                    digit2 <= 7'b011_1101;
                end
            
            endcase
            
            
            case (x)                 // 6543210 
                'd0: digit3 <= 7'b1111110; // 0       A-6
                'd1: digit3 <= 7'b0110000; // 1   F-1     B-5
                'd2: digit3 <= 7'b1101101; // 2       G-0
                'd3: digit3 <= 7'b1111001; // 3   E-2     C-4
                'd4: digit3 <= 7'b0110011; // 4       D-3      DP
                'd5: digit3 <= 7'b1011011; // 5
                'd6: digit3 <= 7'b1011111; // 6
                'd7: digit3 <= 7'b1110000; // 7
                'd8: digit3 <= 7'b1111111; // 8
                'd9: digit3 <= 7'b1111011; // 9
                default: digit3 <= 7'b0000001;
            endcase
            
            
            case (y)                 // 6543210 
                'd0: digit4 <= 7'b1111110; // 0       A-6
                'd1: digit4 <= 7'b0110000; // 1   F-1     B-5
                'd2: digit4 <= 7'b1101101; // 2       G-0
                'd3: digit4 <= 7'b1111001; // 3   E-2     C-4
                'd4: digit4 <= 7'b0110011; // 4       D-3      DP
                'd5: digit4 <= 7'b1011011; // 5
                'd6: digit4 <= 7'b1011111; // 6
                'd7: digit4 <= 7'b1110000; // 7
                'd8: digit4 <= 7'b1111111; // 8
                'd9: digit4 <= 7'b1111011; // 9
                default: digit4 <= 7'b0000001;
            endcase
            
            
            // This case statement multiplexes the output digit
            case ( digit_select )
            
                default : begin
                    digit <= digit1; 
                end
                
                4'b0010 : begin
                    digit <= digit2; 
                end
                
                4'b0100 : begin
                    digit <= digit3; 
                end
                
                4'b1000 : begin
                    digit <= digit4; 
                end
            
            endcase
        end
    end
    
    
    // Counter
    always_ff @(posedge clk) begin
        if (reset) begin
            count <= 14'b0;
        end else begin
            count <= count + 1;
        end
    end

    // There is one high bit in q (one hot encoding), thus to make
    //     a multiplexer you can use a circular shift to pass the high
    //     bit around to each position
    always_ff @(posedge clk) begin
        if (reset) begin
            // Reset state values for q
            q <= 4'b1111;
        end else if (count == 14'b0) begin
            // Propagate signals through the DFF
            if (q[0] && q[1]) begin
                q <= 4'b1000;
            end else begin
                q <= d;
            end
        end
    end

    // Connect the DFFs into a chain/loop
    assign d[0] = q[3];
    assign d[1] = q[0];
    assign d[2] = q[1];
    assign d[3] = q[2];
    
    // All the outputs
    assign CA = ~digit[6];
    assign CB = ~digit[5];
    assign CC = ~digit[4];
    assign CD = ~digit[3];
    assign CE = ~digit[2];
    assign CF = ~digit[1];
    assign CG = ~digit[0];
    assign AN1 = an_outputs[3];
    assign AN2 = an_outputs[2];
    assign AN3 = an_outputs[1];
    assign AN4 = an_outputs[0];
    
endmodule