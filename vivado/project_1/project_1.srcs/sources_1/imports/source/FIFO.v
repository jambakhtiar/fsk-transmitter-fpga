
module FIFO
    (
        input wire clk, rst_n,
        input wire fifo_in_valid, fifo_out_ready,
        output reg fifo_in_ready, fifo_out_valid,
        input wire [7:0] data_in,
        output reg [7:0] data_out,
        output wire full, empty
    );
    
    localparam PTR_WIDTH = 3;
    reg [PTR_WIDTH:0] w_ptr, r_ptr;                 // addition bit to detect full/empty condition
    reg [7:0] fifo [7 : 0];
    wire wrap_around;
    
    // To write data to FIFO
    always@(posedge clk) begin
		if(!rst_n) begin							// Set Default values on reset.
			w_ptr <= 0;
		end
		else begin
			if(fifo_in_valid & !full)begin
				fifo[w_ptr[PTR_WIDTH-1:0]] <= data_in;
				w_ptr <= w_ptr + 1;
			end
		end
    end
    
    // To read data from FIFO
    always@(posedge clk) begin
		if(!rst_n) begin
			data_out <= 0;
			r_ptr <= 0;
		end
		else begin
			data_out <= fifo[r_ptr[PTR_WIDTH-1:0]];
			fifo_out_valid <= ~empty;
			fifo_in_ready <= ~full;
			
			if(fifo_out_ready & !empty) begin
				r_ptr <= r_ptr + 1;
			end
		end
    end
    
    assign wrap_around = w_ptr[PTR_WIDTH] ^ r_ptr[PTR_WIDTH]; // To check MSB of write and read pointers are different
    
    //Full condition: MSB of write and read pointers are different and remainimg bits are same.
    assign full = wrap_around & (w_ptr[PTR_WIDTH-1:0] == r_ptr[PTR_WIDTH-1:0]);
    
    //Empty condition: All bits of write and read pointers are same.
    //assign empty = !wrap_around & (w_ptr[PTR_WIDTH-1:0] == r_ptr[PTR_WIDTH-1:0]);
    //or
    assign empty = (w_ptr == r_ptr);
  
endmodule
