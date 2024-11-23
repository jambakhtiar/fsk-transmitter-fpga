

module SPI_Master_With_Single_CS
  #(parameter CLKS_PER_HALF_BIT = 4,
    parameter CS_INACTIVE_CLKS = 10)
  (
   input        i_Reset_n,     
   input        i_Clk,      

   input [7:0]  i_TX_Byte,       // Byte to transmit on MOSI
   input        i_TX_Valid,         // Data Valid Pulse with i_TX_Byte
   output       o_TX_Ready,      // Transmit Ready for next byte

   output       o_RX_Valid,     // Data Valid pulse (1 clock cycle)
   output [7:0] o_RX_Byte,   // Byte received on MISO

   // Start/Stop SIgnals 
   input i_Start,
   input i_Stop,
    
   // SPI Interface
   inout o_SPI_Clk,
   input  i_SPI_MISO,
   inout o_SPI_MOSI,
   inout o_SPI_CS_n
   );
  
  localparam START       = 3'b000; 
  localparam IDLE        = 3'b001;
  localparam TX_DONE     = 3'b010;
  localparam CS_INACTIVE = 3'b011;

  reg [2:0] r_State;
  reg r_CS_n;
  reg [$clog2(CS_INACTIVE_CLKS)-1:0] r_delay;
  wire w_Master_Ready;
  
  wire w_SPI_Clk, w_SPI_MOSI;

  // Instantiate Master
  SPI_Master 
    #(.CLKS_PER_HALF_BIT(CLKS_PER_HALF_BIT)
      ) SPI_Master_Inst
   (
   // Control/Data Signals,
   .i_Reset_n(i_Reset_n),     // FPGA Reset
   .i_Clk(i_Clk),         // FPGA Clock
   
   // TX (MOSI) Signals
   .i_TX_Byte(i_TX_Byte),         // Byte to transmit
   .i_TX_Valid(i_TX_Valid),             // Data Valid Pulse 
   .o_TX_Ready(w_Master_Ready),   // Transmit Ready for Byte
   
   // RX (MISO) Signals
   .o_RX_Valid(o_RX_Valid),       // Data Valid pulse (1 clock cycle)
   .o_RX_Byte(o_RX_Byte),   // Byte received on MISO

   // SPI Interface
   .o_SPI_Clk(w_SPI_Clk),
   .i_SPI_MISO(i_SPI_MISO),
   .o_SPI_MOSI(w_SPI_MOSI)
   );


  // Purpose: Control CS line using State Machine
  always @(posedge i_Clk or negedge i_Reset_n)
  begin
    if (~i_Reset_n)
    begin
      r_State <= START;
      r_delay <= 0;
    end
    else
    begin

      case (r_State)   
      START: 
        begin
           if (i_Start) begin 
               r_CS_n  <= 1'b1;   // Resets to high
               r_State <= IDLE;
               r_delay <= CS_INACTIVE_CLKS;
           end
           else begin
           r_CS_n <= 1'bZ;
           end
        end 
       
      IDLE:
        begin
          if (r_CS_n & i_TX_Valid) // Start of transmission
          begin
            r_CS_n     <= 1'b0;       // Drive CS low
            r_State    <= TX_DONE;   // Transfer bytes
          end
          else if (i_Stop) begin 
            r_CS_n     <= 1'b0;       // Drive CS low
            r_State    <= START;   // Move to IDLE mode so that MCU can do the transfer
          end
        end

      TX_DONE:
        begin
          // Wait until SPI TX is done
          if (w_Master_Ready)
          begin
              r_CS_n  <= 1'b1;
              r_delay <= CS_INACTIVE_CLKS;
              r_State             <= CS_INACTIVE;
          end 
        end

      CS_INACTIVE: // waiting after a single SPI transfer
        begin
          if (r_delay > 0)
          begin
            r_delay <= r_delay - 1'b1;
          end
          else
          begin
            r_State <= IDLE;
          end
        end

      default:
        begin
          r_CS_n  <= 1'bz; // CS hight at default condition
          r_State <= START;
        end
      endcase 
    end
  end


  assign o_SPI_CS_n = r_CS_n;

  assign o_TX_Ready  = (r_State == IDLE & ~i_TX_Valid);
  assign o_SPI_Clk = (r_State == START) ? 1'bZ : w_SPI_Clk;
  assign o_SPI_MOSI = (r_State == START) ? 1'bZ : w_SPI_MOSI;

endmodule // SPI_Master_With_Single_CS

