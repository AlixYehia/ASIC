/*
ALU Control lines  |  Function
----------------------------------------------
        0000       |  Arithmetic: Signed Addition
        0001       |  Arithmetic: Signed Subtraction
        0010       |  Arithmetic: Signed Multiplication
        0011       |  Arithmetic: Signed Division
        0100       |  Logic: AND
        0101       |  Logic: OR
        0110       |  Logic: NAND
        0111       |  Logic: NOR
        		   |
        1000       |  NOP: No Operation
                   |   - CMP_OUT = 0 
                   |
        1001       |  CMP: A = B
                   |   - CMP_OUT = 1 if A equals B
                   |   - Else, CMP_OUT = 0
				   |	
        1010       |  CMP: A > B
                   |   - CMP_OUT = 2 if A is greater than B
                   |   - Else, CMP_OUT = 0
                   | 
        1011       |  CMP: A < B
                   |   - CMP_OUT = 3 if A is greater than B
                   |   - Else, CMP_OUT = 0
                   |
        1100       |  SHIFT: A >> 1 (Logical Right Shift by 1 bit)
        1101       |  SHIFT: A << 1 (Logical Left Shift by 1 bit)
        1110       |  SHIFT: B >> 1 (Logical Right Shift by 1 bit)
        1111       |  SHIFT: B << 1 (Logical Left Shift by 1 bit)
*/


`timescale 1us/1ns

module ALU_TOP_tb ();

	parameter 		OP_WIDTH_tb = 16;


	reg 	signed		[OP_WIDTH_tb-1:0]			A_tb;
	reg	signed		[OP_WIDTH_tb-1:0]			B_tb;
	reg			[3:0]					ALU_FUN_tb;
	reg 								CLK_tb;
	reg								RST_tb;
	wire 	signed		[(OP_WIDTH_tb*2)-1:0]			Arith_OUT_tb;
	wire  							        Arith_Flag_tb;
	wire 			[OP_WIDTH_tb-1:0]			Logic_OUT_tb;
	wire  								Logic_Flag_tb;
	wire 			[OP_WIDTH_tb-1:0]			CMP_OUT_tb;
	wire  								CMP_Flag_tb;
	wire 			[OP_WIDTH_tb-1:0]			SHIFT_OUT_tb;
	wire  								SHIFT_Flag_tb;


	// concatenate flags
	wire [3:0] Flags;

	assign Flags = {Arith_Flag_tb, Logic_Flag_tb, CMP_Flag_tb, SHIFT_Flag_tb};

	// concatenate outputs
	wire [OP_WIDTH_tb*4-1:0] OUT; 

	assign OUT = {Arith_OUT_tb, Logic_OUT_tb, CMP_OUT_tb, SHIFT_OUT_tb};


initial 
 begin
 	$dumpfile("ALU_TOP.vcd");
 	$dumpvars;

	// initial values
	CLK_tb = 1'b0;
	RST_tb = 1'b0;
	#10
	RST_tb = 1'b1;


	////////////////////////////// Addition Test Cases //////////////////////////////


	$display ("*** TEST CASE 1 -- Addition -- NEG + NEG ***");
	A_tb = -'d10;
	B_tb = -'d4;
	ALU_FUN_tb = 4'b0000;
	#10
	if (Arith_OUT_tb == -'d14 && Flags == 4'b1000)
	 begin
	 	$display ("Addition %0d + %0d Passed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end
	else
	 begin
	 	$display ("Addition %0d + %0d Failed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end


	$display ("\n*** TEST CASE 2 -- Addition -- POS + NEG ***");
	A_tb = 'd10;
	B_tb = -'d4;
	#10
	if (Arith_OUT_tb == 'd6 && Flags == 4'b1000)
	 begin
	 	$display ("Addition %0d + %0d Passed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end
	else
	 begin
	 	$display ("Addition %0d + %0d Failed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end


	$display ("\n*** TEST CASE 3 -- Addition -- NEG + POS ***");
	A_tb = -'d10;
	B_tb = 'd4;
	#10
	if (Arith_OUT_tb == -'d6 && Flags == 4'b1000)
	 begin
	 	$display ("Addition %0d + %0d Passed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end
	else
	 begin
	 	$display ("Addition %0d + %0d Failed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end


	$display ("\n*** TEST CASE 4 -- Addition -- POS + POS ***");
	A_tb = 'd10;
	B_tb = 'd4;
	ALU_FUN_tb = 4'b0000;
	#10
	if (Arith_OUT_tb == 'd14 && Flags == 4'b1000)
	 begin
	 	$display ("Addition %0d + %0d Passed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end
	else
	 begin
	 	$display ("Addition %0d + %0d Failed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end


	////////////////////////////// Subtraction Test Cases //////////////////////////////


	$display ("\n*** TEST CASE 5 -- Subtraction -- NEG - NEG ***");
	A_tb = -'d10;
	B_tb = -'d4;
	ALU_FUN_tb = 4'b0001;
	#10
	if (Arith_OUT_tb == -'d6 && Flags == 4'b1000)
	 begin
	 	$display ("Subtraction %0d - %0d Passed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end
	else
	 begin
	 	$display ("Subtraction %0d - %0d Failed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end


	$display ("\n*** TEST CASE 6 -- Subtraction -- POS - NEG ***");
	A_tb = 'd10;
	B_tb = -'d4;
	#10
	if (Arith_OUT_tb == 'd14 && Flags == 4'b1000)
	 begin
	 	$display ("Subtraction %0d - %0d Passed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end
	else
	 begin
	 	$display ("Subtraction %0d - %0d Failed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end


	$display ("\n*** TEST CASE 7 -- Subtraction -- NEG - POS ***");
	A_tb = -'d10;
	B_tb = 'd4;
	#10
	if (Arith_OUT_tb == -'d14 && Flags == 4'b1000)
	 begin
	 	$display ("Subtraction %0d - %0d Passed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end
	else
	 begin
	 	$display ("Subtraction %0d - %0d Failed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end


	$display ("\n*** TEST CASE 8 -- Subtraction -- POS - POS ***");
	A_tb = 'd10;
	B_tb = 'd4;
	#10
	if (Arith_OUT_tb == 'd6 && Flags == 4'b1000)
	 begin
	 	$display ("Subtraction %0d - %0d Passed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end
	else
	 begin
	 	$display ("Subtraction %0d - %0d Failed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end


	////////////////////////////// Multiplication Test Cases //////////////////////////////


	$display ("\n*** TEST CASE 9 -- Multiplication -- NEG * NEG ***");
	A_tb = -'d10;
	B_tb = -'d4;
	ALU_FUN_tb = 4'b0010;
	#10
	if (Arith_OUT_tb == 'd40 && Flags == 4'b1000)
	 begin
	 	$display ("Multiplication %0d * %0d Passed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end
	else
	 begin
	 	$display ("Multiplication %0d * %0d Failed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end


	$display ("\n*** TEST CASE 10 -- Multiplication -- POS * NEG ***");
	A_tb = 'd10;
	B_tb = -'d4;
	#10
	if (Arith_OUT_tb == -'d40 && Flags == 4'b1000)
	 begin
	 	$display ("Multiplication %0d * %0d Passed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end
	else
	 begin
	 	$display ("Multiplication %0d * %0d Failed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end


	$display ("\n*** TEST CASE 11 -- Multiplication -- NEG * POS ***");
	A_tb = -'d10;
	B_tb = 'd4;
	#10
	if (Arith_OUT_tb == -'d40 && Flags == 4'b1000)
	 begin
	 	$display ("Multiplication %0d * %0d Passed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end
	else
	 begin
	 	$display ("Multiplication %0d * %0d Failed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end


	$display ("\n*** TEST CASE 12 -- Multiplication -- POS * POS ***");
	A_tb = 'd10;
	B_tb = 'd4;
	#10
	if (Arith_OUT_tb == 'd40 && Flags == 4'b1000)
	 begin
	 	$display ("Multiplication %0d * %0d Passed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end
	else
	 begin
	 	$display ("Multiplication %0d * %0d Failed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end


	////////////////////////////// Division Test Cases //////////////////////////////


	// Avoided Floating point

	$display ("\n*** TEST CASE 13 -- Division -- NEG / NEG ***");
	A_tb = -'d10;
	B_tb = -'d5;
	ALU_FUN_tb = 4'b0011;
	#10
	if (Arith_OUT_tb == 'd2 && Flags == 4'b1000)
	 begin
	 	$display ("Division %0d / %0d Passed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end
	else
	 begin
	 	$display ("Division %0d / %0d Failed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end


	$display ("\n*** TEST CASE 14 -- Division -- POS / NEG ***");
	A_tb = 'd10;
	B_tb = -'d5;
	#10
	if (Arith_OUT_tb == -'d2 && Flags == 4'b1000)
	 begin
	 	$display ("Division %0d / %0d Passed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end
	else
	 begin
	 	$display ("Division %0d / %0d Failed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end


	$display ("\n*** TEST CASE 15 -- Division -- NEG / POS ***");
	A_tb = -'d10;
	B_tb = 'd5;
	#10
	if (Arith_OUT_tb == -'d2 && Flags == 4'b1000)
	 begin
	 	$display ("Division %0d / %0d Passed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end
	else
	 begin
	 	$display ("Division %0d / %0d Failed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end


	$display ("\n*** TEST CASE 16 -- Division -- POS / POS ***");
	A_tb = 'd10;
	B_tb = 'd5;
	#10
	if (Arith_OUT_tb == 'd2 && Flags == 4'b1000)
	 begin
	 	$display ("Division %0d / %0d Passed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end
	else
	 begin
	 	$display ("Division %0d / %0d Failed = %0d", A_tb, B_tb, Arith_OUT_tb);
	 end


	////////////////////////////// Logical Operations Test Cases //////////////////////////////


	$display ("\n*** TEST CASE 17 -- AND -- A & B ***");
	A_tb = 'b10;
	B_tb = 'b01;
	ALU_FUN_tb = 4'b0100;
	#10
	if (Logic_OUT_tb == 'b00 && Flags == 4'b0100)
	 begin
	 	$display ("AND %b & %b Passed = %b", A_tb, B_tb, Logic_OUT_tb);
	 end
	else
	 begin
	 	$display ("AND %b & %b Failed = %b", A_tb, B_tb, Logic_OUT_tb);
	 end


	$display ("\n*** TEST CASE 18 -- OR -- A | B ***");
	A_tb = 'b10;
	B_tb = 'b01;
	ALU_FUN_tb = 4'b0101;
	#10
	if (Logic_OUT_tb == 'b11 && Flags == 4'b0100)
	 begin
	 	$display ("OR %b | %b Passed = %b", A_tb, B_tb, Logic_OUT_tb);
	 end
	else
	 begin
	 	$display ("OR %b | %b Failed = %b", A_tb, B_tb, Logic_OUT_tb);
	 end


	$display ("\n*** TEST CASE 19 -- NAND -- ~(A & B) ***");
	A_tb = 'b10;
	B_tb = 'b01;
	ALU_FUN_tb = 4'b0110;
	#10
	if (Logic_OUT_tb == 'b1111_1111_1111_1111 && Flags == 4'b0100)
	 begin
	 	$display ("NAND ~(%b & %b) Passed = %b", A_tb, B_tb, Logic_OUT_tb);
	 end
	else
	 begin
	 	$display ("NAND ~(%b & %b) Failed = %b", A_tb, B_tb, Logic_OUT_tb);
	 end


	$display ("\n*** TEST CASE 20 -- NOR -- ~(A & B) ***");
	A_tb = 'b10;
	B_tb = 'b01;
	ALU_FUN_tb = 4'b0111;
	#10
	if (Logic_OUT_tb == 'b1111_1111_1111_1100 && Flags == 4'b0100)
	 begin
	 	$display ("NOR ~(%b | %b) Passed = %b", A_tb, B_tb, Logic_OUT_tb);
	 end
	else
	 begin
	 	$display ("NOR ~(%b | %b) Failed = %b", A_tb, B_tb, Logic_OUT_tb);
	 end


	////////////////////////////// Compare Operations Test Cases //////////////////////////////


	$display ("\n*** TEST CASE 21 -- NOP -- ***");
	A_tb = 'b10;
	B_tb = 'b01;
	ALU_FUN_tb = 4'b1000;
	#10
	if (CMP_OUT_tb == 'b0 && Flags == 4'b0010)
	 begin
	 	$display ("NOP Passed CMP_OUT = %b", CMP_OUT_tb);
	 end
	else
	 begin
	 	$display ("NOP Failed CMP_OUT = %b", CMP_OUT_tb);
	 end


	$display ("\n*** TEST CASE 22 -- Equal -- A = B ***");
	A_tb = 'b01;
	B_tb = 'b01;
	ALU_FUN_tb = 4'b1001;
	#10
	if (CMP_OUT_tb == 'd1 && Flags == 4'b0010)
	 begin
	 	$display ("Equal %b = %b Passed = %b", A_tb, B_tb, CMP_OUT_tb);
	 end
	else
	 begin
	 	$display ("Equal %b != %b Failed = %b", A_tb, B_tb, CMP_OUT_tb);
	 end


	$display ("\n*** TEST CASE 23 -- Greater -- A > B ***");
	A_tb = 'b10;
	B_tb = 'b01;
	ALU_FUN_tb = 4'b1010;
	#10
	if (CMP_OUT_tb == 'd2 && Flags == 4'b0010)
	 begin
	 	$display ("Greater %b > %b Passed = %b", A_tb, B_tb, CMP_OUT_tb);
	 end
	else
	 begin
	 	$display ("Greater %b !> %b Failed = %b", A_tb, B_tb, CMP_OUT_tb);
	 end


	$display ("\n*** TEST CASE 24 -- Less -- A < B ***");
	A_tb = 'b01;
	B_tb = 'b10;
	ALU_FUN_tb = 4'b1011;
	#10
	if (CMP_OUT_tb == 'd3 && Flags == 4'b0010)
	 begin
	 	$display ("Less %b < %b Passed = %b", A_tb, B_tb, CMP_OUT_tb);
	 end
	else
	 begin
	 	$display ("Less %b !< %b Failed = %b", A_tb, B_tb, CMP_OUT_tb);
	 end


	ALU_FUN_tb = 4'b1000; 
	$display ("\n*** TEST CASE 25 -- No Operation -- ***");
	#10
	if (OUT == 'b0 && Flags == 4'b0010)
	 begin
	 	$display ("NOP OUT is %0b and Flags are %b Passed", OUT, Flags);
	 end
	else
	 begin
	 	$display ("NOP OUT is %0b and Flags are %b Failed", OUT, Flags);
	 end


	////////////////////////////// Shift Operations Test Cases //////////////////////////////


	$display ("\n*** TEST CASE 26 -- A Shift right -- A >> 1 ***");
	A_tb = 'b10;
	ALU_FUN_tb = 4'b1100;
	#10
	if (SHIFT_OUT_tb == 'b01 && Flags == 4'b0001)
	 begin
	 	$display ("A Shift right %b Passed = %b | time = %0t", A_tb, SHIFT_OUT_tb, $time);
	 end
	else
	 begin
	 	$display ("A Shift right %b Failed = %b | time = %0t", A_tb, SHIFT_OUT_tb, $time);
	 end


	$display ("\n*** TEST CASE 27 -- A Shift left -- A << 1 ***");
	A_tb = 'b01;
	ALU_FUN_tb = 4'b1101;
	#10
	if (SHIFT_OUT_tb == 'b10 && Flags == 4'b0001)
	 begin
	 	$display ("A Shift left %b Passed = %b", A_tb, SHIFT_OUT_tb);
	 end
	else
	 begin
	 	$display ("A Shift left %b Failed = %b", A_tb, SHIFT_OUT_tb);
	 end


	$display ("\n*** TEST CASE 28 -- B Shift right -- B >> 1 ***");
	B_tb = 'b10;
	ALU_FUN_tb = 4'b1110;
	#10
	if (SHIFT_OUT_tb == 'b01 && Flags == 4'b0001)
	 begin
	 	$display ("B Shift right %b Passed = %b", B_tb, SHIFT_OUT_tb);
	 end
	else
	 begin
	 	$display ("B Shift right %b Failed = %b", B_tb, SHIFT_OUT_tb);
	 end


	$display ("\n*** TEST CASE 29 -- B Shift left -- B << 1 ***");
	B_tb = 'b01;
	ALU_FUN_tb = 4'b1111;
	#10
	if (SHIFT_OUT_tb == 'b10 && Flags == 4'b0001)
	 begin
	 	$display ("B Shift right %b Passed = %b", B_tb, SHIFT_OUT_tb);
	 end
	else
	 begin
	 	$display ("B Shift right %b Failed = %b", B_tb, SHIFT_OUT_tb);
	 end


	#10 $stop;


 end


always 
 begin
 	#6 CLK_tb = ~CLK_tb;
 	#4 CLK_tb = ~CLK_tb;
 end


ALU_TOP #(.OP_WIDTH(OP_WIDTH_tb)) DUT (
	.A(A_tb),
	.B(B_tb),
	.ALU_FUN(ALU_FUN_tb),
	.CLK(CLK_tb),
	.RST(RST_tb),
	.Arith_OUT(Arith_OUT_tb),
	.Logic_OUT(Logic_OUT_tb),
	.CMP_OUT(CMP_OUT_tb),
	.SHIFT_OUT(SHIFT_OUT_tb),
	.Arith_Flag(Arith_Flag_tb),
	.Logic_Flag(Logic_Flag_tb),
	.CMP_Flag(CMP_Flag_tb),
	.SHIFT_Flag(SHIFT_Flag_tb)
	);


endmodule