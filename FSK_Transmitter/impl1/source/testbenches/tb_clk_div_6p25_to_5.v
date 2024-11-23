`timescale 1ns / 1ps

module tb_clk_div_6p25_to_5;

    // Inputs
    reg clk_in;
    reg reset;

    // Outputs
    wire clk_out;

    // Instantiate the Unit Under Test (UUT)
    clk_div_6p25_to_5 uut (
        .clk_in(clk_in), 
        .reset(reset), 
        .clk_out(clk_out)
    );

    // Clock generation: 6.25 MHz (160 ns period)
    always #80 clk_in = ~clk_in; 

    initial begin
        // Initialize Inputs
        clk_in = 0;
        reset = 0;

        // Apply reset
        #100;
        reset = 1;
        #100;
        reset = 0;

        // Allow the clock to run for a few cycles
        #2000;

        // Apply reset again to see if the module resets correctly
        reset = 1;
        #100;
        reset = 0;

        // Run the clock for a while longer
        #2000;

        // Finish the simulation
        $stop;
    end

    initial begin
        $monitor("Time = %d, clk_in = %b, reset = %b, clk_out = %b", 
                  $time, clk_in, reset, clk_out);
    end
endmodule
