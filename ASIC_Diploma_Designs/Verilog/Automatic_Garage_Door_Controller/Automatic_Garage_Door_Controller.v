module Automatic_Garage_Door_Controller (
    input      wire        Activate,
    input      wire        Up_Max,
    input      wire        Dn_Max,
    input      wire        CLK,
    input      wire        RST,
    output     reg         UP_M,
    output     reg         DN_M
    );


localparam	[1:0]	IDLE  = 2'b00,
					Mv_Up = 2'b01,
					Mv_Dn = 2'b11;

reg		[1:0]		current_state,
					next_state;


// state transition
always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 	 begin
 	 	current_state <= IDLE;
 	 end
 	else
 	 begin
 	 	current_state <= next_state;
 	 end
 end



// next state logic
always@(*)
 begin
 	case (current_state)
 	IDLE : begin
 			if (Activate && Up_Max && !Dn_Max)
			 	next_state = Mv_Dn;
			else if (Activate && !Up_Max && Dn_Max)
			 	next_state = Mv_Up;
			else
				next_state = IDLE;
 		   end

 	Mv_Dn : begin
 		     if (Dn_Max)     
 			 	next_state = IDLE;
 			 else if (!Activate && !Dn_Max)  // to handle the case that the user removed his hand from push button the door must be fully closed first before changing to next state
 			 	next_state = Mv_Dn;
 			 else
 			 	next_state = Mv_Dn;
 			end

 	Mv_Up : begin
 		     if (Up_Max)
 			 	next_state = IDLE;
 			 else if (!Activate && !Mv_Up)  // to handle the case that the user removed his hand from push button the door must be fully opened first before changing to next state
 			 	next_state = Mv_Dn;
 			 else
 			 	next_state = Mv_Up;
 			end

 	default : begin
 				next_state = IDLE;
 			  end
 	endcase
 end


// output logic
always@(*)
 begin
 	case (current_state)
 		IDLE : begin
 				UP_M = 1'b0;
 				DN_M = 1'b0;
 			   end

 		Mv_Dn : begin
 				 UP_M = 1'b0;
 				 DN_M = 1'b1;
 			    end

 		Mv_Up : begin
 				 UP_M = 1'b1;
 				 DN_M = 1'b0;
 			    end

 		default : begin
 				   UP_M = 1'b0;
 				   DN_M = 1'b0;
 				  end
 	endcase
 end

endmodule