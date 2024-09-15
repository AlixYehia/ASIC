module Decoder (
	input 	wire	[3:2]	ALU_FUN,
	output  reg 			Arith_Enable,
	output 	reg 			Logic_Enable,
	output 	reg				CMP_Enable,
	output 	reg 			Shift_Enable
	);


reg [3:0] block_enable; 

	
always@(*)
 begin
 	case (ALU_FUN)
 	2'b00 : begin
 		block_enable = 4'b1000;
 	end

 	2'b01 : begin
 		block_enable = 4'b0100;
 	end

 	2'b10 : begin
 		block_enable = 4'b0010;
 	end

 	2'b11 : begin
 		block_enable = 4'b0001;
 	end

 	endcase

 end


always@(*)
 begin
 	Arith_Enable = block_enable[3];
 	Logic_Enable = block_enable[2];
 	CMP_Enable   = block_enable[1];
 	Shift_Enable = block_enable[0];
 end


endmodule