/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sun Oct 20 03:17:13 2024
/////////////////////////////////////////////////////////////


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module UART_TX_serializer_test_1 ( CLK, RST, Data_Valid, busy, P_DATA, ser_en, 
        ser_done, S_DATA, test_si, test_se );
  input [7:0] P_DATA;
  input CLK, RST, Data_Valid, busy, ser_en, test_si, test_se;
  output ser_done, S_DATA;
  wire   n3, n15, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n1;
  wire   [7:0] parallel_data;
  wire   [3:0] counter;

  SDFFSQX1M S_DATA_reg ( .D(n43), .SI(test_si), .SE(n81), .CK(CLK), .SN(RST), 
        .Q(S_DATA) );
  SDFFRX1M \parallel_data_reg[0]  ( .D(n50), .SI(n69), .SE(n81), .CK(CLK), 
        .RN(RST), .Q(n70), .QN(n15) );
  SDFFRQX2M \parallel_data_reg[7]  ( .D(n51), .SI(parallel_data[6]), .SE(n79), 
        .CK(CLK), .RN(RST), .Q(parallel_data[7]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n54), .SI(n86), .SE(n78), .CK(CLK), .RN(RST), 
        .Q(counter[0]) );
  SDFFRQX2M \parallel_data_reg[6]  ( .D(n44), .SI(parallel_data[5]), .SE(n79), 
        .CK(CLK), .RN(RST), .Q(parallel_data[6]) );
  SDFFRQX2M \parallel_data_reg[5]  ( .D(n45), .SI(parallel_data[4]), .SE(n80), 
        .CK(CLK), .RN(RST), .Q(parallel_data[5]) );
  SDFFRQX2M \parallel_data_reg[4]  ( .D(n46), .SI(parallel_data[3]), .SE(n83), 
        .CK(CLK), .RN(RST), .Q(parallel_data[4]) );
  SDFFRQX2M \parallel_data_reg[3]  ( .D(n47), .SI(parallel_data[2]), .SE(n77), 
        .CK(CLK), .RN(RST), .Q(parallel_data[3]) );
  SDFFRQX2M \parallel_data_reg[2]  ( .D(n48), .SI(parallel_data[1]), .SE(n82), 
        .CK(CLK), .RN(RST), .Q(parallel_data[2]) );
  SDFFRQX2M \parallel_data_reg[1]  ( .D(n49), .SI(n70), .SE(n77), .CK(CLK), 
        .RN(RST), .Q(parallel_data[1]) );
  SDFFRQX2M \counter_reg[1]  ( .D(n52), .SI(n66), .SE(n76), .CK(CLK), .RN(RST), 
        .Q(counter[1]) );
  SDFFRQX2M \counter_reg[3]  ( .D(n53), .SI(n68), .SE(n78), .CK(CLK), .RN(RST), 
        .Q(counter[3]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n62), .SI(n67), .SE(n84), .CK(CLK), .RN(RST), 
        .Q(counter[2]) );
  NAND3X4M U31 ( .A(n41), .B(n65), .C(ser_en), .Y(n25) );
  OAI21X2M U32 ( .A0(n61), .A1(n41), .B0(n25), .Y(n40) );
  OAI21X2M U33 ( .A0(counter[1]), .A1(n25), .B0(n38), .Y(n37) );
  INVX2M U34 ( .A(counter[0]), .Y(n66) );
  INVX4M U35 ( .A(n25), .Y(n63) );
  INVX2M U36 ( .A(n40), .Y(n64) );
  INVX2M U37 ( .A(n61), .Y(n65) );
  NAND2X4M U38 ( .A(n65), .B(n25), .Y(n26) );
  AOI21X2M U39 ( .A0(n63), .A1(n66), .B0(n64), .Y(n38) );
  NOR2X4M U40 ( .A(n66), .B(n64), .Y(n36) );
  CLKBUFX6M U41 ( .A(n28), .Y(n61) );
  NOR2BX1M U42 ( .AN(Data_Valid), .B(busy), .Y(n28) );
  OAI21X2M U43 ( .A0(n39), .A1(n69), .B0(n24), .Y(n53) );
  AOI21X2M U44 ( .A0(n63), .A1(n68), .B0(n37), .Y(n39) );
  OAI2BB2X1M U45 ( .B0(n38), .B1(n67), .A0N(n67), .A1N(n36), .Y(n52) );
  INVX2M U46 ( .A(n35), .Y(n62) );
  AOI32X1M U47 ( .A0(counter[1]), .A1(n68), .A2(n36), .B0(n37), .B1(counter[2]), .Y(n35) );
  OAI2B1X2M U48 ( .A1N(parallel_data[1]), .A0(n26), .B0(n33), .Y(n49) );
  AOI22X1M U49 ( .A0(parallel_data[2]), .A1(n63), .B0(P_DATA[1]), .B1(n61), 
        .Y(n33) );
  OAI2B1X2M U50 ( .A1N(parallel_data[2]), .A0(n26), .B0(n32), .Y(n48) );
  AOI22X1M U51 ( .A0(parallel_data[3]), .A1(n63), .B0(P_DATA[2]), .B1(n61), 
        .Y(n32) );
  OAI2B1X2M U52 ( .A1N(parallel_data[3]), .A0(n26), .B0(n31), .Y(n47) );
  AOI22X1M U53 ( .A0(parallel_data[4]), .A1(n63), .B0(P_DATA[3]), .B1(n61), 
        .Y(n31) );
  OAI2B1X2M U54 ( .A1N(parallel_data[4]), .A0(n26), .B0(n30), .Y(n46) );
  AOI22X1M U55 ( .A0(parallel_data[5]), .A1(n63), .B0(P_DATA[4]), .B1(n61), 
        .Y(n30) );
  OAI2B1X2M U56 ( .A1N(parallel_data[5]), .A0(n26), .B0(n29), .Y(n45) );
  AOI22X1M U57 ( .A0(parallel_data[6]), .A1(n63), .B0(P_DATA[5]), .B1(n61), 
        .Y(n29) );
  OAI2B1X2M U58 ( .A1N(parallel_data[6]), .A0(n26), .B0(n27), .Y(n44) );
  AOI22X1M U59 ( .A0(parallel_data[7]), .A1(n63), .B0(P_DATA[6]), .B1(n61), 
        .Y(n27) );
  OAI21X2M U60 ( .A0(n15), .A1(n26), .B0(n34), .Y(n50) );
  AOI22X1M U61 ( .A0(parallel_data[1]), .A1(n63), .B0(P_DATA[0]), .B1(n61), 
        .Y(n34) );
  OAI22X1M U62 ( .A0(n40), .A1(n66), .B0(counter[0]), .B1(n25), .Y(n54) );
  OAI2BB2X1M U63 ( .B0(n25), .B1(n15), .A0N(n86), .A1N(n25), .Y(n43) );
  NAND4X2M U64 ( .A(counter[2]), .B(counter[1]), .C(n36), .D(n69), .Y(n24) );
  OAI2BB1X2M U65 ( .A0N(n64), .A1N(ser_done), .B0(n24), .Y(n42) );
  AO22X1M U66 ( .A0(n65), .A1(parallel_data[7]), .B0(P_DATA[7]), .B1(n61), .Y(
        n51) );
  NAND4X2M U67 ( .A(counter[3]), .B(n85), .C(n67), .D(n68), .Y(n41) );
  INVX2M U68 ( .A(counter[1]), .Y(n67) );
  INVX2M U69 ( .A(counter[2]), .Y(n68) );
  INVX2M U70 ( .A(counter[3]), .Y(n69) );
  DLY1X1M U71 ( .A(test_se), .Y(n73) );
  DLY1X1M U72 ( .A(test_se), .Y(n74) );
  DLY1X1M U73 ( .A(test_se), .Y(n75) );
  DLY1X1M U74 ( .A(n80), .Y(n76) );
  DLY1X1M U75 ( .A(n82), .Y(n77) );
  DLY1X1M U76 ( .A(n83), .Y(n78) );
  DLY1X1M U77 ( .A(n84), .Y(n79) );
  DLY1X1M U78 ( .A(n73), .Y(n80) );
  DLY1X1M U79 ( .A(n74), .Y(n81) );
  DLY1X1M U80 ( .A(n73), .Y(n82) );
  DLY1X1M U81 ( .A(n75), .Y(n83) );
  DLY1X1M U82 ( .A(n74), .Y(n84) );
  INVXLM U83 ( .A(counter[0]), .Y(n85) );
  DLY1X1M U84 ( .A(S_DATA), .Y(n86) );
  SDFFRHQX1M ser_done_reg ( .D(n42), .SI(parallel_data[7]), .SE(n76), .CK(CLK), 
        .RN(RST), .Q(n3) );
  INVXLM U3 ( .A(n3), .Y(n1) );
  CLKINVX12M U4 ( .A(n1), .Y(ser_done) );
endmodule


module UART_TX_FSM_test_1 ( Data_Valid, PAR_EN, ser_done, CLK, RST, ser_en, 
        mux_sel, busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input Data_Valid, PAR_EN, ser_done, CLK, RST, test_si, test_se;
  output ser_en, busy, test_so;
  wire   ser_en, n7, n8, n9, n10, n11, n12, n4, n5, n15, n16, n19, n20, n21,
         n22, n23, n24, n25;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign mux_sel[0] = ser_en;
  assign test_so = n5;

  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n15), .SE(n22), 
        .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(n22), 
        .CK(CLK), .RN(RST), .Q(current_state[0]) );
  NAND2X2M U6 ( .A(n7), .B(n8), .Y(mux_sel[1]) );
  NAND2X2M U7 ( .A(n11), .B(n7), .Y(ser_en) );
  INVX2M U8 ( .A(n4), .Y(n5) );
  INVX2M U9 ( .A(current_state[2]), .Y(n4) );
  NAND2BX12M U13 ( .AN(ser_en), .B(n9), .Y(busy) );
  NAND3X4M U14 ( .A(current_state[1]), .B(n4), .C(current_state[0]), .Y(n7) );
  INVX2M U15 ( .A(current_state[0]), .Y(n15) );
  NAND2X2M U16 ( .A(current_state[1]), .B(n24), .Y(n9) );
  OR2X2M U17 ( .A(n9), .B(n5), .Y(n8) );
  OR3X2M U18 ( .A(current_state[1]), .B(current_state[2]), .C(n15), .Y(n11) );
  OAI31X2M U19 ( .A0(n16), .A1(PAR_EN), .A2(n7), .B0(n8), .Y(next_state[2]) );
  INVX2M U20 ( .A(n23), .Y(n16) );
  OAI211X2M U21 ( .A0(n23), .A1(n7), .B0(n10), .C0(n11), .Y(next_state[0]) );
  NAND3X2M U22 ( .A(Data_Valid), .B(n12), .C(n15), .Y(n10) );
  XNOR2X2M U23 ( .A(n5), .B(n25), .Y(n12) );
  AOI21X2M U24 ( .A0(n9), .A1(n15), .B0(n5), .Y(next_state[1]) );
  DLY1X1M U25 ( .A(ser_done), .Y(n19) );
  INVXLM U26 ( .A(n19), .Y(n20) );
  INVXLM U27 ( .A(n20), .Y(n21) );
  DLY1X1M U28 ( .A(test_se), .Y(n22) );
  DLY1X1M U29 ( .A(n21), .Y(n23) );
  INVXLM U30 ( .A(current_state[0]), .Y(n24) );
  DLY1X1M U31 ( .A(current_state[1]), .Y(n25) );
  SDFFRQX1M \current_state_reg[2]  ( .D(next_state[2]), .SI(n25), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[2]) );
endmodule


module UART_TX_parity_Calc_test_1 ( CLK, RST, P_DATA, Data_Valid, busy, 
        PAR_TYP, par_bit, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input CLK, RST, Data_Valid, busy, PAR_TYP, test_si, test_se;
  output par_bit, test_so;
  wire   n1, n2, n3, n4, n5, n7, n9, n11, n13, n15, n17, n19, n21, n30, n33,
         n34, n35, n36, n37, n38;
  wire   [7:0] parallel_data;
  assign test_so = parallel_data[7];

  SDFFRQX2M \parallel_data_reg[7]  ( .D(n21), .SI(parallel_data[6]), .SE(n35), 
        .CK(CLK), .RN(RST), .Q(parallel_data[7]) );
  SDFFRQX2M \parallel_data_reg[6]  ( .D(n19), .SI(parallel_data[5]), .SE(n34), 
        .CK(CLK), .RN(RST), .Q(parallel_data[6]) );
  SDFFRQX2M \parallel_data_reg[5]  ( .D(n17), .SI(parallel_data[4]), .SE(n38), 
        .CK(CLK), .RN(RST), .Q(parallel_data[5]) );
  SDFFRQX2M \parallel_data_reg[4]  ( .D(n15), .SI(parallel_data[3]), .SE(n35), 
        .CK(CLK), .RN(RST), .Q(parallel_data[4]) );
  SDFFRQX2M \parallel_data_reg[3]  ( .D(n13), .SI(parallel_data[2]), .SE(n34), 
        .CK(CLK), .RN(RST), .Q(parallel_data[3]) );
  SDFFRQX2M \parallel_data_reg[2]  ( .D(n11), .SI(parallel_data[1]), .SE(n38), 
        .CK(CLK), .RN(RST), .Q(parallel_data[2]) );
  SDFFRQX2M \parallel_data_reg[1]  ( .D(n9), .SI(parallel_data[0]), .SE(n37), 
        .CK(CLK), .RN(RST), .Q(parallel_data[1]) );
  SDFFRQX2M \parallel_data_reg[0]  ( .D(n7), .SI(test_si), .SE(n36), .CK(CLK), 
        .RN(RST), .Q(parallel_data[0]) );
  XOR3XLM U2 ( .A(n1), .B(n2), .C(PAR_TYP), .Y(par_bit) );
  CLKBUFX8M U11 ( .A(n5), .Y(n30) );
  NOR2BX1M U12 ( .AN(Data_Valid), .B(busy), .Y(n5) );
  XOR3XLM U13 ( .A(parallel_data[5]), .B(parallel_data[4]), .C(n4), .Y(n1) );
  XOR3XLM U14 ( .A(parallel_data[1]), .B(parallel_data[0]), .C(n3), .Y(n2) );
  CLKXOR2X2M U15 ( .A(parallel_data[7]), .B(parallel_data[6]), .Y(n4) );
  CLKXOR2X2M U24 ( .A(parallel_data[3]), .B(parallel_data[2]), .Y(n3) );
  AO2B2X2M U25 ( .B0(P_DATA[0]), .B1(n30), .A0(parallel_data[0]), .A1N(n30), 
        .Y(n7) );
  AO2B2X2M U26 ( .B0(P_DATA[1]), .B1(n30), .A0(parallel_data[1]), .A1N(n30), 
        .Y(n9) );
  AO2B2X2M U27 ( .B0(P_DATA[2]), .B1(n30), .A0(parallel_data[2]), .A1N(n30), 
        .Y(n11) );
  AO2B2X2M U28 ( .B0(P_DATA[3]), .B1(n30), .A0(parallel_data[3]), .A1N(n30), 
        .Y(n13) );
  AO2B2X2M U29 ( .B0(P_DATA[4]), .B1(n30), .A0(parallel_data[4]), .A1N(n30), 
        .Y(n15) );
  AO2B2X2M U30 ( .B0(P_DATA[5]), .B1(n30), .A0(parallel_data[5]), .A1N(n30), 
        .Y(n17) );
  AO2B2X2M U31 ( .B0(P_DATA[6]), .B1(n30), .A0(parallel_data[6]), .A1N(n30), 
        .Y(n19) );
  AO2B2X2M U32 ( .B0(P_DATA[7]), .B1(n30), .A0(parallel_data[7]), .A1N(n30), 
        .Y(n21) );
  DLY1X1M U33 ( .A(test_se), .Y(n33) );
  DLY1X1M U34 ( .A(n36), .Y(n34) );
  DLY1X1M U35 ( .A(n37), .Y(n35) );
  DLY1X1M U36 ( .A(n33), .Y(n36) );
  DLY1X1M U37 ( .A(n33), .Y(n37) );
  DLY1X1M U38 ( .A(test_se), .Y(n38) );
endmodule


module UART_TX_MUX ( mux_sel, S_DATA, par_bit, TX_OUT );
  input [1:0] mux_sel;
  input S_DATA, par_bit;
  output TX_OUT;
  wire   n4, n1, n2;

  NAND3X2M U3 ( .A(mux_sel[0]), .B(S_DATA), .C(mux_sel[1]), .Y(n2) );
  CLKBUFX8M U4 ( .A(n4), .Y(TX_OUT) );
  NOR2BX1M U5 ( .AN(mux_sel[1]), .B(par_bit), .Y(n1) );
  OAI21X2M U6 ( .A0(mux_sel[0]), .A1(n1), .B0(n2), .Y(n4) );
endmodule


module UART_TX ( SI, SE, scan_clk, scan_rst, test_mode, SO, P_DATA, Data_Valid, 
        PAR_EN, PAR_TYP, CLK, RST, TX_OUT, busy );
  input [7:0] P_DATA;
  input SI, SE, scan_clk, scan_rst, test_mode, Data_Valid, PAR_EN, PAR_TYP,
         CLK, RST;
  output SO, TX_OUT, busy;
  wire   CLK_M, RST_M, ser_done, ser_en, S_DATA, par_bit, n2, n3, n5, n6, n7,
         n8, n9, n10, n11;
  wire   [1:0] mux_sel;
  assign SO = ser_done;

  DLY1X1M U1 ( .A(n8), .Y(n5) );
  DLY1X1M U2 ( .A(n9), .Y(n6) );
  DLY1X1M U3 ( .A(n11), .Y(n7) );
  DLY1X1M U4 ( .A(n10), .Y(n8) );
  INVXLM U5 ( .A(SE), .Y(n9) );
  INVXLM U6 ( .A(n6), .Y(n10) );
  INVXLM U7 ( .A(n6), .Y(n11) );
  mux2X1_0 U0_mux2X1 ( .IN_0(CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        CLK_M) );
  mux2X1_1 U1_mux2X1 ( .IN_0(RST), .IN_1(scan_rst), .SEL(test_mode), .OUT(
        RST_M) );
  UART_TX_serializer_test_1 U0_serializer ( .CLK(CLK_M), .RST(RST_M), 
        .Data_Valid(Data_Valid), .busy(busy), .P_DATA(P_DATA), .ser_en(ser_en), 
        .ser_done(ser_done), .S_DATA(S_DATA), .test_si(n2), .test_se(SE) );
  UART_TX_FSM_test_1 U0_FSM ( .Data_Valid(Data_Valid), .PAR_EN(PAR_EN), 
        .ser_done(ser_done), .CLK(CLK_M), .RST(RST_M), .ser_en(ser_en), 
        .mux_sel(mux_sel), .busy(busy), .test_si(SI), .test_so(n3), .test_se(
        n7) );
  UART_TX_parity_Calc_test_1 U0_parity_Calc ( .CLK(CLK_M), .RST(RST_M), 
        .P_DATA(P_DATA), .Data_Valid(Data_Valid), .busy(busy), .PAR_TYP(
        PAR_TYP), .par_bit(par_bit), .test_si(n3), .test_so(n2), .test_se(n5)
         );
  UART_TX_MUX U0_MUX ( .mux_sel(mux_sel), .S_DATA(S_DATA), .par_bit(par_bit), 
        .TX_OUT(TX_OUT) );
endmodule

