module UART_TX_FSM (
	input 	wire 			Data_Valid,
	input 	wire 			PAR_EN,
	input 	wire 			ser_done,
	input 	wire 			CLK,
	input	wire 			RST,
	output 	reg 			ser_en,
	output 	reg 	[1:0]	mux_sel,
	output 	reg				busy
	);


/*
localparam 	[2:0]	IDLE   = 'b000,
					START  = 'b001,
					DATA   = 'b011,
					PARITY = 'b010,
					STOP   = 'b110;

reg 	[2:0]		current_state, next_state;
*/


typedef enum bit [1:0] {
		stop_bit    = 'b00,
		start_bit  	= 'b01,
		S_DATA  	= 'b11,
		par_bit 	= 'b10
} mux;

mux mux_sel_internal;


typedef enum bit [2:0] {
		IDLE   = 'b000,
		START  = 'b001,
		DATA   = 'b011,
		PARITY = 'b010,
		STOP   = 'b110
} state;

state current_state, next_state;


// State Transistion
always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 		current_state <= IDLE;
 	else
 		current_state <= next_state;
 end


// Next State & Output Logic 
always@(*)
 begin
	busy = 1'b0;
	ser_en = 1'b0;
	mux_sel_internal = stop_bit;
 	case (current_state)
 		IDLE : begin
 				if (!Data_Valid)
 					next_state = IDLE;
 				else
 					next_state = START;
 			   end 

 		START : begin
 				 next_state = DATA;
 				 ser_en = 1'b1;     // had to do it so that serializer doesn't get delayed by 1 clk
 				 busy = 1'b1;
				 mux_sel_internal = start_bit;
 				end

 		DATA  : begin
 				 busy = 1'b1;
 				 mux_sel_internal = S_DATA;
 				 ser_en = 1'b1;
 				 if (!ser_done)
 				  begin
 				  	next_state = DATA;
 				  end
 				 else if (PAR_EN)
 				  begin
 				  	next_state = PARITY;
 				  end
 				 else
 				  begin
 				 	next_state = STOP;
 				  end
 				end

 		PARITY : begin
 				  next_state = STOP;
 				  busy = 1'b1;
				  mux_sel_internal = par_bit;
 				 end

 		STOP : begin
 			    if (!Data_Valid)
 			     begin
 			     	next_state = IDLE;
 			     	busy = 1'b1;
 			     end
 			    else
 			   	begin
 			     	next_state = START;
 			     	busy = 1'b1;
 			   	end
 			   end
 		default : begin
 				   next_state = IDLE;
 				  end
 	endcase
 end


// Assign internal signal to the output port
always @(*) begin
	mux_sel = mux_sel_internal;
end


endmodule