
// ************************************************************* //
// Author : Ali Yehia Abdelmonem
// Date   : 2024-10-5
// ************************************************************* //

module UART_RX_FSM (
	input	wire				CLK,
	input	wire				RST,
	input 	wire                RX_IN,
	input 	wire 				PAR_EN,
	input	wire	[5:0]		Prescale,
	input	wire 	[4:0]		edge_cnt,
	input 	wire 	[3:0]		bit_cnt,
	input 	wire 				par_err,
	input 	wire				strt_glitch,
	input	wire				stp_err,
	output 	reg					dat_samp_en,
	output	reg					enable,
	output 	reg					deser_en,
	output	reg					stp_chk_en,
	output	reg 				strt_chk_en,
	output	reg					par_chk_en,
	output	reg					data_valid
	);

// gray state encoding
/*
parameter 	[2:0]		IDLE        = 3'b000,
						START       = 3'b001,
						DATA        = 3'b011,
						PARITY      = 3'b010,
						STOP        = 3'b110,
						VALID_CHECK = 3'b111;

reg			[2:0]		current_state, next_state;
*/
typedef enum bit [2:0] {
		IDLE        = 3'b000,
		START       = 3'b001,
		DATA        = 3'b011,
		PARITY      = 3'b010,
		STOP        = 3'b110,
		VALID_CHECK = 3'b111
} state;						

state 	current_state, next_state;


// state transition
always@(posedge CLK or negedge RST) 
 begin
	if (!RST) 
	 begin
	  current_state = IDLE;		
	 end
	else 
	 begin
	  current_state = next_state;
	 end
 end


// next state and output logic
always@(*)
 begin
	dat_samp_en = 1'b0;
	enable      = 1'b0;
	deser_en    = 1'b0;
	stp_chk_en  = 1'b0;
	strt_chk_en = 1'b0;
	par_chk_en  = 1'b0;
	data_valid  = 1'b0;
 	case (current_state)
 	 IDLE : begin
 	 		 if (RX_IN == 1'b0)
 	 		  begin
 	 		   next_state = START;
 	 		   strt_chk_en = 1'b1;
 	 		  end
 	 		 else 
 	 		  begin
 	 		   next_state = IDLE;
 	 		  end
 	 		end 
 	 START : begin
 	 		  if (strt_glitch)
 	 		   begin
 	 		   	next_state = IDLE;
 	 		   end
 	 		  else if (bit_cnt == 0 && edge_cnt != (Prescale-1))
 	 		   begin
 	 		   	next_state = START;
 	 		   	strt_chk_en = 1'b1;
 	 		    dat_samp_en = 1'b1;
 	 		    enable = 1'b1;
 	 		   end
 	 		  else 
 	 		   begin
 	 		    next_state = DATA;
 	 		    deser_en = 1'b1;
 	 		    dat_samp_en = 1'b1;
 	 		    enable = 1'b1;
 	 		   end
 	 		 end
 	 DATA : begin
 	 		 if (bit_cnt == 8 && edge_cnt == (Prescale-1))
 	 		  begin
	 	 		 if (PAR_EN)
	 	 		  begin 	 		  	
	 		  	 	next_state = PARITY;
	 		  	 	par_chk_en = 1'b1;
	 		  	 	dat_samp_en = 1'b1;
	 		   		enable = 1'b1;
	 	 		  end
	 		  	 else 
	 		  	  begin
	 		  		next_state = STOP;
	 		  		stp_chk_en = 1'b1;
	 		   	    dat_samp_en = 1'b1;
	 		        enable = 1'b1;
	 		  	  end
	 		   end
	 		  else
	 		   begin
	 		   	next_state = DATA;
 	 		    deser_en = 1'b1;
 	 		    dat_samp_en = 1'b1;
 	 		    enable = 1'b1;
	 		   end
 	 		end
 	 PARITY : begin
 	 		   if (bit_cnt == 9 && edge_cnt == (Prescale-1))
 	 			begin
 	 			 next_state = STOP;
 	 		  	 dat_samp_en = 1'b1;
 	 		     enable = 1'b1;
 	 		     stp_chk_en = 1'b1;
 	 			end
 	 		   else
 	 			begin
 	 			 next_state = PARITY;
 	 		  	 dat_samp_en = 1'b1;
 	 		     enable = 1'b1;
 	 		     par_chk_en = 1'b1;
 	 			end
 	 		  end
 	 STOP : begin
			  	case (PAR_EN)
			 	1'b0 : begin
	 		 		if (bit_cnt == 9 && edge_cnt == (Prescale-2))
	 		 		 begin
	 		 		   next_state = VALID_CHECK;
	 		 		   dat_samp_en = 1'b1;
	 		    	   enable = 1'b1;
	 		    	 end
	 		 		else
	 		 		 begin
	 		 		   next_state = STOP;
	 		 		   stp_chk_en = 1'b1;
	 		 		   dat_samp_en = 1'b1;
	 		    	   enable = 1'b1;
	 		 		 end
			 		   end
			 	1'b1 : begin
	 		 		if (bit_cnt == 10 && edge_cnt == (Prescale-2))
	 		 		 begin
	 		 		   next_state = VALID_CHECK;
	 		 		   dat_samp_en = 1'b1;
	 		    	   enable = 1'b1;
	 		 		 end
	 		 		else
	 		 		 begin
	 		 		   next_state = STOP;
	 		 		   stp_chk_en = 1'b1;
	 		 		   dat_samp_en = 1'b1;
	 		    	   enable = 1'b1;
	 		 		 end
			 		   end	
	 	        endcase	
 	 		end
 	 VALID_CHECK : begin
 	 				if (RX_IN == 1'b0)
		 	 		 begin
		 	 		  next_state = START;
		 	 		  strt_chk_en = 1'b1;
		 	 		 end
		 	 		else 
		 	 		 begin
		 	 		  next_state = IDLE;
		 	 		 end
 	 				if (par_err == 0 && stp_err == 0)
 	 				 begin
 	 				  data_valid = 1'b1;
 	 				 end
 	 				else
 	 				 begin
 	 				  data_valid = 1'b0;
 	 				 end
 	 			   end
 	 default : begin
 	 			next_state = IDLE;
 	 		   end
 	endcase
 end

endmodule
