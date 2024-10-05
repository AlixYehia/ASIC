module UART_RX (
	input	wire			CLK,
	input	wire			RST,
	input	wire			RX_IN,
	input	wire	[5:0]	Prescale,
	input	wire			PAR_EN,
	input	wire			PAR_TYP,
	output	wire			data_valid,
	output	wire	[7:0]	P_DATA	
	);


wire			dat_samp_en;
wire	[4:0]	edge_cnt;
wire	[3:0]	bit_cnt;
wire			enable;
wire			deser_en;
wire			par_chk_en;
wire			par_err;
wire			strt_chk_en;
wire			strt_glitch;
wire			stp_chk_en;
wire			stp_err;
wire			sampled_bit;


UART_RX_FSM U0_FSM (
	.CLK(CLK),
	.RST(RST),
	.RX_IN(RX_IN),
	.PAR_EN(PAR_EN),
	.Prescale(Prescale),
	.dat_samp_en(dat_samp_en),
	.edge_cnt(edge_cnt),
	.bit_cnt(bit_cnt),
	.enable(enable),
	.deser_en(deser_en),
	.par_chk_en(par_chk_en),
	.par_err(par_err),
	.strt_chk_en(strt_chk_en),
	.strt_glitch(strt_glitch),
	.stp_chk_en(stp_chk_en),
	.stp_err(stp_err),
	.data_valid(data_valid)
	);


UART_RX_edge_bit_counter U0_edge_bit_counter (
	.CLK(CLK),
	.RST(RST),
	.Prescale(Prescale),
	.PAR_EN(PAR_EN),
	.enable(enable),
	.bit_cnt(bit_cnt),
	.edge_cnt(edge_cnt)
	);


UART_RX_data_sampling U0_data_sampling (
	.CLK(CLK),
	.RST(RST),
	.RX_IN(RX_IN),
	.Prescale(Prescale),
	.dat_samp_en(dat_samp_en),
	.edge_cnt(edge_cnt),
	.sampled_bit(sampled_bit)
	);


UART_RX_deserializer U0_deserializer (
	.CLK(CLK),
	.RST(RST),
	.bit_cnt(bit_cnt),
	.deser_en(deser_en),
	.sampled_bit(sampled_bit),
	.P_DATA(P_DATA)
	);


UART_RX_parity_check U0_parity_check (
	.CLK(CLK),
	.RST(RST),
	.RX_IN(RX_IN),
	.P_DATA(P_DATA),
	.PAR_TYP(PAR_TYP),
	.Prescale(Prescale),
	.edge_cnt(edge_cnt),
	.bit_cnt(bit_cnt),
	.par_chk_en(par_chk_en),
	.par_err(par_err),
	.sampled_bit(sampled_bit)
	);


UART_RX_strt_check U0_strt_check (
	.CLK(CLK),
	.RST(RST),
	.Prescale(Prescale),
	.edge_cnt(edge_cnt),
	.bit_cnt(bit_cnt),
	.strt_chk_en(strt_chk_en),
	.strt_glitch(strt_glitch),
	.sampled_bit(sampled_bit)
	);


UART_RX_stop_check U0_stop_check (
	.CLK(CLK),
	.RST(RST),
	.Prescale(Prescale),
	.edge_cnt(edge_cnt),
	.stp_chk_en(stp_chk_en),
	.stp_err(stp_err),
	.sampled_bit(sampled_bit)
	);


endmodule