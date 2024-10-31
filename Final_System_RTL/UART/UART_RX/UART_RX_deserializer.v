module UART_RX_deserializer (
	input	wire				CLK,
	input 	wire				RST,
	input 	wire	[3:0]		bit_cnt,
	input 	wire 				deser_en,
	input	wire				sampled_bit,
	output	reg		[7:0]		P_DATA
	);


always@(posedge CLK or negedge RST)
 begin
  if (!RST)
   begin
   	P_DATA <= 8'b0;
   end
  else if (deser_en)
   begin
   	case (bit_cnt)
   	4'd1 : begin
   		    P_DATA[0] <= sampled_bit;
   		   end
   	4'd2 : begin
   		    P_DATA[1] <= sampled_bit;
   		   end
   	4'd3 : begin
   		    P_DATA[2] <= sampled_bit;
   		   end
   	4'd4 : begin
   		    P_DATA[3] <= sampled_bit;
   		   end   
    4'd5 : begin
   		    P_DATA[4] <= sampled_bit;
   		   end   
    4'd6 : begin
   		    P_DATA[5] <= sampled_bit;
   		   end   
    4'd7 : begin
   		    P_DATA[6] <= sampled_bit;
   		   end   
    4'd8 : begin
   		    P_DATA[7] <= sampled_bit;
   		   end   
    default : begin
    	       P_DATA <= 8'b0;
    	      end
    endcase
   end
 end

endmodule