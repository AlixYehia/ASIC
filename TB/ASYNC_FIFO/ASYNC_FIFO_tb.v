`timescale 1ns/1ps

module ASYNC_FIFO_tb ();

//////////////////////////////////////////
/////////////// Parameters ///////////////
//////////////////////////////////////////

parameter DATA_WIDTH_tb = 8;
parameter W_CLK_PERIOD = 10;  // Writing frequency of 100 MHz
parameter R_CLK_PERIOD = 25;  // Reading frequency of 40 MHz

/////////////////////////////////////////
//////////////  DUT signals /////////////
/////////////////////////////////////////

reg                              W_CLK_tb;
reg                              W_RST_tb;
reg                              W_INC_tb;
reg  [DATA_WIDTH_tb-1:0]         WR_DATA_tb;
wire                             FULL_tb;

reg                              R_CLK_tb;
reg                              R_RST_tb;
reg                              R_INC_tb;
wire [DATA_WIDTH_tb-1:0]         RD_DATA_tb;
wire                             EMPTY_tb;

/////////////////////////////////////////
////////////// Initial block ////////////
/////////////////////////////////////////

initial 
 begin
    // System functions
    $dumpfile("ASYNC_FIFO.vcd");
    $dumpvars;

    initialize();
    
    // Apply reset tasks for write and read in parallel
    fork
        write_reset();
        read_reset();
    join

    // Apply test cases in parallel to read and write
    fork
        write_process();
        read_process();
    join

    #100;
    $stop;
 end


/////////////////////////////////////////
/////////////// Tasks ///////////////////
/////////////////////////////////////////

//----------- Initialize ---------------
task initialize;
 begin
    W_CLK_tb = 1'b0;
    W_INC_tb = 1'b0;
    WR_DATA_tb = 'b0;
    R_CLK_tb = 1'b0;
    R_INC_tb = 1'b0;
 end
endtask


//-------------- Write Reset -----------------
task write_reset;
 begin
    W_RST_tb = 1'b1;
    #(W_CLK_PERIOD);
    W_RST_tb = 1'b0;
    #(W_CLK_PERIOD);
    W_RST_tb = 1'b1; 
 end
endtask


//-------------- Read Reset -----------------
task read_reset;
 begin
   // Used here @(negedge) because the reset was shiffted a little when used 40 Mhz  
    R_RST_tb = 1'b1;
    //#(R_CLK_PERIOD);
    @(negedge R_CLK_tb)
    R_RST_tb = 1'b0;
    //#(R_CLK_PERIOD);
    @(negedge R_CLK_tb)
    R_RST_tb = 1'b1;
 end
endtask


//---------- Write Process -------------
task write_process;

 integer i;
 reg [DATA_WIDTH_tb-1:0] data_to_write [9:0]; // Array to hold data values

 begin
    // Initialize the data to write
    data_to_write[0] = 8'b1101_0000;
    data_to_write[1] = 8'b1101_0001;
    data_to_write[2] = 8'b1101_0010;
    data_to_write[3] = 8'b1101_0011;
    data_to_write[4] = 8'b1101_0100;
    data_to_write[5] = 8'b1101_0101;
    data_to_write[6] = 8'b1101_0110;
    data_to_write[7] = 8'b1101_0111;
    data_to_write[8] = 8'b1101_1000;
    data_to_write[9] = 8'b1101_1001;


    // Write data values into FIFO
    for (i = 0; i < 10; i = i + 1) 
     begin
        @(negedge W_CLK_tb);
        if (!FULL_tb) 
         begin
            W_INC_tb = 1'b1;
            WR_DATA_tb = data_to_write[i];
            $display("Writing data: %b, time = %0t", WR_DATA_tb, $time);
         end 
        else 
         begin
            W_INC_tb = 1'b0;  // Stop writing when full
            $display("FIFO is FULL. Stop writing. | time = %0t", $time);
         end
     end
 end
endtask


//----------- Read Process -------------
task read_process;

 integer i;
 reg [DATA_WIDTH_tb-1:0] expected_data; // Variable to hold expected read data

 begin
    // Read data values from FIFO
    for (i = 0; i < 10; i = i + 1) 
     begin
        @(negedge R_CLK_tb);
        R_INC_tb = 1'b1;
        if (!EMPTY_tb || (DUT.U0_FIFO_RD.rq2_wptr == 'b0)) 
         begin
            @(posedge R_CLK_tb)
            expected_data <= 8'b1101_0000 + i; // Calculate expected data
            $display("Reading data: %b, time = %0t", RD_DATA_tb, $time);
            if (RD_DATA_tb == expected_data) 
             begin
                $display("\nTEST CASE %0d Passed: Expected = %0b, Got = %0b, time = %0t\n", i, expected_data, RD_DATA_tb, $time);
             end 
            else 
             begin
                $display("\nTEST CASE %0d Failed: Expected = %0b, Got = %0b, time = %0t\n", i, expected_data, RD_DATA_tb, $time);
             end
         end 
        else 
         begin
            R_INC_tb = 1'b0;  // Stop reading when empty
            $display("FIFO is EMPTY. Stop reading. | time = %0t", $time);
         end
     end
 end
endtask


//////////////////////////////////////////
///////////// Clock generators ///////////
//////////////////////////////////////////

// Writing clock with 100 MHz frequency (10 ns period)
always #(W_CLK_PERIOD/2) W_CLK_tb = ~W_CLK_tb;

// Reading clock with 40 MHz frequency (25 ns period)
always #(R_CLK_PERIOD/2) R_CLK_tb = ~R_CLK_tb;

/////////////////////////////////////////
/////////// DUT instantiation ///////////
/////////////////////////////////////////

ASYNC_FIFO #(.DATA_WIDTH(DATA_WIDTH_tb)) DUT (
    .W_CLK(W_CLK_tb),
    .W_RST(W_RST_tb),
    .W_INC(W_INC_tb),
    .WR_DATA(WR_DATA_tb),
    .FULL(FULL_tb),
    .R_CLK(R_CLK_tb),
    .R_RST(R_RST_tb),
    .R_INC(R_INC_tb),
    .RD_DATA(RD_DATA_tb),
    .EMPTY(EMPTY_tb)
);

endmodule