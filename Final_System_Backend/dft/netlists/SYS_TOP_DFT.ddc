/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sun Oct 27 03:01:30 2024
/////////////////////////////////////////////////////////////


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X4M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module RST_SYNC_NUM_STAGES2_test_0 ( CLK, RST, SYNC_RST, test_si, test_se );
  input CLK, RST, test_si, test_se;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\sync_reg[0] ) );
  SDFFRQX1M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module RST_SYNC_NUM_STAGES2_test_1 ( CLK, RST, SYNC_RST, test_si, test_se );
  input CLK, RST, test_si, test_se;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\sync_reg[0] ) );
  SDFFRQX1M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 ( unsync_bus, bus_enable, CLK, 
        RST, sync_bus, enable_pulse, test_si, test_so, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST, test_si, test_se;
  output enable_pulse, test_so;
  wire   enable_flop, n1, n4, n6, n8, n10, n12, n14, n16, n18, n22;
  wire   [1:0] sync_reg;
  assign test_so = sync_reg[1];

  SDFFRQX2M enable_flop_reg ( .D(sync_reg[1]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(enable_flop) );
  SDFFRQX2M \sync_reg_reg[1]  ( .D(sync_reg[0]), .SI(sync_reg[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(sync_reg[1]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n16), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n14), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n12), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n18), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n10), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n8), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n4), .SI(enable_pulse), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n6), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(bus_enable), .SI(sync_bus[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_reg[0]) );
  SDFFRQX2M enable_pulse_reg ( .D(n22), .SI(enable_flop), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(enable_pulse) );
  INVX2M U3 ( .A(n1), .Y(n22) );
  NAND2BX2M U4 ( .AN(enable_flop), .B(sync_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n22), .B0(sync_bus[0]), .B1(n1), .Y(n4)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n22), .B0(sync_bus[1]), .B1(n1), .Y(n6)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n22), .B0(sync_bus[2]), .B1(n1), .Y(n8)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n22), .B0(sync_bus[3]), .B1(n1), .Y(n10) );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n22), .B0(sync_bus[4]), .B1(n1), .Y(n12) );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n22), .B0(sync_bus[5]), .B1(n1), .Y(
        n14) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n22), .B0(sync_bus[6]), .B1(n1), .Y(
        n16) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n22), .B0(sync_bus[7]), .B1(n1), .Y(
        n18) );
endmodule


module fifo_mem_D_SIZE8_F_DEPTH8_P_SIZE4_test_1 ( w_clk, w_rstn, w_full, w_inc, 
        w_addr, r_addr, w_data, r_data, test_si, test_so, test_se );
  input [2:0] w_addr;
  input [2:0] r_addr;
  input [7:0] w_data;
  output [7:0] r_data;
  input w_clk, w_rstn, w_full, w_inc, test_si, test_se;
  output test_so;
  wire   N9, N10, N11, \FIFO_MEM[7][7] , \FIFO_MEM[7][6] , \FIFO_MEM[7][5] ,
         \FIFO_MEM[7][4] , \FIFO_MEM[7][3] , \FIFO_MEM[7][2] ,
         \FIFO_MEM[7][1] , \FIFO_MEM[7][0] , \FIFO_MEM[6][7] ,
         \FIFO_MEM[6][6] , \FIFO_MEM[6][5] , \FIFO_MEM[6][4] ,
         \FIFO_MEM[6][3] , \FIFO_MEM[6][2] , \FIFO_MEM[6][1] ,
         \FIFO_MEM[6][0] , \FIFO_MEM[5][7] , \FIFO_MEM[5][6] ,
         \FIFO_MEM[5][5] , \FIFO_MEM[5][4] , \FIFO_MEM[5][3] ,
         \FIFO_MEM[5][2] , \FIFO_MEM[5][1] , \FIFO_MEM[5][0] ,
         \FIFO_MEM[4][7] , \FIFO_MEM[4][6] , \FIFO_MEM[4][5] ,
         \FIFO_MEM[4][4] , \FIFO_MEM[4][3] , \FIFO_MEM[4][2] ,
         \FIFO_MEM[4][1] , \FIFO_MEM[4][0] , \FIFO_MEM[3][7] ,
         \FIFO_MEM[3][6] , \FIFO_MEM[3][5] , \FIFO_MEM[3][4] ,
         \FIFO_MEM[3][3] , \FIFO_MEM[3][2] , \FIFO_MEM[3][1] ,
         \FIFO_MEM[3][0] , \FIFO_MEM[2][7] , \FIFO_MEM[2][6] ,
         \FIFO_MEM[2][5] , \FIFO_MEM[2][4] , \FIFO_MEM[2][3] ,
         \FIFO_MEM[2][2] , \FIFO_MEM[2][1] , \FIFO_MEM[2][0] ,
         \FIFO_MEM[1][7] , \FIFO_MEM[1][6] , \FIFO_MEM[1][5] ,
         \FIFO_MEM[1][4] , \FIFO_MEM[1][3] , \FIFO_MEM[1][2] ,
         \FIFO_MEM[1][1] , \FIFO_MEM[1][0] , \FIFO_MEM[0][7] ,
         \FIFO_MEM[0][6] , \FIFO_MEM[0][5] , \FIFO_MEM[0][4] ,
         \FIFO_MEM[0][3] , \FIFO_MEM[0][2] , \FIFO_MEM[0][1] ,
         \FIFO_MEM[0][0] , n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n182,
         n183, n184, n185, n186;
  assign N9 = r_addr[0];
  assign N10 = r_addr[1];
  assign N11 = r_addr[2];
  assign test_so = \FIFO_MEM[7][7] ;

  SDFFRQX2M \FIFO_MEM_reg[5][7]  ( .D(n133), .SI(\FIFO_MEM[5][6] ), .SE(n186), 
        .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[5][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][6]  ( .D(n132), .SI(\FIFO_MEM[5][5] ), .SE(n185), 
        .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[5][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][5]  ( .D(n131), .SI(\FIFO_MEM[5][4] ), .SE(n184), 
        .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[5][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][4]  ( .D(n130), .SI(\FIFO_MEM[5][3] ), .SE(n183), 
        .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[5][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][3]  ( .D(n129), .SI(\FIFO_MEM[5][2] ), .SE(n186), 
        .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[5][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][2]  ( .D(n128), .SI(\FIFO_MEM[5][1] ), .SE(n185), 
        .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[5][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][1]  ( .D(n127), .SI(\FIFO_MEM[5][0] ), .SE(n184), 
        .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[5][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[5][0]  ( .D(n126), .SI(\FIFO_MEM[4][7] ), .SE(n183), 
        .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[5][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][7]  ( .D(n101), .SI(\FIFO_MEM[1][6] ), .SE(n186), 
        .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[1][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][6]  ( .D(n100), .SI(\FIFO_MEM[1][5] ), .SE(n185), 
        .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[1][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][5]  ( .D(n99), .SI(\FIFO_MEM[1][4] ), .SE(n184), 
        .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[1][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][4]  ( .D(n98), .SI(\FIFO_MEM[1][3] ), .SE(n183), 
        .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[1][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][3]  ( .D(n97), .SI(\FIFO_MEM[1][2] ), .SE(n186), 
        .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[1][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][2]  ( .D(n96), .SI(\FIFO_MEM[1][1] ), .SE(n185), 
        .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[1][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][1]  ( .D(n95), .SI(\FIFO_MEM[1][0] ), .SE(n184), 
        .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[1][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[1][0]  ( .D(n94), .SI(\FIFO_MEM[0][7] ), .SE(n183), 
        .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[1][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][7]  ( .D(n149), .SI(\FIFO_MEM[7][6] ), .SE(n186), 
        .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[7][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][6]  ( .D(n148), .SI(\FIFO_MEM[7][5] ), .SE(n185), 
        .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[7][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][5]  ( .D(n147), .SI(\FIFO_MEM[7][4] ), .SE(n184), 
        .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[7][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][4]  ( .D(n146), .SI(\FIFO_MEM[7][3] ), .SE(n183), 
        .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[7][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][3]  ( .D(n145), .SI(\FIFO_MEM[7][2] ), .SE(n186), 
        .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[7][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][2]  ( .D(n144), .SI(\FIFO_MEM[7][1] ), .SE(n185), 
        .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[7][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][1]  ( .D(n143), .SI(\FIFO_MEM[7][0] ), .SE(n184), 
        .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[7][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[7][0]  ( .D(n142), .SI(\FIFO_MEM[6][7] ), .SE(n183), 
        .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[7][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][7]  ( .D(n117), .SI(\FIFO_MEM[3][6] ), .SE(n186), 
        .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[3][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][6]  ( .D(n116), .SI(\FIFO_MEM[3][5] ), .SE(n185), 
        .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[3][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][5]  ( .D(n115), .SI(\FIFO_MEM[3][4] ), .SE(n184), 
        .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[3][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][4]  ( .D(n114), .SI(\FIFO_MEM[3][3] ), .SE(n183), 
        .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[3][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][3]  ( .D(n113), .SI(\FIFO_MEM[3][2] ), .SE(n186), 
        .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[3][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][2]  ( .D(n112), .SI(\FIFO_MEM[3][1] ), .SE(n185), 
        .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[3][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][1]  ( .D(n111), .SI(\FIFO_MEM[3][0] ), .SE(n184), 
        .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[3][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[3][0]  ( .D(n110), .SI(\FIFO_MEM[2][7] ), .SE(n183), 
        .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[3][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][7]  ( .D(n141), .SI(\FIFO_MEM[6][6] ), .SE(n186), 
        .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[6][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][6]  ( .D(n140), .SI(\FIFO_MEM[6][5] ), .SE(n185), 
        .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[6][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][5]  ( .D(n139), .SI(\FIFO_MEM[6][4] ), .SE(n184), 
        .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[6][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][4]  ( .D(n138), .SI(\FIFO_MEM[6][3] ), .SE(n183), 
        .CK(w_clk), .RN(n164), .Q(\FIFO_MEM[6][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][3]  ( .D(n137), .SI(\FIFO_MEM[6][2] ), .SE(n186), 
        .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[6][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][2]  ( .D(n136), .SI(\FIFO_MEM[6][1] ), .SE(n185), 
        .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[6][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][1]  ( .D(n135), .SI(\FIFO_MEM[6][0] ), .SE(n184), 
        .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[6][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[6][0]  ( .D(n134), .SI(\FIFO_MEM[5][7] ), .SE(n183), 
        .CK(w_clk), .RN(n165), .Q(\FIFO_MEM[6][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][7]  ( .D(n109), .SI(\FIFO_MEM[2][6] ), .SE(n186), 
        .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[2][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][6]  ( .D(n108), .SI(\FIFO_MEM[2][5] ), .SE(n185), 
        .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[2][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][5]  ( .D(n107), .SI(\FIFO_MEM[2][4] ), .SE(n184), 
        .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[2][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][4]  ( .D(n106), .SI(\FIFO_MEM[2][3] ), .SE(n183), 
        .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[2][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][3]  ( .D(n105), .SI(\FIFO_MEM[2][2] ), .SE(n186), 
        .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[2][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][2]  ( .D(n104), .SI(\FIFO_MEM[2][1] ), .SE(n185), 
        .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[2][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][1]  ( .D(n103), .SI(\FIFO_MEM[2][0] ), .SE(n184), 
        .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[2][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[2][0]  ( .D(n102), .SI(\FIFO_MEM[1][7] ), .SE(n183), 
        .CK(w_clk), .RN(n167), .Q(\FIFO_MEM[2][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][7]  ( .D(n125), .SI(\FIFO_MEM[4][6] ), .SE(n186), 
        .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[4][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][6]  ( .D(n124), .SI(\FIFO_MEM[4][5] ), .SE(n185), 
        .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[4][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][5]  ( .D(n123), .SI(\FIFO_MEM[4][4] ), .SE(n184), 
        .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[4][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][4]  ( .D(n122), .SI(\FIFO_MEM[4][3] ), .SE(n183), 
        .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[4][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][3]  ( .D(n121), .SI(\FIFO_MEM[4][2] ), .SE(n186), 
        .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[4][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][2]  ( .D(n120), .SI(\FIFO_MEM[4][1] ), .SE(n185), 
        .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[4][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][1]  ( .D(n119), .SI(\FIFO_MEM[4][0] ), .SE(n184), 
        .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[4][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[4][0]  ( .D(n118), .SI(\FIFO_MEM[3][7] ), .SE(n183), 
        .CK(w_clk), .RN(n166), .Q(\FIFO_MEM[4][0] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][7]  ( .D(n93), .SI(\FIFO_MEM[0][6] ), .SE(n186), 
        .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[0][7] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][6]  ( .D(n92), .SI(\FIFO_MEM[0][5] ), .SE(n185), 
        .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[0][6] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][5]  ( .D(n91), .SI(\FIFO_MEM[0][4] ), .SE(n184), 
        .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[0][5] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][4]  ( .D(n90), .SI(\FIFO_MEM[0][3] ), .SE(n183), 
        .CK(w_clk), .RN(n168), .Q(\FIFO_MEM[0][4] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][3]  ( .D(n89), .SI(\FIFO_MEM[0][2] ), .SE(n186), 
        .CK(w_clk), .RN(n169), .Q(\FIFO_MEM[0][3] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][2]  ( .D(n88), .SI(\FIFO_MEM[0][1] ), .SE(n185), 
        .CK(w_clk), .RN(n169), .Q(\FIFO_MEM[0][2] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][1]  ( .D(n87), .SI(\FIFO_MEM[0][0] ), .SE(n184), 
        .CK(w_clk), .RN(n169), .Q(\FIFO_MEM[0][1] ) );
  SDFFRQX2M \FIFO_MEM_reg[0][0]  ( .D(n86), .SI(test_si), .SE(n183), .CK(w_clk), .RN(n169), .Q(\FIFO_MEM[0][0] ) );
  BUFX2M U66 ( .A(n78), .Y(n161) );
  BUFX2M U67 ( .A(n84), .Y(n159) );
  BUFX2M U68 ( .A(n85), .Y(n158) );
  BUFX2M U69 ( .A(n83), .Y(n160) );
  BUFX2M U70 ( .A(n163), .Y(n168) );
  BUFX2M U71 ( .A(n163), .Y(n167) );
  BUFX2M U72 ( .A(n162), .Y(n166) );
  BUFX2M U73 ( .A(n162), .Y(n165) );
  BUFX2M U74 ( .A(n162), .Y(n164) );
  BUFX2M U75 ( .A(n163), .Y(n169) );
  NOR2BX2M U76 ( .AN(w_inc), .B(w_full), .Y(n80) );
  BUFX2M U77 ( .A(w_rstn), .Y(n163) );
  BUFX2M U78 ( .A(w_rstn), .Y(n162) );
  NAND3X2M U79 ( .A(n178), .B(n179), .C(n82), .Y(n81) );
  NAND3X2M U80 ( .A(n178), .B(n179), .C(n76), .Y(n75) );
  NAND3X2M U81 ( .A(w_addr[0]), .B(n76), .C(w_addr[1]), .Y(n79) );
  NAND3X2M U82 ( .A(n76), .B(n179), .C(w_addr[0]), .Y(n77) );
  NOR2BX2M U83 ( .AN(n80), .B(w_addr[2]), .Y(n76) );
  OAI2BB2X1M U84 ( .B0(n75), .B1(n170), .A0N(\FIFO_MEM[0][0] ), .A1N(n75), .Y(
        n86) );
  OAI2BB2X1M U85 ( .B0(n75), .B1(n171), .A0N(\FIFO_MEM[0][1] ), .A1N(n75), .Y(
        n87) );
  OAI2BB2X1M U86 ( .B0(n75), .B1(n172), .A0N(\FIFO_MEM[0][2] ), .A1N(n75), .Y(
        n88) );
  OAI2BB2X1M U87 ( .B0(n75), .B1(n173), .A0N(\FIFO_MEM[0][3] ), .A1N(n75), .Y(
        n89) );
  OAI2BB2X1M U88 ( .B0(n75), .B1(n174), .A0N(\FIFO_MEM[0][4] ), .A1N(n75), .Y(
        n90) );
  OAI2BB2X1M U89 ( .B0(n75), .B1(n175), .A0N(\FIFO_MEM[0][5] ), .A1N(n75), .Y(
        n91) );
  OAI2BB2X1M U90 ( .B0(n75), .B1(n176), .A0N(\FIFO_MEM[0][6] ), .A1N(n75), .Y(
        n92) );
  OAI2BB2X1M U91 ( .B0(n75), .B1(n177), .A0N(\FIFO_MEM[0][7] ), .A1N(n75), .Y(
        n93) );
  OAI2BB2X1M U92 ( .B0(n170), .B1(n79), .A0N(\FIFO_MEM[3][0] ), .A1N(n79), .Y(
        n110) );
  OAI2BB2X1M U93 ( .B0(n171), .B1(n79), .A0N(\FIFO_MEM[3][1] ), .A1N(n79), .Y(
        n111) );
  OAI2BB2X1M U94 ( .B0(n172), .B1(n79), .A0N(\FIFO_MEM[3][2] ), .A1N(n79), .Y(
        n112) );
  OAI2BB2X1M U95 ( .B0(n173), .B1(n79), .A0N(\FIFO_MEM[3][3] ), .A1N(n79), .Y(
        n113) );
  OAI2BB2X1M U96 ( .B0(n174), .B1(n79), .A0N(\FIFO_MEM[3][4] ), .A1N(n79), .Y(
        n114) );
  OAI2BB2X1M U97 ( .B0(n175), .B1(n79), .A0N(\FIFO_MEM[3][5] ), .A1N(n79), .Y(
        n115) );
  OAI2BB2X1M U98 ( .B0(n176), .B1(n79), .A0N(\FIFO_MEM[3][6] ), .A1N(n79), .Y(
        n116) );
  OAI2BB2X1M U99 ( .B0(n177), .B1(n79), .A0N(\FIFO_MEM[3][7] ), .A1N(n79), .Y(
        n117) );
  OAI2BB2X1M U100 ( .B0(n170), .B1(n77), .A0N(\FIFO_MEM[1][0] ), .A1N(n77), 
        .Y(n94) );
  OAI2BB2X1M U101 ( .B0(n171), .B1(n77), .A0N(\FIFO_MEM[1][1] ), .A1N(n77), 
        .Y(n95) );
  OAI2BB2X1M U102 ( .B0(n172), .B1(n77), .A0N(\FIFO_MEM[1][2] ), .A1N(n77), 
        .Y(n96) );
  OAI2BB2X1M U103 ( .B0(n173), .B1(n77), .A0N(\FIFO_MEM[1][3] ), .A1N(n77), 
        .Y(n97) );
  OAI2BB2X1M U104 ( .B0(n174), .B1(n77), .A0N(\FIFO_MEM[1][4] ), .A1N(n77), 
        .Y(n98) );
  OAI2BB2X1M U105 ( .B0(n175), .B1(n77), .A0N(\FIFO_MEM[1][5] ), .A1N(n77), 
        .Y(n99) );
  OAI2BB2X1M U106 ( .B0(n176), .B1(n77), .A0N(\FIFO_MEM[1][6] ), .A1N(n77), 
        .Y(n100) );
  OAI2BB2X1M U107 ( .B0(n177), .B1(n77), .A0N(\FIFO_MEM[1][7] ), .A1N(n77), 
        .Y(n101) );
  OAI2BB2X1M U108 ( .B0(n170), .B1(n81), .A0N(\FIFO_MEM[4][0] ), .A1N(n81), 
        .Y(n118) );
  OAI2BB2X1M U109 ( .B0(n171), .B1(n81), .A0N(\FIFO_MEM[4][1] ), .A1N(n81), 
        .Y(n119) );
  OAI2BB2X1M U110 ( .B0(n172), .B1(n81), .A0N(\FIFO_MEM[4][2] ), .A1N(n81), 
        .Y(n120) );
  OAI2BB2X1M U111 ( .B0(n173), .B1(n81), .A0N(\FIFO_MEM[4][3] ), .A1N(n81), 
        .Y(n121) );
  OAI2BB2X1M U112 ( .B0(n174), .B1(n81), .A0N(\FIFO_MEM[4][4] ), .A1N(n81), 
        .Y(n122) );
  OAI2BB2X1M U113 ( .B0(n175), .B1(n81), .A0N(\FIFO_MEM[4][5] ), .A1N(n81), 
        .Y(n123) );
  OAI2BB2X1M U114 ( .B0(n176), .B1(n81), .A0N(\FIFO_MEM[4][6] ), .A1N(n81), 
        .Y(n124) );
  OAI2BB2X1M U115 ( .B0(n177), .B1(n81), .A0N(\FIFO_MEM[4][7] ), .A1N(n81), 
        .Y(n125) );
  INVX2M U116 ( .A(w_data[0]), .Y(n170) );
  INVX2M U117 ( .A(w_data[1]), .Y(n171) );
  INVX2M U118 ( .A(w_data[2]), .Y(n172) );
  INVX2M U119 ( .A(w_data[3]), .Y(n173) );
  INVX2M U120 ( .A(w_data[4]), .Y(n174) );
  INVX2M U121 ( .A(w_data[5]), .Y(n175) );
  INVX2M U122 ( .A(w_data[6]), .Y(n176) );
  INVX2M U123 ( .A(w_data[7]), .Y(n177) );
  OAI2BB2X1M U124 ( .B0(n170), .B1(n161), .A0N(\FIFO_MEM[2][0] ), .A1N(n161), 
        .Y(n102) );
  OAI2BB2X1M U125 ( .B0(n171), .B1(n161), .A0N(\FIFO_MEM[2][1] ), .A1N(n161), 
        .Y(n103) );
  OAI2BB2X1M U126 ( .B0(n172), .B1(n161), .A0N(\FIFO_MEM[2][2] ), .A1N(n161), 
        .Y(n104) );
  OAI2BB2X1M U127 ( .B0(n173), .B1(n161), .A0N(\FIFO_MEM[2][3] ), .A1N(n161), 
        .Y(n105) );
  OAI2BB2X1M U128 ( .B0(n174), .B1(n161), .A0N(\FIFO_MEM[2][4] ), .A1N(n161), 
        .Y(n106) );
  OAI2BB2X1M U129 ( .B0(n175), .B1(n161), .A0N(\FIFO_MEM[2][5] ), .A1N(n161), 
        .Y(n107) );
  OAI2BB2X1M U130 ( .B0(n176), .B1(n161), .A0N(\FIFO_MEM[2][6] ), .A1N(n161), 
        .Y(n108) );
  OAI2BB2X1M U131 ( .B0(n177), .B1(n161), .A0N(\FIFO_MEM[2][7] ), .A1N(n161), 
        .Y(n109) );
  OAI2BB2X1M U132 ( .B0(n170), .B1(n160), .A0N(\FIFO_MEM[5][0] ), .A1N(n160), 
        .Y(n126) );
  OAI2BB2X1M U133 ( .B0(n171), .B1(n160), .A0N(\FIFO_MEM[5][1] ), .A1N(n160), 
        .Y(n127) );
  OAI2BB2X1M U134 ( .B0(n172), .B1(n160), .A0N(\FIFO_MEM[5][2] ), .A1N(n160), 
        .Y(n128) );
  OAI2BB2X1M U135 ( .B0(n173), .B1(n160), .A0N(\FIFO_MEM[5][3] ), .A1N(n160), 
        .Y(n129) );
  OAI2BB2X1M U136 ( .B0(n174), .B1(n160), .A0N(\FIFO_MEM[5][4] ), .A1N(n160), 
        .Y(n130) );
  OAI2BB2X1M U137 ( .B0(n175), .B1(n160), .A0N(\FIFO_MEM[5][5] ), .A1N(n160), 
        .Y(n131) );
  OAI2BB2X1M U138 ( .B0(n176), .B1(n160), .A0N(\FIFO_MEM[5][6] ), .A1N(n160), 
        .Y(n132) );
  OAI2BB2X1M U139 ( .B0(n177), .B1(n160), .A0N(\FIFO_MEM[5][7] ), .A1N(n160), 
        .Y(n133) );
  OAI2BB2X1M U140 ( .B0(n170), .B1(n159), .A0N(\FIFO_MEM[6][0] ), .A1N(n159), 
        .Y(n134) );
  OAI2BB2X1M U141 ( .B0(n171), .B1(n159), .A0N(\FIFO_MEM[6][1] ), .A1N(n159), 
        .Y(n135) );
  OAI2BB2X1M U142 ( .B0(n172), .B1(n159), .A0N(\FIFO_MEM[6][2] ), .A1N(n159), 
        .Y(n136) );
  OAI2BB2X1M U143 ( .B0(n173), .B1(n159), .A0N(\FIFO_MEM[6][3] ), .A1N(n159), 
        .Y(n137) );
  OAI2BB2X1M U144 ( .B0(n174), .B1(n159), .A0N(\FIFO_MEM[6][4] ), .A1N(n159), 
        .Y(n138) );
  OAI2BB2X1M U145 ( .B0(n175), .B1(n159), .A0N(\FIFO_MEM[6][5] ), .A1N(n159), 
        .Y(n139) );
  OAI2BB2X1M U146 ( .B0(n176), .B1(n159), .A0N(\FIFO_MEM[6][6] ), .A1N(n159), 
        .Y(n140) );
  OAI2BB2X1M U147 ( .B0(n177), .B1(n159), .A0N(\FIFO_MEM[6][7] ), .A1N(n159), 
        .Y(n141) );
  OAI2BB2X1M U148 ( .B0(n170), .B1(n158), .A0N(\FIFO_MEM[7][0] ), .A1N(n158), 
        .Y(n142) );
  OAI2BB2X1M U149 ( .B0(n171), .B1(n158), .A0N(\FIFO_MEM[7][1] ), .A1N(n158), 
        .Y(n143) );
  OAI2BB2X1M U150 ( .B0(n172), .B1(n158), .A0N(\FIFO_MEM[7][2] ), .A1N(n158), 
        .Y(n144) );
  OAI2BB2X1M U151 ( .B0(n173), .B1(n158), .A0N(\FIFO_MEM[7][3] ), .A1N(n158), 
        .Y(n145) );
  OAI2BB2X1M U152 ( .B0(n174), .B1(n158), .A0N(\FIFO_MEM[7][4] ), .A1N(n158), 
        .Y(n146) );
  OAI2BB2X1M U153 ( .B0(n175), .B1(n158), .A0N(\FIFO_MEM[7][5] ), .A1N(n158), 
        .Y(n147) );
  OAI2BB2X1M U154 ( .B0(n176), .B1(n158), .A0N(\FIFO_MEM[7][6] ), .A1N(n158), 
        .Y(n148) );
  OAI2BB2X1M U155 ( .B0(n177), .B1(n158), .A0N(\FIFO_MEM[7][7] ), .A1N(n158), 
        .Y(n149) );
  NAND3X2M U156 ( .A(w_addr[1]), .B(w_addr[0]), .C(n82), .Y(n85) );
  AND2X2M U157 ( .A(w_addr[2]), .B(n80), .Y(n82) );
  NAND3X2M U158 ( .A(n76), .B(n178), .C(w_addr[1]), .Y(n78) );
  NAND3X2M U159 ( .A(w_addr[0]), .B(n179), .C(n82), .Y(n83) );
  NAND3X2M U160 ( .A(w_addr[1]), .B(n178), .C(n82), .Y(n84) );
  INVX2M U161 ( .A(w_addr[1]), .Y(n179) );
  INVX2M U162 ( .A(w_addr[0]), .Y(n178) );
  MX2X2M U163 ( .A(n66), .B(n65), .S0(N11), .Y(r_data[0]) );
  MX4X1M U164 ( .A(\FIFO_MEM[0][0] ), .B(\FIFO_MEM[1][0] ), .C(
        \FIFO_MEM[2][0] ), .D(\FIFO_MEM[3][0] ), .S0(n157), .S1(N10), .Y(n66)
         );
  MX4X1M U165 ( .A(\FIFO_MEM[4][0] ), .B(\FIFO_MEM[5][0] ), .C(
        \FIFO_MEM[6][0] ), .D(\FIFO_MEM[7][0] ), .S0(n156), .S1(N10), .Y(n65)
         );
  MX2X2M U166 ( .A(n68), .B(n67), .S0(N11), .Y(r_data[1]) );
  MX4X1M U167 ( .A(\FIFO_MEM[0][1] ), .B(\FIFO_MEM[1][1] ), .C(
        \FIFO_MEM[2][1] ), .D(\FIFO_MEM[3][1] ), .S0(n157), .S1(N10), .Y(n68)
         );
  MX4X1M U168 ( .A(\FIFO_MEM[4][1] ), .B(\FIFO_MEM[5][1] ), .C(
        \FIFO_MEM[6][1] ), .D(\FIFO_MEM[7][1] ), .S0(n156), .S1(N10), .Y(n67)
         );
  MX2X2M U169 ( .A(n70), .B(n69), .S0(N11), .Y(r_data[2]) );
  MX4X1M U170 ( .A(\FIFO_MEM[0][2] ), .B(\FIFO_MEM[1][2] ), .C(
        \FIFO_MEM[2][2] ), .D(\FIFO_MEM[3][2] ), .S0(n157), .S1(N10), .Y(n70)
         );
  MX4X1M U171 ( .A(\FIFO_MEM[4][2] ), .B(\FIFO_MEM[5][2] ), .C(
        \FIFO_MEM[6][2] ), .D(\FIFO_MEM[7][2] ), .S0(n156), .S1(N10), .Y(n69)
         );
  MX2X2M U172 ( .A(n72), .B(n71), .S0(N11), .Y(r_data[3]) );
  MX4X1M U173 ( .A(\FIFO_MEM[0][3] ), .B(\FIFO_MEM[1][3] ), .C(
        \FIFO_MEM[2][3] ), .D(\FIFO_MEM[3][3] ), .S0(n157), .S1(N10), .Y(n72)
         );
  MX4X1M U174 ( .A(\FIFO_MEM[4][3] ), .B(\FIFO_MEM[5][3] ), .C(
        \FIFO_MEM[6][3] ), .D(\FIFO_MEM[7][3] ), .S0(n156), .S1(N10), .Y(n71)
         );
  MX2X2M U175 ( .A(n74), .B(n73), .S0(N11), .Y(r_data[4]) );
  MX4X1M U176 ( .A(\FIFO_MEM[0][4] ), .B(\FIFO_MEM[1][4] ), .C(
        \FIFO_MEM[2][4] ), .D(\FIFO_MEM[3][4] ), .S0(n157), .S1(N10), .Y(n74)
         );
  MX4X1M U177 ( .A(\FIFO_MEM[4][4] ), .B(\FIFO_MEM[5][4] ), .C(
        \FIFO_MEM[6][4] ), .D(\FIFO_MEM[7][4] ), .S0(n156), .S1(N10), .Y(n73)
         );
  MX2X2M U178 ( .A(n151), .B(n150), .S0(N11), .Y(r_data[5]) );
  MX4X1M U179 ( .A(\FIFO_MEM[0][5] ), .B(\FIFO_MEM[1][5] ), .C(
        \FIFO_MEM[2][5] ), .D(\FIFO_MEM[3][5] ), .S0(n157), .S1(N10), .Y(n151)
         );
  MX4X1M U180 ( .A(\FIFO_MEM[4][5] ), .B(\FIFO_MEM[5][5] ), .C(
        \FIFO_MEM[6][5] ), .D(\FIFO_MEM[7][5] ), .S0(n156), .S1(N10), .Y(n150)
         );
  MX2X2M U181 ( .A(n153), .B(n152), .S0(N11), .Y(r_data[6]) );
  MX4X1M U182 ( .A(\FIFO_MEM[0][6] ), .B(\FIFO_MEM[1][6] ), .C(
        \FIFO_MEM[2][6] ), .D(\FIFO_MEM[3][6] ), .S0(n157), .S1(N10), .Y(n153)
         );
  MX4X1M U183 ( .A(\FIFO_MEM[4][6] ), .B(\FIFO_MEM[5][6] ), .C(
        \FIFO_MEM[6][6] ), .D(\FIFO_MEM[7][6] ), .S0(n156), .S1(N10), .Y(n152)
         );
  MX2X2M U184 ( .A(n155), .B(n154), .S0(N11), .Y(r_data[7]) );
  MX4X1M U185 ( .A(\FIFO_MEM[0][7] ), .B(\FIFO_MEM[1][7] ), .C(
        \FIFO_MEM[2][7] ), .D(\FIFO_MEM[3][7] ), .S0(n157), .S1(N10), .Y(n155)
         );
  MX4X1M U186 ( .A(\FIFO_MEM[4][7] ), .B(\FIFO_MEM[5][7] ), .C(
        \FIFO_MEM[6][7] ), .D(\FIFO_MEM[7][7] ), .S0(n156), .S1(N10), .Y(n154)
         );
  BUFX2M U187 ( .A(N9), .Y(n156) );
  BUFX2M U188 ( .A(N9), .Y(n157) );
  INVXLM U189 ( .A(test_se), .Y(n182) );
  INVXLM U190 ( .A(n182), .Y(n183) );
  INVXLM U191 ( .A(n182), .Y(n184) );
  INVXLM U192 ( .A(n182), .Y(n185) );
  INVXLM U193 ( .A(n182), .Y(n186) );
endmodule


module fifo_rd_P_SIZE4_test_1 ( r_clk, r_rstn, r_inc, sync_wr_ptr, rd_addr, 
        empty, gray_rd_ptr, test_si, test_so, test_se );
  input [3:0] sync_wr_ptr;
  output [2:0] rd_addr;
  output [3:0] gray_rd_ptr;
  input r_clk, r_rstn, r_inc, test_si, test_se;
  output empty, test_so;
  wire   N89, N90, N91, N92, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n1, n2, n11, n12;
  assign test_so = N92;

  SDFFRQX2M \rd_ptr_reg[3]  ( .D(n25), .SI(n11), .SE(test_se), .CK(r_clk), 
        .RN(r_rstn), .Q(N92) );
  SDFFRQX2M \rd_ptr_reg[0]  ( .D(n28), .SI(gray_rd_ptr[3]), .SE(test_se), .CK(
        r_clk), .RN(r_rstn), .Q(rd_addr[0]) );
  SDFFRQX2M \rd_ptr_reg[2]  ( .D(n26), .SI(rd_addr[1]), .SE(test_se), .CK(
        r_clk), .RN(r_rstn), .Q(rd_addr[2]) );
  SDFFRQX2M \gray_rd_ptr_reg[0]  ( .D(N89), .SI(test_si), .SE(test_se), .CK(
        r_clk), .RN(r_rstn), .Q(gray_rd_ptr[0]) );
  SDFFRQX2M \gray_rd_ptr_reg[3]  ( .D(N92), .SI(gray_rd_ptr[2]), .SE(test_se), 
        .CK(r_clk), .RN(r_rstn), .Q(gray_rd_ptr[3]) );
  SDFFRQX2M \gray_rd_ptr_reg[2]  ( .D(N91), .SI(gray_rd_ptr[1]), .SE(test_se), 
        .CK(r_clk), .RN(r_rstn), .Q(gray_rd_ptr[2]) );
  SDFFRQX2M \gray_rd_ptr_reg[1]  ( .D(N90), .SI(gray_rd_ptr[0]), .SE(test_se), 
        .CK(r_clk), .RN(r_rstn), .Q(gray_rd_ptr[1]) );
  SDFFRQX2M \rd_ptr_reg[1]  ( .D(n27), .SI(n2), .SE(test_se), .CK(r_clk), .RN(
        r_rstn), .Q(rd_addr[1]) );
  INVX2M U11 ( .A(n20), .Y(empty) );
  NOR2X2M U12 ( .A(n2), .B(n19), .Y(n18) );
  XNOR2X2M U13 ( .A(sync_wr_ptr[2]), .B(gray_rd_ptr[2]), .Y(n24) );
  NAND4X2M U14 ( .A(n21), .B(n22), .C(n23), .D(n24), .Y(n20) );
  XNOR2X2M U15 ( .A(sync_wr_ptr[1]), .B(gray_rd_ptr[1]), .Y(n21) );
  XNOR2X2M U16 ( .A(sync_wr_ptr[0]), .B(gray_rd_ptr[0]), .Y(n22) );
  XNOR2X2M U17 ( .A(sync_wr_ptr[3]), .B(gray_rd_ptr[3]), .Y(n23) );
  XNOR2X2M U18 ( .A(n11), .B(rd_addr[1]), .Y(N90) );
  XNOR2X2M U19 ( .A(rd_addr[2]), .B(n17), .Y(n26) );
  XNOR2X2M U20 ( .A(rd_addr[1]), .B(n2), .Y(N89) );
  XNOR2X2M U21 ( .A(rd_addr[0]), .B(n19), .Y(n28) );
  OAI211X2M U22 ( .A0(n1), .A1(n12), .B0(n15), .C0(n16), .Y(n25) );
  NAND3X2M U23 ( .A(n1), .B(n12), .C(rd_addr[2]), .Y(n15) );
  INVX2M U24 ( .A(N92), .Y(n12) );
  INVX2M U25 ( .A(n17), .Y(n1) );
  NAND2X2M U26 ( .A(rd_addr[1]), .B(n18), .Y(n17) );
  OAI21X2M U27 ( .A0(N92), .A1(n11), .B0(n16), .Y(N91) );
  INVX2M U28 ( .A(rd_addr[2]), .Y(n11) );
  NAND2X2M U29 ( .A(r_inc), .B(n20), .Y(n19) );
  NAND2X2M U30 ( .A(N92), .B(n11), .Y(n16) );
  INVX2M U31 ( .A(rd_addr[0]), .Y(n2) );
  CLKXOR2X2M U32 ( .A(rd_addr[1]), .B(n18), .Y(n27) );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_1 ( CLK, RST, ASYNC, SYNC, test_si, 
        test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_si, test_se;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] , n3, n4;

  SDFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .SI(\sync_reg[3][0] ), 
        .SE(n4), .CK(CLK), .RN(RST), .Q(SYNC[3]) );
  SDFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .SI(\sync_reg[2][0] ), 
        .SE(n4), .CK(CLK), .RN(RST), .Q(SYNC[2]) );
  SDFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .SI(\sync_reg[1][0] ), 
        .SE(n4), .CK(CLK), .RN(RST), .Q(SYNC[1]) );
  SDFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][0] ), 
        .SE(n4), .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .SI(SYNC[2]), .SE(n4), .CK(
        CLK), .RN(RST), .Q(\sync_reg[3][0] ) );
  SDFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .SI(SYNC[1]), .SE(n4), .CK(
        CLK), .RN(RST), .Q(\sync_reg[2][0] ) );
  SDFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .SI(SYNC[0]), .SE(n4), .CK(
        CLK), .RN(RST), .Q(\sync_reg[1][0] ) );
  SDFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .SI(test_si), .SE(n4), .CK(
        CLK), .RN(RST), .Q(\sync_reg[0][0] ) );
  INVXLM U11 ( .A(test_se), .Y(n3) );
  INVXLM U12 ( .A(n3), .Y(n4) );
endmodule


module fifo_wr_P_SIZE4_test_1 ( w_clk, w_rstn, w_inc, sync_rd_ptr, w_addr, 
        gray_w_ptr, full, test_si2, test_si1, test_so1, test_se );
  input [3:0] sync_rd_ptr;
  output [2:0] w_addr;
  output [3:0] gray_w_ptr;
  input w_clk, w_rstn, w_inc, test_si2, test_si1, test_se;
  output full, test_so1;
  wire   n13, N89, N90, N91, N92, n3, n4, n5, n7, n8, n9, n10, n11, n12, n16,
         n19, n21, n23, n1, n14, n2;
  assign test_so1 = N92;

  SDFFRQX2M \w_ptr_reg[3]  ( .D(n16), .SI(w_addr[2]), .SE(test_se), .CK(w_clk), 
        .RN(w_rstn), .Q(N92) );
  SDFFRQX2M \w_ptr_reg[2]  ( .D(n19), .SI(w_addr[1]), .SE(test_se), .CK(w_clk), 
        .RN(w_rstn), .Q(w_addr[2]) );
  SDFFRQX2M \w_ptr_reg[0]  ( .D(n23), .SI(gray_w_ptr[3]), .SE(test_se), .CK(
        w_clk), .RN(w_rstn), .Q(w_addr[0]) );
  SDFFRQX2M \gray_w_ptr_reg[0]  ( .D(N89), .SI(test_si1), .SE(test_se), .CK(
        w_clk), .RN(w_rstn), .Q(gray_w_ptr[0]) );
  SDFFRQX2M \gray_w_ptr_reg[3]  ( .D(N92), .SI(gray_w_ptr[2]), .SE(test_se), 
        .CK(w_clk), .RN(w_rstn), .Q(gray_w_ptr[3]) );
  SDFFRQX2M \gray_w_ptr_reg[2]  ( .D(N91), .SI(test_si2), .SE(test_se), .CK(
        w_clk), .RN(w_rstn), .Q(gray_w_ptr[2]) );
  SDFFRQX2M \w_ptr_reg[1]  ( .D(n21), .SI(n1), .SE(test_se), .CK(w_clk), .RN(
        w_rstn), .Q(w_addr[1]) );
  NOR2X2M U3 ( .A(n1), .B(n7), .Y(n5) );
  INVX2M U4 ( .A(n8), .Y(full) );
  NAND2X2M U5 ( .A(w_inc), .B(n8), .Y(n7) );
  XNOR2X2M U6 ( .A(w_addr[2]), .B(n4), .Y(n19) );
  XNOR2X2M U7 ( .A(N92), .B(n3), .Y(n16) );
  NAND2BX2M U8 ( .AN(n4), .B(w_addr[2]), .Y(n3) );
  XNOR2X2M U9 ( .A(w_addr[0]), .B(n7), .Y(n23) );
  NAND4X2M U10 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(n8) );
  XNOR2X2M U11 ( .A(sync_rd_ptr[0]), .B(gray_w_ptr[0]), .Y(n9) );
  XNOR2X2M U12 ( .A(sync_rd_ptr[1]), .B(n14), .Y(n10) );
  CLKXOR2X2M U13 ( .A(sync_rd_ptr[2]), .B(gray_w_ptr[2]), .Y(n11) );
  NAND2X2M U14 ( .A(w_addr[1]), .B(n5), .Y(n4) );
  CLKXOR2X2M U15 ( .A(sync_rd_ptr[3]), .B(gray_w_ptr[3]), .Y(n12) );
  CLKXOR2X2M U16 ( .A(w_addr[1]), .B(n5), .Y(n21) );
  XNOR2X2M U17 ( .A(w_addr[1]), .B(n1), .Y(N89) );
  INVX2M U18 ( .A(w_addr[0]), .Y(n1) );
  CLKXOR2X2M U19 ( .A(w_addr[2]), .B(w_addr[1]), .Y(N90) );
  CLKXOR2X2M U20 ( .A(w_addr[2]), .B(N92), .Y(N91) );
  DLY1X1M U29 ( .A(gray_w_ptr[1]), .Y(n14) );
  SDFFRQX4M \gray_w_ptr_reg[1]  ( .D(N90), .SI(gray_w_ptr[0]), .SE(test_se), 
        .CK(w_clk), .RN(w_rstn), .Q(n13) );
  INVXLM U21 ( .A(n13), .Y(n2) );
  INVX8M U22 ( .A(n2), .Y(gray_w_ptr[1]) );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_0 ( CLK, RST, ASYNC, SYNC, test_si, 
        test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_si, test_se;
  wire   \sync_reg[3][0] , \sync_reg[2][0] , \sync_reg[1][0] ,
         \sync_reg[0][0] ;

  SDFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .SI(\sync_reg[1][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[1]) );
  SDFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .SI(\sync_reg[3][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[3]) );
  SDFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .SI(\sync_reg[2][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[2]) );
  SDFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .SI(SYNC[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[3][0] ) );
  SDFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .SI(SYNC[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[2][0] ) );
  SDFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[1][0] ) );
  SDFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[0][0] ) );
endmodule


module Async_fifo_D_SIZE8_F_DEPTH8_P_SIZE4_test_1 ( i_w_clk, i_w_rstn, i_w_inc, 
        i_r_clk, i_r_rstn, i_r_inc, i_w_data, o_r_data, o_full, o_empty, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] i_w_data;
  output [7:0] o_r_data;
  input i_w_clk, i_w_rstn, i_w_inc, i_r_clk, i_r_rstn, i_r_inc, test_si2,
         test_si1, test_se;
  output o_full, o_empty, test_so2, test_so1;
  wire   n1, n2, n3, n4, n5;
  wire   [2:0] w_addr;
  wire   [2:0] r_addr;
  wire   [3:0] w2r_ptr;
  wire   [3:0] gray_rd_ptr;
  wire   [3:0] gray_w_ptr;
  wire   [3:0] r2w_ptr;
  assign test_so2 = w2r_ptr[3];
  assign test_so1 = gray_w_ptr[1];

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(i_w_rstn), .Y(n2) );
  fifo_mem_D_SIZE8_F_DEPTH8_P_SIZE4_test_1 u_fifo_mem ( .w_clk(i_w_clk), 
        .w_rstn(n1), .w_full(o_full), .w_inc(i_w_inc), .w_addr(w_addr), 
        .r_addr(r_addr), .w_data(i_w_data), .r_data(o_r_data), .test_si(
        test_si1), .test_so(n5), .test_se(test_se) );
  fifo_rd_P_SIZE4_test_1 u_fifo_rd ( .r_clk(i_r_clk), .r_rstn(i_r_rstn), 
        .r_inc(i_r_inc), .sync_wr_ptr(w2r_ptr), .rd_addr(r_addr), .empty(
        o_empty), .gray_rd_ptr(gray_rd_ptr), .test_si(n5), .test_so(n4), 
        .test_se(test_se) );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_1 u_w2r_sync ( .CLK(i_r_clk), .RST(
        i_r_rstn), .ASYNC(gray_w_ptr), .SYNC(w2r_ptr), .test_si(r2w_ptr[3]), 
        .test_se(test_se) );
  fifo_wr_P_SIZE4_test_1 u_fifo_wr ( .w_clk(i_w_clk), .w_rstn(n1), .w_inc(
        i_w_inc), .sync_rd_ptr(r2w_ptr), .w_addr(w_addr), .gray_w_ptr(
        gray_w_ptr), .full(o_full), .test_si2(test_si2), .test_si1(n4), 
        .test_so1(n3), .test_se(test_se) );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_0 u_r2w_sync ( .CLK(i_w_clk), .RST(n1), 
        .ASYNC(gray_rd_ptr), .SYNC(r2w_ptr), .test_si(n3), .test_se(test_se)
         );
endmodule


module PULSE_GEN_test_1 ( clk, rst, lvl_sig, pulse_sig, test_si, test_so, 
        test_se );
  input clk, rst, lvl_sig, test_si, test_se;
  output pulse_sig, test_so;
  wire   pls_flop, rcv_flop;
  assign test_so = rcv_flop;

  SDFFRQX2M rcv_flop_reg ( .D(lvl_sig), .SI(pls_flop), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(rcv_flop) );
  SDFFRQX2M pls_flop_reg ( .D(rcv_flop), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(pls_flop) );
  NOR2BX2M U5 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
endmodule


module Integer_Clock_Divider_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module Integer_Clock_Divider_test_0 ( i_ref_clk, i_rst_n, i_clk_en, 
        i_div_ratio, o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, gen_clk, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N22, N23,
         N24, N25, N26, N27, N28, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n1, n2, n3, n4, n5, n6, n7, n16, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50;
  wire   [6:0] counter;
  assign test_so = gen_clk;

  SDFFRQX2M gen_clk_reg ( .D(n23), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(gen_clk) );
  SDFFRQX2M \counter_reg[6]  ( .D(n24), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n30), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[3]  ( .D(n27), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n28), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[5]  ( .D(n25), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[4]  ( .D(n26), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[1]  ( .D(n29), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  NOR2X2M U5 ( .A(n18), .B(n1), .Y(n19) );
  CLKXOR2X2M U6 ( .A(n50), .B(n17), .Y(n23) );
  NAND2BX2M U7 ( .AN(n1), .B(n18), .Y(n17) );
  OAI2B1X2M U10 ( .A1N(N15), .A0(i_div_ratio[0]), .B0(n20), .Y(n18) );
  AOI22X1M U15 ( .A0(gen_clk), .A1(N15), .B0(N16), .B1(n50), .Y(n20) );
  OR2X2M U16 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  AO22X1M U17 ( .A0(counter[1]), .A1(n1), .B0(N23), .B1(n19), .Y(n29) );
  AO22X1M U18 ( .A0(counter[2]), .A1(n1), .B0(N24), .B1(n19), .Y(n28) );
  AO22X1M U19 ( .A0(counter[3]), .A1(n1), .B0(N25), .B1(n19), .Y(n27) );
  AO22X1M U20 ( .A0(counter[4]), .A1(n1), .B0(N26), .B1(n19), .Y(n26) );
  AO22X1M U21 ( .A0(counter[5]), .A1(n1), .B0(N27), .B1(n19), .Y(n25) );
  AO22X1M U22 ( .A0(counter[6]), .A1(n1), .B0(N28), .B1(n19), .Y(n24) );
  AO22X1M U23 ( .A0(counter[0]), .A1(n1), .B0(N22), .B1(n19), .Y(n30) );
  BUFX2M U24 ( .A(N2), .Y(n1) );
  OAI2BB1X2M U25 ( .A0N(n21), .A1N(n22), .B0(i_clk_en), .Y(N2) );
  NOR3X2M U26 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n21) );
  NOR4X1M U27 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n22) );
  INVX2M U28 ( .A(gen_clk), .Y(n50) );
  MX2X2M U29 ( .A(gen_clk), .B(i_ref_clk), .S0(n1), .Y(o_div_clk) );
  CLKINVX1M U30 ( .A(i_div_ratio[1]), .Y(N7) );
  OAI2BB1X1M U31 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n2), .Y(N8)
         );
  OR2X1M U32 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U33 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(N9) );
  OR2X1M U34 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U35 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(N10) );
  OR2X1M U36 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U37 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(N11) );
  XNOR2X1M U38 ( .A(i_div_ratio[6]), .B(n5), .Y(N12) );
  NOR3X1M U39 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n5), .Y(N14) );
  OAI21X1M U40 ( .A0(i_div_ratio[6]), .A1(n5), .B0(i_div_ratio[7]), .Y(n6) );
  NAND2BX1M U41 ( .AN(N14), .B(n6), .Y(N13) );
  NOR2BX1M U42 ( .AN(N7), .B(counter[0]), .Y(n7) );
  OAI2B2X1M U43 ( .A1N(counter[1]), .A0(n7), .B0(N8), .B1(n7), .Y(n33) );
  XNOR2X1M U44 ( .A(N9), .B(counter[2]), .Y(n32) );
  NOR2BX1M U45 ( .AN(counter[0]), .B(N7), .Y(n16) );
  OAI2B2X1M U46 ( .A1N(N8), .A0(n16), .B0(counter[1]), .B1(n16), .Y(n31) );
  NAND4BX1M U47 ( .AN(N14), .B(n33), .C(n32), .D(n31), .Y(n39) );
  XNOR2X1M U48 ( .A(N13), .B(counter[6]), .Y(n37) );
  XNOR2X1M U49 ( .A(N12), .B(counter[5]), .Y(n36) );
  XNOR2X1M U50 ( .A(N11), .B(counter[4]), .Y(n35) );
  XNOR2X1M U51 ( .A(N10), .B(counter[3]), .Y(n34) );
  NAND4X1M U52 ( .A(n37), .B(n36), .C(n35), .D(n34), .Y(n38) );
  NOR2X1M U53 ( .A(n39), .B(n38), .Y(N15) );
  XNOR2X1M U54 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n45) );
  XNOR2X1M U55 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n44) );
  NOR2BX1M U56 ( .AN(i_div_ratio[1]), .B(counter[0]), .Y(n40) );
  OAI2B2X1M U57 ( .A1N(counter[1]), .A0(n40), .B0(i_div_ratio[2]), .B1(n40), 
        .Y(n43) );
  NOR2BX1M U58 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n41) );
  OAI2B2X1M U59 ( .A1N(i_div_ratio[2]), .A0(n41), .B0(counter[1]), .B1(n41), 
        .Y(n42) );
  NAND4X1M U60 ( .A(n45), .B(n44), .C(n43), .D(n42), .Y(n49) );
  CLKXOR2X2M U61 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n48) );
  CLKXOR2X2M U62 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n47) );
  CLKXOR2X2M U63 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n46) );
  NOR4X1M U64 ( .A(n49), .B(n48), .C(n47), .D(n46), .Y(N16) );
  Integer_Clock_Divider_0_DW01_inc_0 add_53 ( .A(counter), .SUM({N28, N27, N26, 
        N25, N24, N23, N22}) );
endmodule


module CLKDIV_MUX ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  NAND2X2M U11 ( .A(n7), .B(n6), .Y(n9) );
  NOR3X2M U12 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NAND4BX1M U13 ( .AN(IN[4]), .B(IN[3]), .C(n15), .D(n14), .Y(n6) );
  NAND4BX1M U14 ( .AN(IN[3]), .B(IN[4]), .C(n15), .D(n14), .Y(n7) );
  OAI211X2M U15 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NOR3X2M U16 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  NOR4X1M U17 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U18 ( .A(n17), .B(n16), .C(IN[2]), .Y(n5) );
  INVX2M U19 ( .A(IN[1]), .Y(n16) );
  INVX2M U20 ( .A(IN[0]), .Y(n17) );
  INVX2M U21 ( .A(IN[2]), .Y(n15) );
  INVX2M U22 ( .A(IN[5]), .Y(n14) );
  NOR4X1M U23 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n15), .Y(n8) );
  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[7]) );
endmodule


module Integer_Clock_Divider_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module Integer_Clock_Divider_test_1 ( i_ref_clk, i_rst_n, i_clk_en, 
        i_div_ratio, o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, gen_clk, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N22, N23,
         N24, N25, N26, N27, N28, n1, n2, n3, n4, n5, n6, n7, n16, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;
  wire   [6:0] counter;
  assign test_so = gen_clk;

  SDFFRQX2M gen_clk_reg ( .D(n58), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(gen_clk) );
  SDFFRQX2M \counter_reg[6]  ( .D(n57), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n51), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[3]  ( .D(n54), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n53), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[5]  ( .D(n56), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[4]  ( .D(n55), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[1]  ( .D(n52), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  NOR2X2M U5 ( .A(n63), .B(n1), .Y(n62) );
  OR2X2M U6 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  CLKXOR2X2M U7 ( .A(n50), .B(n64), .Y(n58) );
  NAND2BX2M U10 ( .AN(n1), .B(n63), .Y(n64) );
  OAI2B1X2M U15 ( .A1N(N15), .A0(i_div_ratio[0]), .B0(n61), .Y(n63) );
  AOI22X1M U16 ( .A0(gen_clk), .A1(N15), .B0(N16), .B1(n50), .Y(n61) );
  AO22X1M U17 ( .A0(counter[1]), .A1(n1), .B0(N23), .B1(n62), .Y(n52) );
  AO22X1M U18 ( .A0(counter[2]), .A1(n1), .B0(N24), .B1(n62), .Y(n53) );
  AO22X1M U19 ( .A0(counter[3]), .A1(n1), .B0(N25), .B1(n62), .Y(n54) );
  AO22X1M U20 ( .A0(counter[4]), .A1(n1), .B0(N26), .B1(n62), .Y(n55) );
  AO22X1M U21 ( .A0(counter[5]), .A1(n1), .B0(N27), .B1(n62), .Y(n56) );
  AO22X1M U22 ( .A0(counter[6]), .A1(n1), .B0(N28), .B1(n62), .Y(n57) );
  AO22X1M U23 ( .A0(counter[0]), .A1(n1), .B0(N22), .B1(n62), .Y(n51) );
  BUFX2M U24 ( .A(N2), .Y(n1) );
  OAI2BB1X2M U25 ( .A0N(n60), .A1N(n59), .B0(i_clk_en), .Y(N2) );
  NOR4X1M U26 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n59) );
  NOR3X2M U27 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n60) );
  INVX2M U28 ( .A(gen_clk), .Y(n50) );
  MX2X2M U29 ( .A(gen_clk), .B(i_ref_clk), .S0(n1), .Y(o_div_clk) );
  CLKINVX1M U30 ( .A(i_div_ratio[1]), .Y(N7) );
  OAI2BB1X1M U31 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n2), .Y(N8)
         );
  OR2X1M U32 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U33 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(N9) );
  OR2X1M U34 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U35 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(N10) );
  OR2X1M U36 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U37 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(N11) );
  XNOR2X1M U38 ( .A(i_div_ratio[6]), .B(n5), .Y(N12) );
  NOR3X1M U39 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n5), .Y(N14) );
  OAI21X1M U40 ( .A0(i_div_ratio[6]), .A1(n5), .B0(i_div_ratio[7]), .Y(n6) );
  NAND2BX1M U41 ( .AN(N14), .B(n6), .Y(N13) );
  NOR2BX1M U42 ( .AN(N7), .B(counter[0]), .Y(n7) );
  OAI2B2X1M U43 ( .A1N(counter[1]), .A0(n7), .B0(N8), .B1(n7), .Y(n33) );
  XNOR2X1M U44 ( .A(N9), .B(counter[2]), .Y(n32) );
  NOR2BX1M U45 ( .AN(counter[0]), .B(N7), .Y(n16) );
  OAI2B2X1M U46 ( .A1N(N8), .A0(n16), .B0(counter[1]), .B1(n16), .Y(n31) );
  NAND4BX1M U47 ( .AN(N14), .B(n33), .C(n32), .D(n31), .Y(n39) );
  XNOR2X1M U48 ( .A(N13), .B(counter[6]), .Y(n37) );
  XNOR2X1M U49 ( .A(N12), .B(counter[5]), .Y(n36) );
  XNOR2X1M U50 ( .A(N11), .B(counter[4]), .Y(n35) );
  XNOR2X1M U51 ( .A(N10), .B(counter[3]), .Y(n34) );
  NAND4X1M U52 ( .A(n37), .B(n36), .C(n35), .D(n34), .Y(n38) );
  NOR2X1M U53 ( .A(n39), .B(n38), .Y(N15) );
  XNOR2X1M U54 ( .A(i_div_ratio[4]), .B(counter[3]), .Y(n45) );
  XNOR2X1M U55 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n44) );
  NOR2BX1M U56 ( .AN(i_div_ratio[1]), .B(counter[0]), .Y(n40) );
  OAI2B2X1M U57 ( .A1N(counter[1]), .A0(n40), .B0(i_div_ratio[2]), .B1(n40), 
        .Y(n43) );
  NOR2BX1M U58 ( .AN(counter[0]), .B(i_div_ratio[1]), .Y(n41) );
  OAI2B2X1M U59 ( .A1N(i_div_ratio[2]), .A0(n41), .B0(counter[1]), .B1(n41), 
        .Y(n42) );
  NAND4X1M U60 ( .A(n45), .B(n44), .C(n43), .D(n42), .Y(n49) );
  CLKXOR2X2M U61 ( .A(i_div_ratio[7]), .B(counter[6]), .Y(n48) );
  CLKXOR2X2M U62 ( .A(i_div_ratio[5]), .B(counter[4]), .Y(n47) );
  CLKXOR2X2M U63 ( .A(i_div_ratio[6]), .B(counter[5]), .Y(n46) );
  NOR4X1M U64 ( .A(n49), .B(n48), .C(n47), .D(n46), .Y(N16) );
  Integer_Clock_Divider_1_DW01_inc_0 add_53 ( .A(counter), .SUM({N28, N27, N26, 
        N25, N24, N23, N22}) );
endmodule


module UART_TX_serializer_test_1 ( CLK, RST, Data_Valid, busy, P_DATA, ser_en, 
        ser_done, S_DATA, test_si, test_se );
  input [7:0] P_DATA;
  input CLK, RST, Data_Valid, busy, ser_en, test_si, test_se;
  output ser_done, S_DATA;
  wire   n15, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n17, n18, n19, n20, n21, n22, n23, n55, n56, n59,
         n60;
  wire   [7:0] parallel_data;
  wire   [3:0] counter;

  SDFFRX1M \parallel_data_reg[0]  ( .D(n50), .SI(n55), .SE(n60), .CK(CLK), 
        .RN(RST), .Q(n56), .QN(n15) );
  SDFFRQX2M \parallel_data_reg[6]  ( .D(n44), .SI(parallel_data[5]), .SE(n60), 
        .CK(CLK), .RN(RST), .Q(parallel_data[6]) );
  SDFFRQX2M \parallel_data_reg[5]  ( .D(n45), .SI(parallel_data[4]), .SE(n60), 
        .CK(CLK), .RN(RST), .Q(parallel_data[5]) );
  SDFFRQX2M \parallel_data_reg[4]  ( .D(n46), .SI(parallel_data[3]), .SE(n60), 
        .CK(CLK), .RN(RST), .Q(parallel_data[4]) );
  SDFFRQX2M \parallel_data_reg[3]  ( .D(n47), .SI(parallel_data[2]), .SE(n60), 
        .CK(CLK), .RN(RST), .Q(parallel_data[3]) );
  SDFFRQX2M \parallel_data_reg[2]  ( .D(n48), .SI(parallel_data[1]), .SE(n60), 
        .CK(CLK), .RN(RST), .Q(parallel_data[2]) );
  SDFFRQX2M \parallel_data_reg[1]  ( .D(n49), .SI(n56), .SE(n60), .CK(CLK), 
        .RN(RST), .Q(parallel_data[1]) );
  SDFFRQX2M \parallel_data_reg[7]  ( .D(n51), .SI(parallel_data[6]), .SE(n60), 
        .CK(CLK), .RN(RST), .Q(parallel_data[7]) );
  SDFFRQX2M ser_done_reg ( .D(n42), .SI(parallel_data[7]), .SE(n60), .CK(CLK), 
        .RN(RST), .Q(ser_done) );
  SDFFRQX2M \counter_reg[3]  ( .D(n53), .SI(counter[2]), .SE(n60), .CK(CLK), 
        .RN(RST), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n54), .SI(S_DATA), .SE(n60), .CK(CLK), .RN(
        RST), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n17), .SI(counter[1]), .SE(n60), .CK(CLK), 
        .RN(RST), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[1]  ( .D(n52), .SI(n21), .SE(n60), .CK(CLK), .RN(RST), 
        .Q(counter[1]) );
  SDFFSQX1M S_DATA_reg ( .D(n43), .SI(test_si), .SE(n60), .CK(CLK), .SN(RST), 
        .Q(S_DATA) );
  NAND2X2M U18 ( .A(n20), .B(n25), .Y(n26) );
  INVX2M U19 ( .A(n28), .Y(n20) );
  INVX2M U20 ( .A(n25), .Y(n18) );
  INVX2M U21 ( .A(n40), .Y(n19) );
  NOR2BX2M U22 ( .AN(Data_Valid), .B(busy), .Y(n28) );
  OAI21X2M U23 ( .A0(n28), .A1(n41), .B0(n25), .Y(n40) );
  NAND3X2M U24 ( .A(n41), .B(n20), .C(ser_en), .Y(n25) );
  AOI21X2M U25 ( .A0(n21), .A1(n18), .B0(n19), .Y(n38) );
  NOR2X2M U26 ( .A(n21), .B(n19), .Y(n36) );
  OAI2BB2X1M U27 ( .B0(n38), .B1(n22), .A0N(n22), .A1N(n36), .Y(n52) );
  OAI21X2M U28 ( .A0(n39), .A1(n55), .B0(n24), .Y(n53) );
  AOI21X2M U29 ( .A0(n18), .A1(n23), .B0(n37), .Y(n39) );
  OAI21X2M U30 ( .A0(counter[1]), .A1(n25), .B0(n38), .Y(n37) );
  NAND4X2M U31 ( .A(counter[3]), .B(n21), .C(n22), .D(n23), .Y(n41) );
  OAI2B1X2M U32 ( .A1N(parallel_data[1]), .A0(n26), .B0(n33), .Y(n49) );
  AOI22X1M U33 ( .A0(parallel_data[2]), .A1(n18), .B0(P_DATA[1]), .B1(n28), 
        .Y(n33) );
  OAI2B1X2M U34 ( .A1N(parallel_data[2]), .A0(n26), .B0(n32), .Y(n48) );
  AOI22X1M U35 ( .A0(parallel_data[3]), .A1(n18), .B0(P_DATA[2]), .B1(n28), 
        .Y(n32) );
  OAI2B1X2M U36 ( .A1N(parallel_data[3]), .A0(n26), .B0(n31), .Y(n47) );
  AOI22X1M U37 ( .A0(parallel_data[4]), .A1(n18), .B0(P_DATA[3]), .B1(n28), 
        .Y(n31) );
  OAI2B1X2M U38 ( .A1N(parallel_data[4]), .A0(n26), .B0(n30), .Y(n46) );
  AOI22X1M U39 ( .A0(parallel_data[5]), .A1(n18), .B0(P_DATA[4]), .B1(n28), 
        .Y(n30) );
  OAI2B1X2M U40 ( .A1N(parallel_data[5]), .A0(n26), .B0(n29), .Y(n45) );
  AOI22X1M U41 ( .A0(parallel_data[6]), .A1(n18), .B0(P_DATA[5]), .B1(n28), 
        .Y(n29) );
  OAI2B1X2M U42 ( .A1N(parallel_data[6]), .A0(n26), .B0(n27), .Y(n44) );
  AOI22X1M U43 ( .A0(parallel_data[7]), .A1(n18), .B0(P_DATA[6]), .B1(n28), 
        .Y(n27) );
  NAND4X2M U44 ( .A(counter[2]), .B(counter[1]), .C(n36), .D(n55), .Y(n24) );
  OAI21X2M U45 ( .A0(n15), .A1(n26), .B0(n34), .Y(n50) );
  AOI22X1M U46 ( .A0(parallel_data[1]), .A1(n18), .B0(P_DATA[0]), .B1(n28), 
        .Y(n34) );
  INVX2M U47 ( .A(counter[0]), .Y(n21) );
  INVX2M U48 ( .A(counter[1]), .Y(n22) );
  INVX2M U49 ( .A(counter[2]), .Y(n23) );
  INVX2M U50 ( .A(n35), .Y(n17) );
  AOI32X1M U51 ( .A0(counter[1]), .A1(n23), .A2(n36), .B0(n37), .B1(counter[2]), .Y(n35) );
  OAI2BB1X2M U52 ( .A0N(ser_done), .A1N(n19), .B0(n24), .Y(n42) );
  OAI22X1M U53 ( .A0(n40), .A1(n21), .B0(counter[0]), .B1(n25), .Y(n54) );
  OAI2BB2X1M U54 ( .B0(n25), .B1(n15), .A0N(S_DATA), .A1N(n25), .Y(n43) );
  INVX2M U55 ( .A(counter[3]), .Y(n55) );
  AO22X1M U56 ( .A0(n20), .A1(parallel_data[7]), .B0(P_DATA[7]), .B1(n28), .Y(
        n51) );
  INVXLM U57 ( .A(test_se), .Y(n59) );
  INVXLM U58 ( .A(n59), .Y(n60) );
endmodule


module UART_TX_FSM_test_1 ( Data_Valid, PAR_EN, ser_done, CLK, RST, ser_en, 
        mux_sel, busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input Data_Valid, PAR_EN, ser_done, CLK, RST, test_si, test_se;
  output ser_en, busy, test_so;
  wire   n7, n8, n9, n10, n5, n6, n11;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign busy = next_state[1];
  assign test_so = n6;

  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n5), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[1]) );
  NAND2X2M U6 ( .A(n7), .B(n8), .Y(mux_sel[1]) );
  AOI2BB1X2M U7 ( .A0N(current_state[0]), .A1N(current_state[1]), .B0(
        current_state[2]), .Y(next_state[1]) );
  NAND3X2M U8 ( .A(current_state[0]), .B(n6), .C(current_state[1]), .Y(n7) );
  NAND3X2M U9 ( .A(n5), .B(n6), .C(current_state[0]), .Y(n10) );
  INVX2M U10 ( .A(current_state[2]), .Y(n6) );
  INVX2M U11 ( .A(current_state[1]), .Y(n5) );
  OAI31X1M U12 ( .A0(n11), .A1(PAR_EN), .A2(n7), .B0(n8), .Y(next_state[2]) );
  INVX2M U13 ( .A(ser_done), .Y(n11) );
  NAND3BX2M U14 ( .AN(current_state[0]), .B(n6), .C(current_state[1]), .Y(n8)
         );
  OAI211X2M U15 ( .A0(ser_done), .A1(n7), .B0(n9), .C0(n10), .Y(next_state[0])
         );
  NAND3X2M U16 ( .A(n5), .B(n6), .C(Data_Valid), .Y(n9) );
  BUFX2M U17 ( .A(ser_en), .Y(mux_sel[0]) );
  NAND2X2M U18 ( .A(n7), .B(n10), .Y(ser_en) );
endmodule


module UART_TX_parity_Calc_test_1 ( CLK, RST, P_DATA, Data_Valid, busy, 
        PAR_TYP, par_bit, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input CLK, RST, Data_Valid, busy, PAR_TYP, test_si, test_se;
  output par_bit, test_so;
  wire   n1, n2, n3, n4, n5, n7, n9, n11, n13, n15, n17, n19, n21;
  wire   [7:0] parallel_data;
  assign test_so = parallel_data[7];

  SDFFRQX2M \parallel_data_reg[5]  ( .D(n17), .SI(parallel_data[4]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(parallel_data[5]) );
  SDFFRQX2M \parallel_data_reg[1]  ( .D(n9), .SI(parallel_data[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(parallel_data[1]) );
  SDFFRQX2M \parallel_data_reg[4]  ( .D(n15), .SI(parallel_data[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(parallel_data[4]) );
  SDFFRQX2M \parallel_data_reg[0]  ( .D(n7), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(parallel_data[0]) );
  SDFFRQX2M \parallel_data_reg[6]  ( .D(n19), .SI(parallel_data[5]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(parallel_data[6]) );
  SDFFRQX2M \parallel_data_reg[2]  ( .D(n11), .SI(parallel_data[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(parallel_data[2]) );
  SDFFRQX2M \parallel_data_reg[7]  ( .D(n21), .SI(parallel_data[6]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(parallel_data[7]) );
  SDFFRQX2M \parallel_data_reg[3]  ( .D(n13), .SI(parallel_data[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(parallel_data[3]) );
  NOR2BX2M U2 ( .AN(Data_Valid), .B(busy), .Y(n5) );
  AO2B2X2M U3 ( .B0(P_DATA[0]), .B1(n5), .A0(parallel_data[0]), .A1N(n5), .Y(
        n7) );
  AO2B2X2M U4 ( .B0(P_DATA[1]), .B1(n5), .A0(parallel_data[1]), .A1N(n5), .Y(
        n9) );
  AO2B2X2M U5 ( .B0(P_DATA[2]), .B1(n5), .A0(parallel_data[2]), .A1N(n5), .Y(
        n11) );
  AO2B2X2M U6 ( .B0(P_DATA[3]), .B1(n5), .A0(parallel_data[3]), .A1N(n5), .Y(
        n13) );
  AO2B2X2M U7 ( .B0(P_DATA[4]), .B1(n5), .A0(parallel_data[4]), .A1N(n5), .Y(
        n15) );
  AO2B2X2M U8 ( .B0(P_DATA[5]), .B1(n5), .A0(parallel_data[5]), .A1N(n5), .Y(
        n17) );
  AO2B2X2M U9 ( .B0(P_DATA[6]), .B1(n5), .A0(parallel_data[6]), .A1N(n5), .Y(
        n19) );
  AO2B2X2M U10 ( .B0(P_DATA[7]), .B1(n5), .A0(parallel_data[7]), .A1N(n5), .Y(
        n21) );
  XOR3XLM U11 ( .A(n1), .B(n2), .C(PAR_TYP), .Y(par_bit) );
  XOR3XLM U12 ( .A(parallel_data[5]), .B(parallel_data[4]), .C(n4), .Y(n1) );
  XOR3XLM U13 ( .A(parallel_data[1]), .B(parallel_data[0]), .C(n3), .Y(n2) );
  CLKXOR2X2M U14 ( .A(parallel_data[7]), .B(parallel_data[6]), .Y(n4) );
  CLKXOR2X2M U15 ( .A(parallel_data[3]), .B(parallel_data[2]), .Y(n3) );
endmodule


module UART_TX_MUX ( mux_sel, S_DATA, par_bit, TX_OUT );
  input [1:0] mux_sel;
  input S_DATA, par_bit;
  output TX_OUT;
  wire   n4, n1, n2;

  NOR2BX2M U3 ( .AN(mux_sel[1]), .B(par_bit), .Y(n1) );
  CLKBUFX8M U4 ( .A(n4), .Y(TX_OUT) );
  OAI21X2M U5 ( .A0(mux_sel[0]), .A1(n1), .B0(n2), .Y(n4) );
  NAND3X2M U6 ( .A(mux_sel[0]), .B(S_DATA), .C(mux_sel[1]), .Y(n2) );
endmodule


module UART_TX_test_1 ( P_DATA, Data_Valid, PAR_EN, PAR_TYP, CLK, RST, TX_OUT, 
        busy, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input Data_Valid, PAR_EN, PAR_TYP, CLK, RST, test_si, test_se;
  output TX_OUT, busy, test_so;
  wire   ser_done, ser_en, S_DATA, par_bit, n1, n2, n3, n4;
  wire   [1:0] mux_sel;
  assign test_so = ser_done;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_TX_serializer_test_1 U0_serializer ( .CLK(CLK), .RST(n1), .Data_Valid(
        Data_Valid), .busy(busy), .P_DATA(P_DATA), .ser_en(ser_en), .ser_done(
        ser_done), .S_DATA(S_DATA), .test_si(n3), .test_se(test_se) );
  UART_TX_FSM_test_1 U0_FSM ( .Data_Valid(Data_Valid), .PAR_EN(PAR_EN), 
        .ser_done(ser_done), .CLK(CLK), .RST(n1), .ser_en(ser_en), .mux_sel(
        mux_sel), .busy(busy), .test_si(test_si), .test_so(n4), .test_se(
        test_se) );
  UART_TX_parity_Calc_test_1 U0_parity_Calc ( .CLK(CLK), .RST(n1), .P_DATA(
        P_DATA), .Data_Valid(Data_Valid), .busy(busy), .PAR_TYP(PAR_TYP), 
        .par_bit(par_bit), .test_si(n4), .test_so(n3), .test_se(test_se) );
  UART_TX_MUX U0_MUX ( .mux_sel(mux_sel), .S_DATA(S_DATA), .par_bit(par_bit), 
        .TX_OUT(TX_OUT) );
endmodule


module UART_RX_FSM_test_1 ( CLK, RST, RX_IN, PAR_EN, Prescale, edge_cnt, 
        bit_cnt, par_err, strt_glitch, stp_err, dat_samp_en, enable, deser_en, 
        stp_chk_en, strt_chk_en, par_chk_en, data_valid, test_si, test_so, 
        test_se );
  input [5:0] Prescale;
  input [4:0] edge_cnt;
  input [3:0] bit_cnt;
  input CLK, RST, RX_IN, PAR_EN, par_err, strt_glitch, stp_err, test_si,
         test_se;
  output dat_samp_en, enable, deser_en, stp_chk_en, strt_chk_en, par_chk_en,
         data_valid, test_so;
  wire   N33, N35, N36, N37, N38, N39, N40, N54, N72, N73, N74, N75, N76, N77,
         N79, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, \r85/carry[5] , \r85/carry[4] ,
         \r85/carry[3] , n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n18, n19, n20, n21, n22, n23, n24, n25, n26, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign N72 = Prescale[0];
  assign test_so = n54;

  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[1]) );
  NOR2X2M U4 ( .A(Prescale[5]), .B(\r85/carry[5] ), .Y(n1) );
  NOR3XLM U5 ( .A(n43), .B(stp_err), .C(par_err), .Y(data_valid) );
  NOR4X1M U6 ( .A(strt_glitch), .B(current_state[2]), .C(n52), .D(
        current_state[1]), .Y(n45) );
  INVX2M U7 ( .A(n35), .Y(n49) );
  NAND2X2M U10 ( .A(n39), .B(n40), .Y(next_state[1]) );
  OAI32X1M U11 ( .A0(n55), .A1(n34), .A2(n35), .B0(n36), .B1(n37), .Y(
        par_chk_en) );
  OAI21X2M U12 ( .A0(n49), .A1(n34), .B0(n40), .Y(deser_en) );
  NAND3X2M U13 ( .A(n38), .B(n50), .C(N54), .Y(n35) );
  NAND2X2M U14 ( .A(n45), .B(n27), .Y(n40) );
  AOI32X1M U15 ( .A0(n49), .A1(n55), .A2(n53), .B0(n51), .B1(n36), .Y(n31) );
  NAND2X2M U16 ( .A(n31), .B(n30), .Y(next_state[2]) );
  NOR3BX2M U17 ( .AN(n30), .B(n53), .C(n51), .Y(n39) );
  INVX2M U18 ( .A(n45), .Y(n48) );
  INVX2M U19 ( .A(n34), .Y(n53) );
  INVX2M U20 ( .A(n37), .Y(n51) );
  NAND4BX1M U21 ( .AN(bit_cnt[1]), .B(N40), .C(n50), .D(n46), .Y(n27) );
  NOR2X2M U22 ( .A(bit_cnt[3]), .B(bit_cnt[2]), .Y(n46) );
  OR2X2M U23 ( .A(Prescale[1]), .B(N72), .Y(n4) );
  NAND4X2M U24 ( .A(bit_cnt[1]), .B(N79), .C(n44), .D(bit_cnt[3]), .Y(n32) );
  NOR2X2M U25 ( .A(bit_cnt[2]), .B(bit_cnt[0]), .Y(n44) );
  AOI22X1M U26 ( .A0(PAR_EN), .A1(n32), .B0(n33), .B1(n55), .Y(n29) );
  NAND3X2M U27 ( .A(bit_cnt[0]), .B(n38), .C(N79), .Y(n33) );
  OAI2BB2X1M U28 ( .B0(n48), .B1(n27), .A0N(n56), .A1N(n28), .Y(strt_chk_en)
         );
  OAI211X2M U29 ( .A0(n41), .A1(n30), .B0(n48), .C0(n42), .Y(next_state[0]) );
  AOI22X1M U30 ( .A0(n28), .A1(n56), .B0(n53), .B1(n35), .Y(n42) );
  OA22X2M U31 ( .A0(n32), .A1(n55), .B0(n33), .B1(PAR_EN), .Y(n41) );
  OAI21X2M U32 ( .A0(n29), .A1(n30), .B0(n31), .Y(stp_chk_en) );
  AND3X2M U33 ( .A(N54), .B(n38), .C(bit_cnt[0]), .Y(n36) );
  INVX2M U34 ( .A(Prescale[1]), .Y(N73) );
  AOI21BX2M U35 ( .A0(N72), .A1(Prescale[1]), .B0N(n4), .Y(n2) );
  INVX2M U36 ( .A(edge_cnt[0]), .Y(n19) );
  NOR3BX2M U37 ( .AN(bit_cnt[3]), .B(bit_cnt[1]), .C(bit_cnt[2]), .Y(n38) );
  NAND3X2M U38 ( .A(current_state[1]), .B(n52), .C(current_state[2]), .Y(n30)
         );
  INVX2M U39 ( .A(bit_cnt[0]), .Y(n50) );
  NAND3X2M U40 ( .A(current_state[0]), .B(n54), .C(current_state[1]), .Y(n34)
         );
  NAND3X2M U41 ( .A(n52), .B(n54), .C(current_state[1]), .Y(n37) );
  INVX2M U42 ( .A(current_state[0]), .Y(n52) );
  INVX2M U43 ( .A(current_state[2]), .Y(n54) );
  OAI31X1M U44 ( .A0(current_state[0]), .A1(current_state[2]), .A2(
        current_state[1]), .B0(n43), .Y(n28) );
  NAND3X2M U45 ( .A(current_state[1]), .B(current_state[0]), .C(
        current_state[2]), .Y(n43) );
  INVX2M U46 ( .A(PAR_EN), .Y(n55) );
  INVX2M U47 ( .A(RX_IN), .Y(n56) );
  BUFX2M U48 ( .A(enable), .Y(dat_samp_en) );
  NAND2X2M U49 ( .A(n39), .B(n48), .Y(enable) );
  XNOR2X1M U50 ( .A(\r85/carry[5] ), .B(Prescale[5]), .Y(N77) );
  OR2X1M U51 ( .A(Prescale[4]), .B(\r85/carry[4] ), .Y(\r85/carry[5] ) );
  XNOR2X1M U52 ( .A(\r85/carry[4] ), .B(Prescale[4]), .Y(N76) );
  OR2X1M U53 ( .A(Prescale[3]), .B(\r85/carry[3] ), .Y(\r85/carry[4] ) );
  XNOR2X1M U54 ( .A(\r85/carry[3] ), .B(Prescale[3]), .Y(N75) );
  OR2X1M U55 ( .A(Prescale[2]), .B(Prescale[1]), .Y(\r85/carry[3] ) );
  XNOR2X1M U56 ( .A(Prescale[1]), .B(Prescale[2]), .Y(N74) );
  CLKINVX1M U57 ( .A(N72), .Y(N33) );
  OR2X1M U58 ( .A(n4), .B(Prescale[2]), .Y(n5) );
  OAI2BB1X1M U59 ( .A0N(n4), .A1N(Prescale[2]), .B0(n5), .Y(N35) );
  OR2X1M U60 ( .A(n5), .B(Prescale[3]), .Y(n6) );
  OAI2BB1X1M U61 ( .A0N(n5), .A1N(Prescale[3]), .B0(n6), .Y(N36) );
  OR2X1M U62 ( .A(n6), .B(Prescale[4]), .Y(n7) );
  OAI2BB1X1M U63 ( .A0N(n6), .A1N(Prescale[4]), .B0(n7), .Y(N37) );
  NOR2X1M U64 ( .A(n7), .B(Prescale[5]), .Y(N39) );
  AO21XLM U65 ( .A0(n7), .A1(Prescale[5]), .B0(N39), .Y(N38) );
  XNOR2X1M U66 ( .A(N36), .B(edge_cnt[3]), .Y(n18) );
  XNOR2X1M U67 ( .A(N35), .B(edge_cnt[2]), .Y(n14) );
  XNOR2X1M U68 ( .A(N37), .B(edge_cnt[4]), .Y(n13) );
  NOR2X1M U69 ( .A(n19), .B(N33), .Y(n8) );
  OAI22X1M U70 ( .A0(edge_cnt[1]), .A1(n8), .B0(n8), .B1(n2), .Y(n11) );
  CLKNAND2X2M U71 ( .A(N33), .B(n19), .Y(n9) );
  AOI22X1M U72 ( .A0(n9), .A1(n2), .B0(n9), .B1(edge_cnt[1]), .Y(n10) );
  NOR4BX1M U73 ( .AN(n11), .B(N39), .C(N38), .D(n10), .Y(n12) );
  NAND4X1M U74 ( .A(n18), .B(n14), .C(n13), .D(n12), .Y(N40) );
  CLKINVX1M U75 ( .A(N40), .Y(N54) );
  NOR2BX1M U76 ( .AN(edge_cnt[0]), .B(N72), .Y(n20) );
  OAI2B2X1M U77 ( .A1N(N73), .A0(n20), .B0(edge_cnt[1]), .B1(n20), .Y(n23) );
  NOR2BX1M U78 ( .AN(N72), .B(edge_cnt[0]), .Y(n21) );
  OAI2B2X1M U79 ( .A1N(edge_cnt[1]), .A0(n21), .B0(N73), .B1(n21), .Y(n22) );
  NAND4BBX1M U80 ( .AN(n1), .BN(N77), .C(n23), .D(n22), .Y(n47) );
  CLKXOR2X2M U81 ( .A(N76), .B(edge_cnt[4]), .Y(n26) );
  CLKXOR2X2M U82 ( .A(N74), .B(edge_cnt[2]), .Y(n25) );
  CLKXOR2X2M U83 ( .A(N75), .B(edge_cnt[3]), .Y(n24) );
  NOR4X1M U84 ( .A(n47), .B(n26), .C(n25), .D(n24), .Y(N79) );
endmodule


module UART_RX_edge_bit_counter_test_1 ( CLK, RST, Prescale, PAR_EN, enable, 
        bit_cnt, edge_cnt, test_si, test_se );
  input [5:0] Prescale;
  output [3:0] bit_cnt;
  output [4:0] edge_cnt;
  input CLK, RST, PAR_EN, enable, test_si, test_se;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N30,
         N31, N32, N33, N34, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         \add_22/carry[4] , \add_22/carry[3] , \add_22/carry[2] , n1, n2, n3,
         n4, n14, n15, n16, n17, n18, n19, n20, n31, n32, n33, n34, n35, n36,
         n37, n38, n41, n42;

  SDFFRQX2M \edge_cnt_reg[4]  ( .D(N34), .SI(edge_cnt[3]), .SE(n42), .CK(CLK), 
        .RN(RST), .Q(edge_cnt[4]) );
  SDFFRQX2M \bit_cnt_reg[3]  ( .D(n27), .SI(n37), .SE(n42), .CK(CLK), .RN(RST), 
        .Q(bit_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[2]  ( .D(N32), .SI(edge_cnt[1]), .SE(n42), .CK(CLK), 
        .RN(RST), .Q(edge_cnt[2]) );
  SDFFRQX2M \edge_cnt_reg[3]  ( .D(N33), .SI(edge_cnt[2]), .SE(n42), .CK(CLK), 
        .RN(RST), .Q(edge_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[0]  ( .D(N30), .SI(n38), .SE(n42), .CK(CLK), .RN(RST), .Q(edge_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[1]  ( .D(N31), .SI(N7), .SE(n42), .CK(CLK), .RN(RST), 
        .Q(edge_cnt[1]) );
  SDFFRQX2M \bit_cnt_reg[2]  ( .D(n28), .SI(n36), .SE(n42), .CK(CLK), .RN(RST), 
        .Q(bit_cnt[2]) );
  SDFFRQX2M \bit_cnt_reg[1]  ( .D(n29), .SI(n35), .SE(n42), .CK(CLK), .RN(RST), 
        .Q(bit_cnt[1]) );
  SDFFRQX2M \bit_cnt_reg[0]  ( .D(n30), .SI(test_si), .SE(n42), .CK(CLK), .RN(
        RST), .Q(bit_cnt[0]) );
  INVX2M U7 ( .A(enable), .Y(n33) );
  INVX2M U8 ( .A(n26), .Y(n32) );
  NOR2X2M U14 ( .A(n33), .B(N19), .Y(n26) );
  AOI21X2M U15 ( .A0(n35), .A1(enable), .B0(n26), .Y(n25) );
  AND2X2M U16 ( .A(N10), .B(n26), .Y(N33) );
  AND2X2M U17 ( .A(N9), .B(n26), .Y(N32) );
  AND2X2M U18 ( .A(N8), .B(n26), .Y(N31) );
  NOR3X2M U19 ( .A(n36), .B(n35), .C(n37), .Y(n22) );
  OAI32X1M U20 ( .A0(n33), .A1(bit_cnt[0]), .A2(n26), .B0(n35), .B1(n32), .Y(
        n30) );
  OAI32X1M U21 ( .A0(n23), .A1(bit_cnt[2]), .A2(n36), .B0(n24), .B1(n37), .Y(
        n28) );
  OA21X2M U22 ( .A0(n33), .A1(bit_cnt[1]), .B0(n25), .Y(n24) );
  OAI22X1M U23 ( .A0(n38), .A1(n32), .B0(n21), .B1(n33), .Y(n27) );
  AOI32X1M U24 ( .A0(n22), .A1(n38), .A2(N19), .B0(bit_cnt[3]), .B1(n34), .Y(
        n21) );
  INVX2M U25 ( .A(bit_cnt[3]), .Y(n38) );
  INVX2M U26 ( .A(n22), .Y(n34) );
  OAI22X1M U27 ( .A0(n25), .A1(n36), .B0(bit_cnt[1]), .B1(n23), .Y(n29) );
  NAND3X2M U28 ( .A(bit_cnt[0]), .B(n32), .C(enable), .Y(n23) );
  OR2X2M U29 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n1) );
  AND2X2M U30 ( .A(N11), .B(n26), .Y(N34) );
  AND2X2M U31 ( .A(N7), .B(n26), .Y(N30) );
  INVX2M U32 ( .A(bit_cnt[0]), .Y(n35) );
  INVX2M U33 ( .A(bit_cnt[1]), .Y(n36) );
  INVX2M U34 ( .A(bit_cnt[2]), .Y(n37) );
  ADDHX1M U35 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_22/carry[2] ), .S(
        N8) );
  ADDHX1M U36 ( .A(edge_cnt[2]), .B(\add_22/carry[2] ), .CO(\add_22/carry[3] ), 
        .S(N9) );
  ADDHX1M U37 ( .A(edge_cnt[3]), .B(\add_22/carry[3] ), .CO(\add_22/carry[4] ), 
        .S(N10) );
  CLKINVX1M U38 ( .A(edge_cnt[0]), .Y(N7) );
  CLKXOR2X2M U39 ( .A(\add_22/carry[4] ), .B(edge_cnt[4]), .Y(N11) );
  CLKINVX1M U40 ( .A(Prescale[0]), .Y(N12) );
  OAI2BB1X1M U41 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n1), .Y(N13) );
  OR2X1M U42 ( .A(n1), .B(Prescale[2]), .Y(n2) );
  OAI2BB1X1M U43 ( .A0N(n1), .A1N(Prescale[2]), .B0(n2), .Y(N14) );
  OR2X1M U44 ( .A(n2), .B(Prescale[3]), .Y(n3) );
  OAI2BB1X1M U45 ( .A0N(n2), .A1N(Prescale[3]), .B0(n3), .Y(N15) );
  OR2X1M U46 ( .A(n3), .B(Prescale[4]), .Y(n4) );
  OAI2BB1X1M U47 ( .A0N(n3), .A1N(Prescale[4]), .B0(n4), .Y(N16) );
  NOR2X1M U48 ( .A(n4), .B(Prescale[5]), .Y(N18) );
  AO21XLM U49 ( .A0(n4), .A1(Prescale[5]), .B0(N18), .Y(N17) );
  NOR2BX1M U50 ( .AN(edge_cnt[0]), .B(N12), .Y(n14) );
  OAI2B2X1M U51 ( .A1N(N13), .A0(n14), .B0(edge_cnt[1]), .B1(n14), .Y(n17) );
  NOR2BX1M U52 ( .AN(N12), .B(edge_cnt[0]), .Y(n15) );
  OAI2B2X1M U53 ( .A1N(edge_cnt[1]), .A0(n15), .B0(N13), .B1(n15), .Y(n16) );
  NAND4BBX1M U54 ( .AN(N18), .BN(N17), .C(n17), .D(n16), .Y(n31) );
  CLKXOR2X2M U55 ( .A(N16), .B(edge_cnt[4]), .Y(n20) );
  CLKXOR2X2M U56 ( .A(N14), .B(edge_cnt[2]), .Y(n19) );
  CLKXOR2X2M U57 ( .A(N15), .B(edge_cnt[3]), .Y(n18) );
  NOR4X1M U58 ( .A(n31), .B(n20), .C(n19), .D(n18), .Y(N19) );
  INVXLM U59 ( .A(test_se), .Y(n41) );
  INVXLM U60 ( .A(n41), .Y(n42) );
endmodule


module UART_RX_data_sampling_test_1 ( CLK, RST, RX_IN, Prescale, dat_samp_en, 
        edge_cnt, sampled_bit, test_si, test_so, test_se );
  input [5:0] Prescale;
  input [4:0] edge_cnt;
  input CLK, RST, RX_IN, dat_samp_en, test_si, test_se;
  output sampled_bit, test_so;
  wire   N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N47, N48, N49,
         N50, N58, N59, N60, N61, N62, N88, N89, N90, N91, N92, N93, N94, N95,
         N121, N122, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, \add_33/carry[5] , \add_33/carry[4] , \add_33/carry[3] ,
         \add_29/carry[5] , \add_29/carry[4] , \add_29/carry[3] ,
         \add_29/carry[2] , n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n23, n24, n25, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85;
  wire   [2:0] sampled_data;
  assign test_so = sampled_data[2];

  SDFFQX2M \sampled_data_reg[2]  ( .D(n37), .SI(sampled_data[1]), .SE(test_se), 
        .CK(CLK), .Q(sampled_data[2]) );
  SDFFQX2M \sampled_data_reg[0]  ( .D(n35), .SI(sampled_bit), .SE(test_se), 
        .CK(CLK), .Q(sampled_data[0]) );
  SDFFRQX2M sampled_bit_reg ( .D(n34), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sampled_bit) );
  SDFFQX1M \sampled_data_reg[1]  ( .D(n36), .SI(sampled_data[0]), .SE(test_se), 
        .CK(CLK), .Q(sampled_data[1]) );
  NOR2X2M U4 ( .A(N121), .B(n13), .Y(n81) );
  NOR2X2M U5 ( .A(N88), .B(n13), .Y(n64) );
  AND2X2M U20 ( .A(dat_samp_en), .B(RST), .Y(n31) );
  INVX2M U21 ( .A(N49), .Y(n84) );
  INVX2M U22 ( .A(N47), .Y(n41) );
  AND2X2M U23 ( .A(n15), .B(n41), .Y(n40) );
  NAND2X2M U24 ( .A(n41), .B(n16), .Y(n39) );
  NOR3BX2M U27 ( .AN(n41), .B(N22), .C(N48), .Y(n16) );
  NOR2X2M U28 ( .A(N89), .B(N50), .Y(n28) );
  OR2X2M U29 ( .A(N12), .B(n4), .Y(n9) );
  ADDHX1M U30 ( .A(N12), .B(n4), .CO(\add_29/carry[2] ), .S(N58) );
  ADDHX1M U31 ( .A(N13), .B(\add_29/carry[2] ), .CO(\add_29/carry[3] ), .S(N59) );
  ADDHX1M U32 ( .A(N14), .B(\add_29/carry[3] ), .CO(\add_29/carry[4] ), .S(N60) );
  ADDHX1M U33 ( .A(N15), .B(\add_29/carry[4] ), .CO(\add_29/carry[5] ), .S(N61) );
  INVX2M U34 ( .A(N12), .Y(N91) );
  OAI2BB2X1M U35 ( .B0(n30), .B1(n85), .A0N(n30), .A1N(sampled_data[0]), .Y(
        n35) );
  NAND2X2M U36 ( .A(N49), .B(n31), .Y(n30) );
  OAI2BB2X1M U37 ( .B0(n26), .B1(n27), .A0N(sampled_bit), .A1N(n27), .Y(n34)
         );
  AOI21X2M U38 ( .A0(sampled_data[1]), .A1(sampled_data[0]), .B0(n29), .Y(n26)
         );
  NAND4X2M U39 ( .A(dat_samp_en), .B(N122), .C(n28), .D(n84), .Y(n27) );
  OA21X2M U40 ( .A0(sampled_data[1]), .A1(sampled_data[0]), .B0(
        sampled_data[2]), .Y(n29) );
  OAI2BB2X1M U41 ( .B0(n85), .B1(n33), .A0N(n33), .A1N(sampled_data[2]), .Y(
        n37) );
  NAND4BX1M U42 ( .AN(N50), .B(N89), .C(n31), .D(n84), .Y(n33) );
  OAI2BB2X1M U43 ( .B0(n85), .B1(n32), .A0N(n32), .A1N(sampled_data[1]), .Y(
        n36) );
  NAND3X2M U44 ( .A(n31), .B(n84), .C(N50), .Y(n32) );
  NOR2X2M U45 ( .A(n8), .B(Prescale[5]), .Y(N16) );
  BUFX2M U46 ( .A(N90), .Y(n4) );
  INVX2M U47 ( .A(RX_IN), .Y(n85) );
  AND2X1M U48 ( .A(\add_33/carry[4] ), .B(N15), .Y(\add_33/carry[5] ) );
  CLKXOR2X2M U49 ( .A(N15), .B(\add_33/carry[4] ), .Y(N94) );
  AND2X1M U50 ( .A(\add_33/carry[3] ), .B(N14), .Y(\add_33/carry[4] ) );
  CLKXOR2X2M U51 ( .A(N14), .B(\add_33/carry[3] ), .Y(N93) );
  AND2X1M U52 ( .A(N12), .B(N13), .Y(\add_33/carry[3] ) );
  CLKXOR2X2M U53 ( .A(N13), .B(N12), .Y(N92) );
  OR2X1M U54 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n5) );
  OAI2BB1X1M U55 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n5), .Y(N90) );
  OR2X1M U56 ( .A(n5), .B(Prescale[2]), .Y(n6) );
  OAI2BB1X1M U57 ( .A0N(n5), .A1N(Prescale[2]), .B0(n6), .Y(N12) );
  OR2X1M U58 ( .A(n6), .B(Prescale[3]), .Y(n7) );
  OAI2BB1X1M U59 ( .A0N(n6), .A1N(Prescale[3]), .B0(n7), .Y(N13) );
  OR2X1M U60 ( .A(n7), .B(Prescale[4]), .Y(n8) );
  OAI2BB1X1M U61 ( .A0N(n7), .A1N(Prescale[4]), .B0(n8), .Y(N14) );
  AO21XLM U62 ( .A0(n8), .A1(Prescale[5]), .B0(N16), .Y(N15) );
  CLKINVX1M U63 ( .A(n4), .Y(N17) );
  OR2X1M U64 ( .A(n9), .B(N13), .Y(n10) );
  OR2X1M U65 ( .A(n10), .B(N14), .Y(n11) );
  OR2X1M U66 ( .A(n11), .B(N15), .Y(n12) );
  NAND2BX1M U67 ( .AN(N16), .B(n12), .Y(N47) );
  OAI2BB1X1M U68 ( .A0N(n4), .A1N(N12), .B0(n9), .Y(N18) );
  OAI2BB1X1M U69 ( .A0N(n9), .A1N(N13), .B0(n10), .Y(N19) );
  NOR2X1M U70 ( .A(n12), .B(N16), .Y(N48) );
  OAI2BB1X1M U71 ( .A0N(n10), .A1N(N14), .B0(n11), .Y(N20) );
  OAI2BB1X1M U72 ( .A0N(n11), .A1N(N15), .B0(n12), .Y(N21) );
  AO21XLM U73 ( .A0(n12), .A1(N16), .B0(N48), .Y(N22) );
  AND2X1M U74 ( .A(\add_29/carry[5] ), .B(N16), .Y(N88) );
  XNOR2X1M U75 ( .A(\add_29/carry[5] ), .B(n13), .Y(N62) );
  CLKINVX1M U76 ( .A(N16), .Y(n13) );
  AND2X1M U77 ( .A(\add_33/carry[5] ), .B(N16), .Y(N121) );
  XNOR2X1M U78 ( .A(\add_33/carry[5] ), .B(n13), .Y(N95) );
  NOR2BX1M U79 ( .AN(edge_cnt[0]), .B(N17), .Y(n14) );
  OAI2B2X1M U80 ( .A1N(N18), .A0(n14), .B0(edge_cnt[1]), .B1(n14), .Y(n15) );
  XNOR2X1M U81 ( .A(N21), .B(edge_cnt[4]), .Y(n25) );
  XNOR2X1M U82 ( .A(N20), .B(edge_cnt[3]), .Y(n24) );
  XNOR2X1M U83 ( .A(N19), .B(edge_cnt[2]), .Y(n23) );
  NOR2BX1M U84 ( .AN(N17), .B(edge_cnt[0]), .Y(n17) );
  OAI2B2X1M U85 ( .A1N(edge_cnt[1]), .A0(n17), .B0(N18), .B1(n17), .Y(n18) );
  NAND4X1M U86 ( .A(n25), .B(n24), .C(n23), .D(n18), .Y(n38) );
  NOR4BX1M U87 ( .AN(n40), .B(n39), .C(N47), .D(n38), .Y(N49) );
  NOR2BX1M U88 ( .AN(n4), .B(edge_cnt[0]), .Y(n42) );
  OAI2B2X1M U89 ( .A1N(edge_cnt[1]), .A0(n42), .B0(N12), .B1(n42), .Y(n45) );
  NOR2BX1M U90 ( .AN(edge_cnt[0]), .B(n4), .Y(n43) );
  OAI2B2X1M U91 ( .A1N(N12), .A0(n43), .B0(edge_cnt[1]), .B1(n43), .Y(n44) );
  NAND3BX1M U92 ( .AN(N16), .B(n45), .C(n44), .Y(n49) );
  CLKXOR2X2M U93 ( .A(N15), .B(edge_cnt[4]), .Y(n48) );
  CLKXOR2X2M U94 ( .A(N13), .B(edge_cnt[2]), .Y(n47) );
  CLKXOR2X2M U95 ( .A(N14), .B(edge_cnt[3]), .Y(n46) );
  NOR4X1M U96 ( .A(n49), .B(n48), .C(n47), .D(n46), .Y(N50) );
  NOR2BX1M U97 ( .AN(edge_cnt[0]), .B(N17), .Y(n50) );
  OAI2B2X1M U98 ( .A1N(N58), .A0(n50), .B0(edge_cnt[1]), .B1(n50), .Y(n51) );
  XNOR2X1M U102 ( .A(N61), .B(edge_cnt[4]), .Y(n62) );
  XNOR2X1M U103 ( .A(N60), .B(edge_cnt[3]), .Y(n61) );
  XNOR2X1M U104 ( .A(N59), .B(edge_cnt[2]), .Y(n60) );
  NOR2BX1M U105 ( .AN(N17), .B(edge_cnt[0]), .Y(n58) );
  OAI2B2X1M U106 ( .A1N(edge_cnt[1]), .A0(n58), .B0(N58), .B1(n58), .Y(n59) );
  NAND4X1M U107 ( .A(n62), .B(n61), .C(n60), .D(n59), .Y(n63) );
  NOR4BX1M U108 ( .AN(n66), .B(n65), .C(n64), .D(n63), .Y(N89) );
  NOR2BX1M U109 ( .AN(edge_cnt[0]), .B(n4), .Y(n67) );
  OAI2B2X1M U110 ( .A1N(N91), .A0(n67), .B0(edge_cnt[1]), .B1(n67), .Y(n68) );
  XNOR2X1M U114 ( .A(N94), .B(edge_cnt[4]), .Y(n79) );
  XNOR2X1M U115 ( .A(N93), .B(edge_cnt[3]), .Y(n78) );
  XNOR2X1M U116 ( .A(N92), .B(edge_cnt[2]), .Y(n77) );
  NOR2BX1M U117 ( .AN(n4), .B(edge_cnt[0]), .Y(n75) );
  OAI2B2X1M U118 ( .A1N(edge_cnt[1]), .A0(n75), .B0(N91), .B1(n75), .Y(n76) );
  NAND4X1M U119 ( .A(n79), .B(n78), .C(n77), .D(n76), .Y(n80) );
  NOR4BX1M U120 ( .AN(n83), .B(n82), .C(n81), .D(n80), .Y(N122) );
  CLKNAND2X16M U3 ( .A(n69), .B(n70), .Y(n82) );
  CLKNAND2X16M U6 ( .A(n52), .B(n53), .Y(n65) );
  NOR3BX4M U7 ( .AN(n69), .B(N95), .C(N121), .Y(n70) );
  NOR3BX4M U8 ( .AN(n52), .B(N62), .C(N88), .Y(n53) );
  CLKAND2X16M U9 ( .A(n68), .B(n69), .Y(n83) );
  CLKAND2X16M U10 ( .A(n51), .B(n52), .Y(n66) );
  CLKINVX16M U11 ( .A(n81), .Y(n69) );
  CLKINVX16M U12 ( .A(n64), .Y(n52) );
endmodule


module UART_RX_deserializer_test_1 ( CLK, RST, bit_cnt, deser_en, sampled_bit, 
        P_DATA, test_si, test_so, test_se );
  input [3:0] bit_cnt;
  output [7:0] P_DATA;
  input CLK, RST, deser_en, sampled_bit, test_si, test_se;
  output test_so;
  wire   n9, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n55;
  assign test_so = n9;

  SDFFRQX2M \P_DATA_reg[0]  ( .D(n47), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[0]) );
  SDFFRQX2M \P_DATA_reg[5]  ( .D(n52), .SI(P_DATA[4]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[5]) );
  SDFFRQX2M \P_DATA_reg[1]  ( .D(n48), .SI(P_DATA[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[1]) );
  SDFFRQX2M \P_DATA_reg[4]  ( .D(n51), .SI(P_DATA[3]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[4]) );
  SDFFRQX2M \P_DATA_reg[6]  ( .D(n53), .SI(P_DATA[5]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[6]) );
  SDFFRQX2M \P_DATA_reg[3]  ( .D(n50), .SI(P_DATA[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[3]) );
  SDFFRQX2M \P_DATA_reg[2]  ( .D(n49), .SI(P_DATA[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[2]) );
  SDFFRX1M \P_DATA_reg[7]  ( .D(n54), .SI(P_DATA[6]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[7]), .QN(n9) );
  INVX2M U12 ( .A(deser_en), .Y(n16) );
  INVX2M U13 ( .A(n40), .Y(n15) );
  AOI21X2M U14 ( .A0(n55), .A1(n22), .B0(n16), .Y(n44) );
  NOR2X2M U15 ( .A(n17), .B(n16), .Y(n40) );
  NAND2X2M U16 ( .A(n44), .B(n45), .Y(n25) );
  NOR2X2M U17 ( .A(n20), .B(n19), .Y(n41) );
  NAND2X2M U18 ( .A(n41), .B(n55), .Y(n24) );
  OAI31X1M U19 ( .A0(n26), .A1(n11), .A2(n17), .B0(n27), .Y(n48) );
  NAND2X2M U20 ( .A(P_DATA[1]), .B(n11), .Y(n27) );
  INVX2M U21 ( .A(n28), .Y(n11) );
  OAI31X1M U22 ( .A0(n26), .A1(bit_cnt[0]), .A2(n16), .B0(n29), .Y(n28) );
  OAI31X1M U23 ( .A0(n32), .A1(n13), .A2(n17), .B0(n33), .Y(n50) );
  NAND2X2M U24 ( .A(P_DATA[3]), .B(n13), .Y(n33) );
  INVX2M U25 ( .A(n34), .Y(n13) );
  OAI31X1M U26 ( .A0(n32), .A1(bit_cnt[0]), .A2(n16), .B0(n29), .Y(n34) );
  OAI31X1M U27 ( .A0(n26), .A1(n12), .A2(n17), .B0(n30), .Y(n49) );
  NAND2X2M U28 ( .A(P_DATA[2]), .B(n12), .Y(n30) );
  INVX2M U29 ( .A(n31), .Y(n12) );
  OAI31X1M U30 ( .A0(n26), .A1(n18), .A2(n16), .B0(n29), .Y(n31) );
  OAI31X1M U31 ( .A0(n32), .A1(n14), .A2(n17), .B0(n35), .Y(n51) );
  NAND2X2M U32 ( .A(P_DATA[4]), .B(n14), .Y(n35) );
  INVX2M U33 ( .A(n36), .Y(n14) );
  OAI31X1M U34 ( .A0(n32), .A1(n18), .A2(n16), .B0(n29), .Y(n36) );
  OAI2BB2X1M U35 ( .B0(bit_cnt[3]), .B1(n39), .A0N(n25), .A1N(P_DATA[5]), .Y(
        n52) );
  AOI32X1M U36 ( .A0(n40), .A1(n18), .A2(n41), .B0(P_DATA[5]), .B1(bit_cnt[0]), 
        .Y(n39) );
  OAI31X1M U37 ( .A0(n24), .A1(n18), .A2(n15), .B0(n42), .Y(n53) );
  OAI21X2M U38 ( .A0(n25), .A1(n43), .B0(P_DATA[6]), .Y(n42) );
  OAI21X2M U39 ( .A0(bit_cnt[0]), .A1(n24), .B0(n21), .Y(n43) );
  OAI31X1M U40 ( .A0(n21), .A1(n15), .A2(n22), .B0(n23), .Y(n47) );
  OAI2B1X2M U41 ( .A1N(n24), .A0(n25), .B0(P_DATA[0]), .Y(n23) );
  OAI21BX1M U42 ( .A0(n15), .A1(n45), .B0N(n46), .Y(n54) );
  AOI31X2M U43 ( .A0(n44), .A1(n24), .A2(n21), .B0(n9), .Y(n46) );
  NAND2X2M U44 ( .A(deser_en), .B(n37), .Y(n29) );
  XNOR2X2M U45 ( .A(n55), .B(n38), .Y(n37) );
  NOR3X2M U46 ( .A(bit_cnt[0]), .B(bit_cnt[2]), .C(bit_cnt[1]), .Y(n38) );
  INVX2M U47 ( .A(bit_cnt[0]), .Y(n18) );
  XNOR2X2M U48 ( .A(bit_cnt[1]), .B(n20), .Y(n22) );
  NAND3BX2M U49 ( .AN(n41), .B(n55), .C(bit_cnt[0]), .Y(n21) );
  INVX2M U50 ( .A(bit_cnt[3]), .Y(n55) );
  INVX2M U51 ( .A(bit_cnt[2]), .Y(n20) );
  INVX2M U52 ( .A(bit_cnt[1]), .Y(n19) );
  NAND3X2M U53 ( .A(n20), .B(n55), .C(bit_cnt[1]), .Y(n26) );
  NAND3X2M U54 ( .A(n19), .B(n55), .C(bit_cnt[2]), .Y(n32) );
  OR4X1M U55 ( .A(n22), .B(n55), .C(n41), .D(bit_cnt[0]), .Y(n45) );
  INVX2M U56 ( .A(sampled_bit), .Y(n17) );
endmodule


module UART_RX_parity_check_test_1 ( CLK, RST, RX_IN, PAR_TYP, Prescale, 
        edge_cnt, bit_cnt, par_chk_en, sampled_bit, P_DATA, par_err, test_so, 
        test_se );
  input [5:0] Prescale;
  input [4:0] edge_cnt;
  input [3:0] bit_cnt;
  input [7:0] P_DATA;
  input CLK, RST, RX_IN, PAR_TYP, par_chk_en, sampled_bit, test_se;
  output par_err, test_so;
  wire   n16, parity, N9, N10, N11, N12, N13, N14, N16, n6, n7, n8, n9, n10,
         n11, n12, n13, n15, n17, \sub_34/carry[5] , \sub_34/carry[4] ,
         \sub_34/carry[3] , n1, n3, n4, n5, n18, n19, n20, n21, n22, n23, n2;
  assign test_so = parity;
  assign N9 = Prescale[0];

  SDFFRQX2M parity_reg ( .D(n17), .SI(par_err), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(parity) );
  NOR2X2M U3 ( .A(Prescale[5]), .B(\sub_34/carry[5] ), .Y(n1) );
  INVX2M U5 ( .A(par_chk_en), .Y(n23) );
  OAI2BB2X1M U6 ( .B0(n9), .B1(n23), .A0N(n23), .A1N(parity), .Y(n17) );
  XOR3XLM U7 ( .A(n10), .B(PAR_TYP), .C(n11), .Y(n9) );
  XOR3XLM U8 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n12), .Y(n11) );
  XOR3XLM U9 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n13), .Y(n10) );
  OAI2BB1X2M U10 ( .A0N(par_err), .A1N(n23), .B0(n6), .Y(n15) );
  NAND4X2M U11 ( .A(bit_cnt[3]), .B(bit_cnt[0]), .C(par_chk_en), .D(n7), .Y(n6) );
  NOR4BX1M U12 ( .AN(N16), .B(bit_cnt[2]), .C(bit_cnt[1]), .D(n8), .Y(n7) );
  XNOR2X2M U13 ( .A(parity), .B(sampled_bit), .Y(n8) );
  INVX2M U14 ( .A(Prescale[1]), .Y(N10) );
  XNOR2X2M U15 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n12) );
  CLKXOR2X2M U18 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n13) );
  XNOR2X1M U19 ( .A(\sub_34/carry[5] ), .B(Prescale[5]), .Y(N14) );
  OR2X1M U20 ( .A(Prescale[4]), .B(\sub_34/carry[4] ), .Y(\sub_34/carry[5] )
         );
  XNOR2X1M U21 ( .A(\sub_34/carry[4] ), .B(Prescale[4]), .Y(N13) );
  OR2X1M U22 ( .A(Prescale[3]), .B(\sub_34/carry[3] ), .Y(\sub_34/carry[4] )
         );
  XNOR2X1M U23 ( .A(\sub_34/carry[3] ), .B(Prescale[3]), .Y(N12) );
  OR2X1M U24 ( .A(Prescale[2]), .B(Prescale[1]), .Y(\sub_34/carry[3] ) );
  XNOR2X1M U25 ( .A(Prescale[1]), .B(Prescale[2]), .Y(N11) );
  NOR2BX1M U26 ( .AN(edge_cnt[0]), .B(N9), .Y(n3) );
  OAI2B2X1M U27 ( .A1N(N10), .A0(n3), .B0(edge_cnt[1]), .B1(n3), .Y(n18) );
  NOR2BX1M U28 ( .AN(N9), .B(edge_cnt[0]), .Y(n4) );
  OAI2B2X1M U29 ( .A1N(edge_cnt[1]), .A0(n4), .B0(N10), .B1(n4), .Y(n5) );
  NAND4BBX1M U30 ( .AN(n1), .BN(N14), .C(n18), .D(n5), .Y(n22) );
  CLKXOR2X2M U31 ( .A(N13), .B(edge_cnt[4]), .Y(n21) );
  CLKXOR2X2M U32 ( .A(N11), .B(edge_cnt[2]), .Y(n20) );
  CLKXOR2X2M U33 ( .A(N12), .B(edge_cnt[3]), .Y(n19) );
  NOR4X1M U34 ( .A(n22), .B(n21), .C(n20), .D(n19), .Y(N16) );
  SDFFRX1M par_err_reg ( .D(n15), .SI(edge_cnt[4]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n16) );
  INVXLM U4 ( .A(n16), .Y(n2) );
  INVX8M U16 ( .A(n2), .Y(par_err) );
endmodule


module UART_RX_strt_check_test_1 ( CLK, RST, strt_chk_en, Prescale, edge_cnt, 
        bit_cnt, sampled_bit, strt_glitch, test_si, test_se );
  input [5:0] Prescale;
  input [4:0] edge_cnt;
  input [3:0] bit_cnt;
  input CLK, RST, strt_chk_en, sampled_bit, test_si, test_se;
  output strt_glitch;
  wire   N2, N3, N4, N5, N6, N7, N9, n1, n2, n4, \sub_20/carry[5] ,
         \sub_20/carry[4] , \sub_20/carry[3] , n5, n6, n7, n8, n9, n10, n11,
         n12, n13;
  assign N2 = Prescale[0];

  SDFFRQX2M strt_glitch_reg ( .D(n4), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(strt_glitch) );
  NOR2X2M U3 ( .A(Prescale[5]), .B(\sub_20/carry[5] ), .Y(n5) );
  OAI2B1X2M U4 ( .A1N(strt_glitch), .A0(strt_chk_en), .B0(n1), .Y(n4) );
  NAND4X2M U5 ( .A(sampled_bit), .B(N9), .C(strt_chk_en), .D(n2), .Y(n1) );
  NOR4X1M U7 ( .A(bit_cnt[3]), .B(bit_cnt[2]), .C(bit_cnt[1]), .D(bit_cnt[0]), 
        .Y(n2) );
  INVX2M U8 ( .A(Prescale[1]), .Y(N3) );
  XNOR2X1M U9 ( .A(\sub_20/carry[5] ), .B(Prescale[5]), .Y(N7) );
  OR2X1M U10 ( .A(Prescale[4]), .B(\sub_20/carry[4] ), .Y(\sub_20/carry[5] )
         );
  XNOR2X1M U11 ( .A(\sub_20/carry[4] ), .B(Prescale[4]), .Y(N6) );
  OR2X1M U12 ( .A(Prescale[3]), .B(\sub_20/carry[3] ), .Y(\sub_20/carry[4] )
         );
  XNOR2X1M U13 ( .A(\sub_20/carry[3] ), .B(Prescale[3]), .Y(N5) );
  OR2X1M U14 ( .A(Prescale[2]), .B(Prescale[1]), .Y(\sub_20/carry[3] ) );
  XNOR2X1M U15 ( .A(Prescale[1]), .B(Prescale[2]), .Y(N4) );
  NOR2BX1M U16 ( .AN(edge_cnt[0]), .B(N2), .Y(n6) );
  OAI2B2X1M U17 ( .A1N(N3), .A0(n6), .B0(edge_cnt[1]), .B1(n6), .Y(n9) );
  NOR2BX1M U18 ( .AN(N2), .B(edge_cnt[0]), .Y(n7) );
  OAI2B2X1M U19 ( .A1N(edge_cnt[1]), .A0(n7), .B0(N3), .B1(n7), .Y(n8) );
  NAND4BBX1M U20 ( .AN(n5), .BN(N7), .C(n9), .D(n8), .Y(n13) );
  CLKXOR2X2M U21 ( .A(N6), .B(edge_cnt[4]), .Y(n12) );
  CLKXOR2X2M U22 ( .A(N4), .B(edge_cnt[2]), .Y(n11) );
  CLKXOR2X2M U23 ( .A(N5), .B(edge_cnt[3]), .Y(n10) );
  NOR4X1M U24 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(N9) );
endmodule


module UART_RX_stop_check_test_1 ( CLK, RST, Prescale, edge_cnt, stp_chk_en, 
        sampled_bit, stp_err, test_si, test_se );
  input [5:0] Prescale;
  input [4:0] edge_cnt;
  input CLK, RST, stp_chk_en, sampled_bit, test_si, test_se;
  output stp_err;
  wire   n14, N2, N3, N4, N5, N6, N7, N9, n1, n3, \sub_19/carry[5] ,
         \sub_19/carry[4] , \sub_19/carry[3] , n4, n6, n7, n8, n9, n10, n11,
         n12, n13, n16, n17, n2;
  assign N2 = Prescale[0];

  NOR2X2M U3 ( .A(Prescale[5]), .B(\sub_19/carry[5] ), .Y(n4) );
  OAI2B1X2M U6 ( .A1N(n17), .A0(stp_chk_en), .B0(n1), .Y(n3) );
  NAND3BX2M U7 ( .AN(sampled_bit), .B(N9), .C(stp_chk_en), .Y(n1) );
  INVX2M U8 ( .A(Prescale[1]), .Y(N3) );
  XNOR2X1M U9 ( .A(\sub_19/carry[5] ), .B(Prescale[5]), .Y(N7) );
  OR2X1M U10 ( .A(Prescale[4]), .B(\sub_19/carry[4] ), .Y(\sub_19/carry[5] )
         );
  XNOR2X1M U11 ( .A(\sub_19/carry[4] ), .B(Prescale[4]), .Y(N6) );
  OR2X1M U12 ( .A(Prescale[3]), .B(\sub_19/carry[3] ), .Y(\sub_19/carry[4] )
         );
  XNOR2X1M U13 ( .A(\sub_19/carry[3] ), .B(Prescale[3]), .Y(N5) );
  OR2X1M U14 ( .A(Prescale[2]), .B(Prescale[1]), .Y(\sub_19/carry[3] ) );
  XNOR2X1M U15 ( .A(Prescale[1]), .B(Prescale[2]), .Y(N4) );
  NOR2BX1M U16 ( .AN(edge_cnt[0]), .B(N2), .Y(n6) );
  OAI2B2X1M U17 ( .A1N(N3), .A0(n6), .B0(edge_cnt[1]), .B1(n6), .Y(n9) );
  NOR2BX1M U18 ( .AN(N2), .B(edge_cnt[0]), .Y(n7) );
  OAI2B2X1M U19 ( .A1N(edge_cnt[1]), .A0(n7), .B0(N3), .B1(n7), .Y(n8) );
  NAND4BBX1M U20 ( .AN(n4), .BN(N7), .C(n9), .D(n8), .Y(n13) );
  CLKXOR2X2M U21 ( .A(N6), .B(edge_cnt[4]), .Y(n12) );
  CLKXOR2X2M U22 ( .A(N4), .B(edge_cnt[2]), .Y(n11) );
  CLKXOR2X2M U23 ( .A(N5), .B(edge_cnt[3]), .Y(n10) );
  NOR4X1M U24 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(N9) );
  INVXLM U26 ( .A(n16), .Y(n17) );
  SDFFRX1M stp_err_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(CLK), .RN(RST), .Q(n14), .QN(n16) );
  INVXLM U4 ( .A(n14), .Y(n2) );
  INVX8M U5 ( .A(n2), .Y(stp_err) );
endmodule


module UART_RX_test_1 ( CLK, RST, RX_IN, Prescale, PAR_EN, PAR_TYP, data_valid, 
        P_DATA, parity_error, framing_error, test_si2, test_si1, test_so1, 
        test_se );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, PAR_EN, PAR_TYP, test_si2, test_si1, test_se;
  output data_valid, parity_error, framing_error, test_so1;
  wire   dat_samp_en, enable, deser_en, par_chk_en, strt_chk_en, strt_glitch,
         stp_chk_en, sampled_bit, n1, n2, n3, n4, n5, n6, n10, n11;
  wire   [4:0] edge_cnt;
  wire   [3:0] bit_cnt;
  assign test_so1 = strt_glitch;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  INVXLM U3 ( .A(framing_error), .Y(n10) );
  INVXLM U4 ( .A(n10), .Y(n11) );
  UART_RX_FSM_test_1 U0_FSM ( .CLK(CLK), .RST(n1), .RX_IN(RX_IN), .PAR_EN(
        PAR_EN), .Prescale(Prescale), .edge_cnt(edge_cnt), .bit_cnt(bit_cnt), 
        .par_err(parity_error), .strt_glitch(strt_glitch), .stp_err(n11), 
        .dat_samp_en(dat_samp_en), .enable(enable), .deser_en(deser_en), 
        .stp_chk_en(stp_chk_en), .strt_chk_en(strt_chk_en), .par_chk_en(
        par_chk_en), .data_valid(data_valid), .test_si(test_si1), .test_so(n6), 
        .test_se(test_se) );
  UART_RX_edge_bit_counter_test_1 U0_edge_bit_counter ( .CLK(CLK), .RST(n1), 
        .Prescale(Prescale), .PAR_EN(PAR_EN), .enable(enable), .bit_cnt(
        bit_cnt), .edge_cnt(edge_cnt), .test_si(n4), .test_se(test_se) );
  UART_RX_data_sampling_test_1 U0_data_sampling ( .CLK(CLK), .RST(n1), .RX_IN(
        RX_IN), .Prescale(Prescale), .dat_samp_en(dat_samp_en), .edge_cnt(
        edge_cnt), .sampled_bit(sampled_bit), .test_si(n6), .test_so(n5), 
        .test_se(test_se) );
  UART_RX_deserializer_test_1 U0_deserializer ( .CLK(CLK), .RST(n1), .bit_cnt(
        bit_cnt), .deser_en(deser_en), .sampled_bit(sampled_bit), .P_DATA(
        P_DATA), .test_si(n5), .test_so(n4), .test_se(test_se) );
  UART_RX_parity_check_test_1 U0_parity_check ( .CLK(CLK), .RST(n1), .RX_IN(
        RX_IN), .PAR_TYP(PAR_TYP), .Prescale(Prescale), .edge_cnt(edge_cnt), 
        .bit_cnt(bit_cnt), .par_chk_en(par_chk_en), .sampled_bit(sampled_bit), 
        .P_DATA(P_DATA), .par_err(parity_error), .test_so(n3), .test_se(
        test_se) );
  UART_RX_strt_check_test_1 U0_strt_check ( .CLK(CLK), .RST(n1), .strt_chk_en(
        strt_chk_en), .Prescale(Prescale), .edge_cnt(edge_cnt), .bit_cnt(
        bit_cnt), .sampled_bit(sampled_bit), .strt_glitch(strt_glitch), 
        .test_si(n3), .test_se(test_se) );
  UART_RX_stop_check_test_1 U0_stop_check ( .CLK(CLK), .RST(n1), .Prescale(
        Prescale), .edge_cnt(edge_cnt), .stp_chk_en(stp_chk_en), .sampled_bit(
        sampled_bit), .stp_err(framing_error), .test_si(test_si2), .test_se(
        test_se) );
endmodule


module UART_test_1 ( TX_CLK, TX_IN_P, TX_IN_V, TX_OUT_S, TX_OUT_V, RST, 
        PAR_TYP, PAR_EN, RX_CLK, RX_IN_S, Prescale, RX_OUT_P, RX_OUT_V, 
        parity_error, framing_error, test_si2, test_si1, test_so1, test_se );
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  output [7:0] RX_OUT_P;
  input TX_CLK, TX_IN_V, RST, PAR_TYP, PAR_EN, RX_CLK, RX_IN_S, test_si2,
         test_si1, test_se;
  output TX_OUT_S, TX_OUT_V, RX_OUT_V, parity_error, framing_error, test_so1;
  wire   n1, n2, n4;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_TX_test_1 U0_UART_TX ( .P_DATA(TX_IN_P), .Data_Valid(TX_IN_V), .PAR_EN(
        PAR_EN), .PAR_TYP(PAR_TYP), .CLK(TX_CLK), .RST(n1), .TX_OUT(TX_OUT_S), 
        .busy(TX_OUT_V), .test_si(n4), .test_so(test_so1), .test_se(test_se)
         );
  UART_RX_test_1 U0_UART_RX ( .CLK(RX_CLK), .RST(n1), .RX_IN(RX_IN_S), 
        .Prescale(Prescale), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .data_valid(
        RX_OUT_V), .P_DATA(RX_OUT_P), .parity_error(parity_error), 
        .framing_error(framing_error), .test_si2(test_si2), .test_si1(test_si1), .test_so1(n4), .test_se(test_se) );
endmodule


module SYS_CTRL_test_1 ( CLK, RST, UART_RX_DATA, UART_RX_Valid, FIFO_FULL, 
        FIFO_WR_DATA, FIFO_WR_INC, ALU_OUT, ALU_OUT_Valid, ALU_EN, ALU_FUN, 
        CLKG_EN, CLKDIV_EN, Rd_Reg, Rd_Reg_Valid, Wr_Reg, Addr, RdEn, WrEn, 
        test_so, test_se );
  input [7:0] UART_RX_DATA;
  output [7:0] FIFO_WR_DATA;
  input [15:0] ALU_OUT;
  output [3:0] ALU_FUN;
  input [7:0] Rd_Reg;
  output [7:0] Wr_Reg;
  output [3:0] Addr;
  input CLK, RST, UART_RX_Valid, FIFO_FULL, ALU_OUT_Valid, Rd_Reg_Valid,
         test_se;
  output FIFO_WR_INC, ALU_EN, CLKG_EN, CLKDIV_EN, RdEn, WrEn, test_so;
  wire   n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n28, n29, n42, n43, n44, n45, n46, n47,
         n48, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n140, n141;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [15:0] ALU_OUT_REG;
  assign test_so = current_state[3];

  SDFFRQX2M \ALU_OUT_REG_reg[15]  ( .D(n117), .SI(ALU_OUT_REG[14]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[15]) );
  SDFFRQX2M \ALU_OUT_REG_reg[14]  ( .D(n116), .SI(ALU_OUT_REG[13]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[14]) );
  SDFFRQX2M \ALU_OUT_REG_reg[13]  ( .D(n115), .SI(ALU_OUT_REG[12]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[13]) );
  SDFFRQX2M \ALU_OUT_REG_reg[12]  ( .D(n114), .SI(ALU_OUT_REG[11]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[12]) );
  SDFFRQX2M \ALU_OUT_REG_reg[11]  ( .D(n113), .SI(ALU_OUT_REG[10]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[11]) );
  SDFFRQX2M \ALU_OUT_REG_reg[10]  ( .D(n112), .SI(ALU_OUT_REG[9]), .SE(test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[10]) );
  SDFFRQX2M \ALU_OUT_REG_reg[9]  ( .D(n111), .SI(ALU_OUT_REG[8]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT_REG[9]) );
  SDFFRQX2M \ALU_OUT_REG_reg[8]  ( .D(n110), .SI(n127), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT_REG[8]) );
  SDFFRX1M \ALU_OUT_REG_reg[6]  ( .D(n108), .SI(n129), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n128), .QN(n35) );
  SDFFRX1M \ALU_OUT_REG_reg[5]  ( .D(n107), .SI(n130), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n129), .QN(n36) );
  SDFFRX1M \ALU_OUT_REG_reg[4]  ( .D(n106), .SI(n131), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n130), .QN(n37) );
  SDFFRX1M \ALU_OUT_REG_reg[3]  ( .D(n105), .SI(n132), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n131), .QN(n38) );
  SDFFRX1M \ALU_OUT_REG_reg[2]  ( .D(n104), .SI(n133), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n132), .QN(n39) );
  SDFFRX1M \ALU_OUT_REG_reg[1]  ( .D(n103), .SI(n134), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n133), .QN(n40) );
  SDFFRX1M \ALU_OUT_REG_reg[0]  ( .D(n102), .SI(n135), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n134), .QN(n41) );
  SDFFRX1M \ADDR_REG_reg[2]  ( .D(n120), .SI(n137), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n136), .QN(n31) );
  SDFFRX1M \ADDR_REG_reg[0]  ( .D(n118), .SI(Rd_Reg[7]), .SE(test_se), .CK(CLK), .RN(RST), .Q(n138), .QN(n33) );
  SDFFRX1M \ADDR_REG_reg[1]  ( .D(n119), .SI(n138), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n137), .QN(n32) );
  SDFFRX1M \ADDR_REG_reg[3]  ( .D(n121), .SI(n136), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n135), .QN(n30) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(ALU_OUT_REG[15]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .SI(current_state[2]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[3]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRX1M \ALU_OUT_REG_reg[7]  ( .D(n109), .SI(n128), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n127), .QN(n34) );
  OAI22X4M U29 ( .A0(n61), .A1(n82), .B0(n30), .B1(n101), .Y(Addr[3]) );
  NOR2X2M U31 ( .A(n56), .B(n86), .Y(ALU_FUN[2]) );
  NOR2X2M U32 ( .A(n56), .B(n88), .Y(ALU_FUN[0]) );
  OAI22X2M U33 ( .A0(n61), .A1(n86), .B0(n31), .B1(n101), .Y(Addr[2]) );
  NOR2BX2M U34 ( .AN(n58), .B(n69), .Y(n85) );
  INVX2M U35 ( .A(n89), .Y(FIFO_WR_INC) );
  NOR3BX2M U36 ( .AN(n63), .B(n90), .C(n91), .Y(n89) );
  INVX2M U37 ( .A(WrEn), .Y(n43) );
  INVX2M U38 ( .A(FIFO_FULL), .Y(n42) );
  NAND2X2M U39 ( .A(n84), .B(n100), .Y(n58) );
  NOR2X2M U40 ( .A(n122), .B(n43), .Y(Wr_Reg[5]) );
  NOR2X2M U41 ( .A(n48), .B(n43), .Y(Wr_Reg[7]) );
  NOR2X2M U42 ( .A(n49), .B(FIFO_FULL), .Y(n90) );
  NOR3X2M U43 ( .A(n124), .B(n55), .C(n122), .Y(n67) );
  NOR2BX2M U44 ( .AN(n64), .B(n65), .Y(n91) );
  NAND2X2M U45 ( .A(n73), .B(n42), .Y(n63) );
  NOR2X2M U46 ( .A(n61), .B(n126), .Y(RdEn) );
  NOR2X2M U47 ( .A(n126), .B(n85), .Y(WrEn) );
  INVX2M U48 ( .A(n62), .Y(n44) );
  NAND2X2M U49 ( .A(n79), .B(n57), .Y(n69) );
  OA21X2M U50 ( .A0(n64), .A1(n65), .B0(n66), .Y(n53) );
  NOR2X2M U51 ( .A(n126), .B(n56), .Y(ALU_EN) );
  NOR2X2M U52 ( .A(n85), .B(n88), .Y(Wr_Reg[0]) );
  NAND2X2M U53 ( .A(n100), .B(n80), .Y(n56) );
  NOR2X2M U54 ( .A(n83), .B(n73), .Y(n50) );
  OAI211X2M U55 ( .A0(n49), .A1(n42), .B0(n46), .C0(n50), .Y(next_state[3]) );
  INVX2M U56 ( .A(ALU_EN), .Y(n46) );
  NOR2X2M U57 ( .A(n85), .B(n82), .Y(Wr_Reg[3]) );
  NOR2X2M U58 ( .A(n85), .B(n87), .Y(Wr_Reg[1]) );
  NOR2X2M U59 ( .A(n85), .B(n86), .Y(Wr_Reg[2]) );
  NOR2X2M U60 ( .A(n56), .B(n87), .Y(ALU_FUN[1]) );
  NOR2X2M U61 ( .A(n56), .B(n82), .Y(ALU_FUN[3]) );
  NAND3X2M U62 ( .A(n56), .B(n49), .C(n50), .Y(CLKG_EN) );
  OAI222X1M U63 ( .A0(n61), .A1(n88), .B0(n33), .B1(n101), .C0(n126), .C1(n58), 
        .Y(Addr[0]) );
  NOR2X2M U64 ( .A(n45), .B(current_state[3]), .Y(n84) );
  NOR2X2M U65 ( .A(n47), .B(current_state[1]), .Y(n100) );
  NAND3X2M U66 ( .A(current_state[1]), .B(n47), .C(n84), .Y(n79) );
  NAND2BX2M U67 ( .AN(n79), .B(UART_RX_Valid), .Y(n101) );
  INVX2M U68 ( .A(current_state[2]), .Y(n47) );
  INVX2M U69 ( .A(current_state[0]), .Y(n45) );
  NOR3BX2M U70 ( .AN(n84), .B(current_state[1]), .C(current_state[2]), .Y(n74)
         );
  NAND4BX1M U71 ( .AN(current_state[1]), .B(n47), .C(n80), .D(n81), .Y(n55) );
  NOR2X2M U72 ( .A(n82), .B(n48), .Y(n81) );
  NOR2X2M U73 ( .A(current_state[3]), .B(current_state[0]), .Y(n80) );
  NAND2X2M U74 ( .A(n74), .B(UART_RX_Valid), .Y(n62) );
  NAND4X2M U75 ( .A(current_state[1]), .B(current_state[3]), .C(
        current_state[0]), .D(current_state[2]), .Y(n49) );
  NOR2BX2M U76 ( .AN(UART_RX_DATA[4]), .B(n43), .Y(Wr_Reg[4]) );
  NOR2BX2M U77 ( .AN(UART_RX_DATA[6]), .B(n43), .Y(Wr_Reg[6]) );
  NAND2X2M U78 ( .A(UART_RX_DATA[3]), .B(UART_RX_Valid), .Y(n82) );
  OAI22X1M U79 ( .A0(n125), .A1(n62), .B0(n44), .B1(n33), .Y(n118) );
  OAI22X1M U80 ( .A0(n124), .A1(n62), .B0(n44), .B1(n32), .Y(n119) );
  OAI22X1M U81 ( .A0(n123), .A1(n62), .B0(n44), .B1(n31), .Y(n120) );
  NAND3X2M U82 ( .A(n80), .B(n47), .C(current_state[1]), .Y(n61) );
  AND3X2M U83 ( .A(current_state[0]), .B(n100), .C(current_state[3]), .Y(n73)
         );
  NAND2X2M U84 ( .A(UART_RX_DATA[1]), .B(UART_RX_Valid), .Y(n87) );
  NAND2X2M U85 ( .A(UART_RX_DATA[2]), .B(UART_RX_Valid), .Y(n86) );
  INVX2M U86 ( .A(UART_RX_Valid), .Y(n126) );
  NAND2X2M U87 ( .A(UART_RX_DATA[0]), .B(UART_RX_Valid), .Y(n88) );
  NAND3X2M U88 ( .A(current_state[1]), .B(current_state[2]), .C(n84), .Y(n57)
         );
  OAI21X2M U89 ( .A0(n41), .A1(n63), .B0(n99), .Y(FIFO_WR_DATA[0]) );
  AOI22X1M U90 ( .A0(Rd_Reg[0]), .A1(n91), .B0(n90), .B1(ALU_OUT_REG[8]), .Y(
        n99) );
  OAI21X2M U91 ( .A0(n40), .A1(n63), .B0(n98), .Y(FIFO_WR_DATA[1]) );
  AOI22X1M U92 ( .A0(Rd_Reg[1]), .A1(n91), .B0(n90), .B1(ALU_OUT_REG[9]), .Y(
        n98) );
  OAI21X2M U93 ( .A0(n39), .A1(n63), .B0(n97), .Y(FIFO_WR_DATA[2]) );
  AOI22X1M U94 ( .A0(Rd_Reg[2]), .A1(n91), .B0(n90), .B1(ALU_OUT_REG[10]), .Y(
        n97) );
  OAI21X2M U95 ( .A0(n38), .A1(n63), .B0(n96), .Y(FIFO_WR_DATA[3]) );
  AOI22X1M U96 ( .A0(Rd_Reg[3]), .A1(n91), .B0(n90), .B1(ALU_OUT_REG[11]), .Y(
        n96) );
  OAI21X2M U97 ( .A0(n37), .A1(n63), .B0(n95), .Y(FIFO_WR_DATA[4]) );
  AOI22X1M U98 ( .A0(n141), .A1(n91), .B0(n90), .B1(ALU_OUT_REG[12]), .Y(n95)
         );
  OAI21X2M U99 ( .A0(n36), .A1(n63), .B0(n94), .Y(FIFO_WR_DATA[5]) );
  AOI22X1M U100 ( .A0(Rd_Reg[5]), .A1(n91), .B0(n90), .B1(ALU_OUT_REG[13]), 
        .Y(n94) );
  OAI21X2M U101 ( .A0(n35), .A1(n63), .B0(n93), .Y(FIFO_WR_DATA[6]) );
  AOI22X1M U102 ( .A0(Rd_Reg[6]), .A1(n91), .B0(n90), .B1(ALU_OUT_REG[14]), 
        .Y(n93) );
  OAI21X2M U103 ( .A0(n34), .A1(n63), .B0(n92), .Y(FIFO_WR_DATA[7]) );
  AOI22X1M U104 ( .A0(Rd_Reg[7]), .A1(n91), .B0(n90), .B1(ALU_OUT_REG[15]), 
        .Y(n92) );
  OAI2BB2X1M U105 ( .B0(n44), .B1(n30), .A0N(UART_RX_DATA[3]), .A1N(n44), .Y(
        n121) );
  NAND3X2M U106 ( .A(n80), .B(current_state[2]), .C(current_state[1]), .Y(n65)
         );
  NOR2BX2M U107 ( .AN(Rd_Reg_Valid), .B(FIFO_FULL), .Y(n64) );
  NAND4BX1M U108 ( .AN(n51), .B(n50), .C(n52), .D(n53), .Y(next_state[2]) );
  NAND4BX1M U109 ( .AN(RdEn), .B(n56), .C(n57), .D(n58), .Y(n51) );
  NAND4X2M U110 ( .A(UART_RX_DATA[0]), .B(UART_RX_DATA[6]), .C(UART_RX_DATA[4]), .D(n54), .Y(n52) );
  NOR4X1M U111 ( .A(UART_RX_DATA[5]), .B(UART_RX_DATA[1]), .C(n55), .D(n123), 
        .Y(n54) );
  NAND3X2M U112 ( .A(n59), .B(n53), .C(n60), .Y(next_state[1]) );
  AND3X2M U113 ( .A(n61), .B(n62), .C(n63), .Y(n60) );
  AOI32X1M U114 ( .A0(n67), .A1(UART_RX_DATA[4]), .A2(n68), .B0(n69), .B1(n126), .Y(n59) );
  NOR3X2M U115 ( .A(n125), .B(UART_RX_DATA[6]), .C(UART_RX_DATA[2]), .Y(n68)
         );
  NAND3X2M U116 ( .A(n70), .B(n66), .C(n71), .Y(next_state[0]) );
  NOR4BX1M U117 ( .AN(n57), .B(n28), .C(n73), .D(n74), .Y(n71) );
  AOI31X2M U118 ( .A0(n67), .A1(n125), .A2(n77), .B0(n78), .Y(n70) );
  NOR3X2M U119 ( .A(UART_RX_DATA[2]), .B(UART_RX_DATA[6]), .C(UART_RX_DATA[4]), 
        .Y(n77) );
  OA21X2M U120 ( .A0(n49), .A1(n42), .B0(n75), .Y(n66) );
  NAND4BX1M U121 ( .AN(n55), .B(UART_RX_DATA[2]), .C(UART_RX_DATA[6]), .D(n76), 
        .Y(n75) );
  NOR4X1M U122 ( .A(UART_RX_DATA[5]), .B(UART_RX_DATA[4]), .C(UART_RX_DATA[1]), 
        .D(UART_RX_DATA[0]), .Y(n76) );
  INVX2M U123 ( .A(UART_RX_DATA[7]), .Y(n48) );
  OAI22X1M U124 ( .A0(n61), .A1(n87), .B0(n32), .B1(n101), .Y(Addr[1]) );
  AND3X2M U125 ( .A(n100), .B(n45), .C(current_state[3]), .Y(n83) );
  AOI21X2M U126 ( .A0(n79), .A1(n58), .B0(UART_RX_Valid), .Y(n78) );
  OAI2BB2X1M U127 ( .B0(n72), .B1(n41), .A0N(ALU_OUT[0]), .A1N(n72), .Y(n102)
         );
  OAI2BB2X1M U128 ( .B0(n29), .B1(n40), .A0N(ALU_OUT[1]), .A1N(n29), .Y(n103)
         );
  OAI2BB2X1M U129 ( .B0(n28), .B1(n39), .A0N(ALU_OUT[2]), .A1N(n28), .Y(n104)
         );
  OAI2BB2X1M U130 ( .B0(n72), .B1(n38), .A0N(ALU_OUT[3]), .A1N(n72), .Y(n105)
         );
  OAI2BB2X1M U131 ( .B0(n29), .B1(n37), .A0N(ALU_OUT[4]), .A1N(n29), .Y(n106)
         );
  OAI2BB2X1M U132 ( .B0(n28), .B1(n36), .A0N(ALU_OUT[5]), .A1N(n28), .Y(n107)
         );
  OAI2BB2X1M U133 ( .B0(n72), .B1(n35), .A0N(ALU_OUT[6]), .A1N(n72), .Y(n108)
         );
  OAI2BB2X1M U134 ( .B0(n29), .B1(n34), .A0N(ALU_OUT[7]), .A1N(n29), .Y(n109)
         );
  AND2X2M U135 ( .A(ALU_OUT_Valid), .B(n83), .Y(n72) );
  AND2X2M U136 ( .A(ALU_OUT_Valid), .B(n83), .Y(n28) );
  AND2X2M U137 ( .A(ALU_OUT_Valid), .B(n83), .Y(n29) );
  INVX2M U138 ( .A(UART_RX_DATA[2]), .Y(n123) );
  INVX2M U139 ( .A(UART_RX_DATA[0]), .Y(n125) );
  INVX2M U140 ( .A(UART_RX_DATA[1]), .Y(n124) );
  INVX2M U141 ( .A(UART_RX_DATA[5]), .Y(n122) );
  AO2B2X2M U142 ( .B0(ALU_OUT[8]), .B1(n28), .A0(ALU_OUT_REG[8]), .A1N(n29), 
        .Y(n110) );
  AO2B2X2M U143 ( .B0(ALU_OUT[9]), .B1(n72), .A0(ALU_OUT_REG[9]), .A1N(n28), 
        .Y(n111) );
  AO2B2X2M U144 ( .B0(ALU_OUT[10]), .B1(n29), .A0(ALU_OUT_REG[10]), .A1N(n28), 
        .Y(n112) );
  AO2B2X2M U145 ( .B0(ALU_OUT[11]), .B1(n28), .A0(ALU_OUT_REG[11]), .A1N(n29), 
        .Y(n113) );
  AO2B2X2M U146 ( .B0(ALU_OUT[12]), .B1(n72), .A0(ALU_OUT_REG[12]), .A1N(n28), 
        .Y(n114) );
  AO2B2X2M U147 ( .B0(ALU_OUT[13]), .B1(n29), .A0(ALU_OUT_REG[13]), .A1N(n28), 
        .Y(n115) );
  AO2B2X2M U148 ( .B0(ALU_OUT[14]), .B1(n28), .A0(ALU_OUT_REG[14]), .A1N(n72), 
        .Y(n116) );
  AO2B2X2M U149 ( .B0(ALU_OUT[15]), .B1(n72), .A0(ALU_OUT_REG[15]), .A1N(n28), 
        .Y(n117) );
  INVXLM U150 ( .A(Rd_Reg[4]), .Y(n140) );
  INVXLM U151 ( .A(n140), .Y(n141) );
  INVX2M U3 ( .A(1'b0), .Y(CLKDIV_EN) );
endmodule


module Register_File_test_1 ( WrData, Adresss, WrEn, RdEn, CLK, RST, RdData, 
        RdData_Valid, REG0, REG1, REG2, REG3, test_si3, test_si2, test_si1, 
        test_so1, test_se );
  input [7:0] WrData;
  input [3:0] Adresss;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST, test_si3, test_si2, test_si1, test_se;
  output RdData_Valid, test_so1;
  wire   N11, N12, N13, N14, \Memory[15][7] , \Memory[15][6] , \Memory[15][5] ,
         \Memory[15][4] , \Memory[15][3] , \Memory[15][2] , \Memory[15][1] ,
         \Memory[15][0] , \Memory[14][7] , \Memory[14][6] , \Memory[14][5] ,
         \Memory[14][4] , \Memory[14][3] , \Memory[14][2] , \Memory[14][1] ,
         \Memory[14][0] , \Memory[13][7] , \Memory[13][6] , \Memory[13][5] ,
         \Memory[13][4] , \Memory[13][3] , \Memory[13][2] , \Memory[13][1] ,
         \Memory[13][0] , \Memory[12][7] , \Memory[12][6] , \Memory[12][5] ,
         \Memory[12][4] , \Memory[12][3] , \Memory[12][2] , \Memory[12][1] ,
         \Memory[12][0] , \Memory[11][7] , \Memory[11][6] , \Memory[11][5] ,
         \Memory[11][4] , \Memory[11][3] , \Memory[11][2] , \Memory[11][1] ,
         \Memory[11][0] , \Memory[10][7] , \Memory[10][6] , \Memory[10][5] ,
         \Memory[10][4] , \Memory[10][3] , \Memory[10][2] , \Memory[10][1] ,
         \Memory[10][0] , \Memory[9][7] , \Memory[9][6] , \Memory[9][5] ,
         \Memory[9][4] , \Memory[9][3] , \Memory[9][2] , \Memory[9][1] ,
         \Memory[9][0] , \Memory[8][7] , \Memory[8][6] , \Memory[8][5] ,
         \Memory[8][4] , \Memory[8][3] , \Memory[8][2] , \Memory[8][1] ,
         \Memory[8][0] , \Memory[7][7] , \Memory[7][6] , \Memory[7][5] ,
         \Memory[7][4] , \Memory[7][3] , \Memory[7][2] , \Memory[7][1] ,
         \Memory[7][0] , \Memory[6][7] , \Memory[6][6] , \Memory[6][5] ,
         \Memory[6][4] , \Memory[6][3] , \Memory[6][2] , \Memory[6][1] ,
         \Memory[6][0] , \Memory[5][7] , \Memory[5][6] , \Memory[5][5] ,
         \Memory[5][4] , \Memory[5][3] , \Memory[5][2] , \Memory[5][1] ,
         \Memory[5][0] , \Memory[4][7] , \Memory[4][6] , \Memory[4][5] ,
         \Memory[4][4] , \Memory[4][3] , \Memory[4][2] , \Memory[4][1] ,
         \Memory[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n371, n372, n373, n374,
         n375, n376, n377, n378, n379;
  assign N11 = Adresss[0];
  assign N12 = Adresss[1];
  assign N13 = Adresss[2];
  assign N14 = Adresss[3];
  assign test_so1 = \Memory[5][3] ;

  SDFFRQX2M \Memory_reg[13][7]  ( .D(n298), .SI(\Memory[13][6] ), .SE(n375), 
        .CK(CLK), .RN(n350), .Q(\Memory[13][7] ) );
  SDFFRQX2M \Memory_reg[13][6]  ( .D(n297), .SI(\Memory[13][5] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\Memory[13][6] ) );
  SDFFRQX2M \Memory_reg[13][5]  ( .D(n296), .SI(\Memory[13][4] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\Memory[13][5] ) );
  SDFFRQX2M \Memory_reg[13][4]  ( .D(n295), .SI(\Memory[13][3] ), .SE(n376), 
        .CK(CLK), .RN(n350), .Q(\Memory[13][4] ) );
  SDFFRQX2M \Memory_reg[13][3]  ( .D(n294), .SI(\Memory[13][2] ), .SE(n375), 
        .CK(CLK), .RN(n350), .Q(\Memory[13][3] ) );
  SDFFRQX2M \Memory_reg[13][2]  ( .D(n293), .SI(\Memory[13][1] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\Memory[13][2] ) );
  SDFFRQX2M \Memory_reg[13][1]  ( .D(n292), .SI(\Memory[13][0] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\Memory[13][1] ) );
  SDFFRQX2M \Memory_reg[13][0]  ( .D(n291), .SI(\Memory[12][7] ), .SE(n376), 
        .CK(CLK), .RN(n350), .Q(\Memory[13][0] ) );
  SDFFRQX2M \Memory_reg[9][7]  ( .D(n266), .SI(\Memory[9][6] ), .SE(n375), 
        .CK(CLK), .RN(n348), .Q(\Memory[9][7] ) );
  SDFFRQX2M \Memory_reg[9][6]  ( .D(n265), .SI(\Memory[9][5] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\Memory[9][6] ) );
  SDFFRQX2M \Memory_reg[9][5]  ( .D(n264), .SI(\Memory[9][4] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\Memory[9][5] ) );
  SDFFRQX2M \Memory_reg[9][4]  ( .D(n263), .SI(\Memory[9][3] ), .SE(n376), 
        .CK(CLK), .RN(n348), .Q(\Memory[9][4] ) );
  SDFFRQX2M \Memory_reg[9][3]  ( .D(n262), .SI(\Memory[9][2] ), .SE(n375), 
        .CK(CLK), .RN(n348), .Q(\Memory[9][3] ) );
  SDFFRQX2M \Memory_reg[9][2]  ( .D(n261), .SI(\Memory[9][1] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\Memory[9][2] ) );
  SDFFRQX2M \Memory_reg[9][1]  ( .D(n260), .SI(\Memory[9][0] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\Memory[9][1] ) );
  SDFFRQX2M \Memory_reg[9][0]  ( .D(n259), .SI(\Memory[8][7] ), .SE(n376), 
        .CK(CLK), .RN(n347), .Q(\Memory[9][0] ) );
  SDFFRQX2M \Memory_reg[5][7]  ( .D(n234), .SI(\Memory[5][6] ), .SE(n375), 
        .CK(CLK), .RN(n346), .Q(\Memory[5][7] ) );
  SDFFRQX2M \Memory_reg[5][6]  ( .D(n233), .SI(\Memory[5][5] ), .SE(n371), 
        .CK(CLK), .RN(n346), .Q(\Memory[5][6] ) );
  SDFFRQX2M \Memory_reg[5][5]  ( .D(n232), .SI(\Memory[5][4] ), .SE(n373), 
        .CK(CLK), .RN(n345), .Q(\Memory[5][5] ) );
  SDFFRQX2M \Memory_reg[5][4]  ( .D(n231), .SI(test_si2), .SE(n376), .CK(CLK), 
        .RN(n345), .Q(\Memory[5][4] ) );
  SDFFRQX2M \Memory_reg[5][2]  ( .D(n229), .SI(\Memory[5][1] ), .SE(n372), 
        .CK(CLK), .RN(n345), .Q(\Memory[5][2] ) );
  SDFFRQX2M \Memory_reg[5][1]  ( .D(n228), .SI(\Memory[5][0] ), .SE(n373), 
        .CK(CLK), .RN(n345), .Q(\Memory[5][1] ) );
  SDFFRQX2M \Memory_reg[5][0]  ( .D(n227), .SI(\Memory[4][7] ), .SE(n376), 
        .CK(CLK), .RN(n345), .Q(\Memory[5][0] ) );
  SDFFRQX2M \Memory_reg[15][7]  ( .D(n314), .SI(\Memory[15][6] ), .SE(n375), 
        .CK(CLK), .RN(n342), .Q(\Memory[15][7] ) );
  SDFFRQX2M \Memory_reg[15][6]  ( .D(n313), .SI(\Memory[15][5] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\Memory[15][6] ) );
  SDFFRQX2M \Memory_reg[15][5]  ( .D(n312), .SI(\Memory[15][4] ), .SE(n373), 
        .CK(CLK), .RN(n351), .Q(\Memory[15][5] ) );
  SDFFRQX2M \Memory_reg[15][4]  ( .D(n311), .SI(\Memory[15][3] ), .SE(n376), 
        .CK(CLK), .RN(n351), .Q(\Memory[15][4] ) );
  SDFFRQX2M \Memory_reg[15][3]  ( .D(n310), .SI(\Memory[15][2] ), .SE(n375), 
        .CK(CLK), .RN(n351), .Q(\Memory[15][3] ) );
  SDFFRQX2M \Memory_reg[15][2]  ( .D(n309), .SI(\Memory[15][1] ), .SE(n372), 
        .CK(CLK), .RN(n351), .Q(\Memory[15][2] ) );
  SDFFRQX2M \Memory_reg[15][1]  ( .D(n308), .SI(\Memory[15][0] ), .SE(n373), 
        .CK(CLK), .RN(n351), .Q(\Memory[15][1] ) );
  SDFFRQX2M \Memory_reg[15][0]  ( .D(n307), .SI(\Memory[14][7] ), .SE(n376), 
        .CK(CLK), .RN(n351), .Q(\Memory[15][0] ) );
  SDFFRQX2M \Memory_reg[11][7]  ( .D(n282), .SI(\Memory[11][6] ), .SE(n375), 
        .CK(CLK), .RN(n349), .Q(\Memory[11][7] ) );
  SDFFRQX2M \Memory_reg[11][6]  ( .D(n281), .SI(\Memory[11][5] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\Memory[11][6] ) );
  SDFFRQX2M \Memory_reg[11][5]  ( .D(n280), .SI(\Memory[11][4] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\Memory[11][5] ) );
  SDFFRQX2M \Memory_reg[11][4]  ( .D(n279), .SI(\Memory[11][3] ), .SE(n376), 
        .CK(CLK), .RN(n349), .Q(\Memory[11][4] ) );
  SDFFRQX2M \Memory_reg[11][3]  ( .D(n278), .SI(\Memory[11][2] ), .SE(n375), 
        .CK(CLK), .RN(n349), .Q(\Memory[11][3] ) );
  SDFFRQX2M \Memory_reg[11][2]  ( .D(n277), .SI(\Memory[11][1] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\Memory[11][2] ) );
  SDFFRQX2M \Memory_reg[11][1]  ( .D(n276), .SI(\Memory[11][0] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\Memory[11][1] ) );
  SDFFRQX2M \Memory_reg[11][0]  ( .D(n275), .SI(\Memory[10][7] ), .SE(n376), 
        .CK(CLK), .RN(n349), .Q(\Memory[11][0] ) );
  SDFFRQX2M \Memory_reg[7][7]  ( .D(n250), .SI(\Memory[7][6] ), .SE(n375), 
        .CK(CLK), .RN(n347), .Q(\Memory[7][7] ) );
  SDFFRQX2M \Memory_reg[7][6]  ( .D(n249), .SI(\Memory[7][5] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\Memory[7][6] ) );
  SDFFRQX2M \Memory_reg[7][5]  ( .D(n248), .SI(\Memory[7][4] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\Memory[7][5] ) );
  SDFFRQX2M \Memory_reg[7][4]  ( .D(n247), .SI(\Memory[7][3] ), .SE(n376), 
        .CK(CLK), .RN(n347), .Q(\Memory[7][4] ) );
  SDFFRQX2M \Memory_reg[7][3]  ( .D(n246), .SI(\Memory[7][2] ), .SE(n375), 
        .CK(CLK), .RN(n347), .Q(\Memory[7][3] ) );
  SDFFRQX2M \Memory_reg[7][2]  ( .D(n245), .SI(\Memory[7][1] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\Memory[7][2] ) );
  SDFFRQX2M \Memory_reg[7][1]  ( .D(n244), .SI(\Memory[7][0] ), .SE(n373), 
        .CK(CLK), .RN(n346), .Q(\Memory[7][1] ) );
  SDFFRQX2M \Memory_reg[7][0]  ( .D(n243), .SI(\Memory[6][7] ), .SE(n376), 
        .CK(CLK), .RN(n346), .Q(\Memory[7][0] ) );
  SDFFRQX2M \Memory_reg[14][7]  ( .D(n306), .SI(\Memory[14][6] ), .SE(n375), 
        .CK(CLK), .RN(n351), .Q(\Memory[14][7] ) );
  SDFFRQX2M \Memory_reg[14][6]  ( .D(n305), .SI(\Memory[14][5] ), .SE(n371), 
        .CK(CLK), .RN(n351), .Q(\Memory[14][6] ) );
  SDFFRQX2M \Memory_reg[14][5]  ( .D(n304), .SI(\Memory[14][4] ), .SE(n373), 
        .CK(CLK), .RN(n351), .Q(\Memory[14][5] ) );
  SDFFRQX2M \Memory_reg[14][4]  ( .D(n303), .SI(\Memory[14][3] ), .SE(n376), 
        .CK(CLK), .RN(n351), .Q(\Memory[14][4] ) );
  SDFFRQX2M \Memory_reg[14][3]  ( .D(n302), .SI(\Memory[14][2] ), .SE(n375), 
        .CK(CLK), .RN(n351), .Q(\Memory[14][3] ) );
  SDFFRQX2M \Memory_reg[14][2]  ( .D(n301), .SI(\Memory[14][1] ), .SE(n372), 
        .CK(CLK), .RN(n350), .Q(\Memory[14][2] ) );
  SDFFRQX2M \Memory_reg[14][1]  ( .D(n300), .SI(\Memory[14][0] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\Memory[14][1] ) );
  SDFFRQX2M \Memory_reg[14][0]  ( .D(n299), .SI(\Memory[13][7] ), .SE(n376), 
        .CK(CLK), .RN(n350), .Q(\Memory[14][0] ) );
  SDFFRQX2M \Memory_reg[10][7]  ( .D(n274), .SI(\Memory[10][6] ), .SE(n375), 
        .CK(CLK), .RN(n349), .Q(\Memory[10][7] ) );
  SDFFRQX2M \Memory_reg[10][6]  ( .D(n273), .SI(\Memory[10][5] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\Memory[10][6] ) );
  SDFFRQX2M \Memory_reg[10][5]  ( .D(n272), .SI(\Memory[10][4] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\Memory[10][5] ) );
  SDFFRQX2M \Memory_reg[10][4]  ( .D(n271), .SI(\Memory[10][3] ), .SE(n376), 
        .CK(CLK), .RN(n348), .Q(\Memory[10][4] ) );
  SDFFRQX2M \Memory_reg[10][3]  ( .D(n270), .SI(\Memory[10][2] ), .SE(n375), 
        .CK(CLK), .RN(n348), .Q(\Memory[10][3] ) );
  SDFFRQX2M \Memory_reg[10][2]  ( .D(n269), .SI(\Memory[10][1] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\Memory[10][2] ) );
  SDFFRQX2M \Memory_reg[10][1]  ( .D(n268), .SI(\Memory[10][0] ), .SE(n373), 
        .CK(CLK), .RN(n348), .Q(\Memory[10][1] ) );
  SDFFRQX2M \Memory_reg[10][0]  ( .D(n267), .SI(\Memory[9][7] ), .SE(n376), 
        .CK(CLK), .RN(n348), .Q(\Memory[10][0] ) );
  SDFFRQX2M \Memory_reg[6][7]  ( .D(n242), .SI(\Memory[6][6] ), .SE(n375), 
        .CK(CLK), .RN(n346), .Q(\Memory[6][7] ) );
  SDFFRQX2M \Memory_reg[6][6]  ( .D(n241), .SI(\Memory[6][5] ), .SE(n371), 
        .CK(CLK), .RN(n346), .Q(\Memory[6][6] ) );
  SDFFRQX2M \Memory_reg[6][5]  ( .D(n240), .SI(\Memory[6][4] ), .SE(n373), 
        .CK(CLK), .RN(n346), .Q(\Memory[6][5] ) );
  SDFFRQX2M \Memory_reg[6][4]  ( .D(n239), .SI(\Memory[6][3] ), .SE(n376), 
        .CK(CLK), .RN(n346), .Q(\Memory[6][4] ) );
  SDFFRQX2M \Memory_reg[6][3]  ( .D(n238), .SI(\Memory[6][2] ), .SE(n375), 
        .CK(CLK), .RN(n346), .Q(\Memory[6][3] ) );
  SDFFRQX2M \Memory_reg[6][2]  ( .D(n237), .SI(\Memory[6][1] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\Memory[6][2] ) );
  SDFFRQX2M \Memory_reg[6][1]  ( .D(n236), .SI(\Memory[6][0] ), .SE(n373), 
        .CK(CLK), .RN(n346), .Q(\Memory[6][1] ) );
  SDFFRQX2M \Memory_reg[6][0]  ( .D(n235), .SI(\Memory[5][7] ), .SE(n376), 
        .CK(CLK), .RN(n346), .Q(\Memory[6][0] ) );
  SDFFRQX2M \Memory_reg[12][7]  ( .D(n290), .SI(\Memory[12][6] ), .SE(n375), 
        .CK(CLK), .RN(n350), .Q(\Memory[12][7] ) );
  SDFFRQX2M \Memory_reg[12][6]  ( .D(n289), .SI(\Memory[12][5] ), .SE(n371), 
        .CK(CLK), .RN(n350), .Q(\Memory[12][6] ) );
  SDFFRQX2M \Memory_reg[12][5]  ( .D(n288), .SI(\Memory[12][4] ), .SE(n373), 
        .CK(CLK), .RN(n350), .Q(\Memory[12][5] ) );
  SDFFRQX2M \Memory_reg[12][4]  ( .D(n287), .SI(\Memory[12][3] ), .SE(n376), 
        .CK(CLK), .RN(n349), .Q(\Memory[12][4] ) );
  SDFFRQX2M \Memory_reg[12][3]  ( .D(n286), .SI(\Memory[12][2] ), .SE(n375), 
        .CK(CLK), .RN(n349), .Q(\Memory[12][3] ) );
  SDFFRQX2M \Memory_reg[12][2]  ( .D(n285), .SI(\Memory[12][1] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\Memory[12][2] ) );
  SDFFRQX2M \Memory_reg[12][1]  ( .D(n284), .SI(\Memory[12][0] ), .SE(n373), 
        .CK(CLK), .RN(n349), .Q(\Memory[12][1] ) );
  SDFFRQX2M \Memory_reg[12][0]  ( .D(n283), .SI(\Memory[11][7] ), .SE(n376), 
        .CK(CLK), .RN(n349), .Q(\Memory[12][0] ) );
  SDFFRQX2M \Memory_reg[8][7]  ( .D(n258), .SI(\Memory[8][6] ), .SE(n375), 
        .CK(CLK), .RN(n347), .Q(\Memory[8][7] ) );
  SDFFRQX2M \Memory_reg[8][6]  ( .D(n257), .SI(\Memory[8][5] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\Memory[8][6] ) );
  SDFFRQX2M \Memory_reg[8][5]  ( .D(n256), .SI(\Memory[8][4] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\Memory[8][5] ) );
  SDFFRQX2M \Memory_reg[8][4]  ( .D(n255), .SI(\Memory[8][3] ), .SE(n376), 
        .CK(CLK), .RN(n347), .Q(\Memory[8][4] ) );
  SDFFRQX2M \Memory_reg[8][3]  ( .D(n254), .SI(\Memory[8][2] ), .SE(n375), 
        .CK(CLK), .RN(n347), .Q(\Memory[8][3] ) );
  SDFFRQX2M \Memory_reg[8][2]  ( .D(n253), .SI(\Memory[8][1] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\Memory[8][2] ) );
  SDFFRQX2M \Memory_reg[8][1]  ( .D(n252), .SI(\Memory[8][0] ), .SE(n373), 
        .CK(CLK), .RN(n347), .Q(\Memory[8][1] ) );
  SDFFRQX2M \Memory_reg[8][0]  ( .D(n251), .SI(\Memory[7][7] ), .SE(n376), 
        .CK(CLK), .RN(n347), .Q(\Memory[8][0] ) );
  SDFFRQX2M \Memory_reg[4][7]  ( .D(n226), .SI(\Memory[4][6] ), .SE(n375), 
        .CK(CLK), .RN(n345), .Q(\Memory[4][7] ) );
  SDFFRQX2M \Memory_reg[4][6]  ( .D(n225), .SI(\Memory[4][5] ), .SE(n371), 
        .CK(CLK), .RN(n345), .Q(\Memory[4][6] ) );
  SDFFRQX2M \Memory_reg[4][5]  ( .D(n224), .SI(\Memory[4][4] ), .SE(n373), 
        .CK(CLK), .RN(n345), .Q(\Memory[4][5] ) );
  SDFFRQX2M \Memory_reg[4][4]  ( .D(n223), .SI(\Memory[4][3] ), .SE(n376), 
        .CK(CLK), .RN(n345), .Q(\Memory[4][4] ) );
  SDFFRQX2M \Memory_reg[4][3]  ( .D(n222), .SI(\Memory[4][2] ), .SE(n375), 
        .CK(CLK), .RN(n345), .Q(\Memory[4][3] ) );
  SDFFRQX2M \Memory_reg[4][2]  ( .D(n221), .SI(\Memory[4][1] ), .SE(n372), 
        .CK(CLK), .RN(n345), .Q(\Memory[4][2] ) );
  SDFFRQX2M \Memory_reg[4][1]  ( .D(n220), .SI(\Memory[4][0] ), .SE(n373), 
        .CK(CLK), .RN(n345), .Q(\Memory[4][1] ) );
  SDFFRQX2M \Memory_reg[4][0]  ( .D(n219), .SI(REG3[7]), .SE(n376), .CK(CLK), 
        .RN(n345), .Q(\Memory[4][0] ) );
  SDFFRQX2M \RdData_reg[7]  ( .D(n186), .SI(RdData[6]), .SE(n375), .CK(CLK), 
        .RN(n342), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n185), .SI(RdData[5]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n184), .SI(test_si3), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n182), .SI(RdData[2]), .SE(n375), .CK(CLK), 
        .RN(n342), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n181), .SI(RdData[1]), .SE(n372), .CK(CLK), 
        .RN(n342), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n180), .SI(RdData[0]), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n179), .SI(RdData_Valid), .SE(n376), .CK(CLK), 
        .RN(n342), .Q(RdData[0]) );
  SDFFRQX2M \Memory_reg[2][1]  ( .D(n204), .SI(REG2[0]), .SE(n375), .CK(CLK), 
        .RN(n344), .Q(REG2[1]) );
  SDFFRQX2M \Memory_reg[3][0]  ( .D(n211), .SI(REG2[7]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG3[0]) );
  SDFFRQX2M \Memory_reg[1][6]  ( .D(n201), .SI(REG1[5]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG1[6]) );
  SDFFRQX2M \Memory_reg[0][7]  ( .D(n194), .SI(REG0[6]), .SE(n376), .CK(CLK), 
        .RN(n343), .Q(REG0[7]) );
  SDFFRQX2M \Memory_reg[0][6]  ( .D(n193), .SI(REG0[5]), .SE(n375), .CK(CLK), 
        .RN(n343), .Q(REG0[6]) );
  SDFFRQX2M \Memory_reg[0][5]  ( .D(n192), .SI(REG0[4]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(REG0[5]) );
  SDFFRQX2M \Memory_reg[0][4]  ( .D(n191), .SI(REG0[3]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG0[4]) );
  SDFFRQX2M \Memory_reg[0][3]  ( .D(n190), .SI(REG0[2]), .SE(n376), .CK(CLK), 
        .RN(n343), .Q(REG0[3]) );
  SDFFRQX2M \Memory_reg[0][2]  ( .D(n189), .SI(REG0[1]), .SE(n375), .CK(CLK), 
        .RN(n343), .Q(REG0[2]) );
  SDFFRQX2M \Memory_reg[0][1]  ( .D(n188), .SI(REG0[0]), .SE(n371), .CK(CLK), 
        .RN(n342), .Q(REG0[1]) );
  SDFFRQX2M \Memory_reg[0][0]  ( .D(n187), .SI(test_si1), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(REG0[0]) );
  SDFFSQX2M \Memory_reg[2][0]  ( .D(n203), .SI(REG1[7]), .SE(n371), .CK(CLK), 
        .SN(n342), .Q(REG2[0]) );
  SDFFRQX2M \Memory_reg[1][1]  ( .D(n196), .SI(REG1[0]), .SE(n376), .CK(CLK), 
        .RN(n343), .Q(REG1[1]) );
  SDFFRQX2M \Memory_reg[1][5]  ( .D(n200), .SI(REG1[4]), .SE(n375), .CK(CLK), 
        .RN(n344), .Q(REG1[5]) );
  SDFFRQX2M \Memory_reg[1][4]  ( .D(n199), .SI(REG1[3]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(REG1[4]) );
  SDFFRQX2M \Memory_reg[1][7]  ( .D(n202), .SI(REG1[6]), .SE(n373), .CK(CLK), 
        .RN(n343), .Q(REG1[7]) );
  SDFFRQX2M \Memory_reg[1][3]  ( .D(n198), .SI(REG1[2]), .SE(n376), .CK(CLK), 
        .RN(n343), .Q(REG1[3]) );
  SDFFRQX2M \Memory_reg[1][2]  ( .D(n197), .SI(REG1[1]), .SE(n375), .CK(CLK), 
        .RN(n343), .Q(REG1[2]) );
  SDFFRQX2M \Memory_reg[1][0]  ( .D(n195), .SI(REG0[7]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(REG1[0]) );
  SDFFRQX2M RdData_Valid_reg ( .D(n178), .SI(\Memory[15][7] ), .SE(n373), .CK(
        CLK), .RN(n346), .Q(RdData_Valid) );
  SDFFSQX2M \Memory_reg[3][5]  ( .D(n216), .SI(REG3[4]), .SE(n373), .CK(CLK), 
        .SN(n342), .Q(REG3[5]) );
  SDFFRQX2M \Memory_reg[3][7]  ( .D(n218), .SI(REG3[6]), .SE(n376), .CK(CLK), 
        .RN(n344), .Q(REG3[7]) );
  SDFFRQX2M \Memory_reg[3][6]  ( .D(n217), .SI(REG3[5]), .SE(n375), .CK(CLK), 
        .RN(n344), .Q(REG3[6]) );
  SDFFRQX2M \Memory_reg[3][3]  ( .D(n214), .SI(REG3[2]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG3[3]) );
  SDFFRQX2M \Memory_reg[3][2]  ( .D(n213), .SI(REG3[1]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG3[2]) );
  SDFFRQX2M \Memory_reg[3][4]  ( .D(n215), .SI(REG3[3]), .SE(n376), .CK(CLK), 
        .RN(n344), .Q(REG3[4]) );
  SDFFRQX2M \Memory_reg[3][1]  ( .D(n212), .SI(REG3[0]), .SE(n375), .CK(CLK), 
        .RN(n344), .Q(REG3[1]) );
  SDFFSQX2M \Memory_reg[2][7]  ( .D(n210), .SI(REG2[6]), .SE(n376), .CK(CLK), 
        .SN(n342), .Q(REG2[7]) );
  SDFFRQX2M \Memory_reg[2][4]  ( .D(n207), .SI(REG2[3]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG2[4]) );
  SDFFRQX2M \Memory_reg[2][6]  ( .D(n209), .SI(REG2[5]), .SE(n373), .CK(CLK), 
        .RN(n344), .Q(REG2[6]) );
  SDFFRQX2M \Memory_reg[2][5]  ( .D(n208), .SI(REG2[4]), .SE(n376), .CK(CLK), 
        .RN(n344), .Q(REG2[5]) );
  SDFFRQX2M \Memory_reg[2][2]  ( .D(n205), .SI(REG2[1]), .SE(n375), .CK(CLK), 
        .RN(n344), .Q(REG2[2]) );
  SDFFRQX2M \Memory_reg[2][3]  ( .D(n206), .SI(REG2[2]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG2[3]) );
  NOR2X2M U140 ( .A(n341), .B(N13), .Y(n158) );
  NOR2X2M U141 ( .A(N12), .B(N13), .Y(n153) );
  INVX2M U142 ( .A(n337), .Y(n338) );
  INVX2M U143 ( .A(n335), .Y(n336) );
  INVX2M U144 ( .A(n337), .Y(n339) );
  BUFX2M U145 ( .A(n340), .Y(n337) );
  INVX2M U146 ( .A(n151), .Y(n357) );
  BUFX2M U147 ( .A(n341), .Y(n335) );
  NAND2X2M U148 ( .A(n156), .B(n153), .Y(n155) );
  NAND2X2M U149 ( .A(n168), .B(n153), .Y(n167) );
  NAND2X2M U150 ( .A(n170), .B(n153), .Y(n169) );
  NAND2X2M U151 ( .A(n168), .B(n158), .Y(n171) );
  NAND2X2M U152 ( .A(n170), .B(n158), .Y(n172) );
  NAND2X2M U153 ( .A(n158), .B(n154), .Y(n157) );
  NAND2X2M U154 ( .A(n158), .B(n156), .Y(n159) );
  NAND2X2M U155 ( .A(n161), .B(n154), .Y(n160) );
  NAND2X2M U156 ( .A(n161), .B(n156), .Y(n162) );
  NAND2X2M U157 ( .A(n164), .B(n154), .Y(n163) );
  NAND2X2M U158 ( .A(n164), .B(n156), .Y(n166) );
  NAND2X2M U159 ( .A(n168), .B(n161), .Y(n173) );
  NAND2X2M U160 ( .A(n170), .B(n161), .Y(n174) );
  NAND2X2M U161 ( .A(n168), .B(n164), .Y(n175) );
  NAND2X2M U162 ( .A(n170), .B(n164), .Y(n177) );
  NAND2X2M U163 ( .A(n153), .B(n154), .Y(n152) );
  NAND2X2M U164 ( .A(RdEn), .B(n358), .Y(n151) );
  NOR2X2M U165 ( .A(n358), .B(RdEn), .Y(n150) );
  AND2X2M U166 ( .A(n165), .B(N11), .Y(n156) );
  AND2X2M U167 ( .A(n176), .B(N11), .Y(n170) );
  INVX2M U168 ( .A(WrEn), .Y(n358) );
  BUFX2M U169 ( .A(n356), .Y(n343) );
  BUFX2M U170 ( .A(n355), .Y(n344) );
  BUFX2M U171 ( .A(n355), .Y(n345) );
  BUFX2M U172 ( .A(n354), .Y(n346) );
  BUFX2M U173 ( .A(n354), .Y(n347) );
  BUFX2M U174 ( .A(n353), .Y(n348) );
  BUFX2M U175 ( .A(n353), .Y(n349) );
  BUFX2M U176 ( .A(n352), .Y(n350) );
  BUFX2M U177 ( .A(n356), .Y(n342) );
  BUFX2M U178 ( .A(n352), .Y(n351) );
  INVX2M U179 ( .A(WrData[5]), .Y(n361) );
  INVX2M U180 ( .A(WrData[7]), .Y(n359) );
  NOR2BX2M U181 ( .AN(n150), .B(N14), .Y(n165) );
  AND2X2M U182 ( .A(N13), .B(n341), .Y(n161) );
  AND2X2M U183 ( .A(N13), .B(N12), .Y(n164) );
  AND2X2M U184 ( .A(n165), .B(n340), .Y(n154) );
  AND2X2M U185 ( .A(n176), .B(n340), .Y(n168) );
  AND2X2M U186 ( .A(N14), .B(n150), .Y(n176) );
  INVX2M U187 ( .A(WrData[0]), .Y(n363) );
  INVX2M U188 ( .A(WrData[3]), .Y(n366) );
  INVX2M U189 ( .A(WrData[1]), .Y(n364) );
  INVX2M U190 ( .A(WrData[2]), .Y(n365) );
  BUFX2M U191 ( .A(RST), .Y(n355) );
  BUFX2M U192 ( .A(RST), .Y(n354) );
  BUFX2M U193 ( .A(RST), .Y(n353) );
  BUFX2M U194 ( .A(RST), .Y(n352) );
  BUFX2M U195 ( .A(RST), .Y(n356) );
  INVX2M U196 ( .A(N11), .Y(n340) );
  AO22X1M U197 ( .A0(N43), .A1(n357), .B0(RdData[0]), .B1(n151), .Y(n179) );
  MX4X1M U198 ( .A(n141), .B(n139), .C(n140), .D(n138), .S0(N14), .S1(N13), 
        .Y(N43) );
  MX4X1M U199 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(N12), .Y(n141) );
  MX4X1M U200 ( .A(\Memory[8][0] ), .B(\Memory[9][0] ), .C(\Memory[10][0] ), 
        .D(\Memory[11][0] ), .S0(N11), .S1(N12), .Y(n139) );
  AO22X1M U201 ( .A0(N42), .A1(n357), .B0(RdData[1]), .B1(n151), .Y(n180) );
  MX4X1M U202 ( .A(n145), .B(n143), .C(n144), .D(n142), .S0(N14), .S1(N13), 
        .Y(N42) );
  MX4X1M U203 ( .A(\Memory[8][1] ), .B(\Memory[9][1] ), .C(\Memory[10][1] ), 
        .D(\Memory[11][1] ), .S0(N11), .S1(N12), .Y(n143) );
  MX4X1M U204 ( .A(\Memory[12][1] ), .B(\Memory[13][1] ), .C(\Memory[14][1] ), 
        .D(\Memory[15][1] ), .S0(n338), .S1(n336), .Y(n142) );
  AO22X1M U205 ( .A0(N41), .A1(n357), .B0(RdData[2]), .B1(n151), .Y(n181) );
  MX4X1M U206 ( .A(n149), .B(n147), .C(n148), .D(n146), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U207 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n338), 
        .S1(n336), .Y(n149) );
  MX4X1M U208 ( .A(\Memory[8][2] ), .B(\Memory[9][2] ), .C(\Memory[10][2] ), 
        .D(\Memory[11][2] ), .S0(n338), .S1(n336), .Y(n147) );
  AO22X1M U209 ( .A0(N40), .A1(n357), .B0(RdData[3]), .B1(n151), .Y(n182) );
  MX4X1M U210 ( .A(n318), .B(n316), .C(n317), .D(n315), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U211 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n338), 
        .S1(n336), .Y(n318) );
  MX4X1M U212 ( .A(\Memory[8][3] ), .B(\Memory[9][3] ), .C(\Memory[10][3] ), 
        .D(\Memory[11][3] ), .S0(n338), .S1(n336), .Y(n316) );
  AO22X1M U213 ( .A0(N39), .A1(n357), .B0(n377), .B1(n151), .Y(n183) );
  MX4X1M U214 ( .A(n322), .B(n320), .C(n321), .D(n319), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U215 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n339), 
        .S1(n336), .Y(n322) );
  MX4X1M U216 ( .A(\Memory[8][4] ), .B(\Memory[9][4] ), .C(\Memory[10][4] ), 
        .D(\Memory[11][4] ), .S0(n338), .S1(n336), .Y(n320) );
  AO22X1M U217 ( .A0(N38), .A1(n357), .B0(RdData[5]), .B1(n151), .Y(n184) );
  MX4X1M U218 ( .A(n326), .B(n324), .C(n325), .D(n323), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U219 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n339), 
        .S1(N12), .Y(n326) );
  MX4X1M U220 ( .A(\Memory[8][5] ), .B(\Memory[9][5] ), .C(\Memory[10][5] ), 
        .D(\Memory[11][5] ), .S0(n339), .S1(N12), .Y(n324) );
  AO22X1M U221 ( .A0(N37), .A1(n357), .B0(RdData[6]), .B1(n151), .Y(n185) );
  MX4X1M U222 ( .A(n330), .B(n328), .C(n329), .D(n327), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U223 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n339), 
        .S1(N12), .Y(n330) );
  MX4X1M U224 ( .A(\Memory[8][6] ), .B(\Memory[9][6] ), .C(\Memory[10][6] ), 
        .D(\Memory[11][6] ), .S0(n339), .S1(N12), .Y(n328) );
  AO22X1M U225 ( .A0(N36), .A1(n357), .B0(RdData[7]), .B1(n151), .Y(n186) );
  MX4X1M U226 ( .A(n334), .B(n332), .C(n333), .D(n331), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U227 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n339), 
        .S1(N12), .Y(n334) );
  MX4X1M U228 ( .A(\Memory[8][7] ), .B(\Memory[9][7] ), .C(\Memory[10][7] ), 
        .D(\Memory[11][7] ), .S0(n339), .S1(N12), .Y(n332) );
  MX4X1M U229 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n338), 
        .S1(N12), .Y(n145) );
  MX4X1M U230 ( .A(\Memory[4][0] ), .B(\Memory[5][0] ), .C(\Memory[6][0] ), 
        .D(\Memory[7][0] ), .S0(N11), .S1(N12), .Y(n140) );
  MX4X1M U231 ( .A(\Memory[4][1] ), .B(\Memory[5][1] ), .C(\Memory[6][1] ), 
        .D(\Memory[7][1] ), .S0(n338), .S1(N12), .Y(n144) );
  MX4X1M U232 ( .A(\Memory[4][2] ), .B(\Memory[5][2] ), .C(\Memory[6][2] ), 
        .D(\Memory[7][2] ), .S0(n338), .S1(n336), .Y(n148) );
  MX4X1M U233 ( .A(\Memory[4][3] ), .B(n379), .C(\Memory[6][3] ), .D(
        \Memory[7][3] ), .S0(n338), .S1(n336), .Y(n317) );
  MX4X1M U234 ( .A(\Memory[4][4] ), .B(\Memory[5][4] ), .C(\Memory[6][4] ), 
        .D(\Memory[7][4] ), .S0(n338), .S1(n336), .Y(n321) );
  MX4X1M U235 ( .A(\Memory[4][5] ), .B(\Memory[5][5] ), .C(\Memory[6][5] ), 
        .D(\Memory[7][5] ), .S0(n339), .S1(N12), .Y(n325) );
  MX4X1M U236 ( .A(\Memory[4][6] ), .B(\Memory[5][6] ), .C(\Memory[6][6] ), 
        .D(\Memory[7][6] ), .S0(n339), .S1(N12), .Y(n329) );
  MX4X1M U237 ( .A(\Memory[4][7] ), .B(\Memory[5][7] ), .C(\Memory[6][7] ), 
        .D(\Memory[7][7] ), .S0(n339), .S1(N12), .Y(n333) );
  MX4X1M U238 ( .A(\Memory[12][0] ), .B(\Memory[13][0] ), .C(\Memory[14][0] ), 
        .D(\Memory[15][0] ), .S0(n339), .S1(n336), .Y(n138) );
  MX4X1M U239 ( .A(\Memory[12][2] ), .B(\Memory[13][2] ), .C(\Memory[14][2] ), 
        .D(\Memory[15][2] ), .S0(n338), .S1(n336), .Y(n146) );
  MX4X1M U240 ( .A(\Memory[12][3] ), .B(\Memory[13][3] ), .C(\Memory[14][3] ), 
        .D(\Memory[15][3] ), .S0(n338), .S1(n336), .Y(n315) );
  MX4X1M U241 ( .A(\Memory[12][4] ), .B(\Memory[13][4] ), .C(\Memory[14][4] ), 
        .D(\Memory[15][4] ), .S0(n338), .S1(n336), .Y(n319) );
  MX4X1M U242 ( .A(\Memory[12][5] ), .B(\Memory[13][5] ), .C(\Memory[14][5] ), 
        .D(\Memory[15][5] ), .S0(n339), .S1(N12), .Y(n323) );
  MX4X1M U243 ( .A(\Memory[12][6] ), .B(\Memory[13][6] ), .C(\Memory[14][6] ), 
        .D(\Memory[15][6] ), .S0(n339), .S1(N12), .Y(n327) );
  MX4X1M U244 ( .A(\Memory[12][7] ), .B(\Memory[13][7] ), .C(\Memory[14][7] ), 
        .D(\Memory[15][7] ), .S0(n339), .S1(N12), .Y(n331) );
  INVX2M U245 ( .A(WrData[4]), .Y(n362) );
  INVX2M U246 ( .A(WrData[6]), .Y(n360) );
  OAI2BB2X1M U247 ( .B0(n152), .B1(n363), .A0N(REG0[0]), .A1N(n152), .Y(n187)
         );
  OAI2BB2X1M U248 ( .B0(n152), .B1(n364), .A0N(REG0[1]), .A1N(n152), .Y(n188)
         );
  OAI2BB2X1M U249 ( .B0(n152), .B1(n365), .A0N(REG0[2]), .A1N(n152), .Y(n189)
         );
  OAI2BB2X1M U250 ( .B0(n152), .B1(n366), .A0N(REG0[3]), .A1N(n152), .Y(n190)
         );
  OAI2BB2X1M U251 ( .B0(n152), .B1(n362), .A0N(REG0[4]), .A1N(n152), .Y(n191)
         );
  OAI2BB2X1M U252 ( .B0(n152), .B1(n361), .A0N(REG0[5]), .A1N(n152), .Y(n192)
         );
  OAI2BB2X1M U253 ( .B0(n152), .B1(n360), .A0N(REG0[6]), .A1N(n152), .Y(n193)
         );
  OAI2BB2X1M U254 ( .B0(n152), .B1(n359), .A0N(REG0[7]), .A1N(n152), .Y(n194)
         );
  OAI2BB2X1M U255 ( .B0(n364), .B1(n157), .A0N(REG2[1]), .A1N(n157), .Y(n204)
         );
  OAI2BB2X1M U256 ( .B0(n365), .B1(n157), .A0N(REG2[2]), .A1N(n157), .Y(n205)
         );
  OAI2BB2X1M U257 ( .B0(n366), .B1(n157), .A0N(REG2[3]), .A1N(n157), .Y(n206)
         );
  OAI2BB2X1M U258 ( .B0(n362), .B1(n157), .A0N(REG2[4]), .A1N(n157), .Y(n207)
         );
  OAI2BB2X1M U259 ( .B0(n361), .B1(n157), .A0N(REG2[5]), .A1N(n157), .Y(n208)
         );
  OAI2BB2X1M U260 ( .B0(n360), .B1(n157), .A0N(REG2[6]), .A1N(n157), .Y(n209)
         );
  OAI2BB2X1M U261 ( .B0(n363), .B1(n159), .A0N(REG3[0]), .A1N(n159), .Y(n211)
         );
  OAI2BB2X1M U262 ( .B0(n364), .B1(n159), .A0N(REG3[1]), .A1N(n159), .Y(n212)
         );
  OAI2BB2X1M U263 ( .B0(n365), .B1(n159), .A0N(REG3[2]), .A1N(n159), .Y(n213)
         );
  OAI2BB2X1M U264 ( .B0(n366), .B1(n159), .A0N(REG3[3]), .A1N(n159), .Y(n214)
         );
  OAI2BB2X1M U265 ( .B0(n362), .B1(n159), .A0N(REG3[4]), .A1N(n159), .Y(n215)
         );
  OAI2BB2X1M U266 ( .B0(n360), .B1(n159), .A0N(REG3[6]), .A1N(n159), .Y(n217)
         );
  OAI2BB2X1M U267 ( .B0(n359), .B1(n159), .A0N(REG3[7]), .A1N(n159), .Y(n218)
         );
  OAI2BB2X1M U268 ( .B0(n363), .B1(n155), .A0N(REG1[0]), .A1N(n155), .Y(n195)
         );
  OAI2BB2X1M U269 ( .B0(n364), .B1(n155), .A0N(REG1[1]), .A1N(n155), .Y(n196)
         );
  OAI2BB2X1M U270 ( .B0(n365), .B1(n155), .A0N(REG1[2]), .A1N(n155), .Y(n197)
         );
  OAI2BB2X1M U271 ( .B0(n366), .B1(n155), .A0N(REG1[3]), .A1N(n155), .Y(n198)
         );
  OAI2BB2X1M U272 ( .B0(n362), .B1(n155), .A0N(REG1[4]), .A1N(n155), .Y(n199)
         );
  OAI2BB2X1M U273 ( .B0(n361), .B1(n155), .A0N(REG1[5]), .A1N(n155), .Y(n200)
         );
  OAI2BB2X1M U274 ( .B0(n360), .B1(n155), .A0N(REG1[6]), .A1N(n155), .Y(n201)
         );
  OAI2BB2X1M U275 ( .B0(n359), .B1(n155), .A0N(REG1[7]), .A1N(n155), .Y(n202)
         );
  OAI2BB2X1M U276 ( .B0(n363), .B1(n167), .A0N(\Memory[8][0] ), .A1N(n167), 
        .Y(n251) );
  OAI2BB2X1M U277 ( .B0(n364), .B1(n167), .A0N(\Memory[8][1] ), .A1N(n167), 
        .Y(n252) );
  OAI2BB2X1M U278 ( .B0(n365), .B1(n167), .A0N(\Memory[8][2] ), .A1N(n167), 
        .Y(n253) );
  OAI2BB2X1M U279 ( .B0(n366), .B1(n167), .A0N(\Memory[8][3] ), .A1N(n167), 
        .Y(n254) );
  OAI2BB2X1M U280 ( .B0(n362), .B1(n167), .A0N(\Memory[8][4] ), .A1N(n167), 
        .Y(n255) );
  OAI2BB2X1M U281 ( .B0(n361), .B1(n167), .A0N(\Memory[8][5] ), .A1N(n167), 
        .Y(n256) );
  OAI2BB2X1M U282 ( .B0(n360), .B1(n167), .A0N(\Memory[8][6] ), .A1N(n167), 
        .Y(n257) );
  OAI2BB2X1M U283 ( .B0(n359), .B1(n167), .A0N(\Memory[8][7] ), .A1N(n167), 
        .Y(n258) );
  OAI2BB2X1M U284 ( .B0(n363), .B1(n169), .A0N(\Memory[9][0] ), .A1N(n169), 
        .Y(n259) );
  OAI2BB2X1M U285 ( .B0(n364), .B1(n169), .A0N(\Memory[9][1] ), .A1N(n169), 
        .Y(n260) );
  OAI2BB2X1M U286 ( .B0(n365), .B1(n169), .A0N(\Memory[9][2] ), .A1N(n169), 
        .Y(n261) );
  OAI2BB2X1M U287 ( .B0(n366), .B1(n169), .A0N(\Memory[9][3] ), .A1N(n169), 
        .Y(n262) );
  OAI2BB2X1M U288 ( .B0(n362), .B1(n169), .A0N(\Memory[9][4] ), .A1N(n169), 
        .Y(n263) );
  OAI2BB2X1M U289 ( .B0(n361), .B1(n169), .A0N(\Memory[9][5] ), .A1N(n169), 
        .Y(n264) );
  OAI2BB2X1M U290 ( .B0(n360), .B1(n169), .A0N(\Memory[9][6] ), .A1N(n169), 
        .Y(n265) );
  OAI2BB2X1M U291 ( .B0(n359), .B1(n169), .A0N(\Memory[9][7] ), .A1N(n169), 
        .Y(n266) );
  OAI2BB2X1M U292 ( .B0(n363), .B1(n171), .A0N(\Memory[10][0] ), .A1N(n171), 
        .Y(n267) );
  OAI2BB2X1M U293 ( .B0(n364), .B1(n171), .A0N(\Memory[10][1] ), .A1N(n171), 
        .Y(n268) );
  OAI2BB2X1M U294 ( .B0(n365), .B1(n171), .A0N(\Memory[10][2] ), .A1N(n171), 
        .Y(n269) );
  OAI2BB2X1M U295 ( .B0(n366), .B1(n171), .A0N(\Memory[10][3] ), .A1N(n171), 
        .Y(n270) );
  OAI2BB2X1M U296 ( .B0(n362), .B1(n171), .A0N(\Memory[10][4] ), .A1N(n171), 
        .Y(n271) );
  OAI2BB2X1M U297 ( .B0(n361), .B1(n171), .A0N(\Memory[10][5] ), .A1N(n171), 
        .Y(n272) );
  OAI2BB2X1M U298 ( .B0(n360), .B1(n171), .A0N(\Memory[10][6] ), .A1N(n171), 
        .Y(n273) );
  OAI2BB2X1M U299 ( .B0(n359), .B1(n171), .A0N(\Memory[10][7] ), .A1N(n171), 
        .Y(n274) );
  OAI2BB2X1M U300 ( .B0(n363), .B1(n172), .A0N(\Memory[11][0] ), .A1N(n172), 
        .Y(n275) );
  OAI2BB2X1M U301 ( .B0(n364), .B1(n172), .A0N(\Memory[11][1] ), .A1N(n172), 
        .Y(n276) );
  OAI2BB2X1M U302 ( .B0(n365), .B1(n172), .A0N(\Memory[11][2] ), .A1N(n172), 
        .Y(n277) );
  OAI2BB2X1M U303 ( .B0(n366), .B1(n172), .A0N(\Memory[11][3] ), .A1N(n172), 
        .Y(n278) );
  OAI2BB2X1M U304 ( .B0(n362), .B1(n172), .A0N(\Memory[11][4] ), .A1N(n172), 
        .Y(n279) );
  OAI2BB2X1M U305 ( .B0(n361), .B1(n172), .A0N(\Memory[11][5] ), .A1N(n172), 
        .Y(n280) );
  OAI2BB2X1M U306 ( .B0(n360), .B1(n172), .A0N(\Memory[11][6] ), .A1N(n172), 
        .Y(n281) );
  OAI2BB2X1M U307 ( .B0(n359), .B1(n172), .A0N(\Memory[11][7] ), .A1N(n172), 
        .Y(n282) );
  OAI2BB2X1M U308 ( .B0(n363), .B1(n157), .A0N(REG2[0]), .A1N(n157), .Y(n203)
         );
  OAI2BB2X1M U309 ( .B0(n359), .B1(n157), .A0N(REG2[7]), .A1N(n157), .Y(n210)
         );
  OAI2BB2X1M U310 ( .B0(n361), .B1(n159), .A0N(REG3[5]), .A1N(n159), .Y(n216)
         );
  OAI2BB2X1M U311 ( .B0(n363), .B1(n173), .A0N(\Memory[12][0] ), .A1N(n173), 
        .Y(n283) );
  OAI2BB2X1M U312 ( .B0(n364), .B1(n173), .A0N(\Memory[12][1] ), .A1N(n173), 
        .Y(n284) );
  OAI2BB2X1M U313 ( .B0(n365), .B1(n173), .A0N(\Memory[12][2] ), .A1N(n173), 
        .Y(n285) );
  OAI2BB2X1M U314 ( .B0(n366), .B1(n173), .A0N(\Memory[12][3] ), .A1N(n173), 
        .Y(n286) );
  OAI2BB2X1M U315 ( .B0(n362), .B1(n173), .A0N(\Memory[12][4] ), .A1N(n173), 
        .Y(n287) );
  OAI2BB2X1M U316 ( .B0(n361), .B1(n173), .A0N(\Memory[12][5] ), .A1N(n173), 
        .Y(n288) );
  OAI2BB2X1M U317 ( .B0(n360), .B1(n173), .A0N(\Memory[12][6] ), .A1N(n173), 
        .Y(n289) );
  OAI2BB2X1M U318 ( .B0(n359), .B1(n173), .A0N(\Memory[12][7] ), .A1N(n173), 
        .Y(n290) );
  OAI2BB2X1M U319 ( .B0(n363), .B1(n174), .A0N(\Memory[13][0] ), .A1N(n174), 
        .Y(n291) );
  OAI2BB2X1M U320 ( .B0(n364), .B1(n174), .A0N(\Memory[13][1] ), .A1N(n174), 
        .Y(n292) );
  OAI2BB2X1M U321 ( .B0(n365), .B1(n174), .A0N(\Memory[13][2] ), .A1N(n174), 
        .Y(n293) );
  OAI2BB2X1M U322 ( .B0(n366), .B1(n174), .A0N(\Memory[13][3] ), .A1N(n174), 
        .Y(n294) );
  OAI2BB2X1M U323 ( .B0(n362), .B1(n174), .A0N(\Memory[13][4] ), .A1N(n174), 
        .Y(n295) );
  OAI2BB2X1M U324 ( .B0(n361), .B1(n174), .A0N(\Memory[13][5] ), .A1N(n174), 
        .Y(n296) );
  OAI2BB2X1M U325 ( .B0(n360), .B1(n174), .A0N(\Memory[13][6] ), .A1N(n174), 
        .Y(n297) );
  OAI2BB2X1M U326 ( .B0(n359), .B1(n174), .A0N(\Memory[13][7] ), .A1N(n174), 
        .Y(n298) );
  OAI2BB2X1M U327 ( .B0(n363), .B1(n175), .A0N(\Memory[14][0] ), .A1N(n175), 
        .Y(n299) );
  OAI2BB2X1M U328 ( .B0(n364), .B1(n175), .A0N(\Memory[14][1] ), .A1N(n175), 
        .Y(n300) );
  OAI2BB2X1M U329 ( .B0(n365), .B1(n175), .A0N(\Memory[14][2] ), .A1N(n175), 
        .Y(n301) );
  OAI2BB2X1M U330 ( .B0(n366), .B1(n175), .A0N(\Memory[14][3] ), .A1N(n175), 
        .Y(n302) );
  OAI2BB2X1M U331 ( .B0(n362), .B1(n175), .A0N(\Memory[14][4] ), .A1N(n175), 
        .Y(n303) );
  OAI2BB2X1M U332 ( .B0(n361), .B1(n175), .A0N(\Memory[14][5] ), .A1N(n175), 
        .Y(n304) );
  OAI2BB2X1M U333 ( .B0(n360), .B1(n175), .A0N(\Memory[14][6] ), .A1N(n175), 
        .Y(n305) );
  OAI2BB2X1M U334 ( .B0(n359), .B1(n175), .A0N(\Memory[14][7] ), .A1N(n175), 
        .Y(n306) );
  OAI2BB2X1M U335 ( .B0(n363), .B1(n177), .A0N(\Memory[15][0] ), .A1N(n177), 
        .Y(n307) );
  OAI2BB2X1M U336 ( .B0(n364), .B1(n177), .A0N(\Memory[15][1] ), .A1N(n177), 
        .Y(n308) );
  OAI2BB2X1M U337 ( .B0(n365), .B1(n177), .A0N(\Memory[15][2] ), .A1N(n177), 
        .Y(n309) );
  OAI2BB2X1M U338 ( .B0(n366), .B1(n177), .A0N(\Memory[15][3] ), .A1N(n177), 
        .Y(n310) );
  OAI2BB2X1M U339 ( .B0(n362), .B1(n177), .A0N(\Memory[15][4] ), .A1N(n177), 
        .Y(n311) );
  OAI2BB2X1M U340 ( .B0(n361), .B1(n177), .A0N(\Memory[15][5] ), .A1N(n177), 
        .Y(n312) );
  OAI2BB2X1M U341 ( .B0(n360), .B1(n177), .A0N(\Memory[15][6] ), .A1N(n177), 
        .Y(n313) );
  OAI2BB2X1M U342 ( .B0(n359), .B1(n177), .A0N(\Memory[15][7] ), .A1N(n177), 
        .Y(n314) );
  OAI2BB2X1M U343 ( .B0(n363), .B1(n160), .A0N(\Memory[4][0] ), .A1N(n160), 
        .Y(n219) );
  OAI2BB2X1M U344 ( .B0(n364), .B1(n160), .A0N(\Memory[4][1] ), .A1N(n160), 
        .Y(n220) );
  OAI2BB2X1M U345 ( .B0(n365), .B1(n160), .A0N(\Memory[4][2] ), .A1N(n160), 
        .Y(n221) );
  OAI2BB2X1M U346 ( .B0(n366), .B1(n160), .A0N(\Memory[4][3] ), .A1N(n160), 
        .Y(n222) );
  OAI2BB2X1M U347 ( .B0(n362), .B1(n160), .A0N(\Memory[4][4] ), .A1N(n160), 
        .Y(n223) );
  OAI2BB2X1M U348 ( .B0(n361), .B1(n160), .A0N(\Memory[4][5] ), .A1N(n160), 
        .Y(n224) );
  OAI2BB2X1M U349 ( .B0(n360), .B1(n160), .A0N(\Memory[4][6] ), .A1N(n160), 
        .Y(n225) );
  OAI2BB2X1M U350 ( .B0(n359), .B1(n160), .A0N(\Memory[4][7] ), .A1N(n160), 
        .Y(n226) );
  OAI2BB2X1M U351 ( .B0(n363), .B1(n162), .A0N(\Memory[5][0] ), .A1N(n162), 
        .Y(n227) );
  OAI2BB2X1M U352 ( .B0(n364), .B1(n162), .A0N(\Memory[5][1] ), .A1N(n162), 
        .Y(n228) );
  OAI2BB2X1M U353 ( .B0(n365), .B1(n162), .A0N(\Memory[5][2] ), .A1N(n162), 
        .Y(n229) );
  OAI2BB2X1M U354 ( .B0(n366), .B1(n162), .A0N(n379), .A1N(n162), .Y(n230) );
  OAI2BB2X1M U355 ( .B0(n362), .B1(n162), .A0N(\Memory[5][4] ), .A1N(n162), 
        .Y(n231) );
  OAI2BB2X1M U356 ( .B0(n361), .B1(n162), .A0N(\Memory[5][5] ), .A1N(n162), 
        .Y(n232) );
  OAI2BB2X1M U357 ( .B0(n360), .B1(n162), .A0N(\Memory[5][6] ), .A1N(n162), 
        .Y(n233) );
  OAI2BB2X1M U358 ( .B0(n359), .B1(n162), .A0N(\Memory[5][7] ), .A1N(n162), 
        .Y(n234) );
  OAI2BB2X1M U359 ( .B0(n363), .B1(n163), .A0N(\Memory[6][0] ), .A1N(n163), 
        .Y(n235) );
  OAI2BB2X1M U360 ( .B0(n364), .B1(n163), .A0N(\Memory[6][1] ), .A1N(n163), 
        .Y(n236) );
  OAI2BB2X1M U361 ( .B0(n365), .B1(n163), .A0N(\Memory[6][2] ), .A1N(n163), 
        .Y(n237) );
  OAI2BB2X1M U362 ( .B0(n366), .B1(n163), .A0N(\Memory[6][3] ), .A1N(n163), 
        .Y(n238) );
  OAI2BB2X1M U363 ( .B0(n362), .B1(n163), .A0N(\Memory[6][4] ), .A1N(n163), 
        .Y(n239) );
  OAI2BB2X1M U364 ( .B0(n361), .B1(n163), .A0N(\Memory[6][5] ), .A1N(n163), 
        .Y(n240) );
  OAI2BB2X1M U365 ( .B0(n360), .B1(n163), .A0N(\Memory[6][6] ), .A1N(n163), 
        .Y(n241) );
  OAI2BB2X1M U366 ( .B0(n359), .B1(n163), .A0N(\Memory[6][7] ), .A1N(n163), 
        .Y(n242) );
  OAI2BB2X1M U367 ( .B0(n363), .B1(n166), .A0N(\Memory[7][0] ), .A1N(n166), 
        .Y(n243) );
  OAI2BB2X1M U368 ( .B0(n364), .B1(n166), .A0N(\Memory[7][1] ), .A1N(n166), 
        .Y(n244) );
  OAI2BB2X1M U369 ( .B0(n365), .B1(n166), .A0N(\Memory[7][2] ), .A1N(n166), 
        .Y(n245) );
  OAI2BB2X1M U370 ( .B0(n366), .B1(n166), .A0N(\Memory[7][3] ), .A1N(n166), 
        .Y(n246) );
  OAI2BB2X1M U371 ( .B0(n362), .B1(n166), .A0N(\Memory[7][4] ), .A1N(n166), 
        .Y(n247) );
  OAI2BB2X1M U372 ( .B0(n361), .B1(n166), .A0N(\Memory[7][5] ), .A1N(n166), 
        .Y(n248) );
  OAI2BB2X1M U373 ( .B0(n360), .B1(n166), .A0N(\Memory[7][6] ), .A1N(n166), 
        .Y(n249) );
  OAI2BB2X1M U374 ( .B0(n359), .B1(n166), .A0N(\Memory[7][7] ), .A1N(n166), 
        .Y(n250) );
  INVX2M U375 ( .A(N12), .Y(n341) );
  AO21XLM U376 ( .A0(RdData_Valid), .A1(n150), .B0(n357), .Y(n178) );
  INVXLM U377 ( .A(test_se), .Y(n374) );
  INVXLM U378 ( .A(n374), .Y(n371) );
  INVXLM U379 ( .A(n374), .Y(n372) );
  DLY1X1M U380 ( .A(test_se), .Y(n373) );
  DLY1X1M U381 ( .A(test_se), .Y(n375) );
  DLY1X1M U382 ( .A(test_se), .Y(n376) );
  INVXLM U384 ( .A(\Memory[5][3] ), .Y(n378) );
  INVXLM U385 ( .A(n378), .Y(n379) );
  SDFFRHQX8M \RdData_reg[4]  ( .D(n183), .SI(RdData[3]), .SE(n376), .CK(CLK), 
        .RN(n342), .Q(RdData[4]) );
  SDFFRHQX8M \Memory_reg[5][3]  ( .D(n230), .SI(\Memory[5][2] ), .SE(n375), 
        .CK(CLK), .RN(n345), .Q(\Memory[5][3] ) );
  BUFX2M U3 ( .A(RdData[4]), .Y(n377) );
endmodule


module ALU_16B_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n3) );
  INVX2M U12 ( .A(n18), .Y(n2) );
  NAND2X2M U13 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n5) );
  INVX2M U15 ( .A(n18), .Y(n4) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  INVX2M U18 ( .A(n18), .Y(n6) );
  NAND2X2M U19 ( .A(n2), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n6), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n4), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U24 ( .A(a[0]), .Y(n10) );
  NAND2X2M U25 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n1) );
  INVX2M U27 ( .A(b[6]), .Y(n12) );
  INVX2M U28 ( .A(b[1]), .Y(n17) );
  INVX2M U29 ( .A(b[2]), .Y(n16) );
  INVX2M U30 ( .A(b[3]), .Y(n15) );
  INVX2M U31 ( .A(b[4]), .Y(n14) );
  INVX2M U32 ( .A(b[5]), .Y(n13) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_16B_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_16B_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_16B_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U5 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_16B_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U20 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U23 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U24 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U25 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[7]), .Y(n32) );
  INVX2M U38 ( .A(A[6]), .Y(n33) );
  INVX2M U39 ( .A(A[1]), .Y(n38) );
  INVX2M U40 ( .A(A[0]), .Y(n39) );
  INVX2M U41 ( .A(A[3]), .Y(n36) );
  INVX2M U42 ( .A(A[2]), .Y(n37) );
  INVX2M U43 ( .A(A[5]), .Y(n34) );
  INVX2M U44 ( .A(A[4]), .Y(n35) );
  INVX2M U45 ( .A(B[6]), .Y(n25) );
  INVX2M U46 ( .A(B[0]), .Y(n31) );
  INVX2M U47 ( .A(B[2]), .Y(n29) );
  INVX2M U48 ( .A(B[3]), .Y(n28) );
  INVX2M U49 ( .A(B[7]), .Y(n24) );
  INVX2M U50 ( .A(B[4]), .Y(n27) );
  INVX2M U51 ( .A(B[5]), .Y(n26) );
  INVX2M U52 ( .A(B[1]), .Y(n30) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
  ALU_16B_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_16B_test_1 ( A, B, EN, ALU_FUN, CLK, RST, ALU_OUT, OUT_VALID, 
        test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, CLK, RST, test_si, test_se;
  output OUT_VALID;
  wire   N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
         N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n3, n4, n5, n6,
         n7, n8, n9, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157;
  wire   [15:0] ALU_OUT_Comb;

  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(ALU_OUT_Comb[15]), .SI(ALU_OUT[14]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(ALU_OUT_Comb[14]), .SI(ALU_OUT[13]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(ALU_OUT_Comb[13]), .SI(ALU_OUT[12]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(ALU_OUT_Comb[12]), .SI(ALU_OUT[11]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(ALU_OUT_Comb[11]), .SI(ALU_OUT[10]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(ALU_OUT_Comb[10]), .SI(ALU_OUT[9]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(ALU_OUT_Comb[9]), .SI(ALU_OUT[8]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(ALU_OUT_Comb[8]), .SI(ALU_OUT[7]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[8]) );
  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(ALU_OUT_Comb[7]), .SI(ALU_OUT[6]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(ALU_OUT_Comb[6]), .SI(ALU_OUT[5]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(ALU_OUT_Comb[5]), .SI(ALU_OUT[4]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(ALU_OUT_Comb[4]), .SI(ALU_OUT[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(ALU_OUT_Comb[3]), .SI(ALU_OUT[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(ALU_OUT_Comb[2]), .SI(ALU_OUT[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(ALU_OUT_Comb[1]), .SI(ALU_OUT[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(ALU_OUT_Comb[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ALU_OUT[0]) );
  SDFFRQX2M OUT_VALID_reg ( .D(EN), .SI(ALU_OUT[15]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(OUT_VALID) );
  BUFX2M U7 ( .A(A[6]), .Y(n28) );
  OAI2BB1X2M U23 ( .A0N(n157), .A1N(n122), .B0(n118), .Y(n64) );
  OAI2BB1X2M U24 ( .A0N(n117), .A1N(n116), .B0(n118), .Y(n65) );
  NOR2BX2M U25 ( .AN(n123), .B(n154), .Y(n54) );
  AND2X2M U26 ( .A(n116), .B(n122), .Y(n59) );
  NOR2BX2M U27 ( .AN(n52), .B(n152), .Y(n48) );
  AND2X2M U28 ( .A(n123), .B(n122), .Y(n67) );
  BUFX2M U29 ( .A(n58), .Y(n30) );
  NOR2X2M U30 ( .A(n124), .B(n154), .Y(n58) );
  INVX2M U31 ( .A(n117), .Y(n154) );
  INVX2M U32 ( .A(n108), .Y(n155) );
  OAI2BB1X2M U33 ( .A0N(N118), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[9]) );
  OAI2BB1X2M U34 ( .A0N(N119), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U35 ( .A0N(N120), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[11]) );
  OAI2BB1X2M U36 ( .A0N(N121), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U37 ( .A0N(N122), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[13]) );
  OAI2BB1X2M U38 ( .A0N(N123), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1X2M U39 ( .A0N(N124), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[15]) );
  INVX2M U40 ( .A(n124), .Y(n157) );
  NOR3BX2M U41 ( .AN(n122), .B(n156), .C(ALU_FUN[2]), .Y(n66) );
  NOR3X2M U42 ( .A(n154), .B(ALU_FUN[2]), .C(n156), .Y(n52) );
  NOR2X2M U43 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  AND3X2M U44 ( .A(n123), .B(n153), .C(n3), .Y(n63) );
  NAND3X2M U45 ( .A(n157), .B(n153), .C(n3), .Y(n53) );
  NAND2X2M U46 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n124) );
  INVX2M U47 ( .A(ALU_FUN[0]), .Y(n153) );
  NOR2X2M U48 ( .A(n153), .B(n3), .Y(n122) );
  NOR2X2M U49 ( .A(n3), .B(ALU_FUN[0]), .Y(n117) );
  NAND3X2M U50 ( .A(n3), .B(ALU_FUN[0]), .C(n116), .Y(n108) );
  NAND2X2M U51 ( .A(EN), .B(n140), .Y(n49) );
  INVX2M U52 ( .A(ALU_FUN[1]), .Y(n156) );
  INVX2M U53 ( .A(EN), .Y(n152) );
  NAND3X2M U54 ( .A(n123), .B(ALU_FUN[0]), .C(n3), .Y(n118) );
  AND2X2M U55 ( .A(ALU_FUN[2]), .B(n156), .Y(n116) );
  AND4X2M U56 ( .A(N159), .B(n116), .C(n3), .D(n153), .Y(n107) );
  INVX2M U57 ( .A(n4), .Y(n139) );
  OAI222X1M U58 ( .A0(n72), .A1(n139), .B0(n4), .B1(n73), .C0(n53), .C1(n146), 
        .Y(n71) );
  AOI221XLM U59 ( .A0(n28), .A1(n63), .B0(n64), .B1(n145), .C0(n30), .Y(n73)
         );
  AOI221XLM U60 ( .A0(n63), .A1(n145), .B0(n28), .B1(n65), .C0(n59), .Y(n72)
         );
  AOI31X2M U61 ( .A0(n92), .A1(n93), .A2(n94), .B0(n152), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U62 ( .A0(N102), .A1(n67), .B0(N93), .B1(n54), .Y(n92) );
  AOI221XLM U63 ( .A0(n8), .A1(n155), .B0(n30), .B1(n149), .C0(n95), .Y(n94)
         );
  AOI222X1M U64 ( .A0(N111), .A1(n52), .B0(n7), .B1(n59), .C0(N127), .C1(n66), 
        .Y(n93) );
  AOI31X2M U65 ( .A0(n86), .A1(n87), .A2(n88), .B0(n152), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U66 ( .A0(N103), .A1(n67), .B0(N94), .B1(n54), .Y(n86) );
  AOI221XLM U67 ( .A0(n9), .A1(n155), .B0(n30), .B1(n148), .C0(n89), .Y(n88)
         );
  AOI222X1M U68 ( .A0(N112), .A1(n52), .B0(n8), .B1(n59), .C0(N128), .C1(n66), 
        .Y(n87) );
  AOI31X2M U69 ( .A0(n80), .A1(n81), .A2(n82), .B0(n152), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U70 ( .A0(N104), .A1(n67), .B0(N95), .B1(n54), .Y(n80) );
  AOI221XLM U71 ( .A0(n155), .A1(n27), .B0(n30), .B1(n147), .C0(n83), .Y(n82)
         );
  AOI222X1M U72 ( .A0(N113), .A1(n52), .B0(n9), .B1(n59), .C0(N129), .C1(n66), 
        .Y(n81) );
  AOI31X2M U73 ( .A0(n74), .A1(n75), .A2(n76), .B0(n152), .Y(ALU_OUT_Comb[5])
         );
  AOI22X1M U74 ( .A0(N105), .A1(n67), .B0(N96), .B1(n54), .Y(n74) );
  AOI221XLM U75 ( .A0(n155), .A1(n28), .B0(n30), .B1(n146), .C0(n77), .Y(n76)
         );
  AOI222X1M U76 ( .A0(N114), .A1(n52), .B0(n27), .B1(n59), .C0(N130), .C1(n66), 
        .Y(n75) );
  AOI31X2M U77 ( .A0(n68), .A1(n69), .A2(n70), .B0(n152), .Y(ALU_OUT_Comb[6])
         );
  AOI22X1M U78 ( .A0(N106), .A1(n67), .B0(N97), .B1(n54), .Y(n68) );
  AOI221XLM U79 ( .A0(n155), .A1(n29), .B0(n30), .B1(n145), .C0(n71), .Y(n70)
         );
  AOI222X1M U80 ( .A0(N115), .A1(n52), .B0(n59), .B1(n28), .C0(N131), .C1(n66), 
        .Y(n69) );
  AOI31X2M U81 ( .A0(n55), .A1(n56), .A2(n57), .B0(n152), .Y(ALU_OUT_Comb[7])
         );
  AOI22X1M U82 ( .A0(N132), .A1(n66), .B0(N116), .B1(n52), .Y(n56) );
  AOI22X1M U83 ( .A0(N107), .A1(n67), .B0(N98), .B1(n54), .Y(n55) );
  AOI221XLM U84 ( .A0(n30), .A1(n144), .B0(n59), .B1(n29), .C0(n60), .Y(n57)
         );
  AOI31X2M U85 ( .A0(n110), .A1(n111), .A2(n112), .B0(n152), .Y(
        ALU_OUT_Comb[0]) );
  AOI22X1M U86 ( .A0(N100), .A1(n67), .B0(N91), .B1(n54), .Y(n110) );
  AOI211X2M U87 ( .A0(n30), .A1(n151), .B0(n113), .C0(n114), .Y(n112) );
  AOI222X1M U88 ( .A0(N109), .A1(n52), .B0(n5), .B1(n59), .C0(N125), .C1(n66), 
        .Y(n111) );
  AOI31X2M U89 ( .A0(n98), .A1(n99), .A2(n100), .B0(n152), .Y(ALU_OUT_Comb[1])
         );
  AOI211X2M U90 ( .A0(n7), .A1(n155), .B0(n101), .C0(n102), .Y(n100) );
  AOI222X1M U91 ( .A0(N126), .A1(n66), .B0(n30), .B1(n150), .C0(n6), .C1(n59), 
        .Y(n99) );
  AOI222X1M U92 ( .A0(N92), .A1(n54), .B0(N110), .B1(n52), .C0(N101), .C1(n67), 
        .Y(n98) );
  INVX2M U93 ( .A(n109), .Y(n140) );
  AOI211X2M U94 ( .A0(N108), .A1(n67), .B0(n30), .C0(n64), .Y(n109) );
  AOI21X2M U95 ( .A0(n50), .A1(n51), .B0(n152), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U96 ( .A0(N99), .A1(n54), .B0(n140), .Y(n50) );
  AOI2BB2XLM U97 ( .B0(N117), .B1(n52), .A0N(n144), .A1N(n53), .Y(n51) );
  BUFX2M U98 ( .A(ALU_FUN[3]), .Y(n3) );
  INVX2M U99 ( .A(n6), .Y(n150) );
  INVX2M U100 ( .A(n5), .Y(n151) );
  INVX2M U101 ( .A(n28), .Y(n145) );
  INVX2M U102 ( .A(n29), .Y(n144) );
  INVX2M U103 ( .A(n8), .Y(n148) );
  INVX2M U104 ( .A(n7), .Y(n149) );
  INVX2M U105 ( .A(n27), .Y(n146) );
  INVX2M U106 ( .A(n9), .Y(n147) );
  OAI222X1M U107 ( .A0(n96), .A1(n136), .B0(B[2]), .B1(n97), .C0(n53), .C1(
        n150), .Y(n95) );
  AOI221XLM U108 ( .A0(n7), .A1(n63), .B0(n64), .B1(n149), .C0(n30), .Y(n97)
         );
  AOI221XLM U109 ( .A0(n63), .A1(n149), .B0(n7), .B1(n65), .C0(n59), .Y(n96)
         );
  OAI222X1M U110 ( .A0(n90), .A1(n138), .B0(B[3]), .B1(n91), .C0(n53), .C1(
        n149), .Y(n89) );
  AOI221XLM U111 ( .A0(n8), .A1(n63), .B0(n64), .B1(n148), .C0(n30), .Y(n91)
         );
  AOI221XLM U112 ( .A0(n63), .A1(n148), .B0(n8), .B1(n65), .C0(n59), .Y(n90)
         );
  OAI222X1M U113 ( .A0(n84), .A1(n143), .B0(B[4]), .B1(n85), .C0(n53), .C1(
        n148), .Y(n83) );
  INVX2M U114 ( .A(B[4]), .Y(n143) );
  AOI221XLM U115 ( .A0(n9), .A1(n63), .B0(n64), .B1(n147), .C0(n30), .Y(n85)
         );
  AOI221XLM U116 ( .A0(n63), .A1(n147), .B0(n9), .B1(n65), .C0(n59), .Y(n84)
         );
  OAI222X1M U117 ( .A0(n78), .A1(n142), .B0(B[5]), .B1(n79), .C0(n53), .C1(
        n147), .Y(n77) );
  INVX2M U118 ( .A(B[5]), .Y(n142) );
  AOI221XLM U119 ( .A0(n27), .A1(n63), .B0(n64), .B1(n146), .C0(n30), .Y(n79)
         );
  AOI221XLM U120 ( .A0(n63), .A1(n146), .B0(n27), .B1(n65), .C0(n59), .Y(n78)
         );
  OAI222X1M U121 ( .A0(n61), .A1(n141), .B0(B[7]), .B1(n62), .C0(n53), .C1(
        n145), .Y(n60) );
  INVX2M U122 ( .A(B[7]), .Y(n141) );
  AOI221XLM U123 ( .A0(n63), .A1(n29), .B0(n64), .B1(n144), .C0(n30), .Y(n62)
         );
  AOI221XLM U124 ( .A0(n63), .A1(n144), .B0(n29), .B1(n65), .C0(n59), .Y(n61)
         );
  INVX2M U125 ( .A(n31), .Y(n135) );
  OAI2B2X1M U126 ( .A1N(B[0]), .A0(n115), .B0(n108), .B1(n150), .Y(n114) );
  AOI221XLM U127 ( .A0(n63), .A1(n151), .B0(n5), .B1(n65), .C0(n59), .Y(n115)
         );
  OAI2B2X1M U128 ( .A1N(B[1]), .A0(n103), .B0(n53), .B1(n151), .Y(n102) );
  AOI221XLM U129 ( .A0(n63), .A1(n150), .B0(n6), .B1(n65), .C0(n59), .Y(n103)
         );
  INVX2M U130 ( .A(n42), .Y(n137) );
  OAI21X2M U131 ( .A0(B[0]), .A1(n119), .B0(n120), .Y(n113) );
  AOI31X2M U132 ( .A0(N157), .A1(n3), .A2(n121), .B0(n107), .Y(n120) );
  AOI221XLM U133 ( .A0(n5), .A1(n63), .B0(n64), .B1(n151), .C0(n30), .Y(n119)
         );
  NOR3X2M U134 ( .A(n156), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n121) );
  OAI21X2M U135 ( .A0(B[1]), .A1(n104), .B0(n105), .Y(n101) );
  AOI31X2M U136 ( .A0(N158), .A1(n3), .A2(n106), .B0(n107), .Y(n105) );
  AOI221XLM U137 ( .A0(n6), .A1(n63), .B0(n64), .B1(n150), .C0(n30), .Y(n104)
         );
  NOR3X2M U138 ( .A(n153), .B(ALU_FUN[2]), .C(n156), .Y(n106) );
  BUFX2M U139 ( .A(A[7]), .Y(n29) );
  BUFX2M U140 ( .A(A[1]), .Y(n6) );
  BUFX2M U141 ( .A(A[0]), .Y(n5) );
  BUFX2M U142 ( .A(A[3]), .Y(n8) );
  BUFX2M U143 ( .A(A[2]), .Y(n7) );
  BUFX2M U144 ( .A(A[5]), .Y(n27) );
  BUFX2M U145 ( .A(A[4]), .Y(n9) );
  BUFX2M U146 ( .A(B[6]), .Y(n4) );
  INVX2M U147 ( .A(B[0]), .Y(n134) );
  INVX2M U148 ( .A(B[2]), .Y(n136) );
  INVX2M U149 ( .A(B[3]), .Y(n138) );
  NOR2X1M U150 ( .A(n144), .B(B[7]), .Y(n130) );
  NAND2BX1M U151 ( .AN(B[4]), .B(n9), .Y(n46) );
  NAND2BX1M U152 ( .AN(n9), .B(B[4]), .Y(n35) );
  CLKNAND2X2M U153 ( .A(n46), .B(n35), .Y(n125) );
  NOR2X1M U154 ( .A(n138), .B(n8), .Y(n43) );
  NOR2X1M U155 ( .A(n136), .B(n7), .Y(n34) );
  NOR2X1M U156 ( .A(n134), .B(n5), .Y(n31) );
  CLKNAND2X2M U157 ( .A(n7), .B(n136), .Y(n45) );
  NAND2BX1M U158 ( .AN(n34), .B(n45), .Y(n40) );
  AOI21X1M U159 ( .A0(n31), .A1(n150), .B0(B[1]), .Y(n32) );
  AOI211X1M U160 ( .A0(n6), .A1(n135), .B0(n40), .C0(n32), .Y(n33) );
  CLKNAND2X2M U161 ( .A(n8), .B(n138), .Y(n44) );
  OAI31X1M U162 ( .A0(n43), .A1(n34), .A2(n33), .B0(n44), .Y(n36) );
  NAND2BX1M U163 ( .AN(n27), .B(B[5]), .Y(n128) );
  OAI211X1M U164 ( .A0(n125), .A1(n36), .B0(n35), .C0(n128), .Y(n37) );
  NAND2BX1M U165 ( .AN(B[5]), .B(n27), .Y(n47) );
  XNOR2X1M U166 ( .A(n28), .B(n4), .Y(n127) );
  AOI32X1M U167 ( .A0(n37), .A1(n47), .A2(n127), .B0(n4), .B1(n145), .Y(n38)
         );
  CLKNAND2X2M U168 ( .A(B[7]), .B(n144), .Y(n131) );
  OAI21X1M U169 ( .A0(n130), .A1(n38), .B0(n131), .Y(N159) );
  CLKNAND2X2M U170 ( .A(n5), .B(n134), .Y(n41) );
  OA21X1M U171 ( .A0(n41), .A1(n150), .B0(B[1]), .Y(n39) );
  AOI211X1M U172 ( .A0(n41), .A1(n150), .B0(n40), .C0(n39), .Y(n42) );
  AOI31X1M U173 ( .A0(n137), .A1(n45), .A2(n44), .B0(n43), .Y(n126) );
  OAI2B11X1M U174 ( .A1N(n126), .A0(n125), .B0(n47), .C0(n46), .Y(n129) );
  AOI32X1M U175 ( .A0(n129), .A1(n128), .A2(n127), .B0(n28), .B1(n139), .Y(
        n132) );
  AOI2B1X1M U176 ( .A1N(n132), .A0(n131), .B0(n130), .Y(n133) );
  CLKINVX1M U177 ( .A(n133), .Y(N158) );
  NOR2X1M U178 ( .A(N159), .B(N158), .Y(N157) );
  ALU_16B_DW_div_uns_0 div_60 ( .a({n29, n28, n27, n9, n8, n7, n6, n5}), .b({
        B[7], n4, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, 
        N126, N125}) );
  ALU_16B_DW01_sub_0 sub_52 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), 
        .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  ALU_16B_DW01_add_0 add_48 ( .A({1'b0, n29, n28, n27, n9, n8, n7, n6, n5}), 
        .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  ALU_16B_DW02_mult_0 mult_56 ( .A({n29, n28, n27, n9, n8, n7, n6, n5}), .B({
        B[7], n4, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, N120, 
        N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
endmodule


module CLK_GATE ( test_en, CLK_EN, CLK, GATED_CLK );
  input test_en, CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module SYS_TOP_DFT ( scan_clk, scan_rst, test_mode, SE, SI, SO, RST_N, 
        UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, framing_error
 );
  input [3:0] SI;
  output [3:0] SO;
  input scan_clk, scan_rst, test_mode, SE, RST_N, UART_CLK, REF_CLK,
         UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   UART_CLK_scan, REF_CLK_scan, TX_CLK, TX_CLK_scan, RX_CLK, RX_CLK_scan,
         RST_N_scan, SYNC_RST_REF, SYNC_RST_REF_scan, SYNC_RST_UART,
         SYNC_RST_UART_scan, UART_RX_Valid_Unsync, UART_RX_Valid, FIFO_WR_INC,
         FIFO_Rd_INC, FIFO_FULL, FIFO_EMPTY_Valid_for_UART_TX, UART_TX_Busy,
         ALU_OUT_Valid, ALU_EN, CLKG_EN, Rd_Reg_Valid, RdEn, WrEn, ALU_CLK,
         _1_net_, n1, n2, n3, n4, n5, n6, n7, n8, n10, n11, n12, n16, n17, n18,
         n19, n24, n25, n26, n27, n28, n29, n30, n31, n32;
  wire   [7:0] UART_RX_DATA_Unsync;
  wire   [7:0] UART_RX_DATA;
  wire   [7:0] FIFO_WR_DATA;
  wire   [7:0] FIFO_Rd_DATA;
  wire   [7:0] Div_Ratio;
  wire   [7:0] UART_Config;
  wire   [7:0] Div_Ratio_to_RX;
  wire   [15:0] ALU_OUT;
  wire   [3:0] ALU_FUN;
  wire   [7:0] Rd_Reg;
  wire   [7:0] Wr_Reg;
  wire   [3:0] Addr;
  wire   [7:0] Operand_A;
  wire   [7:0] Operand_B;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;
  assign SO[1] = Rd_Reg[4];

  INVX2M U3 ( .A(FIFO_EMPTY_Valid_for_UART_TX), .Y(n1) );
  OR2X2M U4 ( .A(CLKG_EN), .B(n2), .Y(_1_net_) );
  BUFX2M U5 ( .A(Addr[0]), .Y(n3) );
  BUFX2M U6 ( .A(Addr[1]), .Y(n4) );
  INVX4M U7 ( .A(n8), .Y(n7) );
  INVX2M U8 ( .A(SYNC_RST_REF_scan), .Y(n8) );
  INVX4M U9 ( .A(n6), .Y(n5) );
  INVX2M U10 ( .A(SYNC_RST_UART_scan), .Y(n6) );
  BUFX2M U11 ( .A(test_mode), .Y(n2) );
  CLKBUFX40M U17 ( .A(SO[0]), .Y(framing_error) );
  INVXLM U18 ( .A(n31), .Y(n24) );
  INVXLM U19 ( .A(n24), .Y(n25) );
  DLY1X1M U20 ( .A(n28), .Y(n26) );
  INVXLM U21 ( .A(n32), .Y(n27) );
  INVXLM U22 ( .A(n27), .Y(n28) );
  INVXLM U23 ( .A(n27), .Y(n29) );
  INVXLM U24 ( .A(SE), .Y(n30) );
  INVXLM U25 ( .A(n30), .Y(n31) );
  INVXLM U26 ( .A(n30), .Y(n32) );
  mux2X1_0 U1_mux2X1 ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        UART_CLK_scan) );
  mux2X1_6 U2_mux2X1 ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        REF_CLK_scan) );
  mux2X1_5 U3_mux2X1 ( .IN_0(TX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        TX_CLK_scan) );
  mux2X1_4 U4_mux2X1 ( .IN_0(RX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        RX_CLK_scan) );
  mux2X1_3 U5_mux2X1 ( .IN_0(RST_N), .IN_1(scan_rst), .SEL(n2), .OUT(
        RST_N_scan) );
  mux2X1_2 U6_mux2X1 ( .IN_0(SYNC_RST_REF), .IN_1(scan_rst), .SEL(n2), .OUT(
        SYNC_RST_REF_scan) );
  mux2X1_1 U7_mux2X1 ( .IN_0(SYNC_RST_UART), .IN_1(scan_rst), .SEL(n2), .OUT(
        SYNC_RST_UART_scan) );
  RST_SYNC_NUM_STAGES2_test_0 U0_RST_SYNC_REF ( .CLK(REF_CLK_scan), .RST(
        RST_N_scan), .SYNC_RST(SYNC_RST_REF), .test_si(n16), .test_se(n25) );
  RST_SYNC_NUM_STAGES2_test_1 U1_RST_SYNC_UART ( .CLK(UART_CLK_scan), .RST(
        RST_N_scan), .SYNC_RST(SYNC_RST_UART), .test_si(n10), .test_se(n25) );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 U0_DATA_SYNC ( .unsync_bus(
        UART_RX_DATA_Unsync), .bus_enable(UART_RX_Valid_Unsync), .CLK(
        REF_CLK_scan), .RST(n7), .sync_bus(UART_RX_DATA), .enable_pulse(
        UART_RX_Valid), .test_si(n19), .test_so(n18), .test_se(n32) );
  Async_fifo_D_SIZE8_F_DEPTH8_P_SIZE4_test_1 U0_Async_fifo ( .i_w_clk(
        REF_CLK_scan), .i_w_rstn(n7), .i_w_inc(FIFO_WR_INC), .i_r_clk(
        TX_CLK_scan), .i_r_rstn(n5), .i_r_inc(FIFO_Rd_INC), .i_w_data(
        FIFO_WR_DATA), .o_r_data(FIFO_Rd_DATA), .o_full(FIFO_FULL), .o_empty(
        FIFO_EMPTY_Valid_for_UART_TX), .test_si2(SI[2]), .test_si1(
        ALU_OUT_Valid), .test_so2(n19), .test_so1(SO[3]), .test_se(SE) );
  PULSE_GEN_test_1 U0_PULSE_GEN ( .clk(TX_CLK_scan), .rst(n5), .lvl_sig(
        UART_TX_Busy), .pulse_sig(FIFO_Rd_INC), .test_si(n17), .test_so(n16), 
        .test_se(n25) );
  Integer_Clock_Divider_test_0 U0_Integer_Clock_Divider_TX ( .i_ref_clk(
        UART_CLK_scan), .i_rst_n(n5), .i_clk_en(1'b1), .i_div_ratio(Div_Ratio), 
        .o_div_clk(TX_CLK), .test_si(n18), .test_so(n17), .test_se(n31) );
  CLKDIV_MUX U0_CLKDIV_MUX ( .IN(UART_Config[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, Div_Ratio_to_RX[3:0]}) );
  Integer_Clock_Divider_test_1 U1_Integer_Clock_Divider_RX ( .i_ref_clk(
        UART_CLK_scan), .i_rst_n(n5), .i_clk_en(1'b1), .i_div_ratio({1'b0, 
        1'b0, 1'b0, 1'b0, Div_Ratio_to_RX[3:0]}), .o_div_clk(RX_CLK), 
        .test_si(n11), .test_so(n10), .test_se(n25) );
  UART_test_1 U0_UART ( .TX_CLK(TX_CLK_scan), .TX_IN_P(FIFO_Rd_DATA), 
        .TX_IN_V(n1), .TX_OUT_S(UART_TX_O), .TX_OUT_V(UART_TX_Busy), .RST(n5), 
        .PAR_TYP(UART_Config[1]), .PAR_EN(UART_Config[0]), .RX_CLK(RX_CLK_scan), .RX_IN_S(UART_RX_IN), .Prescale(UART_Config[7:2]), .RX_OUT_P(
        UART_RX_DATA_Unsync), .RX_OUT_V(UART_RX_Valid_Unsync), .parity_error(
        parity_error), .framing_error(SO[0]), .test_si2(SYNC_RST_UART), 
        .test_si1(n12), .test_so1(n11), .test_se(SE) );
  SYS_CTRL_test_1 U0_SYS_CTRL ( .CLK(REF_CLK_scan), .RST(n7), .UART_RX_DATA(
        UART_RX_DATA), .UART_RX_Valid(UART_RX_Valid), .FIFO_FULL(FIFO_FULL), 
        .FIFO_WR_DATA(FIFO_WR_DATA), .FIFO_WR_INC(FIFO_WR_INC), .ALU_OUT(
        ALU_OUT), .ALU_OUT_Valid(ALU_OUT_Valid), .ALU_EN(ALU_EN), .ALU_FUN(
        ALU_FUN), .CLKG_EN(CLKG_EN), .Rd_Reg(Rd_Reg), .Rd_Reg_Valid(
        Rd_Reg_Valid), .Wr_Reg(Wr_Reg), .Addr(Addr), .RdEn(RdEn), .WrEn(WrEn), 
        .test_so(n12), .test_se(n26) );
  Register_File_test_1 U0_Register_File ( .WrData(Wr_Reg), .Adresss({Addr[3:2], 
        n4, n3}), .WrEn(WrEn), .RdEn(RdEn), .CLK(REF_CLK_scan), .RST(n7), 
        .RdData(Rd_Reg), .RdData_Valid(Rd_Reg_Valid), .REG0(Operand_A), .REG1(
        Operand_B), .REG2(UART_Config), .REG3(Div_Ratio), .test_si3(SI[0]), 
        .test_si2(SI[1]), .test_si1(SYNC_RST_REF), .test_so1(SO[2]), .test_se(
        SE) );
  ALU_16B_test_1 U0_ALU_16B ( .A(Operand_A), .B(Operand_B), .EN(ALU_EN), 
        .ALU_FUN(ALU_FUN), .CLK(ALU_CLK), .RST(n7), .ALU_OUT(ALU_OUT), 
        .OUT_VALID(ALU_OUT_Valid), .test_si(SI[3]), .test_se(n29) );
  CLK_GATE U0_CLK_GATE ( .test_en(1'b0), .CLK_EN(_1_net_), .CLK(REF_CLK_scan), 
        .GATED_CLK(ALU_CLK) );
endmodule

