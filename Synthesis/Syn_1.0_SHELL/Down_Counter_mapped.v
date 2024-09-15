/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Tue Sep  3 03:21:33 2024
/////////////////////////////////////////////////////////////


module Down_Counter ( clock, in, latch, dec, zero );
  input [3:0] in;
  input clock, latch, dec;
  output zero;
  wire   n13, n14, n15, n16, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30;
  wire   [3:0] counter;

  DFFQX2M \counter_reg[3]  ( .D(n15), .CK(clock), .Q(counter[3]) );
  DFFQX2M \counter_reg[2]  ( .D(n13), .CK(clock), .Q(counter[2]) );
  DFFQX2M \counter_reg[1]  ( .D(n14), .CK(clock), .Q(counter[1]) );
  DFFQX2M \counter_reg[0]  ( .D(n16), .CK(clock), .Q(counter[0]) );
  OAI21X1M U20 ( .A0(counter[0]), .A1(n18), .B0(n19), .Y(n16) );
  MXI2X1M U21 ( .A(in[0]), .B(n20), .S0(n21), .Y(n19) );
  AND2X1M U22 ( .A(counter[0]), .B(n18), .Y(n20) );
  AO2B2X1M U23 ( .B0(in[3]), .B1(latch), .A0(counter[3]), .A1N(n22), .Y(n15)
         );
  OA21X1M U24 ( .A0(n23), .A1(n18), .B0(n24), .Y(n22) );
  OAI2BB1X1M U25 ( .A0N(in[1]), .A1N(latch), .B0(n25), .Y(n14) );
  MXI2X1M U26 ( .A(n26), .B(n27), .S0(counter[1]), .Y(n25) );
  NOR2X1M U27 ( .A(counter[0]), .B(n18), .Y(n26) );
  OAI221X1M U28 ( .A0(n28), .A1(n18), .B0(n24), .B1(n23), .C0(n29), .Y(n13) );
  CLKNAND2X2M U29 ( .A(in[2]), .B(latch), .Y(n29) );
  CLKINVX1M U30 ( .A(counter[2]), .Y(n23) );
  AOI21X1M U31 ( .A0(n30), .A1(counter[1]), .B0(n27), .Y(n24) );
  CLKMX2X2M U32 ( .A(n21), .B(counter[0]), .S0(n30), .Y(n27) );
  CLKINVX1M U33 ( .A(latch), .Y(n21) );
  CLKINVX1M U34 ( .A(n30), .Y(n18) );
  NOR3BX1M U35 ( .AN(dec), .B(zero), .C(latch), .Y(n30) );
  NOR2X1M U36 ( .A(n28), .B(counter[3]), .Y(zero) );
  OR3X1M U37 ( .A(counter[1]), .B(counter[2]), .C(counter[0]), .Y(n28) );
endmodule

