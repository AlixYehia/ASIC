/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Tue Oct  1 03:36:55 2024
/////////////////////////////////////////////////////////////


module UART_TX_serializer ( CLK, RST, Data_Valid, busy, P_DATA, ser_en, 
        ser_done, S_DATA );
  input [7:0] P_DATA;
  input CLK, RST, Data_Valid, busy, ser_en;
  output ser_done, S_DATA;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;
  wire   [7:0] parallel_data;
  wire   [3:0] counter;

  DFFRX1M \parallel_data_reg[0]  ( .D(n36), .CK(CLK), .RN(RST), .QN(n1) );
  DFFSQX2M S_DATA_reg ( .D(n29), .CK(CLK), .SN(RST), .Q(S_DATA) );
  DFFRX1M \counter_reg[3]  ( .D(n39), .CK(CLK), .RN(RST), .Q(counter[3]), .QN(
        n2) );
  DFFRQX1M \parallel_data_reg[7]  ( .D(n37), .CK(CLK), .RN(RST), .Q(
        parallel_data[7]) );
  DFFRQX1M \parallel_data_reg[6]  ( .D(n30), .CK(CLK), .RN(RST), .Q(
        parallel_data[6]) );
  DFFRQX1M \parallel_data_reg[5]  ( .D(n31), .CK(CLK), .RN(RST), .Q(
        parallel_data[5]) );
  DFFRQX1M \parallel_data_reg[4]  ( .D(n32), .CK(CLK), .RN(RST), .Q(
        parallel_data[4]) );
  DFFRQX1M \parallel_data_reg[3]  ( .D(n33), .CK(CLK), .RN(RST), .Q(
        parallel_data[3]) );
  DFFRQX1M \parallel_data_reg[2]  ( .D(n34), .CK(CLK), .RN(RST), .Q(
        parallel_data[2]) );
  DFFRQX1M \parallel_data_reg[1]  ( .D(n35), .CK(CLK), .RN(RST), .Q(
        parallel_data[1]) );
  DFFRX2M \counter_reg[0]  ( .D(n40), .CK(CLK), .RN(RST), .Q(counter[0]), .QN(
        n8) );
  DFFRX2M \counter_reg[1]  ( .D(n38), .CK(CLK), .RN(RST), .Q(counter[1]), .QN(
        n7) );
  DFFRX2M \counter_reg[2]  ( .D(n3), .CK(CLK), .RN(RST), .Q(counter[2]), .QN(
        n6) );
  DFFRQX2M ser_done_reg ( .D(n28), .CK(CLK), .RN(RST), .Q(ser_done) );
  AOI32X1M U3 ( .A0(counter[1]), .A1(n6), .A2(n22), .B0(n23), .B1(counter[2]), 
        .Y(n21) );
  NAND4X2M U4 ( .A(counter[3]), .B(n8), .C(n7), .D(n6), .Y(n27) );
  NAND3X4M U5 ( .A(n27), .B(n9), .C(ser_en), .Y(n11) );
  OAI21X2M U6 ( .A0(n41), .A1(n27), .B0(n11), .Y(n26) );
  OAI21X2M U7 ( .A0(counter[1]), .A1(n11), .B0(n24), .Y(n23) );
  INVX4M U8 ( .A(n11), .Y(n5) );
  INVX2M U9 ( .A(n26), .Y(n4) );
  INVX2M U10 ( .A(n41), .Y(n9) );
  NAND2X4M U11 ( .A(n9), .B(n11), .Y(n12) );
  AOI21X2M U12 ( .A0(n8), .A1(n5), .B0(n4), .Y(n24) );
  NOR2X4M U13 ( .A(n8), .B(n4), .Y(n22) );
  CLKBUFX6M U14 ( .A(n14), .Y(n41) );
  NOR2BX1M U15 ( .AN(Data_Valid), .B(busy), .Y(n14) );
  OAI21X2M U16 ( .A0(n25), .A1(n2), .B0(n10), .Y(n39) );
  AOI21X2M U17 ( .A0(n5), .A1(n6), .B0(n23), .Y(n25) );
  OAI2BB2X1M U18 ( .B0(n24), .B1(n7), .A0N(n7), .A1N(n22), .Y(n38) );
  INVX2M U19 ( .A(n21), .Y(n3) );
  OAI2B1X2M U20 ( .A1N(parallel_data[1]), .A0(n12), .B0(n19), .Y(n35) );
  AOI22X1M U21 ( .A0(parallel_data[2]), .A1(n5), .B0(P_DATA[1]), .B1(n41), .Y(
        n19) );
  OAI2B1X2M U22 ( .A1N(parallel_data[2]), .A0(n12), .B0(n18), .Y(n34) );
  AOI22X1M U23 ( .A0(parallel_data[3]), .A1(n5), .B0(P_DATA[2]), .B1(n41), .Y(
        n18) );
  OAI2B1X2M U24 ( .A1N(parallel_data[3]), .A0(n12), .B0(n17), .Y(n33) );
  AOI22X1M U25 ( .A0(parallel_data[4]), .A1(n5), .B0(P_DATA[3]), .B1(n41), .Y(
        n17) );
  OAI2B1X2M U26 ( .A1N(parallel_data[4]), .A0(n12), .B0(n16), .Y(n32) );
  AOI22X1M U27 ( .A0(parallel_data[5]), .A1(n5), .B0(P_DATA[4]), .B1(n41), .Y(
        n16) );
  OAI2B1X2M U28 ( .A1N(parallel_data[5]), .A0(n12), .B0(n15), .Y(n31) );
  AOI22X1M U29 ( .A0(parallel_data[6]), .A1(n5), .B0(P_DATA[5]), .B1(n41), .Y(
        n15) );
  OAI2B1X2M U30 ( .A1N(parallel_data[6]), .A0(n12), .B0(n13), .Y(n30) );
  AOI22X1M U31 ( .A0(parallel_data[7]), .A1(n5), .B0(P_DATA[6]), .B1(n41), .Y(
        n13) );
  NAND4X2M U32 ( .A(counter[2]), .B(counter[1]), .C(n22), .D(n2), .Y(n10) );
  OAI22X1M U33 ( .A0(n26), .A1(n8), .B0(counter[0]), .B1(n11), .Y(n40) );
  OAI21X2M U34 ( .A0(n1), .A1(n12), .B0(n20), .Y(n36) );
  AOI22X1M U35 ( .A0(parallel_data[1]), .A1(n5), .B0(P_DATA[0]), .B1(n41), .Y(
        n20) );
  OAI2BB1X2M U36 ( .A0N(ser_done), .A1N(n4), .B0(n10), .Y(n28) );
  OAI2BB2X1M U37 ( .B0(n11), .B1(n1), .A0N(S_DATA), .A1N(n11), .Y(n29) );
  AO22X1M U38 ( .A0(n9), .A1(parallel_data[7]), .B0(P_DATA[7]), .B1(n41), .Y(
        n37) );
endmodule


module UART_TX_FSM ( Data_Valid, PAR_EN, ser_done, CLK, RST, ser_en, mux_sel, 
        busy );
  output [1:0] mux_sel;
  input Data_Valid, PAR_EN, ser_done, CLK, RST;
  output ser_en, busy;
  wire   ser_en, n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign mux_sel[0] = ser_en;

  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]), .QN(n2) );
  DFFRQX4M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  NAND2X2M U3 ( .A(n4), .B(n5), .Y(mux_sel[1]) );
  NAND2X2M U4 ( .A(n8), .B(n4), .Y(ser_en) );
  OAI211X2M U5 ( .A0(ser_done), .A1(n4), .B0(n7), .C0(n8), .Y(next_state[0])
         );
  NAND2BX12M U6 ( .AN(ser_en), .B(n6), .Y(busy) );
  NAND3X4M U7 ( .A(current_state[0]), .B(n1), .C(current_state[1]), .Y(n4) );
  INVX2M U8 ( .A(current_state[2]), .Y(n1) );
  NAND2X2M U9 ( .A(current_state[1]), .B(n2), .Y(n6) );
  OR3X2M U10 ( .A(current_state[1]), .B(current_state[2]), .C(n2), .Y(n8) );
  OR2X2M U11 ( .A(n6), .B(current_state[2]), .Y(n5) );
  OAI31X2M U12 ( .A0(n3), .A1(PAR_EN), .A2(n4), .B0(n5), .Y(next_state[2]) );
  INVX2M U13 ( .A(ser_done), .Y(n3) );
  NAND3X2M U14 ( .A(Data_Valid), .B(n2), .C(n9), .Y(n7) );
  XNOR2X2M U15 ( .A(current_state[1]), .B(current_state[2]), .Y(n9) );
  AOI21X2M U16 ( .A0(n6), .A1(n2), .B0(current_state[2]), .Y(next_state[1]) );
endmodule


module UART_TX_parity_Calc ( CLK, RST, P_DATA, Data_Valid, busy, PAR_TYP, 
        par_bit );
  input [7:0] P_DATA;
  input CLK, RST, Data_Valid, busy, PAR_TYP;
  output par_bit;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [7:0] parallel_data;

  XOR3XLM U2 ( .A(n1), .B(n2), .C(PAR_TYP), .Y(par_bit) );
  XOR3XLM U3 ( .A(parallel_data[1]), .B(parallel_data[0]), .C(n3), .Y(n2) );
  CLKXOR2X2M U4 ( .A(parallel_data[3]), .B(parallel_data[2]), .Y(n3) );
  XOR3XLM U5 ( .A(parallel_data[5]), .B(parallel_data[4]), .C(n4), .Y(n1) );
  CLKXOR2X2M U6 ( .A(parallel_data[7]), .B(parallel_data[6]), .Y(n4) );
  AO2B2X1M U7 ( .B0(P_DATA[0]), .B1(n14), .A0(parallel_data[0]), .A1N(n14), 
        .Y(n6) );
  AO2B2X1M U8 ( .B0(P_DATA[1]), .B1(n14), .A0(parallel_data[1]), .A1N(n14), 
        .Y(n7) );
  AO2B2X1M U9 ( .B0(P_DATA[2]), .B1(n14), .A0(parallel_data[2]), .A1N(n14), 
        .Y(n8) );
  AO2B2X1M U10 ( .B0(P_DATA[3]), .B1(n14), .A0(parallel_data[3]), .A1N(n14), 
        .Y(n9) );
  AO2B2X1M U11 ( .B0(P_DATA[4]), .B1(n14), .A0(parallel_data[4]), .A1N(n14), 
        .Y(n10) );
  AO2B2X1M U12 ( .B0(P_DATA[5]), .B1(n14), .A0(parallel_data[5]), .A1N(n14), 
        .Y(n11) );
  AO2B2X1M U13 ( .B0(P_DATA[6]), .B1(n14), .A0(parallel_data[6]), .A1N(n14), 
        .Y(n12) );
  AO2B2X1M U14 ( .B0(P_DATA[7]), .B1(n14), .A0(parallel_data[7]), .A1N(n14), 
        .Y(n13) );
  DFFRQX1M \parallel_data_reg[7]  ( .D(n13), .CK(CLK), .RN(RST), .Q(
        parallel_data[7]) );
  DFFRQX1M \parallel_data_reg[6]  ( .D(n12), .CK(CLK), .RN(RST), .Q(
        parallel_data[6]) );
  DFFRQX1M \parallel_data_reg[5]  ( .D(n11), .CK(CLK), .RN(RST), .Q(
        parallel_data[5]) );
  DFFRQX1M \parallel_data_reg[4]  ( .D(n10), .CK(CLK), .RN(RST), .Q(
        parallel_data[4]) );
  DFFRQX1M \parallel_data_reg[3]  ( .D(n9), .CK(CLK), .RN(RST), .Q(
        parallel_data[3]) );
  DFFRQX1M \parallel_data_reg[2]  ( .D(n8), .CK(CLK), .RN(RST), .Q(
        parallel_data[2]) );
  DFFRQX1M \parallel_data_reg[1]  ( .D(n7), .CK(CLK), .RN(RST), .Q(
        parallel_data[1]) );
  DFFRQX1M \parallel_data_reg[0]  ( .D(n6), .CK(CLK), .RN(RST), .Q(
        parallel_data[0]) );
  CLKBUFX8M U15 ( .A(n5), .Y(n14) );
  NOR2BX1M U16 ( .AN(Data_Valid), .B(busy), .Y(n5) );
endmodule


module UART_TX_MUX ( mux_sel, S_DATA, par_bit, TX_OUT );
  input [1:0] mux_sel;
  input S_DATA, par_bit;
  output TX_OUT;
  wire   n4, n1, n2;

  NAND3X2M U3 ( .A(mux_sel[0]), .B(S_DATA), .C(mux_sel[1]), .Y(n2) );
  CLKBUFX8M U4 ( .A(n4), .Y(TX_OUT) );
  NOR2BX2M U5 ( .AN(mux_sel[1]), .B(par_bit), .Y(n1) );
  OAI21X2M U6 ( .A0(mux_sel[0]), .A1(n1), .B0(n2), .Y(n4) );
endmodule


module UART_TX ( P_DATA, Data_Valid, PAR_EN, PAR_TYP, CLK, RST, TX_OUT, busy
 );
  input [7:0] P_DATA;
  input Data_Valid, PAR_EN, PAR_TYP, CLK, RST;
  output TX_OUT, busy;
  wire   ser_done, ser_en, S_DATA, par_bit;
  wire   [1:0] mux_sel;

  UART_TX_serializer U0_serializer ( .CLK(CLK), .RST(RST), .Data_Valid(
        Data_Valid), .busy(busy), .P_DATA(P_DATA), .ser_en(ser_en), .ser_done(
        ser_done), .S_DATA(S_DATA) );
  UART_TX_FSM U0_FSM ( .Data_Valid(Data_Valid), .PAR_EN(PAR_EN), .ser_done(
        ser_done), .CLK(CLK), .RST(RST), .ser_en(ser_en), .mux_sel(mux_sel), 
        .busy(busy) );
  UART_TX_parity_Calc U0_parity_Calc ( .CLK(CLK), .RST(RST), .P_DATA(P_DATA), 
        .Data_Valid(Data_Valid), .busy(busy), .PAR_TYP(PAR_TYP), .par_bit(
        par_bit) );
  UART_TX_MUX U0_MUX ( .mux_sel(mux_sel), .S_DATA(S_DATA), .par_bit(par_bit), 
        .TX_OUT(TX_OUT) );
endmodule

