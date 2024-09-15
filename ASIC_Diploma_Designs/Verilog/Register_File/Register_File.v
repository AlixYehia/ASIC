module Register_File (
	input	reg 	[15:0]		WrData,
	input	reg 	[2:0]		Adresss,
	input 	wire 				WrEn,
	input	wire 				RdEn,
	input 	wire 				CLK,
	input 	wire 				RST,
	output 	reg 	[15:0]		RdData	 
	);


	reg [15:0] Memory [7:0];


always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 	 begin
 	 	RdData <= 'd0;
 	 	Memory[0] <= 16'b0;
 	 	Memory[1] <= 16'b0;
 	 	Memory[2] <= 16'b0;
 	 	Memory[3] <= 16'b0;
 	 	Memory[4] <= 16'b0;
 	 	Memory[5] <= 16'b0;
 	 	Memory[6] <= 16'b0;
 	 	Memory[7] <= 16'b0;
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
 	 	 end
 	 end
 end


 endmodule