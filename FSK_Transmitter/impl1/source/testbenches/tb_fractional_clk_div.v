`timescale 1ns / 1ps

module tb_fractional_clk_div;

    // Testbench signals
    reg clk_in;
    reg reset;
    wire clk_out;

    // Instantiate the fractional clock divider
    fractional_clk_div uut (
        .clk_in(clk_in),
        .reset(reset),
        .clk_out(clk_out)
    );

    // Clock generation (6.25 MHz)
    initial begin
        clk_in = 0;
        forever #80 clk_in = ~clk_in;  // 80 ns period -> 6.25 MHz clock
    end

    // Test sequence
    initial begin
        // Initialize inputs
        reset = 1;
        
        // Wait for the clock to stabilize
        #160; 
        
        // Release reset
        reset = 0;
        
        // Run simulation for a while to observe behavior
        #1000;
        
        // Assert reset again
        reset = 1;
        
        // Observe the reset behavior
        #160;
        
        // Release reset again
        reset = 0;
        
        // Run for more cycles
        #2000;
        
        // Finish simulation
        $finish;
    end

    // Monitor the output signals
    initial begin
        $monitor("Time: %t | clk_in: %b | clk_out: %b | reset: %b", 
                 $time, clk_in, clk_out, reset);
    end

endmodule
