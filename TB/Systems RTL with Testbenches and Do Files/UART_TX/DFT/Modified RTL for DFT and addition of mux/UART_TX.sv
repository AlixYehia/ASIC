module UART_TX (
	input  	wire            SI,
	input  	wire            SE,
	input  	wire            scan_clk,
	input  	wire            scan_rst,
	input  	wire            test_mode,
	output 	wire            SO,
	input 	wire 	[7:0] 	P_DATA,
	input 	wire 			Data_Valid,
	input 	wire 			PAR_EN,
	input 	wire 			PAR_TYP,
	input 	wire 			CLK,
	input 	wire 			RST,
	output 	wire			TX_OUT,
	output 	wire 			busy
	);

// internal wires
wire 		ser_done, ser_en, S_DATA;
wire [1:0]	mux_sel;
wire 		par_bit;


wire                     CLK_M,
                         RST_M ;

// Muxing clock
mux2X1 U0_mux2X1 (
.IN_0(CLK),
.IN_1(scan_clk),
.SEL(test_mode),
.OUT(CLK_M)
); 


// Muxing resets
mux2X1 U1_mux2X1 (
.IN_0(RST),
.IN_1(scan_rst),
.SEL(test_mode),
.OUT(RST_M)
);



UART_TX_serializer U0_serializer (
	.CLK(CLK_M),
	.RST(RST_M),
	.P_DATA(P_DATA),
	.Data_Valid(Data_Valid),
	.busy(busy),
	.ser_done(ser_done),
	.ser_en(ser_en),
	.S_DATA(S_DATA)
	);

UART_TX_FSM U0_FSM (
	.CLK(CLK_M),
	.RST(RST_M),
	.Data_Valid(Data_Valid),
	.PAR_EN(PAR_EN),
	.ser_done(ser_done),
	.ser_en(ser_en),
	.mux_sel(mux_sel),
	.busy(busy)
	);

UART_TX_parity_Calc U0_parity_Calc (
	.CLK(CLK_M),
	.RST(RST_M),
	.Data_Valid(Data_Valid),
	.busy(busy),
	.P_DATA(P_DATA),
	.PAR_TYP(PAR_TYP),
	.par_bit(par_bit)
	);

UART_TX_MUX U0_MUX (
	.mux_sel(mux_sel),
	.S_DATA(S_DATA),
	.par_bit(par_bit),
	.TX_OUT(TX_OUT)
	);

endmodule
