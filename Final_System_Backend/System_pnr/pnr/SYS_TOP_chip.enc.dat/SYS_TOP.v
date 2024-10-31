/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sun Oct 27 03:01:30 2024
/////////////////////////////////////////////////////////////
module mux2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   AO2B2X2M U1 (.Y(OUT), 
	.B1(IN_1), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module mux2X1_6 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   AO2B2X4M U1 (.Y(OUT), 
	.B1(IN_1), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module mux2X1_5 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   AO2B2X2M U1 (.Y(OUT), 
	.B1(IN_1), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module mux2X1_4 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   AO2B2X4M U1 (.Y(OUT), 
	.B1(IN_1), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module mux2X1_3 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   AO2B2X2M U1 (.Y(OUT), 
	.B1(IN_1), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module mux2X1_2 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   AO2B2X2M U1 (.Y(OUT), 
	.B1(IN_1), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module mux2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   AO2B2X2M U1 (.Y(OUT), 
	.B1(IN_1), 
	.B0(SEL), 
	.A1N(SEL), 
	.A0(IN_0));
endmodule

module RST_SYNC_NUM_STAGES2_test_0 (
	CLK, 
	RST, 
	SYNC_RST, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
   SDFFRQX1M \sync_reg_reg[1]  (.SI(\sync_reg[0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(\sync_reg[0] ), 
	.CK(CLK));
endmodule

module RST_SYNC_NUM_STAGES2_test_1 (
	CLK, 
	RST, 
	SYNC_RST, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
   SDFFRQX1M \sync_reg_reg[1]  (.SI(\sync_reg[0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(\sync_reg[0] ), 
	.CK(CLK));
endmodule

module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 (
	unsync_bus, 
	bus_enable, 
	CLK, 
	RST, 
	sync_bus, 
	enable_pulse, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN19_SE);
   input [7:0] unsync_bus;
   input bus_enable;
   input CLK;
   input RST;
   output [7:0] sync_bus;
   output enable_pulse;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN19_SE;

   // Internal wires
   wire enable_flop;
   wire n1;
   wire n4;
   wire n6;
   wire n8;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n22;
   wire [1:0] sync_reg;

   assign test_so = sync_reg[1] ;

   SDFFRQX2M enable_flop_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(enable_flop), 
	.D(sync_reg[1]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1]  (.SI(sync_reg[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_reg[1]), 
	.D(sync_reg[0]), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[6]  (.SI(sync_bus[5]), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(sync_bus[6]), 
	.D(n16), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[5]  (.SI(sync_bus[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[5]), 
	.D(n14), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[4]  (.SI(sync_bus[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[4]), 
	.D(n12), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[7]  (.SI(sync_bus[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[7]), 
	.D(n18), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[3]  (.SI(sync_bus[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[3]), 
	.D(n10), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[2]  (.SI(sync_bus[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[2]), 
	.D(n8), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[0]  (.SI(enable_pulse), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(sync_bus[0]), 
	.D(n4), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[1]  (.SI(sync_bus[0]), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(sync_bus[1]), 
	.D(n6), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(sync_bus[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_reg[0]), 
	.D(bus_enable), 
	.CK(CLK));
   SDFFRQX2M enable_pulse_reg (.SI(enable_flop), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(enable_pulse), 
	.D(n22), 
	.CK(CLK));
   INVX2M U3 (.Y(n22), 
	.A(n1));
   NAND2BX2M U4 (.Y(n1), 
	.B(sync_reg[1]), 
	.AN(enable_flop));
   AO22X1M U5 (.Y(n4), 
	.B1(n1), 
	.B0(sync_bus[0]), 
	.A1(n22), 
	.A0(unsync_bus[0]));
   AO22X1M U6 (.Y(n6), 
	.B1(n1), 
	.B0(sync_bus[1]), 
	.A1(n22), 
	.A0(unsync_bus[1]));
   AO22X1M U7 (.Y(n8), 
	.B1(n1), 
	.B0(sync_bus[2]), 
	.A1(n22), 
	.A0(unsync_bus[2]));
   AO22X1M U8 (.Y(n10), 
	.B1(n1), 
	.B0(sync_bus[3]), 
	.A1(n22), 
	.A0(unsync_bus[3]));
   AO22X1M U9 (.Y(n12), 
	.B1(n1), 
	.B0(sync_bus[4]), 
	.A1(n22), 
	.A0(unsync_bus[4]));
   AO22X1M U10 (.Y(n14), 
	.B1(n1), 
	.B0(sync_bus[5]), 
	.A1(n22), 
	.A0(unsync_bus[5]));
   AO22X1M U11 (.Y(n16), 
	.B1(n1), 
	.B0(sync_bus[6]), 
	.A1(n22), 
	.A0(unsync_bus[6]));
   AO22X1M U12 (.Y(n18), 
	.B1(n1), 
	.B0(sync_bus[7]), 
	.A1(n22), 
	.A0(unsync_bus[7]));
endmodule

module fifo_mem_D_SIZE8_F_DEPTH8_P_SIZE4_test_1 (
	w_clk, 
	w_rstn, 
	w_full, 
	w_inc, 
	w_addr, 
	r_addr, 
	w_data, 
	r_data, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN3_REF_CLK_scan, 
	FE_OFN11_SYNC_RST_REF_scan, 
	FE_OFN20_SE);
   input w_clk;
   input w_rstn;
   input w_full;
   input w_inc;
   input [2:0] w_addr;
   input [2:0] r_addr;
   input [7:0] w_data;
   output [7:0] r_data;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN3_REF_CLK_scan;
   input FE_OFN11_SYNC_RST_REF_scan;
   input FE_OFN20_SE;

   // Internal wires
   wire N9;
   wire N10;
   wire N11;
   wire \FIFO_MEM[7][7] ;
   wire \FIFO_MEM[7][6] ;
   wire \FIFO_MEM[7][5] ;
   wire \FIFO_MEM[7][4] ;
   wire \FIFO_MEM[7][3] ;
   wire \FIFO_MEM[7][2] ;
   wire \FIFO_MEM[7][1] ;
   wire \FIFO_MEM[7][0] ;
   wire \FIFO_MEM[6][7] ;
   wire \FIFO_MEM[6][6] ;
   wire \FIFO_MEM[6][5] ;
   wire \FIFO_MEM[6][4] ;
   wire \FIFO_MEM[6][3] ;
   wire \FIFO_MEM[6][2] ;
   wire \FIFO_MEM[6][1] ;
   wire \FIFO_MEM[6][0] ;
   wire \FIFO_MEM[5][7] ;
   wire \FIFO_MEM[5][6] ;
   wire \FIFO_MEM[5][5] ;
   wire \FIFO_MEM[5][4] ;
   wire \FIFO_MEM[5][3] ;
   wire \FIFO_MEM[5][2] ;
   wire \FIFO_MEM[5][1] ;
   wire \FIFO_MEM[5][0] ;
   wire \FIFO_MEM[4][7] ;
   wire \FIFO_MEM[4][6] ;
   wire \FIFO_MEM[4][5] ;
   wire \FIFO_MEM[4][4] ;
   wire \FIFO_MEM[4][3] ;
   wire \FIFO_MEM[4][2] ;
   wire \FIFO_MEM[4][1] ;
   wire \FIFO_MEM[4][0] ;
   wire \FIFO_MEM[3][7] ;
   wire \FIFO_MEM[3][6] ;
   wire \FIFO_MEM[3][5] ;
   wire \FIFO_MEM[3][4] ;
   wire \FIFO_MEM[3][3] ;
   wire \FIFO_MEM[3][2] ;
   wire \FIFO_MEM[3][1] ;
   wire \FIFO_MEM[3][0] ;
   wire \FIFO_MEM[2][7] ;
   wire \FIFO_MEM[2][6] ;
   wire \FIFO_MEM[2][5] ;
   wire \FIFO_MEM[2][4] ;
   wire \FIFO_MEM[2][3] ;
   wire \FIFO_MEM[2][2] ;
   wire \FIFO_MEM[2][1] ;
   wire \FIFO_MEM[2][0] ;
   wire \FIFO_MEM[1][7] ;
   wire \FIFO_MEM[1][6] ;
   wire \FIFO_MEM[1][5] ;
   wire \FIFO_MEM[1][4] ;
   wire \FIFO_MEM[1][3] ;
   wire \FIFO_MEM[1][2] ;
   wire \FIFO_MEM[1][1] ;
   wire \FIFO_MEM[1][0] ;
   wire \FIFO_MEM[0][7] ;
   wire \FIFO_MEM[0][6] ;
   wire \FIFO_MEM[0][5] ;
   wire \FIFO_MEM[0][4] ;
   wire \FIFO_MEM[0][3] ;
   wire \FIFO_MEM[0][2] ;
   wire \FIFO_MEM[0][1] ;
   wire \FIFO_MEM[0][0] ;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;

   assign N9 = r_addr[0] ;
   assign N10 = r_addr[1] ;
   assign N11 = r_addr[2] ;
   assign test_so = \FIFO_MEM[7][7]  ;

   SDFFRQX2M \FIFO_MEM_reg[5][7]  (.SI(\FIFO_MEM[5][6] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[5][7] ), 
	.D(n133), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[5][6]  (.SI(\FIFO_MEM[5][5] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[5][6] ), 
	.D(n132), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[5][5]  (.SI(\FIFO_MEM[5][4] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[5][5] ), 
	.D(n131), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[5][4]  (.SI(\FIFO_MEM[5][3] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[5][4] ), 
	.D(n130), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[5][3]  (.SI(\FIFO_MEM[5][2] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[5][3] ), 
	.D(n129), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[5][2]  (.SI(\FIFO_MEM[5][1] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[5][2] ), 
	.D(n128), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[5][1]  (.SI(\FIFO_MEM[5][0] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[5][1] ), 
	.D(n127), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[5][0]  (.SI(\FIFO_MEM[4][7] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[5][0] ), 
	.D(n126), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[1][7]  (.SI(\FIFO_MEM[1][6] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[1][7] ), 
	.D(n101), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[1][6]  (.SI(\FIFO_MEM[1][5] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[1][6] ), 
	.D(n100), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[1][5]  (.SI(\FIFO_MEM[1][4] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[1][5] ), 
	.D(n99), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[1][4]  (.SI(\FIFO_MEM[1][3] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[1][4] ), 
	.D(n98), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[1][3]  (.SI(\FIFO_MEM[1][2] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[1][3] ), 
	.D(n97), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[1][2]  (.SI(\FIFO_MEM[1][1] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[1][2] ), 
	.D(n96), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[1][1]  (.SI(\FIFO_MEM[1][0] ), 
	.SE(FE_OFN20_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[1][1] ), 
	.D(n95), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[1][0]  (.SI(\FIFO_MEM[0][7] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[1][0] ), 
	.D(n94), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[7][7]  (.SI(\FIFO_MEM[7][6] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[7][7] ), 
	.D(n149), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[7][6]  (.SI(\FIFO_MEM[7][5] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[7][6] ), 
	.D(n148), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[7][5]  (.SI(\FIFO_MEM[7][4] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[7][5] ), 
	.D(n147), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[7][4]  (.SI(\FIFO_MEM[7][3] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[7][4] ), 
	.D(n146), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[7][3]  (.SI(\FIFO_MEM[7][2] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[7][3] ), 
	.D(n145), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[7][2]  (.SI(\FIFO_MEM[7][1] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[7][2] ), 
	.D(n144), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[7][1]  (.SI(\FIFO_MEM[7][0] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[7][1] ), 
	.D(n143), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[7][0]  (.SI(\FIFO_MEM[6][7] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[7][0] ), 
	.D(n142), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[3][7]  (.SI(\FIFO_MEM[3][6] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[3][7] ), 
	.D(n117), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[3][6]  (.SI(\FIFO_MEM[3][5] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[3][6] ), 
	.D(n116), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[3][5]  (.SI(\FIFO_MEM[3][4] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[3][5] ), 
	.D(n115), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[3][4]  (.SI(\FIFO_MEM[3][3] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[3][4] ), 
	.D(n114), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[3][3]  (.SI(\FIFO_MEM[3][2] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[3][3] ), 
	.D(n113), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[3][2]  (.SI(\FIFO_MEM[3][1] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[3][2] ), 
	.D(n112), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[3][1]  (.SI(\FIFO_MEM[3][0] ), 
	.SE(FE_OFN20_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[3][1] ), 
	.D(n111), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[3][0]  (.SI(\FIFO_MEM[2][7] ), 
	.SE(FE_OFN20_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[3][0] ), 
	.D(n110), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[6][7]  (.SI(\FIFO_MEM[6][6] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[6][7] ), 
	.D(n141), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[6][6]  (.SI(\FIFO_MEM[6][5] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[6][6] ), 
	.D(n140), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[6][5]  (.SI(\FIFO_MEM[6][4] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[6][5] ), 
	.D(n139), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[6][4]  (.SI(\FIFO_MEM[6][3] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[6][4] ), 
	.D(n138), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[6][3]  (.SI(\FIFO_MEM[6][2] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[6][3] ), 
	.D(n137), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[6][2]  (.SI(\FIFO_MEM[6][1] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[6][2] ), 
	.D(n136), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[6][1]  (.SI(\FIFO_MEM[6][0] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[6][1] ), 
	.D(n135), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[6][0]  (.SI(\FIFO_MEM[5][7] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[6][0] ), 
	.D(n134), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[2][7]  (.SI(\FIFO_MEM[2][6] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[2][7] ), 
	.D(n109), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[2][6]  (.SI(\FIFO_MEM[2][5] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[2][6] ), 
	.D(n108), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[2][5]  (.SI(\FIFO_MEM[2][4] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[2][5] ), 
	.D(n107), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[2][4]  (.SI(\FIFO_MEM[2][3] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[2][4] ), 
	.D(n106), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[2][3]  (.SI(\FIFO_MEM[2][2] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[2][3] ), 
	.D(n105), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[2][2]  (.SI(\FIFO_MEM[2][1] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[2][2] ), 
	.D(n104), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[2][1]  (.SI(\FIFO_MEM[2][0] ), 
	.SE(FE_OFN20_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[2][1] ), 
	.D(n103), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[2][0]  (.SI(\FIFO_MEM[1][7] ), 
	.SE(FE_OFN20_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[2][0] ), 
	.D(n102), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[4][7]  (.SI(\FIFO_MEM[4][6] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[4][7] ), 
	.D(n125), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[4][6]  (.SI(\FIFO_MEM[4][5] ), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[4][6] ), 
	.D(n124), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[4][5]  (.SI(\FIFO_MEM[4][4] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[4][5] ), 
	.D(n123), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[4][4]  (.SI(\FIFO_MEM[4][3] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[4][4] ), 
	.D(n122), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[4][3]  (.SI(\FIFO_MEM[4][2] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[4][3] ), 
	.D(n121), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[4][2]  (.SI(\FIFO_MEM[4][1] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[4][2] ), 
	.D(n120), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[4][1]  (.SI(\FIFO_MEM[4][0] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[4][1] ), 
	.D(n119), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[4][0]  (.SI(\FIFO_MEM[3][7] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[4][0] ), 
	.D(n118), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[0][7]  (.SI(\FIFO_MEM[0][6] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[0][7] ), 
	.D(n93), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[0][6]  (.SI(\FIFO_MEM[0][5] ), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(\FIFO_MEM[0][6] ), 
	.D(n92), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[0][5]  (.SI(\FIFO_MEM[0][4] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[0][5] ), 
	.D(n91), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[0][4]  (.SI(\FIFO_MEM[0][3] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[0][4] ), 
	.D(n90), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[0][3]  (.SI(\FIFO_MEM[0][2] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[0][3] ), 
	.D(n89), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[0][2]  (.SI(\FIFO_MEM[0][1] ), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[0][2] ), 
	.D(n88), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[0][1]  (.SI(\FIFO_MEM[0][0] ), 
	.SE(FE_OFN20_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[0][1] ), 
	.D(n87), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \FIFO_MEM_reg[0][0]  (.SI(test_si), 
	.SE(FE_OFN20_SE), 
	.RN(w_rstn), 
	.Q(\FIFO_MEM[0][0] ), 
	.D(n86), 
	.CK(w_clk));
   NOR2BX2M U76 (.Y(n80), 
	.B(w_full), 
	.AN(w_inc));
   NAND3X2M U79 (.Y(n81), 
	.C(n82), 
	.B(n179), 
	.A(n178));
   NAND3X2M U80 (.Y(n75), 
	.C(n76), 
	.B(n179), 
	.A(n178));
   NAND3X2M U81 (.Y(n79), 
	.C(w_addr[1]), 
	.B(n76), 
	.A(w_addr[0]));
   NAND3X2M U82 (.Y(n77), 
	.C(w_addr[0]), 
	.B(n179), 
	.A(n76));
   NOR2BX2M U83 (.Y(n76), 
	.B(w_addr[2]), 
	.AN(n80));
   OAI2BB2X1M U84 (.Y(n86), 
	.B1(n170), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[0][0] ));
   OAI2BB2X1M U85 (.Y(n87), 
	.B1(n171), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[0][1] ));
   OAI2BB2X1M U86 (.Y(n88), 
	.B1(n172), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[0][2] ));
   OAI2BB2X1M U87 (.Y(n89), 
	.B1(n173), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[0][3] ));
   OAI2BB2X1M U88 (.Y(n90), 
	.B1(n174), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[0][4] ));
   OAI2BB2X1M U89 (.Y(n91), 
	.B1(n175), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[0][5] ));
   OAI2BB2X1M U90 (.Y(n92), 
	.B1(n176), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[0][6] ));
   OAI2BB2X1M U91 (.Y(n93), 
	.B1(n177), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\FIFO_MEM[0][7] ));
   OAI2BB2X1M U92 (.Y(n110), 
	.B1(n79), 
	.B0(n170), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[3][0] ));
   OAI2BB2X1M U93 (.Y(n111), 
	.B1(n79), 
	.B0(n171), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[3][1] ));
   OAI2BB2X1M U94 (.Y(n112), 
	.B1(n79), 
	.B0(n172), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[3][2] ));
   OAI2BB2X1M U95 (.Y(n113), 
	.B1(n79), 
	.B0(n173), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[3][3] ));
   OAI2BB2X1M U96 (.Y(n114), 
	.B1(n79), 
	.B0(n174), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[3][4] ));
   OAI2BB2X1M U97 (.Y(n115), 
	.B1(n79), 
	.B0(n175), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[3][5] ));
   OAI2BB2X1M U98 (.Y(n116), 
	.B1(n79), 
	.B0(n176), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[3][6] ));
   OAI2BB2X1M U99 (.Y(n117), 
	.B1(n79), 
	.B0(n177), 
	.A1N(n79), 
	.A0N(\FIFO_MEM[3][7] ));
   OAI2BB2X1M U100 (.Y(n94), 
	.B1(n77), 
	.B0(n170), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[1][0] ));
   OAI2BB2X1M U101 (.Y(n95), 
	.B1(n77), 
	.B0(n171), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[1][1] ));
   OAI2BB2X1M U102 (.Y(n96), 
	.B1(n77), 
	.B0(n172), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[1][2] ));
   OAI2BB2X1M U103 (.Y(n97), 
	.B1(n77), 
	.B0(n173), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[1][3] ));
   OAI2BB2X1M U104 (.Y(n98), 
	.B1(n77), 
	.B0(n174), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[1][4] ));
   OAI2BB2X1M U105 (.Y(n99), 
	.B1(n77), 
	.B0(n175), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[1][5] ));
   OAI2BB2X1M U106 (.Y(n100), 
	.B1(n77), 
	.B0(n176), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[1][6] ));
   OAI2BB2X1M U107 (.Y(n101), 
	.B1(n77), 
	.B0(n177), 
	.A1N(n77), 
	.A0N(\FIFO_MEM[1][7] ));
   OAI2BB2X1M U108 (.Y(n118), 
	.B1(n81), 
	.B0(n170), 
	.A1N(n81), 
	.A0N(\FIFO_MEM[4][0] ));
   OAI2BB2X1M U109 (.Y(n119), 
	.B1(n81), 
	.B0(n171), 
	.A1N(n81), 
	.A0N(\FIFO_MEM[4][1] ));
   OAI2BB2X1M U110 (.Y(n120), 
	.B1(n81), 
	.B0(n172), 
	.A1N(n81), 
	.A0N(\FIFO_MEM[4][2] ));
   OAI2BB2X1M U111 (.Y(n121), 
	.B1(n81), 
	.B0(n173), 
	.A1N(n81), 
	.A0N(\FIFO_MEM[4][3] ));
   OAI2BB2X1M U112 (.Y(n122), 
	.B1(n81), 
	.B0(n174), 
	.A1N(n81), 
	.A0N(\FIFO_MEM[4][4] ));
   OAI2BB2X1M U113 (.Y(n123), 
	.B1(n81), 
	.B0(n175), 
	.A1N(n81), 
	.A0N(\FIFO_MEM[4][5] ));
   OAI2BB2X1M U114 (.Y(n124), 
	.B1(n81), 
	.B0(n176), 
	.A1N(n81), 
	.A0N(\FIFO_MEM[4][6] ));
   OAI2BB2X1M U115 (.Y(n125), 
	.B1(n81), 
	.B0(n177), 
	.A1N(n81), 
	.A0N(\FIFO_MEM[4][7] ));
   INVX2M U116 (.Y(n170), 
	.A(w_data[0]));
   INVX2M U117 (.Y(n171), 
	.A(w_data[1]));
   INVX2M U118 (.Y(n172), 
	.A(w_data[2]));
   INVX2M U119 (.Y(n173), 
	.A(w_data[3]));
   INVX2M U120 (.Y(n174), 
	.A(w_data[4]));
   INVX2M U121 (.Y(n175), 
	.A(w_data[5]));
   INVX2M U122 (.Y(n176), 
	.A(w_data[6]));
   INVX2M U123 (.Y(n177), 
	.A(w_data[7]));
   OAI2BB2X1M U124 (.Y(n102), 
	.B1(n78), 
	.B0(n170), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[2][0] ));
   OAI2BB2X1M U125 (.Y(n103), 
	.B1(n78), 
	.B0(n171), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[2][1] ));
   OAI2BB2X1M U126 (.Y(n104), 
	.B1(n78), 
	.B0(n172), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[2][2] ));
   OAI2BB2X1M U127 (.Y(n105), 
	.B1(n78), 
	.B0(n173), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[2][3] ));
   OAI2BB2X1M U128 (.Y(n106), 
	.B1(n78), 
	.B0(n174), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[2][4] ));
   OAI2BB2X1M U129 (.Y(n107), 
	.B1(n78), 
	.B0(n175), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[2][5] ));
   OAI2BB2X1M U130 (.Y(n108), 
	.B1(n78), 
	.B0(n176), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[2][6] ));
   OAI2BB2X1M U131 (.Y(n109), 
	.B1(n78), 
	.B0(n177), 
	.A1N(n78), 
	.A0N(\FIFO_MEM[2][7] ));
   OAI2BB2X1M U132 (.Y(n126), 
	.B1(n83), 
	.B0(n170), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[5][0] ));
   OAI2BB2X1M U133 (.Y(n127), 
	.B1(n83), 
	.B0(n171), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[5][1] ));
   OAI2BB2X1M U134 (.Y(n128), 
	.B1(n83), 
	.B0(n172), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[5][2] ));
   OAI2BB2X1M U135 (.Y(n129), 
	.B1(n83), 
	.B0(n173), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[5][3] ));
   OAI2BB2X1M U136 (.Y(n130), 
	.B1(n83), 
	.B0(n174), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[5][4] ));
   OAI2BB2X1M U137 (.Y(n131), 
	.B1(n83), 
	.B0(n175), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[5][5] ));
   OAI2BB2X1M U138 (.Y(n132), 
	.B1(n83), 
	.B0(n176), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[5][6] ));
   OAI2BB2X1M U139 (.Y(n133), 
	.B1(n83), 
	.B0(n177), 
	.A1N(n83), 
	.A0N(\FIFO_MEM[5][7] ));
   OAI2BB2X1M U140 (.Y(n134), 
	.B1(n84), 
	.B0(n170), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][0] ));
   OAI2BB2X1M U141 (.Y(n135), 
	.B1(n84), 
	.B0(n171), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][1] ));
   OAI2BB2X1M U142 (.Y(n136), 
	.B1(n84), 
	.B0(n172), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][2] ));
   OAI2BB2X1M U143 (.Y(n137), 
	.B1(n84), 
	.B0(n173), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][3] ));
   OAI2BB2X1M U144 (.Y(n138), 
	.B1(n84), 
	.B0(n174), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][4] ));
   OAI2BB2X1M U145 (.Y(n139), 
	.B1(n84), 
	.B0(n175), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][5] ));
   OAI2BB2X1M U146 (.Y(n140), 
	.B1(n84), 
	.B0(n176), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][6] ));
   OAI2BB2X1M U147 (.Y(n141), 
	.B1(n84), 
	.B0(n177), 
	.A1N(n84), 
	.A0N(\FIFO_MEM[6][7] ));
   OAI2BB2X1M U148 (.Y(n142), 
	.B1(n85), 
	.B0(n170), 
	.A1N(n85), 
	.A0N(\FIFO_MEM[7][0] ));
   OAI2BB2X1M U149 (.Y(n143), 
	.B1(n85), 
	.B0(n171), 
	.A1N(n85), 
	.A0N(\FIFO_MEM[7][1] ));
   OAI2BB2X1M U150 (.Y(n144), 
	.B1(n85), 
	.B0(n172), 
	.A1N(n85), 
	.A0N(\FIFO_MEM[7][2] ));
   OAI2BB2X1M U151 (.Y(n145), 
	.B1(n85), 
	.B0(n173), 
	.A1N(n85), 
	.A0N(\FIFO_MEM[7][3] ));
   OAI2BB2X1M U152 (.Y(n146), 
	.B1(n85), 
	.B0(n174), 
	.A1N(n85), 
	.A0N(\FIFO_MEM[7][4] ));
   OAI2BB2X1M U153 (.Y(n147), 
	.B1(n85), 
	.B0(n175), 
	.A1N(n85), 
	.A0N(\FIFO_MEM[7][5] ));
   OAI2BB2X1M U154 (.Y(n148), 
	.B1(n85), 
	.B0(n176), 
	.A1N(n85), 
	.A0N(\FIFO_MEM[7][6] ));
   OAI2BB2X1M U155 (.Y(n149), 
	.B1(n85), 
	.B0(n177), 
	.A1N(n85), 
	.A0N(\FIFO_MEM[7][7] ));
   NAND3X2M U156 (.Y(n85), 
	.C(n82), 
	.B(w_addr[0]), 
	.A(w_addr[1]));
   AND2X2M U157 (.Y(n82), 
	.B(n80), 
	.A(w_addr[2]));
   NAND3X2M U158 (.Y(n78), 
	.C(w_addr[1]), 
	.B(n178), 
	.A(n76));
   NAND3X2M U159 (.Y(n83), 
	.C(n82), 
	.B(n179), 
	.A(w_addr[0]));
   NAND3X2M U160 (.Y(n84), 
	.C(n82), 
	.B(n178), 
	.A(w_addr[1]));
   INVX2M U161 (.Y(n179), 
	.A(w_addr[1]));
   INVX2M U162 (.Y(n178), 
	.A(w_addr[0]));
   MX2X2M U163 (.Y(r_data[0]), 
	.S0(N11), 
	.B(n65), 
	.A(n66));
   MX4X1M U164 (.Y(n66), 
	.S1(N10), 
	.S0(n157), 
	.D(\FIFO_MEM[3][0] ), 
	.C(\FIFO_MEM[2][0] ), 
	.B(\FIFO_MEM[1][0] ), 
	.A(\FIFO_MEM[0][0] ));
   MX4X1M U165 (.Y(n65), 
	.S1(N10), 
	.S0(n156), 
	.D(\FIFO_MEM[7][0] ), 
	.C(\FIFO_MEM[6][0] ), 
	.B(\FIFO_MEM[5][0] ), 
	.A(\FIFO_MEM[4][0] ));
   MX2X2M U166 (.Y(r_data[1]), 
	.S0(N11), 
	.B(n67), 
	.A(n68));
   MX4X1M U167 (.Y(n68), 
	.S1(N10), 
	.S0(n157), 
	.D(\FIFO_MEM[3][1] ), 
	.C(\FIFO_MEM[2][1] ), 
	.B(\FIFO_MEM[1][1] ), 
	.A(\FIFO_MEM[0][1] ));
   MX4X1M U168 (.Y(n67), 
	.S1(N10), 
	.S0(n156), 
	.D(\FIFO_MEM[7][1] ), 
	.C(\FIFO_MEM[6][1] ), 
	.B(\FIFO_MEM[5][1] ), 
	.A(\FIFO_MEM[4][1] ));
   MX2X2M U169 (.Y(r_data[2]), 
	.S0(N11), 
	.B(n69), 
	.A(n70));
   MX4X1M U170 (.Y(n70), 
	.S1(N10), 
	.S0(n157), 
	.D(\FIFO_MEM[3][2] ), 
	.C(\FIFO_MEM[2][2] ), 
	.B(\FIFO_MEM[1][2] ), 
	.A(\FIFO_MEM[0][2] ));
   MX4X1M U171 (.Y(n69), 
	.S1(N10), 
	.S0(n156), 
	.D(\FIFO_MEM[7][2] ), 
	.C(\FIFO_MEM[6][2] ), 
	.B(\FIFO_MEM[5][2] ), 
	.A(\FIFO_MEM[4][2] ));
   MX2X2M U172 (.Y(r_data[3]), 
	.S0(N11), 
	.B(n71), 
	.A(n72));
   MX4X1M U173 (.Y(n72), 
	.S1(N10), 
	.S0(n157), 
	.D(\FIFO_MEM[3][3] ), 
	.C(\FIFO_MEM[2][3] ), 
	.B(\FIFO_MEM[1][3] ), 
	.A(\FIFO_MEM[0][3] ));
   MX4X1M U174 (.Y(n71), 
	.S1(N10), 
	.S0(n156), 
	.D(\FIFO_MEM[7][3] ), 
	.C(\FIFO_MEM[6][3] ), 
	.B(\FIFO_MEM[5][3] ), 
	.A(\FIFO_MEM[4][3] ));
   MX2X2M U175 (.Y(r_data[4]), 
	.S0(N11), 
	.B(n73), 
	.A(n74));
   MX4X1M U176 (.Y(n74), 
	.S1(N10), 
	.S0(n157), 
	.D(\FIFO_MEM[3][4] ), 
	.C(\FIFO_MEM[2][4] ), 
	.B(\FIFO_MEM[1][4] ), 
	.A(\FIFO_MEM[0][4] ));
   MX4X1M U177 (.Y(n73), 
	.S1(N10), 
	.S0(n156), 
	.D(\FIFO_MEM[7][4] ), 
	.C(\FIFO_MEM[6][4] ), 
	.B(\FIFO_MEM[5][4] ), 
	.A(\FIFO_MEM[4][4] ));
   MX2X2M U178 (.Y(r_data[5]), 
	.S0(N11), 
	.B(n150), 
	.A(n151));
   MX4X1M U179 (.Y(n151), 
	.S1(N10), 
	.S0(n157), 
	.D(\FIFO_MEM[3][5] ), 
	.C(\FIFO_MEM[2][5] ), 
	.B(\FIFO_MEM[1][5] ), 
	.A(\FIFO_MEM[0][5] ));
   MX4X1M U180 (.Y(n150), 
	.S1(N10), 
	.S0(n156), 
	.D(\FIFO_MEM[7][5] ), 
	.C(\FIFO_MEM[6][5] ), 
	.B(\FIFO_MEM[5][5] ), 
	.A(\FIFO_MEM[4][5] ));
   MX2X2M U181 (.Y(r_data[6]), 
	.S0(N11), 
	.B(n152), 
	.A(n153));
   MX4X1M U182 (.Y(n153), 
	.S1(N10), 
	.S0(n157), 
	.D(\FIFO_MEM[3][6] ), 
	.C(\FIFO_MEM[2][6] ), 
	.B(\FIFO_MEM[1][6] ), 
	.A(\FIFO_MEM[0][6] ));
   MX4X1M U183 (.Y(n152), 
	.S1(N10), 
	.S0(n156), 
	.D(\FIFO_MEM[7][6] ), 
	.C(\FIFO_MEM[6][6] ), 
	.B(\FIFO_MEM[5][6] ), 
	.A(\FIFO_MEM[4][6] ));
   MX2X2M U184 (.Y(r_data[7]), 
	.S0(N11), 
	.B(n154), 
	.A(n155));
   MX4X1M U185 (.Y(n155), 
	.S1(N10), 
	.S0(n157), 
	.D(\FIFO_MEM[3][7] ), 
	.C(\FIFO_MEM[2][7] ), 
	.B(\FIFO_MEM[1][7] ), 
	.A(\FIFO_MEM[0][7] ));
   MX4X1M U186 (.Y(n154), 
	.S1(N10), 
	.S0(n156), 
	.D(\FIFO_MEM[7][7] ), 
	.C(\FIFO_MEM[6][7] ), 
	.B(\FIFO_MEM[5][7] ), 
	.A(\FIFO_MEM[4][7] ));
   BUFX2M U187 (.Y(n156), 
	.A(N9));
   BUFX2M U188 (.Y(n157), 
	.A(N9));
endmodule

module fifo_rd_P_SIZE4_test_1 (
	r_clk, 
	r_rstn, 
	r_inc, 
	sync_wr_ptr, 
	rd_addr, 
	empty, 
	gray_rd_ptr, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN20_SE);
   input r_clk;
   input r_rstn;
   input r_inc;
   input [3:0] sync_wr_ptr;
   output [2:0] rd_addr;
   output empty;
   output [3:0] gray_rd_ptr;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN20_SE;

   // Internal wires
   wire N89;
   wire N90;
   wire N91;
   wire N92;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n1;
   wire n2;
   wire n11;
   wire n12;

   assign test_so = N92 ;

   SDFFRQX2M \rd_ptr_reg[3]  (.SI(n11), 
	.SE(test_se), 
	.RN(r_rstn), 
	.Q(N92), 
	.D(n25), 
	.CK(r_clk));
   SDFFRQX2M \rd_ptr_reg[0]  (.SI(gray_rd_ptr[3]), 
	.SE(FE_OFN20_SE), 
	.RN(r_rstn), 
	.Q(rd_addr[0]), 
	.D(n28), 
	.CK(r_clk));
   SDFFRQX2M \rd_ptr_reg[2]  (.SI(rd_addr[1]), 
	.SE(test_se), 
	.RN(r_rstn), 
	.Q(rd_addr[2]), 
	.D(n26), 
	.CK(r_clk));
   SDFFRQX2M \gray_rd_ptr_reg[0]  (.SI(test_si), 
	.SE(FE_OFN20_SE), 
	.RN(r_rstn), 
	.Q(gray_rd_ptr[0]), 
	.D(N89), 
	.CK(r_clk));
   SDFFRQX2M \gray_rd_ptr_reg[3]  (.SI(gray_rd_ptr[2]), 
	.SE(test_se), 
	.RN(r_rstn), 
	.Q(gray_rd_ptr[3]), 
	.D(N92), 
	.CK(r_clk));
   SDFFRQX2M \gray_rd_ptr_reg[2]  (.SI(gray_rd_ptr[1]), 
	.SE(FE_OFN20_SE), 
	.RN(r_rstn), 
	.Q(gray_rd_ptr[2]), 
	.D(N91), 
	.CK(r_clk));
   SDFFRQX2M \gray_rd_ptr_reg[1]  (.SI(gray_rd_ptr[0]), 
	.SE(test_se), 
	.RN(r_rstn), 
	.Q(gray_rd_ptr[1]), 
	.D(N90), 
	.CK(r_clk));
   SDFFRQX4M \rd_ptr_reg[1]  (.SI(n2), 
	.SE(test_se), 
	.RN(r_rstn), 
	.Q(rd_addr[1]), 
	.D(n27), 
	.CK(r_clk));
   NOR2X2M U12 (.Y(n18), 
	.B(n19), 
	.A(n2));
   XNOR2X2M U13 (.Y(n24), 
	.B(gray_rd_ptr[2]), 
	.A(sync_wr_ptr[2]));
   NAND4X2M U14 (.Y(empty), 
	.D(n24), 
	.C(n23), 
	.B(n22), 
	.A(n21));
   XNOR2X2M U15 (.Y(n21), 
	.B(gray_rd_ptr[1]), 
	.A(sync_wr_ptr[1]));
   XNOR2X2M U16 (.Y(n22), 
	.B(gray_rd_ptr[0]), 
	.A(sync_wr_ptr[0]));
   XNOR2X2M U17 (.Y(n23), 
	.B(gray_rd_ptr[3]), 
	.A(sync_wr_ptr[3]));
   XNOR2X2M U18 (.Y(N90), 
	.B(rd_addr[1]), 
	.A(n11));
   XNOR2X2M U19 (.Y(n26), 
	.B(n17), 
	.A(rd_addr[2]));
   XNOR2X2M U20 (.Y(N89), 
	.B(n2), 
	.A(rd_addr[1]));
   XNOR2X2M U21 (.Y(n28), 
	.B(n19), 
	.A(rd_addr[0]));
   OAI211X2M U22 (.Y(n25), 
	.C0(n16), 
	.B0(n15), 
	.A1(n12), 
	.A0(n1));
   NAND3X2M U23 (.Y(n15), 
	.C(rd_addr[2]), 
	.B(n12), 
	.A(n1));
   INVX2M U24 (.Y(n12), 
	.A(N92));
   INVX2M U25 (.Y(n1), 
	.A(n17));
   NAND2X2M U26 (.Y(n17), 
	.B(n18), 
	.A(rd_addr[1]));
   OAI21X2M U27 (.Y(N91), 
	.B0(n16), 
	.A1(n11), 
	.A0(N92));
   INVX2M U28 (.Y(n11), 
	.A(rd_addr[2]));
   NAND2X2M U29 (.Y(n19), 
	.B(empty), 
	.A(r_inc));
   NAND2X2M U30 (.Y(n16), 
	.B(n11), 
	.A(N92));
   INVX2M U31 (.Y(n2), 
	.A(rd_addr[0]));
   CLKXOR2X2M U32 (.Y(n27), 
	.B(n18), 
	.A(rd_addr[1]));
endmodule

module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_1 (
	CLK, 
	RST, 
	ASYNC, 
	SYNC, 
	test_si, 
	test_se, 
	FE_OFN4_TX_CLK_scan, 
	FE_OFN20_SE);
   input CLK;
   input RST;
   input [3:0] ASYNC;
   output [3:0] SYNC;
   input test_si;
   input test_se;
   input FE_OFN4_TX_CLK_scan;
   input FE_OFN20_SE;

   // Internal wires
   wire \sync_reg[3][0] ;
   wire \sync_reg[2][0] ;
   wire \sync_reg[1][0] ;
   wire \sync_reg[0][0] ;

   SDFFRQX2M \sync_reg_reg[3][1]  (.SI(\sync_reg[3][0] ), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(SYNC[3]), 
	.D(\sync_reg[3][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[2][1]  (.SI(\sync_reg[2][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[2]), 
	.D(\sync_reg[2][0] ), 
	.CK(FE_OFN4_TX_CLK_scan));
   SDFFRQX2M \sync_reg_reg[1][1]  (.SI(\sync_reg[1][0] ), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(SYNC[1]), 
	.D(\sync_reg[1][0] ), 
	.CK(FE_OFN4_TX_CLK_scan));
   SDFFRQX2M \sync_reg_reg[0][1]  (.SI(\sync_reg[0][0] ), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(SYNC[0]), 
	.D(\sync_reg[0][0] ), 
	.CK(FE_OFN4_TX_CLK_scan));
   SDFFRQX2M \sync_reg_reg[3][0]  (.SI(SYNC[2]), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(\sync_reg[3][0] ), 
	.D(ASYNC[3]), 
	.CK(FE_OFN4_TX_CLK_scan));
   SDFFRQX2M \sync_reg_reg[2][0]  (.SI(SYNC[1]), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(\sync_reg[2][0] ), 
	.D(ASYNC[2]), 
	.CK(FE_OFN4_TX_CLK_scan));
   SDFFRQX2M \sync_reg_reg[1][0]  (.SI(SYNC[0]), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(\sync_reg[1][0] ), 
	.D(ASYNC[1]), 
	.CK(FE_OFN4_TX_CLK_scan));
   SDFFRQX2M \sync_reg_reg[0][0]  (.SI(test_si), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(\sync_reg[0][0] ), 
	.D(ASYNC[0]), 
	.CK(FE_OFN4_TX_CLK_scan));
endmodule

module fifo_wr_P_SIZE4_test_1 (
	w_clk, 
	w_rstn, 
	w_inc, 
	sync_rd_ptr, 
	w_addr, 
	gray_w_ptr, 
	full, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN3_REF_CLK_scan, 
	FE_OFN9_SYNC_RST_REF_scan, 
	FE_OFN11_SYNC_RST_REF_scan, 
	FE_OFN20_SE);
   input w_clk;
   input w_rstn;
   input w_inc;
   input [3:0] sync_rd_ptr;
   output [2:0] w_addr;
   output [3:0] gray_w_ptr;
   output full;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN3_REF_CLK_scan;
   input FE_OFN9_SYNC_RST_REF_scan;
   input FE_OFN11_SYNC_RST_REF_scan;
   input FE_OFN20_SE;

   // Internal wires
   wire n13;
   wire N89;
   wire N90;
   wire N91;
   wire N92;
   wire n3;
   wire n4;
   wire n5;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n16;
   wire n19;
   wire n21;
   wire n23;
   wire n1;
   wire n14;
   wire n2;

   assign test_so1 = N92 ;

   SDFFRQX2M \w_ptr_reg[3]  (.SI(w_addr[2]), 
	.SE(FE_OFN20_SE), 
	.RN(w_rstn), 
	.Q(N92), 
	.D(n16), 
	.CK(w_clk));
   SDFFRQX2M \w_ptr_reg[2]  (.SI(w_addr[1]), 
	.SE(test_se), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.Q(w_addr[2]), 
	.D(n19), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \w_ptr_reg[0]  (.SI(gray_w_ptr[3]), 
	.SE(FE_OFN20_SE), 
	.RN(w_rstn), 
	.Q(w_addr[0]), 
	.D(n23), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \gray_w_ptr_reg[0]  (.SI(test_si1), 
	.SE(test_se), 
	.RN(FE_OFN11_SYNC_RST_REF_scan), 
	.Q(gray_w_ptr[0]), 
	.D(N89), 
	.CK(FE_OFN3_REF_CLK_scan));
   SDFFRQX2M \gray_w_ptr_reg[3]  (.SI(gray_w_ptr[2]), 
	.SE(FE_OFN20_SE), 
	.RN(w_rstn), 
	.Q(gray_w_ptr[3]), 
	.D(N92), 
	.CK(w_clk));
   SDFFRQX2M \gray_w_ptr_reg[2]  (.SI(test_si2), 
	.SE(FE_OFN20_SE), 
	.RN(w_rstn), 
	.Q(gray_w_ptr[2]), 
	.D(N91), 
	.CK(w_clk));
   SDFFRQX2M \w_ptr_reg[1]  (.SI(n1), 
	.SE(test_se), 
	.RN(w_rstn), 
	.Q(w_addr[1]), 
	.D(n21), 
	.CK(FE_OFN3_REF_CLK_scan));
   NOR2X2M U3 (.Y(n5), 
	.B(n7), 
	.A(n1));
   INVX2M U4 (.Y(full), 
	.A(n8));
   NAND2X2M U5 (.Y(n7), 
	.B(n8), 
	.A(w_inc));
   XNOR2X2M U6 (.Y(n19), 
	.B(n4), 
	.A(w_addr[2]));
   XNOR2X2M U7 (.Y(n16), 
	.B(n3), 
	.A(N92));
   NAND2BX2M U8 (.Y(n3), 
	.B(w_addr[2]), 
	.AN(n4));
   XNOR2X2M U9 (.Y(n23), 
	.B(n7), 
	.A(w_addr[0]));
   NAND4X2M U10 (.Y(n8), 
	.D(n12), 
	.C(n11), 
	.B(n10), 
	.A(n9));
   XNOR2X2M U11 (.Y(n9), 
	.B(gray_w_ptr[0]), 
	.A(sync_rd_ptr[0]));
   XNOR2X2M U12 (.Y(n10), 
	.B(n14), 
	.A(sync_rd_ptr[1]));
   CLKXOR2X2M U13 (.Y(n11), 
	.B(gray_w_ptr[2]), 
	.A(sync_rd_ptr[2]));
   NAND2X2M U14 (.Y(n4), 
	.B(n5), 
	.A(w_addr[1]));
   CLKXOR2X2M U15 (.Y(n12), 
	.B(gray_w_ptr[3]), 
	.A(sync_rd_ptr[3]));
   CLKXOR2X2M U16 (.Y(n21), 
	.B(n5), 
	.A(w_addr[1]));
   XNOR2X2M U17 (.Y(N89), 
	.B(n1), 
	.A(w_addr[1]));
   INVX2M U18 (.Y(n1), 
	.A(w_addr[0]));
   CLKXOR2X2M U19 (.Y(N90), 
	.B(w_addr[1]), 
	.A(w_addr[2]));
   CLKXOR2X2M U20 (.Y(N91), 
	.B(N92), 
	.A(w_addr[2]));
   DLY1X1M U29 (.Y(n14), 
	.A(gray_w_ptr[1]));
   SDFFRQX4M \gray_w_ptr_reg[1]  (.SI(gray_w_ptr[0]), 
	.SE(FE_OFN20_SE), 
	.RN(w_rstn), 
	.Q(n13), 
	.D(N90), 
	.CK(w_clk));
   INVXLM U21 (.Y(n2), 
	.A(n13));
   INVX8M U22 (.Y(gray_w_ptr[1]), 
	.A(n2));
endmodule

module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_0 (
	CLK, 
	RST, 
	ASYNC, 
	SYNC, 
	test_si, 
	test_se, 
	FE_OFN19_SE, 
	FE_OFN20_SE);
   input CLK;
   input RST;
   input [3:0] ASYNC;
   output [3:0] SYNC;
   input test_si;
   input test_se;
   input FE_OFN19_SE;
   input FE_OFN20_SE;

   // Internal wires
   wire \sync_reg[3][0] ;
   wire \sync_reg[2][0] ;
   wire \sync_reg[1][0] ;
   wire \sync_reg[0][0] ;

   SDFFRQX2M \sync_reg_reg[1][1]  (.SI(\sync_reg[1][0] ), 
	.SE(FE_OFN19_SE), 
	.RN(RST), 
	.Q(SYNC[1]), 
	.D(\sync_reg[1][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][1]  (.SI(\sync_reg[0][0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC[0]), 
	.D(\sync_reg[0][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[3][1]  (.SI(\sync_reg[3][0] ), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(SYNC[3]), 
	.D(\sync_reg[3][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[2][1]  (.SI(\sync_reg[2][0] ), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(SYNC[2]), 
	.D(\sync_reg[2][0] ), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[3][0]  (.SI(SYNC[2]), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(\sync_reg[3][0] ), 
	.D(ASYNC[3]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[2][0]  (.SI(SYNC[1]), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(\sync_reg[2][0] ), 
	.D(ASYNC[2]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1][0]  (.SI(SYNC[0]), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(\sync_reg[1][0] ), 
	.D(ASYNC[1]), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0][0]  (.SI(test_si), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(\sync_reg[0][0] ), 
	.D(ASYNC[0]), 
	.CK(CLK));
endmodule

module Async_fifo_D_SIZE8_F_DEPTH8_P_SIZE4_test_1 (
	i_w_clk, 
	i_w_rstn, 
	i_w_inc, 
	i_r_clk, 
	i_r_rstn, 
	i_r_inc, 
	i_w_data, 
	o_r_data, 
	o_full, 
	o_empty, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN4_TX_CLK_scan, 
	FE_OFN9_SYNC_RST_REF_scan, 
	FE_OFN16_SE, 
	FE_OFN19_SE, 
	FE_OFN20_SE);
   input i_w_clk;
   input i_w_rstn;
   input i_w_inc;
   input i_r_clk;
   input i_r_rstn;
   input i_r_inc;
   input [7:0] i_w_data;
   output [7:0] o_r_data;
   output o_full;
   output o_empty;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN4_TX_CLK_scan;
   input FE_OFN9_SYNC_RST_REF_scan;
   input FE_OFN16_SE;
   input FE_OFN19_SE;
   input FE_OFN20_SE;

   // Internal wires
   wire FE_OFN11_SYNC_RST_REF_scan;
   wire FE_OFN3_REF_CLK_scan;
   wire n3;
   wire n4;
   wire n5;
   wire [2:0] w_addr;
   wire [2:0] r_addr;
   wire [3:0] w2r_ptr;
   wire [3:0] gray_rd_ptr;
   wire [3:0] gray_w_ptr;
   wire [3:0] r2w_ptr;

   assign test_so2 = w2r_ptr[3] ;
   assign test_so1 = gray_w_ptr[1] ;

   BUFX4M FE_OFC11_SYNC_RST_REF_scan (.Y(FE_OFN11_SYNC_RST_REF_scan), 
	.A(FE_OFN9_SYNC_RST_REF_scan));
   CLKBUFX8M FE_OFC3_REF_CLK_scan (.Y(FE_OFN3_REF_CLK_scan), 
	.A(i_w_clk));
   fifo_mem_D_SIZE8_F_DEPTH8_P_SIZE4_test_1 u_fifo_mem (.w_clk(i_w_clk), 
	.w_rstn(FE_OFN9_SYNC_RST_REF_scan), 
	.w_full(o_full), 
	.w_inc(i_w_inc), 
	.w_addr({ w_addr[2],
		w_addr[1],
		w_addr[0] }), 
	.r_addr({ r_addr[2],
		r_addr[1],
		r_addr[0] }), 
	.w_data({ i_w_data[7],
		i_w_data[6],
		i_w_data[5],
		i_w_data[4],
		i_w_data[3],
		i_w_data[2],
		i_w_data[1],
		i_w_data[0] }), 
	.r_data({ o_r_data[7],
		o_r_data[6],
		o_r_data[5],
		o_r_data[4],
		o_r_data[3],
		o_r_data[2],
		o_r_data[1],
		o_r_data[0] }), 
	.test_si(test_si1), 
	.test_so(n5), 
	.test_se(FE_OFN16_SE), 
	.FE_OFN3_REF_CLK_scan(FE_OFN3_REF_CLK_scan), 
	.FE_OFN11_SYNC_RST_REF_scan(FE_OFN11_SYNC_RST_REF_scan), 
	.FE_OFN20_SE(FE_OFN20_SE));
   fifo_rd_P_SIZE4_test_1 u_fifo_rd (.r_clk(FE_OFN4_TX_CLK_scan), 
	.r_rstn(i_r_rstn), 
	.r_inc(i_r_inc), 
	.sync_wr_ptr({ w2r_ptr[3],
		w2r_ptr[2],
		w2r_ptr[1],
		w2r_ptr[0] }), 
	.rd_addr({ r_addr[2],
		r_addr[1],
		r_addr[0] }), 
	.empty(o_empty), 
	.gray_rd_ptr({ gray_rd_ptr[3],
		gray_rd_ptr[2],
		gray_rd_ptr[1],
		gray_rd_ptr[0] }), 
	.test_si(n5), 
	.test_so(n4), 
	.test_se(FE_OFN16_SE), 
	.FE_OFN20_SE(FE_OFN20_SE));
   BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_1 u_w2r_sync (.CLK(i_r_clk), 
	.RST(i_r_rstn), 
	.ASYNC({ gray_w_ptr[3],
		gray_w_ptr[2],
		gray_w_ptr[1],
		gray_w_ptr[0] }), 
	.SYNC({ w2r_ptr[3],
		w2r_ptr[2],
		w2r_ptr[1],
		w2r_ptr[0] }), 
	.test_si(r2w_ptr[3]), 
	.test_se(test_se), 
	.FE_OFN4_TX_CLK_scan(FE_OFN4_TX_CLK_scan), 
	.FE_OFN20_SE(FE_OFN20_SE));
   fifo_wr_P_SIZE4_test_1 u_fifo_wr (.w_clk(i_w_clk), 
	.w_rstn(i_w_rstn), 
	.w_inc(i_w_inc), 
	.sync_rd_ptr({ r2w_ptr[3],
		r2w_ptr[2],
		r2w_ptr[1],
		r2w_ptr[0] }), 
	.w_addr({ w_addr[2],
		w_addr[1],
		w_addr[0] }), 
	.gray_w_ptr({ gray_w_ptr[3],
		gray_w_ptr[2],
		gray_w_ptr[1],
		gray_w_ptr[0] }), 
	.full(o_full), 
	.test_si2(test_si2), 
	.test_si1(n4), 
	.test_so1(n3), 
	.test_se(FE_OFN16_SE), 
	.FE_OFN3_REF_CLK_scan(FE_OFN3_REF_CLK_scan), 
	.FE_OFN9_SYNC_RST_REF_scan(FE_OFN9_SYNC_RST_REF_scan), 
	.FE_OFN11_SYNC_RST_REF_scan(FE_OFN11_SYNC_RST_REF_scan), 
	.FE_OFN20_SE(FE_OFN20_SE));
   BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_0 u_r2w_sync (.CLK(i_w_clk), 
	.RST(i_w_rstn), 
	.ASYNC({ gray_rd_ptr[3],
		gray_rd_ptr[2],
		gray_rd_ptr[1],
		gray_rd_ptr[0] }), 
	.SYNC({ r2w_ptr[3],
		r2w_ptr[2],
		r2w_ptr[1],
		r2w_ptr[0] }), 
	.test_si(n3), 
	.test_se(FE_OFN16_SE), 
	.FE_OFN19_SE(FE_OFN19_SE), 
	.FE_OFN20_SE(FE_OFN20_SE));
endmodule

module PULSE_GEN_test_1 (
	clk, 
	rst, 
	lvl_sig, 
	pulse_sig, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst;
   input lvl_sig;
   output pulse_sig;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire pls_flop;
   wire rcv_flop;

   assign test_so = rcv_flop ;

   SDFFRQX2M rcv_flop_reg (.SI(pls_flop), 
	.SE(test_se), 
	.RN(rst), 
	.Q(rcv_flop), 
	.D(lvl_sig), 
	.CK(clk));
   SDFFRQX2M pls_flop_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(pls_flop), 
	.D(rcv_flop), 
	.CK(clk));
   NOR2BX2M U5 (.Y(pulse_sig), 
	.B(pls_flop), 
	.AN(rcv_flop));
endmodule

module Integer_Clock_Divider_0_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module Integer_Clock_Divider_test_0 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN17_SE);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN17_SE;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire N2;
   wire gen_clk;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n16;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire [6:0] counter;

   assign test_so = gen_clk ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M gen_clk_reg (.SI(counter[6]), 
	.SE(FE_OFN17_SE), 
	.RN(i_rst_n), 
	.Q(gen_clk), 
	.D(n23), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[6]  (.SI(counter[5]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(n24), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(n30), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(FE_OFN17_SE), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(n27), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(n28), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[5]  (.SI(counter[4]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(n25), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(n26), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[1]  (.SI(counter[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(n29), 
	.CK(i_ref_clk));
   NOR2X2M U5 (.Y(n19), 
	.B(N2), 
	.A(n18));
   CLKXOR2X2M U6 (.Y(n23), 
	.B(n17), 
	.A(n50));
   NAND2BX2M U7 (.Y(n17), 
	.B(n18), 
	.AN(N2));
   OAI2B1X2M U10 (.Y(n18), 
	.B0(n20), 
	.A1N(N15), 
	.A0(i_div_ratio[0]));
   AOI22X1M U15 (.Y(n20), 
	.B1(n50), 
	.B0(N16), 
	.A1(N15), 
	.A0(gen_clk));
   OR2X2M U16 (.Y(n2), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   AO22X1M U17 (.Y(n29), 
	.B1(n19), 
	.B0(N23), 
	.A1(N2), 
	.A0(counter[1]));
   AO22X1M U18 (.Y(n28), 
	.B1(n19), 
	.B0(N24), 
	.A1(N2), 
	.A0(counter[2]));
   AO22X1M U19 (.Y(n27), 
	.B1(n19), 
	.B0(N25), 
	.A1(N2), 
	.A0(counter[3]));
   AO22X1M U20 (.Y(n26), 
	.B1(n19), 
	.B0(N26), 
	.A1(N2), 
	.A0(counter[4]));
   AO22X1M U21 (.Y(n25), 
	.B1(n19), 
	.B0(N27), 
	.A1(N2), 
	.A0(counter[5]));
   AO22X1M U22 (.Y(n24), 
	.B1(n19), 
	.B0(N28), 
	.A1(N2), 
	.A0(counter[6]));
   AO22X1M U23 (.Y(n30), 
	.B1(n19), 
	.B0(N22), 
	.A1(N2), 
	.A0(counter[0]));
   OAI2BB1X2M U25 (.Y(N2), 
	.B0(HTIE_LTIEHI_NET), 
	.A1N(n22), 
	.A0N(n21));
   NOR3X2M U26 (.Y(n21), 
	.C(i_div_ratio[2]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[1]));
   NOR4X1M U27 (.Y(n22), 
	.D(i_div_ratio[4]), 
	.C(i_div_ratio[5]), 
	.B(i_div_ratio[6]), 
	.A(i_div_ratio[7]));
   INVX2M U28 (.Y(n50), 
	.A(gen_clk));
   MX2X2M U29 (.Y(o_div_clk), 
	.S0(N2), 
	.B(i_ref_clk), 
	.A(gen_clk));
   CLKINVX1M U30 (.Y(N7), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U31 (.Y(N8), 
	.B0(n2), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U32 (.Y(n3), 
	.B(i_div_ratio[3]), 
	.A(n2));
   OAI2BB1X1M U33 (.Y(N9), 
	.B0(n3), 
	.A1N(i_div_ratio[3]), 
	.A0N(n2));
   OR2X1M U34 (.Y(n4), 
	.B(i_div_ratio[4]), 
	.A(n3));
   OAI2BB1X1M U35 (.Y(N10), 
	.B0(n4), 
	.A1N(i_div_ratio[4]), 
	.A0N(n3));
   OR2X1M U36 (.Y(n5), 
	.B(i_div_ratio[5]), 
	.A(n4));
   OAI2BB1X1M U37 (.Y(N11), 
	.B0(n5), 
	.A1N(i_div_ratio[5]), 
	.A0N(n4));
   XNOR2X1M U38 (.Y(N12), 
	.B(n5), 
	.A(i_div_ratio[6]));
   NOR3X1M U39 (.Y(N14), 
	.C(n5), 
	.B(i_div_ratio[7]), 
	.A(i_div_ratio[6]));
   OAI21X1M U40 (.Y(n6), 
	.B0(i_div_ratio[7]), 
	.A1(n5), 
	.A0(i_div_ratio[6]));
   NAND2BX1M U41 (.Y(N13), 
	.B(n6), 
	.AN(N14));
   NOR2BX1M U42 (.Y(n7), 
	.B(counter[0]), 
	.AN(N7));
   OAI2B2X1M U43 (.Y(n33), 
	.B1(n7), 
	.B0(N8), 
	.A1N(counter[1]), 
	.A0(n7));
   XNOR2X1M U44 (.Y(n32), 
	.B(counter[2]), 
	.A(N9));
   NOR2BX1M U45 (.Y(n16), 
	.B(N7), 
	.AN(counter[0]));
   OAI2B2X1M U46 (.Y(n31), 
	.B1(n16), 
	.B0(counter[1]), 
	.A1N(N8), 
	.A0(n16));
   NAND4BX1M U47 (.Y(n39), 
	.D(n31), 
	.C(n32), 
	.B(n33), 
	.AN(N14));
   XNOR2X1M U48 (.Y(n37), 
	.B(counter[6]), 
	.A(N13));
   XNOR2X1M U49 (.Y(n36), 
	.B(counter[5]), 
	.A(N12));
   XNOR2X1M U50 (.Y(n35), 
	.B(counter[4]), 
	.A(N11));
   XNOR2X1M U51 (.Y(n34), 
	.B(counter[3]), 
	.A(N10));
   NAND4X1M U52 (.Y(n38), 
	.D(n34), 
	.C(n35), 
	.B(n36), 
	.A(n37));
   NOR2X1M U53 (.Y(N15), 
	.B(n38), 
	.A(n39));
   XNOR2X1M U54 (.Y(n45), 
	.B(counter[3]), 
	.A(i_div_ratio[4]));
   XNOR2X1M U55 (.Y(n44), 
	.B(counter[2]), 
	.A(i_div_ratio[3]));
   NOR2BX1M U56 (.Y(n40), 
	.B(counter[0]), 
	.AN(i_div_ratio[1]));
   OAI2B2X1M U57 (.Y(n43), 
	.B1(n40), 
	.B0(i_div_ratio[2]), 
	.A1N(counter[1]), 
	.A0(n40));
   NOR2BX1M U58 (.Y(n41), 
	.B(i_div_ratio[1]), 
	.AN(counter[0]));
   OAI2B2X1M U59 (.Y(n42), 
	.B1(n41), 
	.B0(counter[1]), 
	.A1N(i_div_ratio[2]), 
	.A0(n41));
   NAND4X1M U60 (.Y(n49), 
	.D(n42), 
	.C(n43), 
	.B(n44), 
	.A(n45));
   CLKXOR2X2M U61 (.Y(n48), 
	.B(counter[6]), 
	.A(i_div_ratio[7]));
   CLKXOR2X2M U62 (.Y(n47), 
	.B(counter[4]), 
	.A(i_div_ratio[5]));
   CLKXOR2X2M U63 (.Y(n46), 
	.B(counter[5]), 
	.A(i_div_ratio[6]));
   NOR4X1M U64 (.Y(N16), 
	.D(n46), 
	.C(n47), 
	.B(n48), 
	.A(n49));
   Integer_Clock_Divider_0_DW01_inc_0 add_53 (.A({ counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N28,
		N27,
		N26,
		N25,
		N24,
		N23,
		N22 }));
endmodule

module CLKDIV_MUX (
	IN, 
	OUT);
   input [5:0] IN;
   output [7:0] OUT;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n14;
   wire n15;
   wire n16;
   wire n17;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   NAND2X2M U11 (.Y(n9), 
	.B(n6), 
	.A(n7));
   NOR3X2M U12 (.Y(OUT[1]), 
	.C(IN[0]), 
	.B(IN[1]), 
	.A(n7));
   NAND4BX1M U13 (.Y(n6), 
	.D(n14), 
	.C(n15), 
	.B(IN[3]), 
	.AN(IN[4]));
   NAND4BX1M U14 (.Y(n7), 
	.D(n14), 
	.C(n15), 
	.B(IN[4]), 
	.AN(IN[3]));
   OAI211X2M U15 (.Y(OUT[0]), 
	.C0(n16), 
	.B0(n17), 
	.A1(n9), 
	.A0(n8));
   NOR3X2M U16 (.Y(OUT[2]), 
	.C(IN[0]), 
	.B(IN[1]), 
	.A(n6));
   NOR4X1M U17 (.Y(OUT[3]), 
	.D(IN[4]), 
	.C(IN[5]), 
	.B(IN[3]), 
	.A(n5));
   NAND3X2M U18 (.Y(n5), 
	.C(IN[2]), 
	.B(n16), 
	.A(n17));
   INVX2M U19 (.Y(n16), 
	.A(IN[1]));
   INVX2M U20 (.Y(n17), 
	.A(IN[0]));
   INVX2M U21 (.Y(n15), 
	.A(IN[2]));
   INVX2M U22 (.Y(n14), 
	.A(IN[5]));
   NOR4X1M U23 (.Y(n8), 
	.D(n15), 
	.C(IN[3]), 
	.B(IN[4]), 
	.A(IN[5]));
   INVX2M U3 (.Y(OUT[4]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U5 (.Y(OUT[5]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U7 (.Y(OUT[6]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U9 (.Y(OUT[7]), 
	.A(HTIE_LTIEHI_NET));
endmodule

module Integer_Clock_Divider_1_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module Integer_Clock_Divider_test_1 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN18_SE);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN18_SE;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire N2;
   wire gen_clk;
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n16;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire [6:0] counter;

   assign test_so = gen_clk ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M gen_clk_reg (.SI(counter[6]), 
	.SE(FE_OFN18_SE), 
	.RN(i_rst_n), 
	.Q(gen_clk), 
	.D(n58), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[6]  (.SI(counter[5]), 
	.SE(FE_OFN18_SE), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(n57), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(n51), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(n54), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(n53), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[5]  (.SI(counter[4]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(n56), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(n55), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[1]  (.SI(counter[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(n52), 
	.CK(i_ref_clk));
   NOR2X2M U5 (.Y(n62), 
	.B(N2), 
	.A(n63));
   OR2X2M U6 (.Y(n2), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U7 (.Y(n58), 
	.B(n64), 
	.A(n50));
   NAND2BX2M U10 (.Y(n64), 
	.B(n63), 
	.AN(N2));
   OAI2B1X2M U15 (.Y(n63), 
	.B0(n61), 
	.A1N(N15), 
	.A0(i_div_ratio[0]));
   AOI22X1M U16 (.Y(n61), 
	.B1(n50), 
	.B0(N16), 
	.A1(N15), 
	.A0(gen_clk));
   AO22X1M U17 (.Y(n52), 
	.B1(n62), 
	.B0(N23), 
	.A1(N2), 
	.A0(counter[1]));
   AO22X1M U18 (.Y(n53), 
	.B1(n62), 
	.B0(N24), 
	.A1(N2), 
	.A0(counter[2]));
   AO22X1M U19 (.Y(n54), 
	.B1(n62), 
	.B0(N25), 
	.A1(N2), 
	.A0(counter[3]));
   AO22X1M U20 (.Y(n55), 
	.B1(n62), 
	.B0(N26), 
	.A1(N2), 
	.A0(counter[4]));
   AO22X1M U21 (.Y(n56), 
	.B1(n62), 
	.B0(N27), 
	.A1(N2), 
	.A0(counter[5]));
   AO22X1M U22 (.Y(n57), 
	.B1(n62), 
	.B0(N28), 
	.A1(N2), 
	.A0(counter[6]));
   AO22X1M U23 (.Y(n51), 
	.B1(n62), 
	.B0(N22), 
	.A1(N2), 
	.A0(counter[0]));
   OAI2BB1X2M U25 (.Y(N2), 
	.B0(HTIE_LTIEHI_NET), 
	.A1N(n59), 
	.A0N(n60));
   NOR4X1M U26 (.Y(n59), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   NOR3X2M U27 (.Y(n60), 
	.C(i_div_ratio[2]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[1]));
   INVX2M U28 (.Y(n50), 
	.A(gen_clk));
   MX2X2M U29 (.Y(o_div_clk), 
	.S0(N2), 
	.B(i_ref_clk), 
	.A(gen_clk));
   CLKINVX1M U30 (.Y(N7), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U31 (.Y(N8), 
	.B0(n2), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U32 (.Y(n3), 
	.B(i_div_ratio[3]), 
	.A(n2));
   OAI2BB1X1M U33 (.Y(N9), 
	.B0(n3), 
	.A1N(i_div_ratio[3]), 
	.A0N(n2));
   OR2X1M U34 (.Y(n4), 
	.B(LTIE_LTIELO_NET), 
	.A(n3));
   OAI2BB1X1M U35 (.Y(N10), 
	.B0(n4), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n3));
   OR2X1M U36 (.Y(n5), 
	.B(LTIE_LTIELO_NET), 
	.A(n4));
   OAI2BB1X1M U37 (.Y(N11), 
	.B0(n5), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n4));
   XNOR2X1M U38 (.Y(N12), 
	.B(n5), 
	.A(LTIE_LTIELO_NET));
   NOR3X1M U39 (.Y(N14), 
	.C(n5), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   OAI21X1M U40 (.Y(n6), 
	.B0(LTIE_LTIELO_NET), 
	.A1(n5), 
	.A0(LTIE_LTIELO_NET));
   NAND2BX1M U41 (.Y(N13), 
	.B(n6), 
	.AN(N14));
   NOR2BX1M U42 (.Y(n7), 
	.B(counter[0]), 
	.AN(N7));
   OAI2B2X1M U43 (.Y(n33), 
	.B1(n7), 
	.B0(N8), 
	.A1N(counter[1]), 
	.A0(n7));
   XNOR2X1M U44 (.Y(n32), 
	.B(counter[2]), 
	.A(N9));
   NOR2BX1M U45 (.Y(n16), 
	.B(N7), 
	.AN(counter[0]));
   OAI2B2X1M U46 (.Y(n31), 
	.B1(n16), 
	.B0(counter[1]), 
	.A1N(N8), 
	.A0(n16));
   NAND4BX1M U47 (.Y(n39), 
	.D(n31), 
	.C(n32), 
	.B(n33), 
	.AN(N14));
   XNOR2X1M U48 (.Y(n37), 
	.B(counter[6]), 
	.A(N13));
   XNOR2X1M U49 (.Y(n36), 
	.B(counter[5]), 
	.A(N12));
   XNOR2X1M U50 (.Y(n35), 
	.B(counter[4]), 
	.A(N11));
   XNOR2X1M U51 (.Y(n34), 
	.B(counter[3]), 
	.A(N10));
   NAND4X1M U52 (.Y(n38), 
	.D(n34), 
	.C(n35), 
	.B(n36), 
	.A(n37));
   NOR2X1M U53 (.Y(N15), 
	.B(n38), 
	.A(n39));
   XNOR2X1M U54 (.Y(n45), 
	.B(counter[3]), 
	.A(LTIE_LTIELO_NET));
   XNOR2X1M U55 (.Y(n44), 
	.B(counter[2]), 
	.A(i_div_ratio[3]));
   NOR2BX1M U56 (.Y(n40), 
	.B(counter[0]), 
	.AN(i_div_ratio[1]));
   OAI2B2X1M U57 (.Y(n43), 
	.B1(n40), 
	.B0(i_div_ratio[2]), 
	.A1N(counter[1]), 
	.A0(n40));
   NOR2BX1M U58 (.Y(n41), 
	.B(i_div_ratio[1]), 
	.AN(counter[0]));
   OAI2B2X1M U59 (.Y(n42), 
	.B1(n41), 
	.B0(counter[1]), 
	.A1N(i_div_ratio[2]), 
	.A0(n41));
   NAND4X1M U60 (.Y(n49), 
	.D(n42), 
	.C(n43), 
	.B(n44), 
	.A(n45));
   CLKXOR2X2M U61 (.Y(n48), 
	.B(counter[6]), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U62 (.Y(n47), 
	.B(counter[4]), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U63 (.Y(n46), 
	.B(counter[5]), 
	.A(LTIE_LTIELO_NET));
   NOR4X1M U64 (.Y(N16), 
	.D(n46), 
	.C(n47), 
	.B(n48), 
	.A(n49));
   Integer_Clock_Divider_1_DW01_inc_0 add_53 (.A({ counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N28,
		N27,
		N26,
		N25,
		N24,
		N23,
		N22 }));
endmodule

module UART_TX_serializer_test_1 (
	CLK, 
	RST, 
	Data_Valid, 
	busy, 
	P_DATA, 
	ser_en, 
	ser_done, 
	S_DATA, 
	test_si, 
	test_se, 
	FE_OFN20_SE);
   input CLK;
   input RST;
   input Data_Valid;
   input busy;
   input [7:0] P_DATA;
   input ser_en;
   output ser_done;
   output S_DATA;
   input test_si;
   input test_se;
   input FE_OFN20_SE;

   // Internal wires
   wire n15;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n55;
   wire n56;
   wire [7:0] parallel_data;
   wire [3:0] counter;

   SDFFRX1M \parallel_data_reg[0]  (.SI(n55), 
	.SE(test_se), 
	.RN(RST), 
	.QN(n15), 
	.Q(n56), 
	.D(n50), 
	.CK(CLK));
   SDFFRQX2M \parallel_data_reg[6]  (.SI(parallel_data[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(parallel_data[6]), 
	.D(n44), 
	.CK(CLK));
   SDFFRQX2M \parallel_data_reg[5]  (.SI(parallel_data[4]), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(parallel_data[5]), 
	.D(n45), 
	.CK(CLK));
   SDFFRQX2M \parallel_data_reg[4]  (.SI(parallel_data[3]), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(parallel_data[4]), 
	.D(n46), 
	.CK(CLK));
   SDFFRQX2M \parallel_data_reg[3]  (.SI(parallel_data[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(parallel_data[3]), 
	.D(n47), 
	.CK(CLK));
   SDFFRQX2M \parallel_data_reg[2]  (.SI(parallel_data[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(parallel_data[2]), 
	.D(n48), 
	.CK(CLK));
   SDFFRQX2M \parallel_data_reg[1]  (.SI(n56), 
	.SE(test_se), 
	.RN(RST), 
	.Q(parallel_data[1]), 
	.D(n49), 
	.CK(CLK));
   SDFFRQX2M \parallel_data_reg[7]  (.SI(parallel_data[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(parallel_data[7]), 
	.D(n51), 
	.CK(CLK));
   SDFFRQX2M ser_done_reg (.SI(parallel_data[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ser_done), 
	.D(n42), 
	.CK(CLK));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter[3]), 
	.D(n53), 
	.CK(CLK));
   SDFFRQX2M \counter_reg[0]  (.SI(S_DATA), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter[0]), 
	.D(n54), 
	.CK(CLK));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter[2]), 
	.D(n17), 
	.CK(CLK));
   SDFFRQX2M \counter_reg[1]  (.SI(n21), 
	.SE(test_se), 
	.RN(RST), 
	.Q(counter[1]), 
	.D(n52), 
	.CK(CLK));
   SDFFSQX1M S_DATA_reg (.SN(RST), 
	.SI(test_si), 
	.SE(test_se), 
	.Q(S_DATA), 
	.D(n43), 
	.CK(CLK));
   NAND2X2M U18 (.Y(n26), 
	.B(n25), 
	.A(n20));
   INVX2M U19 (.Y(n20), 
	.A(n28));
   INVX2M U20 (.Y(n18), 
	.A(n25));
   INVX2M U21 (.Y(n19), 
	.A(n40));
   NOR2BX2M U22 (.Y(n28), 
	.B(busy), 
	.AN(Data_Valid));
   OAI21X2M U23 (.Y(n40), 
	.B0(n25), 
	.A1(n41), 
	.A0(n28));
   NAND3X2M U24 (.Y(n25), 
	.C(ser_en), 
	.B(n20), 
	.A(n41));
   AOI21X2M U25 (.Y(n38), 
	.B0(n19), 
	.A1(n18), 
	.A0(n21));
   NOR2X2M U26 (.Y(n36), 
	.B(n19), 
	.A(n21));
   OAI2BB2X1M U27 (.Y(n52), 
	.B1(n22), 
	.B0(n38), 
	.A1N(n36), 
	.A0N(n22));
   OAI21X2M U28 (.Y(n53), 
	.B0(n24), 
	.A1(n55), 
	.A0(n39));
   AOI21X2M U29 (.Y(n39), 
	.B0(n37), 
	.A1(n23), 
	.A0(n18));
   OAI21X2M U30 (.Y(n37), 
	.B0(n38), 
	.A1(n25), 
	.A0(counter[1]));
   NAND4X2M U31 (.Y(n41), 
	.D(n23), 
	.C(n22), 
	.B(n21), 
	.A(counter[3]));
   OAI2B1X2M U32 (.Y(n49), 
	.B0(n33), 
	.A1N(parallel_data[1]), 
	.A0(n26));
   AOI22X1M U33 (.Y(n33), 
	.B1(n28), 
	.B0(P_DATA[1]), 
	.A1(n18), 
	.A0(parallel_data[2]));
   OAI2B1X2M U34 (.Y(n48), 
	.B0(n32), 
	.A1N(parallel_data[2]), 
	.A0(n26));
   AOI22X1M U35 (.Y(n32), 
	.B1(n28), 
	.B0(P_DATA[2]), 
	.A1(n18), 
	.A0(parallel_data[3]));
   OAI2B1X2M U36 (.Y(n47), 
	.B0(n31), 
	.A1N(parallel_data[3]), 
	.A0(n26));
   AOI22X1M U37 (.Y(n31), 
	.B1(n28), 
	.B0(P_DATA[3]), 
	.A1(n18), 
	.A0(parallel_data[4]));
   OAI2B1X2M U38 (.Y(n46), 
	.B0(n30), 
	.A1N(parallel_data[4]), 
	.A0(n26));
   AOI22X1M U39 (.Y(n30), 
	.B1(n28), 
	.B0(P_DATA[4]), 
	.A1(n18), 
	.A0(parallel_data[5]));
   OAI2B1X2M U40 (.Y(n45), 
	.B0(n29), 
	.A1N(parallel_data[5]), 
	.A0(n26));
   AOI22X1M U41 (.Y(n29), 
	.B1(n28), 
	.B0(P_DATA[5]), 
	.A1(n18), 
	.A0(parallel_data[6]));
   OAI2B1X2M U42 (.Y(n44), 
	.B0(n27), 
	.A1N(parallel_data[6]), 
	.A0(n26));
   AOI22X1M U43 (.Y(n27), 
	.B1(n28), 
	.B0(P_DATA[6]), 
	.A1(n18), 
	.A0(parallel_data[7]));
   NAND4X2M U44 (.Y(n24), 
	.D(n55), 
	.C(n36), 
	.B(counter[1]), 
	.A(counter[2]));
   OAI21X2M U45 (.Y(n50), 
	.B0(n34), 
	.A1(n26), 
	.A0(n15));
   AOI22X1M U46 (.Y(n34), 
	.B1(n28), 
	.B0(P_DATA[0]), 
	.A1(n18), 
	.A0(parallel_data[1]));
   INVX2M U47 (.Y(n21), 
	.A(counter[0]));
   INVX2M U48 (.Y(n22), 
	.A(counter[1]));
   INVX2M U49 (.Y(n23), 
	.A(counter[2]));
   INVX2M U50 (.Y(n17), 
	.A(n35));
   AOI32X1M U51 (.Y(n35), 
	.B1(counter[2]), 
	.B0(n37), 
	.A2(n36), 
	.A1(n23), 
	.A0(counter[1]));
   OAI2BB1X2M U52 (.Y(n42), 
	.B0(n24), 
	.A1N(n19), 
	.A0N(ser_done));
   OAI22X1M U53 (.Y(n54), 
	.B1(n25), 
	.B0(counter[0]), 
	.A1(n21), 
	.A0(n40));
   OAI2BB2X1M U54 (.Y(n43), 
	.B1(n15), 
	.B0(n25), 
	.A1N(n25), 
	.A0N(S_DATA));
   INVX2M U55 (.Y(n55), 
	.A(counter[3]));
   AO22X1M U56 (.Y(n51), 
	.B1(n28), 
	.B0(P_DATA[7]), 
	.A1(parallel_data[7]), 
	.A0(n20));
endmodule

module UART_TX_FSM_test_1 (
	Data_Valid, 
	PAR_EN, 
	ser_done, 
	CLK, 
	RST, 
	ser_en, 
	mux_sel, 
	busy, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN4_TX_CLK_scan);
   input Data_Valid;
   input PAR_EN;
   input ser_done;
   input CLK;
   input RST;
   output ser_en;
   output [1:0] mux_sel;
   output busy;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN4_TX_CLK_scan;

   // Internal wires
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n5;
   wire n6;
   wire n11;
   wire [2:0] current_state;
   wire [2:0] next_state;

   assign busy = next_state[1] ;
   assign test_so = n6 ;

   SDFFRQX2M \current_state_reg[2]  (.SI(n5), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(FE_OFN4_TX_CLK_scan));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(CLK));
   NAND2X2M U6 (.Y(mux_sel[1]), 
	.B(n8), 
	.A(n7));
   AOI2BB1X2M U7 (.Y(next_state[1]), 
	.B0(current_state[2]), 
	.A1N(current_state[1]), 
	.A0N(current_state[0]));
   NAND3X2M U8 (.Y(n7), 
	.C(current_state[1]), 
	.B(n6), 
	.A(current_state[0]));
   NAND3X2M U9 (.Y(n10), 
	.C(current_state[0]), 
	.B(n6), 
	.A(n5));
   INVX2M U10 (.Y(n6), 
	.A(current_state[2]));
   INVX2M U11 (.Y(n5), 
	.A(current_state[1]));
   OAI31X1M U12 (.Y(next_state[2]), 
	.B0(n8), 
	.A2(n7), 
	.A1(PAR_EN), 
	.A0(n11));
   INVX2M U13 (.Y(n11), 
	.A(ser_done));
   NAND3BX2M U14 (.Y(n8), 
	.C(current_state[1]), 
	.B(n6), 
	.AN(current_state[0]));
   OAI211X2M U15 (.Y(next_state[0]), 
	.C0(n10), 
	.B0(n9), 
	.A1(n7), 
	.A0(ser_done));
   NAND3X2M U16 (.Y(n9), 
	.C(Data_Valid), 
	.B(n6), 
	.A(n5));
   BUFX2M U17 (.Y(mux_sel[0]), 
	.A(ser_en));
   NAND2X2M U18 (.Y(ser_en), 
	.B(n10), 
	.A(n7));
endmodule

module UART_TX_parity_Calc_test_1 (
	CLK, 
	RST, 
	P_DATA, 
	Data_Valid, 
	busy, 
	PAR_TYP, 
	par_bit, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN20_SE);
   input CLK;
   input RST;
   input [7:0] P_DATA;
   input Data_Valid;
   input busy;
   input PAR_TYP;
   output par_bit;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN20_SE;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n7;
   wire n9;
   wire n11;
   wire n13;
   wire n15;
   wire n17;
   wire n19;
   wire n21;
   wire [7:0] parallel_data;

   assign test_so = parallel_data[7] ;

   SDFFRQX2M \parallel_data_reg[5]  (.SI(parallel_data[4]), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(parallel_data[5]), 
	.D(n17), 
	.CK(CLK));
   SDFFRQX2M \parallel_data_reg[1]  (.SI(parallel_data[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(parallel_data[1]), 
	.D(n9), 
	.CK(CLK));
   SDFFRQX2M \parallel_data_reg[4]  (.SI(parallel_data[3]), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(parallel_data[4]), 
	.D(n15), 
	.CK(CLK));
   SDFFRQX2M \parallel_data_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(parallel_data[0]), 
	.D(n7), 
	.CK(CLK));
   SDFFRQX2M \parallel_data_reg[6]  (.SI(parallel_data[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(parallel_data[6]), 
	.D(n19), 
	.CK(CLK));
   SDFFRQX2M \parallel_data_reg[2]  (.SI(parallel_data[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(parallel_data[2]), 
	.D(n11), 
	.CK(CLK));
   SDFFRQX2M \parallel_data_reg[7]  (.SI(parallel_data[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(parallel_data[7]), 
	.D(n21), 
	.CK(CLK));
   SDFFRQX2M \parallel_data_reg[3]  (.SI(parallel_data[2]), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(parallel_data[3]), 
	.D(n13), 
	.CK(CLK));
   NOR2BX2M U2 (.Y(n5), 
	.B(busy), 
	.AN(Data_Valid));
   AO2B2X2M U3 (.Y(n7), 
	.B1(n5), 
	.B0(P_DATA[0]), 
	.A1N(n5), 
	.A0(parallel_data[0]));
   AO2B2X2M U4 (.Y(n9), 
	.B1(n5), 
	.B0(P_DATA[1]), 
	.A1N(n5), 
	.A0(parallel_data[1]));
   AO2B2X2M U5 (.Y(n11), 
	.B1(n5), 
	.B0(P_DATA[2]), 
	.A1N(n5), 
	.A0(parallel_data[2]));
   AO2B2X2M U6 (.Y(n13), 
	.B1(n5), 
	.B0(P_DATA[3]), 
	.A1N(n5), 
	.A0(parallel_data[3]));
   AO2B2X2M U7 (.Y(n15), 
	.B1(n5), 
	.B0(P_DATA[4]), 
	.A1N(n5), 
	.A0(parallel_data[4]));
   AO2B2X2M U8 (.Y(n17), 
	.B1(n5), 
	.B0(P_DATA[5]), 
	.A1N(n5), 
	.A0(parallel_data[5]));
   AO2B2X2M U9 (.Y(n19), 
	.B1(n5), 
	.B0(P_DATA[6]), 
	.A1N(n5), 
	.A0(parallel_data[6]));
   AO2B2X2M U10 (.Y(n21), 
	.B1(n5), 
	.B0(P_DATA[7]), 
	.A1N(n5), 
	.A0(parallel_data[7]));
   XOR3XLM U11 (.Y(par_bit), 
	.C(PAR_TYP), 
	.B(n2), 
	.A(n1));
   XOR3XLM U12 (.Y(n1), 
	.C(n4), 
	.B(parallel_data[4]), 
	.A(parallel_data[5]));
   XOR3XLM U13 (.Y(n2), 
	.C(n3), 
	.B(parallel_data[0]), 
	.A(parallel_data[1]));
   CLKXOR2X2M U14 (.Y(n4), 
	.B(parallel_data[6]), 
	.A(parallel_data[7]));
   CLKXOR2X2M U15 (.Y(n3), 
	.B(parallel_data[2]), 
	.A(parallel_data[3]));
endmodule

module UART_TX_MUX (
	mux_sel, 
	S_DATA, 
	par_bit, 
	TX_OUT);
   input [1:0] mux_sel;
   input S_DATA;
   input par_bit;
   output TX_OUT;

   // Internal wires
   wire n4;
   wire n1;
   wire n2;

   NOR2BX2M U3 (.Y(n1), 
	.B(par_bit), 
	.AN(mux_sel[1]));
   CLKBUFX8M U4 (.Y(TX_OUT), 
	.A(n4));
   OAI21X2M U5 (.Y(n4), 
	.B0(n2), 
	.A1(n1), 
	.A0(mux_sel[0]));
   NAND3X2M U6 (.Y(n2), 
	.C(mux_sel[1]), 
	.B(S_DATA), 
	.A(mux_sel[0]));
endmodule

module UART_TX_test_1 (
	P_DATA, 
	Data_Valid, 
	PAR_EN, 
	PAR_TYP, 
	CLK, 
	RST, 
	TX_OUT, 
	busy, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN4_TX_CLK_scan, 
	FE_OFN20_SE);
   input [7:0] P_DATA;
   input Data_Valid;
   input PAR_EN;
   input PAR_TYP;
   input CLK;
   input RST;
   output TX_OUT;
   output busy;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN4_TX_CLK_scan;
   input FE_OFN20_SE;

   // Internal wires
   wire ser_done;
   wire ser_en;
   wire S_DATA;
   wire par_bit;
   wire n3;
   wire n4;
   wire [1:0] mux_sel;

   assign test_so = ser_done ;

   UART_TX_serializer_test_1 U0_serializer (.CLK(FE_OFN4_TX_CLK_scan), 
	.RST(RST), 
	.Data_Valid(Data_Valid), 
	.busy(busy), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.ser_en(ser_en), 
	.ser_done(ser_done), 
	.S_DATA(S_DATA), 
	.test_si(n3), 
	.test_se(test_se), 
	.FE_OFN20_SE(FE_OFN20_SE));
   UART_TX_FSM_test_1 U0_FSM (.Data_Valid(Data_Valid), 
	.PAR_EN(PAR_EN), 
	.ser_done(ser_done), 
	.CLK(CLK), 
	.RST(RST), 
	.ser_en(ser_en), 
	.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.busy(busy), 
	.test_si(test_si), 
	.test_so(n4), 
	.test_se(test_se), 
	.FE_OFN4_TX_CLK_scan(FE_OFN4_TX_CLK_scan));
   UART_TX_parity_Calc_test_1 U0_parity_Calc (.CLK(FE_OFN4_TX_CLK_scan), 
	.RST(RST), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.Data_Valid(Data_Valid), 
	.busy(busy), 
	.PAR_TYP(PAR_TYP), 
	.par_bit(par_bit), 
	.test_si(n4), 
	.test_so(n3), 
	.test_se(test_se), 
	.FE_OFN20_SE(FE_OFN20_SE));
   UART_TX_MUX U0_MUX (.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.S_DATA(S_DATA), 
	.par_bit(par_bit), 
	.TX_OUT(TX_OUT));
endmodule

module UART_RX_FSM_test_1 (
	CLK, 
	RST, 
	RX_IN, 
	PAR_EN, 
	Prescale, 
	edge_cnt, 
	bit_cnt, 
	par_err, 
	strt_glitch, 
	stp_err, 
	dat_samp_en, 
	enable, 
	deser_en, 
	stp_chk_en, 
	strt_chk_en, 
	par_chk_en, 
	data_valid, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input RX_IN;
   input PAR_EN;
   input [5:0] Prescale;
   input [4:0] edge_cnt;
   input [3:0] bit_cnt;
   input par_err;
   input strt_glitch;
   input stp_err;
   output dat_samp_en;
   output enable;
   output deser_en;
   output stp_chk_en;
   output strt_chk_en;
   output par_chk_en;
   output data_valid;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire N33;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N54;
   wire N72;
   wire N73;
   wire N74;
   wire N75;
   wire N76;
   wire N77;
   wire N79;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire \r85/carry[5] ;
   wire \r85/carry[4] ;
   wire \r85/carry[3] ;
   wire n1;
   wire n2;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire [2:0] current_state;
   wire [2:0] next_state;

   assign N72 = Prescale[0] ;
   assign test_so = n54 ;

   SDFFRQX2M \current_state_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(CLK));
   NOR2X2M U4 (.Y(n1), 
	.B(\r85/carry[5] ), 
	.A(Prescale[5]));
   NOR3XLM U5 (.Y(data_valid), 
	.C(par_err), 
	.B(stp_err), 
	.A(n43));
   NOR4X1M U6 (.Y(n45), 
	.D(current_state[1]), 
	.C(n52), 
	.B(current_state[2]), 
	.A(strt_glitch));
   INVX2M U7 (.Y(n49), 
	.A(n35));
   NAND2X2M U10 (.Y(next_state[1]), 
	.B(n40), 
	.A(n39));
   OAI32X1M U11 (.Y(par_chk_en), 
	.B1(n37), 
	.B0(n36), 
	.A2(n35), 
	.A1(n34), 
	.A0(n55));
   OAI21X2M U12 (.Y(deser_en), 
	.B0(n40), 
	.A1(n34), 
	.A0(n49));
   NAND3X2M U13 (.Y(n35), 
	.C(N54), 
	.B(n50), 
	.A(n38));
   NAND2X2M U14 (.Y(n40), 
	.B(n27), 
	.A(n45));
   AOI32X1M U15 (.Y(n31), 
	.B1(n36), 
	.B0(n51), 
	.A2(n53), 
	.A1(n55), 
	.A0(n49));
   NAND2X2M U16 (.Y(next_state[2]), 
	.B(n30), 
	.A(n31));
   NOR3BX2M U17 (.Y(n39), 
	.C(n51), 
	.B(n53), 
	.AN(n30));
   INVX2M U18 (.Y(n48), 
	.A(n45));
   INVX2M U19 (.Y(n53), 
	.A(n34));
   INVX2M U20 (.Y(n51), 
	.A(n37));
   NAND4BX1M U21 (.Y(n27), 
	.D(n46), 
	.C(n50), 
	.B(N40), 
	.AN(bit_cnt[1]));
   NOR2X2M U22 (.Y(n46), 
	.B(bit_cnt[2]), 
	.A(bit_cnt[3]));
   OR2X2M U23 (.Y(n4), 
	.B(N72), 
	.A(Prescale[1]));
   NAND4X2M U24 (.Y(n32), 
	.D(bit_cnt[3]), 
	.C(n44), 
	.B(N79), 
	.A(bit_cnt[1]));
   NOR2X2M U25 (.Y(n44), 
	.B(bit_cnt[0]), 
	.A(bit_cnt[2]));
   AOI22X1M U26 (.Y(n29), 
	.B1(n55), 
	.B0(n33), 
	.A1(n32), 
	.A0(PAR_EN));
   NAND3X2M U27 (.Y(n33), 
	.C(N79), 
	.B(n38), 
	.A(bit_cnt[0]));
   OAI2BB2X1M U28 (.Y(strt_chk_en), 
	.B1(n27), 
	.B0(n48), 
	.A1N(n28), 
	.A0N(n56));
   OAI211X2M U29 (.Y(next_state[0]), 
	.C0(n42), 
	.B0(n48), 
	.A1(n30), 
	.A0(n41));
   AOI22X1M U30 (.Y(n42), 
	.B1(n35), 
	.B0(n53), 
	.A1(n56), 
	.A0(n28));
   OA22X2M U31 (.Y(n41), 
	.B1(PAR_EN), 
	.B0(n33), 
	.A1(n55), 
	.A0(n32));
   OAI21X2M U32 (.Y(stp_chk_en), 
	.B0(n31), 
	.A1(n30), 
	.A0(n29));
   AND3X2M U33 (.Y(n36), 
	.C(bit_cnt[0]), 
	.B(n38), 
	.A(N54));
   INVX2M U34 (.Y(N73), 
	.A(Prescale[1]));
   AOI21BX2M U35 (.Y(n2), 
	.B0N(n4), 
	.A1(Prescale[1]), 
	.A0(N72));
   INVX2M U36 (.Y(n19), 
	.A(edge_cnt[0]));
   NOR3BX2M U37 (.Y(n38), 
	.C(bit_cnt[2]), 
	.B(bit_cnt[1]), 
	.AN(bit_cnt[3]));
   NAND3X2M U38 (.Y(n30), 
	.C(current_state[2]), 
	.B(n52), 
	.A(current_state[1]));
   INVX2M U39 (.Y(n50), 
	.A(bit_cnt[0]));
   NAND3X2M U40 (.Y(n34), 
	.C(current_state[1]), 
	.B(n54), 
	.A(current_state[0]));
   NAND3X2M U41 (.Y(n37), 
	.C(current_state[1]), 
	.B(n54), 
	.A(n52));
   INVX2M U42 (.Y(n52), 
	.A(current_state[0]));
   INVX2M U43 (.Y(n54), 
	.A(current_state[2]));
   OAI31X1M U44 (.Y(n28), 
	.B0(n43), 
	.A2(current_state[1]), 
	.A1(current_state[2]), 
	.A0(current_state[0]));
   NAND3X2M U45 (.Y(n43), 
	.C(current_state[2]), 
	.B(current_state[0]), 
	.A(current_state[1]));
   INVX2M U46 (.Y(n55), 
	.A(PAR_EN));
   INVX2M U47 (.Y(n56), 
	.A(RX_IN));
   BUFX2M U48 (.Y(dat_samp_en), 
	.A(enable));
   NAND2X2M U49 (.Y(enable), 
	.B(n48), 
	.A(n39));
   XNOR2X1M U50 (.Y(N77), 
	.B(Prescale[5]), 
	.A(\r85/carry[5] ));
   OR2X1M U51 (.Y(\r85/carry[5] ), 
	.B(\r85/carry[4] ), 
	.A(Prescale[4]));
   XNOR2X1M U52 (.Y(N76), 
	.B(Prescale[4]), 
	.A(\r85/carry[4] ));
   OR2X1M U53 (.Y(\r85/carry[4] ), 
	.B(\r85/carry[3] ), 
	.A(Prescale[3]));
   XNOR2X1M U54 (.Y(N75), 
	.B(Prescale[3]), 
	.A(\r85/carry[3] ));
   OR2X1M U55 (.Y(\r85/carry[3] ), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   XNOR2X1M U56 (.Y(N74), 
	.B(Prescale[2]), 
	.A(Prescale[1]));
   CLKINVX1M U57 (.Y(N33), 
	.A(N72));
   OR2X1M U58 (.Y(n5), 
	.B(Prescale[2]), 
	.A(n4));
   OAI2BB1X1M U59 (.Y(N35), 
	.B0(n5), 
	.A1N(Prescale[2]), 
	.A0N(n4));
   OR2X1M U60 (.Y(n6), 
	.B(Prescale[3]), 
	.A(n5));
   OAI2BB1X1M U61 (.Y(N36), 
	.B0(n6), 
	.A1N(Prescale[3]), 
	.A0N(n5));
   OR2X1M U62 (.Y(n7), 
	.B(Prescale[4]), 
	.A(n6));
   OAI2BB1X1M U63 (.Y(N37), 
	.B0(n7), 
	.A1N(Prescale[4]), 
	.A0N(n6));
   NOR2X1M U64 (.Y(N39), 
	.B(Prescale[5]), 
	.A(n7));
   AO21XLM U65 (.Y(N38), 
	.B0(N39), 
	.A1(Prescale[5]), 
	.A0(n7));
   XNOR2X1M U66 (.Y(n18), 
	.B(edge_cnt[3]), 
	.A(N36));
   XNOR2X1M U67 (.Y(n14), 
	.B(edge_cnt[2]), 
	.A(N35));
   XNOR2X1M U68 (.Y(n13), 
	.B(edge_cnt[4]), 
	.A(N37));
   NOR2X1M U69 (.Y(n8), 
	.B(N33), 
	.A(n19));
   OAI22X1M U70 (.Y(n11), 
	.B1(n2), 
	.B0(n8), 
	.A1(n8), 
	.A0(edge_cnt[1]));
   CLKNAND2X2M U71 (.Y(n9), 
	.B(n19), 
	.A(N33));
   AOI22X1M U72 (.Y(n10), 
	.B1(edge_cnt[1]), 
	.B0(n9), 
	.A1(n2), 
	.A0(n9));
   NOR4BX1M U73 (.Y(n12), 
	.D(n10), 
	.C(N38), 
	.B(N39), 
	.AN(n11));
   NAND4X1M U74 (.Y(N40), 
	.D(n12), 
	.C(n13), 
	.B(n14), 
	.A(n18));
   CLKINVX1M U75 (.Y(N54), 
	.A(N40));
   NOR2BX1M U76 (.Y(n20), 
	.B(N72), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U77 (.Y(n23), 
	.B1(n20), 
	.B0(edge_cnt[1]), 
	.A1N(N73), 
	.A0(n20));
   NOR2BX1M U78 (.Y(n21), 
	.B(edge_cnt[0]), 
	.AN(N72));
   OAI2B2X1M U79 (.Y(n22), 
	.B1(n21), 
	.B0(N73), 
	.A1N(edge_cnt[1]), 
	.A0(n21));
   NAND4BBX1M U80 (.Y(n47), 
	.D(n22), 
	.C(n23), 
	.BN(N77), 
	.AN(n1));
   CLKXOR2X2M U81 (.Y(n26), 
	.B(edge_cnt[4]), 
	.A(N76));
   CLKXOR2X2M U82 (.Y(n25), 
	.B(edge_cnt[2]), 
	.A(N74));
   CLKXOR2X2M U83 (.Y(n24), 
	.B(edge_cnt[3]), 
	.A(N75));
   NOR4X1M U84 (.Y(N79), 
	.D(n24), 
	.C(n25), 
	.B(n26), 
	.A(n47));
endmodule

module UART_RX_edge_bit_counter_test_1 (
	CLK, 
	RST, 
	Prescale, 
	PAR_EN, 
	enable, 
	bit_cnt, 
	edge_cnt, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input [5:0] Prescale;
   input PAR_EN;
   input enable;
   output [3:0] bit_cnt;
   output [4:0] edge_cnt;
   input test_si;
   input test_se;

   // Internal wires
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N30;
   wire N31;
   wire N32;
   wire N33;
   wire N34;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire \add_22/carry[4] ;
   wire \add_22/carry[3] ;
   wire \add_22/carry[2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;

   SDFFRQX2M \edge_cnt_reg[4]  (.SI(edge_cnt[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_cnt[4]), 
	.D(N34), 
	.CK(CLK));
   SDFFRQX2M \bit_cnt_reg[3]  (.SI(n37), 
	.SE(test_se), 
	.RN(RST), 
	.Q(bit_cnt[3]), 
	.D(n27), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[2]  (.SI(edge_cnt[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_cnt[2]), 
	.D(N32), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[3]  (.SI(edge_cnt[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_cnt[3]), 
	.D(N33), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[0]  (.SI(n38), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_cnt[0]), 
	.D(N30), 
	.CK(CLK));
   SDFFRQX2M \edge_cnt_reg[1]  (.SI(N7), 
	.SE(test_se), 
	.RN(RST), 
	.Q(edge_cnt[1]), 
	.D(N31), 
	.CK(CLK));
   SDFFRQX2M \bit_cnt_reg[2]  (.SI(n36), 
	.SE(test_se), 
	.RN(RST), 
	.Q(bit_cnt[2]), 
	.D(n28), 
	.CK(CLK));
   SDFFRQX2M \bit_cnt_reg[1]  (.SI(n35), 
	.SE(test_se), 
	.RN(RST), 
	.Q(bit_cnt[1]), 
	.D(n29), 
	.CK(CLK));
   SDFFRQX2M \bit_cnt_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(bit_cnt[0]), 
	.D(n30), 
	.CK(CLK));
   INVX2M U7 (.Y(n33), 
	.A(enable));
   INVX2M U8 (.Y(n32), 
	.A(n26));
   NOR2X2M U14 (.Y(n26), 
	.B(N19), 
	.A(n33));
   AOI21X2M U15 (.Y(n25), 
	.B0(n26), 
	.A1(enable), 
	.A0(n35));
   AND2X2M U16 (.Y(N33), 
	.B(n26), 
	.A(N10));
   AND2X2M U17 (.Y(N32), 
	.B(n26), 
	.A(N9));
   AND2X2M U18 (.Y(N31), 
	.B(n26), 
	.A(N8));
   NOR3X2M U19 (.Y(n22), 
	.C(n37), 
	.B(n35), 
	.A(n36));
   OAI32X1M U20 (.Y(n30), 
	.B1(n32), 
	.B0(n35), 
	.A2(n26), 
	.A1(bit_cnt[0]), 
	.A0(n33));
   OAI32X1M U21 (.Y(n28), 
	.B1(n37), 
	.B0(n24), 
	.A2(n36), 
	.A1(bit_cnt[2]), 
	.A0(n23));
   OA21X2M U22 (.Y(n24), 
	.B0(n25), 
	.A1(bit_cnt[1]), 
	.A0(n33));
   OAI22X1M U23 (.Y(n27), 
	.B1(n33), 
	.B0(n21), 
	.A1(n32), 
	.A0(n38));
   AOI32X1M U24 (.Y(n21), 
	.B1(n34), 
	.B0(bit_cnt[3]), 
	.A2(N19), 
	.A1(n38), 
	.A0(n22));
   INVX2M U25 (.Y(n38), 
	.A(bit_cnt[3]));
   INVX2M U26 (.Y(n34), 
	.A(n22));
   OAI22X1M U27 (.Y(n29), 
	.B1(n23), 
	.B0(bit_cnt[1]), 
	.A1(n36), 
	.A0(n25));
   NAND3X2M U28 (.Y(n23), 
	.C(enable), 
	.B(n32), 
	.A(bit_cnt[0]));
   OR2X2M U29 (.Y(n1), 
	.B(Prescale[0]), 
	.A(Prescale[1]));
   AND2X2M U30 (.Y(N34), 
	.B(n26), 
	.A(N11));
   AND2X2M U31 (.Y(N30), 
	.B(n26), 
	.A(N7));
   INVX2M U32 (.Y(n35), 
	.A(bit_cnt[0]));
   INVX2M U33 (.Y(n36), 
	.A(bit_cnt[1]));
   INVX2M U34 (.Y(n37), 
	.A(bit_cnt[2]));
   ADDHX1M U35 (.S(N8), 
	.CO(\add_22/carry[2] ), 
	.B(edge_cnt[0]), 
	.A(edge_cnt[1]));
   ADDHX1M U36 (.S(N9), 
	.CO(\add_22/carry[3] ), 
	.B(\add_22/carry[2] ), 
	.A(edge_cnt[2]));
   ADDHX1M U37 (.S(N10), 
	.CO(\add_22/carry[4] ), 
	.B(\add_22/carry[3] ), 
	.A(edge_cnt[3]));
   CLKINVX1M U38 (.Y(N7), 
	.A(edge_cnt[0]));
   CLKXOR2X2M U39 (.Y(N11), 
	.B(edge_cnt[4]), 
	.A(\add_22/carry[4] ));
   CLKINVX1M U40 (.Y(N12), 
	.A(Prescale[0]));
   OAI2BB1X1M U41 (.Y(N13), 
	.B0(n1), 
	.A1N(Prescale[1]), 
	.A0N(Prescale[0]));
   OR2X1M U42 (.Y(n2), 
	.B(Prescale[2]), 
	.A(n1));
   OAI2BB1X1M U43 (.Y(N14), 
	.B0(n2), 
	.A1N(Prescale[2]), 
	.A0N(n1));
   OR2X1M U44 (.Y(n3), 
	.B(Prescale[3]), 
	.A(n2));
   OAI2BB1X1M U45 (.Y(N15), 
	.B0(n3), 
	.A1N(Prescale[3]), 
	.A0N(n2));
   OR2X1M U46 (.Y(n4), 
	.B(Prescale[4]), 
	.A(n3));
   OAI2BB1X1M U47 (.Y(N16), 
	.B0(n4), 
	.A1N(Prescale[4]), 
	.A0N(n3));
   NOR2X1M U48 (.Y(N18), 
	.B(Prescale[5]), 
	.A(n4));
   AO21XLM U49 (.Y(N17), 
	.B0(N18), 
	.A1(Prescale[5]), 
	.A0(n4));
   NOR2BX1M U50 (.Y(n14), 
	.B(N12), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U51 (.Y(n17), 
	.B1(n14), 
	.B0(edge_cnt[1]), 
	.A1N(N13), 
	.A0(n14));
   NOR2BX1M U52 (.Y(n15), 
	.B(edge_cnt[0]), 
	.AN(N12));
   OAI2B2X1M U53 (.Y(n16), 
	.B1(n15), 
	.B0(N13), 
	.A1N(edge_cnt[1]), 
	.A0(n15));
   NAND4BBX1M U54 (.Y(n31), 
	.D(n16), 
	.C(n17), 
	.BN(N17), 
	.AN(N18));
   CLKXOR2X2M U55 (.Y(n20), 
	.B(edge_cnt[4]), 
	.A(N16));
   CLKXOR2X2M U56 (.Y(n19), 
	.B(edge_cnt[2]), 
	.A(N14));
   CLKXOR2X2M U57 (.Y(n18), 
	.B(edge_cnt[3]), 
	.A(N15));
   NOR4X1M U58 (.Y(N19), 
	.D(n18), 
	.C(n19), 
	.B(n20), 
	.A(n31));
endmodule

module UART_RX_data_sampling_test_1 (
	CLK, 
	RST, 
	RX_IN, 
	Prescale, 
	dat_samp_en, 
	edge_cnt, 
	sampled_bit, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input RX_IN;
   input [5:0] Prescale;
   input dat_samp_en;
   input [4:0] edge_cnt;
   output sampled_bit;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N47;
   wire N48;
   wire N49;
   wire N50;
   wire N58;
   wire N59;
   wire N60;
   wire N61;
   wire N62;
   wire N88;
   wire N89;
   wire N90;
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N121;
   wire N122;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire \add_33/carry[5] ;
   wire \add_33/carry[4] ;
   wire \add_33/carry[3] ;
   wire \add_29/carry[5] ;
   wire \add_29/carry[4] ;
   wire \add_29/carry[3] ;
   wire \add_29/carry[2] ;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n23;
   wire n24;
   wire n25;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire [2:0] sampled_data;

   assign test_so = sampled_data[2] ;

   SDFFQX2M \sampled_data_reg[2]  (.SI(sampled_data[1]), 
	.SE(test_se), 
	.Q(sampled_data[2]), 
	.D(n37), 
	.CK(CLK));
   SDFFQX2M \sampled_data_reg[0]  (.SI(sampled_bit), 
	.SE(test_se), 
	.Q(sampled_data[0]), 
	.D(n35), 
	.CK(CLK));
   SDFFRQX2M sampled_bit_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sampled_bit), 
	.D(n34), 
	.CK(CLK));
   SDFFQX1M \sampled_data_reg[1]  (.SI(sampled_data[0]), 
	.SE(test_se), 
	.Q(sampled_data[1]), 
	.D(n36), 
	.CK(CLK));
   NOR2X2M U4 (.Y(n81), 
	.B(n13), 
	.A(N121));
   NOR2X2M U5 (.Y(n64), 
	.B(n13), 
	.A(N88));
   AND2X2M U20 (.Y(n31), 
	.B(RST), 
	.A(dat_samp_en));
   INVX2M U21 (.Y(n84), 
	.A(N49));
   INVX2M U22 (.Y(n41), 
	.A(N47));
   AND2X2M U23 (.Y(n40), 
	.B(n41), 
	.A(n15));
   NAND2X2M U24 (.Y(n39), 
	.B(n16), 
	.A(n41));
   NOR3BX2M U27 (.Y(n16), 
	.C(N48), 
	.B(N22), 
	.AN(n41));
   NOR2X2M U28 (.Y(n28), 
	.B(N50), 
	.A(N89));
   OR2X2M U29 (.Y(n9), 
	.B(N90), 
	.A(N12));
   ADDHX1M U30 (.S(N58), 
	.CO(\add_29/carry[2] ), 
	.B(N90), 
	.A(N12));
   ADDHX1M U31 (.S(N59), 
	.CO(\add_29/carry[3] ), 
	.B(\add_29/carry[2] ), 
	.A(N13));
   ADDHX1M U32 (.S(N60), 
	.CO(\add_29/carry[4] ), 
	.B(\add_29/carry[3] ), 
	.A(N14));
   ADDHX1M U33 (.S(N61), 
	.CO(\add_29/carry[5] ), 
	.B(\add_29/carry[4] ), 
	.A(N15));
   INVX2M U34 (.Y(N91), 
	.A(N12));
   OAI2BB2X1M U35 (.Y(n35), 
	.B1(n85), 
	.B0(n30), 
	.A1N(sampled_data[0]), 
	.A0N(n30));
   NAND2X2M U36 (.Y(n30), 
	.B(n31), 
	.A(N49));
   OAI2BB2X1M U37 (.Y(n34), 
	.B1(n27), 
	.B0(n26), 
	.A1N(n27), 
	.A0N(sampled_bit));
   AOI21X2M U38 (.Y(n26), 
	.B0(n29), 
	.A1(sampled_data[0]), 
	.A0(sampled_data[1]));
   NAND4X2M U39 (.Y(n27), 
	.D(n84), 
	.C(n28), 
	.B(N122), 
	.A(dat_samp_en));
   OA21X2M U40 (.Y(n29), 
	.B0(sampled_data[2]), 
	.A1(sampled_data[0]), 
	.A0(sampled_data[1]));
   OAI2BB2X1M U41 (.Y(n37), 
	.B1(n33), 
	.B0(n85), 
	.A1N(sampled_data[2]), 
	.A0N(n33));
   NAND4BX1M U42 (.Y(n33), 
	.D(n84), 
	.C(n31), 
	.B(N89), 
	.AN(N50));
   OAI2BB2X1M U43 (.Y(n36), 
	.B1(n32), 
	.B0(n85), 
	.A1N(sampled_data[1]), 
	.A0N(n32));
   NAND3X2M U44 (.Y(n32), 
	.C(N50), 
	.B(n84), 
	.A(n31));
   NOR2X2M U45 (.Y(N16), 
	.B(Prescale[5]), 
	.A(n8));
   INVX2M U47 (.Y(n85), 
	.A(RX_IN));
   AND2X1M U48 (.Y(\add_33/carry[5] ), 
	.B(N15), 
	.A(\add_33/carry[4] ));
   CLKXOR2X2M U49 (.Y(N94), 
	.B(\add_33/carry[4] ), 
	.A(N15));
   AND2X1M U50 (.Y(\add_33/carry[4] ), 
	.B(N14), 
	.A(\add_33/carry[3] ));
   CLKXOR2X2M U51 (.Y(N93), 
	.B(\add_33/carry[3] ), 
	.A(N14));
   AND2X1M U52 (.Y(\add_33/carry[3] ), 
	.B(N13), 
	.A(N12));
   CLKXOR2X2M U53 (.Y(N92), 
	.B(N12), 
	.A(N13));
   OR2X1M U54 (.Y(n5), 
	.B(Prescale[0]), 
	.A(Prescale[1]));
   OAI2BB1X1M U55 (.Y(N90), 
	.B0(n5), 
	.A1N(Prescale[1]), 
	.A0N(Prescale[0]));
   OR2X1M U56 (.Y(n6), 
	.B(Prescale[2]), 
	.A(n5));
   OAI2BB1X1M U57 (.Y(N12), 
	.B0(n6), 
	.A1N(Prescale[2]), 
	.A0N(n5));
   OR2X1M U58 (.Y(n7), 
	.B(Prescale[3]), 
	.A(n6));
   OAI2BB1X1M U59 (.Y(N13), 
	.B0(n7), 
	.A1N(Prescale[3]), 
	.A0N(n6));
   OR2X1M U60 (.Y(n8), 
	.B(Prescale[4]), 
	.A(n7));
   OAI2BB1X1M U61 (.Y(N14), 
	.B0(n8), 
	.A1N(Prescale[4]), 
	.A0N(n7));
   AO21XLM U62 (.Y(N15), 
	.B0(N16), 
	.A1(Prescale[5]), 
	.A0(n8));
   CLKINVX1M U63 (.Y(N17), 
	.A(N90));
   OR2X1M U64 (.Y(n10), 
	.B(N13), 
	.A(n9));
   OR2X1M U65 (.Y(n11), 
	.B(N14), 
	.A(n10));
   OR2X1M U66 (.Y(n12), 
	.B(N15), 
	.A(n11));
   NAND2BX1M U67 (.Y(N47), 
	.B(n12), 
	.AN(N16));
   OAI2BB1X1M U68 (.Y(N18), 
	.B0(n9), 
	.A1N(N12), 
	.A0N(N90));
   OAI2BB1X1M U69 (.Y(N19), 
	.B0(n10), 
	.A1N(N13), 
	.A0N(n9));
   NOR2X1M U70 (.Y(N48), 
	.B(N16), 
	.A(n12));
   OAI2BB1X1M U71 (.Y(N20), 
	.B0(n11), 
	.A1N(N14), 
	.A0N(n10));
   OAI2BB1X1M U72 (.Y(N21), 
	.B0(n12), 
	.A1N(N15), 
	.A0N(n11));
   AO21XLM U73 (.Y(N22), 
	.B0(N48), 
	.A1(N16), 
	.A0(n12));
   AND2X1M U74 (.Y(N88), 
	.B(N16), 
	.A(\add_29/carry[5] ));
   XNOR2X1M U75 (.Y(N62), 
	.B(n13), 
	.A(\add_29/carry[5] ));
   CLKINVX1M U76 (.Y(n13), 
	.A(N16));
   AND2X1M U77 (.Y(N121), 
	.B(N16), 
	.A(\add_33/carry[5] ));
   XNOR2X1M U78 (.Y(N95), 
	.B(n13), 
	.A(\add_33/carry[5] ));
   NOR2BX1M U79 (.Y(n14), 
	.B(N17), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U80 (.Y(n15), 
	.B1(n14), 
	.B0(edge_cnt[1]), 
	.A1N(N18), 
	.A0(n14));
   XNOR2X1M U81 (.Y(n25), 
	.B(edge_cnt[4]), 
	.A(N21));
   XNOR2X1M U82 (.Y(n24), 
	.B(edge_cnt[3]), 
	.A(N20));
   XNOR2X1M U83 (.Y(n23), 
	.B(edge_cnt[2]), 
	.A(N19));
   NOR2BX1M U84 (.Y(n17), 
	.B(edge_cnt[0]), 
	.AN(N17));
   OAI2B2X1M U85 (.Y(n18), 
	.B1(n17), 
	.B0(N18), 
	.A1N(edge_cnt[1]), 
	.A0(n17));
   NAND4X1M U86 (.Y(n38), 
	.D(n18), 
	.C(n23), 
	.B(n24), 
	.A(n25));
   NOR4BX1M U87 (.Y(N49), 
	.D(n38), 
	.C(N47), 
	.B(n39), 
	.AN(n40));
   NOR2BX1M U88 (.Y(n42), 
	.B(edge_cnt[0]), 
	.AN(N90));
   OAI2B2X1M U89 (.Y(n45), 
	.B1(n42), 
	.B0(N12), 
	.A1N(edge_cnt[1]), 
	.A0(n42));
   NOR2BX1M U90 (.Y(n43), 
	.B(N90), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U91 (.Y(n44), 
	.B1(n43), 
	.B0(edge_cnt[1]), 
	.A1N(N12), 
	.A0(n43));
   NAND3BX1M U92 (.Y(n49), 
	.C(n44), 
	.B(n45), 
	.AN(N16));
   CLKXOR2X2M U93 (.Y(n48), 
	.B(edge_cnt[4]), 
	.A(N15));
   CLKXOR2X2M U94 (.Y(n47), 
	.B(edge_cnt[2]), 
	.A(N13));
   CLKXOR2X2M U95 (.Y(n46), 
	.B(edge_cnt[3]), 
	.A(N14));
   NOR4X1M U96 (.Y(N50), 
	.D(n46), 
	.C(n47), 
	.B(n48), 
	.A(n49));
   NOR2BX1M U97 (.Y(n50), 
	.B(N17), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U98 (.Y(n51), 
	.B1(n50), 
	.B0(edge_cnt[1]), 
	.A1N(N58), 
	.A0(n50));
   XNOR2X1M U102 (.Y(n62), 
	.B(edge_cnt[4]), 
	.A(N61));
   XNOR2X1M U103 (.Y(n61), 
	.B(edge_cnt[3]), 
	.A(N60));
   XNOR2X1M U104 (.Y(n60), 
	.B(edge_cnt[2]), 
	.A(N59));
   NOR2BX1M U105 (.Y(n58), 
	.B(edge_cnt[0]), 
	.AN(N17));
   OAI2B2X1M U106 (.Y(n59), 
	.B1(n58), 
	.B0(N58), 
	.A1N(edge_cnt[1]), 
	.A0(n58));
   NAND4X1M U107 (.Y(n63), 
	.D(n59), 
	.C(n60), 
	.B(n61), 
	.A(n62));
   NOR4BX1M U108 (.Y(N89), 
	.D(n63), 
	.C(n64), 
	.B(n65), 
	.AN(n66));
   NOR2BX1M U109 (.Y(n67), 
	.B(N90), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U110 (.Y(n68), 
	.B1(n67), 
	.B0(edge_cnt[1]), 
	.A1N(N91), 
	.A0(n67));
   XNOR2X1M U114 (.Y(n79), 
	.B(edge_cnt[4]), 
	.A(N94));
   XNOR2X1M U115 (.Y(n78), 
	.B(edge_cnt[3]), 
	.A(N93));
   XNOR2X1M U116 (.Y(n77), 
	.B(edge_cnt[2]), 
	.A(N92));
   NOR2BX1M U117 (.Y(n75), 
	.B(edge_cnt[0]), 
	.AN(N90));
   OAI2B2X1M U118 (.Y(n76), 
	.B1(n75), 
	.B0(N91), 
	.A1N(edge_cnt[1]), 
	.A0(n75));
   NAND4X1M U119 (.Y(n80), 
	.D(n76), 
	.C(n77), 
	.B(n78), 
	.A(n79));
   NOR4BX1M U120 (.Y(N122), 
	.D(n80), 
	.C(n81), 
	.B(n82), 
	.AN(n83));
   CLKNAND2X16M U3 (.Y(n82), 
	.B(n70), 
	.A(n69));
   CLKNAND2X16M U6 (.Y(n65), 
	.B(n53), 
	.A(n52));
   NOR3BX4M U7 (.Y(n70), 
	.C(N121), 
	.B(N95), 
	.AN(n69));
   NOR3BX4M U8 (.Y(n53), 
	.C(N88), 
	.B(N62), 
	.AN(n52));
   CLKAND2X16M U9 (.Y(n83), 
	.B(n69), 
	.A(n68));
   CLKAND2X16M U10 (.Y(n66), 
	.B(n52), 
	.A(n51));
   CLKINVX16M U11 (.Y(n69), 
	.A(n81));
   CLKINVX16M U12 (.Y(n52), 
	.A(n64));
endmodule

module UART_RX_deserializer_test_1 (
	CLK, 
	RST, 
	bit_cnt, 
	deser_en, 
	sampled_bit, 
	P_DATA, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN12_SYNC_RST_UART_scan);
   input CLK;
   input RST;
   input [3:0] bit_cnt;
   input deser_en;
   input sampled_bit;
   output [7:0] P_DATA;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN12_SYNC_RST_UART_scan;

   // Internal wires
   wire n9;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n55;

   assign test_so = n9 ;

   SDFFRQX2M \P_DATA_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN12_SYNC_RST_UART_scan), 
	.Q(P_DATA[0]), 
	.D(n47), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[5]  (.SI(P_DATA[4]), 
	.SE(test_se), 
	.RN(FE_OFN12_SYNC_RST_UART_scan), 
	.Q(P_DATA[5]), 
	.D(n52), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[1]  (.SI(P_DATA[0]), 
	.SE(test_se), 
	.RN(FE_OFN12_SYNC_RST_UART_scan), 
	.Q(P_DATA[1]), 
	.D(n48), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[4]  (.SI(P_DATA[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[4]), 
	.D(n51), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[6]  (.SI(P_DATA[5]), 
	.SE(test_se), 
	.RN(FE_OFN12_SYNC_RST_UART_scan), 
	.Q(P_DATA[6]), 
	.D(n53), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[3]  (.SI(P_DATA[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[3]), 
	.D(n50), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[2]  (.SI(P_DATA[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[2]), 
	.D(n49), 
	.CK(CLK));
   SDFFRX1M \P_DATA_reg[7]  (.SI(P_DATA[6]), 
	.SE(test_se), 
	.RN(FE_OFN12_SYNC_RST_UART_scan), 
	.QN(n9), 
	.Q(P_DATA[7]), 
	.D(n54), 
	.CK(CLK));
   INVX2M U12 (.Y(n16), 
	.A(deser_en));
   INVX2M U13 (.Y(n15), 
	.A(n40));
   AOI21X2M U14 (.Y(n44), 
	.B0(n16), 
	.A1(n22), 
	.A0(n55));
   NOR2X2M U15 (.Y(n40), 
	.B(n16), 
	.A(n17));
   NAND2X2M U16 (.Y(n25), 
	.B(n45), 
	.A(n44));
   NOR2X2M U17 (.Y(n41), 
	.B(n19), 
	.A(n20));
   NAND2X2M U18 (.Y(n24), 
	.B(n55), 
	.A(n41));
   OAI31X1M U19 (.Y(n48), 
	.B0(n27), 
	.A2(n17), 
	.A1(n11), 
	.A0(n26));
   NAND2X2M U20 (.Y(n27), 
	.B(n11), 
	.A(P_DATA[1]));
   INVX2M U21 (.Y(n11), 
	.A(n28));
   OAI31X1M U22 (.Y(n28), 
	.B0(n29), 
	.A2(n16), 
	.A1(bit_cnt[0]), 
	.A0(n26));
   OAI31X1M U23 (.Y(n50), 
	.B0(n33), 
	.A2(n17), 
	.A1(n13), 
	.A0(n32));
   NAND2X2M U24 (.Y(n33), 
	.B(n13), 
	.A(P_DATA[3]));
   INVX2M U25 (.Y(n13), 
	.A(n34));
   OAI31X1M U26 (.Y(n34), 
	.B0(n29), 
	.A2(n16), 
	.A1(bit_cnt[0]), 
	.A0(n32));
   OAI31X1M U27 (.Y(n49), 
	.B0(n30), 
	.A2(n17), 
	.A1(n12), 
	.A0(n26));
   NAND2X2M U28 (.Y(n30), 
	.B(n12), 
	.A(P_DATA[2]));
   INVX2M U29 (.Y(n12), 
	.A(n31));
   OAI31X1M U30 (.Y(n31), 
	.B0(n29), 
	.A2(n16), 
	.A1(n18), 
	.A0(n26));
   OAI31X1M U31 (.Y(n51), 
	.B0(n35), 
	.A2(n17), 
	.A1(n14), 
	.A0(n32));
   NAND2X2M U32 (.Y(n35), 
	.B(n14), 
	.A(P_DATA[4]));
   INVX2M U33 (.Y(n14), 
	.A(n36));
   OAI31X1M U34 (.Y(n36), 
	.B0(n29), 
	.A2(n16), 
	.A1(n18), 
	.A0(n32));
   OAI2BB2X1M U35 (.Y(n52), 
	.B1(n39), 
	.B0(bit_cnt[3]), 
	.A1N(P_DATA[5]), 
	.A0N(n25));
   AOI32X1M U36 (.Y(n39), 
	.B1(bit_cnt[0]), 
	.B0(P_DATA[5]), 
	.A2(n41), 
	.A1(n18), 
	.A0(n40));
   OAI31X1M U37 (.Y(n53), 
	.B0(n42), 
	.A2(n15), 
	.A1(n18), 
	.A0(n24));
   OAI21X2M U38 (.Y(n42), 
	.B0(P_DATA[6]), 
	.A1(n43), 
	.A0(n25));
   OAI21X2M U39 (.Y(n43), 
	.B0(n21), 
	.A1(n24), 
	.A0(bit_cnt[0]));
   OAI31X1M U40 (.Y(n47), 
	.B0(n23), 
	.A2(n22), 
	.A1(n15), 
	.A0(n21));
   OAI2B1X2M U41 (.Y(n23), 
	.B0(P_DATA[0]), 
	.A1N(n24), 
	.A0(n25));
   OAI21BX1M U42 (.Y(n54), 
	.B0N(n46), 
	.A1(n45), 
	.A0(n15));
   AOI31X2M U43 (.Y(n46), 
	.B0(n9), 
	.A2(n21), 
	.A1(n24), 
	.A0(n44));
   NAND2X2M U44 (.Y(n29), 
	.B(n37), 
	.A(deser_en));
   XNOR2X2M U45 (.Y(n37), 
	.B(n38), 
	.A(n55));
   NOR3X2M U46 (.Y(n38), 
	.C(bit_cnt[1]), 
	.B(bit_cnt[2]), 
	.A(bit_cnt[0]));
   INVX2M U47 (.Y(n18), 
	.A(bit_cnt[0]));
   XNOR2X2M U48 (.Y(n22), 
	.B(n20), 
	.A(bit_cnt[1]));
   NAND3BX2M U49 (.Y(n21), 
	.C(bit_cnt[0]), 
	.B(n55), 
	.AN(n41));
   INVX2M U50 (.Y(n55), 
	.A(bit_cnt[3]));
   INVX2M U51 (.Y(n20), 
	.A(bit_cnt[2]));
   INVX2M U52 (.Y(n19), 
	.A(bit_cnt[1]));
   NAND3X2M U53 (.Y(n26), 
	.C(bit_cnt[1]), 
	.B(n55), 
	.A(n20));
   NAND3X2M U54 (.Y(n32), 
	.C(bit_cnt[2]), 
	.B(n55), 
	.A(n19));
   OR4X1M U55 (.Y(n45), 
	.D(bit_cnt[0]), 
	.C(n41), 
	.B(n55), 
	.A(n22));
   INVX2M U56 (.Y(n17), 
	.A(sampled_bit));
endmodule

module UART_RX_parity_check_test_1 (
	CLK, 
	RST, 
	RX_IN, 
	PAR_TYP, 
	Prescale, 
	edge_cnt, 
	bit_cnt, 
	par_chk_en, 
	sampled_bit, 
	P_DATA, 
	par_err, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input RX_IN;
   input PAR_TYP;
   input [5:0] Prescale;
   input [4:0] edge_cnt;
   input [3:0] bit_cnt;
   input par_chk_en;
   input sampled_bit;
   input [7:0] P_DATA;
   output par_err;
   output test_so;
   input test_se;

   // Internal wires
   wire n16;
   wire parity;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N16;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n15;
   wire n17;
   wire \sub_34/carry[5] ;
   wire \sub_34/carry[4] ;
   wire \sub_34/carry[3] ;
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n2;

   assign test_so = parity ;
   assign N9 = Prescale[0] ;

   SDFFRQX2M parity_reg (.SI(par_err), 
	.SE(test_se), 
	.RN(RST), 
	.Q(parity), 
	.D(n17), 
	.CK(CLK));
   NOR2X2M U3 (.Y(n1), 
	.B(\sub_34/carry[5] ), 
	.A(Prescale[5]));
   INVX2M U5 (.Y(n23), 
	.A(par_chk_en));
   OAI2BB2X1M U6 (.Y(n17), 
	.B1(n23), 
	.B0(n9), 
	.A1N(parity), 
	.A0N(n23));
   XOR3XLM U7 (.Y(n9), 
	.C(n11), 
	.B(PAR_TYP), 
	.A(n10));
   XOR3XLM U8 (.Y(n11), 
	.C(n12), 
	.B(P_DATA[0]), 
	.A(P_DATA[1]));
   XOR3XLM U9 (.Y(n10), 
	.C(n13), 
	.B(P_DATA[4]), 
	.A(P_DATA[5]));
   OAI2BB1X2M U10 (.Y(n15), 
	.B0(n6), 
	.A1N(n23), 
	.A0N(par_err));
   NAND4X2M U11 (.Y(n6), 
	.D(n7), 
	.C(par_chk_en), 
	.B(bit_cnt[0]), 
	.A(bit_cnt[3]));
   NOR4BX1M U12 (.Y(n7), 
	.D(n8), 
	.C(bit_cnt[1]), 
	.B(bit_cnt[2]), 
	.AN(N16));
   XNOR2X2M U13 (.Y(n8), 
	.B(sampled_bit), 
	.A(parity));
   INVX2M U14 (.Y(N10), 
	.A(Prescale[1]));
   XNOR2X2M U15 (.Y(n12), 
	.B(P_DATA[2]), 
	.A(P_DATA[3]));
   CLKXOR2X2M U18 (.Y(n13), 
	.B(P_DATA[6]), 
	.A(P_DATA[7]));
   XNOR2X1M U19 (.Y(N14), 
	.B(Prescale[5]), 
	.A(\sub_34/carry[5] ));
   OR2X1M U20 (.Y(\sub_34/carry[5] ), 
	.B(\sub_34/carry[4] ), 
	.A(Prescale[4]));
   XNOR2X1M U21 (.Y(N13), 
	.B(Prescale[4]), 
	.A(\sub_34/carry[4] ));
   OR2X1M U22 (.Y(\sub_34/carry[4] ), 
	.B(\sub_34/carry[3] ), 
	.A(Prescale[3]));
   XNOR2X1M U23 (.Y(N12), 
	.B(Prescale[3]), 
	.A(\sub_34/carry[3] ));
   OR2X1M U24 (.Y(\sub_34/carry[3] ), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   XNOR2X1M U25 (.Y(N11), 
	.B(Prescale[2]), 
	.A(Prescale[1]));
   NOR2BX1M U26 (.Y(n3), 
	.B(N9), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U27 (.Y(n18), 
	.B1(n3), 
	.B0(edge_cnt[1]), 
	.A1N(N10), 
	.A0(n3));
   NOR2BX1M U28 (.Y(n4), 
	.B(edge_cnt[0]), 
	.AN(N9));
   OAI2B2X1M U29 (.Y(n5), 
	.B1(n4), 
	.B0(N10), 
	.A1N(edge_cnt[1]), 
	.A0(n4));
   NAND4BBX1M U30 (.Y(n22), 
	.D(n5), 
	.C(n18), 
	.BN(N14), 
	.AN(n1));
   CLKXOR2X2M U31 (.Y(n21), 
	.B(edge_cnt[4]), 
	.A(N13));
   CLKXOR2X2M U32 (.Y(n20), 
	.B(edge_cnt[2]), 
	.A(N11));
   CLKXOR2X2M U33 (.Y(n19), 
	.B(edge_cnt[3]), 
	.A(N12));
   NOR4X1M U34 (.Y(N16), 
	.D(n19), 
	.C(n20), 
	.B(n21), 
	.A(n22));
   SDFFRX1M par_err_reg (.SI(edge_cnt[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(n16), 
	.D(n15), 
	.CK(CLK));
   INVXLM U4 (.Y(n2), 
	.A(n16));
   INVX8M U16 (.Y(par_err), 
	.A(n2));
endmodule

module UART_RX_strt_check_test_1 (
	CLK, 
	RST, 
	strt_chk_en, 
	Prescale, 
	edge_cnt, 
	bit_cnt, 
	sampled_bit, 
	strt_glitch, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input strt_chk_en;
   input [5:0] Prescale;
   input [4:0] edge_cnt;
   input [3:0] bit_cnt;
   input sampled_bit;
   output strt_glitch;
   input test_si;
   input test_se;

   // Internal wires
   wire N2;
   wire N3;
   wire N4;
   wire N5;
   wire N6;
   wire N7;
   wire N9;
   wire n1;
   wire n2;
   wire n4;
   wire \sub_20/carry[5] ;
   wire \sub_20/carry[4] ;
   wire \sub_20/carry[3] ;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;

   assign N2 = Prescale[0] ;

   SDFFRQX2M strt_glitch_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(strt_glitch), 
	.D(n4), 
	.CK(CLK));
   NOR2X2M U3 (.Y(n5), 
	.B(\sub_20/carry[5] ), 
	.A(Prescale[5]));
   OAI2B1X2M U4 (.Y(n4), 
	.B0(n1), 
	.A1N(strt_glitch), 
	.A0(strt_chk_en));
   NAND4X2M U5 (.Y(n1), 
	.D(n2), 
	.C(strt_chk_en), 
	.B(N9), 
	.A(sampled_bit));
   NOR4X1M U7 (.Y(n2), 
	.D(bit_cnt[0]), 
	.C(bit_cnt[1]), 
	.B(bit_cnt[2]), 
	.A(bit_cnt[3]));
   INVX2M U8 (.Y(N3), 
	.A(Prescale[1]));
   XNOR2X1M U9 (.Y(N7), 
	.B(Prescale[5]), 
	.A(\sub_20/carry[5] ));
   OR2X1M U10 (.Y(\sub_20/carry[5] ), 
	.B(\sub_20/carry[4] ), 
	.A(Prescale[4]));
   XNOR2X1M U11 (.Y(N6), 
	.B(Prescale[4]), 
	.A(\sub_20/carry[4] ));
   OR2X1M U12 (.Y(\sub_20/carry[4] ), 
	.B(\sub_20/carry[3] ), 
	.A(Prescale[3]));
   XNOR2X1M U13 (.Y(N5), 
	.B(Prescale[3]), 
	.A(\sub_20/carry[3] ));
   OR2X1M U14 (.Y(\sub_20/carry[3] ), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   XNOR2X1M U15 (.Y(N4), 
	.B(Prescale[2]), 
	.A(Prescale[1]));
   NOR2BX1M U16 (.Y(n6), 
	.B(N2), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U17 (.Y(n9), 
	.B1(n6), 
	.B0(edge_cnt[1]), 
	.A1N(N3), 
	.A0(n6));
   NOR2BX1M U18 (.Y(n7), 
	.B(edge_cnt[0]), 
	.AN(N2));
   OAI2B2X1M U19 (.Y(n8), 
	.B1(n7), 
	.B0(N3), 
	.A1N(edge_cnt[1]), 
	.A0(n7));
   NAND4BBX1M U20 (.Y(n13), 
	.D(n8), 
	.C(n9), 
	.BN(N7), 
	.AN(n5));
   CLKXOR2X2M U21 (.Y(n12), 
	.B(edge_cnt[4]), 
	.A(N6));
   CLKXOR2X2M U22 (.Y(n11), 
	.B(edge_cnt[2]), 
	.A(N4));
   CLKXOR2X2M U23 (.Y(n10), 
	.B(edge_cnt[3]), 
	.A(N5));
   NOR4X1M U24 (.Y(N9), 
	.D(n10), 
	.C(n11), 
	.B(n12), 
	.A(n13));
endmodule

module UART_RX_stop_check_test_1 (
	CLK, 
	RST, 
	Prescale, 
	edge_cnt, 
	stp_chk_en, 
	sampled_bit, 
	stp_err, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input [5:0] Prescale;
   input [4:0] edge_cnt;
   input stp_chk_en;
   input sampled_bit;
   output stp_err;
   input test_si;
   input test_se;

   // Internal wires
   wire n14;
   wire N2;
   wire N3;
   wire N4;
   wire N5;
   wire N6;
   wire N7;
   wire N9;
   wire n1;
   wire n3;
   wire \sub_19/carry[5] ;
   wire \sub_19/carry[4] ;
   wire \sub_19/carry[3] ;
   wire n4;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n16;
   wire n17;
   wire n2;

   assign N2 = Prescale[0] ;

   NOR2X2M U3 (.Y(n4), 
	.B(\sub_19/carry[5] ), 
	.A(Prescale[5]));
   OAI2B1X2M U6 (.Y(n3), 
	.B0(n1), 
	.A1N(n17), 
	.A0(stp_chk_en));
   NAND3BX2M U7 (.Y(n1), 
	.C(stp_chk_en), 
	.B(N9), 
	.AN(sampled_bit));
   INVX2M U8 (.Y(N3), 
	.A(Prescale[1]));
   XNOR2X1M U9 (.Y(N7), 
	.B(Prescale[5]), 
	.A(\sub_19/carry[5] ));
   OR2X1M U10 (.Y(\sub_19/carry[5] ), 
	.B(\sub_19/carry[4] ), 
	.A(Prescale[4]));
   XNOR2X1M U11 (.Y(N6), 
	.B(Prescale[4]), 
	.A(\sub_19/carry[4] ));
   OR2X1M U12 (.Y(\sub_19/carry[4] ), 
	.B(\sub_19/carry[3] ), 
	.A(Prescale[3]));
   XNOR2X1M U13 (.Y(N5), 
	.B(Prescale[3]), 
	.A(\sub_19/carry[3] ));
   OR2X1M U14 (.Y(\sub_19/carry[3] ), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   XNOR2X1M U15 (.Y(N4), 
	.B(Prescale[2]), 
	.A(Prescale[1]));
   NOR2BX1M U16 (.Y(n6), 
	.B(N2), 
	.AN(edge_cnt[0]));
   OAI2B2X1M U17 (.Y(n9), 
	.B1(n6), 
	.B0(edge_cnt[1]), 
	.A1N(N3), 
	.A0(n6));
   NOR2BX1M U18 (.Y(n7), 
	.B(edge_cnt[0]), 
	.AN(N2));
   OAI2B2X1M U19 (.Y(n8), 
	.B1(n7), 
	.B0(N3), 
	.A1N(edge_cnt[1]), 
	.A0(n7));
   NAND4BBX1M U20 (.Y(n13), 
	.D(n8), 
	.C(n9), 
	.BN(N7), 
	.AN(n4));
   CLKXOR2X2M U21 (.Y(n12), 
	.B(edge_cnt[4]), 
	.A(N6));
   CLKXOR2X2M U22 (.Y(n11), 
	.B(edge_cnt[2]), 
	.A(N4));
   CLKXOR2X2M U23 (.Y(n10), 
	.B(edge_cnt[3]), 
	.A(N5));
   NOR4X1M U24 (.Y(N9), 
	.D(n10), 
	.C(n11), 
	.B(n12), 
	.A(n13));
   INVXLM U26 (.Y(n17), 
	.A(n16));
   SDFFRX1M stp_err_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.QN(n16), 
	.Q(n14), 
	.D(n3), 
	.CK(CLK));
   INVXLM U4 (.Y(n2), 
	.A(n14));
   INVX8M U5 (.Y(stp_err), 
	.A(n2));
endmodule

module UART_RX_test_1 (
	CLK, 
	RST, 
	RX_IN, 
	Prescale, 
	PAR_EN, 
	PAR_TYP, 
	data_valid, 
	P_DATA, 
	parity_error, 
	framing_error, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN12_SYNC_RST_UART_scan);
   input CLK;
   input RST;
   input RX_IN;
   input [5:0] Prescale;
   input PAR_EN;
   input PAR_TYP;
   output data_valid;
   output [7:0] P_DATA;
   output parity_error;
   output framing_error;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN12_SYNC_RST_UART_scan;

   // Internal wires
   wire dat_samp_en;
   wire enable;
   wire deser_en;
   wire par_chk_en;
   wire strt_chk_en;
   wire strt_glitch;
   wire stp_chk_en;
   wire sampled_bit;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire [4:0] edge_cnt;
   wire [3:0] bit_cnt;

   assign test_so1 = strt_glitch ;

   UART_RX_FSM_test_1 U0_FSM (.CLK(CLK), 
	.RST(FE_OFN12_SYNC_RST_UART_scan), 
	.RX_IN(RX_IN), 
	.PAR_EN(PAR_EN), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.edge_cnt({ edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.par_err(parity_error), 
	.strt_glitch(strt_glitch), 
	.stp_err(framing_error), 
	.dat_samp_en(dat_samp_en), 
	.enable(enable), 
	.deser_en(deser_en), 
	.stp_chk_en(stp_chk_en), 
	.strt_chk_en(strt_chk_en), 
	.par_chk_en(par_chk_en), 
	.data_valid(data_valid), 
	.test_si(test_si1), 
	.test_so(n6), 
	.test_se(test_se));
   UART_RX_edge_bit_counter_test_1 U0_edge_bit_counter (.CLK(CLK), 
	.RST(FE_OFN12_SYNC_RST_UART_scan), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.PAR_EN(PAR_EN), 
	.enable(enable), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.edge_cnt({ edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.test_si(n4), 
	.test_se(test_se));
   UART_RX_data_sampling_test_1 U0_data_sampling (.CLK(CLK), 
	.RST(FE_OFN12_SYNC_RST_UART_scan), 
	.RX_IN(RX_IN), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.dat_samp_en(dat_samp_en), 
	.edge_cnt({ edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.sampled_bit(sampled_bit), 
	.test_si(n6), 
	.test_so(n5), 
	.test_se(test_se));
   UART_RX_deserializer_test_1 U0_deserializer (.CLK(CLK), 
	.RST(RST), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.deser_en(deser_en), 
	.sampled_bit(sampled_bit), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.test_si(n5), 
	.test_so(n4), 
	.test_se(test_se), 
	.FE_OFN12_SYNC_RST_UART_scan(FE_OFN12_SYNC_RST_UART_scan));
   UART_RX_parity_check_test_1 U0_parity_check (.CLK(CLK), 
	.RST(FE_OFN12_SYNC_RST_UART_scan), 
	.RX_IN(RX_IN), 
	.PAR_TYP(PAR_TYP), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.edge_cnt({ edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.par_chk_en(par_chk_en), 
	.sampled_bit(sampled_bit), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.par_err(parity_error), 
	.test_so(n3), 
	.test_se(test_se));
   UART_RX_strt_check_test_1 U0_strt_check (.CLK(CLK), 
	.RST(FE_OFN12_SYNC_RST_UART_scan), 
	.strt_chk_en(strt_chk_en), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.edge_cnt({ edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.sampled_bit(sampled_bit), 
	.strt_glitch(strt_glitch), 
	.test_si(n3), 
	.test_se(test_se));
   UART_RX_stop_check_test_1 U0_stop_check (.CLK(CLK), 
	.RST(FE_OFN12_SYNC_RST_UART_scan), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.edge_cnt({ edge_cnt[4],
		edge_cnt[3],
		edge_cnt[2],
		edge_cnt[1],
		edge_cnt[0] }), 
	.stp_chk_en(stp_chk_en), 
	.sampled_bit(sampled_bit), 
	.stp_err(framing_error), 
	.test_si(test_si2), 
	.test_se(test_se));
endmodule

module UART_test_1 (
	TX_CLK, 
	TX_IN_P, 
	TX_IN_V, 
	TX_OUT_S, 
	TX_OUT_V, 
	RST, 
	PAR_TYP, 
	PAR_EN, 
	RX_CLK, 
	RX_IN_S, 
	Prescale, 
	RX_OUT_P, 
	RX_OUT_V, 
	parity_error, 
	framing_error, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN4_TX_CLK_scan, 
	FE_OFN12_SYNC_RST_UART_scan, 
	FE_OFN20_SE);
   input TX_CLK;
   input [7:0] TX_IN_P;
   input TX_IN_V;
   output TX_OUT_S;
   output TX_OUT_V;
   input RST;
   input PAR_TYP;
   input PAR_EN;
   input RX_CLK;
   input RX_IN_S;
   input [5:0] Prescale;
   output [7:0] RX_OUT_P;
   output RX_OUT_V;
   output parity_error;
   output framing_error;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN4_TX_CLK_scan;
   input FE_OFN12_SYNC_RST_UART_scan;
   input FE_OFN20_SE;

   // Internal wires
   wire n4;

   UART_TX_test_1 U0_UART_TX (.P_DATA({ TX_IN_P[7],
		TX_IN_P[6],
		TX_IN_P[5],
		TX_IN_P[4],
		TX_IN_P[3],
		TX_IN_P[2],
		TX_IN_P[1],
		TX_IN_P[0] }), 
	.Data_Valid(TX_IN_V), 
	.PAR_EN(PAR_EN), 
	.PAR_TYP(PAR_TYP), 
	.CLK(TX_CLK), 
	.RST(FE_OFN12_SYNC_RST_UART_scan), 
	.TX_OUT(TX_OUT_S), 
	.busy(TX_OUT_V), 
	.test_si(n4), 
	.test_so(test_so1), 
	.test_se(test_se), 
	.FE_OFN4_TX_CLK_scan(FE_OFN4_TX_CLK_scan), 
	.FE_OFN20_SE(FE_OFN20_SE));
   UART_RX_test_1 U0_UART_RX (.CLK(RX_CLK), 
	.RST(RST), 
	.RX_IN(RX_IN_S), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.PAR_EN(PAR_EN), 
	.PAR_TYP(PAR_TYP), 
	.data_valid(RX_OUT_V), 
	.P_DATA({ RX_OUT_P[7],
		RX_OUT_P[6],
		RX_OUT_P[5],
		RX_OUT_P[4],
		RX_OUT_P[3],
		RX_OUT_P[2],
		RX_OUT_P[1],
		RX_OUT_P[0] }), 
	.parity_error(parity_error), 
	.framing_error(framing_error), 
	.test_si2(test_si2), 
	.test_si1(test_si1), 
	.test_so1(n4), 
	.test_se(test_se), 
	.FE_OFN12_SYNC_RST_UART_scan(FE_OFN12_SYNC_RST_UART_scan));
endmodule

module SYS_CTRL_test_1 (
	CLK, 
	RST, 
	UART_RX_DATA, 
	UART_RX_Valid, 
	FIFO_FULL, 
	FIFO_WR_DATA, 
	FIFO_WR_INC, 
	ALU_OUT, 
	ALU_OUT_Valid, 
	ALU_EN, 
	ALU_FUN, 
	CLKG_EN, 
	CLKDIV_EN, 
	Rd_Reg, 
	Rd_Reg_Valid, 
	Wr_Reg, 
	Addr, 
	RdEn, 
	WrEn, 
	test_so, 
	test_se, 
	FE_OFN7_SYNC_RST_REF_scan, 
	FE_OFN9_SYNC_RST_REF_scan, 
	FE_OFN20_SE);
   input CLK;
   input RST;
   input [7:0] UART_RX_DATA;
   input UART_RX_Valid;
   input FIFO_FULL;
   output [7:0] FIFO_WR_DATA;
   output FIFO_WR_INC;
   input [15:0] ALU_OUT;
   input ALU_OUT_Valid;
   output ALU_EN;
   output [3:0] ALU_FUN;
   output CLKG_EN;
   output CLKDIV_EN;
   input [7:0] Rd_Reg;
   input Rd_Reg_Valid;
   output [7:0] Wr_Reg;
   output [3:0] Addr;
   output RdEn;
   output WrEn;
   output test_so;
   input test_se;
   input FE_OFN7_SYNC_RST_REF_scan;
   input FE_OFN9_SYNC_RST_REF_scan;
   input FE_OFN20_SE;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire FE_OFN15_Addr_2_;
   wire FE_OFN14_Addr_3_;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n28;
   wire n29;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n140;
   wire n141;
   wire [3:0] current_state;
   wire [3:0] next_state;
   wire [15:0] ALU_OUT_REG;

   assign test_so = current_state[3] ;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   BUFX2M FE_OFC15_Addr_2_ (.Y(Addr[2]), 
	.A(FE_OFN15_Addr_2_));
   BUFX2M FE_OFC14_Addr_3_ (.Y(Addr[3]), 
	.A(FE_OFN14_Addr_3_));
   SDFFRQX2M \ALU_OUT_REG_reg[15]  (.SI(ALU_OUT_REG[14]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(ALU_OUT_REG[15]), 
	.D(n117), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_REG_reg[14]  (.SI(ALU_OUT_REG[13]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(ALU_OUT_REG[14]), 
	.D(n116), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_REG_reg[13]  (.SI(ALU_OUT_REG[12]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.Q(ALU_OUT_REG[13]), 
	.D(n115), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_REG_reg[12]  (.SI(ALU_OUT_REG[11]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(ALU_OUT_REG[12]), 
	.D(n114), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_REG_reg[11]  (.SI(ALU_OUT_REG[10]), 
	.SE(test_se), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(ALU_OUT_REG[11]), 
	.D(n113), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_REG_reg[10]  (.SI(ALU_OUT_REG[9]), 
	.SE(test_se), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(ALU_OUT_REG[10]), 
	.D(n112), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_REG_reg[9]  (.SI(ALU_OUT_REG[8]), 
	.SE(test_se), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(ALU_OUT_REG[9]), 
	.D(n111), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_REG_reg[8]  (.SI(n127), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.Q(ALU_OUT_REG[8]), 
	.D(n110), 
	.CK(CLK));
   SDFFRX1M \ALU_OUT_REG_reg[6]  (.SI(n129), 
	.SE(test_se), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.QN(n35), 
	.Q(n128), 
	.D(n108), 
	.CK(CLK));
   SDFFRX1M \ALU_OUT_REG_reg[5]  (.SI(n130), 
	.SE(test_se), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.QN(n36), 
	.Q(n129), 
	.D(n107), 
	.CK(CLK));
   SDFFRX1M \ALU_OUT_REG_reg[4]  (.SI(n131), 
	.SE(test_se), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.QN(n37), 
	.Q(n130), 
	.D(n106), 
	.CK(CLK));
   SDFFRX1M \ALU_OUT_REG_reg[3]  (.SI(n132), 
	.SE(test_se), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.QN(n38), 
	.Q(n131), 
	.D(n105), 
	.CK(CLK));
   SDFFRX1M \ALU_OUT_REG_reg[2]  (.SI(n133), 
	.SE(test_se), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.QN(n39), 
	.Q(n132), 
	.D(n104), 
	.CK(CLK));
   SDFFRX1M \ALU_OUT_REG_reg[1]  (.SI(n134), 
	.SE(test_se), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.QN(n40), 
	.Q(n133), 
	.D(n103), 
	.CK(CLK));
   SDFFRX1M \ALU_OUT_REG_reg[0]  (.SI(n135), 
	.SE(test_se), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.QN(n41), 
	.Q(n134), 
	.D(n102), 
	.CK(CLK));
   SDFFRX1M \ADDR_REG_reg[2]  (.SI(n137), 
	.SE(test_se), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.QN(n31), 
	.Q(n136), 
	.D(n120), 
	.CK(CLK));
   SDFFRX1M \ADDR_REG_reg[0]  (.SI(Rd_Reg[7]), 
	.SE(test_se), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.QN(n33), 
	.Q(n138), 
	.D(n118), 
	.CK(CLK));
   SDFFRX1M \ADDR_REG_reg[1]  (.SI(n138), 
	.SE(test_se), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.QN(n32), 
	.Q(n137), 
	.D(n119), 
	.CK(CLK));
   SDFFRX1M \ADDR_REG_reg[3]  (.SI(n136), 
	.SE(test_se), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.QN(n30), 
	.Q(n135), 
	.D(n121), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[0]  (.SI(ALU_OUT_REG[15]), 
	.SE(test_se), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[3]  (.SI(current_state[2]), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(current_state[3]), 
	.D(next_state[3]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(CLK));
   SDFFRX1M \ALU_OUT_REG_reg[7]  (.SI(n128), 
	.SE(test_se), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.QN(n34), 
	.Q(n127), 
	.D(n109), 
	.CK(CLK));
   OAI22X2M U29 (.Y(FE_OFN14_Addr_3_), 
	.B1(n101), 
	.B0(n30), 
	.A1(n82), 
	.A0(n61));
   NOR2X2M U31 (.Y(ALU_FUN[2]), 
	.B(n86), 
	.A(n56));
   NOR2X2M U32 (.Y(ALU_FUN[0]), 
	.B(n88), 
	.A(n56));
   OAI22X1M U33 (.Y(FE_OFN15_Addr_2_), 
	.B1(n101), 
	.B0(n31), 
	.A1(n86), 
	.A0(n61));
   NOR2BX2M U34 (.Y(n85), 
	.B(n69), 
	.AN(n58));
   INVX2M U35 (.Y(FIFO_WR_INC), 
	.A(n89));
   NOR3BX2M U36 (.Y(n89), 
	.C(n91), 
	.B(n90), 
	.AN(n63));
   INVX2M U37 (.Y(n43), 
	.A(WrEn));
   INVX2M U38 (.Y(n42), 
	.A(FIFO_FULL));
   NAND2X2M U39 (.Y(n58), 
	.B(n100), 
	.A(n84));
   NOR2X2M U40 (.Y(Wr_Reg[5]), 
	.B(n43), 
	.A(n122));
   NOR2X2M U41 (.Y(Wr_Reg[7]), 
	.B(n43), 
	.A(n48));
   NOR2X2M U42 (.Y(n90), 
	.B(FIFO_FULL), 
	.A(n49));
   NOR3X2M U43 (.Y(n67), 
	.C(n122), 
	.B(n55), 
	.A(n124));
   NOR2BX2M U44 (.Y(n91), 
	.B(n65), 
	.AN(n64));
   NAND2X2M U45 (.Y(n63), 
	.B(n42), 
	.A(n73));
   NOR2X2M U46 (.Y(RdEn), 
	.B(n126), 
	.A(n61));
   NOR2X2M U47 (.Y(WrEn), 
	.B(n85), 
	.A(n126));
   INVX2M U48 (.Y(n44), 
	.A(n62));
   NAND2X2M U49 (.Y(n69), 
	.B(n57), 
	.A(n79));
   OA21X2M U50 (.Y(n53), 
	.B0(n66), 
	.A1(n65), 
	.A0(n64));
   NOR2X2M U51 (.Y(ALU_EN), 
	.B(n56), 
	.A(n126));
   NOR2X2M U52 (.Y(Wr_Reg[0]), 
	.B(n88), 
	.A(n85));
   NAND2X2M U53 (.Y(n56), 
	.B(n80), 
	.A(n100));
   NOR2X2M U54 (.Y(n50), 
	.B(n73), 
	.A(n83));
   OAI211X2M U55 (.Y(next_state[3]), 
	.C0(n50), 
	.B0(n46), 
	.A1(n42), 
	.A0(n49));
   INVX2M U56 (.Y(n46), 
	.A(ALU_EN));
   NOR2X2M U57 (.Y(Wr_Reg[3]), 
	.B(n82), 
	.A(n85));
   NOR2X2M U58 (.Y(Wr_Reg[1]), 
	.B(n87), 
	.A(n85));
   NOR2X2M U59 (.Y(Wr_Reg[2]), 
	.B(n86), 
	.A(n85));
   NOR2X2M U60 (.Y(ALU_FUN[1]), 
	.B(n87), 
	.A(n56));
   NOR2X2M U61 (.Y(ALU_FUN[3]), 
	.B(n82), 
	.A(n56));
   NAND3X2M U62 (.Y(CLKG_EN), 
	.C(n50), 
	.B(n49), 
	.A(n56));
   OAI222X1M U63 (.Y(Addr[0]), 
	.C1(n58), 
	.C0(n126), 
	.B1(n101), 
	.B0(n33), 
	.A1(n88), 
	.A0(n61));
   NOR2X2M U64 (.Y(n84), 
	.B(current_state[3]), 
	.A(n45));
   NOR2X2M U65 (.Y(n100), 
	.B(current_state[1]), 
	.A(n47));
   NAND3X2M U66 (.Y(n79), 
	.C(n84), 
	.B(n47), 
	.A(current_state[1]));
   NAND2BX2M U67 (.Y(n101), 
	.B(UART_RX_Valid), 
	.AN(n79));
   INVX2M U68 (.Y(n47), 
	.A(current_state[2]));
   INVX2M U69 (.Y(n45), 
	.A(current_state[0]));
   NOR3BX2M U70 (.Y(n74), 
	.C(current_state[2]), 
	.B(current_state[1]), 
	.AN(n84));
   NAND4BX1M U71 (.Y(n55), 
	.D(n81), 
	.C(n80), 
	.B(n47), 
	.AN(current_state[1]));
   NOR2X2M U72 (.Y(n81), 
	.B(n48), 
	.A(n82));
   NOR2X2M U73 (.Y(n80), 
	.B(current_state[0]), 
	.A(current_state[3]));
   NAND2X2M U74 (.Y(n62), 
	.B(UART_RX_Valid), 
	.A(n74));
   NAND4X2M U75 (.Y(n49), 
	.D(current_state[2]), 
	.C(current_state[0]), 
	.B(current_state[3]), 
	.A(current_state[1]));
   NOR2BX2M U76 (.Y(Wr_Reg[4]), 
	.B(n43), 
	.AN(UART_RX_DATA[4]));
   NOR2BX2M U77 (.Y(Wr_Reg[6]), 
	.B(n43), 
	.AN(UART_RX_DATA[6]));
   NAND2X2M U78 (.Y(n82), 
	.B(UART_RX_Valid), 
	.A(UART_RX_DATA[3]));
   OAI22X1M U79 (.Y(n118), 
	.B1(n33), 
	.B0(n44), 
	.A1(n62), 
	.A0(n125));
   OAI22X1M U80 (.Y(n119), 
	.B1(n32), 
	.B0(n44), 
	.A1(n62), 
	.A0(n124));
   OAI22X1M U81 (.Y(n120), 
	.B1(n31), 
	.B0(n44), 
	.A1(n62), 
	.A0(n123));
   NAND3X2M U82 (.Y(n61), 
	.C(current_state[1]), 
	.B(n47), 
	.A(n80));
   AND3X2M U83 (.Y(n73), 
	.C(current_state[3]), 
	.B(n100), 
	.A(current_state[0]));
   NAND2X2M U84 (.Y(n87), 
	.B(UART_RX_Valid), 
	.A(UART_RX_DATA[1]));
   NAND2X2M U85 (.Y(n86), 
	.B(UART_RX_Valid), 
	.A(UART_RX_DATA[2]));
   INVX2M U86 (.Y(n126), 
	.A(UART_RX_Valid));
   NAND2X2M U87 (.Y(n88), 
	.B(UART_RX_Valid), 
	.A(UART_RX_DATA[0]));
   NAND3X2M U88 (.Y(n57), 
	.C(n84), 
	.B(current_state[2]), 
	.A(current_state[1]));
   OAI21X2M U89 (.Y(FIFO_WR_DATA[0]), 
	.B0(n99), 
	.A1(n63), 
	.A0(n41));
   AOI22X1M U90 (.Y(n99), 
	.B1(ALU_OUT_REG[8]), 
	.B0(n90), 
	.A1(n91), 
	.A0(Rd_Reg[0]));
   OAI21X2M U91 (.Y(FIFO_WR_DATA[1]), 
	.B0(n98), 
	.A1(n63), 
	.A0(n40));
   AOI22X1M U92 (.Y(n98), 
	.B1(ALU_OUT_REG[9]), 
	.B0(n90), 
	.A1(n91), 
	.A0(Rd_Reg[1]));
   OAI21X2M U93 (.Y(FIFO_WR_DATA[2]), 
	.B0(n97), 
	.A1(n63), 
	.A0(n39));
   AOI22X1M U94 (.Y(n97), 
	.B1(ALU_OUT_REG[10]), 
	.B0(n90), 
	.A1(n91), 
	.A0(Rd_Reg[2]));
   OAI21X2M U95 (.Y(FIFO_WR_DATA[3]), 
	.B0(n96), 
	.A1(n63), 
	.A0(n38));
   AOI22X1M U96 (.Y(n96), 
	.B1(ALU_OUT_REG[11]), 
	.B0(n90), 
	.A1(n91), 
	.A0(Rd_Reg[3]));
   OAI21X2M U97 (.Y(FIFO_WR_DATA[4]), 
	.B0(n95), 
	.A1(n63), 
	.A0(n37));
   AOI22X1M U98 (.Y(n95), 
	.B1(ALU_OUT_REG[12]), 
	.B0(n90), 
	.A1(n91), 
	.A0(n141));
   OAI21X2M U99 (.Y(FIFO_WR_DATA[5]), 
	.B0(n94), 
	.A1(n63), 
	.A0(n36));
   AOI22X1M U100 (.Y(n94), 
	.B1(ALU_OUT_REG[13]), 
	.B0(n90), 
	.A1(n91), 
	.A0(Rd_Reg[5]));
   OAI21X2M U101 (.Y(FIFO_WR_DATA[6]), 
	.B0(n93), 
	.A1(n63), 
	.A0(n35));
   AOI22X1M U102 (.Y(n93), 
	.B1(ALU_OUT_REG[14]), 
	.B0(n90), 
	.A1(n91), 
	.A0(Rd_Reg[6]));
   OAI21X2M U103 (.Y(FIFO_WR_DATA[7]), 
	.B0(n92), 
	.A1(n63), 
	.A0(n34));
   AOI22X1M U104 (.Y(n92), 
	.B1(ALU_OUT_REG[15]), 
	.B0(n90), 
	.A1(n91), 
	.A0(Rd_Reg[7]));
   OAI2BB2X1M U105 (.Y(n121), 
	.B1(n30), 
	.B0(n44), 
	.A1N(n44), 
	.A0N(UART_RX_DATA[3]));
   NAND3X2M U106 (.Y(n65), 
	.C(current_state[1]), 
	.B(current_state[2]), 
	.A(n80));
   NOR2BX2M U107 (.Y(n64), 
	.B(FIFO_FULL), 
	.AN(Rd_Reg_Valid));
   NAND4BX1M U108 (.Y(next_state[2]), 
	.D(n53), 
	.C(n52), 
	.B(n50), 
	.AN(n51));
   NAND4BX1M U109 (.Y(n51), 
	.D(n58), 
	.C(n57), 
	.B(n56), 
	.AN(RdEn));
   NAND4X2M U110 (.Y(n52), 
	.D(n54), 
	.C(UART_RX_DATA[4]), 
	.B(UART_RX_DATA[6]), 
	.A(UART_RX_DATA[0]));
   NOR4X1M U111 (.Y(n54), 
	.D(n123), 
	.C(n55), 
	.B(UART_RX_DATA[1]), 
	.A(UART_RX_DATA[5]));
   NAND3X2M U112 (.Y(next_state[1]), 
	.C(n60), 
	.B(n53), 
	.A(n59));
   AND3X2M U113 (.Y(n60), 
	.C(n63), 
	.B(n62), 
	.A(n61));
   AOI32X1M U114 (.Y(n59), 
	.B1(n126), 
	.B0(n69), 
	.A2(n68), 
	.A1(UART_RX_DATA[4]), 
	.A0(n67));
   NOR3X2M U115 (.Y(n68), 
	.C(UART_RX_DATA[2]), 
	.B(UART_RX_DATA[6]), 
	.A(n125));
   NAND3X2M U116 (.Y(next_state[0]), 
	.C(n71), 
	.B(n66), 
	.A(n70));
   NOR4BX1M U117 (.Y(n71), 
	.D(n74), 
	.C(n73), 
	.B(n28), 
	.AN(n57));
   AOI31X2M U118 (.Y(n70), 
	.B0(n78), 
	.A2(n77), 
	.A1(n125), 
	.A0(n67));
   NOR3X2M U119 (.Y(n77), 
	.C(UART_RX_DATA[4]), 
	.B(UART_RX_DATA[6]), 
	.A(UART_RX_DATA[2]));
   OA21X2M U120 (.Y(n66), 
	.B0(n75), 
	.A1(n42), 
	.A0(n49));
   NAND4BX1M U121 (.Y(n75), 
	.D(n76), 
	.C(UART_RX_DATA[6]), 
	.B(UART_RX_DATA[2]), 
	.AN(n55));
   NOR4X1M U122 (.Y(n76), 
	.D(UART_RX_DATA[0]), 
	.C(UART_RX_DATA[1]), 
	.B(UART_RX_DATA[4]), 
	.A(UART_RX_DATA[5]));
   INVX2M U123 (.Y(n48), 
	.A(UART_RX_DATA[7]));
   OAI22X1M U124 (.Y(Addr[1]), 
	.B1(n101), 
	.B0(n32), 
	.A1(n87), 
	.A0(n61));
   AND3X2M U125 (.Y(n83), 
	.C(current_state[3]), 
	.B(n45), 
	.A(n100));
   AOI21X2M U126 (.Y(n78), 
	.B0(UART_RX_Valid), 
	.A1(n58), 
	.A0(n79));
   OAI2BB2X1M U127 (.Y(n102), 
	.B1(n41), 
	.B0(n72), 
	.A1N(n72), 
	.A0N(ALU_OUT[0]));
   OAI2BB2X1M U128 (.Y(n103), 
	.B1(n40), 
	.B0(n29), 
	.A1N(n29), 
	.A0N(ALU_OUT[1]));
   OAI2BB2X1M U129 (.Y(n104), 
	.B1(n39), 
	.B0(n28), 
	.A1N(n28), 
	.A0N(ALU_OUT[2]));
   OAI2BB2X1M U130 (.Y(n105), 
	.B1(n38), 
	.B0(n72), 
	.A1N(n72), 
	.A0N(ALU_OUT[3]));
   OAI2BB2X1M U131 (.Y(n106), 
	.B1(n37), 
	.B0(n29), 
	.A1N(n29), 
	.A0N(ALU_OUT[4]));
   OAI2BB2X1M U132 (.Y(n107), 
	.B1(n36), 
	.B0(n28), 
	.A1N(n28), 
	.A0N(ALU_OUT[5]));
   OAI2BB2X1M U133 (.Y(n108), 
	.B1(n35), 
	.B0(n72), 
	.A1N(n72), 
	.A0N(ALU_OUT[6]));
   OAI2BB2X1M U134 (.Y(n109), 
	.B1(n34), 
	.B0(n29), 
	.A1N(n29), 
	.A0N(ALU_OUT[7]));
   AND2X2M U135 (.Y(n72), 
	.B(n83), 
	.A(ALU_OUT_Valid));
   AND2X2M U136 (.Y(n28), 
	.B(n83), 
	.A(ALU_OUT_Valid));
   AND2X2M U137 (.Y(n29), 
	.B(n83), 
	.A(ALU_OUT_Valid));
   INVX2M U138 (.Y(n123), 
	.A(UART_RX_DATA[2]));
   INVX2M U139 (.Y(n125), 
	.A(UART_RX_DATA[0]));
   INVX2M U140 (.Y(n124), 
	.A(UART_RX_DATA[1]));
   INVX2M U141 (.Y(n122), 
	.A(UART_RX_DATA[5]));
   AO2B2X2M U142 (.Y(n110), 
	.B1(n28), 
	.B0(ALU_OUT[8]), 
	.A1N(n29), 
	.A0(ALU_OUT_REG[8]));
   AO2B2X2M U143 (.Y(n111), 
	.B1(n72), 
	.B0(ALU_OUT[9]), 
	.A1N(n28), 
	.A0(ALU_OUT_REG[9]));
   AO2B2X2M U144 (.Y(n112), 
	.B1(n29), 
	.B0(ALU_OUT[10]), 
	.A1N(n28), 
	.A0(ALU_OUT_REG[10]));
   AO2B2X2M U145 (.Y(n113), 
	.B1(n28), 
	.B0(ALU_OUT[11]), 
	.A1N(n29), 
	.A0(ALU_OUT_REG[11]));
   AO2B2X2M U146 (.Y(n114), 
	.B1(n72), 
	.B0(ALU_OUT[12]), 
	.A1N(n28), 
	.A0(ALU_OUT_REG[12]));
   AO2B2X2M U147 (.Y(n115), 
	.B1(n29), 
	.B0(ALU_OUT[13]), 
	.A1N(n28), 
	.A0(ALU_OUT_REG[13]));
   AO2B2X2M U148 (.Y(n116), 
	.B1(n28), 
	.B0(ALU_OUT[14]), 
	.A1N(n72), 
	.A0(ALU_OUT_REG[14]));
   AO2B2X2M U149 (.Y(n117), 
	.B1(n72), 
	.B0(ALU_OUT[15]), 
	.A1N(n28), 
	.A0(ALU_OUT_REG[15]));
   INVXLM U150 (.Y(n140), 
	.A(Rd_Reg[4]));
   INVXLM U151 (.Y(n141), 
	.A(n140));
   INVX2M U3 (.Y(CLKDIV_EN), 
	.A(LTIE_LTIELO_NET));
endmodule

module Register_File_test_1 (
	WrData, 
	Adresss, 
	WrEn, 
	RdEn, 
	CLK, 
	RST, 
	RdData, 
	RdData_Valid, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	test_si3, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN0_REF_CLK_scan, 
	FE_OFN1_REF_CLK_scan, 
	FE_OFN2_REF_CLK_scan, 
	FE_OFN5_SYNC_RST_REF_scan, 
	FE_OFN7_SYNC_RST_REF_scan, 
	FE_OFN17_SE, 
	FE_OFN18_SE, 
	FE_OFN19_SE);
   input [7:0] WrData;
   input [3:0] Adresss;
   input WrEn;
   input RdEn;
   input CLK;
   input RST;
   output [7:0] RdData;
   output RdData_Valid;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   input test_si3;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN0_REF_CLK_scan;
   input FE_OFN1_REF_CLK_scan;
   input FE_OFN2_REF_CLK_scan;
   input FE_OFN5_SYNC_RST_REF_scan;
   input FE_OFN7_SYNC_RST_REF_scan;
   input FE_OFN17_SE;
   input FE_OFN18_SE;
   input FE_OFN19_SE;

   // Internal wires
   wire FE_OFN10_SYNC_RST_REF_scan;
   wire FE_OFN8_SYNC_RST_REF_scan;
   wire FE_OFN6_SYNC_RST_REF_scan;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire \Memory[15][7] ;
   wire \Memory[15][6] ;
   wire \Memory[15][5] ;
   wire \Memory[15][4] ;
   wire \Memory[15][3] ;
   wire \Memory[15][2] ;
   wire \Memory[15][1] ;
   wire \Memory[15][0] ;
   wire \Memory[14][7] ;
   wire \Memory[14][6] ;
   wire \Memory[14][5] ;
   wire \Memory[14][4] ;
   wire \Memory[14][3] ;
   wire \Memory[14][2] ;
   wire \Memory[14][1] ;
   wire \Memory[14][0] ;
   wire \Memory[13][7] ;
   wire \Memory[13][6] ;
   wire \Memory[13][5] ;
   wire \Memory[13][4] ;
   wire \Memory[13][3] ;
   wire \Memory[13][2] ;
   wire \Memory[13][1] ;
   wire \Memory[13][0] ;
   wire \Memory[12][7] ;
   wire \Memory[12][6] ;
   wire \Memory[12][5] ;
   wire \Memory[12][4] ;
   wire \Memory[12][3] ;
   wire \Memory[12][2] ;
   wire \Memory[12][1] ;
   wire \Memory[12][0] ;
   wire \Memory[11][7] ;
   wire \Memory[11][6] ;
   wire \Memory[11][5] ;
   wire \Memory[11][4] ;
   wire \Memory[11][3] ;
   wire \Memory[11][2] ;
   wire \Memory[11][1] ;
   wire \Memory[11][0] ;
   wire \Memory[10][7] ;
   wire \Memory[10][6] ;
   wire \Memory[10][5] ;
   wire \Memory[10][4] ;
   wire \Memory[10][3] ;
   wire \Memory[10][2] ;
   wire \Memory[10][1] ;
   wire \Memory[10][0] ;
   wire \Memory[9][7] ;
   wire \Memory[9][6] ;
   wire \Memory[9][5] ;
   wire \Memory[9][4] ;
   wire \Memory[9][3] ;
   wire \Memory[9][2] ;
   wire \Memory[9][1] ;
   wire \Memory[9][0] ;
   wire \Memory[8][7] ;
   wire \Memory[8][6] ;
   wire \Memory[8][5] ;
   wire \Memory[8][4] ;
   wire \Memory[8][3] ;
   wire \Memory[8][2] ;
   wire \Memory[8][1] ;
   wire \Memory[8][0] ;
   wire \Memory[7][7] ;
   wire \Memory[7][6] ;
   wire \Memory[7][5] ;
   wire \Memory[7][4] ;
   wire \Memory[7][3] ;
   wire \Memory[7][2] ;
   wire \Memory[7][1] ;
   wire \Memory[7][0] ;
   wire \Memory[6][7] ;
   wire \Memory[6][6] ;
   wire \Memory[6][5] ;
   wire \Memory[6][4] ;
   wire \Memory[6][3] ;
   wire \Memory[6][2] ;
   wire \Memory[6][1] ;
   wire \Memory[6][0] ;
   wire \Memory[5][7] ;
   wire \Memory[5][6] ;
   wire \Memory[5][5] ;
   wire \Memory[5][4] ;
   wire \Memory[5][3] ;
   wire \Memory[5][2] ;
   wire \Memory[5][1] ;
   wire \Memory[5][0] ;
   wire \Memory[4][7] ;
   wire \Memory[4][6] ;
   wire \Memory[4][5] ;
   wire \Memory[4][4] ;
   wire \Memory[4][3] ;
   wire \Memory[4][2] ;
   wire \Memory[4][1] ;
   wire \Memory[4][0] ;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n336;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n377;
   wire n378;
   wire n379;

   assign N11 = Adresss[0] ;
   assign N12 = Adresss[1] ;
   assign N13 = Adresss[2] ;
   assign N14 = Adresss[3] ;
   assign test_so1 = \Memory[5][3]  ;

   BUFX4M FE_OFC10_SYNC_RST_REF_scan (.Y(FE_OFN10_SYNC_RST_REF_scan), 
	.A(FE_OFN8_SYNC_RST_REF_scan));
   CLKINVX6M FE_OFC8_SYNC_RST_REF_scan (.Y(FE_OFN8_SYNC_RST_REF_scan), 
	.A(FE_OFN5_SYNC_RST_REF_scan));
   BUFX4M FE_OFC6_SYNC_RST_REF_scan (.Y(FE_OFN6_SYNC_RST_REF_scan), 
	.A(RST));
   SDFFRQX2M \Memory_reg[13][7]  (.SI(\Memory[13][6] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[13][7] ), 
	.D(n298), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[13][6]  (.SI(\Memory[13][5] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[13][6] ), 
	.D(n297), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[13][5]  (.SI(\Memory[13][4] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[13][5] ), 
	.D(n296), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[13][4]  (.SI(\Memory[13][3] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[13][4] ), 
	.D(n295), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[13][3]  (.SI(\Memory[13][2] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[13][3] ), 
	.D(n294), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[13][2]  (.SI(\Memory[13][1] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[13][2] ), 
	.D(n293), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[13][1]  (.SI(\Memory[13][0] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[13][1] ), 
	.D(n292), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[13][0]  (.SI(\Memory[12][7] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[13][0] ), 
	.D(n291), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[9][7]  (.SI(\Memory[9][6] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[9][7] ), 
	.D(n266), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[9][6]  (.SI(\Memory[9][5] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[9][6] ), 
	.D(n265), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[9][5]  (.SI(\Memory[9][4] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[9][5] ), 
	.D(n264), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[9][4]  (.SI(\Memory[9][3] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[9][4] ), 
	.D(n263), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[9][3]  (.SI(\Memory[9][2] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[9][3] ), 
	.D(n262), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[9][2]  (.SI(\Memory[9][1] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[9][2] ), 
	.D(n261), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[9][1]  (.SI(\Memory[9][0] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[9][1] ), 
	.D(n260), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[9][0]  (.SI(\Memory[8][7] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[9][0] ), 
	.D(n259), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[5][7]  (.SI(\Memory[5][6] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[5][7] ), 
	.D(n234), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[5][6]  (.SI(\Memory[5][5] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[5][6] ), 
	.D(n233), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[5][5]  (.SI(\Memory[5][4] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[5][5] ), 
	.D(n232), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[5][4]  (.SI(test_si2), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[5][4] ), 
	.D(n231), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[5][2]  (.SI(\Memory[5][1] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(\Memory[5][2] ), 
	.D(n229), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[5][1]  (.SI(\Memory[5][0] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(\Memory[5][1] ), 
	.D(n228), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[5][0]  (.SI(\Memory[4][7] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(\Memory[5][0] ), 
	.D(n227), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[15][7]  (.SI(\Memory[15][6] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(\Memory[15][7] ), 
	.D(n314), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[15][6]  (.SI(\Memory[15][5] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(\Memory[15][6] ), 
	.D(n313), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[15][5]  (.SI(\Memory[15][4] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[15][5] ), 
	.D(n312), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[15][4]  (.SI(\Memory[15][3] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[15][4] ), 
	.D(n311), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[15][3]  (.SI(\Memory[15][2] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[15][3] ), 
	.D(n310), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[15][2]  (.SI(\Memory[15][1] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[15][2] ), 
	.D(n309), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[15][1]  (.SI(\Memory[15][0] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[15][1] ), 
	.D(n308), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[15][0]  (.SI(\Memory[14][7] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[15][0] ), 
	.D(n307), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[11][7]  (.SI(\Memory[11][6] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[11][7] ), 
	.D(n282), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[11][6]  (.SI(\Memory[11][5] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[11][6] ), 
	.D(n281), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[11][5]  (.SI(\Memory[11][4] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[11][5] ), 
	.D(n280), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[11][4]  (.SI(\Memory[11][3] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[11][4] ), 
	.D(n279), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[11][3]  (.SI(\Memory[11][2] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[11][3] ), 
	.D(n278), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[11][2]  (.SI(\Memory[11][1] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[11][2] ), 
	.D(n277), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[11][1]  (.SI(\Memory[11][0] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[11][1] ), 
	.D(n276), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[11][0]  (.SI(\Memory[10][7] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[11][0] ), 
	.D(n275), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[7][7]  (.SI(\Memory[7][6] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(\Memory[7][7] ), 
	.D(n250), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[7][6]  (.SI(\Memory[7][5] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[7][6] ), 
	.D(n249), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[7][5]  (.SI(\Memory[7][4] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[7][5] ), 
	.D(n248), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[7][4]  (.SI(\Memory[7][3] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[7][4] ), 
	.D(n247), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[7][3]  (.SI(\Memory[7][2] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[7][3] ), 
	.D(n246), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[7][2]  (.SI(\Memory[7][1] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[7][2] ), 
	.D(n245), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[7][1]  (.SI(\Memory[7][0] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(\Memory[7][1] ), 
	.D(n244), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[7][0]  (.SI(\Memory[6][7] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[7][0] ), 
	.D(n243), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[14][7]  (.SI(\Memory[14][6] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(\Memory[14][7] ), 
	.D(n306), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[14][6]  (.SI(\Memory[14][5] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(\Memory[14][6] ), 
	.D(n305), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[14][5]  (.SI(\Memory[14][4] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[14][5] ), 
	.D(n304), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[14][4]  (.SI(\Memory[14][3] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[14][4] ), 
	.D(n303), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[14][3]  (.SI(\Memory[14][2] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[14][3] ), 
	.D(n302), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[14][2]  (.SI(\Memory[14][1] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[14][2] ), 
	.D(n301), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[14][1]  (.SI(\Memory[14][0] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[14][1] ), 
	.D(n300), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[14][0]  (.SI(\Memory[13][7] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[14][0] ), 
	.D(n299), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[10][7]  (.SI(\Memory[10][6] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[10][7] ), 
	.D(n274), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[10][6]  (.SI(\Memory[10][5] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[10][6] ), 
	.D(n273), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[10][5]  (.SI(\Memory[10][4] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[10][5] ), 
	.D(n272), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[10][4]  (.SI(\Memory[10][3] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[10][4] ), 
	.D(n271), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[10][3]  (.SI(\Memory[10][2] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[10][3] ), 
	.D(n270), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[10][2]  (.SI(\Memory[10][1] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[10][2] ), 
	.D(n269), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[10][1]  (.SI(\Memory[10][0] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[10][1] ), 
	.D(n268), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[10][0]  (.SI(\Memory[9][7] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[10][0] ), 
	.D(n267), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[6][7]  (.SI(\Memory[6][6] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[6][7] ), 
	.D(n242), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[6][6]  (.SI(\Memory[6][5] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[6][6] ), 
	.D(n241), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[6][5]  (.SI(\Memory[6][4] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[6][5] ), 
	.D(n240), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[6][4]  (.SI(\Memory[6][3] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[6][4] ), 
	.D(n239), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[6][3]  (.SI(\Memory[6][2] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[6][3] ), 
	.D(n238), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[6][2]  (.SI(\Memory[6][1] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(\Memory[6][2] ), 
	.D(n237), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[6][1]  (.SI(\Memory[6][0] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(\Memory[6][1] ), 
	.D(n236), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[6][0]  (.SI(\Memory[5][7] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(\Memory[6][0] ), 
	.D(n235), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[12][7]  (.SI(\Memory[12][6] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[12][7] ), 
	.D(n290), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[12][6]  (.SI(\Memory[12][5] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[12][6] ), 
	.D(n289), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[12][5]  (.SI(\Memory[12][4] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[12][5] ), 
	.D(n288), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[12][4]  (.SI(\Memory[12][3] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[12][4] ), 
	.D(n287), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[12][3]  (.SI(\Memory[12][2] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[12][3] ), 
	.D(n286), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[12][2]  (.SI(\Memory[12][1] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[12][2] ), 
	.D(n285), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[12][1]  (.SI(\Memory[12][0] ), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[12][1] ), 
	.D(n284), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[12][0]  (.SI(\Memory[11][7] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[12][0] ), 
	.D(n283), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[8][7]  (.SI(\Memory[8][6] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[8][7] ), 
	.D(n258), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[8][6]  (.SI(\Memory[8][5] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[8][6] ), 
	.D(n257), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[8][5]  (.SI(\Memory[8][4] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[8][5] ), 
	.D(n256), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[8][4]  (.SI(\Memory[8][3] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[8][4] ), 
	.D(n255), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[8][3]  (.SI(\Memory[8][2] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(\Memory[8][3] ), 
	.D(n254), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[8][2]  (.SI(\Memory[8][1] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[8][2] ), 
	.D(n253), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[8][1]  (.SI(\Memory[8][0] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[8][1] ), 
	.D(n252), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[8][0]  (.SI(\Memory[7][7] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[8][0] ), 
	.D(n251), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[4][7]  (.SI(\Memory[4][6] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(\Memory[4][7] ), 
	.D(n226), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[4][6]  (.SI(\Memory[4][5] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[4][6] ), 
	.D(n225), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[4][5]  (.SI(\Memory[4][4] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[4][5] ), 
	.D(n224), 
	.CK(FE_OFN0_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[4][4]  (.SI(\Memory[4][3] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[4][4] ), 
	.D(n223), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[4][3]  (.SI(\Memory[4][2] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN8_SYNC_RST_REF_scan), 
	.Q(\Memory[4][3] ), 
	.D(n222), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[4][2]  (.SI(\Memory[4][1] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(\Memory[4][2] ), 
	.D(n221), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[4][1]  (.SI(\Memory[4][0] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(\Memory[4][1] ), 
	.D(n220), 
	.CK(CLK));
   SDFFRQX2M \Memory_reg[4][0]  (.SI(REG3[7]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(\Memory[4][0] ), 
	.D(n219), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \RdData_reg[7]  (.SI(RdData[6]), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(RdData[7]), 
	.D(n186), 
	.CK(FE_OFN2_REF_CLK_scan));
   SDFFRQX2M \RdData_reg[6]  (.SI(RdData[5]), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(RdData[6]), 
	.D(n185), 
	.CK(FE_OFN2_REF_CLK_scan));
   SDFFRQX2M \RdData_reg[5]  (.SI(test_si3), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(RdData[5]), 
	.D(n184), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \RdData_reg[3]  (.SI(RdData[2]), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(RdData[3]), 
	.D(n182), 
	.CK(FE_OFN2_REF_CLK_scan));
   SDFFRQX2M \RdData_reg[2]  (.SI(RdData[1]), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(RdData[2]), 
	.D(n181), 
	.CK(FE_OFN2_REF_CLK_scan));
   SDFFRQX2M \RdData_reg[1]  (.SI(RdData[0]), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(RdData[1]), 
	.D(n180), 
	.CK(FE_OFN2_REF_CLK_scan));
   SDFFRQX2M \RdData_reg[0]  (.SI(RdData_Valid), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(RdData[0]), 
	.D(n179), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[2][1]  (.SI(REG2[0]), 
	.SE(test_se), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(REG2[1]), 
	.D(n204), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[3][0]  (.SI(REG2[7]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(REG3[0]), 
	.D(n211), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[1][6]  (.SI(REG1[5]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(REG1[6]), 
	.D(n201), 
	.CK(FE_OFN2_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[0][7]  (.SI(REG0[6]), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(REG0[7]), 
	.D(n194), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[0][6]  (.SI(REG0[5]), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(REG0[6]), 
	.D(n193), 
	.CK(FE_OFN2_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[0][5]  (.SI(REG0[4]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(REG0[5]), 
	.D(n192), 
	.CK(FE_OFN2_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[0][4]  (.SI(REG0[3]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(REG0[4]), 
	.D(n191), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[0][3]  (.SI(REG0[2]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(REG0[3]), 
	.D(n190), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[0][2]  (.SI(REG0[1]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(REG0[2]), 
	.D(n189), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[0][1]  (.SI(REG0[0]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(REG0[1]), 
	.D(n188), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[0][0]  (.SI(test_si1), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(REG0[0]), 
	.D(n187), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFSQX2M \Memory_reg[2][0]  (.SN(FE_OFN6_SYNC_RST_REF_scan), 
	.SI(REG1[7]), 
	.SE(FE_OFN19_SE), 
	.Q(REG2[0]), 
	.D(n203), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[1][1]  (.SI(REG1[0]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(REG1[1]), 
	.D(n196), 
	.CK(FE_OFN2_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[1][5]  (.SI(REG1[4]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(REG1[5]), 
	.D(n200), 
	.CK(FE_OFN2_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[1][4]  (.SI(REG1[3]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(REG1[4]), 
	.D(n199), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[1][7]  (.SI(REG1[6]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(REG1[7]), 
	.D(n202), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[1][3]  (.SI(REG1[2]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(REG1[3]), 
	.D(n198), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[1][2]  (.SI(REG1[1]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN10_SYNC_RST_REF_scan), 
	.Q(REG1[2]), 
	.D(n197), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[1][0]  (.SI(REG0[7]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(REG1[0]), 
	.D(n195), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M RdData_Valid_reg (.SI(\Memory[15][7] ), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(RdData_Valid), 
	.D(n178), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFSQX2M \Memory_reg[3][5]  (.SN(FE_OFN6_SYNC_RST_REF_scan), 
	.SI(REG3[4]), 
	.SE(FE_OFN18_SE), 
	.Q(REG3[5]), 
	.D(n216), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[3][7]  (.SI(REG3[6]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(REG3[7]), 
	.D(n218), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[3][6]  (.SI(REG3[5]), 
	.SE(test_se), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(REG3[6]), 
	.D(n217), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[3][3]  (.SI(REG3[2]), 
	.SE(test_se), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(REG3[3]), 
	.D(n214), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[3][2]  (.SI(REG3[1]), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(REG3[2]), 
	.D(n213), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[3][4]  (.SI(REG3[3]), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(REG3[4]), 
	.D(n215), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[3][1]  (.SI(REG3[0]), 
	.SE(test_se), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(REG3[1]), 
	.D(n212), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFSQX2M \Memory_reg[2][7]  (.SN(RST), 
	.SI(REG2[6]), 
	.SE(FE_OFN17_SE), 
	.Q(REG2[7]), 
	.D(n210), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[2][4]  (.SI(REG2[3]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(REG2[4]), 
	.D(n207), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[2][6]  (.SI(REG2[5]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(REG2[6]), 
	.D(n209), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[2][5]  (.SI(REG2[4]), 
	.SE(FE_OFN17_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(REG2[5]), 
	.D(n208), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[2][2]  (.SI(REG2[1]), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(REG2[2]), 
	.D(n205), 
	.CK(FE_OFN1_REF_CLK_scan));
   SDFFRQX2M \Memory_reg[2][3]  (.SI(REG2[2]), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(REG2[3]), 
	.D(n206), 
	.CK(FE_OFN1_REF_CLK_scan));
   NOR2X2M U140 (.Y(n158), 
	.B(N13), 
	.A(n341));
   NOR2X2M U141 (.Y(n153), 
	.B(N13), 
	.A(N12));
   INVX4M U142 (.Y(n338), 
	.A(n340));
   INVX2M U143 (.Y(n336), 
	.A(n341));
   INVX4M U144 (.Y(n339), 
	.A(n340));
   INVX2M U146 (.Y(n357), 
	.A(n151));
   NAND2X2M U148 (.Y(n155), 
	.B(n153), 
	.A(n156));
   NAND2X2M U149 (.Y(n167), 
	.B(n153), 
	.A(n168));
   NAND2X2M U150 (.Y(n169), 
	.B(n153), 
	.A(n170));
   NAND2X2M U151 (.Y(n171), 
	.B(n158), 
	.A(n168));
   NAND2X2M U152 (.Y(n172), 
	.B(n158), 
	.A(n170));
   NAND2X2M U153 (.Y(n157), 
	.B(n154), 
	.A(n158));
   NAND2X2M U154 (.Y(n159), 
	.B(n156), 
	.A(n158));
   NAND2X2M U155 (.Y(n160), 
	.B(n154), 
	.A(n161));
   NAND2X2M U156 (.Y(n162), 
	.B(n156), 
	.A(n161));
   NAND2X2M U157 (.Y(n163), 
	.B(n154), 
	.A(n164));
   NAND2X2M U158 (.Y(n166), 
	.B(n156), 
	.A(n164));
   NAND2X2M U159 (.Y(n173), 
	.B(n161), 
	.A(n168));
   NAND2X2M U160 (.Y(n174), 
	.B(n161), 
	.A(n170));
   NAND2X2M U161 (.Y(n175), 
	.B(n164), 
	.A(n168));
   NAND2X2M U162 (.Y(n177), 
	.B(n164), 
	.A(n170));
   NAND2X2M U163 (.Y(n152), 
	.B(n154), 
	.A(n153));
   NAND2X2M U164 (.Y(n151), 
	.B(n358), 
	.A(RdEn));
   NOR2X2M U165 (.Y(n150), 
	.B(RdEn), 
	.A(n358));
   AND2X2M U166 (.Y(n156), 
	.B(N11), 
	.A(n165));
   AND2X2M U167 (.Y(n170), 
	.B(N11), 
	.A(n176));
   INVX2M U168 (.Y(n358), 
	.A(WrEn));
   INVX2M U179 (.Y(n361), 
	.A(WrData[5]));
   INVX2M U180 (.Y(n359), 
	.A(WrData[7]));
   NOR2BX2M U181 (.Y(n165), 
	.B(N14), 
	.AN(n150));
   AND2X2M U182 (.Y(n161), 
	.B(n341), 
	.A(N13));
   AND2X2M U183 (.Y(n164), 
	.B(N12), 
	.A(N13));
   AND2X2M U184 (.Y(n154), 
	.B(n340), 
	.A(n165));
   AND2X2M U185 (.Y(n168), 
	.B(n340), 
	.A(n176));
   AND2X2M U186 (.Y(n176), 
	.B(n150), 
	.A(N14));
   INVX2M U187 (.Y(n363), 
	.A(WrData[0]));
   INVX2M U188 (.Y(n366), 
	.A(WrData[3]));
   INVX2M U189 (.Y(n364), 
	.A(WrData[1]));
   INVX2M U190 (.Y(n365), 
	.A(WrData[2]));
   INVX2M U196 (.Y(n340), 
	.A(N11));
   AO22X1M U197 (.Y(n179), 
	.B1(n151), 
	.B0(RdData[0]), 
	.A1(n357), 
	.A0(N43));
   MX4X1M U198 (.Y(N43), 
	.S1(N13), 
	.S0(N14), 
	.D(n138), 
	.C(n140), 
	.B(n139), 
	.A(n141));
   MX4X1M U199 (.Y(n141), 
	.S1(N12), 
	.S0(N11), 
	.D(REG3[0]), 
	.C(REG2[0]), 
	.B(REG1[0]), 
	.A(REG0[0]));
   MX4X1M U200 (.Y(n139), 
	.S1(N12), 
	.S0(N11), 
	.D(\Memory[11][0] ), 
	.C(\Memory[10][0] ), 
	.B(\Memory[9][0] ), 
	.A(\Memory[8][0] ));
   AO22X1M U201 (.Y(n180), 
	.B1(n151), 
	.B0(RdData[1]), 
	.A1(n357), 
	.A0(N42));
   MX4X1M U202 (.Y(N42), 
	.S1(N13), 
	.S0(N14), 
	.D(n142), 
	.C(n144), 
	.B(n143), 
	.A(n145));
   MX4X1M U203 (.Y(n143), 
	.S1(N12), 
	.S0(N11), 
	.D(\Memory[11][1] ), 
	.C(\Memory[10][1] ), 
	.B(\Memory[9][1] ), 
	.A(\Memory[8][1] ));
   MX4X1M U204 (.Y(n142), 
	.S1(n336), 
	.S0(n338), 
	.D(\Memory[15][1] ), 
	.C(\Memory[14][1] ), 
	.B(\Memory[13][1] ), 
	.A(\Memory[12][1] ));
   AO22X1M U205 (.Y(n181), 
	.B1(n151), 
	.B0(RdData[2]), 
	.A1(n357), 
	.A0(N41));
   MX4X1M U206 (.Y(N41), 
	.S1(N13), 
	.S0(N14), 
	.D(n146), 
	.C(n148), 
	.B(n147), 
	.A(n149));
   MX4X1M U207 (.Y(n149), 
	.S1(n336), 
	.S0(n338), 
	.D(REG3[2]), 
	.C(REG2[2]), 
	.B(REG1[2]), 
	.A(REG0[2]));
   MX4X1M U208 (.Y(n147), 
	.S1(n336), 
	.S0(n338), 
	.D(\Memory[11][2] ), 
	.C(\Memory[10][2] ), 
	.B(\Memory[9][2] ), 
	.A(\Memory[8][2] ));
   AO22X1M U209 (.Y(n182), 
	.B1(n151), 
	.B0(RdData[3]), 
	.A1(n357), 
	.A0(N40));
   MX4X1M U210 (.Y(N40), 
	.S1(N13), 
	.S0(N14), 
	.D(n315), 
	.C(n317), 
	.B(n316), 
	.A(n318));
   MX4X1M U211 (.Y(n318), 
	.S1(n336), 
	.S0(n338), 
	.D(REG3[3]), 
	.C(REG2[3]), 
	.B(REG1[3]), 
	.A(REG0[3]));
   MX4X1M U212 (.Y(n316), 
	.S1(n336), 
	.S0(n338), 
	.D(\Memory[11][3] ), 
	.C(\Memory[10][3] ), 
	.B(\Memory[9][3] ), 
	.A(\Memory[8][3] ));
   AO22X1M U213 (.Y(n183), 
	.B1(n151), 
	.B0(n377), 
	.A1(n357), 
	.A0(N39));
   MX4X1M U214 (.Y(N39), 
	.S1(N13), 
	.S0(N14), 
	.D(n319), 
	.C(n321), 
	.B(n320), 
	.A(n322));
   MX4X1M U215 (.Y(n322), 
	.S1(n336), 
	.S0(n339), 
	.D(REG3[4]), 
	.C(REG2[4]), 
	.B(REG1[4]), 
	.A(REG0[4]));
   MX4X1M U216 (.Y(n320), 
	.S1(n336), 
	.S0(n338), 
	.D(\Memory[11][4] ), 
	.C(\Memory[10][4] ), 
	.B(\Memory[9][4] ), 
	.A(\Memory[8][4] ));
   AO22X1M U217 (.Y(n184), 
	.B1(n151), 
	.B0(RdData[5]), 
	.A1(n357), 
	.A0(N38));
   MX4X1M U218 (.Y(N38), 
	.S1(N13), 
	.S0(N14), 
	.D(n323), 
	.C(n325), 
	.B(n324), 
	.A(n326));
   MX4X1M U219 (.Y(n326), 
	.S1(N12), 
	.S0(n339), 
	.D(REG3[5]), 
	.C(REG2[5]), 
	.B(REG1[5]), 
	.A(REG0[5]));
   MX4X1M U220 (.Y(n324), 
	.S1(N12), 
	.S0(n339), 
	.D(\Memory[11][5] ), 
	.C(\Memory[10][5] ), 
	.B(\Memory[9][5] ), 
	.A(\Memory[8][5] ));
   AO22X1M U221 (.Y(n185), 
	.B1(n151), 
	.B0(RdData[6]), 
	.A1(n357), 
	.A0(N37));
   MX4X1M U222 (.Y(N37), 
	.S1(N13), 
	.S0(N14), 
	.D(n327), 
	.C(n329), 
	.B(n328), 
	.A(n330));
   MX4X1M U223 (.Y(n330), 
	.S1(N12), 
	.S0(n339), 
	.D(REG3[6]), 
	.C(REG2[6]), 
	.B(REG1[6]), 
	.A(REG0[6]));
   MX4X1M U224 (.Y(n328), 
	.S1(N12), 
	.S0(n339), 
	.D(\Memory[11][6] ), 
	.C(\Memory[10][6] ), 
	.B(\Memory[9][6] ), 
	.A(\Memory[8][6] ));
   AO22X1M U225 (.Y(n186), 
	.B1(n151), 
	.B0(RdData[7]), 
	.A1(n357), 
	.A0(N36));
   MX4X1M U226 (.Y(N36), 
	.S1(N13), 
	.S0(N14), 
	.D(n331), 
	.C(n333), 
	.B(n332), 
	.A(n334));
   MX4X1M U227 (.Y(n334), 
	.S1(N12), 
	.S0(n339), 
	.D(REG3[7]), 
	.C(REG2[7]), 
	.B(REG1[7]), 
	.A(REG0[7]));
   MX4X1M U228 (.Y(n332), 
	.S1(N12), 
	.S0(n339), 
	.D(\Memory[11][7] ), 
	.C(\Memory[10][7] ), 
	.B(\Memory[9][7] ), 
	.A(\Memory[8][7] ));
   MX4X1M U229 (.Y(n145), 
	.S1(N12), 
	.S0(n338), 
	.D(REG3[1]), 
	.C(REG2[1]), 
	.B(REG1[1]), 
	.A(REG0[1]));
   MX4X1M U230 (.Y(n140), 
	.S1(N12), 
	.S0(N11), 
	.D(\Memory[7][0] ), 
	.C(\Memory[6][0] ), 
	.B(\Memory[5][0] ), 
	.A(\Memory[4][0] ));
   MX4X1M U231 (.Y(n144), 
	.S1(N12), 
	.S0(n338), 
	.D(\Memory[7][1] ), 
	.C(\Memory[6][1] ), 
	.B(\Memory[5][1] ), 
	.A(\Memory[4][1] ));
   MX4X1M U232 (.Y(n148), 
	.S1(n336), 
	.S0(n338), 
	.D(\Memory[7][2] ), 
	.C(\Memory[6][2] ), 
	.B(\Memory[5][2] ), 
	.A(\Memory[4][2] ));
   MX4X1M U233 (.Y(n317), 
	.S1(n336), 
	.S0(n338), 
	.D(\Memory[7][3] ), 
	.C(\Memory[6][3] ), 
	.B(n379), 
	.A(\Memory[4][3] ));
   MX4X1M U234 (.Y(n321), 
	.S1(n336), 
	.S0(n338), 
	.D(\Memory[7][4] ), 
	.C(\Memory[6][4] ), 
	.B(\Memory[5][4] ), 
	.A(\Memory[4][4] ));
   MX4X1M U235 (.Y(n325), 
	.S1(N12), 
	.S0(n339), 
	.D(\Memory[7][5] ), 
	.C(\Memory[6][5] ), 
	.B(\Memory[5][5] ), 
	.A(\Memory[4][5] ));
   MX4X1M U236 (.Y(n329), 
	.S1(N12), 
	.S0(n339), 
	.D(\Memory[7][6] ), 
	.C(\Memory[6][6] ), 
	.B(\Memory[5][6] ), 
	.A(\Memory[4][6] ));
   MX4X1M U237 (.Y(n333), 
	.S1(N12), 
	.S0(n339), 
	.D(\Memory[7][7] ), 
	.C(\Memory[6][7] ), 
	.B(\Memory[5][7] ), 
	.A(\Memory[4][7] ));
   MX4X1M U238 (.Y(n138), 
	.S1(n336), 
	.S0(n339), 
	.D(\Memory[15][0] ), 
	.C(\Memory[14][0] ), 
	.B(\Memory[13][0] ), 
	.A(\Memory[12][0] ));
   MX4X1M U239 (.Y(n146), 
	.S1(n336), 
	.S0(n338), 
	.D(\Memory[15][2] ), 
	.C(\Memory[14][2] ), 
	.B(\Memory[13][2] ), 
	.A(\Memory[12][2] ));
   MX4X1M U240 (.Y(n315), 
	.S1(n336), 
	.S0(n338), 
	.D(\Memory[15][3] ), 
	.C(\Memory[14][3] ), 
	.B(\Memory[13][3] ), 
	.A(\Memory[12][3] ));
   MX4X1M U241 (.Y(n319), 
	.S1(n336), 
	.S0(n338), 
	.D(\Memory[15][4] ), 
	.C(\Memory[14][4] ), 
	.B(\Memory[13][4] ), 
	.A(\Memory[12][4] ));
   MX4X1M U242 (.Y(n323), 
	.S1(N12), 
	.S0(n339), 
	.D(\Memory[15][5] ), 
	.C(\Memory[14][5] ), 
	.B(\Memory[13][5] ), 
	.A(\Memory[12][5] ));
   MX4X1M U243 (.Y(n327), 
	.S1(N12), 
	.S0(n339), 
	.D(\Memory[15][6] ), 
	.C(\Memory[14][6] ), 
	.B(\Memory[13][6] ), 
	.A(\Memory[12][6] ));
   MX4X1M U244 (.Y(n331), 
	.S1(N12), 
	.S0(n339), 
	.D(\Memory[15][7] ), 
	.C(\Memory[14][7] ), 
	.B(\Memory[13][7] ), 
	.A(\Memory[12][7] ));
   INVX2M U245 (.Y(n362), 
	.A(WrData[4]));
   INVX2M U246 (.Y(n360), 
	.A(WrData[6]));
   OAI2BB2X1M U247 (.Y(n187), 
	.B1(n363), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[0]));
   OAI2BB2X1M U248 (.Y(n188), 
	.B1(n364), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[1]));
   OAI2BB2X1M U249 (.Y(n189), 
	.B1(n365), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[2]));
   OAI2BB2X1M U250 (.Y(n190), 
	.B1(n366), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[3]));
   OAI2BB2X1M U251 (.Y(n191), 
	.B1(n362), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[4]));
   OAI2BB2X1M U252 (.Y(n192), 
	.B1(n361), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[5]));
   OAI2BB2X1M U253 (.Y(n193), 
	.B1(n360), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[6]));
   OAI2BB2X1M U254 (.Y(n194), 
	.B1(n359), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[7]));
   OAI2BB2X1M U255 (.Y(n204), 
	.B1(n157), 
	.B0(n364), 
	.A1N(n157), 
	.A0N(REG2[1]));
   OAI2BB2X1M U256 (.Y(n205), 
	.B1(n157), 
	.B0(n365), 
	.A1N(n157), 
	.A0N(REG2[2]));
   OAI2BB2X1M U257 (.Y(n206), 
	.B1(n157), 
	.B0(n366), 
	.A1N(n157), 
	.A0N(REG2[3]));
   OAI2BB2X1M U258 (.Y(n207), 
	.B1(n157), 
	.B0(n362), 
	.A1N(n157), 
	.A0N(REG2[4]));
   OAI2BB2X1M U259 (.Y(n208), 
	.B1(n157), 
	.B0(n361), 
	.A1N(n157), 
	.A0N(REG2[5]));
   OAI2BB2X1M U260 (.Y(n209), 
	.B1(n157), 
	.B0(n360), 
	.A1N(n157), 
	.A0N(REG2[6]));
   OAI2BB2X1M U261 (.Y(n211), 
	.B1(n159), 
	.B0(n363), 
	.A1N(n159), 
	.A0N(REG3[0]));
   OAI2BB2X1M U262 (.Y(n212), 
	.B1(n159), 
	.B0(n364), 
	.A1N(n159), 
	.A0N(REG3[1]));
   OAI2BB2X1M U263 (.Y(n213), 
	.B1(n159), 
	.B0(n365), 
	.A1N(n159), 
	.A0N(REG3[2]));
   OAI2BB2X1M U264 (.Y(n214), 
	.B1(n159), 
	.B0(n366), 
	.A1N(n159), 
	.A0N(REG3[3]));
   OAI2BB2X1M U265 (.Y(n215), 
	.B1(n159), 
	.B0(n362), 
	.A1N(n159), 
	.A0N(REG3[4]));
   OAI2BB2X1M U266 (.Y(n217), 
	.B1(n159), 
	.B0(n360), 
	.A1N(n159), 
	.A0N(REG3[6]));
   OAI2BB2X1M U267 (.Y(n218), 
	.B1(n159), 
	.B0(n359), 
	.A1N(n159), 
	.A0N(REG3[7]));
   OAI2BB2X1M U268 (.Y(n195), 
	.B1(n155), 
	.B0(n363), 
	.A1N(n155), 
	.A0N(REG1[0]));
   OAI2BB2X1M U269 (.Y(n196), 
	.B1(n155), 
	.B0(n364), 
	.A1N(n155), 
	.A0N(REG1[1]));
   OAI2BB2X1M U270 (.Y(n197), 
	.B1(n155), 
	.B0(n365), 
	.A1N(n155), 
	.A0N(REG1[2]));
   OAI2BB2X1M U271 (.Y(n198), 
	.B1(n155), 
	.B0(n366), 
	.A1N(n155), 
	.A0N(REG1[3]));
   OAI2BB2X1M U272 (.Y(n199), 
	.B1(n155), 
	.B0(n362), 
	.A1N(n155), 
	.A0N(REG1[4]));
   OAI2BB2X1M U273 (.Y(n200), 
	.B1(n155), 
	.B0(n361), 
	.A1N(n155), 
	.A0N(REG1[5]));
   OAI2BB2X1M U274 (.Y(n201), 
	.B1(n155), 
	.B0(n360), 
	.A1N(n155), 
	.A0N(REG1[6]));
   OAI2BB2X1M U275 (.Y(n202), 
	.B1(n155), 
	.B0(n359), 
	.A1N(n155), 
	.A0N(REG1[7]));
   OAI2BB2X1M U276 (.Y(n251), 
	.B1(n167), 
	.B0(n363), 
	.A1N(n167), 
	.A0N(\Memory[8][0] ));
   OAI2BB2X1M U277 (.Y(n252), 
	.B1(n167), 
	.B0(n364), 
	.A1N(n167), 
	.A0N(\Memory[8][1] ));
   OAI2BB2X1M U278 (.Y(n253), 
	.B1(n167), 
	.B0(n365), 
	.A1N(n167), 
	.A0N(\Memory[8][2] ));
   OAI2BB2X1M U279 (.Y(n254), 
	.B1(n167), 
	.B0(n366), 
	.A1N(n167), 
	.A0N(\Memory[8][3] ));
   OAI2BB2X1M U280 (.Y(n255), 
	.B1(n167), 
	.B0(n362), 
	.A1N(n167), 
	.A0N(\Memory[8][4] ));
   OAI2BB2X1M U281 (.Y(n256), 
	.B1(n167), 
	.B0(n361), 
	.A1N(n167), 
	.A0N(\Memory[8][5] ));
   OAI2BB2X1M U282 (.Y(n257), 
	.B1(n167), 
	.B0(n360), 
	.A1N(n167), 
	.A0N(\Memory[8][6] ));
   OAI2BB2X1M U283 (.Y(n258), 
	.B1(n167), 
	.B0(n359), 
	.A1N(n167), 
	.A0N(\Memory[8][7] ));
   OAI2BB2X1M U284 (.Y(n259), 
	.B1(n169), 
	.B0(n363), 
	.A1N(n169), 
	.A0N(\Memory[9][0] ));
   OAI2BB2X1M U285 (.Y(n260), 
	.B1(n169), 
	.B0(n364), 
	.A1N(n169), 
	.A0N(\Memory[9][1] ));
   OAI2BB2X1M U286 (.Y(n261), 
	.B1(n169), 
	.B0(n365), 
	.A1N(n169), 
	.A0N(\Memory[9][2] ));
   OAI2BB2X1M U287 (.Y(n262), 
	.B1(n169), 
	.B0(n366), 
	.A1N(n169), 
	.A0N(\Memory[9][3] ));
   OAI2BB2X1M U288 (.Y(n263), 
	.B1(n169), 
	.B0(n362), 
	.A1N(n169), 
	.A0N(\Memory[9][4] ));
   OAI2BB2X1M U289 (.Y(n264), 
	.B1(n169), 
	.B0(n361), 
	.A1N(n169), 
	.A0N(\Memory[9][5] ));
   OAI2BB2X1M U290 (.Y(n265), 
	.B1(n169), 
	.B0(n360), 
	.A1N(n169), 
	.A0N(\Memory[9][6] ));
   OAI2BB2X1M U291 (.Y(n266), 
	.B1(n169), 
	.B0(n359), 
	.A1N(n169), 
	.A0N(\Memory[9][7] ));
   OAI2BB2X1M U292 (.Y(n267), 
	.B1(n171), 
	.B0(n363), 
	.A1N(n171), 
	.A0N(\Memory[10][0] ));
   OAI2BB2X1M U293 (.Y(n268), 
	.B1(n171), 
	.B0(n364), 
	.A1N(n171), 
	.A0N(\Memory[10][1] ));
   OAI2BB2X1M U294 (.Y(n269), 
	.B1(n171), 
	.B0(n365), 
	.A1N(n171), 
	.A0N(\Memory[10][2] ));
   OAI2BB2X1M U295 (.Y(n270), 
	.B1(n171), 
	.B0(n366), 
	.A1N(n171), 
	.A0N(\Memory[10][3] ));
   OAI2BB2X1M U296 (.Y(n271), 
	.B1(n171), 
	.B0(n362), 
	.A1N(n171), 
	.A0N(\Memory[10][4] ));
   OAI2BB2X1M U297 (.Y(n272), 
	.B1(n171), 
	.B0(n361), 
	.A1N(n171), 
	.A0N(\Memory[10][5] ));
   OAI2BB2X1M U298 (.Y(n273), 
	.B1(n171), 
	.B0(n360), 
	.A1N(n171), 
	.A0N(\Memory[10][6] ));
   OAI2BB2X1M U299 (.Y(n274), 
	.B1(n171), 
	.B0(n359), 
	.A1N(n171), 
	.A0N(\Memory[10][7] ));
   OAI2BB2X1M U300 (.Y(n275), 
	.B1(n172), 
	.B0(n363), 
	.A1N(n172), 
	.A0N(\Memory[11][0] ));
   OAI2BB2X1M U301 (.Y(n276), 
	.B1(n172), 
	.B0(n364), 
	.A1N(n172), 
	.A0N(\Memory[11][1] ));
   OAI2BB2X1M U302 (.Y(n277), 
	.B1(n172), 
	.B0(n365), 
	.A1N(n172), 
	.A0N(\Memory[11][2] ));
   OAI2BB2X1M U303 (.Y(n278), 
	.B1(n172), 
	.B0(n366), 
	.A1N(n172), 
	.A0N(\Memory[11][3] ));
   OAI2BB2X1M U304 (.Y(n279), 
	.B1(n172), 
	.B0(n362), 
	.A1N(n172), 
	.A0N(\Memory[11][4] ));
   OAI2BB2X1M U305 (.Y(n280), 
	.B1(n172), 
	.B0(n361), 
	.A1N(n172), 
	.A0N(\Memory[11][5] ));
   OAI2BB2X1M U306 (.Y(n281), 
	.B1(n172), 
	.B0(n360), 
	.A1N(n172), 
	.A0N(\Memory[11][6] ));
   OAI2BB2X1M U307 (.Y(n282), 
	.B1(n172), 
	.B0(n359), 
	.A1N(n172), 
	.A0N(\Memory[11][7] ));
   OAI2BB2X1M U308 (.Y(n203), 
	.B1(n157), 
	.B0(n363), 
	.A1N(n157), 
	.A0N(REG2[0]));
   OAI2BB2X1M U309 (.Y(n210), 
	.B1(n157), 
	.B0(n359), 
	.A1N(n157), 
	.A0N(REG2[7]));
   OAI2BB2X1M U310 (.Y(n216), 
	.B1(n159), 
	.B0(n361), 
	.A1N(n159), 
	.A0N(REG3[5]));
   OAI2BB2X1M U311 (.Y(n283), 
	.B1(n173), 
	.B0(n363), 
	.A1N(n173), 
	.A0N(\Memory[12][0] ));
   OAI2BB2X1M U312 (.Y(n284), 
	.B1(n173), 
	.B0(n364), 
	.A1N(n173), 
	.A0N(\Memory[12][1] ));
   OAI2BB2X1M U313 (.Y(n285), 
	.B1(n173), 
	.B0(n365), 
	.A1N(n173), 
	.A0N(\Memory[12][2] ));
   OAI2BB2X1M U314 (.Y(n286), 
	.B1(n173), 
	.B0(n366), 
	.A1N(n173), 
	.A0N(\Memory[12][3] ));
   OAI2BB2X1M U315 (.Y(n287), 
	.B1(n173), 
	.B0(n362), 
	.A1N(n173), 
	.A0N(\Memory[12][4] ));
   OAI2BB2X1M U316 (.Y(n288), 
	.B1(n173), 
	.B0(n361), 
	.A1N(n173), 
	.A0N(\Memory[12][5] ));
   OAI2BB2X1M U317 (.Y(n289), 
	.B1(n173), 
	.B0(n360), 
	.A1N(n173), 
	.A0N(\Memory[12][6] ));
   OAI2BB2X1M U318 (.Y(n290), 
	.B1(n173), 
	.B0(n359), 
	.A1N(n173), 
	.A0N(\Memory[12][7] ));
   OAI2BB2X1M U319 (.Y(n291), 
	.B1(n174), 
	.B0(n363), 
	.A1N(n174), 
	.A0N(\Memory[13][0] ));
   OAI2BB2X1M U320 (.Y(n292), 
	.B1(n174), 
	.B0(n364), 
	.A1N(n174), 
	.A0N(\Memory[13][1] ));
   OAI2BB2X1M U321 (.Y(n293), 
	.B1(n174), 
	.B0(n365), 
	.A1N(n174), 
	.A0N(\Memory[13][2] ));
   OAI2BB2X1M U322 (.Y(n294), 
	.B1(n174), 
	.B0(n366), 
	.A1N(n174), 
	.A0N(\Memory[13][3] ));
   OAI2BB2X1M U323 (.Y(n295), 
	.B1(n174), 
	.B0(n362), 
	.A1N(n174), 
	.A0N(\Memory[13][4] ));
   OAI2BB2X1M U324 (.Y(n296), 
	.B1(n174), 
	.B0(n361), 
	.A1N(n174), 
	.A0N(\Memory[13][5] ));
   OAI2BB2X1M U325 (.Y(n297), 
	.B1(n174), 
	.B0(n360), 
	.A1N(n174), 
	.A0N(\Memory[13][6] ));
   OAI2BB2X1M U326 (.Y(n298), 
	.B1(n174), 
	.B0(n359), 
	.A1N(n174), 
	.A0N(\Memory[13][7] ));
   OAI2BB2X1M U327 (.Y(n299), 
	.B1(n175), 
	.B0(n363), 
	.A1N(n175), 
	.A0N(\Memory[14][0] ));
   OAI2BB2X1M U328 (.Y(n300), 
	.B1(n175), 
	.B0(n364), 
	.A1N(n175), 
	.A0N(\Memory[14][1] ));
   OAI2BB2X1M U329 (.Y(n301), 
	.B1(n175), 
	.B0(n365), 
	.A1N(n175), 
	.A0N(\Memory[14][2] ));
   OAI2BB2X1M U330 (.Y(n302), 
	.B1(n175), 
	.B0(n366), 
	.A1N(n175), 
	.A0N(\Memory[14][3] ));
   OAI2BB2X1M U331 (.Y(n303), 
	.B1(n175), 
	.B0(n362), 
	.A1N(n175), 
	.A0N(\Memory[14][4] ));
   OAI2BB2X1M U332 (.Y(n304), 
	.B1(n175), 
	.B0(n361), 
	.A1N(n175), 
	.A0N(\Memory[14][5] ));
   OAI2BB2X1M U333 (.Y(n305), 
	.B1(n175), 
	.B0(n360), 
	.A1N(n175), 
	.A0N(\Memory[14][6] ));
   OAI2BB2X1M U334 (.Y(n306), 
	.B1(n175), 
	.B0(n359), 
	.A1N(n175), 
	.A0N(\Memory[14][7] ));
   OAI2BB2X1M U335 (.Y(n307), 
	.B1(n177), 
	.B0(n363), 
	.A1N(n177), 
	.A0N(\Memory[15][0] ));
   OAI2BB2X1M U336 (.Y(n308), 
	.B1(n177), 
	.B0(n364), 
	.A1N(n177), 
	.A0N(\Memory[15][1] ));
   OAI2BB2X1M U337 (.Y(n309), 
	.B1(n177), 
	.B0(n365), 
	.A1N(n177), 
	.A0N(\Memory[15][2] ));
   OAI2BB2X1M U338 (.Y(n310), 
	.B1(n177), 
	.B0(n366), 
	.A1N(n177), 
	.A0N(\Memory[15][3] ));
   OAI2BB2X1M U339 (.Y(n311), 
	.B1(n177), 
	.B0(n362), 
	.A1N(n177), 
	.A0N(\Memory[15][4] ));
   OAI2BB2X1M U340 (.Y(n312), 
	.B1(n177), 
	.B0(n361), 
	.A1N(n177), 
	.A0N(\Memory[15][5] ));
   OAI2BB2X1M U341 (.Y(n313), 
	.B1(n177), 
	.B0(n360), 
	.A1N(n177), 
	.A0N(\Memory[15][6] ));
   OAI2BB2X1M U342 (.Y(n314), 
	.B1(n177), 
	.B0(n359), 
	.A1N(n177), 
	.A0N(\Memory[15][7] ));
   OAI2BB2X1M U343 (.Y(n219), 
	.B1(n160), 
	.B0(n363), 
	.A1N(n160), 
	.A0N(\Memory[4][0] ));
   OAI2BB2X1M U344 (.Y(n220), 
	.B1(n160), 
	.B0(n364), 
	.A1N(n160), 
	.A0N(\Memory[4][1] ));
   OAI2BB2X1M U345 (.Y(n221), 
	.B1(n160), 
	.B0(n365), 
	.A1N(n160), 
	.A0N(\Memory[4][2] ));
   OAI2BB2X1M U346 (.Y(n222), 
	.B1(n160), 
	.B0(n366), 
	.A1N(n160), 
	.A0N(\Memory[4][3] ));
   OAI2BB2X1M U347 (.Y(n223), 
	.B1(n160), 
	.B0(n362), 
	.A1N(n160), 
	.A0N(\Memory[4][4] ));
   OAI2BB2X1M U348 (.Y(n224), 
	.B1(n160), 
	.B0(n361), 
	.A1N(n160), 
	.A0N(\Memory[4][5] ));
   OAI2BB2X1M U349 (.Y(n225), 
	.B1(n160), 
	.B0(n360), 
	.A1N(n160), 
	.A0N(\Memory[4][6] ));
   OAI2BB2X1M U350 (.Y(n226), 
	.B1(n160), 
	.B0(n359), 
	.A1N(n160), 
	.A0N(\Memory[4][7] ));
   OAI2BB2X1M U351 (.Y(n227), 
	.B1(n162), 
	.B0(n363), 
	.A1N(n162), 
	.A0N(\Memory[5][0] ));
   OAI2BB2X1M U352 (.Y(n228), 
	.B1(n162), 
	.B0(n364), 
	.A1N(n162), 
	.A0N(\Memory[5][1] ));
   OAI2BB2X1M U353 (.Y(n229), 
	.B1(n162), 
	.B0(n365), 
	.A1N(n162), 
	.A0N(\Memory[5][2] ));
   OAI2BB2X1M U354 (.Y(n230), 
	.B1(n162), 
	.B0(n366), 
	.A1N(n162), 
	.A0N(n379));
   OAI2BB2X1M U355 (.Y(n231), 
	.B1(n162), 
	.B0(n362), 
	.A1N(n162), 
	.A0N(\Memory[5][4] ));
   OAI2BB2X1M U356 (.Y(n232), 
	.B1(n162), 
	.B0(n361), 
	.A1N(n162), 
	.A0N(\Memory[5][5] ));
   OAI2BB2X1M U357 (.Y(n233), 
	.B1(n162), 
	.B0(n360), 
	.A1N(n162), 
	.A0N(\Memory[5][6] ));
   OAI2BB2X1M U358 (.Y(n234), 
	.B1(n162), 
	.B0(n359), 
	.A1N(n162), 
	.A0N(\Memory[5][7] ));
   OAI2BB2X1M U359 (.Y(n235), 
	.B1(n163), 
	.B0(n363), 
	.A1N(n163), 
	.A0N(\Memory[6][0] ));
   OAI2BB2X1M U360 (.Y(n236), 
	.B1(n163), 
	.B0(n364), 
	.A1N(n163), 
	.A0N(\Memory[6][1] ));
   OAI2BB2X1M U361 (.Y(n237), 
	.B1(n163), 
	.B0(n365), 
	.A1N(n163), 
	.A0N(\Memory[6][2] ));
   OAI2BB2X1M U362 (.Y(n238), 
	.B1(n163), 
	.B0(n366), 
	.A1N(n163), 
	.A0N(\Memory[6][3] ));
   OAI2BB2X1M U363 (.Y(n239), 
	.B1(n163), 
	.B0(n362), 
	.A1N(n163), 
	.A0N(\Memory[6][4] ));
   OAI2BB2X1M U364 (.Y(n240), 
	.B1(n163), 
	.B0(n361), 
	.A1N(n163), 
	.A0N(\Memory[6][5] ));
   OAI2BB2X1M U365 (.Y(n241), 
	.B1(n163), 
	.B0(n360), 
	.A1N(n163), 
	.A0N(\Memory[6][6] ));
   OAI2BB2X1M U366 (.Y(n242), 
	.B1(n163), 
	.B0(n359), 
	.A1N(n163), 
	.A0N(\Memory[6][7] ));
   OAI2BB2X1M U367 (.Y(n243), 
	.B1(n166), 
	.B0(n363), 
	.A1N(n166), 
	.A0N(\Memory[7][0] ));
   OAI2BB2X1M U368 (.Y(n244), 
	.B1(n166), 
	.B0(n364), 
	.A1N(n166), 
	.A0N(\Memory[7][1] ));
   OAI2BB2X1M U369 (.Y(n245), 
	.B1(n166), 
	.B0(n365), 
	.A1N(n166), 
	.A0N(\Memory[7][2] ));
   OAI2BB2X1M U370 (.Y(n246), 
	.B1(n166), 
	.B0(n366), 
	.A1N(n166), 
	.A0N(\Memory[7][3] ));
   OAI2BB2X1M U371 (.Y(n247), 
	.B1(n166), 
	.B0(n362), 
	.A1N(n166), 
	.A0N(\Memory[7][4] ));
   OAI2BB2X1M U372 (.Y(n248), 
	.B1(n166), 
	.B0(n361), 
	.A1N(n166), 
	.A0N(\Memory[7][5] ));
   OAI2BB2X1M U373 (.Y(n249), 
	.B1(n166), 
	.B0(n360), 
	.A1N(n166), 
	.A0N(\Memory[7][6] ));
   OAI2BB2X1M U374 (.Y(n250), 
	.B1(n166), 
	.B0(n359), 
	.A1N(n166), 
	.A0N(\Memory[7][7] ));
   INVX2M U375 (.Y(n341), 
	.A(N12));
   AO21XLM U376 (.Y(n178), 
	.B0(n357), 
	.A1(n150), 
	.A0(RdData_Valid));
   INVXLM U384 (.Y(n378), 
	.A(\Memory[5][3] ));
   INVXLM U385 (.Y(n379), 
	.A(n378));
   SDFFRHQX8M \RdData_reg[4]  (.SI(RdData[3]), 
	.SE(FE_OFN19_SE), 
	.RN(FE_OFN7_SYNC_RST_REF_scan), 
	.Q(RdData[4]), 
	.D(n183), 
	.CK(FE_OFN2_REF_CLK_scan));
   SDFFRHQX8M \Memory_reg[5][3]  (.SI(\Memory[5][2] ), 
	.SE(FE_OFN18_SE), 
	.RN(FE_OFN6_SYNC_RST_REF_scan), 
	.Q(\Memory[5][3] ), 
	.D(n230), 
	.CK(CLK));
   BUFX2M U3 (.Y(n377), 
	.A(RdData[4]));
endmodule

module ALU_16B_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;

   // Internal wires
   wire \u_div/SumTmp[1][0] ;
   wire \u_div/SumTmp[1][1] ;
   wire \u_div/SumTmp[1][2] ;
   wire \u_div/SumTmp[1][3] ;
   wire \u_div/SumTmp[1][4] ;
   wire \u_div/SumTmp[1][5] ;
   wire \u_div/SumTmp[1][6] ;
   wire \u_div/SumTmp[2][0] ;
   wire \u_div/SumTmp[2][1] ;
   wire \u_div/SumTmp[2][2] ;
   wire \u_div/SumTmp[2][3] ;
   wire \u_div/SumTmp[2][4] ;
   wire \u_div/SumTmp[2][5] ;
   wire \u_div/SumTmp[3][0] ;
   wire \u_div/SumTmp[3][1] ;
   wire \u_div/SumTmp[3][2] ;
   wire \u_div/SumTmp[3][3] ;
   wire \u_div/SumTmp[3][4] ;
   wire \u_div/SumTmp[4][0] ;
   wire \u_div/SumTmp[4][1] ;
   wire \u_div/SumTmp[4][2] ;
   wire \u_div/SumTmp[4][3] ;
   wire \u_div/SumTmp[5][0] ;
   wire \u_div/SumTmp[5][1] ;
   wire \u_div/SumTmp[5][2] ;
   wire \u_div/SumTmp[6][0] ;
   wire \u_div/SumTmp[6][1] ;
   wire \u_div/SumTmp[7][0] ;
   wire \u_div/CryTmp[0][1] ;
   wire \u_div/CryTmp[0][2] ;
   wire \u_div/CryTmp[0][3] ;
   wire \u_div/CryTmp[0][4] ;
   wire \u_div/CryTmp[0][5] ;
   wire \u_div/CryTmp[0][6] ;
   wire \u_div/CryTmp[0][7] ;
   wire \u_div/CryTmp[1][1] ;
   wire \u_div/CryTmp[1][2] ;
   wire \u_div/CryTmp[1][3] ;
   wire \u_div/CryTmp[1][4] ;
   wire \u_div/CryTmp[1][5] ;
   wire \u_div/CryTmp[1][6] ;
   wire \u_div/CryTmp[1][7] ;
   wire \u_div/CryTmp[2][1] ;
   wire \u_div/CryTmp[2][2] ;
   wire \u_div/CryTmp[2][3] ;
   wire \u_div/CryTmp[2][4] ;
   wire \u_div/CryTmp[2][5] ;
   wire \u_div/CryTmp[2][6] ;
   wire \u_div/CryTmp[3][1] ;
   wire \u_div/CryTmp[3][2] ;
   wire \u_div/CryTmp[3][3] ;
   wire \u_div/CryTmp[3][4] ;
   wire \u_div/CryTmp[3][5] ;
   wire \u_div/CryTmp[4][1] ;
   wire \u_div/CryTmp[4][2] ;
   wire \u_div/CryTmp[4][3] ;
   wire \u_div/CryTmp[4][4] ;
   wire \u_div/CryTmp[5][1] ;
   wire \u_div/CryTmp[5][2] ;
   wire \u_div/CryTmp[5][3] ;
   wire \u_div/CryTmp[6][1] ;
   wire \u_div/CryTmp[6][2] ;
   wire \u_div/CryTmp[7][1] ;
   wire \u_div/PartRem[1][1] ;
   wire \u_div/PartRem[1][2] ;
   wire \u_div/PartRem[1][3] ;
   wire \u_div/PartRem[1][4] ;
   wire \u_div/PartRem[1][5] ;
   wire \u_div/PartRem[1][6] ;
   wire \u_div/PartRem[1][7] ;
   wire \u_div/PartRem[2][1] ;
   wire \u_div/PartRem[2][2] ;
   wire \u_div/PartRem[2][3] ;
   wire \u_div/PartRem[2][4] ;
   wire \u_div/PartRem[2][5] ;
   wire \u_div/PartRem[2][6] ;
   wire \u_div/PartRem[3][1] ;
   wire \u_div/PartRem[3][2] ;
   wire \u_div/PartRem[3][3] ;
   wire \u_div/PartRem[3][4] ;
   wire \u_div/PartRem[3][5] ;
   wire \u_div/PartRem[4][1] ;
   wire \u_div/PartRem[4][2] ;
   wire \u_div/PartRem[4][3] ;
   wire \u_div/PartRem[4][4] ;
   wire \u_div/PartRem[5][1] ;
   wire \u_div/PartRem[5][2] ;
   wire \u_div/PartRem[5][3] ;
   wire \u_div/PartRem[6][1] ;
   wire \u_div/PartRem[6][2] ;
   wire \u_div/PartRem[7][1] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;

   ADDFX2M \u_div/u_fa_PartRem_0_2_5  (.S(\u_div/SumTmp[2][5] ), 
	.CO(\u_div/CryTmp[2][6] ), 
	.CI(\u_div/CryTmp[2][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[3][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_3  (.S(\u_div/SumTmp[4][3] ), 
	.CO(\u_div/CryTmp[4][4] ), 
	.CI(\u_div/CryTmp[4][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[5][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_2  (.S(\u_div/SumTmp[5][2] ), 
	.CO(\u_div/CryTmp[5][3] ), 
	.CI(\u_div/CryTmp[5][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[6][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_6_1  (.S(\u_div/SumTmp[6][1] ), 
	.CO(\u_div/CryTmp[6][2] ), 
	.CI(\u_div/CryTmp[6][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[7][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_4  (.S(\u_div/SumTmp[3][4] ), 
	.CO(\u_div/CryTmp[3][5] ), 
	.CI(\u_div/CryTmp[3][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[4][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_5  (.CO(\u_div/CryTmp[0][6] ), 
	.CI(\u_div/CryTmp[0][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[1][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_6  (.CO(\u_div/CryTmp[0][7] ), 
	.CI(\u_div/CryTmp[0][6] ), 
	.B(n12), 
	.A(\u_div/PartRem[1][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_7  (.CO(quotient[0]), 
	.CI(\u_div/CryTmp[0][7] ), 
	.B(n11), 
	.A(\u_div/PartRem[1][7] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_1  (.CO(\u_div/CryTmp[0][2] ), 
	.CI(\u_div/CryTmp[0][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[1][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_1  (.S(\u_div/SumTmp[1][1] ), 
	.CO(\u_div/CryTmp[1][2] ), 
	.CI(\u_div/CryTmp[1][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[2][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_1  (.S(\u_div/SumTmp[2][1] ), 
	.CO(\u_div/CryTmp[2][2] ), 
	.CI(\u_div/CryTmp[2][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[3][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_1  (.S(\u_div/SumTmp[3][1] ), 
	.CO(\u_div/CryTmp[3][2] ), 
	.CI(\u_div/CryTmp[3][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[4][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_1  (.S(\u_div/SumTmp[4][1] ), 
	.CO(\u_div/CryTmp[4][2] ), 
	.CI(\u_div/CryTmp[4][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[5][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_1  (.S(\u_div/SumTmp[5][1] ), 
	.CO(\u_div/CryTmp[5][2] ), 
	.CI(\u_div/CryTmp[5][1] ), 
	.B(n17), 
	.A(\u_div/PartRem[6][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_2  (.CO(\u_div/CryTmp[0][3] ), 
	.CI(\u_div/CryTmp[0][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[1][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_3  (.CO(\u_div/CryTmp[0][4] ), 
	.CI(\u_div/CryTmp[0][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[1][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_4  (.CO(\u_div/CryTmp[0][5] ), 
	.CI(\u_div/CryTmp[0][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[1][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_5  (.S(\u_div/SumTmp[1][5] ), 
	.CO(\u_div/CryTmp[1][6] ), 
	.CI(\u_div/CryTmp[1][5] ), 
	.B(n13), 
	.A(\u_div/PartRem[2][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_4  (.S(\u_div/SumTmp[1][4] ), 
	.CO(\u_div/CryTmp[1][5] ), 
	.CI(\u_div/CryTmp[1][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[2][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_3  (.S(\u_div/SumTmp[1][3] ), 
	.CO(\u_div/CryTmp[1][4] ), 
	.CI(\u_div/CryTmp[1][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[2][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_4  (.S(\u_div/SumTmp[2][4] ), 
	.CO(\u_div/CryTmp[2][5] ), 
	.CI(\u_div/CryTmp[2][4] ), 
	.B(n14), 
	.A(\u_div/PartRem[3][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_2  (.S(\u_div/SumTmp[1][2] ), 
	.CO(\u_div/CryTmp[1][3] ), 
	.CI(\u_div/CryTmp[1][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[2][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_3  (.S(\u_div/SumTmp[2][3] ), 
	.CO(\u_div/CryTmp[2][4] ), 
	.CI(\u_div/CryTmp[2][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[3][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_2  (.S(\u_div/SumTmp[2][2] ), 
	.CO(\u_div/CryTmp[2][3] ), 
	.CI(\u_div/CryTmp[2][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[3][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_3  (.S(\u_div/SumTmp[3][3] ), 
	.CO(\u_div/CryTmp[3][4] ), 
	.CI(\u_div/CryTmp[3][3] ), 
	.B(n15), 
	.A(\u_div/PartRem[4][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_2  (.S(\u_div/SumTmp[3][2] ), 
	.CO(\u_div/CryTmp[3][3] ), 
	.CI(\u_div/CryTmp[3][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[4][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_2  (.S(\u_div/SumTmp[4][2] ), 
	.CO(\u_div/CryTmp[4][3] ), 
	.CI(\u_div/CryTmp[4][2] ), 
	.B(n16), 
	.A(\u_div/PartRem[5][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_6  (.S(\u_div/SumTmp[1][6] ), 
	.CO(\u_div/CryTmp[1][7] ), 
	.CI(\u_div/CryTmp[1][6] ), 
	.B(n12), 
	.A(\u_div/PartRem[2][6] ));
   INVX2M U1 (.Y(n18), 
	.A(b[0]));
   XNOR2X2M U2 (.Y(\u_div/SumTmp[7][0] ), 
	.B(a[7]), 
	.A(n18));
   XNOR2X2M U3 (.Y(\u_div/SumTmp[6][0] ), 
	.B(a[6]), 
	.A(n18));
   XNOR2X2M U4 (.Y(\u_div/SumTmp[5][0] ), 
	.B(a[5]), 
	.A(n18));
   XNOR2X2M U5 (.Y(\u_div/SumTmp[4][0] ), 
	.B(a[4]), 
	.A(n18));
   XNOR2X2M U6 (.Y(\u_div/SumTmp[3][0] ), 
	.B(a[3]), 
	.A(n18));
   XNOR2X2M U7 (.Y(\u_div/SumTmp[2][0] ), 
	.B(a[2]), 
	.A(n18));
   OR2X2M U8 (.Y(\u_div/CryTmp[7][1] ), 
	.B(a[7]), 
	.A(n18));
   XNOR2X2M U9 (.Y(\u_div/SumTmp[1][0] ), 
	.B(a[1]), 
	.A(n18));
   NAND2X2M U10 (.Y(\u_div/CryTmp[5][1] ), 
	.B(n3), 
	.A(n2));
   INVX2M U11 (.Y(n3), 
	.A(a[5]));
   INVX2M U12 (.Y(n2), 
	.A(n18));
   NAND2X2M U13 (.Y(\u_div/CryTmp[4][1] ), 
	.B(n5), 
	.A(n4));
   INVX2M U14 (.Y(n5), 
	.A(a[4]));
   INVX2M U15 (.Y(n4), 
	.A(n18));
   NAND2X2M U16 (.Y(\u_div/CryTmp[3][1] ), 
	.B(n7), 
	.A(n6));
   INVX2M U17 (.Y(n7), 
	.A(a[3]));
   INVX2M U18 (.Y(n6), 
	.A(n18));
   NAND2X2M U19 (.Y(\u_div/CryTmp[2][1] ), 
	.B(n8), 
	.A(n2));
   INVX2M U20 (.Y(n8), 
	.A(a[2]));
   NAND2X2M U21 (.Y(\u_div/CryTmp[1][1] ), 
	.B(n9), 
	.A(n6));
   INVX2M U22 (.Y(n9), 
	.A(a[1]));
   NAND2X2M U23 (.Y(\u_div/CryTmp[0][1] ), 
	.B(n10), 
	.A(n4));
   INVX2M U24 (.Y(n10), 
	.A(a[0]));
   NAND2X2M U25 (.Y(\u_div/CryTmp[6][1] ), 
	.B(n1), 
	.A(n2));
   INVX2M U26 (.Y(n1), 
	.A(a[6]));
   INVX2M U27 (.Y(n12), 
	.A(b[6]));
   INVX2M U28 (.Y(n17), 
	.A(b[1]));
   INVX2M U29 (.Y(n16), 
	.A(b[2]));
   INVX2M U30 (.Y(n15), 
	.A(b[3]));
   INVX2M U31 (.Y(n14), 
	.A(b[4]));
   INVX2M U32 (.Y(n13), 
	.A(b[5]));
   INVX2M U33 (.Y(n11), 
	.A(b[7]));
   CLKMX2X2M U34 (.Y(\u_div/PartRem[1][7] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][6] ), 
	.A(\u_div/PartRem[2][6] ));
   CLKMX2X2M U35 (.Y(\u_div/PartRem[2][6] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][5] ), 
	.A(\u_div/PartRem[3][5] ));
   CLKMX2X2M U36 (.Y(\u_div/PartRem[3][5] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][4] ), 
	.A(\u_div/PartRem[4][4] ));
   CLKMX2X2M U37 (.Y(\u_div/PartRem[4][4] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][3] ), 
	.A(\u_div/PartRem[5][3] ));
   CLKMX2X2M U38 (.Y(\u_div/PartRem[5][3] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][2] ), 
	.A(\u_div/PartRem[6][2] ));
   CLKMX2X2M U39 (.Y(\u_div/PartRem[6][2] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][1] ), 
	.A(\u_div/PartRem[7][1] ));
   CLKMX2X2M U40 (.Y(\u_div/PartRem[7][1] ), 
	.S0(quotient[7]), 
	.B(\u_div/SumTmp[7][0] ), 
	.A(a[7]));
   CLKMX2X2M U41 (.Y(\u_div/PartRem[1][6] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][5] ), 
	.A(\u_div/PartRem[2][5] ));
   CLKMX2X2M U42 (.Y(\u_div/PartRem[2][5] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(\u_div/PartRem[3][4] ));
   CLKMX2X2M U43 (.Y(\u_div/PartRem[3][4] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][3] ), 
	.A(\u_div/PartRem[4][3] ));
   CLKMX2X2M U44 (.Y(\u_div/PartRem[4][3] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(\u_div/PartRem[5][2] ));
   CLKMX2X2M U45 (.Y(\u_div/PartRem[5][2] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][1] ), 
	.A(\u_div/PartRem[6][1] ));
   CLKMX2X2M U46 (.Y(\u_div/PartRem[6][1] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][0] ), 
	.A(a[6]));
   CLKMX2X2M U47 (.Y(\u_div/PartRem[1][5] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][4] ), 
	.A(\u_div/PartRem[2][4] ));
   CLKMX2X2M U48 (.Y(\u_div/PartRem[2][4] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(\u_div/PartRem[3][3] ));
   CLKMX2X2M U49 (.Y(\u_div/PartRem[3][3] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][2] ), 
	.A(\u_div/PartRem[4][2] ));
   CLKMX2X2M U50 (.Y(\u_div/PartRem[4][2] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][1] ), 
	.A(\u_div/PartRem[5][1] ));
   CLKMX2X2M U51 (.Y(\u_div/PartRem[5][1] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][0] ), 
	.A(a[5]));
   CLKMX2X2M U52 (.Y(\u_div/PartRem[1][4] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][3] ), 
	.A(\u_div/PartRem[2][3] ));
   CLKMX2X2M U53 (.Y(\u_div/PartRem[2][3] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][2] ), 
	.A(\u_div/PartRem[3][2] ));
   CLKMX2X2M U54 (.Y(\u_div/PartRem[3][2] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][1] ), 
	.A(\u_div/PartRem[4][1] ));
   CLKMX2X2M U55 (.Y(\u_div/PartRem[4][1] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][0] ), 
	.A(a[4]));
   CLKMX2X2M U56 (.Y(\u_div/PartRem[1][3] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][2] ), 
	.A(\u_div/PartRem[2][2] ));
   CLKMX2X2M U57 (.Y(\u_div/PartRem[2][2] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][1] ), 
	.A(\u_div/PartRem[3][1] ));
   CLKMX2X2M U58 (.Y(\u_div/PartRem[3][1] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][0] ), 
	.A(a[3]));
   CLKMX2X2M U59 (.Y(\u_div/PartRem[1][2] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][1] ), 
	.A(\u_div/PartRem[2][1] ));
   CLKMX2X2M U60 (.Y(\u_div/PartRem[2][1] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][0] ), 
	.A(a[2]));
   CLKMX2X2M U61 (.Y(\u_div/PartRem[1][1] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][0] ), 
	.A(a[1]));
   AND4X1M U62 (.Y(quotient[7]), 
	.D(n16), 
	.C(n17), 
	.B(n19), 
	.A(\u_div/CryTmp[7][1] ));
   AND3X1M U63 (.Y(quotient[6]), 
	.C(\u_div/CryTmp[6][2] ), 
	.B(n16), 
	.A(n19));
   AND2X1M U64 (.Y(quotient[5]), 
	.B(n19), 
	.A(\u_div/CryTmp[5][3] ));
   AND2X1M U65 (.Y(n19), 
	.B(n15), 
	.A(n20));
   AND2X1M U66 (.Y(quotient[4]), 
	.B(n20), 
	.A(\u_div/CryTmp[4][4] ));
   AND3X1M U67 (.Y(n20), 
	.C(n13), 
	.B(n14), 
	.A(n21));
   AND3X1M U68 (.Y(quotient[3]), 
	.C(\u_div/CryTmp[3][5] ), 
	.B(n13), 
	.A(n21));
   AND2X1M U69 (.Y(quotient[2]), 
	.B(n21), 
	.A(\u_div/CryTmp[2][6] ));
   NOR2X1M U70 (.Y(n21), 
	.B(b[7]), 
	.A(b[6]));
   AND2X1M U71 (.Y(quotient[1]), 
	.B(n11), 
	.A(\u_div/CryTmp[1][7] ));
endmodule

module ALU_16B_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire [9:0] carry;

   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n2), 
	.A(A[7]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n8), 
	.A(A[1]));
   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n4), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n5), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n6), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n7), 
	.A(A[2]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n3), 
	.A(A[6]));
   XNOR2X2M U1 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n9));
   INVX2M U2 (.Y(n3), 
	.A(B[6]));
   INVX2M U3 (.Y(n9), 
	.A(B[0]));
   INVX2M U4 (.Y(n7), 
	.A(B[2]));
   INVX2M U5 (.Y(n6), 
	.A(B[3]));
   INVX2M U6 (.Y(n5), 
	.A(B[4]));
   INVX2M U7 (.Y(n4), 
	.A(B[5]));
   NAND2X2M U8 (.Y(carry[1]), 
	.B(n1), 
	.A(B[0]));
   INVX2M U9 (.Y(n8), 
	.A(B[1]));
   INVX2M U10 (.Y(n1), 
	.A(A[0]));
   INVX2M U11 (.Y(n2), 
	.A(B[7]));
   CLKINVX1M U12 (.Y(DIFF[8]), 
	.A(carry[8]));
endmodule

module ALU_16B_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [8:1] carry;

   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module ALU_16B_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;

   AOI21BX2M U2 (.Y(n1), 
	.B0N(n19), 
	.A1(A[12]), 
	.A0(n18));
   NAND2X2M U3 (.Y(n15), 
	.B(B[7]), 
	.A(A[7]));
   XNOR2X2M U4 (.Y(SUM[7]), 
	.B(n8), 
	.A(A[7]));
   INVX2M U5 (.Y(n8), 
	.A(B[7]));
   XNOR2X2M U6 (.Y(SUM[13]), 
	.B(n1), 
	.A(B[13]));
   INVX2M U7 (.Y(n9), 
	.A(A[6]));
   INVX2M U8 (.Y(SUM[6]), 
	.A(n9));
   BUFX2M U9 (.Y(SUM[0]), 
	.A(A[0]));
   BUFX2M U10 (.Y(SUM[1]), 
	.A(A[1]));
   BUFX2M U11 (.Y(SUM[2]), 
	.A(A[2]));
   BUFX2M U12 (.Y(SUM[3]), 
	.A(A[3]));
   BUFX2M U13 (.Y(SUM[4]), 
	.A(A[4]));
   BUFX2M U14 (.Y(SUM[5]), 
	.A(A[5]));
   XNOR2X1M U15 (.Y(SUM[9]), 
	.B(n11), 
	.A(n10));
   NOR2X1M U16 (.Y(n11), 
	.B(n13), 
	.A(n12));
   CLKXOR2X2M U17 (.Y(SUM[8]), 
	.B(n15), 
	.A(n14));
   NAND2BX1M U18 (.Y(n14), 
	.B(n17), 
	.AN(n16));
   OAI21X1M U19 (.Y(n19), 
	.B0(B[12]), 
	.A1(n18), 
	.A0(A[12]));
   XOR3XLM U20 (.Y(SUM[12]), 
	.C(n18), 
	.B(A[12]), 
	.A(B[12]));
   OAI21BX1M U21 (.Y(n18), 
	.B0N(n22), 
	.A1(n21), 
	.A0(n20));
   XNOR2X1M U22 (.Y(SUM[11]), 
	.B(n23), 
	.A(n21));
   NOR2X1M U23 (.Y(n23), 
	.B(n20), 
	.A(n22));
   NOR2X1M U24 (.Y(n20), 
	.B(A[11]), 
	.A(B[11]));
   AND2X1M U25 (.Y(n22), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U26 (.Y(n21), 
	.B0(n26), 
	.A1(n25), 
	.A0(n24));
   CLKXOR2X2M U27 (.Y(SUM[10]), 
	.B(n25), 
	.A(n27));
   AOI2BB1X1M U28 (.Y(n25), 
	.B0(n12), 
	.A1N(n13), 
	.A0N(n10));
   AND2X1M U29 (.Y(n12), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X1M U30 (.Y(n13), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U31 (.Y(n10), 
	.B0(n17), 
	.A1(n16), 
	.A0(n15));
   CLKNAND2X2M U32 (.Y(n17), 
	.B(A[8]), 
	.A(B[8]));
   NOR2X1M U33 (.Y(n16), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U34 (.Y(n27), 
	.B(n26), 
	.AN(n24));
   CLKNAND2X2M U35 (.Y(n26), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X1M U36 (.Y(n24), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module ALU_16B_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;

   // Internal wires
   wire \ab[7][7] ;
   wire \ab[7][6] ;
   wire \ab[7][5] ;
   wire \ab[7][4] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][7] ;
   wire \ab[6][6] ;
   wire \ab[6][5] ;
   wire \ab[6][4] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][7] ;
   wire \ab[5][6] ;
   wire \ab[5][5] ;
   wire \ab[5][4] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][7] ;
   wire \ab[4][6] ;
   wire \ab[4][5] ;
   wire \ab[4][4] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][7] ;
   wire \ab[3][6] ;
   wire \ab[3][5] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][7] ;
   wire \ab[2][6] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][7] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[1][0] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \ab[0][1] ;
   wire \CARRYB[7][6] ;
   wire \CARRYB[7][5] ;
   wire \CARRYB[7][4] ;
   wire \CARRYB[7][3] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[7][0] ;
   wire \CARRYB[6][6] ;
   wire \CARRYB[6][5] ;
   wire \CARRYB[6][4] ;
   wire \CARRYB[6][3] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][6] ;
   wire \CARRYB[5][5] ;
   wire \CARRYB[5][4] ;
   wire \CARRYB[5][3] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][6] ;
   wire \CARRYB[4][5] ;
   wire \CARRYB[4][4] ;
   wire \CARRYB[4][3] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][6] ;
   wire \CARRYB[3][5] ;
   wire \CARRYB[3][4] ;
   wire \CARRYB[3][3] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][6] ;
   wire \CARRYB[2][5] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][3] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \SUMB[7][6] ;
   wire \SUMB[7][5] ;
   wire \SUMB[7][4] ;
   wire \SUMB[7][3] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[7][0] ;
   wire \SUMB[6][6] ;
   wire \SUMB[6][5] ;
   wire \SUMB[6][4] ;
   wire \SUMB[6][3] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][6] ;
   wire \SUMB[5][5] ;
   wire \SUMB[5][4] ;
   wire \SUMB[5][3] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][6] ;
   wire \SUMB[4][5] ;
   wire \SUMB[4][4] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][6] ;
   wire \SUMB[3][5] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][6] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][6] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[6] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;

   ADDFX2M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFX2M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFX2M S2_6_3 (.S(\SUMB[6][3] ), 
	.CO(\CARRYB[6][3] ), 
	.CI(\SUMB[5][4] ), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   ADDFX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
   ADDFX2M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFX2M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFX2M S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFX2M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S2_5_2 (.S(\SUMB[5][2] ), 
	.CO(\CARRYB[5][2] ), 
	.CI(\SUMB[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   ADDFX2M S2_5_3 (.S(\SUMB[5][3] ), 
	.CO(\CARRYB[5][3] ), 
	.CI(\SUMB[4][4] ), 
	.B(\CARRYB[4][3] ), 
	.A(\ab[5][3] ));
   ADDFX2M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S2_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\SUMB[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFX2M S2_4_3 (.S(\SUMB[4][3] ), 
	.CO(\CARRYB[4][3] ), 
	.CI(\SUMB[3][4] ), 
	.B(\CARRYB[3][3] ), 
	.A(\ab[4][3] ));
   ADDFX2M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
   ADDFX2M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S2_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\SUMB[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFX2M S2_3_3 (.S(\SUMB[3][3] ), 
	.CO(\CARRYB[3][3] ), 
	.CI(\SUMB[2][4] ), 
	.B(\CARRYB[2][3] ), 
	.A(\ab[3][3] ));
   ADDFX2M S2_3_4 (.S(\SUMB[3][4] ), 
	.CO(\CARRYB[3][4] ), 
	.CI(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   ADDFX2M S2_3_5 (.S(\SUMB[3][5] ), 
	.CO(\CARRYB[3][5] ), 
	.CI(\SUMB[2][6] ), 
	.B(\CARRYB[2][5] ), 
	.A(\ab[3][5] ));
   ADDFX2M S3_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\ab[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFX2M S3_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\ab[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
   ADDFX2M S3_4_6 (.S(\SUMB[4][6] ), 
	.CO(\CARRYB[4][6] ), 
	.CI(\ab[3][7] ), 
	.B(\CARRYB[3][6] ), 
	.A(\ab[4][6] ));
   ADDFX2M S3_3_6 (.S(\SUMB[3][6] ), 
	.CO(\CARRYB[3][6] ), 
	.CI(\ab[2][7] ), 
	.B(\CARRYB[2][6] ), 
	.A(\ab[3][6] ));
   ADDFX2M S3_2_6 (.S(\SUMB[2][6] ), 
	.CO(\CARRYB[2][6] ), 
	.CI(\ab[1][7] ), 
	.B(n8), 
	.A(\ab[2][6] ));
   ADDFX2M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n9), 
	.A(\ab[2][0] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n7), 
	.A(\ab[2][1] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n6), 
	.A(\ab[2][2] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n5), 
	.A(\ab[2][3] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n4), 
	.A(\ab[2][4] ));
   ADDFX2M S2_2_5 (.S(\SUMB[2][5] ), 
	.CO(\CARRYB[2][5] ), 
	.CI(\SUMB[1][6] ), 
	.B(n3), 
	.A(\ab[2][5] ));
   ADDFX2M S5_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\ab[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   ADDFX2M S4_5 (.S(\SUMB[7][5] ), 
	.CO(\CARRYB[7][5] ), 
	.CI(\SUMB[6][6] ), 
	.B(\CARRYB[6][5] ), 
	.A(\ab[7][5] ));
   ADDFX2M S4_4 (.S(\SUMB[7][4] ), 
	.CO(\CARRYB[7][4] ), 
	.CI(\SUMB[6][5] ), 
	.B(\CARRYB[6][4] ), 
	.A(\ab[7][4] ));
   ADDFX2M S4_3 (.S(\SUMB[7][3] ), 
	.CO(\CARRYB[7][3] ), 
	.CI(\SUMB[6][4] ), 
	.B(\CARRYB[6][3] ), 
	.A(\ab[7][3] ));
   ADDFX2M S4_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   ADDFX2M S4_0 (.S(\SUMB[7][0] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   ADDFX2M S4_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U7 (.Y(n8), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   AND2X2M U8 (.Y(n9), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   AND2X2M U9 (.Y(n10), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   INVX2M U10 (.Y(n22), 
	.A(\ab[0][6] ));
   CLKXOR2X2M U11 (.Y(\A1[7] ), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U12 (.Y(PRODUCT[1]), 
	.B(\ab[0][1] ), 
	.A(\ab[1][0] ));
   CLKXOR2X2M U13 (.Y(\A1[12] ), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   CLKXOR2X2M U14 (.Y(\A1[8] ), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   CLKXOR2X2M U15 (.Y(\A1[10] ), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U16 (.Y(\A1[9] ), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   CLKXOR2X2M U17 (.Y(\A1[11] ), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   INVX2M U18 (.Y(n23), 
	.A(\ab[0][7] ));
   INVX2M U19 (.Y(n21), 
	.A(\ab[0][5] ));
   INVX2M U20 (.Y(n20), 
	.A(\ab[0][4] ));
   INVX2M U21 (.Y(n19), 
	.A(\ab[0][3] ));
   INVX2M U22 (.Y(n18), 
	.A(\ab[0][2] ));
   XNOR2X2M U23 (.Y(\A1[6] ), 
	.B(n17), 
	.A(\CARRYB[7][0] ));
   INVX2M U24 (.Y(n17), 
	.A(\SUMB[7][1] ));
   AND2X2M U25 (.Y(n11), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   AND2X2M U26 (.Y(n12), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   AND2X2M U27 (.Y(n13), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   AND2X2M U28 (.Y(n14), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   AND2X2M U29 (.Y(n15), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   AND2X2M U30 (.Y(n16), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   XNOR2X2M U31 (.Y(\SUMB[1][6] ), 
	.B(n23), 
	.A(\ab[1][6] ));
   XNOR2X2M U32 (.Y(\SUMB[1][5] ), 
	.B(n22), 
	.A(\ab[1][5] ));
   XNOR2X2M U33 (.Y(\SUMB[1][4] ), 
	.B(n21), 
	.A(\ab[1][4] ));
   XNOR2X2M U34 (.Y(\SUMB[1][3] ), 
	.B(n20), 
	.A(\ab[1][3] ));
   XNOR2X2M U35 (.Y(\SUMB[1][2] ), 
	.B(n19), 
	.A(\ab[1][2] ));
   XNOR2X2M U36 (.Y(\SUMB[1][1] ), 
	.B(n18), 
	.A(\ab[1][1] ));
   INVX2M U37 (.Y(n32), 
	.A(A[7]));
   INVX2M U38 (.Y(n33), 
	.A(A[6]));
   INVX2M U39 (.Y(n38), 
	.A(A[1]));
   INVX2M U40 (.Y(n39), 
	.A(A[0]));
   INVX2M U41 (.Y(n36), 
	.A(A[3]));
   INVX2M U42 (.Y(n37), 
	.A(A[2]));
   INVX2M U43 (.Y(n34), 
	.A(A[5]));
   INVX2M U44 (.Y(n35), 
	.A(A[4]));
   INVX2M U45 (.Y(n25), 
	.A(B[6]));
   INVX2M U46 (.Y(n31), 
	.A(B[0]));
   INVX2M U47 (.Y(n29), 
	.A(B[2]));
   INVX2M U48 (.Y(n28), 
	.A(B[3]));
   INVX2M U49 (.Y(n24), 
	.A(B[7]));
   INVX2M U50 (.Y(n27), 
	.A(B[4]));
   INVX2M U51 (.Y(n26), 
	.A(B[5]));
   INVX2M U52 (.Y(n30), 
	.A(B[1]));
   NOR2X1M U54 (.Y(\ab[7][7] ), 
	.B(n24), 
	.A(n32));
   NOR2X1M U55 (.Y(\ab[7][6] ), 
	.B(n25), 
	.A(n32));
   NOR2X1M U56 (.Y(\ab[7][5] ), 
	.B(n26), 
	.A(n32));
   NOR2X1M U57 (.Y(\ab[7][4] ), 
	.B(n27), 
	.A(n32));
   NOR2X1M U58 (.Y(\ab[7][3] ), 
	.B(n28), 
	.A(n32));
   NOR2X1M U59 (.Y(\ab[7][2] ), 
	.B(n29), 
	.A(n32));
   NOR2X1M U60 (.Y(\ab[7][1] ), 
	.B(n30), 
	.A(n32));
   NOR2X1M U61 (.Y(\ab[7][0] ), 
	.B(n31), 
	.A(n32));
   NOR2X1M U62 (.Y(\ab[6][7] ), 
	.B(n33), 
	.A(n24));
   NOR2X1M U63 (.Y(\ab[6][6] ), 
	.B(n33), 
	.A(n25));
   NOR2X1M U64 (.Y(\ab[6][5] ), 
	.B(n33), 
	.A(n26));
   NOR2X1M U65 (.Y(\ab[6][4] ), 
	.B(n33), 
	.A(n27));
   NOR2X1M U66 (.Y(\ab[6][3] ), 
	.B(n33), 
	.A(n28));
   NOR2X1M U67 (.Y(\ab[6][2] ), 
	.B(n33), 
	.A(n29));
   NOR2X1M U68 (.Y(\ab[6][1] ), 
	.B(n33), 
	.A(n30));
   NOR2X1M U69 (.Y(\ab[6][0] ), 
	.B(n33), 
	.A(n31));
   NOR2X1M U70 (.Y(\ab[5][7] ), 
	.B(n34), 
	.A(n24));
   NOR2X1M U71 (.Y(\ab[5][6] ), 
	.B(n34), 
	.A(n25));
   NOR2X1M U72 (.Y(\ab[5][5] ), 
	.B(n34), 
	.A(n26));
   NOR2X1M U73 (.Y(\ab[5][4] ), 
	.B(n34), 
	.A(n27));
   NOR2X1M U74 (.Y(\ab[5][3] ), 
	.B(n34), 
	.A(n28));
   NOR2X1M U75 (.Y(\ab[5][2] ), 
	.B(n34), 
	.A(n29));
   NOR2X1M U76 (.Y(\ab[5][1] ), 
	.B(n34), 
	.A(n30));
   NOR2X1M U77 (.Y(\ab[5][0] ), 
	.B(n34), 
	.A(n31));
   NOR2X1M U78 (.Y(\ab[4][7] ), 
	.B(n35), 
	.A(n24));
   NOR2X1M U79 (.Y(\ab[4][6] ), 
	.B(n35), 
	.A(n25));
   NOR2X1M U80 (.Y(\ab[4][5] ), 
	.B(n35), 
	.A(n26));
   NOR2X1M U81 (.Y(\ab[4][4] ), 
	.B(n35), 
	.A(n27));
   NOR2X1M U82 (.Y(\ab[4][3] ), 
	.B(n35), 
	.A(n28));
   NOR2X1M U83 (.Y(\ab[4][2] ), 
	.B(n35), 
	.A(n29));
   NOR2X1M U84 (.Y(\ab[4][1] ), 
	.B(n35), 
	.A(n30));
   NOR2X1M U85 (.Y(\ab[4][0] ), 
	.B(n35), 
	.A(n31));
   NOR2X1M U86 (.Y(\ab[3][7] ), 
	.B(n36), 
	.A(n24));
   NOR2X1M U87 (.Y(\ab[3][6] ), 
	.B(n36), 
	.A(n25));
   NOR2X1M U88 (.Y(\ab[3][5] ), 
	.B(n36), 
	.A(n26));
   NOR2X1M U89 (.Y(\ab[3][4] ), 
	.B(n36), 
	.A(n27));
   NOR2X1M U90 (.Y(\ab[3][3] ), 
	.B(n36), 
	.A(n28));
   NOR2X1M U91 (.Y(\ab[3][2] ), 
	.B(n36), 
	.A(n29));
   NOR2X1M U92 (.Y(\ab[3][1] ), 
	.B(n36), 
	.A(n30));
   NOR2X1M U93 (.Y(\ab[3][0] ), 
	.B(n36), 
	.A(n31));
   NOR2X1M U94 (.Y(\ab[2][7] ), 
	.B(n37), 
	.A(n24));
   NOR2X1M U95 (.Y(\ab[2][6] ), 
	.B(n37), 
	.A(n25));
   NOR2X1M U96 (.Y(\ab[2][5] ), 
	.B(n37), 
	.A(n26));
   NOR2X1M U97 (.Y(\ab[2][4] ), 
	.B(n37), 
	.A(n27));
   NOR2X1M U98 (.Y(\ab[2][3] ), 
	.B(n37), 
	.A(n28));
   NOR2X1M U99 (.Y(\ab[2][2] ), 
	.B(n37), 
	.A(n29));
   NOR2X1M U100 (.Y(\ab[2][1] ), 
	.B(n37), 
	.A(n30));
   NOR2X1M U101 (.Y(\ab[2][0] ), 
	.B(n37), 
	.A(n31));
   NOR2X1M U102 (.Y(\ab[1][7] ), 
	.B(n38), 
	.A(n24));
   NOR2X1M U103 (.Y(\ab[1][6] ), 
	.B(n38), 
	.A(n25));
   NOR2X1M U104 (.Y(\ab[1][5] ), 
	.B(n38), 
	.A(n26));
   NOR2X1M U105 (.Y(\ab[1][4] ), 
	.B(n38), 
	.A(n27));
   NOR2X1M U106 (.Y(\ab[1][3] ), 
	.B(n38), 
	.A(n28));
   NOR2X1M U107 (.Y(\ab[1][2] ), 
	.B(n38), 
	.A(n29));
   NOR2X1M U108 (.Y(\ab[1][1] ), 
	.B(n38), 
	.A(n30));
   NOR2X1M U109 (.Y(\ab[1][0] ), 
	.B(n38), 
	.A(n31));
   NOR2X1M U110 (.Y(\ab[0][7] ), 
	.B(n39), 
	.A(n24));
   NOR2X1M U111 (.Y(\ab[0][6] ), 
	.B(n39), 
	.A(n25));
   NOR2X1M U112 (.Y(\ab[0][5] ), 
	.B(n39), 
	.A(n26));
   NOR2X1M U113 (.Y(\ab[0][4] ), 
	.B(n39), 
	.A(n27));
   NOR2X1M U114 (.Y(\ab[0][3] ), 
	.B(n39), 
	.A(n28));
   NOR2X1M U115 (.Y(\ab[0][2] ), 
	.B(n39), 
	.A(n29));
   NOR2X1M U116 (.Y(\ab[0][1] ), 
	.B(n39), 
	.A(n30));
   NOR2X1M U117 (.Y(PRODUCT[0]), 
	.B(n39), 
	.A(n31));
   ALU_16B_DW01_add_1 FS_1 (.A({ 1'b0,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\A1[6] ,
		\SUMB[7][0] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n10,
		n14,
		n16,
		n13,
		n15,
		n12,
		n11,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
endmodule

module ALU_16B_test_1 (
	A, 
	B, 
	EN, 
	ALU_FUN, 
	CLK, 
	RST, 
	ALU_OUT, 
	OUT_VALID, 
	test_si, 
	test_se, 
	FE_OFN9_SYNC_RST_REF_scan, 
	FE_OFN20_SE);
   input [7:0] A;
   input [7:0] B;
   input EN;
   input [3:0] ALU_FUN;
   input CLK;
   input RST;
   output [15:0] ALU_OUT;
   output OUT_VALID;
   input test_si;
   input test_se;
   input FE_OFN9_SYNC_RST_REF_scan;
   input FE_OFN20_SE;

   // Internal wires
   wire FE_OFN13_n52;
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire N109;
   wire N110;
   wire N111;
   wire N112;
   wire N113;
   wire N114;
   wire N115;
   wire N116;
   wire N117;
   wire N118;
   wire N119;
   wire N120;
   wire N121;
   wire N122;
   wire N123;
   wire N124;
   wire N125;
   wire N126;
   wire N127;
   wire N128;
   wire N129;
   wire N130;
   wire N131;
   wire N132;
   wire N157;
   wire N158;
   wire N159;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire [15:0] ALU_OUT_Comb;

   BUFX2M FE_OFC13_n52 (.Y(FE_OFN13_n52), 
	.A(n52));
   SDFFRQX2M \ALU_OUT_reg[15]  (.SI(ALU_OUT[14]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.Q(ALU_OUT[15]), 
	.D(ALU_OUT_Comb[15]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[14]  (.SI(ALU_OUT[13]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.Q(ALU_OUT[14]), 
	.D(ALU_OUT_Comb[14]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[13]  (.SI(ALU_OUT[12]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.Q(ALU_OUT[13]), 
	.D(ALU_OUT_Comb[13]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[12]  (.SI(ALU_OUT[11]), 
	.SE(test_se), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.Q(ALU_OUT[12]), 
	.D(ALU_OUT_Comb[12]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[11]  (.SI(ALU_OUT[10]), 
	.SE(FE_OFN20_SE), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.Q(ALU_OUT[11]), 
	.D(ALU_OUT_Comb[11]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[10]  (.SI(ALU_OUT[9]), 
	.SE(test_se), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.Q(ALU_OUT[10]), 
	.D(ALU_OUT_Comb[10]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[9]  (.SI(ALU_OUT[8]), 
	.SE(test_se), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.Q(ALU_OUT[9]), 
	.D(ALU_OUT_Comb[9]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[8]  (.SI(ALU_OUT[7]), 
	.SE(test_se), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.Q(ALU_OUT[8]), 
	.D(ALU_OUT_Comb[8]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[7]  (.SI(ALU_OUT[6]), 
	.SE(test_se), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.Q(ALU_OUT[7]), 
	.D(ALU_OUT_Comb[7]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[6]  (.SI(ALU_OUT[5]), 
	.SE(test_se), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.Q(ALU_OUT[6]), 
	.D(ALU_OUT_Comb[6]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[5]  (.SI(ALU_OUT[4]), 
	.SE(test_se), 
	.RN(FE_OFN9_SYNC_RST_REF_scan), 
	.Q(ALU_OUT[5]), 
	.D(ALU_OUT_Comb[5]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[4]  (.SI(ALU_OUT[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[4]), 
	.D(ALU_OUT_Comb[4]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[3]  (.SI(ALU_OUT[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[3]), 
	.D(ALU_OUT_Comb[3]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[2]  (.SI(ALU_OUT[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[2]), 
	.D(ALU_OUT_Comb[2]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[1]  (.SI(ALU_OUT[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[1]), 
	.D(ALU_OUT_Comb[1]), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[0]), 
	.D(ALU_OUT_Comb[0]), 
	.CK(CLK));
   SDFFRQX2M OUT_VALID_reg (.SI(ALU_OUT[15]), 
	.SE(FE_OFN20_SE), 
	.RN(RST), 
	.Q(OUT_VALID), 
	.D(EN), 
	.CK(CLK));
   OAI2BB1X2M U23 (.Y(n64), 
	.B0(n118), 
	.A1N(n122), 
	.A0N(n157));
   OAI2BB1X2M U24 (.Y(n65), 
	.B0(n118), 
	.A1N(n116), 
	.A0N(n117));
   NOR2BX2M U25 (.Y(n54), 
	.B(n154), 
	.AN(n123));
   AND2X2M U26 (.Y(n59), 
	.B(n122), 
	.A(n116));
   NOR2BX2M U27 (.Y(n48), 
	.B(n152), 
	.AN(FE_OFN13_n52));
   AND2X2M U28 (.Y(n67), 
	.B(n122), 
	.A(n123));
   NOR2X2M U30 (.Y(n58), 
	.B(n154), 
	.A(n124));
   INVX2M U31 (.Y(n154), 
	.A(n117));
   INVX2M U32 (.Y(n155), 
	.A(n108));
   OAI2BB1X2M U33 (.Y(ALU_OUT_Comb[9]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N118));
   OAI2BB1X2M U34 (.Y(ALU_OUT_Comb[10]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N119));
   OAI2BB1X2M U35 (.Y(ALU_OUT_Comb[11]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N120));
   OAI2BB1X2M U36 (.Y(ALU_OUT_Comb[12]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N121));
   OAI2BB1X2M U37 (.Y(ALU_OUT_Comb[13]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N122));
   OAI2BB1X2M U38 (.Y(ALU_OUT_Comb[14]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N123));
   OAI2BB1X2M U39 (.Y(ALU_OUT_Comb[15]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N124));
   INVX2M U40 (.Y(n157), 
	.A(n124));
   NOR3BX2M U41 (.Y(n66), 
	.C(ALU_FUN[2]), 
	.B(n156), 
	.AN(n122));
   NOR3X2M U42 (.Y(n52), 
	.C(n156), 
	.B(ALU_FUN[2]), 
	.A(n154));
   NOR2X2M U43 (.Y(n123), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   AND3X2M U44 (.Y(n63), 
	.C(ALU_FUN[3]), 
	.B(n153), 
	.A(n123));
   NAND3X2M U45 (.Y(n53), 
	.C(ALU_FUN[3]), 
	.B(n153), 
	.A(n157));
   NAND2X2M U46 (.Y(n124), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   INVX2M U47 (.Y(n153), 
	.A(ALU_FUN[0]));
   NOR2X2M U48 (.Y(n122), 
	.B(ALU_FUN[3]), 
	.A(n153));
   NOR2X2M U49 (.Y(n117), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   NAND3X2M U50 (.Y(n108), 
	.C(n116), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   NAND2X2M U51 (.Y(n49), 
	.B(n140), 
	.A(EN));
   INVX2M U52 (.Y(n156), 
	.A(ALU_FUN[1]));
   INVX2M U53 (.Y(n152), 
	.A(EN));
   NAND3X2M U54 (.Y(n118), 
	.C(ALU_FUN[3]), 
	.B(ALU_FUN[0]), 
	.A(n123));
   AND2X2M U55 (.Y(n116), 
	.B(n156), 
	.A(ALU_FUN[2]));
   AND4X2M U56 (.Y(n107), 
	.D(n153), 
	.C(ALU_FUN[3]), 
	.B(n116), 
	.A(N159));
   INVX2M U57 (.Y(n139), 
	.A(B[6]));
   OAI222X1M U58 (.Y(n71), 
	.C1(n146), 
	.C0(n53), 
	.B1(n73), 
	.B0(B[6]), 
	.A1(n139), 
	.A0(n72));
   AOI221XLM U59 (.Y(n73), 
	.C0(n58), 
	.B1(n145), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[6]));
   AOI221XLM U60 (.Y(n72), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[6]), 
	.A1(n145), 
	.A0(n63));
   AOI31X2M U61 (.Y(ALU_OUT_Comb[2]), 
	.B0(n152), 
	.A2(n94), 
	.A1(n93), 
	.A0(n92));
   AOI22X1M U62 (.Y(n92), 
	.B1(n54), 
	.B0(N93), 
	.A1(n67), 
	.A0(N102));
   AOI221XLM U63 (.Y(n94), 
	.C0(n95), 
	.B1(n149), 
	.B0(n58), 
	.A1(n155), 
	.A0(A[3]));
   AOI222X1M U64 (.Y(n93), 
	.C1(n66), 
	.C0(N127), 
	.B1(n59), 
	.B0(A[2]), 
	.A1(FE_OFN13_n52), 
	.A0(N111));
   AOI31X2M U65 (.Y(ALU_OUT_Comb[3]), 
	.B0(n152), 
	.A2(n88), 
	.A1(n87), 
	.A0(n86));
   AOI22X1M U66 (.Y(n86), 
	.B1(n54), 
	.B0(N94), 
	.A1(n67), 
	.A0(N103));
   AOI221XLM U67 (.Y(n88), 
	.C0(n89), 
	.B1(n148), 
	.B0(n58), 
	.A1(n155), 
	.A0(A[4]));
   AOI222X1M U68 (.Y(n87), 
	.C1(n66), 
	.C0(N128), 
	.B1(n59), 
	.B0(A[3]), 
	.A1(FE_OFN13_n52), 
	.A0(N112));
   AOI31X2M U69 (.Y(ALU_OUT_Comb[4]), 
	.B0(n152), 
	.A2(n82), 
	.A1(n81), 
	.A0(n80));
   AOI22X1M U70 (.Y(n80), 
	.B1(n54), 
	.B0(N95), 
	.A1(n67), 
	.A0(N104));
   AOI221XLM U71 (.Y(n82), 
	.C0(n83), 
	.B1(n147), 
	.B0(n58), 
	.A1(A[5]), 
	.A0(n155));
   AOI222X1M U72 (.Y(n81), 
	.C1(n66), 
	.C0(N129), 
	.B1(n59), 
	.B0(A[4]), 
	.A1(FE_OFN13_n52), 
	.A0(N113));
   AOI31X2M U73 (.Y(ALU_OUT_Comb[5]), 
	.B0(n152), 
	.A2(n76), 
	.A1(n75), 
	.A0(n74));
   AOI22X1M U74 (.Y(n74), 
	.B1(n54), 
	.B0(N96), 
	.A1(n67), 
	.A0(N105));
   AOI221XLM U75 (.Y(n76), 
	.C0(n77), 
	.B1(n146), 
	.B0(n58), 
	.A1(A[6]), 
	.A0(n155));
   AOI222X1M U76 (.Y(n75), 
	.C1(n66), 
	.C0(N130), 
	.B1(n59), 
	.B0(A[5]), 
	.A1(FE_OFN13_n52), 
	.A0(N114));
   AOI31X2M U77 (.Y(ALU_OUT_Comb[6]), 
	.B0(n152), 
	.A2(n70), 
	.A1(n69), 
	.A0(n68));
   AOI22X1M U78 (.Y(n68), 
	.B1(n54), 
	.B0(N97), 
	.A1(n67), 
	.A0(N106));
   AOI221XLM U79 (.Y(n70), 
	.C0(n71), 
	.B1(n145), 
	.B0(n58), 
	.A1(A[7]), 
	.A0(n155));
   AOI222X1M U80 (.Y(n69), 
	.C1(n66), 
	.C0(N131), 
	.B1(A[6]), 
	.B0(n59), 
	.A1(FE_OFN13_n52), 
	.A0(N115));
   AOI31X2M U81 (.Y(ALU_OUT_Comb[7]), 
	.B0(n152), 
	.A2(n57), 
	.A1(n56), 
	.A0(n55));
   AOI22X1M U82 (.Y(n56), 
	.B1(FE_OFN13_n52), 
	.B0(N116), 
	.A1(n66), 
	.A0(N132));
   AOI22X1M U83 (.Y(n55), 
	.B1(n54), 
	.B0(N98), 
	.A1(n67), 
	.A0(N107));
   AOI221XLM U84 (.Y(n57), 
	.C0(n60), 
	.B1(A[7]), 
	.B0(n59), 
	.A1(n144), 
	.A0(n58));
   AOI31X2M U85 (.Y(ALU_OUT_Comb[0]), 
	.B0(n152), 
	.A2(n112), 
	.A1(n111), 
	.A0(n110));
   AOI22X1M U86 (.Y(n110), 
	.B1(n54), 
	.B0(N91), 
	.A1(n67), 
	.A0(N100));
   AOI211X2M U87 (.Y(n112), 
	.C0(n114), 
	.B0(n113), 
	.A1(n151), 
	.A0(n58));
   AOI222X1M U88 (.Y(n111), 
	.C1(n66), 
	.C0(N125), 
	.B1(n59), 
	.B0(A[0]), 
	.A1(FE_OFN13_n52), 
	.A0(N109));
   AOI31X2M U89 (.Y(ALU_OUT_Comb[1]), 
	.B0(n152), 
	.A2(n100), 
	.A1(n99), 
	.A0(n98));
   AOI211X2M U90 (.Y(n100), 
	.C0(n102), 
	.B0(n101), 
	.A1(n155), 
	.A0(A[2]));
   AOI222X1M U91 (.Y(n99), 
	.C1(n59), 
	.C0(A[1]), 
	.B1(n150), 
	.B0(n58), 
	.A1(n66), 
	.A0(N126));
   AOI222X1M U92 (.Y(n98), 
	.C1(n67), 
	.C0(N101), 
	.B1(FE_OFN13_n52), 
	.B0(N110), 
	.A1(n54), 
	.A0(N92));
   INVX2M U93 (.Y(n140), 
	.A(n109));
   AOI211X2M U94 (.Y(n109), 
	.C0(n64), 
	.B0(n58), 
	.A1(n67), 
	.A0(N108));
   AOI21X2M U95 (.Y(ALU_OUT_Comb[8]), 
	.B0(n152), 
	.A1(n51), 
	.A0(n50));
   AOI21X2M U96 (.Y(n50), 
	.B0(n140), 
	.A1(n54), 
	.A0(N99));
   AOI2BB2XLM U97 (.Y(n51), 
	.B1(FE_OFN13_n52), 
	.B0(N117), 
	.A1N(n53), 
	.A0N(n144));
   INVX2M U99 (.Y(n150), 
	.A(A[1]));
   INVX2M U100 (.Y(n151), 
	.A(A[0]));
   INVX2M U101 (.Y(n145), 
	.A(A[6]));
   INVX2M U102 (.Y(n144), 
	.A(A[7]));
   INVX2M U103 (.Y(n148), 
	.A(A[3]));
   INVX2M U104 (.Y(n149), 
	.A(A[2]));
   INVX2M U105 (.Y(n146), 
	.A(A[5]));
   INVX2M U106 (.Y(n147), 
	.A(A[4]));
   OAI222X1M U107 (.Y(n95), 
	.C1(n150), 
	.C0(n53), 
	.B1(n97), 
	.B0(B[2]), 
	.A1(n136), 
	.A0(n96));
   AOI221XLM U108 (.Y(n97), 
	.C0(n58), 
	.B1(n149), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[2]));
   AOI221XLM U109 (.Y(n96), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[2]), 
	.A1(n149), 
	.A0(n63));
   OAI222X1M U110 (.Y(n89), 
	.C1(n149), 
	.C0(n53), 
	.B1(n91), 
	.B0(B[3]), 
	.A1(n138), 
	.A0(n90));
   AOI221XLM U111 (.Y(n91), 
	.C0(n58), 
	.B1(n148), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[3]));
   AOI221XLM U112 (.Y(n90), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[3]), 
	.A1(n148), 
	.A0(n63));
   OAI222X1M U113 (.Y(n83), 
	.C1(n148), 
	.C0(n53), 
	.B1(n85), 
	.B0(B[4]), 
	.A1(n143), 
	.A0(n84));
   INVX2M U114 (.Y(n143), 
	.A(B[4]));
   AOI221XLM U115 (.Y(n85), 
	.C0(n58), 
	.B1(n147), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[4]));
   AOI221XLM U116 (.Y(n84), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[4]), 
	.A1(n147), 
	.A0(n63));
   OAI222X1M U117 (.Y(n77), 
	.C1(n147), 
	.C0(n53), 
	.B1(n79), 
	.B0(B[5]), 
	.A1(n142), 
	.A0(n78));
   INVX2M U118 (.Y(n142), 
	.A(B[5]));
   AOI221XLM U119 (.Y(n79), 
	.C0(n58), 
	.B1(n146), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[5]));
   AOI221XLM U120 (.Y(n78), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[5]), 
	.A1(n146), 
	.A0(n63));
   OAI222X1M U121 (.Y(n60), 
	.C1(n145), 
	.C0(n53), 
	.B1(n62), 
	.B0(B[7]), 
	.A1(n141), 
	.A0(n61));
   INVX2M U122 (.Y(n141), 
	.A(B[7]));
   AOI221XLM U123 (.Y(n62), 
	.C0(n58), 
	.B1(n144), 
	.B0(n64), 
	.A1(A[7]), 
	.A0(n63));
   AOI221XLM U124 (.Y(n61), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[7]), 
	.A1(n144), 
	.A0(n63));
   INVX2M U125 (.Y(n135), 
	.A(n31));
   OAI2B2X1M U126 (.Y(n114), 
	.B1(n150), 
	.B0(n108), 
	.A1N(B[0]), 
	.A0(n115));
   AOI221XLM U127 (.Y(n115), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[0]), 
	.A1(n151), 
	.A0(n63));
   OAI2B2X1M U128 (.Y(n102), 
	.B1(n151), 
	.B0(n53), 
	.A1N(B[1]), 
	.A0(n103));
   AOI221XLM U129 (.Y(n103), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[1]), 
	.A1(n150), 
	.A0(n63));
   INVX2M U130 (.Y(n137), 
	.A(n42));
   OAI21X2M U131 (.Y(n113), 
	.B0(n120), 
	.A1(n119), 
	.A0(B[0]));
   AOI31X2M U132 (.Y(n120), 
	.B0(n107), 
	.A2(n121), 
	.A1(ALU_FUN[3]), 
	.A0(N157));
   AOI221XLM U133 (.Y(n119), 
	.C0(n58), 
	.B1(n151), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[0]));
   NOR3X2M U134 (.Y(n121), 
	.C(ALU_FUN[0]), 
	.B(ALU_FUN[2]), 
	.A(n156));
   OAI21X2M U135 (.Y(n101), 
	.B0(n105), 
	.A1(n104), 
	.A0(B[1]));
   AOI31X2M U136 (.Y(n105), 
	.B0(n107), 
	.A2(n106), 
	.A1(ALU_FUN[3]), 
	.A0(N158));
   AOI221XLM U137 (.Y(n104), 
	.C0(n58), 
	.B1(n150), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[1]));
   NOR3X2M U138 (.Y(n106), 
	.C(n156), 
	.B(ALU_FUN[2]), 
	.A(n153));
   INVX2M U147 (.Y(n134), 
	.A(B[0]));
   INVX2M U148 (.Y(n136), 
	.A(B[2]));
   INVX2M U149 (.Y(n138), 
	.A(B[3]));
   NOR2X1M U150 (.Y(n130), 
	.B(B[7]), 
	.A(n144));
   NAND2BX1M U151 (.Y(n46), 
	.B(A[4]), 
	.AN(B[4]));
   NAND2BX1M U152 (.Y(n35), 
	.B(B[4]), 
	.AN(A[4]));
   CLKNAND2X2M U153 (.Y(n125), 
	.B(n35), 
	.A(n46));
   NOR2X1M U154 (.Y(n43), 
	.B(A[3]), 
	.A(n138));
   NOR2X1M U155 (.Y(n34), 
	.B(A[2]), 
	.A(n136));
   NOR2X1M U156 (.Y(n31), 
	.B(A[0]), 
	.A(n134));
   CLKNAND2X2M U157 (.Y(n45), 
	.B(n136), 
	.A(A[2]));
   NAND2BX1M U158 (.Y(n40), 
	.B(n45), 
	.AN(n34));
   AOI21X1M U159 (.Y(n32), 
	.B0(B[1]), 
	.A1(n150), 
	.A0(n31));
   AOI211X1M U160 (.Y(n33), 
	.C0(n32), 
	.B0(n40), 
	.A1(n135), 
	.A0(A[1]));
   CLKNAND2X2M U161 (.Y(n44), 
	.B(n138), 
	.A(A[3]));
   OAI31X1M U162 (.Y(n36), 
	.B0(n44), 
	.A2(n33), 
	.A1(n34), 
	.A0(n43));
   NAND2BX1M U163 (.Y(n128), 
	.B(B[5]), 
	.AN(A[5]));
   OAI211X1M U164 (.Y(n37), 
	.C0(n128), 
	.B0(n35), 
	.A1(n36), 
	.A0(n125));
   NAND2BX1M U165 (.Y(n47), 
	.B(A[5]), 
	.AN(B[5]));
   XNOR2X1M U166 (.Y(n127), 
	.B(B[6]), 
	.A(A[6]));
   AOI32X1M U167 (.Y(n38), 
	.B1(n145), 
	.B0(B[6]), 
	.A2(n127), 
	.A1(n47), 
	.A0(n37));
   CLKNAND2X2M U168 (.Y(n131), 
	.B(n144), 
	.A(B[7]));
   OAI21X1M U169 (.Y(N159), 
	.B0(n131), 
	.A1(n38), 
	.A0(n130));
   CLKNAND2X2M U170 (.Y(n41), 
	.B(n134), 
	.A(A[0]));
   OA21X1M U171 (.Y(n39), 
	.B0(B[1]), 
	.A1(n150), 
	.A0(n41));
   AOI211X1M U172 (.Y(n42), 
	.C0(n39), 
	.B0(n40), 
	.A1(n150), 
	.A0(n41));
   AOI31X1M U173 (.Y(n126), 
	.B0(n43), 
	.A2(n44), 
	.A1(n45), 
	.A0(n137));
   OAI2B11X1M U174 (.Y(n129), 
	.C0(n46), 
	.B0(n47), 
	.A1N(n126), 
	.A0(n125));
   AOI32X1M U175 (.Y(n132), 
	.B1(n139), 
	.B0(A[6]), 
	.A2(n127), 
	.A1(n128), 
	.A0(n129));
   AOI2B1X1M U176 (.Y(n133), 
	.B0(n130), 
	.A1N(n132), 
	.A0(n131));
   CLKINVX1M U177 (.Y(N158), 
	.A(n133));
   NOR2X1M U178 (.Y(N157), 
	.B(N158), 
	.A(N159));
   ALU_16B_DW_div_uns_0 div_60 (.a({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N132,
		N131,
		N130,
		N129,
		N128,
		N127,
		N126,
		N125 }));
   ALU_16B_DW01_sub_0 sub_52 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N108,
		N107,
		N106,
		N105,
		N104,
		N103,
		N102,
		N101,
		N100 }));
   ALU_16B_DW01_add_0 add_48 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N99,
		N98,
		N97,
		N96,
		N95,
		N94,
		N93,
		N92,
		N91 }));
   ALU_16B_DW02_mult_0 mult_56 (.A({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N124,
		N123,
		N122,
		N121,
		N120,
		N119,
		N118,
		N117,
		N116,
		N115,
		N114,
		N113,
		N112,
		N111,
		N110,
		N109 }));
endmodule

module CLK_GATE (
	test_en, 
	CLK_EN, 
	CLK, 
	GATED_CLK);
   input test_en;
   input CLK_EN;
   input CLK;
   output GATED_CLK;

   TLATNCAX12M U0_TLATNCAX12M (.ECK(GATED_CLK), 
	.E(CLK_EN), 
	.CK(CLK));
endmodule

module SYS_TOP (
	scan_clk, 
	scan_rst, 
	test_mode, 
	SE, 
	SI, 
	SO, 
	RST_N, 
	UART_CLK, 
	REF_CLK, 
	UART_RX_IN, 
	UART_TX_O, 
	parity_error, 
	framing_error);
   input scan_clk;
   input scan_rst;
   input test_mode;
   input SE;
   input [3:0] SI;
   output [3:0] SO;
   input RST_N;
   input UART_CLK;
   input REF_CLK;
   input UART_RX_IN;
   output UART_TX_O;
   output parity_error;
   output framing_error;

   // Internal wires
   wire FE_OFN20_SE;
   wire FE_OFN19_SE;
   wire FE_OFN18_SE;
   wire FE_OFN17_SE;
   wire FE_OFN16_SE;
   wire FE_OFN12_SYNC_RST_UART_scan;
   wire FE_OFN9_SYNC_RST_REF_scan;
   wire FE_OFN7_SYNC_RST_REF_scan;
   wire FE_OFN5_SYNC_RST_REF_scan;
   wire FE_OFN4_TX_CLK_scan;
   wire FE_OFN2_REF_CLK_scan;
   wire FE_OFN1_REF_CLK_scan;
   wire FE_OFN0_REF_CLK_scan;
   wire UART_CLK_scan;
   wire REF_CLK_scan;
   wire TX_CLK;
   wire TX_CLK_scan;
   wire RX_CLK;
   wire RX_CLK_scan;
   wire RST_N_scan;
   wire SYNC_RST_REF;
   wire SYNC_RST_REF_scan;
   wire SYNC_RST_UART;
   wire SYNC_RST_UART_scan;
   wire UART_RX_Valid_Unsync;
   wire UART_RX_Valid;
   wire FIFO_WR_INC;
   wire FIFO_Rd_INC;
   wire FIFO_FULL;
   wire FIFO_EMPTY_Valid_for_UART_TX;
   wire UART_TX_Busy;
   wire ALU_OUT_Valid;
   wire ALU_EN;
   wire CLKG_EN;
   wire Rd_Reg_Valid;
   wire RdEn;
   wire WrEn;
   wire ALU_CLK;
   wire _1_net_;
   wire n3;
   wire n4;
   wire n10;
   wire n11;
   wire n12;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire [7:0] UART_RX_DATA_Unsync;
   wire [7:0] UART_RX_DATA;
   wire [7:0] FIFO_WR_DATA;
   wire [7:0] FIFO_Rd_DATA;
   wire [7:0] Div_Ratio;
   wire [7:0] UART_Config;
   wire [7:0] Div_Ratio_to_RX;
   wire [15:0] ALU_OUT;
   wire [3:0] ALU_FUN;
   wire [7:0] Rd_Reg;
   wire [7:0] Wr_Reg;
   wire [3:0] Addr;
   wire [7:0] Operand_A;
   wire [7:0] Operand_B;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;

   assign SO[1] = Rd_Reg[4] ;

   BUFX4M FE_OFC20_SE (.Y(FE_OFN20_SE), 
	.A(FE_OFN16_SE));
   BUFX4M FE_OFC19_SE (.Y(FE_OFN19_SE), 
	.A(SE));
   CLKBUFX6M FE_OFC18_SE (.Y(FE_OFN18_SE), 
	.A(SE));
   BUFX4M FE_OFC17_SE (.Y(FE_OFN17_SE), 
	.A(SE));
   BUFX4M FE_OFC16_SE (.Y(FE_OFN16_SE), 
	.A(SE));
   CLKBUFX8M FE_OFC12_SYNC_RST_UART_scan (.Y(FE_OFN12_SYNC_RST_UART_scan), 
	.A(SYNC_RST_UART_scan));
   CLKINVX6M FE_OFC9_SYNC_RST_REF_scan (.Y(FE_OFN9_SYNC_RST_REF_scan), 
	.A(FE_OFN5_SYNC_RST_REF_scan));
   CLKINVX6M FE_OFC7_SYNC_RST_REF_scan (.Y(FE_OFN7_SYNC_RST_REF_scan), 
	.A(FE_OFN5_SYNC_RST_REF_scan));
   CLKINVX1M FE_OFC5_SYNC_RST_REF_scan (.Y(FE_OFN5_SYNC_RST_REF_scan), 
	.A(SYNC_RST_REF_scan));
   BUFX4M FE_OFC4_TX_CLK_scan (.Y(FE_OFN4_TX_CLK_scan), 
	.A(TX_CLK_scan));
   CLKBUFX8M FE_OFC2_REF_CLK_scan (.Y(FE_OFN2_REF_CLK_scan), 
	.A(FE_OFN1_REF_CLK_scan));
   CLKBUFX8M FE_OFC1_REF_CLK_scan (.Y(FE_OFN1_REF_CLK_scan), 
	.A(FE_OFN0_REF_CLK_scan));
   BUFX4M FE_OFC0_REF_CLK_scan (.Y(FE_OFN0_REF_CLK_scan), 
	.A(REF_CLK_scan));
   OR2X2M U4 (.Y(_1_net_), 
	.B(test_mode), 
	.A(CLKG_EN));
   BUFX2M U5 (.Y(n3), 
	.A(Addr[0]));
   BUFX4M U6 (.Y(n4), 
	.A(Addr[1]));
   CLKBUFX40M U17 (.Y(framing_error), 
	.A(SO[0]));
   mux2X1_0 U1_mux2X1 (.IN_0(UART_CLK), 
	.IN_1(scan_clk), 
	.SEL(test_mode), 
	.OUT(UART_CLK_scan));
   mux2X1_6 U2_mux2X1 (.IN_0(REF_CLK), 
	.IN_1(scan_clk), 
	.SEL(test_mode), 
	.OUT(REF_CLK_scan));
   mux2X1_5 U3_mux2X1 (.IN_0(TX_CLK), 
	.IN_1(scan_clk), 
	.SEL(test_mode), 
	.OUT(TX_CLK_scan));
   mux2X1_4 U4_mux2X1 (.IN_0(RX_CLK), 
	.IN_1(scan_clk), 
	.SEL(test_mode), 
	.OUT(RX_CLK_scan));
   mux2X1_3 U5_mux2X1 (.IN_0(RST_N), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(RST_N_scan));
   mux2X1_2 U6_mux2X1 (.IN_0(SYNC_RST_REF), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(SYNC_RST_REF_scan));
   mux2X1_1 U7_mux2X1 (.IN_0(SYNC_RST_UART), 
	.IN_1(scan_rst), 
	.SEL(test_mode), 
	.OUT(SYNC_RST_UART_scan));
   RST_SYNC_NUM_STAGES2_test_0 U0_RST_SYNC_REF (.CLK(FE_OFN1_REF_CLK_scan), 
	.RST(RST_N_scan), 
	.SYNC_RST(SYNC_RST_REF), 
	.test_si(n16), 
	.test_se(FE_OFN17_SE));
   RST_SYNC_NUM_STAGES2_test_1 U1_RST_SYNC_UART (.CLK(UART_CLK_scan), 
	.RST(RST_N_scan), 
	.SYNC_RST(SYNC_RST_UART), 
	.test_si(n10), 
	.test_se(FE_OFN17_SE));
   DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 U0_DATA_SYNC (.unsync_bus({ UART_RX_DATA_Unsync[7],
		UART_RX_DATA_Unsync[6],
		UART_RX_DATA_Unsync[5],
		UART_RX_DATA_Unsync[4],
		UART_RX_DATA_Unsync[3],
		UART_RX_DATA_Unsync[2],
		UART_RX_DATA_Unsync[1],
		UART_RX_DATA_Unsync[0] }), 
	.bus_enable(UART_RX_Valid_Unsync), 
	.CLK(FE_OFN2_REF_CLK_scan), 
	.RST(SYNC_RST_REF_scan), 
	.sync_bus({ UART_RX_DATA[7],
		UART_RX_DATA[6],
		UART_RX_DATA[5],
		UART_RX_DATA[4],
		UART_RX_DATA[3],
		UART_RX_DATA[2],
		UART_RX_DATA[1],
		UART_RX_DATA[0] }), 
	.enable_pulse(UART_RX_Valid), 
	.test_si(n19), 
	.test_so(n18), 
	.test_se(SE), 
	.FE_OFN19_SE(FE_OFN19_SE));
   Async_fifo_D_SIZE8_F_DEPTH8_P_SIZE4_test_1 U0_Async_fifo (.i_w_clk(FE_OFN2_REF_CLK_scan), 
	.i_w_rstn(FE_OFN7_SYNC_RST_REF_scan), 
	.i_w_inc(FIFO_WR_INC), 
	.i_r_clk(TX_CLK_scan), 
	.i_r_rstn(FE_OFN12_SYNC_RST_UART_scan), 
	.i_r_inc(FIFO_Rd_INC), 
	.i_w_data({ FIFO_WR_DATA[7],
		FIFO_WR_DATA[6],
		FIFO_WR_DATA[5],
		FIFO_WR_DATA[4],
		FIFO_WR_DATA[3],
		FIFO_WR_DATA[2],
		FIFO_WR_DATA[1],
		FIFO_WR_DATA[0] }), 
	.o_r_data({ FIFO_Rd_DATA[7],
		FIFO_Rd_DATA[6],
		FIFO_Rd_DATA[5],
		FIFO_Rd_DATA[4],
		FIFO_Rd_DATA[3],
		FIFO_Rd_DATA[2],
		FIFO_Rd_DATA[1],
		FIFO_Rd_DATA[0] }), 
	.o_full(FIFO_FULL), 
	.o_empty(FIFO_EMPTY_Valid_for_UART_TX), 
	.test_si2(SI[2]), 
	.test_si1(ALU_OUT_Valid), 
	.test_so2(n19), 
	.test_so1(SO[3]), 
	.test_se(SE), 
	.FE_OFN4_TX_CLK_scan(FE_OFN4_TX_CLK_scan), 
	.FE_OFN9_SYNC_RST_REF_scan(FE_OFN9_SYNC_RST_REF_scan), 
	.FE_OFN16_SE(FE_OFN16_SE), 
	.FE_OFN19_SE(FE_OFN19_SE), 
	.FE_OFN20_SE(FE_OFN20_SE));
   PULSE_GEN_test_1 U0_PULSE_GEN (.clk(TX_CLK_scan), 
	.rst(FE_OFN12_SYNC_RST_UART_scan), 
	.lvl_sig(UART_TX_Busy), 
	.pulse_sig(FIFO_Rd_INC), 
	.test_si(n17), 
	.test_so(n16), 
	.test_se(SE));
   Integer_Clock_Divider_test_0 U0_Integer_Clock_Divider_TX (.i_ref_clk(UART_CLK_scan), 
	.i_rst_n(SYNC_RST_UART_scan), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ Div_Ratio[7],
		Div_Ratio[6],
		Div_Ratio[5],
		Div_Ratio[4],
		Div_Ratio[3],
		Div_Ratio[2],
		Div_Ratio[1],
		Div_Ratio[0] }), 
	.o_div_clk(TX_CLK), 
	.test_si(n18), 
	.test_so(n17), 
	.test_se(SE), 
	.FE_OFN17_SE(FE_OFN17_SE));
   CLKDIV_MUX U0_CLKDIV_MUX (.IN({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2] }), 
	.OUT({ SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		Div_Ratio_to_RX[3],
		Div_Ratio_to_RX[2],
		Div_Ratio_to_RX[1],
		Div_Ratio_to_RX[0] }));
   Integer_Clock_Divider_test_1 U1_Integer_Clock_Divider_RX (.i_ref_clk(UART_CLK_scan), 
	.i_rst_n(SYNC_RST_UART_scan), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		Div_Ratio_to_RX[3],
		Div_Ratio_to_RX[2],
		Div_Ratio_to_RX[1],
		Div_Ratio_to_RX[0] }), 
	.o_div_clk(RX_CLK), 
	.test_si(n11), 
	.test_so(n10), 
	.test_se(FE_OFN17_SE), 
	.FE_OFN18_SE(FE_OFN18_SE));
   UART_test_1 U0_UART (.TX_CLK(TX_CLK_scan), 
	.TX_IN_P({ FIFO_Rd_DATA[7],
		FIFO_Rd_DATA[6],
		FIFO_Rd_DATA[5],
		FIFO_Rd_DATA[4],
		FIFO_Rd_DATA[3],
		FIFO_Rd_DATA[2],
		FIFO_Rd_DATA[1],
		FIFO_Rd_DATA[0] }), 
	.TX_IN_V(FIFO_EMPTY_Valid_for_UART_TX), 
	.TX_OUT_S(UART_TX_O), 
	.TX_OUT_V(UART_TX_Busy), 
	.RST(SYNC_RST_UART_scan), 
	.PAR_TYP(UART_Config[1]), 
	.PAR_EN(UART_Config[0]), 
	.RX_CLK(RX_CLK_scan), 
	.RX_IN_S(UART_RX_IN), 
	.Prescale({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2] }), 
	.RX_OUT_P({ UART_RX_DATA_Unsync[7],
		UART_RX_DATA_Unsync[6],
		UART_RX_DATA_Unsync[5],
		UART_RX_DATA_Unsync[4],
		UART_RX_DATA_Unsync[3],
		UART_RX_DATA_Unsync[2],
		UART_RX_DATA_Unsync[1],
		UART_RX_DATA_Unsync[0] }), 
	.RX_OUT_V(UART_RX_Valid_Unsync), 
	.parity_error(parity_error), 
	.framing_error(SO[0]), 
	.test_si2(SYNC_RST_UART), 
	.test_si1(n12), 
	.test_so1(n11), 
	.test_se(SE), 
	.FE_OFN4_TX_CLK_scan(FE_OFN4_TX_CLK_scan), 
	.FE_OFN12_SYNC_RST_UART_scan(FE_OFN12_SYNC_RST_UART_scan), 
	.FE_OFN20_SE(FE_OFN20_SE));
   SYS_CTRL_test_1 U0_SYS_CTRL (.CLK(FE_OFN2_REF_CLK_scan), 
	.RST(SYNC_RST_REF_scan), 
	.UART_RX_DATA({ UART_RX_DATA[7],
		UART_RX_DATA[6],
		UART_RX_DATA[5],
		UART_RX_DATA[4],
		UART_RX_DATA[3],
		UART_RX_DATA[2],
		UART_RX_DATA[1],
		UART_RX_DATA[0] }), 
	.UART_RX_Valid(UART_RX_Valid), 
	.FIFO_FULL(FIFO_FULL), 
	.FIFO_WR_DATA({ FIFO_WR_DATA[7],
		FIFO_WR_DATA[6],
		FIFO_WR_DATA[5],
		FIFO_WR_DATA[4],
		FIFO_WR_DATA[3],
		FIFO_WR_DATA[2],
		FIFO_WR_DATA[1],
		FIFO_WR_DATA[0] }), 
	.FIFO_WR_INC(FIFO_WR_INC), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.ALU_OUT_Valid(ALU_OUT_Valid), 
	.ALU_EN(ALU_EN), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.CLKG_EN(CLKG_EN), 
	.Rd_Reg({ Rd_Reg[7],
		Rd_Reg[6],
		Rd_Reg[5],
		Rd_Reg[4],
		Rd_Reg[3],
		Rd_Reg[2],
		Rd_Reg[1],
		Rd_Reg[0] }), 
	.Rd_Reg_Valid(Rd_Reg_Valid), 
	.Wr_Reg({ Wr_Reg[7],
		Wr_Reg[6],
		Wr_Reg[5],
		Wr_Reg[4],
		Wr_Reg[3],
		Wr_Reg[2],
		Wr_Reg[1],
		Wr_Reg[0] }), 
	.Addr({ Addr[3],
		Addr[2],
		Addr[1],
		Addr[0] }), 
	.RdEn(RdEn), 
	.WrEn(WrEn), 
	.test_so(n12), 
	.test_se(FE_OFN19_SE), 
	.FE_OFN7_SYNC_RST_REF_scan(FE_OFN7_SYNC_RST_REF_scan), 
	.FE_OFN9_SYNC_RST_REF_scan(FE_OFN9_SYNC_RST_REF_scan), 
	.FE_OFN20_SE(FE_OFN20_SE));
   Register_File_test_1 U0_Register_File (.WrData({ Wr_Reg[7],
		Wr_Reg[6],
		Wr_Reg[5],
		Wr_Reg[4],
		Wr_Reg[3],
		Wr_Reg[2],
		Wr_Reg[1],
		Wr_Reg[0] }), 
	.Adresss({ Addr[3],
		Addr[2],
		n4,
		n3 }), 
	.WrEn(WrEn), 
	.RdEn(RdEn), 
	.CLK(REF_CLK_scan), 
	.RST(SYNC_RST_REF_scan), 
	.RdData({ Rd_Reg[7],
		Rd_Reg[6],
		Rd_Reg[5],
		Rd_Reg[4],
		Rd_Reg[3],
		Rd_Reg[2],
		Rd_Reg[1],
		Rd_Reg[0] }), 
	.RdData_Valid(Rd_Reg_Valid), 
	.REG0({ Operand_A[7],
		Operand_A[6],
		Operand_A[5],
		Operand_A[4],
		Operand_A[3],
		Operand_A[2],
		Operand_A[1],
		Operand_A[0] }), 
	.REG1({ Operand_B[7],
		Operand_B[6],
		Operand_B[5],
		Operand_B[4],
		Operand_B[3],
		Operand_B[2],
		Operand_B[1],
		Operand_B[0] }), 
	.REG2({ UART_Config[7],
		UART_Config[6],
		UART_Config[5],
		UART_Config[4],
		UART_Config[3],
		UART_Config[2],
		UART_Config[1],
		UART_Config[0] }), 
	.REG3({ Div_Ratio[7],
		Div_Ratio[6],
		Div_Ratio[5],
		Div_Ratio[4],
		Div_Ratio[3],
		Div_Ratio[2],
		Div_Ratio[1],
		Div_Ratio[0] }), 
	.test_si3(SI[0]), 
	.test_si2(SI[1]), 
	.test_si1(SYNC_RST_REF), 
	.test_so1(SO[2]), 
	.test_se(SE), 
	.FE_OFN0_REF_CLK_scan(FE_OFN0_REF_CLK_scan), 
	.FE_OFN1_REF_CLK_scan(FE_OFN1_REF_CLK_scan), 
	.FE_OFN2_REF_CLK_scan(FE_OFN2_REF_CLK_scan), 
	.FE_OFN5_SYNC_RST_REF_scan(FE_OFN5_SYNC_RST_REF_scan), 
	.FE_OFN7_SYNC_RST_REF_scan(FE_OFN7_SYNC_RST_REF_scan), 
	.FE_OFN17_SE(FE_OFN17_SE), 
	.FE_OFN18_SE(FE_OFN18_SE), 
	.FE_OFN19_SE(FE_OFN19_SE));
   ALU_16B_test_1 U0_ALU_16B (.A({ Operand_A[7],
		Operand_A[6],
		Operand_A[5],
		Operand_A[4],
		Operand_A[3],
		Operand_A[2],
		Operand_A[1],
		Operand_A[0] }), 
	.B({ Operand_B[7],
		Operand_B[6],
		Operand_B[5],
		Operand_B[4],
		Operand_B[3],
		Operand_B[2],
		Operand_B[1],
		Operand_B[0] }), 
	.EN(ALU_EN), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.CLK(ALU_CLK), 
	.RST(FE_OFN7_SYNC_RST_REF_scan), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_VALID(ALU_OUT_Valid), 
	.test_si(SI[3]), 
	.test_se(FE_OFN19_SE), 
	.FE_OFN9_SYNC_RST_REF_scan(FE_OFN9_SYNC_RST_REF_scan), 
	.FE_OFN20_SE(FE_OFN20_SE));
   CLK_GATE U0_CLK_GATE (.test_en(1'b0), 
	.CLK_EN(_1_net_), 
	.CLK(FE_OFN2_REF_CLK_scan), 
	.GATED_CLK(ALU_CLK));
endmodule

