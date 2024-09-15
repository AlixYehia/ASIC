module LOGIC_UNIT #(parameter WIDTH = 16)
(
	input 	wire 			[WIDTH-1:0]			A,
	input 	wire			[WIDTH-1:0] 		B,
	input 	wire			[1:0]				ALU_FUN,
	input 	wire								CLK,
	input 	wire								Logic_Enable,
	input   wire 								RST,
	output	reg				[WIDTH-1:0]			Logic_OUT,
	output 	reg									Logic_Flag
	);

	reg 	[WIDTH-1:0]		Logic_OUT_Comb;
	reg 					Logic_Flag_Comb;


always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 	 begin
 	 	Logic_OUT  <= 'b0;
 	 	Logic_Flag <= 1'b0;
 	 end
 	else
 	 begin
 	 	Logic_OUT  <= Logic_OUT_Comb;
 	 	Logic_Flag <= Logic_Flag_Comb;
 	 end
 end


always@(*)
 begin
 	if (Logic_Enable)
 	 begin
 	 	case (ALU_FUN)
 	 	2'b00 : begin
 	 				Logic_OUT_Comb  = A & B;
 	 				Logic_Flag_Comb = 1'b1;
 	 			end

 	 	2'b01 : begin
 	 				Logic_OUT_Comb  = A | B;
 	 				Logic_Flag_Comb = 1'b1;
 	 			end

 		2'b10 : begin
		 	 		Logic_OUT_Comb  = ~(A & B);
		 	 		Logic_Flag_Comb = 1'b1;
		 	 	end

 	  	2'b11 : begin
		 	 		Logic_OUT_Comb  = ~(A | B);
		 	 		Logic_Flag_Comb = 1'b1;
		 	 	end
 	 	endcase

 	 end
 	else
 	 begin
 	 	Logic_OUT_Comb  = 'b0;
 	 	Logic_Flag_Comb = 1'b0;
 	 end
 end

endmodule