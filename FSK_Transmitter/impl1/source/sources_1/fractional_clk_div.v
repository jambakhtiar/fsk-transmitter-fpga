module fractional_clk_div (
    input wire clk_in,       // Input clock
    input wire reset,        // Reset signal
    output reg clk_out       // Fractional divided clock output
);

    reg [1:0] count;         // 2-bit counter for the sequence
    reg toggle;              // Toggle signal to implement division by 2

    always @(posedge clk_in or posedge reset) begin
        if (~reset) begin
            count <= 2'b0;
            toggle <= 1'b0;
            clk_out <= 1'b0;
        end else begin
            count <= count + 1'b1;
            
            case (count)
                2'b00: clk_out <= ~clk_out;  // Divide by 1 (toggle every clock)
                2'b01: clk_out <= ~clk_out;  // Divide by 1 (toggle every clock)
                2'b10: clk_out <= ~clk_out;  // Divide by 1 (toggle every clock)
                2'b11: begin
                    toggle <= ~toggle;       // Divide by 2 (toggle every other clock)
                    if (toggle) begin
                        clk_out <= ~clk_out;
                    end
                end
            endcase
        end
    end

endmodule
