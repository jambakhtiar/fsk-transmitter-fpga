`timescale 1ns / 1ps

module tb_system_top;

// Parameters
parameter CLK_PERIOD = 160; // Clock period for a 6.25 MHz clock (160ns)

// Inputs
reg i_fpga_clock;
reg i_Done_Trig;
reg i_SPI_MISO;

// Outputs
wire F1Q1, F1Q4, F2Q2, F2Q3;
wire o_Master_Trig;
wire o_SPI_Clk, o_SPI_MOSI, o_SPI_CS_n;

// Instantiate the Unit Under Test (UUT)
system_top uut (
    .i_fpga_clock(i_fpga_clock),
    .F1Q1(F1Q1),
    .F1Q4(F1Q4),
    .F2Q2(F2Q2),
    .F2Q3(F2Q3),
    .i_Done_Trig(i_Done_Trig),
    .o_Master_Trig(o_Master_Trig),
    .i_SPI_MISO(i_SPI_MISO),
    .o_SPI_Clk(o_SPI_Clk),
    .o_SPI_MOSI(o_SPI_MOSI),
    .o_SPI_CS_n(o_SPI_CS_n)
);

// Clock generation
initial begin
    i_fpga_clock = 1'b0;
    forever #(CLK_PERIOD / 2) i_fpga_clock = ~i_fpga_clock;
end

// Stimulus process
initial begin
    // Initialize Inputs
    i_Done_Trig = 0;
    i_SPI_MISO = 1'b0; // Assume initial value for SPI_MISO

    // Apply Reset
    #100;
    // Check if the module starts properly after reset
    #200;

    // Stimulate SPI data
    // Send some data to SPI Controller
    #100;
    i_SPI_MISO = 1'b1; // Example data value
    #20;
    i_SPI_MISO = 1'b0; // Example data value
    #20;
    
    // Trigger the Done signal
    #100;
    i_Done_Trig = 1'b1;
    #20;
    i_Done_Trig = 1'b0;

    // Monitor the outputs
    #500;
    $display("F1Q1 = %b, F1Q4 = %b, F2Q2 = %b, F2Q3 = %b", F1Q1, F1Q4, F2Q2, F2Q3);
    $display("o_Master_Trig = %b, o_SPI_Clk = %b, o_SPI_MOSI = %b, o_SPI_CS_n = %b", o_Master_Trig, o_SPI_Clk, o_SPI_MOSI, o_SPI_CS_n);

    // Finish simulation
    #2000;
    $finish;
end

// Monitor Outputs
initial begin
    $monitor("Time = %0t | i_fpga_clock = %b | i_Done_Trig = %b | i_SPI_MISO = %b | o_Master_Trig = %b | o_SPI_Clk = %b | o_SPI_MOSI = %b | o_SPI_CS_n = %b | F1Q1 = %b | F1Q4 = %b | F2Q2 = %b | F2Q3 = %b",
             $time, i_fpga_clock, i_Done_Trig, i_SPI_MISO, o_Master_Trig, o_SPI_Clk, o_SPI_MOSI, o_SPI_CS_n, F1Q1, F1Q4, F2Q2, F2Q3);
end

endmodule
