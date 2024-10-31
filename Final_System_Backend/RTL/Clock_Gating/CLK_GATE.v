
/////////////////////////////////////////////////////////////
/////////////////////// Clock Gating ////////////////////////
/////////////////////////////////////////////////////////////

module CLK_GATE (
input      test_en,
input      CLK_EN,
input      CLK,
output     GATED_CLK
);

/*

//internal connections
reg     Latch_Out ;

//latch (Level Sensitive Device)
always @(CLK or CLK_EN)
 begin
  if(!CLK)      // active low
   begin
    Latch_Out <= CLK_EN ;
   end
 end
 
 
// ANDING
assign  GATED_CLK = CLK && Latch_Out ;

*/


TLATNCAX12M U0_TLATNCAX12M (
.E(CLK_EN || test_mode),
.CK(CLK),
.ECK(GATED_CLK)
);






endmodule
