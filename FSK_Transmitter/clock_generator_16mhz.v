module clock_generator_16mhz(
    input reset,
    output clk_out
);

    // Wire to connect the internal oscillator output
    wire internal_clk;

    // Instantiate the internal oscillator
    // Set the nominal frequency to the lowest possible value
    OSCH #(.NOM_FREQ("16.00")) internal_oscillator (
        .STDBY(1'b0),    // Oscillator enabled
        .OSC(internal_clk),
        .SEDSTDBY()
    );

    // Connect the oscillator output to clk_out
    assign clk_out = internal_clk;

endmodule
