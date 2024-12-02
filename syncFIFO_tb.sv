// File info: 
// - Verilog taken from https://www.chipverify.com/verilog/synchronous-fifo

`timescale 1ns / 1ps

module syncFIFO_tb();
    // Parameters
    parameter CLK_PERIOD = 10; // 10ns for 100MHz clock

    // Signals
    reg w_clk;
    logic r_clk;
    logic [3:0] din;
    logic [3:0] dout;
    logic [3:0] rdata;
    logic empty;
    logic r_en;
    logic w_en;
    logic full;
    logic reset;
    logic stop;

    // Instantiate the Unit Under Test (UUT)
    syncFIFO uut (
        .reset(reset),
        .w_en(w_en),
        .r_en(r_en),
        .w_clk(w_clk),
        .r_clk(r_clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full)
    );
    
    always #(CLK_PERIOD) w_clk <= ~w_clk;
    assign r_clk = w_clk;

    initial begin
        w_clk <= 0;
        reset <= 1;
        w_en <= 0;
        r_en <= 0;
        stop <= 0;
        
        #(CLK_PERIOD * 5) reset <= 0;
    end
    
    // Write data into FIFO
    initial begin
        @(posedge w_clk);
        
        for (int i = 0; i < 50; i = i+1) begin
            // Wait until space
            while (full) begin
                @(posedge w_clk);
                $display("[%0t] FIFO full", $time);
            end;
            
            // Put new values
            w_en <= $random;
            din <= $random;
            $display(
                "[%0t] w_clk i=%0d w_en=%0d din=0x%0h ",
                $time, 
                i,
                w_en,
                din
            );
            
            // Wait for posedge on clock
            @(posedge w_clk);
        end
        
        stop = 1;
    end
    
    initial begin
        @(posedge r_clk);
        
        while (!stop) begin
            // Wait until data
            while (empty) begin
                r_en <= 0;
                $display("[%0t] FIFO empty", $time);
                @(posedge r_clk);
            end;
            
            // Sample new values from FIFo at random pace
            r_en <= $random;
            @(posedge r_clk);
            rdata <= dout;
            $display(
                "[%0t] r_clk r_en=%0d rdata=0x%0h ",
                $time,
                r_en,
                rdata
            );    
        end
        
        #(CLK_PERIOD * 50) $finish;
    end
endmodule