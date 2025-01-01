
// ************************************************************* //
// Author : Ali Yehia Abdelmonem
// Date   : 2024-9-24
// ************************************************************* //

module UART_TX_parity_Calc (
	input	wire			CLK,
	input 	wire			RST,
	input 	wire 	[7:0] 	P_DATA,
	input 	wire 			Data_Valid,
	input	wire			busy,
	input 	wire 		 	PAR_TYP,
	output 	reg 			par_bit
	);

reg [7:0]	parallel_data;


// isolate input
always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 	 begin
 	  parallel_data <= 8'b0;
 	 end
 	else if (Data_Valid && !busy)
 	 begin
 	  parallel_data <= P_DATA;
 	 end
 end


always@(*)
 begin
 	case (PAR_TYP)
 		1'b0 : begin    // even parity
 				par_bit = ^parallel_data;

            /* if (^P_DATA == 0)         not optimized
 					par_bit = 1'b0; 
 			   else
 					par_bit = 1'b1;
 			*/
 			    end

 		1'b1 : begin    // odd parity
 				par_bit = ~^parallel_data;

			/* if (^P_DATA == 1)         not optimized
 					par_bit = 1'b0;
 			   else
 					par_bit = 1'b1;
 			*/
 			   end
 	endcase
 end

endmodule
