// https://www.instructables.com/UART-Communication-on-Basys-3-FPGA-Dev-Board-Power-1/
// W: 0111_0111
// A: 0110_0001
// S: 0111_0011
// D: 0110_0100

module receiver (
    input  logic clk,
    input  logic reset,
    input  logic rx,
    output logic [7:0] data
);

    logic shift;
    logic state;
    logic nextstate;
    logic clear_bitcounter;
    logic inc_bitcounter;
    logic inc_samplecounter;
    logic clear_samplecounter;
    
    logic [3:0]  bitcounter;
    logic [1:0]  samplecounter;
    logic [13:0] counter;
    logic [9:0]  rxshiftreg;
    
    localparam clk_freq = 100_000_000;
    localparam baud_rate = 9_600;
    localparam div_sample = 4;
    localparam div_counter = clk_freq / (baud_rate * div_sample);
    localparam mid_sample = (div_sample / 2);
    localparam div_bit = 10;
    
    assign data = rxshiftreg[8:1];
   
    always @(posedge clk) begin
        if (reset) begin
            state <= 0;
            bitcounter <= 0;
            counter <= 0;
            samplecounter <= 0;
        end else begin
            counter <= counter + 1;
            if (counter >= div_counter - 1) begin
                counter <= 0;
                state <= nextstate;
                if (shift) rxshiftreg <= {rx, rxshiftreg[9:1]};
                if (clear_samplecounter) samplecounter <= 0;
                if (inc_samplecounter)   samplecounter <= samplecounter + 1;
                if (clear_bitcounter)    bitcounter <= 0;
                if (inc_bitcounter)      bitcounter<= bitcounter+ 1;
            end
        end
    end
    
    always@(posedge clk) begin
        shift <= 0;
        clear_samplecounter <= 0;
        inc_samplecounter <= 0;
        clear_bitcounter <= 0;
        inc_bitcounter <= 0;
        nextstate <= 0;
        
        case(state)
            0: begin
                if (rx) begin
                    nextstate <= 0;
                end else begin
                    nextstate <= 1;
                    clear_bitcounter <= 1;
                    clear_samplecounter <= 1;
                end
            end
            
            1: begin
                nextstate <= 1;
                if (samplecounter == mid_sample - 1) shift <= 1;
                if (samplecounter == div_sample - 1) begin
                    if(bitcounter == div_bit - 1 ) begin
                        nextstate <= 0;
                    end
                    inc_bitcounter <= 1;
                    clear_samplecounter <= 1;
                end else inc_samplecounter <= 1;
            end
            
            default: nextstate <= 0;
        endcase
    end
endmodule
