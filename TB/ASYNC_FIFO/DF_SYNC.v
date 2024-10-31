module DF_SYNC #(parameter NUM_STAGES = 2)(
  input   wire              CLK,
  input   wire              RST,
  input   wire    [3:0]     ptr,      // address pointer coming from read or write address generation modules
  output  reg     [3:0]     q2_ptr    // synchronized bit after passing double flip flops
  );


// since the adress is treated as a counter and gray coded so only one bit changes at a time therefore bit synchronizer technique can be used 
reg   [NUM_STAGES-1:0] q2_ptr_reg [3:0]; 

integer  i ;
					 

always @(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
     for (i=0; i<3; i=i+1)
      begin
        q2_ptr_reg[i] <= 'b0;
      end
   end
  else
   begin
    for (i=0; i<4; i=i+1)
     begin
       q2_ptr_reg[i] <= {q2_ptr_reg[i][NUM_STAGES-2:0], ptr[i]};
     end  
   end  
 end


always @(*)
 begin
  for (i=0; i<4; i=i+1)
   begin
     q2_ptr[i] = q2_ptr_reg[i][NUM_STAGES-1]; 
   end
 end  

endmodule