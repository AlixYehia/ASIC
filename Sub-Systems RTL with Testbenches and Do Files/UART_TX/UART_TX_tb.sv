
// ************************************************************* //
// Author : Ali Yehia Abdelmonem
// Date   : 2024-9-24
// ************************************************************* //

`timescale 1ns/1ps

module UART_TX_tb ();


///////////////////////////////////////////////////////////////
//////////////////////// Parameters ///////////////////////////
///////////////////////////////////////////////////////////////

parameter CLK_PERIOD = 5.0;  // Clock period for 200 Mhz frequency


///////////////////////////////////////////////////////////////
//////////////////////// DUT Signals //////////////////////////
///////////////////////////////////////////////////////////////

reg 	[7:0] 	P_DATA_tb;
reg 			Data_Valid_tb;
reg				PAR_TYP_tb;
reg				PAR_EN_tb;
reg				RST_tb;
reg 			CLK_tb;
wire 			TX_OUT_tb;
wire 			busy_tb;			



///////////////////////////////////////////////////////////////
//////////////////////// Initial Block ////////////////////////
///////////////////////////////////////////////////////////////

initial 
 begin
 	// System functions
 	$dumpfile("UART_TX.vcd");
 	$dumpvars;

 	// Initialize the signals
 	initialize();

 	// Apply test cases
 	

 	//              P_DATA      Data_Valid  PAR_EN  PAR_TYP      expec_frame               test_case_number and description

 	check_frame (8'b0111_1000,     1'b1,     1'b1,   1'b0,   11'b1_0_01111000_0,      1, "Parity is enabled & Parity Type is even = 0");

 	check_frame (8'b0111_1100,     1'b1,     1'b1,   1'b0,   11'b1_1_01111100_0,      2, "Parity is enabled & Parity Type is even = 1");

 	check_frame (8'b0111_0000,     1'b1,     1'b1,   1'b1,   11'b1_0_01110000_0,      3, "Parity is enabled & Parity Type is odd = 0");

 	check_frame (8'b0111_1000,     1'b1,     1'b1,   1'b1,   11'b1_1_01111000_0,      4, "Parity is enabled & Parity Type is odd = 1");

 	check_frame (8'b0110_0000,     1'b1,     1'b0,   1'b0,   11'b1_1_01100000_0,      5, "Parity not enabled");


	

 	$stop;

 end


///////////////////////////////////////////////////////////////
/////////////////////////// Tasks /////////////////////////////
///////////////////////////////////////////////////////////////



//////////////////////// Reset ///////////////////////////////

task reset;
 begin
 	RST_tb = 1'b1;
 	#(CLK_PERIOD)
 	RST_tb = 1'b0;
 	#(CLK_PERIOD)
 	RST_tb = 1'b1;
 end
endtask


//////////////////////// initialize //////////////////////////

task initialize;
 begin
 	CLK_tb = 1'b0;
 	Data_Valid_tb = 1'b0;
 	reset();
 	P_DATA_tb = 8'b0;
 	PAR_EN_tb = 1'b0;
 	PAR_TYP_tb = 1'b0;
 end
endtask


//////////////////////// Check_frame //////////////////////////

task check_frame;

 input [7:0] P_DATA_task;
 input Data_Valid_task;
 input PAR_EN_task, PAR_TYP_task;
 input [10:0] expec_frame;
 input integer test_case_no;
 input [511:0] test_case;
 
 reg    [10:0]  gener_frame;
 integer i;

 begin
 	@(negedge CLK_tb)
 	P_DATA_tb = P_DATA_task;
 	PAR_EN_tb = PAR_EN_task;
 	PAR_TYP_tb = PAR_TYP_task;

  	Data_Valid_tb = Data_Valid_task;
 	#(CLK_PERIOD) Data_Valid_tb = ~Data_Valid_task;
 	
 	for (i=0; i<11; i=i+1)
 	 begin
 	 	@(posedge CLK_tb) gener_frame[i] = TX_OUT_tb;
 	 end
 	if (gener_frame == expec_frame)
 	 	$display("TEST CASE %0d Passed: (%0s)", test_case_no, test_case);
 	else
 		$display("TEST CASE %0d Failed: (%0s) | expected: %b, Got: %b", test_case_no, test_case, expec_frame, gener_frame);
 end

endtask


///////////////////////////////////////////////////////////////
//////////////////////// Clock Generation /////////////////////
///////////////////////////////////////////////////////////////

 
 always #(CLK_PERIOD/2) CLK_tb = ~CLK_tb; 


///////////////////////////////////////////////////////////////
//////////////////////// DUT Instantiation ////////////////////
///////////////////////////////////////////////////////////////

UART_TX DUT (
	.P_DATA(P_DATA_tb),
	.Data_Valid(Data_Valid_tb),
	.PAR_TYP(PAR_TYP_tb),
	.PAR_EN(PAR_EN_tb),
	.RST(RST_tb),
	.CLK(CLK_tb),
	.TX_OUT(TX_OUT_tb),
	.busy(busy_tb)
	);


endmodule
