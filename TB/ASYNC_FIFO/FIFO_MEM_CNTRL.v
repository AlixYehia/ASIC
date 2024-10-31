module FIFO_MEM_CNTRL #(parameter DATA_WIDTH = 8) (
	input	wire						W_CLK,
	input	wire						W_RST,
	input	wire						W_INC,
	input	wire	[2:0]				W_addr,
	input	wire	[DATA_WIDTH-1:0]	WR_DATA,
	input	wire						FULL,
	input	wire	[2:0] 				R_addr,
	output	reg		[DATA_WIDTH-1:0]	RD_DATA
	);

wire w_clk_en;
reg [DATA_WIDTH-1:0] FIFO_Memory [7:0];

integer i;    // integer is 32-bit if you want to decrease area iterate over the depth of fifo


assign w_clk_en = W_INC && !FULL;

//--------------- Writing --------------
always@(posedge W_CLK or negedge W_RST)
 begin
 	if(!W_RST)
 	 begin
 	 	for (i=0; i<8; i=i+1)
 	 	 begin
 	 	 	FIFO_Memory[i] <= 'b0;
 	 	 end  
 	 end
 	else if (w_clk_en) 
 	 begin
 		FIFO_Memory[W_addr] <= WR_DATA;
 	 end
 end


//--------------- Reading --------------
always@(*)
 begin
 	RD_DATA = FIFO_Memory[R_addr];
 end


endmodule