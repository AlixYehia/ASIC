module SYS_CTRL #( parameter ADDR_WIDTH = 4, DATA_WIDTH = 8) (
	input	wire							CLK,
	input	wire							RST,
	input	wire	[DATA_WIDTH-1:0]		UART_RX_DATA,   	// data from UART_RX after passing Data Synchronizer
	input	wire							UART_RX_Valid,		// data valid form UART_RX after Data Synchronizer
	input	wire							FIFO_FULL,
	output	reg		[DATA_WIDTH-1:0]		FIFO_WR_DATA,
	output	reg								FIFO_WR_INC,    
	input	wire	[DATA_WIDTH*2-1:0]		ALU_OUT,      
	input	wire							ALU_OUT_Valid, 
	output	reg								ALU_EN,  
	output	reg		[3:0]					ALU_FUN,     
	output	reg								CLKG_EN,    
	output	reg 							CLKDIV_EN,
	input	wire	[DATA_WIDTH-1:0]		Rd_Reg,       
	input	wire							Rd_Reg_Valid, 
	output	reg		[DATA_WIDTH-1:0]		Wr_Reg,   
	output	reg 	[ADDR_WIDTH-1:0]		Addr,  
	output	reg 							RdEn,  
	output	reg 							WrEn
	);


typedef enum bit [3:0] {
		IDLE        	= 4'b0000,
		RF_Wr_Addr 		= 4'b0001,
		RF_Wr_Data  	= 4'b0011,
		RF_Rd_Addr  	= 4'b0010,
		FIFO_WRITE_RF 	= 4'b0110,
		Operand_A   	= 4'b0111,
		Operand_B 		= 4'b0101,
		FUN_of_ALU  	= 4'b0100,
		ALU_Save_OUT    = 4'b1100,
		ALU_1st_Byte    = 4'b1101,
		ALU_2nd_Byte    = 4'b1111

} state;						

state 	current_state, next_state;


/*
localparam 	[3:0] 			IDLE        	= 4'b0000,
							RF_Wr_Addr 		= 4'b0001,
							RF_Wr_Data  	= 4'b0011,
							RF_Rd_Addr  	= 4'b0010,
							FIFO_WRITE_RF 	= 4'b0110,
							Operand_A   	= 4'b0111,
							Operand_B 		= 4'b0101,
							FUN_of_ALU  	= 4'b0100,
							ALU_Save_OUT   = 4'b1100,
							ALU_1st_Byte    = 4'b1101,
							ALU_2nd_Byte    = 4'b1111;


reg         [3:0]      current_state , 
                       next_state    ;
*/



// register to store the Read address till I collect all requirements to Write Data
reg [ADDR_WIDTH-1:0] 	ADDR_REG; 
reg 					ADDR_REG_CHECK;  // to be used as a condition to know when to save address

// register to store ALU out when all 3 requirements with me (ex. for ALU with operation:  OpA, OpB and Fun)
reg [DATA_WIDTH*2-1:0]	ALU_OUT_REG;
reg 					ALU_OUT_REG_CHECK;  // to be used as a condition to know when to save ALU OUT


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
 	next_state = IDLE;
 	// Enable signals
 	WrEn        = 1'b0;
 	RdEn        = 1'b0;
 	CLKG_EN     = 1'b0;
 	CLKDIV_EN   = 1'b1;
 	ALU_EN      = 1'b0;
 	FIFO_WR_INC = 1'b0;
 	// outputs
 	Addr          = 'b0;
 	Wr_Reg        = 'b0;
 	ALU_FUN       = 'b0;
 	FIFO_WR_DATA  = 'b0;
 	// storage registers check signals
 	ALU_OUT_REG_CHECK = 1'b0;
 	ADDR_REG_CHECK    = 1'b0;

 	case (current_state)
 	 IDLE : begin
 	 		 if (UART_RX_Valid)
 	 		  begin
 	 		   case (UART_RX_DATA)
 	 		    // Register File Write command
 	 		    'hAA : begin
 	 		  		    next_state = RF_Wr_Addr;
 	 		  		   end

 	 		    // Register File Read command
 	 		    'hBB : begin
 	 		  		    next_state = RF_Rd_Addr; 
 	 		  		   end

 	 		    // ALU Operation command with operand
 	 		    'hCC : begin
 	 		  		    next_state = Operand_A; 
 	 		  		   end

 	 		    // ALU Operation command with No operand
 	 		    'hDD : begin
 	 		  		    next_state = FUN_of_ALU; 
 	 		  		   end

 	 		  	default: begin
 	 		  			  next_state = IDLE;
 	 		  			 end
 	 		   endcase
 	 		  end
 	 		end
// ---------------- Register File Write command ---------------------- //
 	 RF_Wr_Addr : begin
 	 			   if (UART_RX_Valid)
 	 			    begin
 	 			     ADDR_REG_CHECK = 1'b1;
 	 			     next_state = RF_Wr_Data;
 	 			    end
 	 			   else
 	 			    begin
 	 			     ADDR_REG_CHECK = 1'b0;
 	 			     next_state = RF_Wr_Addr;
 	 			    end
 	 			  end

 	 RF_Wr_Data : begin
 	 			   if (UART_RX_Valid)
 	 			    begin
 	 			     WrEn = 1'b1;
 	 			     Addr = ADDR_REG;
 	 			     Wr_Reg = UART_RX_DATA;
 	 			     next_state = IDLE;	
 	 			    end
 	 			   else
 	 			    begin
 	 			     next_state = RF_Wr_Data;
 	 			    end
 	 			  end
///////////////////// Register File Read command //////////////////////
 	 RF_Rd_Addr : begin
 	 			   if (UART_RX_Valid)
 	 			    begin
 	 			     RdEn = 1;
 	 			     Addr = UART_RX_DATA[ADDR_WIDTH-1:0];
 	 			     next_state = FIFO_WRITE_RF; 	 			     
 	 			    end
 	 			   else
 	 			    begin
 	 			     next_state = RF_Rd_Addr;
 	 			    end
 	 			  end

  	 FIFO_WRITE_RF : begin
 	 			   if (Rd_Reg_Valid && !FIFO_FULL)
 	 			    begin
 	 			     FIFO_WR_DATA = Rd_Reg;
 	 			     FIFO_WR_INC = 1'b1;
 	 			     next_state = IDLE; 	 			     
 	 			    end
 	 			   else
 	 			    begin
 	 			     next_state = FIFO_WRITE_RF;
 	 			    end
 	 			  end
////////////// ALU Operation command with operand //////////////////////
 	 Operand_A : begin
 	 			   if (UART_RX_Valid)
 	 			    begin
 	 			     WrEn = 1'b1;
 	 			     Addr = 'b0;
 	 			     Wr_Reg = UART_RX_DATA;
 	 			     next_state = Operand_B;	
 	 			    end
 	 			   else
 	 			    begin
 	 			     next_state = Operand_A;
 	 			    end
 	 			 end

 	 Operand_B : begin
 	 			   if (UART_RX_Valid)
 	 			    begin
 	 			     WrEn = 1'b1;
 	 			     Addr = 'b1;
 	 			     Wr_Reg = UART_RX_DATA;
 	 			     next_state = FUN_of_ALU;	
 	 			    end
 	 			   else
 	 			    begin
 	 			     next_state = Operand_B;
 	 			    end
 	 			 end

 	 FUN_of_ALU : begin
 	 			   CLKG_EN = 1'b1;
 	 			   if (UART_RX_Valid)
 	 			    begin
 	 			     ALU_EN = 1'b1;
 	 			     ALU_FUN = UART_RX_DATA[3:0];
 	 			     next_state = ALU_Save_OUT;
 	 			    end
 	 			   else
 	 			    begin
 	 			     next_state = FUN_of_ALU;
 	 			    end
 	 			 end

 	 ALU_Save_OUT : begin
	 	 			  CLKG_EN = 1'b1;
	 	 			  if (ALU_OUT_Valid)
	 	 			   begin
	 	 			    ALU_OUT_REG_CHECK = 1'b1;
	 	 			    next_state = ALU_1st_Byte;
	 	 			   end
	 	 			  else
	 	 			   begin
	 	 			   	ALU_OUT_REG_CHECK = 1'b0;
	 	 			    next_state = ALU_Save_OUT;
	 	 			   end
 	 			     end

///////////////////// Since output of ALU is 2*Operand_Width so we have to send it on 2 frames since fifo is 8 bits ///////////////////
 	 ALU_1st_Byte : begin
 	 				 CLKG_EN = 1'b1;
	 	 			 if (!FIFO_FULL)
	 	 			  begin
	 	 			   FIFO_WR_INC = 1'b1;
	 	 			   FIFO_WR_DATA = ALU_OUT_REG[DATA_WIDTH-1:0];
	 	 			   next_state = ALU_2nd_Byte;
	 	 			  end
	 	 			 else
	 	 			  begin
	 	 			   next_state = ALU_1st_Byte;
	 	 			  end
	 	 			end

 	 ALU_2nd_Byte : begin
 	 				 CLKG_EN = 1'b1;
	 	 			 if (!FIFO_FULL)
	 	 			  begin
	 	 			   FIFO_WR_INC = 1'b1;
	 	 			   FIFO_WR_DATA = ALU_OUT_REG[2*DATA_WIDTH-1:DATA_WIDTH];
	 	 			   next_state = IDLE;
	 	 			  end
	 	 			 else
	 	 			  begin
	 	 			   next_state = ALU_2nd_Byte;
	 	 			  end
	 	 			end

 	 default : begin
 	 			next_state = IDLE;
 	 		   end
 	endcase
 end



always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 	 begin
 	 	ADDR_REG <= 'b0;
 	 end
 	else if (ADDR_REG_CHECK)
 	 begin
 	 	ADDR_REG <= UART_RX_DATA[ADDR_WIDTH-1:0];
 	 end
 end


always@(posedge CLK or negedge RST)
 begin
 	if (!RST)
 	 begin
 	 	ALU_OUT_REG <= 'b0;
 	 end
 	else if (ALU_OUT_REG_CHECK)
 	 begin
 	 	ALU_OUT_REG <= ALU_OUT;
 	 end
 end


endmodule