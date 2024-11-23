module system_top(
	input wire fpga_clock,
	output wire F1Q1,F1Q4,F2Q2,F2Q3,
	input i_Done_Trig,
	output o_Master_Trig,
	input i_SPI_MISO,
	inout o_SPI_Clk, o_SPI_MOSI, o_SPI_CS_n
	); 
	
	reg [2 : 0] resetCounter = 3'd0;
	reg fpga_resetn;
	
	wire [7 : 0] SPI_data;
	wire SPI_dataValid;
	reg [1 : 0] SPI_dataValid_reg;
	wire SPI_newData;
	
	wire [7 : 0] FIFO_data;
	wire FIFO_valid;
	wire FIFO_ready; 
	
	wire [7:0] o_RX_Data;
	wire o_RX_Valid;
	
	always @(posedge fpga_clock) begin
		if(resetCounter < 3'd7) begin
			resetCounter 		<= resetCounter + 1;
			fpga_resetn			<= 1'b0;
		end
		else begin
			resetCounter		<= resetCounter;
			fpga_resetn			<= 1'b1;
		end
	end
	

    SPI_Controller SPI_inst(
       // Start/Stop SIgnals 
    .i_Clk (fpga_clock),
    .i_Reset_n (fpga_resetn),
    .i_Done_Trig (i_Done_Trig),
    .o_Master_Trig (o_Master_Trig),
    
    .o_RX_Data (o_RX_Data),
    .o_RX_Valid (o_RX_Valid),
    .i_RX_Ready (FIFO_ready),
    
    .o_SPI_Clk (o_SPI_Clk),
    .i_SPI_MISO (i_SPI_MISO),
    .o_SPI_MOSI (o_SPI_MOSI),
    .o_SPI_CS_n (o_SPI_CS_n)
    );
	
	FIFO FIFO_inst(
		.clk(fpga_clock), 
		.rst_n(fpga_resetn),
		.data_in(o_RX_Data),
        .fifo_in_valid(o_RX_Valid),
		.fifo_in_ready(),
		.data_out(FIFO_data),
		.fifo_out_valid(FIFO_valid),
		.fifo_out_ready(FIFO_ready),
        .full(),
		.empty()
	);
	
	fsk_gen
	#(
		.clk_div(416666)
	)
	fsk_gen_inst
	(
		.clk(fpga_clock),
		.rstn(fpga_resetn),
		.data_in(FIFO_data),
		.valid_in(FIFO_valid),
		.ready(FIFO_ready),
		.F1Q1(F1Q1),
		.F1Q4(F1Q4),
		.F2Q2(F2Q2),
		.F2Q3(F2Q3)
	);
	
endmodule