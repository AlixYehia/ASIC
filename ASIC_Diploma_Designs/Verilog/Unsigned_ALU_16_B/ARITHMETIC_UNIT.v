module ARITHMETIC_UNIT #(parameter WIDTH = 16) 
(
	input 	wire 	signed		[WIDTH-1:0]			A,
	input 	wire	signed		[WIDTH-1:0] 		B,
	input 	wire				[1:0]				ALU_FUN,
	input 	wire									CLK,
	input 	wire									Arith_Enable,
	input   wire 									RST,
	output	reg		signed		[(WIDTH*2)-1:0]		Arith_OUT,
	output 	reg										Arith_Flag
	);

	reg 	signed 	[WIDTH-1:0] 	Arith_OUT_Comb;
	reg 							Arith_Flag_Comb;


always@(posedge CLK or negedge RST)
 begin
 	if (!RST) 
 	 begin
 		Arith_OUT  <= 'b0;
	 	Arith_Flag <= 1'b0;	
 	 end
 	else 
 	 begin
	 	Arith_OUT  <= Arith_OUT_Comb;
	 	Arith_Flag <= Arith_Flag_Comb;
 	  end
 end


 always@(*)
  begin
	if (Arith_Enable)
	 begin
	 	case (ALU_FUN)
	 	2'b00 : begin
	 		Arith_OUT_Comb  = A + B;
	 		Arith_Flag_Comb = 1'b1;
	 	end

	 	2'b01 : begin
	 		Arith_OUT_Comb  = A - B;
	 		Arith_Flag_Comb = 1'b1;
	 	end

	 	2'b10 : begin
	 		Arith_OUT_Comb  = A * B;
	 		Arith_Flag_Comb = 1'b1;
	 	end

	 	2'b11 : begin
	 		Arith_OUT_Comb  = A / B;
	 		Arith_Flag_Comb = 1'b1;
	 	end
	 	endcase
	 end
	else
	 begin
	 	Arith_OUT_Comb  = 'b0; 
	 	Arith_Flag_Comb = 1'b0;
	 end
  end


  endmodule