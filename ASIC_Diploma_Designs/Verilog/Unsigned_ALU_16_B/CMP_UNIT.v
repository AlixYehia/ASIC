module CMP_UNIT #(parameter WIDTH = 16)
(
	input 	wire 			[WIDTH-1:0]			A,
	input 	wire			[WIDTH-1:0] 		B,
	input 	wire			[1:0]				ALU_FUN,
	input 	wire								CLK,
	input 	wire								CMP_Enable,
	input   wire 								RST,
	output	reg				[WIDTH-1:0]			CMP_OUT,
	output 	reg									CMP_Flag
	);

	reg 	[WIDTH-1:0]		CMP_OUT_Comb;
	reg 					CMP_Flag_Comb;


always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 	 begin
 	 	CMP_OUT  <= 'b0;
 	 	CMP_Flag <= 1'b0;
 	 end
 	else
 	 begin
 	 	CMP_OUT  <= CMP_OUT_Comb;
 	 	CMP_Flag <= CMP_Flag_Comb;
 	 end
 end


always@(*)
 begin
 	if (CMP_Enable)
 	 begin
 	 	case (ALU_FUN)
 	 	2'b00 : begin
 	 				CMP_OUT_Comb  = 'b0;
 	 				CMP_Flag_Comb = 1'b1;
 	 			end

 	 	2'b01 : begin
		 	 		if (A == B)
		 	 		 begin
		 	 		 	CMP_OUT_Comb = 'd1;
		 	 		 end
		 	 		else
		 	 		 begin
		 	 		 	CMP_OUT_Comb = 'b0;
		 	 		 end
 	 				CMP_Flag_Comb = 1'b1;
 	 			end

 		2'b10 : begin
		 	 		if (A > B)
		 	 		 begin
		 	 		 	CMP_OUT_Comb = 'd2;
		 	 		 end
		 	 		else
		 	 		 begin
		 	 		 	CMP_OUT_Comb = 'b0;
		 	 		 end
 	 				CMP_Flag_Comb = 1'b1;
 	 			end

 	  	2'b11 : begin
		 	 		if (A < B)
		 	 		 begin
		 	 		 	CMP_OUT_Comb = 'd3;
		 	 		 end
		 	 		else
		 	 		 begin
		 	 		 	CMP_OUT_Comb = 'b0;
		 	 		 end
 	 				CMP_Flag_Comb = 1'b1;
 	 			end
 	 	endcase
 	 end
 	else
 	 begin
 	 	CMP_OUT_Comb  = 'b0;
 	 	CMP_Flag_Comb = 1'b0;
 	 end
 end

endmodule