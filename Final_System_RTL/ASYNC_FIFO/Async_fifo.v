
module Async_fifo #(
  parameter D_SIZE = 16 ,                         // data size
  parameter F_DEPTH = 8  ,                        // fifo depth
  parameter P_SIZE = 4                            // pointer width
)
 (
   input                    i_w_clk,              // write domian operating clock
   input                    i_w_rstn,             // write domian active low reset  
   input                    i_w_inc,              // write control signal 
   input                    i_r_clk,              // read domian operating clock
   input                    i_r_rstn,             // read domian active low reset 
   input                    i_r_inc,              // read control signal
   input   [D_SIZE-1:0]     i_w_data,             // write data bus 
   output  [D_SIZE-1:0]     o_r_data,             // read data bus
   output                   o_full,               // fifo full flag
   output                   o_empty               // fifo empty flag

);


wire [P_SIZE-2:0] r_addr , w_addr ;
wire [P_SIZE-1:0] w2r_ptr , r2w_ptr ;
wire [P_SIZE-1:0] gray_w_ptr , gray_rd_ptr ;

 
fifo_mem #(.F_DEPTH(F_DEPTH), .D_SIZE(D_SIZE), .P_SIZE(P_SIZE) ) 
u_fifo_mem (
.w_clk(i_w_clk),              
.w_rstn(i_w_rstn),
.w_inc(i_w_inc),                             
.w_full(o_full),              
.w_addr(w_addr),            
.r_addr(r_addr),
.w_data(i_w_data),                        
.r_data(o_r_data)
); 

fifo_rd # (.P_SIZE(P_SIZE)) u_fifo_rd (
.r_clk(i_r_clk),              
.r_rstn(i_r_rstn),             
.r_inc(i_r_inc),              
.sync_wr_ptr(w2r_ptr),                
.rd_addr(r_addr),            
.gray_rd_ptr(gray_rd_ptr),        
.empty(o_empty)
);

BIT_SYNC #(.NUM_STAGES(2) , .BUS_WIDTH(P_SIZE)) u_w2r_sync (
.CLK(i_r_clk) ,
.RST(i_r_rstn) ,
.ASYNC(gray_w_ptr) ,
.SYNC(w2r_ptr)
);

fifo_wr # (.P_SIZE(P_SIZE)) u_fifo_wr (            
.w_clk(i_w_clk),              
.w_rstn(i_w_rstn),             
.w_inc(i_w_inc),            
.sync_rd_ptr(r2w_ptr),                
.w_addr(w_addr),            
.gray_w_ptr(gray_w_ptr),        
.full(o_full)
);               

BIT_SYNC #(.NUM_STAGES(2) , .BUS_WIDTH(P_SIZE)) u_r2w_sync
(
.CLK(i_w_clk) ,
.RST(i_w_rstn) ,
.ASYNC(gray_rd_ptr) ,
.SYNC(r2w_ptr)
);

endmodule
