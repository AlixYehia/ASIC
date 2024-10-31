
// ************************************************************* //
// Author : Ali Yehia Abdelmonem
// Date   : 2024-10-5
// ************************************************************* //

module UART_RX_stop_check (
	input 	wire			CLK,
	input	wire			RST,
	input	wire	[5:0]	Prescale,
	input	wire	[4:0]	edge_cnt,	
	input	wire			stp_chk_en,
	input	wire			sampled_bit,
	output 	reg				stp_err
	);

always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 	 begin
 	  stp_err <= 1'b0;
 	 end
 	else if (stp_chk_en)
 	 begin
 	  if (sampled_bit != 1'b1 && edge_cnt == (Prescale-2))
 	   begin
 	   	stp_err <= 1'b1;
 	   end
 	  else
 	   begin
 	   	stp_err <= 1'b0;
 	   end
 	 end
 end

endmodule
