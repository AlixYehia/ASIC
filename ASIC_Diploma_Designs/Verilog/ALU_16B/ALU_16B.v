`timescale 10us/10ns

module ALU_16B (
	input   wire   [15:0]   A,
	input   wire   [15:0]   B,
	input   wire   [3:0]    ALU_FUN,
	input   wire            CLK,
	output  reg    [15:0]   ALU_OUT,
	output  reg             Carry_Flag,     // reg since inside always block
	output  reg             Arith_Flag,     // reg since inside always block
	output  wire            Logic_Flag,     // wire since inside assign statement 
	output  wire            CMP_Flag,       // wire since inside assign statement
	output  wire            Shift_Flag      // wire since inside assign statement
	);

always@(posedge CLK)
 begin
 	case (ALU_FUN)
 	4'b0000 : begin
 				{Carry_Flag, ALU_OUT} <= A + B; 		// Addition
 	          end 

 	4'b0001 : begin
 				{Carry_Flag, ALU_OUT} <= A - B;         // Subtraction
 		      end

 	4'b0010 : begin
 				ALU_OUT <= A * B;       				// Multiplication
 			  end

 	4'b0011 : begin
 				ALU_OUT <= A / B;       				// Divison
 			  end

 	4'b0100 : begin
 				ALU_OUT <= A & B;      				  	// Logical AND
			  end

	4'b0101 : begin
				ALU_OUT <= A | B;       				// Logical OR
			  end

	4'b0110 : begin
				ALU_OUT <= ~ (A & B);      				// Logical NAND
			  end

	4'b0111 : begin
				ALU_OUT <= ~ (A | B);      				// Logical NOR
			  end

	4'b1000 : begin
				ALU_OUT <= A ^ B;       				// Logical XOR
			  end

	4'b1001 : begin
				ALU_OUT <= A ~^ B;      				// Logical XNOR
			  end

	4'b1010 : begin
				if (A == B)             				// Equal
				 begin
				 	ALU_OUT <= 16'd1;
				 end
				else 
				 begin
					ALU_OUT <= 16'd0;
				 end
			  end

	4'b1011 : begin
				if (A > B)              // Greater than
				 begin
				 	ALU_OUT <= 16'd2;
				 end
				else
				 begin
				 	ALU_OUT <= 16'd0;
				 end
			  end

	4'b1100 : begin
				if (A < B)              // Less than
				 begin
				 	ALU_OUT <= 16'd3;
				 end
				else
				 begin
				 	ALU_OUT <= 16'd0;
				 end
			  end

	4'b1101 : begin
				ALU_OUT <= A >> 1;      // Logical Shift left
			  end

	4'b1110 : begin
				ALU_OUT <= A << 1;      // Logical Shift right
			  end

	default : begin
				ALU_OUT <= 16'b0;       
		      end
	endcase

 end


 /*always@(*)
  begin
  	if (ALU_FUN == 4'b0000 || ALU_FUN == 4'b0001)
  	 begin
  	 	if ( (A & B) | (A & ALU_FUN) | (B & ALU_FUN) )
  		 begin
  		 	Carry_Flag = 1'b1;
  		 end
  		else 
  		 begin
  		 	Carry_Flag = 1'b0;
  		 end
  	 end

  end*/
 

 always@(*)
  begin
  	if (ALU_FUN == 4'b0000 || ALU_FUN == 4'b0001 || ALU_FUN == 4'b0010 || ALU_FUN == 4'b0011)
  	 begin
  	 	Arith_Flag = 1'b1;
  	 end
  	else
  	 begin
  		Arith_Flag = 1'b0;	
  	 end
  end

assign Logic_Flag = (ALU_FUN == 4'b0100 || ALU_FUN == 4'b0101 || 
					 ALU_FUN == 4'b0110 || ALU_FUN == 4'b0111 ||
					 ALU_FUN == 4'b1000 || ALU_FUN == 4'b1001)   ? 1'b1 : 1'b0;

assign CMP_Flag = (ALU_FUN == 4'b1010 || ALU_FUN == 4'b1011 || ALU_FUN == 4'b1100) ? 1'b1 : 1'b0;

assign Shift_Flag = (ALU_FUN == 4'b1101 || ALU_FUN == 4'b1110) ? 1'b1 : 1'b0;

endmodule