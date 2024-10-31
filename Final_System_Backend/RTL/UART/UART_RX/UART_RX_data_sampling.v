module UART_RX_data_sampling (
	input 	wire			CLK,
	input	wire			RST,
	input	wire			RX_IN,
	input 	wire 	[5:0]	Prescale,
	input	wire			dat_samp_en,
	input	wire	[4:0]	edge_cnt,
	output 	reg				sampled_bit
	);

reg 	[2:0]	sampled_data;


always @(posedge CLK or negedge RST) begin
	if (!RST) 
	 begin
		sampled_bit <= 1'b0;	
	 end
	else if (dat_samp_en) 
	 begin
		if (edge_cnt == ((Prescale-1)/2)-1)
		 begin
		  sampled_data[0] <= RX_IN;
		 end
		else if(edge_cnt == ((Prescale-1)/2))
		 begin
		 	sampled_data[1] <= RX_IN;
		 end
		else if (edge_cnt == ((Prescale-1)/2)+1)
		 begin
		 	sampled_data[2] <= RX_IN; 
		 end
		else if (edge_cnt == ((Prescale-1)/2)+2)
		 begin
		   if (sampled_data[0] == sampled_data[1] || sampled_data[0] == sampled_data[2])
			begin
			   sampled_bit <= sampled_data[0];
			end
		   else if (sampled_data[1] == sampled_data[0] || sampled_data[1] == sampled_data[2])
			begin
			   sampled_bit <= sampled_data[1];
			end
		   else
			begin
			   sampled_bit <= sampled_data[2];
			end
		 end
	 end
end

endmodule