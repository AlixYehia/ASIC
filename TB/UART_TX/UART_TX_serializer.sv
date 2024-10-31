
// ************************************************************* //
// Author : Ali Yehia Abdelmonem
// Date   : 2024-9-24
// ************************************************************* //

module UART_TX_serializer (
	input 	wire 			CLK,
	input 	wire 			RST,
	input 	wire 			Data_Valid,
    input   wire            busy,
	input 	wire 	[7:0]	P_DATA,
	input 	wire 			ser_en,
	output	reg 			ser_done,
	output 	reg 			S_DATA
	);

reg 	[3:0] 	counter;
reg 	[7:0]	parallel_data;  // 8-bit register


// isolate input
always@(posedge CLK or negedge RST)
 begin
    if (!RST)
        begin
            parallel_data <= 8'b0;
            S_DATA <= 1'b1;
            counter <= 4'b000;
            ser_done <= 1'b0;
        end
    else if (Data_Valid && !busy)
        begin
            parallel_data <= P_DATA;   
        end
    else if (ser_en && counter != 4'd8)
        begin
            {parallel_data[6:0], S_DATA} <= parallel_data;
            counter <= counter + 1'b1;
            if (counter == 4'd7)
             ser_done <= 1'b1;
            else
             ser_done <= 1'b0;  
        end
    else if (counter == 4'd8)
        begin
            ser_done <= 1'b0;  // Set ser_done when all bits are serialized
            counter <= 3'b000; // Reset counter after serialization
        end

 end

endmodule
