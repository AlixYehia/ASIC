`timescale 1ns/1ps

module CRC_tb;

/////////////////////////////////////////////////////////
///////////////////// Parameters ////////////////////////
/////////////////////////////////////////////////////////

parameter Test_Cases = 10;
parameter CLK_PERIOD = 100; // Clock period for 10 MHz frequency


/////////////////////////////////////////////////////////
//////////////////// DUT Signals ////////////////////////
/////////////////////////////////////////////////////////

reg DATA_tb;
reg ACTIVE_tb;
reg CLK_tb;
reg RST_tb;
wire CRC_tb;
wire Valid_tb;


/////////////////////////////////////////////////////////
/////////////////////// Memories ////////////////////////
/////////////////////////////////////////////////////////

reg [7:0] Test_DATA_h  [Test_Cases-1:0];
reg [7:0] Expec_Outs_h [Test_Cases-1:0];


/////////////////////////////////////////////////////////
///////////////// Loops Variables ///////////////////////
/////////////////////////////////////////////////////////

integer Operation;


////////////////////////////////////////////////////////
////////////////// initial block /////////////////////// 
////////////////////////////////////////////////////////
initial
 begin
    // System Functions
    $dumpfile("CRC.vcd");
    $dumpvars;

    // Read Input Files
    $readmemh("DATA_h.txt", Test_DATA_h);
    $readmemh("Expec_Out_h.txt", Expec_Outs_h);

    // Initialize signals
    initialize();

    // Test Cases
    for (Operation=0; Operation<Test_Cases; Operation=Operation+1)
     begin
        do_oper (Test_DATA_h[Operation]);
        check_out (Expec_Outs_h[Operation], Operation);
     end

    #100
    $stop;
 end


////////////////////////////////////////////////////////
/////////////////////// TASKS //////////////////////////
////////////////////////////////////////////////////////

/////////////// Signals Initialization //////////////////

task initialize;
 begin
    CLK_tb = 1'b0;
    ACTIVE_tb = 1'b0; 
 end
endtask



///////////////////////// RESET /////////////////////////
task reset;
 begin
    RST_tb = 1'b1;
    #(CLK_PERIOD)
    RST_tb = 1'b0;
    #(CLK_PERIOD)
    RST_tb = 1'b1;
 end
endtask


////////////////// Do CRC Operation ////////////////////

task do_oper;
 input [7:0]   Test_DATA;
 integer i;
 begin
    reset ();
    ACTIVE_tb = 1'b1;
    for(i = 0; i <8; i = i+1) 
    begin
     DATA_tb = Test_DATA[i];
     #(CLK_PERIOD);
    end
    ACTIVE_tb = 1'b0;
 end
endtask

////////////////// Check Out Response  ////////////////////

task check_out;
 input reg        [7:0]    Expec_Outs_h;
 input integer             Operation_Num;

 reg              [7:0]    gener_out;

 integer i;

 begin
    @(posedge Valid_tb)
    for (i=0; i<8; i=i+1)
     begin
        #(CLK_PERIOD) gener_out[i] = CRC_tb;
     end
     if (gener_out == Expec_Outs_h)
      begin
         $display("Test Vase %d succeeded", Operation_Num);
      end
     else 
      begin
         $display("Test Case %d failed", Operation_Num);
      end
 end
endtask


////////////////////////////////////////////////////////
////////////////// Clock Generator  ////////////////////
////////////////////////////////////////////////////////

always #(CLK_PERIOD/2) CLK_tb = ~CLK_tb;


////////////////////////////////////////////////////////
/////////////////// DUT Instantation ///////////////////
////////////////////////////////////////////////////////

CRC DUT (
   .DATA(DATA_tb),
   .ACTIVE(ACTIVE_tb),
   .CLK(CLK_tb),
   .RST(RST_tb),
   .CRC(CRC_tb),
   .Valid(Valid_tb)
   );

endmodule
