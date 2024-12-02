// File info:
// - File from Lab 5 when we designed our own averager

module averager 
    #(parameter int
        power = 8, // 2**N samples, default is 2**8 = 256 samples
        N = 12)    // # of bits to take the average of
    (
    input  logic clk,
    input  logic reset,
    input logic EN,
    input  logic [(N-1):0] Din,
    output logic [(N-1):0] Q
);
    localparam MAX_SIZE = power * N;

    logic [(N-1):0] s [0:(power-1)];
    int i;
    logic [(N-1):0] oldDin;
    
    logic [MAX_SIZE:0] accumilator;
    logic [MAX_SIZE:0] divided;
    assign Q = divided[(N-1):0];
    
    always @(posedge clk) begin
        if(reset) begin
            accumilator <= 0;
            oldDin <= 0;
            for (int i = 0; i < power; i=i+1)
                s[i] <= 0;
            divided <= 0;
        end else begin
            accumilator <= accumilator + Din - oldDin; 
            
            s = {s[1:(power-1)], Din};
            oldDin <= s[0];
            divided <=  accumilator / 'd8;
        end
    end
    
    
        
    
endmodule
