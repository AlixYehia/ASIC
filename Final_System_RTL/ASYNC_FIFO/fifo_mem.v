module fifo_mem #(
  parameter D_SIZE = 16 ,                       // data size
  parameter F_DEPTH = 8 ,                       // fifo depth
  parameter P_SIZE = 4                          // pointer width
)
  (   
   input                    w_clk,              // write domian operating clock
   input                    w_rstn,             // write domian active low reset       
   input                    w_full,             // fifo buffer full flag
   input                    w_inc,              // write control signal
   input   [P_SIZE-2:0]     w_addr,             // write address bus
   input   [P_SIZE-2:0]     r_addr,             // synchronized read pointer bus
   input   [D_SIZE-1:0]     w_data,             // write data bus
   output  [D_SIZE-1:0]     r_data              // read data bus

  );

reg [F_DEPTH-1:0] i ;

//FIFO Memory
reg [D_SIZE-1:0] FIFO_MEM [F_DEPTH-1:0] ;


// writing data
always @(posedge w_clk or negedge w_rstn)
 begin
  if(!w_rstn)
   begin 
    for(i=0;i<F_DEPTH;i=i+1) 
     FIFO_MEM[i] <= {D_SIZE{1'b0}} ;
   end
 else if (!w_full && w_inc)
    FIFO_MEM[w_addr] <= w_data ;
 end


// reading domain
assign r_data = FIFO_MEM[r_addr] ;

endmodule
