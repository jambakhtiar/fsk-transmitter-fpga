//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2024 12:25:56 AM
// Design Name: 
// Module Name: PDM_Generator
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


module PDM_Generator # (parameter clk_div = 100, clk_div_1 = 100)(
input  clk, 
input  valid,
input  valid_1,
output reg PDM_Signal, 
output reg PDM_Signal_1
);

reg [7:0] count;
reg [31:0] count_cycles;
reg [99:0] data_reg = 100'b1010100100001000000000000000000000100000010010010101011011011111101111111111111111111110111101101010;

    always @(posedge clk) begin 
        if (!valid) begin 
            count        <= 0;
            PDM_Signal   <= 0;
            count_cycles <= 0;
        end 
        else begin 
            if (count_cycles >= clk_div - 1) begin 
                if (count < 99) begin 
                    count <= count + 1;
                end
                else begin 
                    count <= 0;
                end 
                
                PDM_Signal <= data_reg[count];
                count_cycles <= 0;
           end
           else begin 
                count_cycles <= count_cycles + 1;
           end 
        end 
    end 
    
    reg [7:0] count_1;
    reg [31:0] count_cycles_1;
    always @(posedge clk) begin 
        if (!valid_1) begin 
            count_1        <= 0;
            PDM_Signal_1   <= 0;
            count_cycles_1 <= 0;
        end 
        else begin 
            if (count_cycles_1 >= clk_div_1 - 1) begin 
                if (count_1 < 99) begin 
                    count_1 <= count_1 + 1;
                end
                else begin 
                    count_1 <= 0;
                end 
                
                PDM_Signal_1 <= data_reg[count_1];
                count_cycles_1 <= 0;
           end
           else begin 
                count_cycles_1 <= count_cycles_1 + 1;
           end 
        end 
    end 
endmodule
