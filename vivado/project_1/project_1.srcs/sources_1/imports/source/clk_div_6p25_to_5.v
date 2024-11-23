module clk_div_6p25_to_5(
    input wire clk_in,    // 6.25 MHz input clock
    input wire reset,     // Active low reset
    output reg clk_out    // 5 MHz output clock
);

    reg [2:0] counter;
    reg toggle;

    always @(posedge clk_in or posedge reset) begin
        if (~reset) begin
            counter <= 0;
            clk_out <= 0;
            toggle <= 0;
        end else begin
            if (toggle) begin
                if (counter == 4) begin
                    counter <= 0;
                    clk_out <= ~clk_out;
                    toggle <= ~toggle; // Switch to the other count value
                end else begin
                    counter <= counter + 1;
                end
            end else begin
                if (counter == 3) begin
                    counter <= 0;
                    clk_out <= ~clk_out;
                    toggle <= ~toggle; // Switch to the other count value
                end else begin
                    counter <= counter + 1;
                end
            end
        end
    end
endmodule
