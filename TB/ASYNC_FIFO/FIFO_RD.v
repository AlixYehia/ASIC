module FIFO_RD (
	input	  wire				     R_CLK,
	input	  wire						 R_RST,
	input	  wire						 R_INC,
	input	  wire	  [3:0]		 rq2_wptr,    // gray coded write pointer coming from DF_SYNC
	output  reg		  [3:0]	   R_ptr,       // gray coded read pointer is one bit more than the address so it can detect if write pointer in the same cycle or not as the read pointer
	output	reg		  [2:0]	   R_addr,
	output  wire						 EMPTY
	);

reg [3:0] rd_ptr;  // binary coded read pointer to calculate gray coded one


always@(posedge R_CLK or negedge R_RST)
begin
 	if(!R_RST)
 	 begin
 	 	R_addr <= 'b0;
	 	rd_ptr <= 'b0;
 	 end
 	else if(!EMPTY & R_INC)
 	 begin
 	 	R_addr <= R_addr + 1'b1;
 		rd_ptr <= rd_ptr + 1'b1;
 	 end
end


// since it is a counter then convert binary read pointer to gray code to overcome clock domain crossing data incoherence effect
always @(posedge R_CLK or negedge R_RST)
begin
 if(!R_RST)
   begin
    R_ptr <= 0;
   end
 else 
  begin
   case (rd_ptr)
   4'b0000: R_ptr <= 4'b0000;
   4'b0001: R_ptr <= 4'b0001;
   4'b0010: R_ptr <= 4'b0011;
   4'b0011: R_ptr <= 4'b0010;
   4'b0100: R_ptr <= 4'b0110;
   4'b0101: R_ptr <= 4'b0111;
   4'b0110: R_ptr <= 4'b0101;
   4'b0111: R_ptr <= 4'b0100;
   4'b1000: R_ptr <= 4'b1100;
   4'b1001: R_ptr <= 4'b1101;
   4'b1010: R_ptr <= 4'b1111;
   4'b1011: R_ptr <= 4'b1110;
   4'b1100: R_ptr <= 4'b1010;
   4'b1101: R_ptr <= 4'b1011;
   4'b1110: R_ptr <= 4'b1001;
   4'b1111: R_ptr <= 4'b1000;
   endcase
  end
 end


// generation of empty flag
assign EMPTY = (rq2_wptr == R_ptr);   // if they are both equal including most signifcant bit then they are on the same cycle so we read all the written data therefore empty is 1


endmodule