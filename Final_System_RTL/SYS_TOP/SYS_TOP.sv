`include "../UART/UART/UART.v"

`include "../UART/UART_TX/UART_TX.sv"
`include "../UART/UART_TX/UART_TX_FSM.sv"
`include "../UART/UART_TX/UART_TX_MUX.sv"
`include "../UART/UART_TX/UART_TX_parity_Calc.sv"
`include "../UART/UART_TX/UART_TX_serializer.sv"

`include "../UART/UART_RX/UART_RX.v"
`include "../UART/UART_RX/UART_RX_data_sampling.v"
`include "../UART/UART_RX/UART_RX_deserializer.v"
`include "../UART/UART_RX/UART_RX_edge_bit_counter.v"
`include "../UART/UART_RX/UART_RX_FSM.sv"
`include "../UART/UART_RX/UART_RX_parity_check.v"
`include "../UART/UART_RX/UART_RX_stop_check.v"
`include "../UART/UART_RX/UART_RX_strt_check.v"

`include "../ASYNC_FIFO/Async_fifo.v"
`include "../ASYNC_FIFO/BIT_SYNC.v"
`include "../ASYNC_FIFO/fifo_mem.v"
`include "../ASYNC_FIFO/fifo_rd.v"
`include "../ASYNC_FIFO/fifo_wr.v"

`include "../SYS_CTRL/SYS_CTRL.sv"
`include "../RST_SYNC/RST_SYNC.v"
`include "../Register_File/Register_File.v"
`include "../PULSE_GEN/PULSE_GEN.v"
`include "../Integer_Clock_Divider/Integer_Clock_Divider.sv"
`include "../DATA_SYNC/DATA_SYNC.v"
`include "../Clock_Gating/CLK_GATE.v"
`include "../CLKDIV_MUX/CLKDIV_MUX.v"
`include "../ALU/ALU_16B.v"



module SYS_TOP #(parameter DATA_WIDTH = 8, ADDR_WIDTH = 4)
(
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








///********************************************************///
//////////////////// Reset synchronizers /////////////////////
///********************************************************///

RST_SYNC #(.NUM_STAGES(2)) U0_RST_SYNC_REF (
	.CLK(REF_CLK),
	.RST(RST_N),
	.SYNC_RST(SYNC_RST_REF)
	);

RST_SYNC #(.NUM_STAGES(2)) U1_RST_SYNC_UART (
	.CLK(UART_CLK),
	.RST(RST_N),
	.SYNC_RST(SYNC_RST_UART)
	);

///********************************************************///
///////////////////// Data Synchronizers /////////////////////
///********************************************************///

DATA_SYNC #(.NUM_STAGES(2), .BUS_WIDTH(8)) U0_DATA_SYNC (
	.unsync_bus(UART_RX_DATA_Unsync),
	.bus_enable(UART_RX_Valid_Unsync),
	.CLK(REF_CLK),
	.RST(SYNC_RST_REF),
	.sync_bus(UART_RX_DATA),
	.enable_pulse(UART_RX_Valid)
	);


///********************************************************///
///////////////////////// Async FIFO /////////////////////////
///********************************************************///

Async_fifo #(.D_SIZE(DATA_WIDTH) , .P_SIZE(4)  , .F_DEPTH(8)) U0_Async_fifo (
.i_w_clk(REF_CLK),
.i_w_rstn(SYNC_RST_REF),  
.i_w_inc(FIFO_WR_INC),
.i_w_data(FIFO_WR_DATA),             
.i_r_clk(TX_CLK),              
.i_r_rstn(SYNC_RST_UART),              
.i_r_inc(FIFO_Rd_INC),              
.o_r_data(FIFO_Rd_DATA),             
.o_full(FIFO_FULL),               
.o_empty(FIFO_EMPTY_Valid_for_UART_TX)           
);


///********************************************************///
//////////////////////// Pulse Generator /////////////////////
///********************************************************///

PULSE_GEN U0_PULSE_GEN (
.clk(TX_CLK),
.rst(SYNC_RST_UART),
.lvl_sig(UART_TX_Busy),
.pulse_sig(FIFO_Rd_INC)
);


///********************************************************///
//////////// Clock Divider for UART_TX Clock /////////////////
///********************************************************///

Integer_Clock_Divider U0_Integer_Clock_Divider_TX (
	.i_ref_clk(UART_CLK),
	.i_rst_n(SYNC_RST_UART),
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
	.i_ref_clk(UART_CLK),
	.i_rst_n(SYNC_RST_UART),
	.i_clk_en(CLKDIV_EN),
	.i_div_ratio(Div_Ratio_to_RX),
	.o_div_clk(RX_CLK)
	);

///********************************************************///
/////////////////////////// UART /////////////////////////////
///********************************************************///

UART U0_UART (
	.TX_CLK(TX_CLK),
	.TX_IN_P(FIFO_Rd_DATA),
	.TX_IN_V(!FIFO_EMPTY_Valid_for_UART_TX),
	.TX_OUT_S(UART_TX_O),
	.TX_OUT_V(UART_TX_Busy),
	.RST(SYNC_RST_UART),
	.PAR_TYP(UART_Config[1]),
	.PAR_EN(UART_Config[0]),
	.RX_CLK(RX_CLK),
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
	.CLK(REF_CLK),
	.RST(SYNC_RST_REF),
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
	.CLK(REF_CLK),
	.RST(SYNC_RST_REF),
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
	.RST(SYNC_RST_REF),
	.ALU_OUT(ALU_OUT),
	.OUT_VALID(ALU_OUT_Valid)
 	);


///********************************************************///
///////////////////////// Clock Gating ///////////////////////
///********************************************************///

CLK_GATE U0_CLK_GATE (
.CLK_EN(CLKG_EN),
.CLK(REF_CLK),
.GATED_CLK(ALU_CLK)
);



endmodule