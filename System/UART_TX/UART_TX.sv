module UART_TX (
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


UART_TX_serializer U0_serializer (
	.CLK(CLK),
	.RST(RST),
	.P_DATA(P_DATA),
	.Data_Valid(Data_Valid),
	.ser_done(ser_done),
	.ser_en(ser_en),
	.S_DATA(S_DATA)
	);

UART_TX_FSM U0_FSM (
	.CLK(CLK),
	.RST(RST),
	.Data_Valid(Data_Valid),
	.PAR_EN(PAR_EN),
	.ser_done(ser_done),
	.ser_en(ser_en),
	.mux_sel(mux_sel),
	.busy(busy)
	);

UART_TX_parity_Calc U0_parity_Calc (
	.Data_Valid(Data_Valid),
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