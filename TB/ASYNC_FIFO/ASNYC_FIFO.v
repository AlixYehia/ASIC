module ASYNC_FIFO #(parameter DATA_WIDTH = 8, NUM_STAGES = 2) (
	input	wire						W_CLK,
	input	wire						W_RST,
	input	wire						W_INC,
	input	wire						R_CLK,
	input	wire						R_RST,
	input	wire						R_INC,
	input	wire	[DATA_WIDTH-1:0]	WR_DATA,
	output	wire						FULL,
	output	wire	[DATA_WIDTH-1:0]	RD_DATA,
	output	wire						EMPTY
	);


wire [2:0] R_addr , W_addr;
wire [3:0] wq2_rptr , rq2_wptr;
wire [3:0] R_ptr , W_ptr;


FIFO_MEM_CNTRL #(.DATA_WIDTH(DATA_WIDTH)) U0_FIFO_MEM_CNTRL (
	.W_CLK(W_CLK),
	.W_RST(W_RST),
	.W_addr(W_addr),
	.WR_DATA(WR_DATA),
	.R_addr(R_addr),
	.W_INC(W_INC),
	.FULL(FULL),
	.RD_DATA(RD_DATA)
	);


FIFO_WR U0_FIFO_WR (
	.W_CLK(W_CLK),
	.W_RST(W_RST),
	.W_INC(W_INC),
	.wq2_rptr(wq2_rptr),	
	.W_ptr(W_ptr),	
	.W_addr(W_addr),
	.FULL(FULL)
	);


FIFO_RD U0_FIFO_RD (
	.R_CLK(R_CLK),
	.R_RST(R_RST),
	.R_INC(R_INC),
	.rq2_wptr(rq2_wptr),	
	.R_ptr(R_ptr),	
	.R_addr(R_addr),
	.EMPTY(EMPTY)
	);


DF_SYNC #(.NUM_STAGES(NUM_STAGES)) U0_DF_SYNC_WR (
	.CLK(W_CLK),
	.RST(W_RST),
	.ptr(W_ptr),		
	.q2_ptr(rq2_wptr)
	);


DF_SYNC #(.NUM_STAGES(NUM_STAGES)) U0_DF_SYNC_RD (
	.CLK(R_CLK),
	.RST(R_RST),
	.ptr(R_ptr),		
	.q2_ptr(wq2_rptr)
	);


endmodule