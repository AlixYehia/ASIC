`timescale 1ns/1ps

module DATA_SYNC_tb ();

//////////////////////////////////////////
/////////////// Paramters ////////////////
//////////////////////////////////////////

parameter NUM_STAGES_tb = 2;
parameter BUS_WIDTH_tb  = 8;

parameter CLOCK_PERIOD = 10;


/////////////////////////////////////////
//////////////  DUT signals /////////////
/////////////////////////////////////////

reg		[BUS_WIDTH_tb-1:0]		unsync_bus_tb;
reg								bus_enable_tb;
reg								CLK_tb;
reg								RST_tb;
wire	[BUS_WIDTH_tb-1:0]		sync_bus_tb;
wire							enable_pulse_tb;


/////////////////////////////////////////
////////////// Initial block ////////////
/////////////////////////////////////////

initial
 begin
 	// system functions
 	$dumpfile("DATA_SYNC.vcd");
 	$dumpvars;

 	initialize();

 	reset();

 	// apply test

 	check_data('b1100_0001, 1, 1);
 	check_data('b1100_0001, 0, 2);   // bus enable set to zero to accept new data next time and check if retains old value
 	check_data('b1100_0000, 1, 3);

 	#(2*CLOCK_PERIOD)
 	$stop;

 end


/////////////////////////////////////////
/////////////// Tasks ///////////////////
/////////////////////////////////////////

//----------- Initialize ---------------

task initialize;
 begin
 	CLK_tb = 1'b0;
 	unsync_bus_tb = 'b0;
 	bus_enable_tb = 1'b0;
 end
endtask


//-------------- Reset -----------------

task reset;
 begin
 	RST_tb = 1'b1;
 	#(CLOCK_PERIOD)
 	RST_tb = 1'b0;
 	#(CLOCK_PERIOD)
 	RST_tb = 1'b1;
 end
endtask


//-------------- check data ------------

task check_data;
 input [BUS_WIDTH_tb-1:0] unsync_bus;
 input 				   	  bus_enable;
 input integer		      test_no;

 begin
 	@(negedge CLK_tb)
 	unsync_bus_tb = unsync_bus;
 	bus_enable_tb = bus_enable;

 	#((NUM_STAGES_tb+1)*CLOCK_PERIOD)
 	if (sync_bus_tb == unsync_bus_tb)
 	 begin
 	 	$display("TEST CASE %0d SUCCEEDED | time = %0t", test_no, $time);
 	 end
 	else
 	 begin
 	 	$display("TEST CASE %0d FAILED | time = %0t", test_no, $time);
 	 end
 end
endtask


//////////////////////////////////////////
///////////// Clock generator ////////////
//////////////////////////////////////////

always #(CLOCK_PERIOD/2) CLK_tb = ~CLK_tb;


/////////////////////////////////////////
/////////// DUT instantiation ///////////
/////////////////////////////////////////

DATA_SYNC #(.NUM_STAGES(NUM_STAGES_tb), .BUS_WIDTH(BUS_WIDTH_tb)) DUT (
	.unsync_bus(unsync_bus_tb),
	.bus_enable(bus_enable_tb),
	.CLK(CLK_tb),
	.RST(RST_tb),
	.sync_bus(sync_bus_tb),
	.enable_pulse(enable_pulse_tb)
	);

endmodule