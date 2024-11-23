`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/19/2024 12:12:25 AM
// Design Name: 
// Module Name: SPI_Controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SPI_Controller(
   // Start/Stop SIgnals 
   input i_Clk,
   input i_Reset_n,
   input i_Done_Trig,
   output reg o_Master_Trig,
   
   output [7:0] o_RX_Data,
   output o_RX_Valid,
   input i_RX_Ready,
    
   // SPI Interface
   inout o_SPI_Clk,
   input  i_SPI_MISO,
   inout o_SPI_MOSI,
   inout o_SPI_CS_n
    );
    
    localparam START     = 3'b000; 
    localparam COMMAND   = 3'b001;
    localparam ADDRESS   = 3'b010;
    localparam DATA_READ = 3'b011;
    localparam FINISH    = 3'b100;
    localparam DELAY     = 3'b101;
    
    reg [23:0] r_addr_count;
    reg [23:0] r_shift_addr_count;
    reg [2:0] r_State;
    reg [7:0] r_TX_Data;
    reg r_TX_Valid;
    wire r_TX_Ready;
    
    reg r_Start;
    reg r_Stop;
    
    reg [4:0] r_Data_Count;
    reg [19:0] r_Delay_Count;
    reg [4:0] r_Total_Count;
    
    wire r_RX_Valid;
    
  SPI_Master_With_Single_CS 
  #(.CLKS_PER_HALF_BIT(4),
    .CS_INACTIVE_CLKS(10)
    ) SPI_Master_Device
  (
   // Control/Data Signals,
   .i_Reset_n(i_Reset_n),     // FPGA Reset
   .i_Clk(i_Clk),         // FPGA Clock
   
   // TX (MOSI) Signals
   .i_TX_Byte(r_TX_Data),     // Byte to transmit on MOSI
   .i_TX_Valid(r_TX_Valid),         // Data Valid Pulse with i_TX_Byte
   .o_TX_Ready(r_TX_Ready),   // Transmit Ready for Byte
   
   .i_Start (r_Start),
   .i_Stop (r_Stop),
   
   // RX (MISO) Signals
   .o_RX_Valid(r_RX_Valid),       // Data Valid pulse (1 clock cycle)
   .o_RX_Byte(o_RX_Data),   // Byte received on MISO

   // SPI Interface
   .o_SPI_Clk(o_SPI_Clk),
   .i_SPI_MISO(i_SPI_MISO),
   .o_SPI_MOSI(o_SPI_MOSI),
   .o_SPI_CS_n(o_SPI_CS_n)
   );
   
   
    always@ (posedge i_Clk) begin 
        if (~i_Reset_n) begin 
           r_State <= START;
           r_addr_count <= 0;
           r_Data_Count <= 0;
           r_shift_addr_count <= 0;
           r_Delay_Count <= 0;
           o_Master_Trig <= 0;
           r_TX_Data <= 0;
           r_TX_Valid <= 0;
           r_Start <= 0;
           r_Total_Count <= 0;
        end
        else begin
            case (r_State)
                // Waiting for MCU to send SIGNAL
                START : begin 
                   if (i_Done_Trig) begin 
                      r_State <= COMMAND;
                      r_Start <= 1'b1;
                      r_Data_Count <= 0;
                   end 
                   r_Stop <= 0;
                end
                
                COMMAND : begin 
                    if (r_Data_Count == 0) begin 
                        r_Data_Count <= r_Data_Count + 1;
                    end
                    else if (r_TX_Ready) begin
                        r_TX_Data <= 8'h03;
                        r_TX_Valid <= 1'b1;
                        r_Start <= 1'b0;
                        r_State <= ADDRESS;
                        r_Data_Count <= 0;
                        r_shift_addr_count <= r_addr_count;
                        r_Total_Count <= r_Total_Count + 1;
                    end

                end
                
                ADDRESS : begin 
                    if ( (r_Data_Count < 3) & r_TX_Ready) begin
                        r_TX_Data <= r_shift_addr_count [23:16];
                        r_TX_Valid <= 1'b1;
                        r_shift_addr_count <= r_shift_addr_count << 8;
                        r_Data_Count <= r_Data_Count + 1;
                        r_State <= ADDRESS;
                        r_Total_Count <= r_Total_Count + 1;
                    end
                    else if (r_Data_Count == 3) begin
                        r_TX_Valid <= 1'b0;
                        r_State <= DATA_READ;
                        r_Data_Count <= 0;
                        r_addr_count <= r_addr_count + 8;
                    end
                    else begin 
                        r_TX_Valid <= 1'b0;
                        r_State <= ADDRESS;
                    end
                end
                
                DATA_READ : begin 
                    if ( (r_Data_Count < 8) & r_TX_Ready & i_RX_Ready) begin
                        r_TX_Data <= 0;
                        r_TX_Valid <= 1'b1;
                        r_Data_Count <= r_Data_Count + 1;
                        r_State <= DATA_READ;
                        r_Total_Count <= r_Total_Count + 1;
                    end
                    else if (r_Data_Count == 8) begin
                        r_TX_Valid <= 1'b0;
                        r_State <= DELAY;
                        r_Data_Count <= 0;
                    end
                    else begin 
                        r_TX_Valid <= 1'b0;
                        r_State <= DATA_READ;
                    end
                end
                
                DELAY : begin 
                    if (r_TX_Ready) begin 
                        r_Delay_Count <= 1;
                        r_State <= FINISH;
                        o_Master_Trig <= 1;
                        r_Stop <= 1;
                    end
                end
                
                FINISH : begin 
                    if (r_Delay_Count != 0) begin 
                        r_Delay_Count <= r_Delay_Count + 1;
                        r_Stop <= 0;
                    end
                    else begin 
                        r_Delay_Count <= 1;
                        r_State <= START;
                        o_Master_Trig <= 0;
                        r_Stop <= 0;
                        r_Total_Count <= 0;
                    end
                end
                
                default : begin
                    r_State <= START;
                    r_addr_count <= 0;
                end
            endcase
        end
    end
    
    assign o_RX_Valid = (r_RX_Valid & (r_Total_Count > 4));
endmodule
