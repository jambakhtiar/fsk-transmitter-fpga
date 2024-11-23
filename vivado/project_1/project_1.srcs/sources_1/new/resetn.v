

module resetn(
    input fpga_clock,
    output reg fpga_resetn
    );
   
  reg [2 : 0] resetCounter=3'd0;  
always @(posedge fpga_clock) begin
		//if(resetCounter == 3'd7)		  
		 // resetCounter <= 3'd0;
		//else begin
		  if(resetCounter < 3'd7) begin
			resetCounter 		<= resetCounter + 1;
			fpga_resetn			<= 1'b0;
		  end
		  else begin
			resetCounter		<= resetCounter;
			fpga_resetn			<= 1'b1;
		  end
		//end
	end



    
    
endmodule
