module FIFO_WR (
	input	  wire						W_CLK,
	input	  wire						W_RST,
	input	  wire						W_INC,
	input	  wire	[3:0]			wq2_rptr,	// gray coded read pointer coming from DF_SYNC
	output	reg		[3:0]			W_ptr,		// gray coded write pointer is one bit more than the address so it can detect if write pointer in the same cycle or not as the read pointer
	output	reg		[2:0]			W_addr,
	output	wire						FULL
	);

reg [3:0] w_ptr;  // binary coded write pointer to calculate gray coded one


always@(posedge W_CLK or negedge W_RST)
begin
 	if(!W_RST)
 	 begin
 	 	W_addr <= 'b0;
	 	w_ptr <= 'b0;
 	 end
 	else if(!FULL & W_INC)
 	 begin
 	 	W_addr <= W_addr + 1'b1;
 		w_ptr <= w_ptr + 1'b1;
 	 end
end


// since it is a counter then convert binary write pointer to gray code to overcome clock domain crossing data incoherence effect
always @(posedge W_CLK or negedge W_RST)
begin
 if(!W_RST)
   begin
    W_ptr <= 0;
   end
 else 
  begin
   case (w_ptr)
   4'b0000: W_ptr <= 4'b0000;  // 0
   4'b0001: W_ptr <= 4'b0001;  // 1
   4'b0010: W_ptr <= 4'b0011;  // 2
   4'b0011: W_ptr <= 4'b0010;  // 3
   4'b0100: W_ptr <= 4'b0110;  // 4
   4'b0101: W_ptr <= 4'b0111;  // 5
   4'b0110: W_ptr <= 4'b0101;  // 6
   4'b0111: W_ptr <= 4'b0100;  // 7
   4'b1000: W_ptr <= 4'b1100;  // 8
   4'b1001: W_ptr <= 4'b1101;  // 9
   4'b1010: W_ptr <= 4'b1111;  // 10
   4'b1011: W_ptr <= 4'b1110;  // 11
   4'b1100: W_ptr <= 4'b1010;  // 12
   4'b1101: W_ptr <= 4'b1011;  // 13
   4'b1110: W_ptr <= 4'b1001;  // 14
   4'b1111: W_ptr <= 4'b1000;  // 15
   endcase
  end
 end


// generation of full flag
assign FULL = (wq2_rptr[3] != W_ptr[3] && wq2_rptr[2] != W_ptr[2] && wq2_rptr[1:0] == W_ptr[1:0]);   // if they are opposite in 2 most signifcant bits and equal in 2 LSBs then they are on different cycles so we didn't read all the written data therefore full is 1 for example write address at cycle 13 and and read address at cycle 5

endmodule