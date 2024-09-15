module Register_File_tb;

    // Testbench signals
    reg [15:0] WrData_tb;
    reg [3:0] Address_tb;
    reg WrEn_tb;
    reg RdEn_tb;
    reg CLK_tb;
    reg RST_tb;
    wire [15:0] RdData_tb;


    initial 
     begin
        $dumpfile("Register_file.vcd");
        $dumpvars;
        // Initialize signals
        CLK_tb = 0;
        RST_tb = 0;
        WrEn_tb = 0;
        RdEn_tb = 0;
        Address_tb = 4'b0000;
        WrData_tb = 16'b0;

        // Apply reset
        #10 RST_tb = 1;
        
        // Scenario 1: Write 16'hABCD to register 2
        #10 WrEn_tb = 1; WrData_tb = 16'hABCD; Address_tb = 4'b0010;
        #10 WrEn_tb = 0;

        // Scenario 2: Write 16'h1234 to register 4
        #10 WrEn_tb = 1; WrData_tb = 16'h1234; Address_tb = 4'b0100;
        #10 WrEn_tb = 0;

        // Scenario 3: Read from register 2 (expect 16'hABCD)
        #10 RdEn_tb = 1; Address_tb = 4'b0010;
        #10 RdEn_tb = 0;

        // Scenario 4: Read from register 4 (expect 16'h1234)
        #10 RdEn_tb = 1; Address_tb = 4'b0100;
        #10 RdEn_tb = 0;


        #20 $stop;
     end



    // Clock generation
    always #5 CLK_tb = ~CLK_tb;


    // Instantiate the Register_File
    Register_File DUT (
        .WrData(WrData_tb),
        .Adresss(Address_tb),
        .WrEn(WrEn_tb),
        .RdEn(RdEn_tb),
        .CLK(CLK_tb),
        .RST(RST_tb),
        .RdData(RdData_tb)
    );



endmodule
