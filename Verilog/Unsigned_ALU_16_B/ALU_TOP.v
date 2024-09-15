module ALU_TOP #(parameter OP_WIDTH = 16)
(
	input 	[OP_WIDTH-1:0]			A,
	input	[OP_WIDTH-1:0]			B,
	input	[3:0]					ALU_FUN,
	input 							CLK,
	input							RST,
	output 	[(OP_WIDTH*2)-1:0]		Arith_OUT,
	output  						Arith_Flag,
	output 	[OP_WIDTH-1:0]			Logic_OUT,
	output  						Logic_Flag,
	output 	[OP_WIDTH-1:0]			CMP_OUT,
	output  						CMP_Flag,
	output 	[OP_WIDTH-1:0]			SHIFT_OUT,
	output  						SHIFT_Flag
	);


	// Internal connections
	wire 	Arith_Enable, Logic_Enable, CMP_Enable, Shift_Enable;


Decoder U0_Decoder (
	.ALU_FUN(ALU_FUN[3:2]),
	.Arith_Enable(Arith_Enable),
	.Logic_Enable(Logic_Enable),
	.CMP_Enable(CMP_Enable),
	.Shift_Enable(Shift_Enable)
	);


ARITHMETIC_UNIT #(.WIDTH(OP_WIDTH)) U0_ARITHMETIC_UNIT (
	.A(A),
	.B(B),
	.ALU_FUN(ALU_FUN[1:0]),
	.CLK(CLK),
	.RST(RST),
	.Arith_Enable(Arith_Enable),
	.Arith_OUT(Arith_OUT),
	.Arith_Flag(Arith_Flag)
	);


LOGIC_UNIT #(.WIDTH(OP_WIDTH)) U0_LOGIC_UNIT (
	.A(A),
	.B(B),
	.ALU_FUN(ALU_FUN[1:0]),
	.CLK(CLK),
	.RST(RST),
	.Logic_Enable(Logic_Enable),
	.Logic_OUT(Logic_OUT),
	.Logic_Flag(Logic_Flag)
	);


CMP_UNIT #(.WIDTH(OP_WIDTH)) U0_CMP_UNIT (
	.A(A),
	.B(B),
	.ALU_FUN(ALU_FUN[1:0]),
	.CLK(CLK),
	.RST(RST),
	.CMP_Enable(CMP_Enable),
	.CMP_OUT(CMP_OUT),
	.CMP_Flag(CMP_Flag)
	);


SHIFT_UNIT #(.WIDTH(OP_WIDTH)) U0_SHIFT_UNIT (
	.A(A),
	.B(B),
	.ALU_FUN(ALU_FUN[1:0]),
	.CLK(CLK),
	.RST(RST),
	.Shift_Enable(Shift_Enable),
	.SHIFT_OUT(SHIFT_OUT),
	.SHIFT_Flag(SHIFT_Flag)
	);

endmodule