module UART (
	input	wire			TX_CLK,
	input	wire	[7:0]	TX_IN_P,
	input	wire			TX_IN_V,
	output	reg				TX_OUT_S,
	output	reg				TX_OUT_V,
	input	wire			RST,
	input	wire			PAR_TYP,
	input	wire			PAR_EN,
	input	wire			RX_CLK,
	input	wire			RX_IN_S,
	input	wire	[5:0]	Prescale,
	output	reg		[7:0]	RX_OUT_P,
	output	reg				RX_OUT_V,
	output	reg				parity_error,
	output	reg				framing_error
	);


UART_TX U0_UART_TX (
	.P_DATA(TX_IN_P),
	.Data_Valid(TX_IN_V),
	.PAR_EN(PAR_EN),
	.PAR_TYP(PAR_TYP),
	.CLK(TX_CLK),
	.RST(RST),
	.TX_OUT(TX_OUT_S),
	.busy(TX_OUT_V)
	);


UART_RX U0_UART_RX (
	.CLK(RX_CLK),
	.RST(RST),
	.RX_IN(RX_IN_S),
	.Prescale(Prescale),
	.PAR_EN(PAR_EN),
	.PAR_TYP(PAR_TYP),
	.data_valid(RX_OUT_V),
	.P_DATA(RX_OUT_P),
	.parity_error (parity_error),
	.framing_error(framing_error)
	);


endmodule