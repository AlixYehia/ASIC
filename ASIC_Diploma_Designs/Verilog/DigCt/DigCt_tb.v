module DigtCt_tb;

// Testbench Signals
reg IN1, IN2, IN3, IN4, IN5, CLK;
wire OUT1, OUT2, OUT3;

// Instantiate DigCt module
DigCt uut (

	.IN1(IN1),
	.IN2(IN2),
	.IN3(IN3),
	.IN4(IN4),
	.IN5(IN5),
	.CLK(CLK),
	.OUT1(OUT1),
	.OUT2(OUT2),
	.OUT3(OUT3)

	);

// Clock Generation
initial begin
	CLK = 0;
	forever #5 CLK = ~CLK;  // CLOCK with period of 10ns
end


// Initialize inputs
initial begin
	IN1 = 0; IN2=0; IN3=0; IN4=0; IN5=0;  // OUT1 = 1, OUT2 = 1, OUT3 = 1
	#10;

	IN1 = 0; IN2=0; IN3=1; IN4=0; IN5=0;  // OUT1 = 0, OUT2 = 1, OUT3 = 1
	#10;

	IN1 = 0; IN2=1; IN3=1; IN4=0; IN5=0;  // OUT1 = 1, OUT2 = 0, OUT3 = 1
	#10;

	IN1 = 0; IN2=0; IN3=0; IN4=1; IN5=0;  // OUT1 = 1, OUT2 = 1, OUT3 = 0
	#10;

	// Finish Simulation
	$finish;
end


// Monitor outputs
initial begin
	$monitor("time: %t | IN1: %b IN2: %b IN3: %b IN4: %b IN5: %b | OUT1: %b OUT2: %b OUT3: %b", $time, IN1, IN2, IN3, IN4, IN5, OUT1, OUT2, OUT3);
end


endmodule