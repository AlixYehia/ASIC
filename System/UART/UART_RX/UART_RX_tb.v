`timescale 1ns/1fs    // precision must be equivalent to number of points in clock to avoid simulation infinite loop since the timing results from division might lead to rounding effects, which can cause timing mismatches.
/* 
 if TX_CLK_PERIOD has more decimal places, especially beyond the simulator’s internal precision (like 4 decimals or more), 
 the result can get rounded or truncated differently than when using 3 decimal points. This can cause slight timing mismatches between when the clock edge occurs and when the data_valid signal becomes active.
*/

module UART_RX_tb ();


///////////////////////////////////////////////////////////////
//////////////////////// DUT Signals //////////////////////////
///////////////////////////////////////////////////////////////

reg				  CLK_tb;
reg				  RST_tb;
reg				  RX_IN_tb;
reg		[5:0]	Prescale_tb;
reg				  PAR_EN_tb;
reg				  PAR_TYP_tb;
wire			  data_valid_tb;
wire	[7:0]	P_DATA_tb;	

///////////////////////////////////////////////////////////////
//////////////////////// RX_Clock /////////////////////////////
///////////////////////////////////////////////////////////////

// TX_CLK = 115.2 KHz
// 115.2 * Prescale = RX_Clock period

/*
parameter Prescale_value = 8;

real CLK_PERIOD;

initial begin
  case (Prescale_value)
    8 :   CLK_PERIOD = 1085.0694;  // Clock period for 921.6 KHz frequency
    16:   CLK_PERIOD = 542.5936;   // Clock period for 1.843 MHz frequency
    32:   CLK_PERIOD = 271.2968;   // Clock period for 3.686 MHz frequency
    default: CLK_PERIOD = 1085.0694;  // Default prescale = 8 for 921.6 KHz
  endcase
end
*/

parameter TX_CLK_PERIOD = 8680.555;


///////////////////////////////////////////////////////////////
//////////////////////// Initial Block ////////////////////////
///////////////////////////////////////////////////////////////

initial 
 begin
 	// System functions
 	$dumpfile("UART_RX.vcd");
 	$dumpvars;

 	// Initialize the signals
 	initialize();

 	// Apply test cases
 	

 	//////////////////////////////////////////////////// Prescale = 8 ////////////////////////////////////////////////////////////////////////


 	//               RX_IN Serial       Prescale   PAR_EN  PAR_TYP    test_case_number and description

 	check_frame (11'b1_0_1011_1101_0,     'd8,      1'b1,   1'b0,      1, "Prescale = 8 | Parity is enabled & Parity Type is even = 0");

 	check_frame (11'b1_1_1111_1000_0,     'd8,      1'b1,   1'b0,      2, "Prescale = 8 | Parity is enabled & Parity Type is even = 1");

 	check_frame (11'b1_0_1000_1001_0,     'd8,      1'b1,   1'b1,      3, "Prescale = 8 | Parity is enabled & Parity Type is odd = 0");

 	check_frame (11'b1_1_0111_1000_0,     'd8,      1'b1,   1'b1,      4, "Prescale = 8 | Parity is enabled & Parity Type is odd = 1");

 	check_frame (10'b1_0111_1100_0,       'd8,      1'b0,   1'b0,      5, "Prescale = 8 | Parity is not enabled");

	//                         frame 1              frame 2        Prescale 1    Prescale 2  PAR_EN 1   PAR_EN 2    PAR_TYP 1  PAR_TYP 2     test_case_number and description

 	consecutive_frames (10'b1_0111_1100_0,  10'b1_0011_1111_0,        'd8,         'd8,       1'b0,      1'b0,       1'b0,       1'b0,         6, "Consecutive frames | Prescale = 8 | Parity is not enabled");

 	consecutive_frames (10'b1_0111_1100_0,  11'b1_0_0011_1111_0,      'd8,         'd8,       1'b0,      1'b1,       1'b0,       1'b0,         7, "Consecutive frames | Prescale = 8 | Parity is not enabled for frame 1 | Parity is enabled and even for frame 2");



 	//////////////////////////////////////////////////// Prescale = 16 ////////////////////////////////////////////////////////////////////////


	//               RX_IN Serial       Prescale   PAR_EN  PAR_TYP    test_case_number and description

 	check_frame (11'b1_0_1011_1101_0,     'd16,      1'b1,   1'b0,     8,  "Prescale = 16 | Parity is enabled & Parity Type is even = 0");

 	check_frame (11'b1_1_1111_1000_0,     'd16,      1'b1,   1'b0,     9,  "Prescale = 16 | Parity is enabled & Parity Type is even = 1");

 	check_frame (11'b1_0_1000_1001_0,     'd16,      1'b1,   1'b1,     10,  "Prescale = 16 | Parity is enabled & Parity Type is odd = 0");

 	check_frame (11'b1_1_0111_1000_0,     'd16,      1'b1,   1'b1,     11,  "Prescale = 16 | Parity is enabled & Parity Type is odd = 1");

 	check_frame (10'b1_0111_1100_0,       'd16,      1'b0,   1'b0,     12, "Prescale = 16 | Parity is not enabled");

	//                         frame 1              frame 2        Prescale 1    Prescale 2  PAR_EN 1   PAR_EN 2    PAR_TYP 1  PAR_TYP 2     test_case_number and description

 	consecutive_frames (10'b1_0111_1100_0,  10'b1_0011_1111_0,        'd16,         'd16,       1'b0,      1'b0,       1'b0,       1'b0,         13, "Consecutive frames | Prescale = 16 | Parity is not enabled");



 	//////////////////////////////////////////////////// Prescale = 32 ////////////////////////////////////////////////////////////////////////


	//               RX_IN Serial       Prescale   PAR_EN  PAR_TYP    test_case_number and description

 	check_frame (11'b1_0_1011_1101_0,     'd32,      1'b1,   1'b0,     8,  "Prescale = 32 | Parity is enabled & Parity Type is even = 0");

 	check_frame (11'b1_1_1111_1000_0,     'd32,      1'b1,   1'b0,     9,  "Prescale = 32 | Parity is enabled & Parity Type is even = 1");

 	check_frame (11'b1_0_1000_1001_0,     'd32,      1'b1,   1'b1,     10,  "Prescale = 32 | Parity is enabled & Parity Type is odd = 0");

 	check_frame (11'b1_1_0111_1000_0,     'd32,      1'b1,   1'b1,     11,  "Prescale = 32 | Parity is enabled & Parity Type is odd = 1");

 	check_frame (10'b1_0111_1100_0,       'd32,      1'b0,   1'b0,     12, "Prescale = 32 | Parity is not enabled");

	//                         frame 1              frame 2        Prescale 1    Prescale 2  PAR_EN 1   PAR_EN 2    PAR_TYP 1  PAR_TYP 2     test_case_number and description

 	consecutive_frames (10'b1_0111_1100_0,  10'b1_0011_1111_0,        'd32,         'd32,       1'b0,      1'b0,       1'b0,       1'b0,         13, "Consecutive frames | Prescale = 32 | Parity is not enabled");



 	$stop;

 end


///////////////////////////////////////////////////////////////
/////////////////////////// Tasks /////////////////////////////
///////////////////////////////////////////////////////////////



//////////////////////// Reset ///////////////////////////////

task reset;
 begin
 	RST_tb = 1'b1;
 	//#(CLK_PERIOD)
  #(TX_CLK_PERIOD/Prescale_tb)
 	RST_tb = 1'b0;
 	//#(CLK_PERIOD)
  #(TX_CLK_PERIOD/Prescale_tb)
 	RST_tb = 1'b1;
 end
endtask


//////////////////////// initialize //////////////////////////

task initialize;
 begin
 	CLK_tb = 1'b0;
  Prescale_tb = 6'd8;
  RX_IN_tb = 1'b1;
  PAR_EN_tb = 1'b0;
  PAR_TYP_tb = 1'b0;
 	reset();

 	//#(CLK_PERIOD);
  #((TX_CLK_PERIOD/Prescale_tb));
 end
endtask


//////////////////////// Check_frame //////////////////////////

task check_frame;

 input 	[10:0]	RX_IN_task;
 input	[5:0] 	Prescale_task;
 input 			    PAR_EN_task;
 input			    PAR_TYP_task;
 input integer 	test_case_no;
 input [511:0] 	test_case;
 
 integer		frame_size;
 integer 		i;

 begin

 	@(negedge CLK_tb)
 	Prescale_tb = Prescale_task;
 	PAR_EN_tb 	= PAR_EN_task;
 	PAR_TYP_tb 	= PAR_TYP_task;
 	if (PAR_EN_tb)
 	 frame_size = 11;
 	else begin
 	 frame_size = 10;
 	end

 	for (i=0; i<frame_size; i=i+1)
 	 begin
 	 	@(posedge CLK_tb) RX_IN_tb = RX_IN_task[i];
 	    //#(CLK_PERIOD*Prescale_tb);
      #(TX_CLK_PERIOD);
 	 end

 	@(posedge data_valid_tb)
 	if (P_DATA_tb == RX_IN_task[8:1])
 	 begin
 	 	$display("TEST CASE %0d Passed: (%0s)", test_case_no, test_case);
 	 end
 	else
 	 begin
 	 	$display("TEST CASE %0d Failed: (%0s) expected %b and got %b", test_case_no, test_case, RX_IN_task[8:1], P_DATA_tb);
 	 end

 	 //#(CLK_PERIOD);
   #(TX_CLK_PERIOD);

 end

endtask


//////////////////////// Consecutive_frames //////////////////////////

task consecutive_frames;

  input  [10:0] RX_IN_frame1;
  input  [10:0] RX_IN_frame2;
  input  [5:0]  Prescale_task1;
  input  [5:0]  Prescale_task2;
  input         PAR_EN_task1;
  input         PAR_EN_task2;
  input         PAR_TYP_task1;
  input         PAR_TYP_task2;
  input integer test_case_no;
  input [1023:0] test_case;

  integer i;
  integer frame_size_1;
  integer frame_size_2;

  begin

  	$display("TEST CASE %0d : (%0s)", test_case_no, test_case);

  	////////////////////////////////////////// frame 1 //////////////////////////////////////

  @(negedge CLK_tb)
 	Prescale_tb = Prescale_task1;
 	PAR_EN_tb 	= PAR_EN_task1;
 	PAR_TYP_tb 	= PAR_TYP_task1;
 	if (PAR_EN_tb)
 	 frame_size_1 = 11;
 	else begin
 	 frame_size_1 = 10;
 	end

 	for (i=0; i<frame_size_1; i=i+1)
 	 begin
 	 	@(posedge CLK_tb) RX_IN_tb = RX_IN_frame1[i];
 	    //#(CLK_PERIOD*Prescale_tb);
      #(TX_CLK_PERIOD);
 	 end

 	@(posedge data_valid_tb)
 	RX_IN_tb = RX_IN_frame2[0];            /////// frame 2 starting ///////
 	if (P_DATA_tb == RX_IN_frame1[8:1])
 	 begin
 	 	$display("frame 1 Passed");
 	 end
 	else
 	 begin
 	 	$display("frame 1 Failed: expected %b and got %b", RX_IN_frame1[8:1], P_DATA_tb);
 	 end

 	////////////////////////////////////////// frame 2 //////////////////////////////////////

 	Prescale_tb = Prescale_task2;
 	PAR_EN_tb 	= PAR_EN_task2;
 	PAR_TYP_tb 	= PAR_TYP_task2;
 	if (PAR_EN_tb)
 	 frame_size_2 = 11;
 	else begin
 	 frame_size_2 = 10;
 	end

 	//#(CLK_PERIOD*Prescale_tb);
  #(TX_CLK_PERIOD);
 	for (i=1; i<frame_size_2; i=i+1)
 	 begin
 	 	@(posedge CLK_tb) RX_IN_tb = RX_IN_frame2[i];
 	    //#(CLK_PERIOD*Prescale_tb);
      #(TX_CLK_PERIOD);
 	 end

 	@(posedge data_valid_tb)
 	if (P_DATA_tb == RX_IN_frame2[8:1])
 	 begin
 	 	$display("frame 2 Passed");
 	 end
 	else
 	 begin
 	 	$display("frame 2 Failed: expected %b and got %b", RX_IN_frame2[8:1], P_DATA_tb);
 	 end

  end

endtask


///////////////////////////////////////////////////////////////
//////////////////////// Clock Generation /////////////////////
///////////////////////////////////////////////////////////////

 
 //always #(CLK_PERIOD/2) CLK_tb = ~CLK_tb;

 always #(TX_CLK_PERIOD/Prescale_tb/2) CLK_tb = ~CLK_tb; 


///////////////////////////////////////////////////////////////
//////////////////////// DUT Instantiation ////////////////////
///////////////////////////////////////////////////////////////

UART_RX DUT (
	.CLK(CLK_tb),
	.RST(RST_tb),
	.RX_IN(RX_IN_tb),
	.Prescale(Prescale_tb),
	.PAR_EN(PAR_EN_tb),
	.PAR_TYP(PAR_TYP_tb),
	.data_valid(data_valid_tb),
	.P_DATA(P_DATA_tb)
	);


endmodule