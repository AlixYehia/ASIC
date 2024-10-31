module UART_RX_strt_check (
	input 	wire		 	CLK,
	input	wire		 	RST,
	input	wire		 	strt_chk_en,
	input	wire	[5:0]	Prescale,
	input	wire	[4:0]	edge_cnt,
	input	wire	[3:0]	bit_cnt,
	input	wire		 	sampled_bit,
	output 	reg			 	strt_glitch
	);

always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 	 begin
 	  strt_glitch <= 1'b0;
 	 end
 	else if (strt_chk_en)
 	 begin
 	  if (sampled_bit != 1'b0 && bit_cnt == 0 && edge_cnt == (Prescale-2))
 	   begin
 	   	strt_glitch <= 1'b1;
 	   end
 	  else
 	   begin
 	   	strt_glitch <= 1'b0;
 	   end
 	 end
 end

endmodule