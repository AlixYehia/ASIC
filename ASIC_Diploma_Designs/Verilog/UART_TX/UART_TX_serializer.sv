module UART_TX_serializer (
	input 	wire 			CLK,
	input 	wire 			RST,
	input 	wire 			Data_Valid,
	input 	wire 	[7:0]	P_DATA,
	input 	wire 			ser_en,
	output	reg 			ser_done,
	output 	reg 			S_DATA
	);

reg 	[2:0] 	counter;
reg 	[7:0]	parallel_data;  // 8-bit register


always@(posedge CLK or negedge RST)
 begin
    if(!RST)
        begin
            S_DATA <= 1'b1;
            counter <= 3'b000;
            ser_done <= 1'b0;  // Clear ser_done on reset
        end
    else if (Data_Valid)
        begin
            parallel_data <= P_DATA;
            counter <= 3'b000;
            ser_done <= 1'b0; 
        end
    else if (ser_en && counter != 3'd7)
        begin
            {parallel_data[6:0], S_DATA} <= parallel_data;
            counter <= counter + 1'b1;
            ser_done <= 1'b0;  
        end
    else if (counter == 3'd7)
        begin
            ser_done <= 1'b1;  // Set ser_done when all bits are serialized
            counter <= 3'b000; // Reset counter after serialization
        end
 end


endmodule