

module SYS_TOP_DFT #(parameter DATA_WIDTH = 8, ADDR_WIDTH = 4, NUM_OF_CHAINS = 4)
(
 input   wire                          scan_clk ,
 input   wire                          scan_rst ,
 input   wire                          test_mode ,
 input   wire                          SE ,
 input   wire   [NUM_OF_CHAINS-1:0]    SI ,
 output  wire   [NUM_OF_CHAINS-1:0]    SO ,
 
 input   wire                          RST_N,
 input   wire                          UART_CLK,
 input   wire                          REF_CLK,
 input   wire                          UART_RX_IN,
 output  wire                          UART_TX_O,
 output  wire                          parity_error,
 output  wire                          framing_error
);


wire 							SYNC_RST_REF;
wire 							SYNC_RST_UART;

wire	[DATA_WIDTH-1:0]		UART_Config;
wire 							WrEn;
wire 							RdEn;
wire	[ADDR_WIDTH-1:0]		Addr;
wire	[DATA_WIDTH-1:0]		Wr_Reg; 
wire	[DATA_WIDTH-1:0]		Rd_Reg;
wire							Rd_Reg_Valid;
wire	[DATA_WIDTH-1:0]		Div_Ratio;
wire	[DATA_WIDTH-1:0]		Div_Ratio_to_RX;   // from CLKDIV_MUX to RX

wire	[DATA_WIDTH-1:0]		Operand_A;
wire	[DATA_WIDTH-1:0]		Operand_B;
wire	[3:0]					ALU_FUN;
wire							ALU_EN;
wire							CLKG_EN;
wire							ALU_CLK;
wire	[DATA_WIDTH*2-1:0]		ALU_OUT;
wire							ALU_OUT_Valid;

wire	[DATA_WIDTH-1:0]		UART_RX_DATA_Unsync; 
wire							UART_RX_Valid_Unsync;
wire	[DATA_WIDTH-1:0]		UART_RX_DATA;
wire							UART_RX_Valid;

wire							FIFO_FULL;
wire	[DATA_WIDTH-1:0]		FIFO_WR_DATA;
wire							FIFO_WR_INC;
wire							FIFO_EMPTY_Valid_for_UART_TX; 
wire	[DATA_WIDTH-1:0]		FIFO_Rd_DATA;

wire							UART_TX_Busy;
wire							FIFO_Rd_INC;

wire							TX_CLK;
wire							RX_CLK;
wire							CLKDIV_EN;






wire  UART_CLK_scan, REF_CLK_scan, TX_CLK_scan, RX_CLK_scan;

wire  RST_N_scan, SYNC_RST_REF_scan, SYNC_RST_UART_scan;



// UART_CLK

mux2X1 U1_mux2X1 (

.IN_0(UART_CLK),

.IN_1(scan_clk),

.SEL(test_mode),

.OUT(UART_CLK_scan)

); 



// REF_CLK

mux2X1 U2_mux2X1 (

.IN_0(REF_CLK),

.IN_1(scan_clk),

.SEL(test_mode),

.OUT(REF_CLK_scan)

); 



// TX_CLK

mux2X1 U3_mux2X1 (

.IN_0(TX_CLK),

.IN_1(scan_clk),

.SEL(test_mode),

.OUT(TX_CLK_scan)

); 



// RX_CLK

mux2X1 U4_mux2X1 (

.IN_0(RX_CLK),

.IN_1(scan_clk),

.SEL(test_mode),

.OUT(RX_CLK_scan)

); 



/******************* RESETS ***********************/



// RST_N

mux2X1 U5_mux2X1 (

.IN_0(RST_N),

.IN_1(scan_rst),

.SEL(test_mode),

.OUT(RST_N_scan)

); 



// SYNC_RST_REF

mux2X1 U6_mux2X1 (

.IN_0(SYNC_RST_REF),

.IN_1(scan_rst),

.SEL(test_mode),

.OUT(SYNC_RST_REF_scan)

); 



// SYNC_RST_UART

mux2X1 U7_mux2X1 (

.IN_0(SYNC_RST_UART),

.IN_1(scan_rst),

.SEL(test_mode),

.OUT(SYNC_RST_UART_scan)

);





///********************************************************///
//////////////////// Reset synchronizers /////////////////////
///********************************************************///

RST_SYNC #(.NUM_STAGES(2)) U0_RST_SYNC_REF (
	.CLK(REF_CLK_scan),
	.RST(RST_N_scan),
	.SYNC_RST(SYNC_RST_REF)
	);

RST_SYNC #(.NUM_STAGES(2)) U1_RST_SYNC_UART (
	.CLK(UART_CLK_scan),
	.RST(RST_N_scan),
	.SYNC_RST(SYNC_RST_UART)
	);

///********************************************************///
///////////////////// Data Synchronizers /////////////////////
///********************************************************///

DATA_SYNC #(.NUM_STAGES(2), .BUS_WIDTH(8)) U0_DATA_SYNC (
	.unsync_bus(UART_RX_DATA_Unsync),
	.bus_enable(UART_RX_Valid_Unsync),
	.CLK(REF_CLK_scan),
	.RST(SYNC_RST_REF_scan),
	.sync_bus(UART_RX_DATA),
	.enable_pulse(UART_RX_Valid)
	);


///********************************************************///
///////////////////////// Async FIFO /////////////////////////
///********************************************************///

Async_fifo #(.D_SIZE(DATA_WIDTH) , .P_SIZE(4)  , .F_DEPTH(8)) U0_Async_fifo (
.i_w_clk(REF_CLK_scan),
.i_w_rstn(SYNC_RST_REF_scan),  
.i_w_inc(FIFO_WR_INC),
.i_w_data(FIFO_WR_DATA),             
.i_r_clk(TX_CLK_scan),              
.i_r_rstn(SYNC_RST_UART_scan),              
.i_r_inc(FIFO_Rd_INC),              
.o_r_data(FIFO_Rd_DATA),             
.o_full(FIFO_FULL),               
.o_empty(FIFO_EMPTY_Valid_for_UART_TX)           
);


///********************************************************///
//////////////////////// Pulse Generator /////////////////////
///********************************************************///

PULSE_GEN U0_PULSE_GEN (
.clk(TX_CLK_scan),
.rst(SYNC_RST_UART_scan),
.lvl_sig(UART_TX_Busy),
.pulse_sig(FIFO_Rd_INC)
);


///********************************************************///
//////////// Clock Divider for UART_TX Clock /////////////////
///********************************************************///

Integer_Clock_Divider U0_Integer_Clock_Divider_TX (
	.i_ref_clk(UART_CLK_scan),
	.i_rst_n(SYNC_RST_UART_scan),
	.i_clk_en(CLKDIV_EN),
	.i_div_ratio(Div_Ratio),
	.o_div_clk(TX_CLK)
	);


///********************************************************///
/////////////////////// Custom Mux Clock /////////////////////
///********************************************************///

CLKDIV_MUX U0_CLKDIV_MUX (
.IN(UART_Config[7:2]),
.OUT(Div_Ratio_to_RX)
);

///********************************************************///
//////////// Clock Divider for UART_RX Clock /////////////////
///********************************************************///

Integer_Clock_Divider U1_Integer_Clock_Divider_RX (
	.i_ref_clk(UART_CLK_scan),
	.i_rst_n(SYNC_RST_UART_scan),
	.i_clk_en(CLKDIV_EN),
	.i_div_ratio(Div_Ratio_to_RX),
	.o_div_clk(RX_CLK)
	);

///********************************************************///
/////////////////////////// UART /////////////////////////////
///********************************************************///

UART U0_UART (
	.TX_CLK(TX_CLK_scan),
	.TX_IN_P(FIFO_Rd_DATA),
	.TX_IN_V(!FIFO_EMPTY_Valid_for_UART_TX),
	.TX_OUT_S(UART_TX_O),
	.TX_OUT_V(UART_TX_Busy),
	.RST(SYNC_RST_UART_scan),
	.PAR_TYP(UART_Config[1]),
	.PAR_EN(UART_Config[0]),
	.RX_CLK(RX_CLK_scan),
	.RX_IN_S(UART_RX_IN),
	.Prescale(UART_Config[7:2]),
	.RX_OUT_P(UART_RX_DATA_Unsync),
	.RX_OUT_V(UART_RX_Valid_Unsync),
	.parity_error(parity_error),
	.framing_error(framing_error)
	);


///********************************************************///
//////////////////// System Controller ///////////////////////
///********************************************************///

SYS_CTRL U0_SYS_CTRL (
	.CLK(REF_CLK_scan),
	.RST(SYNC_RST_REF_scan),
	.UART_RX_DATA(UART_RX_DATA),   	
	.UART_RX_Valid(UART_RX_Valid),	
	.FIFO_FULL(FIFO_FULL),
	.FIFO_WR_DATA(FIFO_WR_DATA),
	.FIFO_WR_INC(FIFO_WR_INC),    
	.ALU_OUT(ALU_OUT),
	.ALU_OUT_Valid(ALU_OUT_Valid),
	.ALU_EN(ALU_EN),
	.ALU_FUN(ALU_FUN),
	.CLKG_EN(CLKG_EN),
	.CLKDIV_EN(CLKDIV_EN),
	.Rd_Reg(Rd_Reg),
	.Rd_Reg_Valid(Rd_Reg_Valid), 
	.Wr_Reg(Wr_Reg),
	.Addr(Addr),
	.RdEn(RdEn),
	.WrEn(WrEn)
	);


///********************************************************///
/////////////////////// Register File ////////////////////////
///********************************************************///

Register_File U0_Register_File (
	.WrData(Wr_Reg),
	.Adresss(Addr),
	.WrEn(WrEn),
	.RdEn(RdEn),
	.CLK(REF_CLK_scan),
	.RST(SYNC_RST_REF_scan),
	.RdData(Rd_Reg),
	.RdData_Valid(Rd_Reg_Valid),
	.REG0(Operand_A),
	.REG1(Operand_B),
	.REG2(UART_Config),
	.REG3(Div_Ratio)
	);


///********************************************************///
//////////////////////////// ALU /////////////////////////////
///********************************************************///
 
 ALU_16B U0_ALU_16B (
 	.A(Operand_A),
	.B(Operand_B),
	.EN(ALU_EN),
	.ALU_FUN(ALU_FUN),
	.CLK(ALU_CLK),
	.RST(SYNC_RST_REF_scan),
	.ALU_OUT(ALU_OUT),
	.OUT_VALID(ALU_OUT_Valid)
 	);


///********************************************************///
///////////////////////// Clock Gating ///////////////////////
///********************************************************///

CLK_GATE U0_CLK_GATE (
.CLK_EN(CLKG_EN || test_mode),
.CLK(REF_CLK_scan),
.GATED_CLK(ALU_CLK)
);



endmodule
