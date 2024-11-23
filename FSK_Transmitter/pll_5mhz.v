module pll_5mhz(
    input clk_in,        // 16 MHz input clock
    input reset,
    output clk_out       // 5 MHz output clock
);

    wire pll_clk;
    wire locked;

    // PLL instantiation
    // These parameters would be configured using the Lattice IP configuration tool
    // M = 5, D = 16, O = 1
    // clk_in = 16 MHz, clk_out = 5 MHz
    PLL_BASE #(
        .DIVR(4'b0000),         // Reference divider (0)
        .DIVF(7'b0101000),      // Feedback divider (40)
        .DIVQ(3'b011),          // Output divider (3)
        .FILTER_RANGE(3'b001)   // Filter range
    ) pll_inst (
        .CLKI(clk_in),          // Input clock (16 MHz)
        .CLKOP(pll_clk),        // PLL output clock (5 MHz)
        .LOCK(locked),          // Lock status signal
        .RST(reset)             // PLL reset
    );

    assign clk_out = pll_clk;

endmodule
