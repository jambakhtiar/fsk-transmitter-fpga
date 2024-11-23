`timescale 1ns / 1ps

module tb_fsk_gen;

// Parameters
parameter CLK_PERIOD = 10; // Clock period for a 100 MHz clock (10ns)

// Inputs
reg clk;
reg rstn;
reg [7:0] data_in;
reg valid_in;

// Outputs
wire ready;
wire F1Q1, F1Q4, F2Q2, F2Q3;

// Instantiate the Unit Under Test (UUT)
fsk_gen #(
    .clk_div(416666)
) uut (
    .clk(clk),
    .rstn(rstn),
    .data_in(data_in),
    .valid_in(valid_in),
    .ready(ready),
    .F1Q1(F1Q1),
    .F1Q4(F1Q4),
    .F2Q2(F2Q2),
    .F2Q3(F2Q3)
);

// Clock generation
always begin
    clk = 1'b0;
    #(CLK_PERIOD / 2);
    clk = 1'b1;
    #(CLK_PERIOD / 2);
end

// Stimulus process
initial begin
    // Initialize Inputs
    rstn = 0;
    data_in = 8'b00000000;
    valid_in = 0;

    // Wait for global reset
    #100;
    rstn = 1;

    // Test Case 1: Send a sequence of data
    data_in = 8'b10101010;
    valid_in = 1;
    #10; // Wait for a few clock cycles
    valid_in = 0;
    
    // Test Case 2: Change data input
    #100;
    data_in = 8'b11110000;
    valid_in = 1;
    #10; // Wait for a few clock cycles
    valid_in = 0;

    // Test Case 3: Check output behavior
    #100;
    data_in = 8'b00001111;
    valid_in = 1;
    #10; // Wait for a few clock cycles
    valid_in = 0;

    // Finish simulation
    #8000000;
    $finish;
end

// Monitor outputs
initial begin
    $monitor("Time = %0t | clk = %b | rstn = %b | data_in = %b | valid_in = %b | ready = %b | F1Q1 = %b | F1Q4 = %b | F2Q2 = %b | F2Q3 = %b",
             $time, clk, rstn, data_in, valid_in, ready, F1Q1, F1Q4, F2Q2, F2Q3);
end

endmodule
