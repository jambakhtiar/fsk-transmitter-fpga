//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2024 09:48:06 PM
// Design Name: 
// Module Name: fsk_gen
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

module fsk_gen # (parameter clk_div = 26042)  // Adjusted clk_div for 6.25 MHz clock

(
input clk,
input rstn,
input [7:0] data_in,
input valid_in,
output reg ready,
output F1Q1,F1Q4,F2Q2,F2Q3
);

reg PDM_Signal_Valid_1;
wire PDM_Signal_1;
reg PDM_Signal_Valid_2;
wire PDM_Signal_2;

reg [5:0] data_count;
reg [31:0] count_cycles;

localparam data_fetch = 1'b0, data_send = 1'b1;
reg [0:0] s_state;

   //"0"
  PDM_Generator #(.clk_div(104), .clk_div_1(96)) dut_PDM1 ( // Adjusted PDM generator dividers
  .clk (clk), 
  .valid (PDM_Signal_Valid_1),
  .valid_1 (PDM_Signal_Valid_2),
  .PDM_Signal (PDM_Signal_1),
  .PDM_Signal_1 (PDM_Signal_2)
  );
//  //"1"
//  PDM_Generator #(.clk_div(48000)) dut_PDM2 ( 
//  .clk (clk), 
//  .valid (PDM_Signal_Valid_2),
//  .PDM_Signal (PDM_Signal_2) 
//  );
  
  assign F1Q1 = PDM_Signal_Valid_1;
  assign F1Q4 = PDM_Signal_1;
  assign F2Q2 = PDM_Signal_2;
  assign F2Q3 = PDM_Signal_Valid_2;
  
  always @(posedge clk) begin 
    if (!rstn) begin //Initializing the variables to default values 
        PDM_Signal_Valid_1 <= 0;
        PDM_Signal_Valid_2 <= 0;
        ready <= 0;
        
        data_count <= 0;
        count_cycles <= 0;
        
        s_state <= data_fetch;
    end
    else begin 
        case (s_state) 
            data_fetch: begin //In this state data is fetched and stored in a variable
                if (valid_in & ready) begin 
                    ready <= 0;
                    s_state <= data_send; //Storing the input data at Valid
                end
                else begin 
                    ready <= 1;
                    s_state <= s_state;
                    PDM_Signal_Valid_2 <= 0;
                    PDM_Signal_Valid_1 <= 0;
                end 
            end 
            
            data_send: begin //This state is used to convert & transmit the input data 
                if (count_cycles == 0) begin
                    if (data_in[data_count] == 1) begin //If input data is logic '1' then transmit signal with frequency 520 Hz else transmit signal with frequency 460 Hz
                        PDM_Signal_Valid_2 <= 1;
                        PDM_Signal_Valid_1 <= 0;
                    end
                    else begin 
                        PDM_Signal_Valid_2 <= 0;
                        PDM_Signal_Valid_1 <= 1;
                    end 
                    
                    data_count <= data_count + 1;
                    count_cycles <= count_cycles + 1; //Counting the cycles for configuring the data transfer rate
                end 
                else begin 
                    if (count_cycles <= (clk_div - 1) )
                        count_cycles <= count_cycles + 1;
                    else 
                        count_cycles <= 0;
                        
                    if (data_count > 8) begin //If whole byte has been sent then move back to 'data_fetch' state 
                        s_state <= data_fetch;
                        count_cycles <= 0;
                        data_count <= 0;
                    end    
                    else begin
                        s_state <= s_state;
                    end    
                end
            end
            
        endcase 
    end 
  end 
  
endmodule
