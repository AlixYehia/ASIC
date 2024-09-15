`timescale 10us/10ns

module ALU_16B_tb ();

reg      [15:0]   A_tb;
reg      [15:0]   B_tb;
reg      [3:0]    ALU_FUN_tb;
reg               CLK_tb;
wire     [15:0]   ALU_OUT_tb;
wire              Carry_Flag_tb;
wire              Arith_Flag_tb;
wire              Logic_Flag_tb;
wire              CMP_Flag_tb;
wire              Shift_Flag_tb;


initial 
 begin
 	$dumpfile("ALU_16B.vcd");
 	$dumpvars;
 	CLK_tb = 1'b0;
 	A_tb = 16'b0;
 	B_tb = 16'b0;
 	ALU_FUN_tb = 4'b0000;
 	

 	$display ("TEST CASE 1");        // Test addition and carry_flag case 1
  	#10
 	A_tb = 16'd65535;
 	B_tb = 16'd1;
 	#6
 	if ( (ALU_OUT_tb == 16'd0) && (Carry_Flag_tb == 1'b1) && (Arith_Flag_tb == 1'b1) && (Logic_Flag_tb == 1'b0) && (CMP_Flag_tb == 1'b0) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 1 SUCCEED");
 	 end
 	else
 	 begin
 	 	$display ("TEST CASE 1 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



 	$display ("TEST CASE 2");       // Test addition and carry_flag case 2
 	#5
 	A_tb = 16'd6;
 	B_tb = 16'd4;
 	#5
 	if ( (ALU_OUT_tb == 16'd10) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b1) && (Logic_Flag_tb == 1'b0) && (CMP_Flag_tb == 1'b0) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 2 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 2 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



 	$display ("TEST CASE 3");       // Test subtraction and carry_flag case 1
 	#5
 	A_tb = 16'd4;
 	B_tb = 16'd6;
 	ALU_FUN_tb = 4'b0001;
 	#5
 	if ( (ALU_OUT_tb == 16'b1111_1111_1111_1110) && (Carry_Flag_tb == 1'b1) && (Arith_Flag_tb == 1'b1) && (Logic_Flag_tb == 1'b0) && (CMP_Flag_tb == 1'b0) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 3 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 3 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



	$display ("TEST CASE 4");       //  Test subtraction and carry_flag case 2
 	#5
 	A_tb = 16'd6;
 	B_tb = 16'd4;
 	ALU_FUN_tb = 4'b0001;
 	#5
 	if ( (ALU_OUT_tb == 16'd2) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b1) && (Logic_Flag_tb == 1'b0) && (CMP_Flag_tb == 1'b0) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 4 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 4 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



 	$display ("TEST CASE 5");        // Test multiplication
 	#5
 	A_tb = 16'd2;
 	B_tb = 16'd2;
 	ALU_FUN_tb = 4'b0010;
 	#5
 	if ( (ALU_OUT_tb == 16'd4) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b1) && (Logic_Flag_tb == 1'b0) && (CMP_Flag_tb == 1'b0) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 5 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 5 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



 	$display ("TEST CASE 6");        // Test division
 	#5
 	A_tb = 16'd2;
 	B_tb = 16'd2;
 	ALU_FUN_tb = 4'b0011;
 	#5
 	if ( (ALU_OUT_tb == 16'd1) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b1) && (Logic_Flag_tb == 1'b0) && (CMP_Flag_tb == 1'b0) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 6 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 6 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



  	$display ("TEST CASE 7");        // Test AND
 	#5
 	A_tb = 16'b0000_0000_0000_1000;
 	B_tb = 16'b0000_0000_0000_0111;
 	ALU_FUN_tb = 4'b0100;
 	#5
 	if ( (ALU_OUT_tb == 16'b0000_0000_0000_0000) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b0) && (Logic_Flag_tb == 1'b1) && (CMP_Flag_tb == 1'b0) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 7 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 7 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



 	$display ("TEST CASE 8");        // Test OR
 	#5
 	A_tb = 16'b0000_0000_0000_1000;
 	B_tb = 16'b0000_0000_0000_0111;
 	ALU_FUN_tb = 4'b0101;
 	#5
 	if ( (ALU_OUT_tb == 16'b0000_0000_0000_1111) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b0) && (Logic_Flag_tb == 1'b1) && (CMP_Flag_tb == 1'b0) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 8 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 8 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



 	$display ("TEST CASE 9");        // Test NAND
 	#5
 	A_tb = 16'b0000_0000_0000_1000;
 	B_tb = 16'b0000_0000_0000_0111;
 	ALU_FUN_tb = 4'b0110;
 	#5
 	if ( (ALU_OUT_tb == 16'b1111_1111_1111_1111) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b0) && (Logic_Flag_tb == 1'b1) && (CMP_Flag_tb == 1'b0) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 9 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 9 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



  	$display ("TEST CASE 10");        // Test NOR
 	#5
 	A_tb = 16'b0000_0000_0000_1000;
 	B_tb = 16'b0000_0000_0000_0111;
 	ALU_FUN_tb = 4'b0111;
 	#5
 	if ( (ALU_OUT_tb == 16'b1111_1111_1111_0000)  && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b0) && (Logic_Flag_tb == 1'b1) && (CMP_Flag_tb == 1'b0) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 10 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 10 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



  	$display ("TEST CASE 11");        // Test XOR
 	#5
 	A_tb = 16'b0000_0000_0000_1000;
 	B_tb = 16'b0000_0000_0000_0111;
 	ALU_FUN_tb = 4'b1000;
 	#5
 	if ( (ALU_OUT_tb == 16'b0000_0000_0000_1111) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b0) && (Logic_Flag_tb == 1'b1) && (CMP_Flag_tb == 1'b0) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 11 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 11 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



 	$display ("TEST CASE 12");        // Test XNOR
 	#5
 	A_tb = 16'b0000_0000_0000_1000;
 	B_tb = 16'b0000_0000_0000_0111;
 	ALU_FUN_tb = 4'b1001;
 	#5
 	if ( (ALU_OUT_tb == 16'b1111_1111_1111_0000) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b0) && (Logic_Flag_tb == 1'b1) && (CMP_Flag_tb == 1'b0) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 12 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 12 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



 	$display ("TEST CASE 13");       // Test Equality CASE 1 ( A = B )
 	#5
 	A_tb = 16'd4;
 	B_tb = 16'd4;
 	ALU_FUN_tb = 4'b1010;
 	#5
 	if ( (ALU_OUT_tb == 16'd1) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b0) && (Logic_Flag_tb == 1'b0) && (CMP_Flag_tb == 1'b1) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 13 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 13 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



 	$display ("TEST CASE 14");      // Test Equality CASE 2 ( A != B )
 	#5
 	A_tb = 16'd4;
 	B_tb = 16'd6;
 	ALU_FUN_tb = 4'b1010;
 	#5
 	if ( (ALU_OUT_tb == 16'd0) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b0) && (Logic_Flag_tb == 1'b0) && (CMP_Flag_tb == 1'b1) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 14 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 14 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



 	$display ("TEST CASE 15");      // Test Greater than CASE 1 ( A > B )
 	#5
 	A_tb = 16'd6;
 	B_tb = 16'd4;
 	ALU_FUN_tb = 4'b1011;
 	#5
 	if ( (ALU_OUT_tb == 16'd2) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b0) && (Logic_Flag_tb == 1'b0) && (CMP_Flag_tb == 1'b1) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 15 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 15 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



 	$display ("TEST CASE 16");      // Test Greater than CASE 2 ( A <= B )
 	#5
 	A_tb = 16'd4;
 	B_tb = 16'd6;
 	ALU_FUN_tb = 4'b1011;
 	#5
 	if ( (ALU_OUT_tb == 16'd0) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b0) && (Logic_Flag_tb == 1'b0) && (CMP_Flag_tb == 1'b1) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 16 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 16 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



 	$display ("TEST CASE 17");      // Test Less than CASE 1 ( A < B )
 	#5
 	A_tb = 16'd4;
 	B_tb = 16'd6;
 	ALU_FUN_tb = 4'b1100;
 	#5
 	if ( (ALU_OUT_tb == 16'd3) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b0) && (Logic_Flag_tb == 1'b0) && (CMP_Flag_tb == 1'b1) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 17 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 17 FAILED");
 	 end
  	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



 	$display ("TEST CASE 18");      // Test Less than CASE 2 ( A >= B )
 	#5
 	A_tb = 16'd6;
 	B_tb = 16'd4;
 	ALU_FUN_tb = 4'b1100;
 	#5
 	if ( (ALU_OUT_tb == 16'd0) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b0) && (Logic_Flag_tb == 1'b0) && (CMP_Flag_tb == 1'b1) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 18 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 18 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



 	$display ("TEST CASE 19");      // Test shift right
 	#5
 	A_tb = 16'b0000_0000_0000_0010;
 	ALU_FUN_tb = 4'b1101;
 	#5
 	if ( (ALU_OUT_tb == 16'b0000_0000_0000_0001) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b0) && (Logic_Flag_tb == 1'b0) && (CMP_Flag_tb == 1'b0) && (Shift_Flag_tb == 1'b1) )
 	 begin
 	 	$display ("TEST CASE 19 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 19 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



 	$display ("TEST CASE 20");      // Test shift left
 	#5
 	A_tb = 16'b0000_0000_0000_0010;
 	ALU_FUN_tb = 4'b1110;
 	#5
 	if ( (ALU_OUT_tb == 16'b0000_0000_0000_0100) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b0) && (Logic_Flag_tb == 1'b0) && (CMP_Flag_tb == 1'b0) && (Shift_Flag_tb == 1'b1) )
 	 begin
 	 	$display ("TEST CASE 20 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 20 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);



 	$display ("TEST CASE 21");      // Test non of the alu operations
 	#5
 	ALU_FUN_tb = 4'b1111;
 	#5
 	if ( (ALU_OUT_tb == 16'b0000_0000_0000_0000) && (Carry_Flag_tb == 1'b0) && (Arith_Flag_tb == 1'b0) && (Logic_Flag_tb == 1'b0) && (CMP_Flag_tb == 1'b0) && (Shift_Flag_tb == 1'b0) )
 	 begin
 	 	$display ("TEST CASE 21 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 21 FAILED");
 	 end
 	$display ( "(ALU_OUT_tb = %d) | (Carry_Flag_tb = %b) | (Arith_Flag_tb = %b) | (Logic_Flag_tb = %b) | (CMP_Flag_tb = %b) | (Shift_Flag_tb = %b) | Time = %t",ALU_OUT_tb, Carry_Flag_tb, Arith_Flag_tb, Logic_Flag_tb ,CMP_Flag_tb, Shift_Flag_tb, $time);

 	 $stop;

 end


always #5 CLK_tb = ~CLK_tb;


ALU_16B DUT (
	.A(A_tb),
	.B(B_tb),
	.ALU_FUN(ALU_FUN_tb),
	.CLK(CLK_tb),
	.ALU_OUT(ALU_OUT_tb),
	.Carry_Flag(Carry_Flag_tb),
	.Arith_Flag(Arith_Flag_tb),
	.Logic_Flag(Logic_Flag_tb),
	.CMP_Flag(CMP_Flag_tb),
	.Shift_Flag(Shift_Flag_tb)

	);

endmodule