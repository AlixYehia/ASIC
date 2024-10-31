module UART_RX_parity_check (
	input	wire				CLK,
	input	wire				RST,
	input	wire				RX_IN,
	input 	wire 			PAR_TYP,
	input	wire		[5:0]	Prescale,
	input	wire		[4:0]	edge_cnt,
	input	wire		[3:0]	bit_cnt,	
	input	wire				par_chk_en,
	input	wire				sampled_bit,
	input 	wire		[7:0]	P_DATA,
	output	reg				par_err
	);

reg		parity;

always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 	 begin
 	 	par_err <= 1'b0;
 	 	parity <= 1'b0;
 	 end
 	else if (par_chk_en)
 	 begin
 	  case (PAR_TYP)
 	  1'b0 : begin
 	  		  parity <= ^P_DATA;
 	  	     end
 	  1'b1 : begin
 	  		  parity <= ~^P_DATA;
 	  	     end
 	  endcase
       if (sampled_bit != parity && bit_cnt == 9 && edge_cnt == (Prescale-2))
        begin
       	 par_err <= 1'b1;
        end
       else
        begin
       	 par_err <= 1'b0;
        end
 	 end
 end

endmodule