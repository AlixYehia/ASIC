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
//////////////////////// Variables ////////////////////////////
///////////////////////////////////////////////////////////////

//integer operation;
reg 	[10:0]  expec_frame;
reg 	[10:0]  gener_frame;
integer 		i;


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

 	/* Data Frame (in case of Parity is enabled & Parity Type is even) */
 	@(negedge CLK_tb)
 	P_DATA_tb = 8'b1111_0000;
 	Data_Valid_tb = 1'b1;
 	#(CLK_PERIOD) Data_Valid_tb = 1'b0;
 	PAR_EN_tb = 1'b1;
 	PAR_TYP_tb = 1'b0;

	expec_frame = 11'b1_0_11110000_0;

 	
 	for (i=0; i<11; i=i+1)
 	 begin
 	 	@(posedge CLK_tb) gener_frame[i] = TX_OUT_tb;
 	 end
 	if (gener_frame == expec_frame)
 	 	$display("TEST CASE of Enabled Even Parity Succeeded");
 	else
 		$display("TEST CASE of Enabled Even Parity Failed");


 	

 	/* Data Frame (in case of Parity is enabled & Parity Type is odd) */
 	@(negedge CLK_tb)
 	P_DATA_tb = 8'b1111_0000;
 	Data_Valid_tb = 1'b1;
 	#(CLK_PERIOD) Data_Valid_tb = 1'b0;
 	PAR_EN_tb = 1'b1;
 	PAR_TYP_tb = 1'b1;

 	expec_frame = 11'b1_1_11110000_0;

 	
 	for (i=0; i<11; i=i+1)
 	 begin
 	 	@(posedge CLK_tb) gener_frame[i] = TX_OUT_tb;
 	 end
 	if (gener_frame == expec_frame)
 	 	$display("TEST CASE of Enabled Odd Parity Succeeded");
 	else
 		$display("TEST CASE of Enabled Odd Parity Failed");



  	/* Data Frame (in case of Parity is not enabled) */
  	@(negedge CLK_tb)
 	P_DATA_tb = 8'b1111_0000;
 	Data_Valid_tb = 1'b1;
 	#(CLK_PERIOD) Data_Valid_tb = 1'b0;
 	PAR_EN_tb = 1'b0;
 	PAR_TYP_tb = 1'b0;

 	expec_frame = 11'b1_1_11110000_0;   // i dont care about MSB since that will be the defualt high of output

 	
 	for (i=0; i<11; i=i+1)
 	 begin
 	 	@(posedge CLK_tb) gener_frame[i] = TX_OUT_tb;
 	 end
 	if (gener_frame == expec_frame)
 	 	$display("TEST CASE of Not Enabled Parity Succeeded");
 	else
 		$display("TEST CASE of Not Enabled Parity Failed");

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