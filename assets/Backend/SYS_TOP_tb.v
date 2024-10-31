`timescale 1ns/1ps

module SYS_TOP_tb;

    ///////////////////////////////////////////////////////////////
    //////////////////////// Parameters ///////////////////////////
    ///////////////////////////////////////////////////////////////

    parameter REF_CLK_PERIOD = 20;          // 50 MHz REF clock
    parameter UART_CLK_PERIOD = 271.267;    // 3.6864 MHz UART clock
    parameter DATA_WIDTH_tb = 8;
    parameter ADDR_WIDTH_tb = 4;

    parameter RF_DEPTH = 16 ;
    parameter NUM_SCAN_CHAINS = 4  ; 

    // ------------------ Supported Commands ------------------- //

    // 1-Register File Write command
    parameter RF_Wr_CMD = 8'hAA;

    // 2- Register File Read command
    parameter RF_Rd_CMD = 8'hBB;

    // 3- ALU Operation command with operand
    parameter ALU_OPER_W_OP_CMD = 8'hCC;

    // 3- ALU Operation command with No operand
    parameter ALU_OPER_W_NOP_CMD = 8'hDD;


    /////////////////////////////////////////////////////////
    //////////////////// GLS Signals ////////////////////////
    /////////////////////////////////////////////////////////

    wire [DATA_WIDTH_tb-1:0] regfile_ary [RF_DEPTH-1:0] ;    

    assign regfile_ary[0]     = {DUT.Operand_A[7] , DUT.Operand_A[6] , DUT.Operand_A[5] , DUT.Operand_A[4] , DUT.Operand_A[3] , DUT.Operand_A[2] , DUT.Operand_A[1] , DUT.Operand_A[0]};
    assign regfile_ary[1]     = {DUT.Operand_B[7] , DUT.Operand_B[6] , DUT.Operand_B[5] , DUT.Operand_B[4] , DUT.Operand_B[3] , DUT.Operand_B[2] , DUT.Operand_B[1] , DUT.Operand_B[0]};
    assign regfile_ary[2]     = {DUT.UART_Config[7] , DUT.UART_Config[6] , DUT.UART_Config[5] , DUT.UART_Config[4] , DUT.UART_Config[3] , DUT.UART_Config[2] , DUT.UART_Config[1] , DUT.UART_Config[0]};
    assign regfile_ary[3]     = {DUT.DIV_RATIO[7] , DUT.DIV_RATIO[6] , DUT.DIV_RATIO[5] , DUT.DIV_RATIO[4] , DUT.DIV_RATIO[3] , DUT.DIV_RATIO[2] , DUT.DIV_RATIO[1] , DUT.DIV_RATIO[0]};
    assign regfile_ary[4]     = { DUT.U0_Register_File.\Memory[4][7] , DUT.U0_Register_File.\Memory[4][6] , DUT.U0_Register_File.\Memory[4][5] , DUT.U0_Register_File.\Memory[4][4] , DUT.U0_Register_File.\Memory[4][3] , DUT.U0_Register_File.\Memory[4][2] , DUT.U0_Register_File.\Memory[4][1] , DUT.U0_Register_File.\Memory[4][0] };
    assign regfile_ary[5]     = { DUT.U0_Register_File.\Memory[5][7] , DUT.U0_Register_File.\Memory[5][6] , DUT.U0_Register_File.\Memory[5][5] , DUT.U0_Register_File.\Memory[5][4] , DUT.U0_Register_File.\Memory[5][3] , DUT.U0_Register_File.\Memory[5][2] , DUT.U0_Register_File.\Memory[5][1] , DUT.U0_Register_File.\Memory[5][0] };
    assign regfile_ary[6]     = { DUT.U0_Register_File.\Memory[6][7] , DUT.U0_Register_File.\Memory[6][6] , DUT.U0_Register_File.\Memory[6][5] , DUT.U0_Register_File.\Memory[6][4] , DUT.U0_Register_File.\Memory[6][3] , DUT.U0_Register_File.\Memory[6][2] , DUT.U0_Register_File.\Memory[6][1] , DUT.U0_Register_File.\Memory[6][0] };
    assign regfile_ary[7]     = { DUT.U0_Register_File.\Memory[7][7] , DUT.U0_Register_File.\Memory[7][6] , DUT.U0_Register_File.\Memory[7][5] , DUT.U0_Register_File.\Memory[7][4] , DUT.U0_Register_File.\Memory[7][3] , DUT.U0_Register_File.\Memory[7][2] , DUT.U0_Register_File.\Memory[7][1] , DUT.U0_Register_File.\Memory[7][0] };
    assign regfile_ary[8]     = { DUT.U0_Register_File.\Memory[8][7] , DUT.U0_Register_File.\Memory[8][6] , DUT.U0_Register_File.\Memory[8][5] , DUT.U0_Register_File.\Memory[8][4] , DUT.U0_Register_File.\Memory[8][3] , DUT.U0_Register_File.\Memory[8][2] , DUT.U0_Register_File.\Memory[8][1] , DUT.U0_Register_File.\Memory[8][0] };
    assign regfile_ary[9]     = { DUT.U0_Register_File.\Memory[9][7] , DUT.U0_Register_File.\Memory[9][6] , DUT.U0_Register_File.\Memory[9][5] , DUT.U0_Register_File.\Memory[9][4] , DUT.U0_Register_File.\Memory[9][3] , DUT.U0_Register_File.\Memory[9][2] , DUT.U0_Register_File.\Memory[9][1] , DUT.U0_Register_File.\Memory[9][0] };
    assign regfile_ary[10]    = { DUT.U0_Register_File.\Memory[10][7] , DUT.U0_Register_File.\Memory[10][6] , DUT.U0_Register_File.\Memory[10][5] , DUT.U0_Register_File.\Memory[10][4] , DUT.U0_Register_File.\Memory[10][3] , DUT.U0_Register_File.\Memory[10][2] , DUT.U0_Register_File.\Memory[10][1] , DUT.U0_Register_File.\Memory[10][0] };
    assign regfile_ary[11]    = { DUT.U0_Register_File.\Memory[11][7] , DUT.U0_Register_File.\Memory[11][6] , DUT.U0_Register_File.\Memory[11][5] , DUT.U0_Register_File.\Memory[11][4] , DUT.U0_Register_File.\Memory[11][3] , DUT.U0_Register_File.\Memory[11][2] , DUT.U0_Register_File.\Memory[11][1] , DUT.U0_Register_File.\Memory[11][0] };
    assign regfile_ary[12]    = { DUT.U0_Register_File.\Memory[12][7] , DUT.U0_Register_File.\Memory[12][6] , DUT.U0_Register_File.\Memory[12][5] , DUT.U0_Register_File.\Memory[12][4] , DUT.U0_Register_File.\Memory[12][3] , DUT.U0_Register_File.\Memory[12][2] , DUT.U0_Register_File.\Memory[12][1] , DUT.U0_Register_File.\Memory[12][0] };
    assign regfile_ary[13]    = { DUT.U0_Register_File.\Memory[13][7] , DUT.U0_Register_File.\Memory[13][6] , DUT.U0_Register_File.\Memory[13][5] , DUT.U0_Register_File.\Memory[13][4] , DUT.U0_Register_File.\Memory[13][3] , DUT.U0_Register_File.\Memory[13][2] , DUT.U0_Register_File.\Memory[13][1] , DUT.U0_Register_File.\Memory[13][0] };
    assign regfile_ary[14]    = { DUT.U0_Register_File.\Memory[14][7] , DUT.U0_Register_File.\Memory[14][6] , DUT.U0_Register_File.\Memory[14][5] , DUT.U0_Register_File.\Memory[14][4] , DUT.U0_Register_File.\Memory[14][3] , DUT.U0_Register_File.\Memory[14][2] , DUT.U0_Register_File.\Memory[14][1] , DUT.U0_Register_File.\Memory[14][0] };
    assign regfile_ary[15]    = { DUT.U0_Register_File.\Memory[15][7] , DUT.U0_Register_File.\Memory[15][6] , DUT.U0_Register_File.\Memory[15][5] , DUT.U0_Register_File.\Memory[15][4] , DUT.U0_Register_File.\Memory[15][3] , DUT.U0_Register_File.\Memory[15][2] , DUT.U0_Register_File.\Memory[15][1] , DUT.U0_Register_File.\Memory[15][0] };

    ///////////////////////////////////////////////////////////////
    //////////////////////// DUT Signals //////////////////////////
    ///////////////////////////////////////////////////////////////
    
    reg                                scan_clk;
    reg                                scan_rst;
    reg                                test_mode;
    reg                                SE;
    reg      [NUM_SCAN_CHAINS-1:0]     SI;
   
    reg                                RST_N_tb;
    reg                                UART_CLK_tb;
    reg                                REF_CLK_tb;
    reg                                UART_RX_IN_tb;
    wire                               UART_TX_O_tb;
    wire                               parity_error_tb;
    wire                               framing_error_tb;

    wire     [NUM_SCAN_CHAINS-1:0]     SO;

    ///////////////////////////////////////////////////////////////
    //////////////////////// DUT Instantiation ////////////////////
    ///////////////////////////////////////////////////////////////
    
    SYS_TOP #(.DATA_WIDTH(DATA_WIDTH_tb), .ADDR_WIDTH(ADDR_WIDTH_tb)) DUT (
        .scan_clk(scan_clk),
        .scan_rst(scan_rst),
        .test_mode(test_mode),
        .SE(SE),
        .SI(SI),
        .SO(SO),
        .RST_N(RST_N_tb),
        .UART_CLK(UART_CLK_tb),
        .REF_CLK(REF_CLK_tb),
        .UART_RX_IN(UART_RX_IN_tb),
        .UART_TX_O(UART_TX_O_tb),
        .parity_error(parity_error_tb),
        .framing_error(framing_error_tb)
    );

    ///////////////////////////////////////////////////////////////
    //////////////////////// Clock Generation /////////////////////
    ///////////////////////////////////////////////////////////////

    always #(REF_CLK_PERIOD / 2) REF_CLK_tb = ~REF_CLK_tb;
    always #(UART_CLK_PERIOD / 2) UART_CLK_tb = ~UART_CLK_tb;




///////////////////////////////////////////////////////////////
/////////////////////////// Tasks /////////////////////////////
///////////////////////////////////////////////////////////////


//////////////////////// Reset ///////////////////////////////

task reset;
 begin
    RST_N_tb = 1'b1;
    #(REF_CLK_PERIOD)
    RST_N_tb = 1'b0;
    #(REF_CLK_PERIOD)
    RST_N_tb = 1'b1;
 end
endtask


//////////////////////// initialize //////////////////////////

task initialize;
 begin
    UART_CLK_tb     = 0;
    REF_CLK_tb      = 0;
    UART_RX_IN_tb   = 1;
    scan_clk        = 1'b0;
    scan_rst        = 1'b0;
    test_mode       = 1'b0;
    SE              = 1'b0;
    SI              = 1'b0;
    SO              = 1'b0;
 end
endtask


//////////////////////// Send Command ////////////////////////

task send_data;

 input [7:0] command;
 integer i;

 begin

    // Simulate start bit (0)
    @(posedge DUT.U0_UART.TX_CLK)
    UART_RX_IN_tb = 0;

    // Send 8-bit command (LSB first)
    for (i = 0; i < DATA_WIDTH_tb; i = i + 1) 
    begin
        @(posedge DUT.U0_UART.TX_CLK)
        UART_RX_IN_tb = command[i];
        #(DUT.U0_UART.TX_CLK);
    end

    // Simulate parity bit 
    if(DUT.U0_Register_File.REG2[0])
     begin
        @ (posedge DUT.U0_UART.TX_CLK) 
        case(DUT.U0_Register_File.REG2[1])
        1'b0 : UART_RX_IN_tb <= ^command  ;     // Even Parity
        1'b1 : UART_RX_IN_tb <= ~^command ;     // Odd Parity
        endcase 
     end

     // Simulate stop bit (1)
    @(posedge DUT.U0_UART.TX_CLK)
    UART_RX_IN_tb = 1;

 end
endtask


/*********************************************************************************************************/
/**************************************** Register File Write ********************************************/
/*********************************************************************************************************/


////////////// Register File Write command ////////////////

task Register_File_write_command;

 input  [DATA_WIDTH_tb-1:0]  ADDR ;
 input  [DATA_WIDTH_tb-1:0]  DATA ;
 
 begin
    send_data(RF_Wr_CMD);   // Send Write Command
    send_data(ADDR);        // Send Write Address
    send_data(DATA);        // Send Write Data
    $display("Data %b written in Address 0x%h", DATA, ADDR);

 end
endtask


//////////////////// Check Write Operation //////////////////

task Check_write_operation;
 input  [DATA_WIDTH_tb-1:0]  ADDR;
 input  [DATA_WIDTH_tb-1:0]  DATA;
 
 begin
    wait(DUT.U0_Register_File.WrEn)
    #(2*REF_CLK_PERIOD);
    @(posedge REF_CLK_tb);
    //{DUT.U0_Register_File.\Memory[7][7], DUT.U0_Register_File.\Memory[7][6], DUT.U0_Register_File.\Memory[7][5],  
    if(regfile_ary[ADDR[ADDR_WIDTH_tb-1:0]] == DATA)
        begin
            $display("Write Operation Succeeded in Address 0x%h with Data %b", ADDR, regfile_ary[ADDR[ADDR_WIDTH_tb-1:0]]);
        end
    else
        begin
            $display("Write Operation Faield in Address 0x%h with Data %b", ADDR, regfile_ary[ADDR[ADDR_WIDTH_tb-1:0]]);
        end 
 end
endtask 


/*********************************************************************************************************/
/**************************************** Register File Read *********************************************/
/*********************************************************************************************************/



////////////// Register File Read command ////////////////

task Register_File_read_command;

 input  [DATA_WIDTH_tb-1:0]  ADDR;
 
 begin
    send_data(RF_Rd_CMD);   // Send Read Command
    send_data(ADDR);        // Send Read Address
    $display("Reading Data at Address 0x%h", ADDR);
 end
endtask


//////////////////// Check Read Operation //////////////////

task Check_read_operation;

 input  [DATA_WIDTH_tb-1:0]  ADDR;

 reg        [10:0]      generated_out, expected_out;
 reg                    parity_bit;
 integer                i;
 

 begin
    @(posedge DUT.U0_UART.TX_OUT_V)
    for(i=0; i<11; i=i+1)
     begin
        @(negedge DUT.U0_UART.TX_CLK) generated_out[i] = UART_TX_O_tb ;
     end
    
    // parity bit
    if(DUT.U0_Register_File.REG2[0] == 1'b1)    // check for Parity Enable if activated or not
     begin
      if(DUT.U0_Register_File.REG2[1] == 1'b0)
       begin
        parity_bit = ^regfile_ary[ADDR[ADDR_WIDTH_tb-1:0]];      // Even Parity
       end
      else
       begin
        parity_bit = ~^regfile_ary[ADDR[ADDR_WIDTH_tb-1:0]];     // Odd Parity
       end
     end
        
    
    // expected output
    if(DUT.U0_Register_File.REG2[0] == 1'b1)   
        expected_out = {1'b1, parity_bit, regfile_ary[ADDR[ADDR_WIDTH_tb-1:0]], 1'b0} ;  // there is parity bit
    else
        expected_out = {1'b1, 1'b1, regfile_ary[ADDR[ADDR_WIDTH_tb-1:0]], 1'b0} ;        // no parity so send idle bit value
            

    // check output
    if(generated_out == expected_out) 
        begin
            $display("Read Operation Succeeded in Address 0x%h with Data %b", ADDR, generated_out[8:1]);
        end
    else
        begin
            $display("Read Operation Faield in Address 0x%h with Data %b", ADDR, generated_out[8:1]);
        end 
 end
endtask 



/*********************************************************************************************************/
/****************************************** ALU Operation ************************************************/
/*********************************************************************************************************/


////////////// ALU Operation command with operand ////////////////

task ALU_Operation_command_with_operand;

 input  [DATA_WIDTH_tb-1:0]  Operand_A;
 input  [DATA_WIDTH_tb-1:0]  Operand_B;
 input  [DATA_WIDTH_tb-1:0]  ALU_FUN;
 
 begin
    send_data(ALU_OPER_W_OP_CMD);        // Send ALU Operation command with operand Command
    send_data(Operand_A);                // Send Operand A
    send_data(Operand_B);                // Send Operand B
    send_data(ALU_FUN);                  // Send ALU FUN

    $display("Sent Operand A = %0d and Operand B = %0d with ALU FUN %b", Operand_A, Operand_B, ALU_FUN[3:0]);

 end
endtask

////////////// ALU Operation command with No operand ////////////////

task ALU_Operation_command_with_No_operand;

 input  [DATA_WIDTH_tb-1:0]  ALU_FUN;
 
 begin
    send_data(ALU_OPER_W_NOP_CMD);        // Send ALU Operation command with No operand Command
    send_data(ALU_FUN);                   // Send ALU FUN

    $display("Sent ALU FUN %b", ALU_FUN[3:0]);

 end
endtask


//////////////////////// Check ALU Operation ///////////////////////

task Check_ALU_operation;

 input  [DATA_WIDTH_tb-1:0]     ALU_FUN;

 integer                        i;
 reg    [10:0]                  ALU_1st_Byte_expected, ALU_1st_Byte_generated,
                                ALU_2nd_Byte_expected, ALU_2nd_Byte_generated;
 reg                            ALU_1st_Byte_expected_parity_bit , ALU_2nd_Byte_expected_parity_bit;
 reg    [2*DATA_WIDTH_tb-1:0]   ALU_OUT;

 begin
    case (ALU_FUN)
         4'b0000 : begin
                    ALU_OUT = regfile_ary[0] + regfile_ary[1];                       // Addition
                   end 

        4'b0001 : begin
                    ALU_OUT = regfile_ary[0] - regfile_ary[1];                       // Subtraction
                  end

         4'b0010 : begin
                    ALU_OUT = regfile_ary[0] * regfile_ary[1];                       // Multiplication
                   end
     
         4'b0011 : begin
                    ALU_OUT = regfile_ary[0] / regfile_ary[1];                       // Divison
                   end

         4'b0100 : begin
                    ALU_OUT = regfile_ary[0] & regfile_ary[1];                       // Logical AND
                   end

         4'b0101 : begin
                     ALU_OUT = regfile_ary[0] | regfile_ary[1];                      // Logical OR
                   end

         4'b0110 : begin
                    ALU_OUT = ~ (regfile_ary[0] & regfile_ary[1]);                   // Logical NAND
                   end

         4'b0111 : begin
                    ALU_OUT = ~ (regfile_ary[0] | regfile_ary[1]);                   // Logical NOR
                   end

         4'b1000 : begin
                     ALU_OUT = regfile_ary[0] ^ regfile_ary[1];                      // Logical XOR
                   end

         4'b1001 : begin
                    ALU_OUT = ~ (regfile_ary[0] ^ regfile_ary[1]);                   // Logical XNOR
                   end

         4'b1010 : begin
                    if (regfile_ary[0] == regfile_ary[1])                            // Equal
                     begin
                      ALU_OUT = 'd1;
                     end  
                    else 
                     begin
                      ALU_OUT = 'd0;
                     end
                   end

         4'b1011 : begin
                    if (regfile_ary[0] > regfile_ary[1])                             // Greater than
                     begin
                      ALU_OUT = 'd2;
                     end
                    else
                     begin
                      ALU_OUT = 'd0;
                     end
                   end

         4'b1100 : begin
                    if (regfile_ary[0] < regfile_ary[1])                             // Less than
                     begin
                      ALU_OUT = 'd3;
                     end
                    else
                     begin
                      ALU_OUT = 'd0;
                     end
                   end

         4'b1101 : begin
                    ALU_OUT = regfile_ary[0] >> 1;                                                   // Logical Shift left
                   end

         4'b1110 : begin
                    ALU_OUT = regfile_ary[0] << 1;                                                   // Logical Shift right
                   end

         default : begin
                    ALU_OUT = 'b0;
                   end
         endcase


    /////////////////////////// expected ALU_OUT ////////////////////////////

    // ALU 1st Byte expected parity 

    if(DUT.U0_Register_File.REG2[0])
     begin
        if(DUT.U0_Register_File.REG2[1] == 1'b0)
         begin
          ALU_1st_Byte_expected_parity_bit = ^ALU_OUT[DATA_WIDTH_tb-1:0];     // Even Parity 
         end
        else
         begin
          ALU_1st_Byte_expected_parity_bit = ~^ALU_OUT[DATA_WIDTH_tb-1:0];    // Odd Parity   
         end
     end

    // ALU 2nd Byte expected parity

    if(DUT.U0_Register_File.REG2[0])
     begin
        if(DUT.U0_Register_File.REG2[1] == 1'b0)
         begin
          ALU_2nd_Byte_expected_parity_bit = ^ALU_OUT[DATA_WIDTH_tb-1:0];     // Even Parity 
         end
        else
         begin
          ALU_2nd_Byte_expected_parity_bit = ~^ALU_OUT[DATA_WIDTH_tb-1:0];    // Odd Parity   
         end
     end


    // ALU_1st_Byte_expected 

    if(DUT.U0_Register_File.REG2[0])
     begin
      ALU_1st_Byte_expected = {1'b1, ALU_1st_Byte_expected_parity_bit, ALU_OUT[DATA_WIDTH_tb-1:0], 1'b0};   // there is parity bit
     end
    else
     begin
      ALU_1st_Byte_expected = {1'b1, 1'b1, ALU_OUT[DATA_WIDTH_tb-1:0], 1'b0} ;                              // no parity so send idle bit value
     end

    // ALU_2nd_Byte_expected

    if(DUT.U0_Register_File.REG2[0])
     begin
      ALU_2nd_Byte_expected = {1'b1, ALU_1st_Byte_expected_parity_bit, ALU_OUT[DATA_WIDTH_tb-1:0], 1'b0};   // there is parity bit
     end
    else
     begin
      ALU_2nd_Byte_expected = {1'b1, 1'b1, ALU_OUT[DATA_WIDTH_tb-1:0], 1'b0} ;                              // no parity so send idle bit value
     end


    /////////////////////////// generated ALU_OUT ////////////////////////////

    @(posedge DUT.U0_UART.TX_OUT_V)
    for(i=0; i<11; i=i+1)
     begin
        @(negedge DUT.U0_UART.TX_CLK) ALU_1st_Byte_generated[i] = UART_TX_O_tb ;
     end
        
    @(posedge DUT.U0_UART.TX_OUT_V)
    for(i=0; i<11; i=i+1)
     begin
        @(negedge DUT.U0_UART.TX_CLK) ALU_2nd_Byte_generated[i] = UART_TX_O_tb ;
     end


    // check output
    if(ALU_1st_Byte_generated == ALU_1st_Byte_expected && ALU_2nd_Byte_generated == ALU_2nd_Byte_expected) 
        begin
            $display("ALU Operation Succeeded with Operand A = %0d and Operand B = %0d with Result = %0d", DUT.U0_Register_File.REG0, DUT.U0_Register_File.REG1, ALU_OUT);
        end
    else
        begin
            $display("ALU Operation Faield with Operand A = %0d and Operand B = %0d with Result = %0d", DUT.U0_Register_File.REG0, DUT.U0_Register_File.REG1, ALU_OUT);
        end

    end
endtask


///////////////////////////////////////////////////////////////
//////////////////////// Initial Block ////////////////////////
///////////////////////////////////////////////////////////////


    // Testbench sequence
    initial begin

        $dumpfile("SYSTEM_TOP.vcd");
        $dumpvars;

        initialize();

        reset();


        // Test case 1: Register File Write command (0xAA)

        $display("\nTest case 1: Register File Write command");
        Register_File_write_command(8'h07, 8'b1111_0000);
        Check_write_operation(8'h07, 8'b1111_0000);


        // Test case 2: Register File Read command (0xBB)

        $display("\nTest case 2: Register File Read command");
        Register_File_read_command(8'h07);
        Check_read_operation(8'h07);


        // Test case 3: ALU Operation command with operand (0xCC)

        $display("\nTest case 3: ALU Operation command with operand");
        $display("Addition Case");
        ALU_Operation_command_with_operand(8'd7, 8'd3, 4'b0000);
        Check_ALU_operation(4'b0000);


        // Test case 4: ALU Operation command with No operand (0xDD)

        $display("\nTest case 4: ALU Operation command with No operand");
        $display("Subtraction Case");
        ALU_Operation_command_with_No_operand(4'b0001);
        Check_ALU_operation(4'b0001);



        #1000
        $stop;
    end



endmodule