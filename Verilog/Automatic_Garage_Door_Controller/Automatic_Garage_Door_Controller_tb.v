`timescale 1ns/1ps

module Automatic_Garage_Door_Controller_tb;

// Parameters
parameter CLK_PERIOD = 20; // Define the clock period as 20 time units

// Testbench Signals
reg                 clk_TB;
reg                 rst_TB;
reg                 Activate_TB;
reg                 Up_Max_TB;
reg                 Dn_Max_TB;
wire                UP_M_TB;
wire                DN_M_TB;

// Instantiate the Unit Under Test (UUT)
Automatic_Garage_Door_Controller DUT (
    .Activate(Activate_TB),
    .Up_Max(Up_Max_TB),
    .Dn_Max(Dn_Max_TB),
    .CLK(clk_TB),
    .RST(rst_TB),
    .UP_M(UP_M_TB),
    .DN_M(DN_M_TB)
);

// Initial block
initial 
 begin
    $dumpfile ("Automatic_Garage_Door_Controller.vcd");
    $dumpvars;

    // Initialization
    initialize();

    // Reset the design
    reset();
    
    // Test sequence
    test_sequence();
    
    $stop;
 end

// Clock Generator
always #(CLK_PERIOD/2) clk_TB = ~clk_TB;

// Task Definitions

/////////////// Signals Initialization //////////////////

task initialize;
 begin
    clk_TB = 1'b0;
    Activate_TB = 1'b0;
    Up_Max_TB = 1'b0;
    Dn_Max_TB = 1'b0;
 end
endtask

///////////////////////// RESET /////////////////////////

task reset;
 begin
    rst_TB = 1'b0;
    #CLK_PERIOD;
    rst_TB = 1'b1;
 end
endtask

///////////////////////// Test Cases /////////////////////////

task test_sequence;
 begin
    // Test case 1: Close door
    Activate_TB = 1'b1;
    Up_Max_TB = 1'b1;
    Dn_Max_TB = 1'b0;
    #CLK_PERIOD;
    check_outputs(1'b0, 1'b1, 1, "Close door"); // Expected: UP_M = 0, DN_M = 1

    // Test case 2: Open door
    Activate_TB = 1'b1;
    Up_Max_TB = 1'b0;
    Dn_Max_TB = 1'b1;
    #(2*CLK_PERIOD);
    check_outputs(1'b1, 1'b0, 2, "Open door"); // Expected: UP_M = 1, DN_M = 0

    // Test case 3: User moved his hand from push button while door not fully opened
    Activate_TB = 1'b0;
    #(2*CLK_PERIOD);
    check_outputs(1'b1, 1'b0, 3, "User moved his hand from push button while door not fully opened"); // Expected: UP_M = 1, DN_M = 0

    // Test case 4: Door suspended if both sensors are high
    Activate_TB = 1'b1;
    Up_Max_TB = 1'b1;
    Dn_Max_TB = 1'b1;
    #(2*CLK_PERIOD);
    check_outputs(1'b0, 1'b0, 4, "Door suspended if both sensors are high"); // Expected: UP_M = 0, DN_M = 0
 end
endtask

///////////////////////// check outputs /////////////////////////

task check_outputs;
input expected_up_m;
input expected_dn_m;
input [2:0] test_case_num; // Added for test case number
input [511:0] test_case_name; // Added for test case name
begin
    if (UP_M_TB !== expected_up_m || DN_M_TB !== expected_dn_m) begin
        $display("Test Case %0d (%0s) FAILED - UP_M: %b, DN_M: %b (Expected UP_M: %b, DN_M: %b) | time = %t" ,
                 test_case_num, test_case_name, UP_M_TB, DN_M_TB, expected_up_m, expected_dn_m, $time);
    end else begin
        $display("Test Case %0d (%0s) PASSED - UP_M: %b, DN_M: %b",
                 test_case_num, test_case_name, UP_M_TB, DN_M_TB);
    end
end
endtask

endmodule
