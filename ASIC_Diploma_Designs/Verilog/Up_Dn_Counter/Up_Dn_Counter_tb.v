`timescale 1ns/1ps


module Up_Dn_Counter_tb ();

reg    [4:0]    IN_tb;
reg             Load_tb;
reg             Up_tb;
reg             Down_tb;
reg             CLK_tb;
wire   [4:0]    Counter_tb;
wire            High_tb;
wire            Low_tb;


initial
 begin
 	$dumpfile("Up_Dn_Counter.vcd");
 	$dumpvars;
 	CLK_tb = 1'b0;
 	IN_tb = 5'b00011;
 	Load_tb = 1'b0;
 	Down_tb = 1'b0;
 	Up_tb = 1'b0;
 	$display ("TEST CASE 1");  // test load function
 	#10
 	Load_tb = 1'b1;
 	#6
 	if (Counter_tb == IN_tb)
 	 begin
 	 	$display ("TEST CASE 1 SUCCEED");
 	 end
 	else 
 	 begin
 	 	$display ("TEST CASE 1 FAILED");
 	 	$display ("Counter_tb = %b | IN_tb = %b",Counter_tb, IN_tb, $time);
 	 end
 	$display ("TEST CASE 2");  // test load priority
 	#5
 	Load_tb = 1'b1;
 	Down_tb = 1'b1;
 	#5
 	if (Counter_tb == IN_tb)
 	 begin
 	 	$display ("TEST CASE 2 SUCCEED");
 	 end
 	else
 	 begin
 	 	$display ("TEST CASE 2 FAILED");
 	 end
 	$display ("TEST CASE 3");  // test Down signal function and Low flag
 	#5
 	Load_tb = 1'b0;
 	Down_tb = 1'b1;
 	#35
 	if (Counter_tb == 5'b0 && Low_tb == 1'b1)
 	 begin
 	 	$display ("TEST CASE 3 SUCCEED");
 	 end
 	else
 	 begin
 	 	$display ("TEST CASE 3 FAILED");
 	 end
 	$display ("TEST CASE 4");  // test Down signal priority
 	#5
 	Up_tb = 1'b1;
 	#5
 	if (Counter_tb == 5'b0)
 	 begin
 	 	$display ("TEST CASE 4 SUCCEED");
 	 end
 	else
 	 begin
 	 	$display ("TEST CASE 4 FAILED");
 	 end
 	$display ("TEST CASE 5");  // test Up signal function
 	#5
 	Down_tb = 1'b0;
 	#325
 	if (Counter_tb == 5'b11111 && High_tb == 1'b1)
 	 begin
 	 	$display ("TEST CASE 5 SUCCEED");
 	 end
 	else 
 	begin
 		$display ("TEST CASE 5 FAILED");
 	end
 	$stop;
 end


always #5 CLK_tb = ~CLK_tb;


Up_Dn_Counter DUT (
	.IN(IN_tb),
	.Load(Load_tb),
	.Up(Up_tb),
	.Down(Down_tb),
	.CLK(CLK_tb),
	.Counter(Counter_tb),
	.High(High_tb),
	.Low(Low_tb)
	);


endmodule
