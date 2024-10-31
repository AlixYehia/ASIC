
// ************************************************************* //
// Author : Ali Yehia Abdelmonem
// Date   : 2024-8-15
// ************************************************************* //

module ALU_16B #( parameter OPER_WIDTH = 8, OUT_WIDTH = OPER_WIDTH*2) (
input		wire		[OPER_WIDTH-1:0]		A,
input		wire		[OPER_WIDTH-1:0]		B,
input		wire												EN,
input		wire		[3:0]								ALU_FUN,
input		wire												CLK,
input		wire												RST,
output	reg			[OUT_WIDTH-1:0]			ALU_OUT,
output	reg													OUT_VALID
	);


//internal_signals  
reg [OUT_WIDTH-1:0] ALU_OUT_Comb;
reg                 OUT_VALID_Comb;


always @(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
    ALU_OUT   <= 'b0;
    OUT_VALID <= 1'b0;	
   end
  else 
   begin  
    ALU_OUT   <= ALU_OUT_Comb;
    OUT_VALID <= OUT_VALID_Comb;
   end	
 end 


always@(*)
 begin
   OUT_VALID_Comb = 1'b0;
   ALU_OUT_Comb   = 'b0;
   if(EN)
    begin
     OUT_VALID_Comb = 1'b1;
		 case (ALU_FUN)
		 4'b0000 : begin
		 						ALU_OUT_Comb = A + B; 							// Addition
		           end 

		4'b0001 : begin
		 						ALU_OUT_Comb = A - B;       				// Subtraction
			      	end

		 4'b0010 : begin
								ALU_OUT_Comb = A * B;       				// Multiplication
	   			  	 end
	 
		 4'b0011 : begin
		 						ALU_OUT_Comb = A / B;       				// Divison
		 	 	   		 end

		 4'b0100 : begin
								ALU_OUT_Comb = A & B;      				  // Logical AND
				   		 end

		 4'b0101 : begin
								ALU_OUT_Comb = A | B;       				// Logical OR
			  	  	 end

		 4'b0110 : begin
								ALU_OUT_Comb = ~ (A & B);      			// Logical NAND
				   		 end

		 4'b0111 : begin
								ALU_OUT_Comb = ~ (A | B);      			// Logical NOR
			 	   		 end

		 4'b1000 : begin
								ALU_OUT_Comb = A ^ B;       				// Logical XOR
				   		 end

		 4'b1001 : begin
								ALU_OUT_Comb = ~(A ^ B);      			// Logical XNOR
				   		 end

		 4'b1010 : begin
								if (A == B)             						// Equal
								 begin
								  ALU_OUT_Comb = 'd1;
								 end
								else 
								 begin
								  ALU_OUT_Comb = 'd0;
								 end
				   		 end

		 4'b1011 : begin
								if (A > B)              						// Greater than
								 begin
								  ALU_OUT_Comb = 'd2;
								 end
								else
								 begin
								  ALU_OUT_Comb = 'd0;
								 end
				   		 end

		 4'b1100 : begin
						    if (A < B)              						// Less than
							   begin
							    ALU_OUT_Comb = 'd3;
							   end
							  else
							   begin
							    ALU_OUT_Comb = 'd0;
							   end
				   	   end

		 4'b1101 : begin
						    ALU_OUT_Comb = A >> 1;      				// Logical Shift left
						   end

		 4'b1110 : begin
								ALU_OUT_Comb = A << 1;     			 		// Logical Shift right
						   end

		 default : begin
								ALU_OUT_Comb = 'b0;
							 end
		 endcase
		end
   else 
    begin
   	 OUT_VALID_Comb = 1'b0;
    end
 end


endmodule