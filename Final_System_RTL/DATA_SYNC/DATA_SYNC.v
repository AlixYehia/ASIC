module DATA_SYNC #(parameter NUM_STAGES = 2, BUS_WIDTH = 8) (
	input	wire	[BUS_WIDTH-1:0]		unsync_bus,
	input	wire						bus_enable,
	input	wire						CLK,
	input	wire						RST,
	output	reg		[BUS_WIDTH-1:0]		sync_bus,
	output	reg							enable_pulse
	);


reg	[NUM_STAGES-1:0] sync_reg;

reg enable_flop;

wire enable_pulse_comb;

reg [BUS_WIDTH-1:0] mux_select;


//----------- Synchronization flop ------------------ 

always @(posedge CLK or negedge RST) 
 begin
	if (!RST) 
	 begin
		sync_reg <= 'b0;	
	 end
	else
	 begin
		sync_reg <= {sync_reg[NUM_STAGES-2:0], bus_enable};
	 end
 end


//----------- Pulse generator --------------------

always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 	 begin
 	 	enable_flop <= 1'b0;
 	 end
 	else
 	 begin
 	 	enable_flop <= sync_reg[NUM_STAGES-1];
 	 end
 end


assign enable_pulse_comb = sync_reg[NUM_STAGES-1] && !enable_flop ;


//----------- Mux-select --------------------

always@(*)
 begin
 	if (enable_pulse_comb)
 	 begin
 	 	mux_select = unsync_bus;
 	 end
 	else
 	 begin
 	 	mux_select = sync_bus;
 	 end
 end


//----------- Synchronized bus --------------------

always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 	 begin
 	 	sync_bus <= 'b0;
 	 end
 	else
 	 begin
 	 	sync_bus <= mux_select;
 	 end
 end


//----------- Enable pulse --------------------

always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 	 begin
 	 	enable_pulse <= 1'b0;
 	 end
 	else
 	 begin
 	 	enable_pulse <= enable_pulse_comb;
 	 end
 end


endmodule