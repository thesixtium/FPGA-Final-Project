// File info
//  - Original
//  - Uses the ADC to read analog input

module analog (
    input logic clk,      // 10 MHz clock
    input logic reset,    // Active high reset
    input logic vauxp15,  // Analog positive pin
    input logic vauxn15,  // Analog negative pin
    
    output logic [7:0] xadc_x  // Desired arm x-coordinate if xadc controlled
);

    localparam CHANNEL_ADDR = 7'h1f;     // XA4/AD15 (for XADC4)
    logic [15:0] do_out;
    
    assign xadc_x = do_out[15:11];
    
    xadc_wiz_0 XADC_INST (
        .di_in(16'h0000),        // Not used for reading
        .daddr_in(CHANNEL_ADDR), // Channel address
        .den_in(1'b1),         // Enable signal
        .dwe_in(1'b0),           // Not writing, so set to 0
        .drdy_out(),        // Data ready signal (when high, ADC data is valid)
        .do_out(do_out),           // ADC data output
        .dclk_in(clk),           // Use system clock
        .reset_in(reset),   // Active-high reset
        .vp_in(1'b0),            // Not used, leave disconnected
        .vn_in(1'b0),            // Not used, leave disconnected
        .vauxp15(vauxp15),       // Auxiliary analog input (positive)
        .vauxn15(vauxn15),       // Auxiliary analog input (negative)
        .channel_out(),          // Current channel being converted
        .eoc_out(1'b1),        // End of conversion
        .alarm_out(),            // Not used
        .eos_out(),       // End of sequence
        .busy_out()      // XADC busy signal
    );
   
endmodule
