
// ************************************************************* //
// Author : Ali Yehia Abdelmonem
// Date   : 2024-10-5
// ************************************************************* //

module UART_RX_edge_bit_counter (
	input 	wire				CLK,
	input 	wire 				RST,
	input	wire	[5:0]		Prescale,
	input 	wire 				PAR_EN,
	input 	wire 				enable,
	output 	reg 	[3:0]		bit_cnt,
	output 	reg 	[4:0]		edge_cnt	
	);

reg [3:0]	frame_size;

always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 	 begin
 	 	bit_cnt <= 4'b0;
 	 	edge_cnt <= 5'b0;
 	 end
 	else if (enable)
 	 begin
 	 	edge_cnt <= edge_cnt + 1'b1;
 	 	if (edge_cnt == Prescale-1)
 	 	 begin
 	 	 	bit_cnt <= bit_cnt + 1'b1;
 	 	 	edge_cnt <= 'b0;
 	 	 end
 	 end
 	else 
 	 begin
 	 	edge_cnt <= 'b0;
 	 	bit_cnt <= 'b0;	
 	 end
 end

endmodule
