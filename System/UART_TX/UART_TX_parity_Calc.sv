module UART_TX_parity_Calc (
	input 	wire 	[7:0] 	P_DATA,
	input 	wire 			Data_Valid,
	input 	wire 		 	PAR_TYP,
	output 	reg 			par_bit
	);

always@(*)
 begin
 	case (PAR_TYP)
 		1'b0 : begin    // even parity
 				par_bit = ^P_DATA;

            /* if (^P_DATA == 0)         not optimized
 					par_bit = 1'b0; 
 			   else
 					par_bit = 1'b1;
 			*/
 			    end

 		1'b1 : begin    // odd parity
 				par_bit = ~^P_DATA;

			/* if (^P_DATA == 1)         not optimized
 					par_bit = 1'b0;
 			   else
 					par_bit = 1'b1;
 			*/
 			   end
 	endcase
 end

endmodule