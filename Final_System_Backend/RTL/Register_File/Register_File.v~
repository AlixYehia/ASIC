
// ************************************************************* //
// Author : Ali Yehia Abdelmonem
// SYSTEM REG_FILE
// Date   : 2024-10-20
// ************************************************************* //

module Register_File #( parameter ADDR_WIDTH = 4, DATA_WIDTH = 8, MEM_DEPTH = 16) (
	input	wire 	[DATA_WIDTH-1:0]		WrData,
	input	wire 	[ADDR_WIDTH-1:0]		Adresss,
	input 	wire 							WrEn,
	input	wire 							RdEn,
	input 	wire 							CLK,
	input 	wire 							RST,
	output 	reg 	[DATA_WIDTH-1:0]		RdData,
	output	reg 							RdData_Valid,
	output	wire 	[DATA_WIDTH-1:0]		REG0,
	output	wire 	[DATA_WIDTH-1:0]		REG1,
	output	wire 	[DATA_WIDTH-1:0]		REG2,
	output	wire 	[DATA_WIDTH-1:0]		REG3 
	);


reg [DATA_WIDTH-1:0] Memory [MEM_DEPTH-1:0];

integer i;


always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 	 begin
 	 	RdData <= 'b0;
 	 	RdData_Valid <= 1'b0;
 	 	for (i=0; i<MEM_DEPTH; i=i+1)
 	 	 begin
 	 	  if(i == 2)
 	 	  	Memory[i] <= 'b10000001;   // REG2[0]: Parity Enable (Default = 1) ||  REG2[1]: Parity Type (Default = 0) || REG2[7:2]: Prescale (Default = 32) 
 	 	  else if (i == 3)
 	 	  	Memory[i] <= 'b00100000;     // REG3[7:0]: Division ratio (Default = 32)
 	 	  else
 	 	  	Memory[i] <= 'b0;
 	 	 end
 	 end
 	else
 	 begin
 	 	if (WrEn && !RdEn)
 	 	 begin
 	 	 	Memory[Adresss] <= WrData;
 	 	 end
 	 	else if (RdEn && !WrEn)
 	 	 begin
 	 	 	RdData <= Memory[Adresss];
 	 	 	RdData_Valid <= 1'b1;
 	 	 end
 	 	else
 	 	 begin
 	 	 	RdData_Valid <= 1'b0;
 	 	 end
 	 end
 end


assign REG0 = Memory[0];
assign REG1 = Memory[1];
assign REG2 = Memory[2];
assign REG3 = Memory[3];


 endmodule
