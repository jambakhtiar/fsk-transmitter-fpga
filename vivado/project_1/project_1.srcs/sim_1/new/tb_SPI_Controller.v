`timescale 1ns / 1ps

module tb_SPI_Controller;

    // Inputs
    reg i_Clk;
    reg i_Reset_n;
    reg i_Done_Trig;
    reg i_SPI_MISO;
    reg i_RX_Ready;

    // Outputs
    wire o_Master_Trig;
    wire [7:0] o_RX_Data;
    wire o_RX_Valid;
    wire o_SPI_Clk;
    wire o_SPI_MOSI;
    wire o_SPI_CS_n;

    // Instantiate the Unit Under Test (UUT)
    SPI_Controller uut (
        .i_Clk(i_Clk),
        .i_Reset_n(i_Reset_n),
        .i_Done_Trig(i_Done_Trig),
        .o_Master_Trig(o_Master_Trig),
        .o_RX_Data(o_RX_Data),
        .o_RX_Valid(o_RX_Valid),
        .i_RX_Ready(i_RX_Ready),
        .o_SPI_Clk(o_SPI_Clk),
        .i_SPI_MISO(i_SPI_MISO),
        .o_SPI_MOSI(o_SPI_MOSI),
        .o_SPI_CS_n(o_SPI_CS_n)
    );

    // Clock generation
    always #5 i_Clk = ~i_Clk; // 100 MHz clock (10ns period)

    // Testbench tasks
    task Reset();
    begin
        i_Reset_n = 0;
        #20;
        i_Reset_n = 1;
    end
    endtask

    task Send_Done_Trig();
    begin
        i_Done_Trig = 1;
        #10;
        i_Done_Trig = 0;
    end
    endtask

    initial begin
        // Initialize Inputs
        i_Clk = 0;
        i_Reset_n = 0;
        i_Done_Trig = 0;
        i_SPI_MISO = 0;
        i_RX_Ready = 0;

        // Apply reset
        Reset();

        // Wait for global reset to finish
        #100;

        // Start sending triggers to simulate SPI transaction
        Send_Done_Trig();

        // Simulate MISO data reception
        #50;
        i_SPI_MISO = 1; // Simulate a '1' bit received on MISO
        i_RX_Ready = 1;

        #10;
        i_SPI_MISO = 0; // Simulate a '0' bit received on MISO
        i_RX_Ready = 1;

        // Continue simulating MISO data and toggling RX_Ready
        repeat (7) begin
            #10;
            i_SPI_MISO = $random;
            i_RX_Ready = 1;
        end

        // Simulate waiting periods
        #100;

        // Another SPI transaction
        Send_Done_Trig();

        // Simulate another sequence of MISO data
        repeat (8) begin
            #10;
            i_SPI_MISO = $random;
            i_RX_Ready = 1;
        end

        #200;

        // Finish the simulation
        $stop;
    end

    initial begin
        $monitor("Time = %d, State = %b, Master Trig = %b, RX Data = %h, RX Valid = %b, SPI Clk = %b, SPI MOSI = %b, SPI CS_n = %b", 
                  $time, uut.r_State, o_Master_Trig, o_RX_Data, o_RX_Valid, o_SPI_Clk, o_SPI_MOSI, o_SPI_CS_n);
    end
endmodule
