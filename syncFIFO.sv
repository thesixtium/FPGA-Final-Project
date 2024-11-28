// https://www.chipverify.com/verilog/synchronous-fifo

module syncFIFO #(parameter DEPTH=8, DWIDTH=1000000)
(
    input logic reset,   // Active low reset
    input logic w_clk,  // Write clock
    input logic r_clk,  // Read clock
    input logic w_en,   // Write enable
    input logic r_en,   // Read enable
    
    input  logic [DWIDTH-1:0] din,  // Data into FIFO
    output logic [DWIDTH-1:0] dout,  // Data out of FIFO
    
    output logic empty,  // High when FIFO is full
    output logic full    // Low when FIFO is full
);

    logic [$clog2(DEPTH)-1:0] wptr;  // Write pointer
    logic[$clog2(DEPTH)-1:0] rptr;  // Read pointer
    logic [DWIDTH-1:0] fifo[DEPTH];
    
    always @ (posedge w_clk) begin
        if(reset) begin
            wptr <= 0;
        end else begin
            if (w_en & !full) begin
                fifo[wptr] <= din;
                wptr <= wptr + 1;
            end
        end
    end
    
    initial begin
        $monitor(
            "[%0t] [FIFO] w_en=%0b din=0x%0h rd_en=%0b dout=0x%0h empty=%0b full=%0b",
            $time,
            w_en,
            din,
            r_en,
            dout,
            empty,
            full);
    end 
    
    always @ (posedge r_clk) begin
        if (reset) begin
            rptr <= 0;
        end else begin
            if (r_en & !empty) begin
                dout <= fifo[rptr];
                rptr <= rptr + 1;
            end
        end
    end
    
    // Full if write pointer is about to be at read pointer
    assign full = ((wptr +1) == rptr);
    
    // Empty if read pointer is at write pointer
    assign empty = (wptr == rptr);
                

endmodule
