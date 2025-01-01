
// ************************************************************* //
// Author : Ali Yehia Abdelmonem
// Date   : 2024-10-10
// ************************************************************* //

module RST_SYNC #(parameter NUM_STAGES = 2) (
	input	wire		CLK,
	input	wire		RST,
	output	reg			SYNC_RST
	);

integer i;

reg [NUM_STAGES-1:0] sync_reg;

/*
always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 	 begin
 	 	sync_reg <= 'b0;
 	 end
 	else
 	 begin
 	  sync_reg[0] <= 1'b1;
 	  for (i=1; i<NUM_STAGES; i=i+1)
 	   begin
 	   	sync_reg[i] <= sync_reg[i-1];
 	   end
 	 end
 end
*/

always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 	 begin
 	 	sync_reg <= 'b0;
 	 end
 	else
 	 begin
 	   	sync_reg <= {sync_reg[NUM_STAGES-2:0], 1'b1};
 	 end
 end


always@(*)
 begin
 	SYNC_RST = sync_reg[NUM_STAGES-1];
 end


endmodule

