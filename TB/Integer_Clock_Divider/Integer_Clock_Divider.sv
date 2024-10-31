
// ************************************************************* //
// Author : Ali Yehia Abdelmonem
// Date   : 2024-9-18
// ************************************************************* //

module Integer_Clock_Divider (
	input 	wire 			i_ref_clk,
	input 	wire 			i_rst_n,
	input 	wire			i_clk_en,
	input 	wire	[7:0]	i_div_ratio,
	output 	reg 			o_div_clk
);

reg 	[6:0]	counter;      // 7-bit counter (counts up to half of i_div_ratio)
wire 	[6:0]	half_period;
reg 			flag;
reg				gen_clk;
wire			odd;
wire			CLK_DIV_EN; 

// Enable clock division when i_div_ratio is not 0 or 1 and i_clk_en is high
assign CLK_DIV_EN = i_clk_en && (i_div_ratio != 'd0) && (i_div_ratio != 'd1);

// Check if i_div_ratio is odd or even
assign odd = i_div_ratio[0];
assign half_period = i_div_ratio >> 1;  // Half of the division ratio


always @(posedge i_ref_clk or negedge i_rst_n)
 begin
	if (!i_rst_n)
	begin
		o_div_clk <= 1'b0;
		counter <= 7'b0;
		flag <= 1'b0;
		gen_clk <= 1'b0;
	end
	else if (CLK_DIV_EN)
	 begin
		if ( odd && ( (counter == half_period-1) && gen_clk) || ( (counter == half_period) && !gen_clk ) )  // Ensures that for odd division ratios, the low-level cycle is twice the high-level cycle
		 begin
			gen_clk <= ~gen_clk;
			counter <= 7'b0;
			flag <= ~flag;
		 end
		else if ( !odd && (counter == half_period-1) )
		 begin
			gen_clk <= ~gen_clk; 
			counter <= 7'b0;  
		 end
		else
		 begin
			counter <= counter + 1'b1;
		 end
	 end
 end


// mux to select wether to output reference clock or generated divided clock
always@(*)
 begin
 	if (!CLK_DIV_EN)
 	 begin
 	 	o_div_clk <= i_ref_clk;
 	 end
 	else
 	 begin
 	 	o_div_clk <= gen_clk;	
 	 end	
 end


endmodule

