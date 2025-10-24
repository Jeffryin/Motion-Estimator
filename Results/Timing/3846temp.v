/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Thu Oct 23 16:00:30 2025
/////////////////////////////////////////////////////////////


module control_DW01_inc_0 ( A, SUM );
  input [12:0] A;
  output [12:0] SUM;

  wire   [12:2] carry;

  SAEDSLVT14_EO2_V1_0P75 U2 ( .A1(carry[12]), .A2(A[12]), .X(SUM[12]) );
  SAEDSLVT14_ADDH_0P5 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  SAEDSLVT14_ADDH_0P5 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(
        SUM[5]) );
  SAEDSLVT14_ADDH_0P5 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(
        SUM[7]) );
  SAEDSLVT14_ADDH_0P5 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(
        SUM[6]) );
  SAEDSLVT14_ADDH_0P5 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  SAEDSLVT14_ADDH_0P5 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(
        SUM[2]) );
  SAEDSLVT14_ADDH_0P5 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(
        SUM[9]) );
  SAEDSLVT14_ADDH_0P5 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(
        SUM[4]) );
  SAEDSLVT14_ADDH_0P5 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1])
         );
  SAEDSLVT14_ADDH_0P5 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(
        SUM[8]) );
  SAEDSLVT14_ADDH_0P5 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(
        SUM[3]) );
  SAEDSLVT14_INV_1 U1 ( .A(A[0]), .X(SUM[0]) );
endmodule


module control ( clock, start, S1S2mux, newDist, CompStart, PEready, VectorX, 
        VectorY, AddressR, AddressS1, AddressS2, completed );
  output [15:0] S1S2mux;
  output [15:0] newDist;
  output [15:0] PEready;
  output [3:0] VectorX;
  output [3:0] VectorY;
  output [7:0] AddressR;
  output [9:0] AddressS1;
  output [9:0] AddressS2;
  input clock, start;
  output CompStart, completed;
  wire   \VectorX[2] , \VectorX[1] , \VectorX[0] , N252, n134,
         \add_123/carry[3] , \add_123/carry[2] , \add_123/carry[1] ,
         \add_126/carry[3] , \add_126/carry[2] , \add_126/carry[1] ,
         \S1S2mux[0] , n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, \AddressS2[3] , n24, n52, n53, n54, n65, n66, n69, n70, n71, n72
;
  wire   [12:8] count;
  wire   [12:0] count_temp;
  wire   [11:0] temp;
  assign AddressS2[2] = \VectorX[2] ;
  assign AddressS1[2] = \VectorX[2] ;
  assign AddressR[2] = \VectorX[2] ;
  assign VectorX[2] = \VectorX[2] ;
  assign AddressS2[1] = \VectorX[1] ;
  assign AddressS1[1] = \VectorX[1] ;
  assign AddressR[1] = \VectorX[1] ;
  assign VectorX[1] = \VectorX[1] ;
  assign AddressS2[0] = \VectorX[0] ;
  assign AddressS1[0] = \VectorX[0] ;
  assign AddressR[0] = \VectorX[0] ;
  assign VectorX[0] = \VectorX[0] ;
  assign CompStart = N252;
  assign AddressS2[4] = \S1S2mux[0] ;
  assign S1S2mux[0] = \S1S2mux[0] ;
  assign AddressR[3] = \AddressS2[3] ;
  assign AddressS1[3] = \AddressS2[3] ;
  assign AddressS2[3] = \AddressS2[3] ;

  SAEDSLVT14_FDPCBQ_V2LP_1 \count_reg[10]  ( .D(n52), .RS(count_temp[10]), 
        .CK(clock), .Q(count[10]) );
  SAEDSLVT14_FDPCBQ_V2LP_1 \count_reg[5]  ( .D(n52), .RS(count_temp[5]), .CK(
        clock), .Q(AddressR[5]) );
  SAEDSLVT14_FDPCBQ_V2LP_1 \count_reg[6]  ( .D(n52), .RS(count_temp[6]), .CK(
        clock), .Q(AddressR[6]) );
  SAEDSLVT14_FDPCBQ_V2LP_1 \count_reg[7]  ( .D(n52), .RS(count_temp[7]), .CK(
        clock), .Q(AddressR[7]) );
  SAEDSLVT14_FDPCBQ_V2LP_1 \count_reg[11]  ( .D(n52), .RS(count_temp[11]), 
        .CK(clock), .Q(count[11]) );
  SAEDSLVT14_FDPCBQ_V2LP_1 \count_reg[9]  ( .D(n52), .RS(count_temp[9]), .CK(
        clock), .Q(count[9]) );
  SAEDSLVT14_FDPCBQ_V2LP_1 \count_reg[4]  ( .D(n52), .RS(count_temp[4]), .CK(
        clock), .Q(AddressR[4]) );
  SAEDSLVT14_FDPCBQ_V2LP_1 \count_reg[8]  ( .D(n52), .RS(count_temp[8]), .CK(
        clock), .Q(count[8]) );
  SAEDSLVT14_AO21B_0P5 U5 ( .A1(n28), .A2(AddressR[7]), .B(n54), .X(temp[7])
         );
  SAEDSLVT14_AO21B_0P5 U6 ( .A1(n29), .A2(AddressR[6]), .B(n28), .X(temp[6])
         );
  SAEDSLVT14_AO21B_0P5 U7 ( .A1(AddressR[4]), .A2(AddressR[5]), .B(n29), .X(
        temp[5]) );
  SAEDSLVT14_EO2_V1_0P75 U8 ( .A1(count[11]), .A2(n30), .X(temp[11]) );
  SAEDSLVT14_EO2_V1_0P75 U10 ( .A1(n53), .A2(n26), .X(temp[10]) );
  SAEDSLVT14_OR4_1 U13 ( .A1(n43), .A2(n65), .A3(count[11]), .A4(n42), .X(n41)
         );
  SAEDSLVT14_EO2_V1_0P75 U15 ( .A1(count[8]), .A2(n54), .X(n44) );
  SAEDSLVT14_AN2_MM_1 U16 ( .A1(count[8]), .A2(AddressR[4]), .X(
        \add_123/carry[1] ) );
  SAEDSLVT14_EO2_V1_0P75 U17 ( .A1(n43), .A2(count[11]), .X(VectorY[3]) );
  SAEDSLVT14_AO21_1 U19 ( .A1(count[8]), .A2(count[9]), .B(n31), .X(VectorY[1]) );
  SAEDSLVT14_AO21_1 U20 ( .A1(\AddressS2[3] ), .A2(\VectorX[0] ), .B(
        S1S2mux[10]), .X(S1S2mux[9]) );
  SAEDSLVT14_AO21_1 U22 ( .A1(\VectorX[0] ), .A2(\VectorX[2] ), .B(S1S2mux[6]), 
        .X(S1S2mux[5]) );
  SAEDSLVT14_AO21_1 U25 ( .A1(\VectorX[0] ), .A2(S1S2mux[12]), .B(S1S2mux[14]), 
        .X(S1S2mux[13]) );
  SAEDSLVT14_AN3_0P75 U40 ( .A1(VectorX[3]), .A2(n32), .A3(\VectorX[2] ), .X(
        n50) );
  SAEDSLVT14_AN2_MM_1 U41 ( .A1(N252), .A2(newDist[3]), .X(PEready[3]) );
  SAEDSLVT14_AN3_0P75 U42 ( .A1(n45), .A2(n32), .A3(n49), .X(newDist[3]) );
  SAEDSLVT14_AN2_MM_1 U43 ( .A1(N252), .A2(newDist[2]), .X(PEready[2]) );
  SAEDSLVT14_AN3_0P75 U44 ( .A1(n45), .A2(n32), .A3(n51), .X(newDist[2]) );
  SAEDSLVT14_AN2_MM_1 U45 ( .A1(N252), .A2(newDist[1]), .X(PEready[1]) );
  SAEDSLVT14_NR3_0P75 U46 ( .A1(S1S2mux[2]), .A2(n54), .A3(n72), .X(newDist[1]) );
  SAEDSLVT14_AN2_MM_1 U50 ( .A1(N252), .A2(newDist[14]), .X(PEready[14]) );
  SAEDSLVT14_AN3_0P75 U51 ( .A1(n72), .A2(n32), .A3(S1S2mux[14]), .X(
        newDist[14]) );
  SAEDSLVT14_AN2_MM_1 U53 ( .A1(N252), .A2(newDist[13]), .X(PEready[13]) );
  SAEDSLVT14_AN3_0P75 U54 ( .A1(n32), .A2(n46), .A3(S1S2mux[12]), .X(
        newDist[13]) );
  SAEDSLVT14_AN2_MM_1 U56 ( .A1(N252), .A2(newDist[12]), .X(PEready[12]) );
  SAEDSLVT14_AN3_0P75 U57 ( .A1(n32), .A2(n48), .A3(S1S2mux[12]), .X(
        newDist[12]) );
  SAEDSLVT14_AN3_0P75 U65 ( .A1(n69), .A2(\AddressS2[3] ), .A3(n32), .X(n47)
         );
  SAEDSLVT14_AN2_MM_1 U67 ( .A1(N252), .A2(newDist[0]), .X(PEready[0]) );
  SAEDSLVT14_OR2_1 U69 ( .A1(S1S2mux[2]), .A2(\VectorX[0] ), .X(S1S2mux[1]) );
  SAEDSLVT14_EO2_V1_0P75 U75 ( .A1(AddressS1[5]), .A2(n54), .X(AddressS2[5])
         );
  SAEDSLVT14_OR2_1 U77 ( .A1(n29), .A2(AddressR[6]), .X(n28) );
  SAEDSLVT14_OR2_1 U78 ( .A1(AddressR[5]), .A2(AddressR[4]), .X(n29) );
  SAEDSLVT14_EO2_V1_0P75 U79 ( .A1(AddressR[4]), .A2(count[8]), .X(
        AddressS1[5]) );
  control_DW01_inc_0 add_113 ( .A({count, AddressR[7:4], \AddressS2[3] , 
        \VectorX[2] , \VectorX[1] , \VectorX[0] }), .SUM(count_temp) );
  SAEDLVT14_FDPMQ_1 \count_reg[12]  ( .D0(count_temp[12]), .D1(start), .S(n134), .CK(clock), .Q(count[12]) );
  SAEDLVT14_FDPMQ_1 \count_reg[3]  ( .D0(count_temp[3]), .D1(start), .S(n134), 
        .CK(clock), .Q(S1S2mux[8]) );
  SAEDLVT14_FDPMQ_1 \count_reg[1]  ( .D0(count_temp[1]), .D1(start), .S(n134), 
        .CK(clock), .Q(\VectorX[1] ) );
  SAEDLVT14_FDPMQ_1 \count_reg[2]  ( .D0(count_temp[2]), .D1(start), .S(n134), 
        .CK(clock), .Q(\VectorX[2] ) );
  SAEDLVT14_FDPMQ_1 \count_reg[0]  ( .D0(count_temp[0]), .D1(start), .S(n134), 
        .CK(clock), .Q(\VectorX[0] ) );
  SAEDSLVT14_ADDF_V1_1 \add_123/U1_3  ( .A(count[11]), .B(AddressR[7]), .CI(
        \add_123/carry[3] ), .CO(AddressS1[9]), .S(AddressS1[8]) );
  SAEDSLVT14_ADDF_V1_1 \add_126/U1_3  ( .A(temp[11]), .B(temp[7]), .CI(
        \add_126/carry[3] ), .CO(AddressS2[9]), .S(AddressS2[8]) );
  SAEDSLVT14_ADDF_V1_1 \add_126/U1_1  ( .A(temp[9]), .B(temp[5]), .CI(
        \add_126/carry[1] ), .CO(\add_126/carry[2] ), .S(AddressS2[6]) );
  SAEDSLVT14_ADDF_V1_1 \add_126/U1_2  ( .A(temp[10]), .B(temp[6]), .CI(
        \add_126/carry[2] ), .CO(\add_126/carry[3] ), .S(AddressS2[7]) );
  SAEDSLVT14_ADDF_V1_1 \add_123/U1_1  ( .A(count[9]), .B(AddressR[5]), .CI(
        \add_123/carry[1] ), .CO(\add_123/carry[2] ), .S(AddressS1[6]) );
  SAEDSLVT14_ADDF_V1_1 \add_123/U1_2  ( .A(count[10]), .B(AddressR[6]), .CI(
        \add_123/carry[2] ), .CO(\add_123/carry[3] ), .S(AddressS1[7]) );
  SAEDSLVT14_TIE1_4 U3 ( .X(\S1S2mux[0] ) );
  SAEDSLVT14_TIE0_V1_2 U4 ( .X(AddressS1[4]) );
  SAEDSLVT14_INV_1 U9 ( .A(n39), .X(newDist[11]) );
  SAEDSLVT14_NR2_MM_1 U11 ( .A1(n66), .A2(n70), .X(S1S2mux[15]) );
  SAEDSLVT14_INV_1 U12 ( .A(n38), .X(newDist[4]) );
  SAEDSLVT14_INV_1 U14 ( .A(n37), .X(newDist[5]) );
  SAEDSLVT14_INV_1 U18 ( .A(n33), .X(newDist[9]) );
  SAEDSLVT14_INV_1 U21 ( .A(n34), .X(newDist[8]) );
  SAEDSLVT14_INV_1 U23 ( .A(n49), .X(n70) );
  SAEDSLVT14_INV_1 U24 ( .A(S1S2mux[12]), .X(n66) );
  SAEDSLVT14_INV_1 U26 ( .A(n42), .X(newDist[15]) );
  SAEDSLVT14_INV_1 U27 ( .A(n40), .X(newDist[10]) );
  SAEDSLVT14_INV_1 U28 ( .A(n35), .X(newDist[7]) );
  SAEDSLVT14_INV_1 U29 ( .A(n36), .X(newDist[6]) );
  SAEDSLVT14_OAI21_0P5 U30 ( .A1(VectorX[3]), .A2(n70), .B(n66), .X(
        S1S2mux[11]) );
  SAEDSLVT14_NR2_MM_1 U31 ( .A1(n24), .A2(n36), .X(PEready[6]) );
  SAEDSLVT14_NR2_MM_1 U32 ( .A1(n24), .A2(n42), .X(PEready[15]) );
  SAEDSLVT14_NR2_MM_1 U33 ( .A1(n24), .A2(n37), .X(PEready[5]) );
  SAEDSLVT14_NR2_MM_1 U34 ( .A1(n24), .A2(n34), .X(PEready[8]) );
  SAEDSLVT14_NR2_MM_1 U35 ( .A1(n24), .A2(n40), .X(PEready[10]) );
  SAEDSLVT14_ND2_CDC_0P5 U36 ( .A1(n49), .A2(n47), .X(n39) );
  SAEDSLVT14_NR2_MM_1 U37 ( .A1(n24), .A2(n38), .X(PEready[4]) );
  SAEDSLVT14_NR2_MM_1 U38 ( .A1(n24), .A2(n39), .X(PEready[11]) );
  SAEDSLVT14_NR2_MM_1 U39 ( .A1(n24), .A2(n35), .X(PEready[7]) );
  SAEDSLVT14_NR2_MM_1 U47 ( .A1(n24), .A2(n33), .X(PEready[9]) );
  SAEDSLVT14_INV_1 U48 ( .A(n32), .X(n54) );
  SAEDSLVT14_ND2_CDC_0P5 U49 ( .A1(n31), .A2(n53), .X(n43) );
  SAEDSLVT14_INV_1 U52 ( .A(n45), .X(S1S2mux[4]) );
  SAEDSLVT14_OAI21_0P5 U55 ( .A1(VectorX[3]), .A2(n71), .B(n66), .X(
        S1S2mux[10]) );
  SAEDSLVT14_OAI21_0P5 U58 ( .A1(n71), .A2(n69), .B(VectorX[3]), .X(S1S2mux[6]) );
  SAEDSLVT14_NR2_MM_1 U59 ( .A1(n66), .A2(n71), .X(S1S2mux[14]) );
  SAEDSLVT14_ND2_CDC_0P5 U60 ( .A1(n45), .A2(n71), .X(S1S2mux[2]) );
  SAEDSLVT14_INV_1 U61 ( .A(\AddressS2[3] ), .X(VectorX[3]) );
  SAEDSLVT14_NR2_MM_1 U62 ( .A1(n71), .A2(n72), .X(n49) );
  SAEDSLVT14_OAI21_0P5 U63 ( .A1(n69), .A2(n70), .B(VectorX[3]), .X(S1S2mux[7]) );
  SAEDSLVT14_INV_1 U64 ( .A(n134), .X(n52) );
  SAEDSLVT14_ND2_CDC_0P5 U66 ( .A1(n70), .A2(n45), .X(S1S2mux[3]) );
  SAEDSLVT14_NR2_MM_1 U68 ( .A1(n54), .A2(S1S2mux[1]), .X(newDist[0]) );
  SAEDSLVT14_NR2_MM_1 U70 ( .A1(n69), .A2(VectorX[3]), .X(S1S2mux[12]) );
  SAEDSLVT14_ND2_CDC_0P5 U71 ( .A1(n49), .A2(n50), .X(n35) );
  SAEDSLVT14_ND2_CDC_0P5 U72 ( .A1(n51), .A2(n50), .X(n36) );
  SAEDSLVT14_ND2_CDC_0P5 U73 ( .A1(n51), .A2(n47), .X(n40) );
  SAEDSLVT14_ND2_CDC_0P5 U74 ( .A1(S1S2mux[15]), .A2(n32), .X(n42) );
  SAEDSLVT14_ND2_CDC_0P5 U76 ( .A1(n46), .A2(n47), .X(n33) );
  SAEDSLVT14_ND2_CDC_0P5 U80 ( .A1(n48), .A2(n47), .X(n34) );
  SAEDSLVT14_ND2_CDC_0P5 U81 ( .A1(n50), .A2(n46), .X(n37) );
  SAEDSLVT14_ND2_CDC_0P5 U82 ( .A1(n50), .A2(n48), .X(n38) );
  SAEDSLVT14_ND2_CDC_0P5 U83 ( .A1(n31), .A2(n32), .X(n26) );
  SAEDSLVT14_INV_1 U84 ( .A(n41), .X(completed) );
  SAEDSLVT14_INV_1 U85 ( .A(count[10]), .X(n53) );
  SAEDSLVT14_INV_1 U86 ( .A(\VectorX[1] ), .X(n71) );
  SAEDSLVT14_INV_1 U87 ( .A(\VectorX[0] ), .X(n72) );
  SAEDSLVT14_INV_1 U88 ( .A(\VectorX[2] ), .X(n69) );
  SAEDSLVT14_INV_1 U89 ( .A(count[12]), .X(n65) );
  SAEDSLVT14_NR2_MM_1 U90 ( .A1(n71), .A2(\VectorX[0] ), .X(n51) );
  SAEDSLVT14_ND2_CDC_0P5 U91 ( .A1(start), .A2(n41), .X(n134) );
  SAEDSLVT14_NR2_MM_1 U92 ( .A1(n72), .A2(\VectorX[1] ), .X(n46) );
  SAEDSLVT14_NR2_MM_1 U93 ( .A1(count[9]), .A2(count[8]), .X(n31) );
  SAEDHVT14_BUF_U_0P5 U94 ( .A(S1S2mux[8]), .X(\AddressS2[3] ) );
  SAEDSLVT14_NR2_MM_1 U95 ( .A1(n28), .A2(AddressR[7]), .X(n32) );
  SAEDSLVT14_NR2_MM_1 U96 ( .A1(\VectorX[2] ), .A2(\AddressS2[3] ), .X(n45) );
  SAEDSLVT14_NR2_MM_1 U97 ( .A1(\VectorX[0] ), .A2(\VectorX[1] ), .X(n48) );
  SAEDSLVT14_OAI21_0P5 U98 ( .A1(n31), .A2(n53), .B(n43), .X(VectorY[2]) );
  SAEDSLVT14_INV_1 U99 ( .A(count[8]), .X(VectorY[0]) );
  SAEDSLVT14_OAI21_0P5 U100 ( .A1(count[8]), .A2(n54), .B(count[9]), .X(n27)
         );
  SAEDSLVT14_ND2_CDC_0P5 U101 ( .A1(n26), .A2(n27), .X(temp[9]) );
  SAEDSLVT14_NR2_MM_1 U102 ( .A1(AddressR[4]), .A2(n44), .X(\add_126/carry[1] ) );
  SAEDSLVT14_NR2_MM_1 U103 ( .A1(count[10]), .A2(n26), .X(n30) );
  SAEDSLVT14_INV_S_0P75 U104 ( .A(N252), .X(n24) );
  SAEDSLVT14_OR3_1 U105 ( .A1(count[12]), .A2(count[11]), .A3(n43), .X(N252)
         );
endmodule


module PE_0_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  SAEDSLVT14_AN2_MM_1 U1 ( .A1(A[0]), .A2(B[0]), .X(carry[1]) );
  SAEDSLVT14_EO2_V1_0P75 U2 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
  SAEDSLVT14_ADDF_V1_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V1_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V1_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V1_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V1_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V1_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V1_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
endmodule


module PE_0_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:0] carry;

  SAEDSLVT14_OR2_MM_1 U1 ( .A1(A[0]), .A2(n16), .X(n1) );
  SAEDSLVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n10), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n11), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n12), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n13), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n14), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n15), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDSLVT14_INV_1 U2 ( .A(B[0]), .X(n16) );
  SAEDSLVT14_EN2_1 U3 ( .A1(n16), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_1 U4 ( .A(B[1]), .X(n15) );
  SAEDSLVT14_INV_1 U5 ( .A(B[2]), .X(n14) );
  SAEDSLVT14_INV_1 U6 ( .A(B[3]), .X(n13) );
  SAEDSLVT14_INV_1 U7 ( .A(B[4]), .X(n12) );
  SAEDSLVT14_INV_1 U8 ( .A(B[5]), .X(n11) );
  SAEDSLVT14_INV_1 U9 ( .A(B[6]), .X(n10) );
  SAEDSLVT14_EN3_1 U10 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(DIFF[7]) );
endmodule


module PE_0 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n11, n12, n13, n14, n15, n16, n17, n18, n19;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n18), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n11), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n12), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n13), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n14), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n15), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n16), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n17), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_AO22_1 U4 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n19), .X(N9) );
  SAEDSLVT14_AO22_1 U5 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n19), .X(N8) );
  SAEDSLVT14_AO22_1 U6 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n19), .X(
        N15) );
  SAEDSLVT14_AO22_1 U7 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n19), .X(
        N14) );
  SAEDSLVT14_AO22_1 U8 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n19), .X(
        N13) );
  SAEDSLVT14_AO22_1 U9 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n19), .X(
        N12) );
  SAEDSLVT14_AO22_1 U10 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n19), .X(
        N11) );
  SAEDSLVT14_AO22_1 U11 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n19), .X(
        N10) );
  PE_0_DW01_add_0 add_52 ( .A({n1, Accumulate}), .B({n1, difference}), .CI(n1), 
        .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_0_DW01_sub_1 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n1), .DIFF(difference) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDSLVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDSLVT14_INV_1 U12 ( .A(N27), .X(n17) );
  SAEDSLVT14_INV_1 U13 ( .A(N28), .X(n16) );
  SAEDSLVT14_INV_1 U14 ( .A(N29), .X(n15) );
  SAEDSLVT14_INV_1 U15 ( .A(N31), .X(n13) );
  SAEDSLVT14_INV_1 U16 ( .A(N32), .X(n12) );
  SAEDSLVT14_INV_1 U17 ( .A(N33), .X(n11) );
  SAEDSLVT14_INV_1 U18 ( .A(N30), .X(n14) );
  SAEDSLVT14_INV_1 U19 ( .A(N26), .X(n18) );
  SAEDSLVT14_INV_1 U20 ( .A(S1S2mux), .X(n19) );
endmodule


module PE_14_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  SAEDSLVT14_AN2_MM_1 U1 ( .A1(A[0]), .A2(B[0]), .X(carry[1]) );
  SAEDSLVT14_EO2_V1_0P75 U2 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
  SAEDSLVT14_ADDF_V1_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V1_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V1_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V1_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V1_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V1_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V1_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
endmodule


module PE_14_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:0] carry;

  SAEDSLVT14_OR2_MM_1 U1 ( .A1(A[0]), .A2(n11), .X(n1) );
  SAEDSLVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n10), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDSLVT14_INV_1 U2 ( .A(B[0]), .X(n11) );
  SAEDSLVT14_EN2_1 U3 ( .A1(n11), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_1 U4 ( .A(B[1]), .X(n10) );
  SAEDSLVT14_INV_1 U5 ( .A(B[2]), .X(n16) );
  SAEDSLVT14_INV_1 U6 ( .A(B[3]), .X(n15) );
  SAEDSLVT14_INV_1 U7 ( .A(B[4]), .X(n14) );
  SAEDSLVT14_INV_1 U8 ( .A(B[5]), .X(n13) );
  SAEDSLVT14_INV_1 U9 ( .A(B[6]), .X(n12) );
  SAEDSLVT14_EN3_1 U10 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(DIFF[7]) );
endmodule


module PE_14 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n19), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n12), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n13), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n14), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n15), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n16), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n17), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n18), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_AO22_1 U4 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n20), .X(N9) );
  SAEDSLVT14_AO22_1 U5 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n20), .X(N8) );
  SAEDSLVT14_AO22_1 U6 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n20), .X(
        N15) );
  SAEDSLVT14_AO22_1 U7 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n20), .X(
        N14) );
  SAEDSLVT14_AO22_1 U8 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n20), .X(
        N13) );
  SAEDSLVT14_AO22_1 U9 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n20), .X(
        N12) );
  SAEDSLVT14_AO22_1 U10 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n20), .X(
        N11) );
  SAEDSLVT14_AO22_1 U11 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n20), .X(
        N10) );
  PE_14_DW01_add_0 add_52 ( .A({n1, Accumulate}), .B({n1, difference}), .CI(n1), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_14_DW01_sub_1 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n1), .DIFF(difference) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDSLVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDSLVT14_INV_1 U12 ( .A(N28), .X(n17) );
  SAEDSLVT14_INV_1 U13 ( .A(N30), .X(n15) );
  SAEDSLVT14_INV_1 U14 ( .A(N31), .X(n14) );
  SAEDSLVT14_INV_1 U15 ( .A(N32), .X(n13) );
  SAEDSLVT14_INV_1 U16 ( .A(N33), .X(n12) );
  SAEDSLVT14_INV_1 U17 ( .A(N29), .X(n16) );
  SAEDSLVT14_INV_1 U18 ( .A(N27), .X(n18) );
  SAEDSLVT14_INV_1 U19 ( .A(S1S2mux), .X(n20) );
  SAEDSLVT14_INV_1 U20 ( .A(N26), .X(n19) );
endmodule


module PE_13_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  SAEDSLVT14_AN2_MM_1 U1 ( .A1(A[0]), .A2(B[0]), .X(carry[1]) );
  SAEDSLVT14_EO2_V1_0P75 U2 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
  SAEDSLVT14_ADDF_V1_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V1_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  SAEDSLVT14_ADDF_V1_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V1_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V1_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V1_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V1_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
endmodule


module PE_13_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:0] carry;

  SAEDSLVT14_OR2_MM_1 U1 ( .A1(A[0]), .A2(n11), .X(n1) );
  SAEDSLVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n10), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDSLVT14_EN2_1 U2 ( .A1(n11), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_1 U3 ( .A(B[1]), .X(n10) );
  SAEDSLVT14_INV_1 U4 ( .A(B[2]), .X(n16) );
  SAEDSLVT14_INV_1 U5 ( .A(B[3]), .X(n15) );
  SAEDSLVT14_INV_1 U6 ( .A(B[4]), .X(n14) );
  SAEDSLVT14_INV_1 U7 ( .A(B[5]), .X(n13) );
  SAEDSLVT14_INV_1 U8 ( .A(B[6]), .X(n12) );
  SAEDSLVT14_INV_1 U9 ( .A(B[0]), .X(n11) );
  SAEDSLVT14_EN3_1 U10 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(DIFF[7]) );
endmodule


module PE_13 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n19), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n12), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n13), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n14), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n15), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n16), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n17), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n18), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_AO22_1 U4 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n20), .X(N9) );
  SAEDSLVT14_AO22_1 U5 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n20), .X(N8) );
  SAEDSLVT14_AO22_1 U6 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n20), .X(
        N15) );
  SAEDSLVT14_AO22_1 U7 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n20), .X(
        N14) );
  SAEDSLVT14_AO22_1 U8 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n20), .X(
        N13) );
  SAEDSLVT14_AO22_1 U9 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n20), .X(
        N12) );
  SAEDSLVT14_AO22_1 U10 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n20), .X(
        N11) );
  SAEDSLVT14_AO22_1 U11 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n20), .X(
        N10) );
  PE_13_DW01_add_0 add_52 ( .A({n1, Accumulate}), .B({n1, difference}), .CI(n1), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_13_DW01_sub_1 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n1), .DIFF(difference) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDSLVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDSLVT14_INV_1 U12 ( .A(S1S2mux), .X(n20) );
  SAEDSLVT14_INV_1 U13 ( .A(N28), .X(n17) );
  SAEDSLVT14_INV_1 U14 ( .A(N29), .X(n16) );
  SAEDSLVT14_INV_1 U15 ( .A(N30), .X(n15) );
  SAEDSLVT14_INV_1 U16 ( .A(N31), .X(n14) );
  SAEDSLVT14_INV_1 U17 ( .A(N32), .X(n13) );
  SAEDSLVT14_INV_1 U18 ( .A(N33), .X(n12) );
  SAEDSLVT14_INV_1 U19 ( .A(N27), .X(n18) );
  SAEDSLVT14_INV_1 U20 ( .A(N26), .X(n19) );
endmodule


module PE_12_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  SAEDSLVT14_AN2_MM_1 U1 ( .A1(A[0]), .A2(B[0]), .X(carry[1]) );
  SAEDSLVT14_EO2_V1_0P75 U2 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
  SAEDSLVT14_ADDF_V1_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V1_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V1_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V1_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V1_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V1_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V1_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
endmodule


module PE_12_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:0] carry;

  SAEDSLVT14_OR2_MM_1 U1 ( .A1(A[0]), .A2(n11), .X(n1) );
  SAEDSLVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n10), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDSLVT14_INV_1 U2 ( .A(B[0]), .X(n11) );
  SAEDSLVT14_EN2_1 U3 ( .A1(n11), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_1 U4 ( .A(B[1]), .X(n10) );
  SAEDSLVT14_INV_1 U5 ( .A(B[2]), .X(n16) );
  SAEDSLVT14_INV_1 U6 ( .A(B[3]), .X(n15) );
  SAEDSLVT14_INV_1 U7 ( .A(B[4]), .X(n14) );
  SAEDSLVT14_INV_1 U8 ( .A(B[5]), .X(n13) );
  SAEDSLVT14_INV_1 U9 ( .A(B[6]), .X(n12) );
  SAEDSLVT14_EN3_1 U10 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(DIFF[7]) );
endmodule


module PE_12 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n19), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n12), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n13), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n14), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n15), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n16), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n17), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n18), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_AO22_1 U4 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n20), .X(N9) );
  SAEDSLVT14_AO22_1 U5 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n20), .X(N8) );
  SAEDSLVT14_AO22_1 U6 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n20), .X(
        N15) );
  SAEDSLVT14_AO22_1 U7 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n20), .X(
        N14) );
  SAEDSLVT14_AO22_1 U8 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n20), .X(
        N13) );
  SAEDSLVT14_AO22_1 U9 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n20), .X(
        N12) );
  SAEDSLVT14_AO22_1 U10 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n20), .X(
        N11) );
  SAEDSLVT14_AO22_1 U11 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n20), .X(
        N10) );
  PE_12_DW01_add_0 add_52 ( .A({n1, Accumulate}), .B({n1, difference}), .CI(n1), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_12_DW01_sub_1 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n1), .DIFF(difference) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDSLVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDSLVT14_INV_1 U12 ( .A(S1S2mux), .X(n20) );
  SAEDSLVT14_INV_1 U13 ( .A(N28), .X(n17) );
  SAEDSLVT14_INV_1 U14 ( .A(N29), .X(n16) );
  SAEDSLVT14_INV_1 U15 ( .A(N30), .X(n15) );
  SAEDSLVT14_INV_1 U16 ( .A(N31), .X(n14) );
  SAEDSLVT14_INV_1 U17 ( .A(N32), .X(n13) );
  SAEDSLVT14_INV_1 U18 ( .A(N33), .X(n12) );
  SAEDSLVT14_INV_1 U19 ( .A(N27), .X(n18) );
  SAEDSLVT14_INV_1 U20 ( .A(N26), .X(n19) );
endmodule


module PE_11_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  SAEDSLVT14_AN2_MM_1 U1 ( .A1(A[0]), .A2(B[0]), .X(carry[1]) );
  SAEDSLVT14_EO2_V1_0P75 U2 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
  SAEDSLVT14_ADDF_V1_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V1_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V1_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V1_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V1_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V1_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V1_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
endmodule


module PE_11_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:0] carry;

  SAEDSLVT14_OR2_MM_1 U1 ( .A1(A[0]), .A2(n11), .X(n1) );
  SAEDSLVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n10), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDSLVT14_INV_1 U2 ( .A(B[0]), .X(n11) );
  SAEDSLVT14_EN2_1 U3 ( .A1(n11), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_1 U4 ( .A(B[1]), .X(n10) );
  SAEDSLVT14_INV_1 U5 ( .A(B[2]), .X(n16) );
  SAEDSLVT14_INV_1 U6 ( .A(B[3]), .X(n15) );
  SAEDSLVT14_INV_1 U7 ( .A(B[4]), .X(n14) );
  SAEDSLVT14_INV_1 U8 ( .A(B[5]), .X(n13) );
  SAEDSLVT14_INV_1 U9 ( .A(B[6]), .X(n12) );
  SAEDSLVT14_EN3_1 U10 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(DIFF[7]) );
endmodule


module PE_11 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n19), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n12), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n13), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n14), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n15), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n16), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n17), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n18), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_AO22_1 U4 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n20), .X(N9) );
  SAEDSLVT14_AO22_1 U5 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n20), .X(N8) );
  SAEDSLVT14_AO22_1 U6 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n20), .X(
        N15) );
  SAEDSLVT14_AO22_1 U7 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n20), .X(
        N14) );
  SAEDSLVT14_AO22_1 U8 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n20), .X(
        N13) );
  SAEDSLVT14_AO22_1 U9 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n20), .X(
        N12) );
  SAEDSLVT14_AO22_1 U10 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n20), .X(
        N11) );
  SAEDSLVT14_AO22_1 U11 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n20), .X(
        N10) );
  PE_11_DW01_add_0 add_52 ( .A({n1, Accumulate}), .B({n1, difference}), .CI(n1), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_11_DW01_sub_1 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n1), .DIFF(difference) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDSLVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDSLVT14_INV_1 U12 ( .A(S1S2mux), .X(n20) );
  SAEDSLVT14_INV_1 U13 ( .A(N28), .X(n17) );
  SAEDSLVT14_INV_1 U14 ( .A(N29), .X(n16) );
  SAEDSLVT14_INV_1 U15 ( .A(N30), .X(n15) );
  SAEDSLVT14_INV_1 U16 ( .A(N31), .X(n14) );
  SAEDSLVT14_INV_1 U17 ( .A(N32), .X(n13) );
  SAEDSLVT14_INV_1 U18 ( .A(N33), .X(n12) );
  SAEDSLVT14_INV_1 U19 ( .A(N27), .X(n18) );
  SAEDSLVT14_INV_1 U20 ( .A(N26), .X(n19) );
endmodule


module PE_10_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  SAEDSLVT14_AN2_MM_1 U1 ( .A1(A[0]), .A2(B[0]), .X(carry[1]) );
  SAEDSLVT14_EO2_V1_0P75 U2 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
  SAEDSLVT14_ADDF_V1_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V1_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V1_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V1_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V1_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V1_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V1_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
endmodule


module PE_10_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:0] carry;

  SAEDSLVT14_OR2_MM_1 U1 ( .A1(A[0]), .A2(n11), .X(n1) );
  SAEDSLVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n10), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDSLVT14_INV_1 U2 ( .A(B[0]), .X(n11) );
  SAEDSLVT14_EN2_1 U3 ( .A1(n11), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_1 U4 ( .A(B[1]), .X(n10) );
  SAEDSLVT14_INV_1 U5 ( .A(B[2]), .X(n16) );
  SAEDSLVT14_INV_1 U6 ( .A(B[3]), .X(n15) );
  SAEDSLVT14_INV_1 U7 ( .A(B[4]), .X(n14) );
  SAEDSLVT14_INV_1 U8 ( .A(B[5]), .X(n13) );
  SAEDSLVT14_INV_1 U9 ( .A(B[6]), .X(n12) );
  SAEDSLVT14_EN3_1 U10 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(DIFF[7]) );
endmodule


module PE_10 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n19), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n12), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n13), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n14), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n15), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n16), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n17), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n18), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_AO22_1 U4 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n20), .X(N9) );
  SAEDSLVT14_AO22_1 U5 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n20), .X(N8) );
  SAEDSLVT14_AO22_1 U6 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n20), .X(
        N15) );
  SAEDSLVT14_AO22_1 U7 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n20), .X(
        N14) );
  SAEDSLVT14_AO22_1 U8 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n20), .X(
        N13) );
  SAEDSLVT14_AO22_1 U9 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n20), .X(
        N12) );
  SAEDSLVT14_AO22_1 U10 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n20), .X(
        N11) );
  SAEDSLVT14_AO22_1 U11 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n20), .X(
        N10) );
  PE_10_DW01_add_0 add_52 ( .A({n1, Accumulate}), .B({n1, difference}), .CI(n1), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_10_DW01_sub_1 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n1), .DIFF(difference) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDSLVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDSLVT14_INV_1 U12 ( .A(N31), .X(n14) );
  SAEDSLVT14_INV_1 U13 ( .A(N32), .X(n13) );
  SAEDSLVT14_INV_1 U14 ( .A(N28), .X(n17) );
  SAEDSLVT14_INV_1 U15 ( .A(N29), .X(n16) );
  SAEDSLVT14_INV_1 U16 ( .A(N30), .X(n15) );
  SAEDSLVT14_INV_1 U17 ( .A(N33), .X(n12) );
  SAEDSLVT14_INV_1 U18 ( .A(N27), .X(n18) );
  SAEDSLVT14_INV_1 U19 ( .A(S1S2mux), .X(n20) );
  SAEDSLVT14_INV_1 U20 ( .A(N26), .X(n19) );
endmodule


module PE_9_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  SAEDSLVT14_AN2_MM_1 U1 ( .A1(A[0]), .A2(B[0]), .X(carry[1]) );
  SAEDSLVT14_EO2_V1_0P75 U2 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
  SAEDSLVT14_ADDF_V1_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V1_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V1_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V1_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V1_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V1_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V1_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
endmodule


module PE_9_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:0] carry;

  SAEDSLVT14_OR2_MM_1 U1 ( .A1(A[0]), .A2(n11), .X(n1) );
  SAEDSLVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n10), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDSLVT14_INV_1 U2 ( .A(B[0]), .X(n11) );
  SAEDSLVT14_INV_1 U3 ( .A(B[1]), .X(n10) );
  SAEDSLVT14_INV_1 U4 ( .A(B[2]), .X(n16) );
  SAEDSLVT14_INV_1 U5 ( .A(B[3]), .X(n15) );
  SAEDSLVT14_INV_1 U6 ( .A(B[4]), .X(n14) );
  SAEDSLVT14_INV_1 U7 ( .A(B[5]), .X(n13) );
  SAEDSLVT14_EN2_1 U8 ( .A1(n11), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_1 U9 ( .A(B[6]), .X(n12) );
  SAEDSLVT14_EN3_1 U10 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(DIFF[7]) );
endmodule


module PE_9 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n19), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n12), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n13), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n14), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n15), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n16), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n17), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n18), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_AO22_1 U4 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n20), .X(N9) );
  SAEDSLVT14_AO22_1 U5 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n20), .X(N8) );
  SAEDSLVT14_AO22_1 U6 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n20), .X(
        N15) );
  SAEDSLVT14_AO22_1 U7 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n20), .X(
        N14) );
  SAEDSLVT14_AO22_1 U8 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n20), .X(
        N13) );
  SAEDSLVT14_AO22_1 U9 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n20), .X(
        N12) );
  SAEDSLVT14_AO22_1 U10 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n20), .X(
        N11) );
  SAEDSLVT14_AO22_1 U11 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n20), .X(
        N10) );
  PE_9_DW01_add_0 add_52 ( .A({n1, Accumulate}), .B({n1, difference}), .CI(n1), 
        .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_9_DW01_sub_1 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n1), .DIFF(difference) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDSLVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDSLVT14_INV_1 U12 ( .A(S1S2mux), .X(n20) );
  SAEDSLVT14_INV_1 U13 ( .A(N28), .X(n17) );
  SAEDSLVT14_INV_1 U14 ( .A(N29), .X(n16) );
  SAEDSLVT14_INV_1 U15 ( .A(N30), .X(n15) );
  SAEDSLVT14_INV_1 U16 ( .A(N31), .X(n14) );
  SAEDSLVT14_INV_1 U17 ( .A(N32), .X(n13) );
  SAEDSLVT14_INV_1 U18 ( .A(N33), .X(n12) );
  SAEDSLVT14_INV_1 U19 ( .A(N27), .X(n18) );
  SAEDSLVT14_INV_1 U20 ( .A(N26), .X(n19) );
endmodule


module PE_8_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  SAEDSLVT14_AN2_MM_1 U1 ( .A1(A[0]), .A2(B[0]), .X(carry[1]) );
  SAEDSLVT14_EO2_V1_0P75 U2 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
  SAEDSLVT14_ADDF_V1_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V1_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V1_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V1_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V1_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V1_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V1_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
endmodule


module PE_8_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:0] carry;

  SAEDSLVT14_OR2_MM_1 U1 ( .A1(A[0]), .A2(n11), .X(n1) );
  SAEDSLVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n10), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDSLVT14_INV_1 U2 ( .A(B[0]), .X(n11) );
  SAEDSLVT14_EN2_1 U3 ( .A1(n11), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_1 U4 ( .A(B[1]), .X(n10) );
  SAEDSLVT14_INV_1 U5 ( .A(B[2]), .X(n16) );
  SAEDSLVT14_INV_1 U6 ( .A(B[3]), .X(n15) );
  SAEDSLVT14_INV_1 U7 ( .A(B[4]), .X(n14) );
  SAEDSLVT14_INV_1 U8 ( .A(B[5]), .X(n13) );
  SAEDSLVT14_INV_1 U9 ( .A(B[6]), .X(n12) );
  SAEDSLVT14_EN3_1 U10 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(DIFF[7]) );
endmodule


module PE_8 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n19), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n12), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n13), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n14), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n15), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n16), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n17), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n18), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_AO22_1 U4 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n20), .X(N9) );
  SAEDSLVT14_AO22_1 U5 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n20), .X(N8) );
  SAEDSLVT14_AO22_1 U6 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n20), .X(
        N15) );
  SAEDSLVT14_AO22_1 U7 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n20), .X(
        N14) );
  SAEDSLVT14_AO22_1 U8 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n20), .X(
        N13) );
  SAEDSLVT14_AO22_1 U9 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n20), .X(
        N12) );
  SAEDSLVT14_AO22_1 U10 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n20), .X(
        N11) );
  SAEDSLVT14_AO22_1 U11 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n20), .X(
        N10) );
  PE_8_DW01_add_0 add_52 ( .A({n1, Accumulate}), .B({n1, difference}), .CI(n1), 
        .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_8_DW01_sub_1 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n1), .DIFF(difference) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDSLVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDSLVT14_INV_1 U12 ( .A(S1S2mux), .X(n20) );
  SAEDSLVT14_INV_1 U13 ( .A(N28), .X(n17) );
  SAEDSLVT14_INV_1 U14 ( .A(N29), .X(n16) );
  SAEDSLVT14_INV_1 U15 ( .A(N30), .X(n15) );
  SAEDSLVT14_INV_1 U16 ( .A(N31), .X(n14) );
  SAEDSLVT14_INV_1 U17 ( .A(N32), .X(n13) );
  SAEDSLVT14_INV_1 U18 ( .A(N33), .X(n12) );
  SAEDSLVT14_INV_1 U19 ( .A(N27), .X(n18) );
  SAEDSLVT14_INV_1 U20 ( .A(N26), .X(n19) );
endmodule


module PE_7_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  SAEDSLVT14_AN2_MM_1 U1 ( .A1(A[0]), .A2(B[0]), .X(carry[1]) );
  SAEDSLVT14_EO2_V1_0P75 U2 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
  SAEDSLVT14_ADDF_V1_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V1_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V1_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V1_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V1_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V1_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V1_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
endmodule


module PE_7_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:0] carry;

  SAEDSLVT14_OR2_MM_1 U1 ( .A1(A[0]), .A2(n11), .X(n1) );
  SAEDSLVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n10), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDSLVT14_INV_1 U2 ( .A(B[0]), .X(n11) );
  SAEDSLVT14_EN2_1 U3 ( .A1(n11), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_1 U4 ( .A(B[1]), .X(n10) );
  SAEDSLVT14_INV_1 U5 ( .A(B[2]), .X(n16) );
  SAEDSLVT14_INV_1 U6 ( .A(B[3]), .X(n15) );
  SAEDSLVT14_INV_1 U7 ( .A(B[4]), .X(n14) );
  SAEDSLVT14_INV_1 U8 ( .A(B[5]), .X(n13) );
  SAEDSLVT14_INV_1 U9 ( .A(B[6]), .X(n12) );
  SAEDSLVT14_EN3_1 U10 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(DIFF[7]) );
endmodule


module PE_7 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n19), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n12), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n13), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n14), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n15), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n16), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n17), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n18), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_AO22_1 U4 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n20), .X(N9) );
  SAEDSLVT14_AO22_1 U5 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n20), .X(N8) );
  SAEDSLVT14_AO22_1 U6 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n20), .X(
        N15) );
  SAEDSLVT14_AO22_1 U7 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n20), .X(
        N14) );
  SAEDSLVT14_AO22_1 U8 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n20), .X(
        N13) );
  SAEDSLVT14_AO22_1 U9 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n20), .X(
        N12) );
  SAEDSLVT14_AO22_1 U10 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n20), .X(
        N11) );
  SAEDSLVT14_AO22_1 U11 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n20), .X(
        N10) );
  PE_7_DW01_add_0 add_52 ( .A({n1, Accumulate}), .B({n1, difference}), .CI(n1), 
        .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_7_DW01_sub_1 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n1), .DIFF(difference) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDSLVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDSLVT14_INV_1 U12 ( .A(N30), .X(n15) );
  SAEDSLVT14_INV_1 U13 ( .A(N31), .X(n14) );
  SAEDSLVT14_INV_1 U14 ( .A(N32), .X(n13) );
  SAEDSLVT14_INV_1 U15 ( .A(N33), .X(n12) );
  SAEDSLVT14_INV_1 U16 ( .A(N29), .X(n16) );
  SAEDSLVT14_INV_1 U17 ( .A(N28), .X(n17) );
  SAEDSLVT14_INV_1 U18 ( .A(N27), .X(n18) );
  SAEDSLVT14_INV_1 U19 ( .A(S1S2mux), .X(n20) );
  SAEDSLVT14_INV_1 U20 ( .A(N26), .X(n19) );
endmodule


module PE_6_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  SAEDSLVT14_AN2_MM_1 U1 ( .A1(A[0]), .A2(B[0]), .X(carry[1]) );
  SAEDSLVT14_EO2_V1_0P75 U2 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
  SAEDSLVT14_ADDF_V1_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V1_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V1_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V1_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V1_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V1_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V1_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
endmodule


module PE_6_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:0] carry;

  SAEDSLVT14_OR2_MM_1 U1 ( .A1(A[0]), .A2(n11), .X(n1) );
  SAEDSLVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n10), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDSLVT14_INV_1 U2 ( .A(B[0]), .X(n11) );
  SAEDSLVT14_EN2_1 U3 ( .A1(n11), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_1 U4 ( .A(B[1]), .X(n10) );
  SAEDSLVT14_INV_1 U5 ( .A(B[2]), .X(n16) );
  SAEDSLVT14_INV_1 U6 ( .A(B[3]), .X(n15) );
  SAEDSLVT14_INV_1 U7 ( .A(B[4]), .X(n14) );
  SAEDSLVT14_INV_1 U8 ( .A(B[5]), .X(n13) );
  SAEDSLVT14_INV_1 U9 ( .A(B[6]), .X(n12) );
  SAEDSLVT14_EN3_1 U10 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(DIFF[7]) );
endmodule


module PE_6 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n19), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n12), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n13), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n14), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n15), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n16), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n17), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n18), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_AO22_1 U4 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n20), .X(N9) );
  SAEDSLVT14_AO22_1 U5 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n20), .X(N8) );
  SAEDSLVT14_AO22_1 U6 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n20), .X(
        N15) );
  SAEDSLVT14_AO22_1 U7 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n20), .X(
        N14) );
  SAEDSLVT14_AO22_1 U8 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n20), .X(
        N13) );
  SAEDSLVT14_AO22_1 U9 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n20), .X(
        N12) );
  SAEDSLVT14_AO22_1 U10 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n20), .X(
        N11) );
  SAEDSLVT14_AO22_1 U11 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n20), .X(
        N10) );
  PE_6_DW01_add_0 add_52 ( .A({n1, Accumulate}), .B({n1, difference}), .CI(n1), 
        .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_6_DW01_sub_1 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n1), .DIFF(difference) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDSLVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDSLVT14_INV_1 U12 ( .A(N28), .X(n17) );
  SAEDSLVT14_INV_1 U13 ( .A(N29), .X(n16) );
  SAEDSLVT14_INV_1 U14 ( .A(N30), .X(n15) );
  SAEDSLVT14_INV_1 U15 ( .A(N31), .X(n14) );
  SAEDSLVT14_INV_1 U16 ( .A(N32), .X(n13) );
  SAEDSLVT14_INV_1 U17 ( .A(N33), .X(n12) );
  SAEDSLVT14_INV_1 U18 ( .A(N27), .X(n18) );
  SAEDSLVT14_INV_1 U19 ( .A(S1S2mux), .X(n20) );
  SAEDSLVT14_INV_1 U20 ( .A(N26), .X(n19) );
endmodule


module PE_5_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  SAEDSLVT14_AN2_MM_1 U1 ( .A1(A[0]), .A2(B[0]), .X(carry[1]) );
  SAEDSLVT14_EO2_V1_0P75 U2 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
  SAEDSLVT14_ADDF_V1_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V1_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V1_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V1_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V1_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V1_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V1_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
endmodule


module PE_5_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:0] carry;

  SAEDSLVT14_OR2_MM_1 U1 ( .A1(A[0]), .A2(n11), .X(n1) );
  SAEDSLVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n10), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDSLVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDSLVT14_INV_1 U2 ( .A(B[0]), .X(n11) );
  SAEDSLVT14_INV_1 U3 ( .A(B[2]), .X(n16) );
  SAEDSLVT14_INV_1 U4 ( .A(B[3]), .X(n15) );
  SAEDSLVT14_INV_1 U5 ( .A(B[4]), .X(n14) );
  SAEDSLVT14_INV_1 U6 ( .A(B[5]), .X(n13) );
  SAEDSLVT14_EN2_1 U7 ( .A1(n11), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_1 U8 ( .A(B[6]), .X(n12) );
  SAEDSLVT14_EN3_1 U9 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(DIFF[7]) );
  SAEDSLVT14_INV_1 U10 ( .A(B[1]), .X(n10) );
endmodule


module PE_5 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n19), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n12), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n13), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n14), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n15), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n16), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n17), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n18), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_AO22_1 U4 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n20), .X(N9) );
  SAEDSLVT14_AO22_1 U5 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n20), .X(N8) );
  SAEDSLVT14_AO22_1 U6 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n20), .X(
        N15) );
  SAEDSLVT14_AO22_1 U7 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n20), .X(
        N14) );
  SAEDSLVT14_AO22_1 U8 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n20), .X(
        N13) );
  SAEDSLVT14_AO22_1 U9 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n20), .X(
        N12) );
  SAEDSLVT14_AO22_1 U10 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n20), .X(
        N11) );
  SAEDSLVT14_AO22_1 U11 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n20), .X(
        N10) );
  PE_5_DW01_add_0 add_52 ( .A({n1, Accumulate}), .B({n1, difference}), .CI(n1), 
        .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_5_DW01_sub_1 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n1), .DIFF(difference) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDSLVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDSLVT14_INV_1 U12 ( .A(S1S2mux), .X(n20) );
  SAEDSLVT14_INV_1 U13 ( .A(N28), .X(n17) );
  SAEDSLVT14_INV_1 U14 ( .A(N29), .X(n16) );
  SAEDSLVT14_INV_1 U15 ( .A(N30), .X(n15) );
  SAEDSLVT14_INV_1 U16 ( .A(N31), .X(n14) );
  SAEDSLVT14_INV_1 U17 ( .A(N32), .X(n13) );
  SAEDSLVT14_INV_1 U18 ( .A(N33), .X(n12) );
  SAEDSLVT14_INV_1 U19 ( .A(N27), .X(n18) );
  SAEDSLVT14_INV_1 U20 ( .A(N26), .X(n19) );
endmodule


module PE_4_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  SAEDSLVT14_AN2_MM_1 U1 ( .A1(A[0]), .A2(B[0]), .X(carry[1]) );
  SAEDSLVT14_EO2_V1_0P75 U2 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
  SAEDSLVT14_ADDF_V1_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V1_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V1_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V1_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V1_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V1_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V1_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
endmodule


module PE_4_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:0] carry;

  SAEDSLVT14_OR2_MM_1 U1 ( .A1(A[0]), .A2(n11), .X(n1) );
  SAEDSLVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n10), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDSLVT14_INV_1 U2 ( .A(B[0]), .X(n11) );
  SAEDSLVT14_EN2_1 U3 ( .A1(n11), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_1 U4 ( .A(B[1]), .X(n10) );
  SAEDSLVT14_INV_1 U5 ( .A(B[2]), .X(n16) );
  SAEDSLVT14_INV_1 U6 ( .A(B[3]), .X(n15) );
  SAEDSLVT14_INV_1 U7 ( .A(B[4]), .X(n14) );
  SAEDSLVT14_INV_1 U8 ( .A(B[5]), .X(n13) );
  SAEDSLVT14_INV_1 U9 ( .A(B[6]), .X(n12) );
  SAEDSLVT14_EN3_1 U10 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(DIFF[7]) );
endmodule


module PE_4 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n19), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n12), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n13), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n14), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n15), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n16), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n17), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n18), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_AO22_1 U4 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n20), .X(N9) );
  SAEDSLVT14_AO22_1 U5 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n20), .X(N8) );
  SAEDSLVT14_AO22_1 U6 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n20), .X(
        N15) );
  SAEDSLVT14_AO22_1 U7 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n20), .X(
        N14) );
  SAEDSLVT14_AO22_1 U8 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n20), .X(
        N13) );
  SAEDSLVT14_AO22_1 U9 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n20), .X(
        N12) );
  SAEDSLVT14_AO22_1 U10 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n20), .X(
        N11) );
  SAEDSLVT14_AO22_1 U11 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n20), .X(
        N10) );
  PE_4_DW01_add_0 add_52 ( .A({n1, Accumulate}), .B({n1, difference}), .CI(n1), 
        .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_4_DW01_sub_1 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n1), .DIFF(difference) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDSLVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDSLVT14_INV_1 U12 ( .A(S1S2mux), .X(n20) );
  SAEDSLVT14_INV_1 U13 ( .A(N28), .X(n17) );
  SAEDSLVT14_INV_1 U14 ( .A(N29), .X(n16) );
  SAEDSLVT14_INV_1 U15 ( .A(N30), .X(n15) );
  SAEDSLVT14_INV_1 U16 ( .A(N31), .X(n14) );
  SAEDSLVT14_INV_1 U17 ( .A(N32), .X(n13) );
  SAEDSLVT14_INV_1 U18 ( .A(N33), .X(n12) );
  SAEDSLVT14_INV_1 U19 ( .A(N27), .X(n18) );
  SAEDSLVT14_INV_1 U20 ( .A(N26), .X(n19) );
endmodule


module PE_3_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  SAEDSLVT14_AN2_MM_1 U1 ( .A1(A[0]), .A2(B[0]), .X(carry[1]) );
  SAEDSLVT14_EO2_V1_0P75 U2 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
  SAEDSLVT14_ADDF_V1_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V1_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V1_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V1_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V1_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V1_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V1_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
endmodule


module PE_3_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:0] carry;

  SAEDSLVT14_OR2_MM_1 U1 ( .A1(A[0]), .A2(n11), .X(n1) );
  SAEDSLVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n10), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDSLVT14_INV_1 U2 ( .A(B[0]), .X(n11) );
  SAEDSLVT14_EN2_1 U3 ( .A1(n11), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_1 U4 ( .A(B[1]), .X(n10) );
  SAEDSLVT14_INV_1 U5 ( .A(B[2]), .X(n16) );
  SAEDSLVT14_INV_1 U6 ( .A(B[3]), .X(n15) );
  SAEDSLVT14_INV_1 U7 ( .A(B[4]), .X(n14) );
  SAEDSLVT14_INV_1 U8 ( .A(B[5]), .X(n13) );
  SAEDSLVT14_INV_1 U9 ( .A(B[6]), .X(n12) );
  SAEDSLVT14_EN3_1 U10 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(DIFF[7]) );
endmodule


module PE_3 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21
;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n20), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n13), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n14), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n15), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n16), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n17), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n18), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n19), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_AO22_1 U4 ( .A1(S1[1]), .A2(n12), .B1(S2[1]), .B2(n21), .X(N9) );
  SAEDSLVT14_AO22_1 U5 ( .A1(S1[0]), .A2(n12), .B1(S2[0]), .B2(n21), .X(N8) );
  SAEDSLVT14_AO22_1 U6 ( .A1(S1[7]), .A2(n12), .B1(S2[7]), .B2(n21), .X(N15)
         );
  SAEDSLVT14_AO22_1 U7 ( .A1(S1[6]), .A2(n12), .B1(S2[6]), .B2(n21), .X(N14)
         );
  SAEDSLVT14_AO22_1 U8 ( .A1(S1[5]), .A2(n12), .B1(S2[5]), .B2(n21), .X(N13)
         );
  SAEDSLVT14_AO22_1 U9 ( .A1(S1[4]), .A2(n12), .B1(S2[4]), .B2(n21), .X(N12)
         );
  SAEDSLVT14_AO22_1 U10 ( .A1(S1[3]), .A2(n12), .B1(S2[3]), .B2(n21), .X(N11)
         );
  SAEDSLVT14_AO22_1 U11 ( .A1(S1[2]), .A2(n12), .B1(S2[2]), .B2(n21), .X(N10)
         );
  PE_3_DW01_add_0 add_52 ( .A({n1, Accumulate}), .B({n1, difference}), .CI(n1), 
        .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_3_DW01_sub_1 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n1), .DIFF(difference) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDSLVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDSLVT14_INV_1 U12 ( .A(n12), .X(n21) );
  SAEDHVT14_BUF_U_0P5 U13 ( .A(S1S2mux), .X(n12) );
  SAEDSLVT14_INV_1 U14 ( .A(N33), .X(n13) );
  SAEDSLVT14_INV_1 U15 ( .A(N28), .X(n18) );
  SAEDSLVT14_INV_1 U16 ( .A(N29), .X(n17) );
  SAEDSLVT14_INV_1 U17 ( .A(N30), .X(n16) );
  SAEDSLVT14_INV_1 U18 ( .A(N31), .X(n15) );
  SAEDSLVT14_INV_1 U19 ( .A(N32), .X(n14) );
  SAEDSLVT14_INV_1 U20 ( .A(N27), .X(n19) );
  SAEDSLVT14_INV_1 U21 ( .A(N26), .X(n20) );
endmodule


module PE_2_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  SAEDSLVT14_AN2_MM_1 U1 ( .A1(A[0]), .A2(B[0]), .X(carry[1]) );
  SAEDSLVT14_EO2_V1_0P75 U2 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
  SAEDSLVT14_ADDF_V1_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V1_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V1_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V1_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V1_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V1_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V1_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
endmodule


module PE_2_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:0] carry;

  SAEDSLVT14_OR2_MM_1 U1 ( .A1(A[0]), .A2(n11), .X(n1) );
  SAEDSLVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n10), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDSLVT14_INV_1 U2 ( .A(B[0]), .X(n11) );
  SAEDSLVT14_EN2_1 U3 ( .A1(n11), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_1 U4 ( .A(B[1]), .X(n10) );
  SAEDSLVT14_INV_1 U5 ( .A(B[2]), .X(n16) );
  SAEDSLVT14_INV_1 U6 ( .A(B[3]), .X(n15) );
  SAEDSLVT14_INV_1 U7 ( .A(B[4]), .X(n14) );
  SAEDSLVT14_INV_1 U8 ( .A(B[5]), .X(n13) );
  SAEDSLVT14_INV_1 U9 ( .A(B[6]), .X(n12) );
  SAEDSLVT14_EN3_1 U10 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(DIFF[7]) );
endmodule


module PE_2 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n19), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n12), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n13), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n14), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n15), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n16), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n17), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n18), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_AO22_1 U4 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n20), .X(N9) );
  SAEDSLVT14_AO22_1 U5 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n20), .X(N8) );
  SAEDSLVT14_AO22_1 U6 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n20), .X(
        N15) );
  SAEDSLVT14_AO22_1 U7 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n20), .X(
        N14) );
  SAEDSLVT14_AO22_1 U8 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n20), .X(
        N13) );
  SAEDSLVT14_AO22_1 U9 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n20), .X(
        N12) );
  SAEDSLVT14_AO22_1 U10 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n20), .X(
        N11) );
  SAEDSLVT14_AO22_1 U11 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n20), .X(
        N10) );
  PE_2_DW01_add_0 add_52 ( .A({n1, Accumulate}), .B({n1, difference}), .CI(n1), 
        .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_2_DW01_sub_1 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n1), .DIFF(difference) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDSLVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDSLVT14_INV_1 U12 ( .A(N30), .X(n15) );
  SAEDSLVT14_INV_1 U13 ( .A(N31), .X(n14) );
  SAEDSLVT14_INV_1 U14 ( .A(N32), .X(n13) );
  SAEDSLVT14_INV_1 U15 ( .A(N33), .X(n12) );
  SAEDSLVT14_INV_1 U16 ( .A(N28), .X(n17) );
  SAEDSLVT14_INV_1 U17 ( .A(N29), .X(n16) );
  SAEDSLVT14_INV_1 U18 ( .A(N27), .X(n18) );
  SAEDSLVT14_INV_1 U19 ( .A(S1S2mux), .X(n20) );
  SAEDSLVT14_INV_1 U20 ( .A(N26), .X(n19) );
endmodule


module PE_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  SAEDSLVT14_AN2_MM_1 U1 ( .A1(A[0]), .A2(B[0]), .X(carry[1]) );
  SAEDSLVT14_EO2_V1_0P75 U2 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
  SAEDSLVT14_ADDF_V1_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V1_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V1_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V1_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V1_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V1_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V1_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
endmodule


module PE_1_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:0] carry;

  SAEDSLVT14_OR2_MM_1 U1 ( .A1(A[0]), .A2(n11), .X(n1) );
  SAEDSLVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n10), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDSLVT14_INV_1 U2 ( .A(B[0]), .X(n11) );
  SAEDSLVT14_EN2_1 U3 ( .A1(n11), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_1 U4 ( .A(B[1]), .X(n10) );
  SAEDSLVT14_INV_1 U5 ( .A(B[2]), .X(n16) );
  SAEDSLVT14_INV_1 U6 ( .A(B[3]), .X(n15) );
  SAEDSLVT14_INV_1 U7 ( .A(B[4]), .X(n14) );
  SAEDSLVT14_INV_1 U8 ( .A(B[5]), .X(n13) );
  SAEDSLVT14_INV_1 U9 ( .A(B[6]), .X(n12) );
  SAEDSLVT14_EN3_1 U10 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(DIFF[7]) );
endmodule


module PE_1 ( clock, R, S1, S2, S1S2mux, newDist, Accumulate, Rpipe );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  output [7:0] Rpipe;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n19), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n12), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n13), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n14), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n15), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n16), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n17), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n18), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_AO22_1 U4 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n20), .X(N9) );
  SAEDSLVT14_AO22_1 U5 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n20), .X(N8) );
  SAEDSLVT14_AO22_1 U6 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n20), .X(
        N15) );
  SAEDSLVT14_AO22_1 U7 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n20), .X(
        N14) );
  SAEDSLVT14_AO22_1 U8 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n20), .X(
        N13) );
  SAEDSLVT14_AO22_1 U9 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n20), .X(
        N12) );
  SAEDSLVT14_AO22_1 U10 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n20), .X(
        N11) );
  SAEDSLVT14_AO22_1 U11 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n20), .X(
        N10) );
  PE_1_DW01_add_0 add_52 ( .A({n1, Accumulate}), .B({n1, difference}), .CI(n1), 
        .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PE_1_DW01_sub_1 sub_46 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n1), .DIFF(difference) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[7]  ( .D(R[7]), .CK(clock), .Q(Rpipe[7]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[6]  ( .D(R[6]), .CK(clock), .Q(Rpipe[6]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[5]  ( .D(R[5]), .CK(clock), .Q(Rpipe[5]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[4]  ( .D(R[4]), .CK(clock), .Q(Rpipe[4]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[3]  ( .D(R[3]), .CK(clock), .Q(Rpipe[3]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[2]  ( .D(R[2]), .CK(clock), .Q(Rpipe[2]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[1]  ( .D(R[1]), .CK(clock), .Q(Rpipe[1]) );
  SAEDRVT14_FDP_V2_1 \Rpipe_reg[0]  ( .D(R[0]), .CK(clock), .Q(Rpipe[0]) );
  SAEDSLVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDSLVT14_INV_1 U12 ( .A(S1S2mux), .X(n20) );
  SAEDSLVT14_INV_1 U13 ( .A(N28), .X(n17) );
  SAEDSLVT14_INV_1 U14 ( .A(N29), .X(n16) );
  SAEDSLVT14_INV_1 U15 ( .A(N30), .X(n15) );
  SAEDSLVT14_INV_1 U16 ( .A(N31), .X(n14) );
  SAEDSLVT14_INV_1 U17 ( .A(N32), .X(n13) );
  SAEDSLVT14_INV_1 U18 ( .A(N33), .X(n12) );
  SAEDSLVT14_INV_1 U19 ( .A(N27), .X(n18) );
  SAEDSLVT14_INV_1 U20 ( .A(N26), .X(n19) );
endmodule


module PEend_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  SAEDSLVT14_AN2_MM_1 U1 ( .A1(A[0]), .A2(B[0]), .X(carry[1]) );
  SAEDSLVT14_EO2_V1_0P75 U2 ( .A1(B[0]), .A2(A[0]), .X(SUM[0]) );
  SAEDSLVT14_ADDF_V1_1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), 
        .S(SUM[7]) );
  SAEDSLVT14_ADDF_V1_1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  SAEDSLVT14_ADDF_V1_1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  SAEDSLVT14_ADDF_V1_1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  SAEDSLVT14_ADDF_V1_1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  SAEDSLVT14_ADDF_V1_1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  SAEDSLVT14_ADDF_V1_1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
endmodule


module PEend_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:0] carry;

  SAEDSLVT14_OR2_MM_1 U1 ( .A1(A[0]), .A2(n11), .X(n1) );
  SAEDSLVT14_ADDF_V1_1 U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), 
        .S(DIFF[6]) );
  SAEDSLVT14_ADDF_V1_1 U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), 
        .S(DIFF[5]) );
  SAEDSLVT14_ADDF_V1_1 U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), 
        .S(DIFF[4]) );
  SAEDSLVT14_ADDF_V1_1 U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), 
        .S(DIFF[3]) );
  SAEDSLVT14_ADDF_V1_1 U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), 
        .S(DIFF[2]) );
  SAEDSLVT14_ADDF_V1_1 U2_1 ( .A(A[1]), .B(n10), .CI(n1), .CO(carry[2]), .S(
        DIFF[1]) );
  SAEDSLVT14_INV_1 U2 ( .A(B[0]), .X(n11) );
  SAEDSLVT14_EN2_1 U3 ( .A1(n11), .A2(A[0]), .X(DIFF[0]) );
  SAEDSLVT14_INV_1 U4 ( .A(B[1]), .X(n10) );
  SAEDSLVT14_INV_1 U5 ( .A(B[2]), .X(n16) );
  SAEDSLVT14_INV_1 U6 ( .A(B[3]), .X(n15) );
  SAEDSLVT14_INV_1 U7 ( .A(B[4]), .X(n14) );
  SAEDSLVT14_INV_1 U8 ( .A(B[5]), .X(n13) );
  SAEDSLVT14_INV_1 U9 ( .A(B[6]), .X(n12) );
  SAEDSLVT14_EN3_1 U10 ( .A1(A[7]), .A2(B[7]), .A3(carry[7]), .X(DIFF[7]) );
endmodule


module PEend ( clock, R, S1, S2, S1S2mux, newDist, Accumulate );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  output [7:0] Accumulate;
  input clock, S1S2mux, newDist;
  wire   N8, N9, N10, N11, N12, N13, N14, N15, N26, N27, N28, N29, N30, N31,
         N32, N33, Carry, n1, n11, n12, n13, n14, n15, n16, n17, n18, n19;
  wire   [7:0] difference;

  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[0]  ( .SD(n18), .D(Carry), 
        .SI(difference[0]), .SE(newDist), .CK(clock), .Q(Accumulate[0]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[7]  ( .SD(n11), .D(Carry), 
        .SI(difference[7]), .SE(newDist), .CK(clock), .Q(Accumulate[7]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[6]  ( .SD(n12), .D(Carry), 
        .SI(difference[6]), .SE(newDist), .CK(clock), .Q(Accumulate[6]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[5]  ( .SD(n13), .D(Carry), 
        .SI(difference[5]), .SE(newDist), .CK(clock), .Q(Accumulate[5]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[4]  ( .SD(n14), .D(Carry), 
        .SI(difference[4]), .SE(newDist), .CK(clock), .Q(Accumulate[4]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[3]  ( .SD(n15), .D(Carry), 
        .SI(difference[3]), .SE(newDist), .CK(clock), .Q(Accumulate[3]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[2]  ( .SD(n16), .D(Carry), 
        .SI(difference[2]), .SE(newDist), .CK(clock), .Q(Accumulate[2]) );
  SAEDSLVT14_FSDPSYNSBQ_V2LP_0P5 \Accumulate_reg[1]  ( .SD(n17), .D(Carry), 
        .SI(difference[1]), .SE(newDist), .CK(clock), .Q(Accumulate[1]) );
  SAEDSLVT14_AO22_1 U4 ( .A1(S1[1]), .A2(S1S2mux), .B1(S2[1]), .B2(n19), .X(N9) );
  SAEDSLVT14_AO22_1 U5 ( .A1(S1[0]), .A2(S1S2mux), .B1(S2[0]), .B2(n19), .X(N8) );
  SAEDSLVT14_AO22_1 U6 ( .A1(S1[7]), .A2(S1S2mux), .B1(S2[7]), .B2(n19), .X(
        N15) );
  SAEDSLVT14_AO22_1 U7 ( .A1(S1[6]), .A2(S1S2mux), .B1(S2[6]), .B2(n19), .X(
        N14) );
  SAEDSLVT14_AO22_1 U8 ( .A1(S1[5]), .A2(S1S2mux), .B1(S2[5]), .B2(n19), .X(
        N13) );
  SAEDSLVT14_AO22_1 U9 ( .A1(S1[4]), .A2(S1S2mux), .B1(S2[4]), .B2(n19), .X(
        N12) );
  SAEDSLVT14_AO22_1 U10 ( .A1(S1[3]), .A2(S1S2mux), .B1(S2[3]), .B2(n19), .X(
        N11) );
  SAEDSLVT14_AO22_1 U11 ( .A1(S1[2]), .A2(S1S2mux), .B1(S2[2]), .B2(n19), .X(
        N10) );
  PEend_DW01_add_0 add_77 ( .A({n1, Accumulate}), .B({n1, difference}), .CI(n1), .SUM({Carry, N33, N32, N31, N30, N29, N28, N27, N26}) );
  PEend_DW01_sub_1 sub_71 ( .A(R), .B({N15, N14, N13, N12, N11, N10, N9, N8}), 
        .CI(n1), .DIFF(difference) );
  SAEDSLVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDSLVT14_INV_1 U12 ( .A(S1S2mux), .X(n19) );
  SAEDSLVT14_INV_1 U13 ( .A(N28), .X(n16) );
  SAEDSLVT14_INV_1 U14 ( .A(N29), .X(n15) );
  SAEDSLVT14_INV_1 U15 ( .A(N30), .X(n14) );
  SAEDSLVT14_INV_1 U16 ( .A(N31), .X(n13) );
  SAEDSLVT14_INV_1 U17 ( .A(N32), .X(n12) );
  SAEDSLVT14_INV_1 U18 ( .A(N33), .X(n11) );
  SAEDSLVT14_INV_1 U19 ( .A(N27), .X(n17) );
  SAEDSLVT14_INV_1 U20 ( .A(N26), .X(n18) );
endmodule


module PEtotal ( clock, R, S1, S2, S1S2mux, newDist, Accumulate );
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  input [15:0] S1S2mux;
  input [15:0] newDist;
  output [127:0] Accumulate;
  input clock;

  wire   [7:0] Rpipe0;
  wire   [7:0] Rpipe1;
  wire   [7:0] Rpipe2;
  wire   [7:0] Rpipe3;
  wire   [7:0] Rpipe4;
  wire   [7:0] Rpipe5;
  wire   [7:0] Rpipe6;
  wire   [7:0] Rpipe7;
  wire   [7:0] Rpipe8;
  wire   [7:0] Rpipe9;
  wire   [7:0] Rpipe10;
  wire   [7:0] Rpipe11;
  wire   [7:0] Rpipe12;
  wire   [7:0] Rpipe13;
  wire   [7:0] Rpipe14;

  PE_0 pe0 ( .clock(clock), .R(R), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[0]), 
        .newDist(newDist[0]), .Accumulate(Accumulate[7:0]), .Rpipe(Rpipe0) );
  PE_14 pe1 ( .clock(clock), .R(Rpipe0), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[1]), .newDist(newDist[1]), .Accumulate(Accumulate[15:8]), .Rpipe(Rpipe1) );
  PE_13 pe2 ( .clock(clock), .R(Rpipe1), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[2]), .newDist(newDist[2]), .Accumulate(Accumulate[23:16]), .Rpipe(Rpipe2) );
  PE_12 pe3 ( .clock(clock), .R(Rpipe2), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[3]), .newDist(newDist[3]), .Accumulate(Accumulate[31:24]), .Rpipe(Rpipe3) );
  PE_11 pe4 ( .clock(clock), .R(Rpipe3), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[4]), .newDist(newDist[4]), .Accumulate(Accumulate[39:32]), .Rpipe(Rpipe4) );
  PE_10 pe5 ( .clock(clock), .R(Rpipe4), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[5]), .newDist(newDist[5]), .Accumulate(Accumulate[47:40]), .Rpipe(Rpipe5) );
  PE_9 pe6 ( .clock(clock), .R(Rpipe5), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[6]), 
        .newDist(newDist[6]), .Accumulate(Accumulate[55:48]), .Rpipe(Rpipe6)
         );
  PE_8 pe7 ( .clock(clock), .R(Rpipe6), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[7]), 
        .newDist(newDist[7]), .Accumulate(Accumulate[63:56]), .Rpipe(Rpipe7)
         );
  PE_7 pe8 ( .clock(clock), .R(Rpipe7), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[8]), 
        .newDist(newDist[8]), .Accumulate(Accumulate[71:64]), .Rpipe(Rpipe8)
         );
  PE_6 pe9 ( .clock(clock), .R(Rpipe8), .S1(S1), .S2(S2), .S1S2mux(S1S2mux[9]), 
        .newDist(newDist[9]), .Accumulate(Accumulate[79:72]), .Rpipe(Rpipe9)
         );
  PE_5 pe10 ( .clock(clock), .R(Rpipe9), .S1(S1), .S2(S2), .S1S2mux(
        S1S2mux[10]), .newDist(newDist[10]), .Accumulate(Accumulate[87:80]), 
        .Rpipe(Rpipe10) );
  PE_4 pe11 ( .clock(clock), .R(Rpipe10), .S1(S1), .S2(S2), .S1S2mux(
        S1S2mux[11]), .newDist(newDist[11]), .Accumulate(Accumulate[95:88]), 
        .Rpipe(Rpipe11) );
  PE_3 pe12 ( .clock(clock), .R(Rpipe11), .S1(S1), .S2(S2), .S1S2mux(
        S1S2mux[12]), .newDist(newDist[12]), .Accumulate(Accumulate[103:96]), 
        .Rpipe(Rpipe12) );
  PE_2 pe13 ( .clock(clock), .R(Rpipe12), .S1(S1), .S2(S2), .S1S2mux(
        S1S2mux[13]), .newDist(newDist[13]), .Accumulate(Accumulate[111:104]), 
        .Rpipe(Rpipe13) );
  PE_1 pe14 ( .clock(clock), .R(Rpipe13), .S1(S1), .S2(S2), .S1S2mux(
        S1S2mux[14]), .newDist(newDist[14]), .Accumulate(Accumulate[119:112]), 
        .Rpipe(Rpipe14) );
  PEend pe15 ( .clock(clock), .R(Rpipe14), .S1(S1), .S2(S2), .S1S2mux(
        S1S2mux[15]), .newDist(newDist[15]), .Accumulate(Accumulate[127:120])
         );
endmodule


module Comparator ( clock, CompStart, PEout, PEready, vectorX, vectorY, 
        BestDist, motionX, motionY );
  input [127:0] PEout;
  input [15:0] PEready;
  input [3:0] vectorX;
  input [3:0] vectorY;
  output [7:0] BestDist;
  output [3:0] motionX;
  output [3:0] motionY;
  input clock, CompStart;
  wire   n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n3, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199;

  SAEDSLVT14_OA21B_1 U29 ( .A1(n44), .A2(n3), .B(n61), .X(n59) );
  SAEDSLVT14_AO22_1 U41 ( .A1(PEout[32]), .A2(n78), .B1(PEout[24]), .B2(n79), 
        .X(n77) );
  SAEDSLVT14_AO22_1 U45 ( .A1(PEout[96]), .A2(n88), .B1(PEout[80]), .B2(n89), 
        .X(n87) );
  SAEDSLVT14_AO22_1 U51 ( .A1(PEout[33]), .A2(n78), .B1(PEout[25]), .B2(n79), 
        .X(n95) );
  SAEDSLVT14_AO22_1 U55 ( .A1(PEout[97]), .A2(n88), .B1(PEout[81]), .B2(n89), 
        .X(n98) );
  SAEDSLVT14_AO22_1 U61 ( .A1(PEout[34]), .A2(n78), .B1(PEout[26]), .B2(n79), 
        .X(n104) );
  SAEDSLVT14_AO22_1 U65 ( .A1(PEout[98]), .A2(n88), .B1(PEout[82]), .B2(n89), 
        .X(n107) );
  SAEDSLVT14_AO22_1 U71 ( .A1(PEout[35]), .A2(n78), .B1(PEout[27]), .B2(n79), 
        .X(n129) );
  SAEDSLVT14_AO22_1 U75 ( .A1(PEout[99]), .A2(n88), .B1(PEout[83]), .B2(n89), 
        .X(n132) );
  SAEDSLVT14_AO22_1 U81 ( .A1(PEout[36]), .A2(n78), .B1(PEout[28]), .B2(n79), 
        .X(n138) );
  SAEDSLVT14_AO22_1 U85 ( .A1(PEout[100]), .A2(n88), .B1(PEout[84]), .B2(n89), 
        .X(n141) );
  SAEDSLVT14_AO22_1 U91 ( .A1(PEout[37]), .A2(n78), .B1(PEout[29]), .B2(n79), 
        .X(n147) );
  SAEDSLVT14_AO22_1 U95 ( .A1(PEout[101]), .A2(n88), .B1(PEout[85]), .B2(n89), 
        .X(n150) );
  SAEDSLVT14_AO22_1 U101 ( .A1(PEout[38]), .A2(n78), .B1(PEout[30]), .B2(n79), 
        .X(n156) );
  SAEDSLVT14_AO22_1 U105 ( .A1(PEout[102]), .A2(n88), .B1(PEout[86]), .B2(n89), 
        .X(n159) );
  SAEDSLVT14_AN2B_MM_1 U110 ( .B(PEready[2]), .A(n166), .X(n74) );
  SAEDSLVT14_AO22_1 U112 ( .A1(PEout[39]), .A2(n78), .B1(PEout[31]), .B2(n79), 
        .X(n168) );
  SAEDSLVT14_AN2_MM_1 U113 ( .A1(PEready[3]), .A2(n169), .X(n79) );
  SAEDSLVT14_AN2B_MM_1 U116 ( .B(PEready[5]), .A(PEready[6]), .X(n75) );
  SAEDSLVT14_OR3_0P75 U117 ( .A1(PEready[0]), .A2(n165), .A3(n167), .X(n70) );
  SAEDSLVT14_OR3_0P75 U118 ( .A1(PEready[2]), .A2(PEready[1]), .A3(n166), .X(
        n167) );
  SAEDSLVT14_ND2B_U_0P5 U119 ( .A(PEready[3]), .B(n169), .X(n166) );
  SAEDSLVT14_NR3_0P75 U120 ( .A1(PEready[6]), .A2(PEready[5]), .A3(PEready[4]), 
        .X(n169) );
  SAEDSLVT14_OR4_1 U121 ( .A1(n199), .A2(n170), .A3(PEready[8]), .A4(
        PEready[7]), .X(n165) );
  SAEDSLVT14_AN2B_MM_1 U126 ( .B(PEready[8]), .A(n170), .X(n83) );
  SAEDSLVT14_OR3_0P75 U127 ( .A1(PEready[9]), .A2(PEready[10]), .A3(n173), .X(
        n170) );
  SAEDSLVT14_AO22_1 U129 ( .A1(PEout[103]), .A2(n88), .B1(PEout[87]), .B2(n89), 
        .X(n174) );
  SAEDSLVT14_AN2B_MM_1 U130 ( .B(PEready[10]), .A(n173), .X(n89) );
  SAEDSLVT14_AN2B_MM_1 U131 ( .B(PEready[12]), .A(PEready[13]), .X(n88) );
  SAEDSLVT14_OR3_0P75 U134 ( .A1(PEready[13]), .A2(PEready[12]), .A3(
        PEready[11]), .X(n173) );
  SAEDSLVT14_AN2B_MM_1 U135 ( .B(PEready[14]), .A(PEready[15]), .X(n67) );
  SAEDSLVT14_FDP_V2LP_0P5 \BestDist_reg[2]  ( .D(n119), .CK(clock), .Q(
        BestDist[2]) );
  SAEDSLVT14_FDP_V2LP_0P5 \BestDist_reg[3]  ( .D(n120), .CK(clock), .Q(
        BestDist[3]) );
  SAEDSLVT14_FDP_V2LP_0P5 \BestDist_reg[4]  ( .D(n121), .CK(clock), .Q(
        BestDist[4]) );
  SAEDSLVT14_FDP_V2LP_0P5 \BestDist_reg[5]  ( .D(n122), .CK(clock), .Q(
        BestDist[5]) );
  SAEDSLVT14_FDP_V2LP_0P5 \BestDist_reg[6]  ( .D(n123), .CK(clock), .Q(
        BestDist[6]) );
  SAEDSLVT14_FDP_V2LP_0P5 \motionY_reg[0]  ( .D(n114), .CK(clock), .Q(
        motionY[0]), .QN(n179) );
  SAEDSLVT14_FDP_V2LP_0P5 \motionY_reg[1]  ( .D(n115), .CK(clock), .Q(
        motionY[1]), .QN(n180) );
  SAEDSLVT14_FDP_V2LP_0P5 \motionY_reg[2]  ( .D(n116), .CK(clock), .Q(
        motionY[2]), .QN(n181) );
  SAEDSLVT14_FDP_V2LP_0P5 \motionY_reg[3]  ( .D(n117), .CK(clock), .Q(
        motionY[3]), .QN(n182) );
  SAEDSLVT14_FDP_V2LP_0P5 \motionX_reg[3]  ( .D(n113), .CK(clock), .Q(
        motionX[3]), .QN(n178) );
  SAEDSLVT14_FDP_V2LP_0P5 \motionX_reg[2]  ( .D(n112), .CK(clock), .Q(
        motionX[2]), .QN(n177) );
  SAEDSLVT14_FDP_V2LP_0P5 \motionX_reg[1]  ( .D(n111), .CK(clock), .Q(
        motionX[1]), .QN(n176) );
  SAEDSLVT14_FDP_V2LP_0P5 \motionX_reg[0]  ( .D(n110), .CK(clock), .Q(
        motionX[0]), .QN(n175) );
  SAEDSLVT14_FDP_V2LP_0P5 \BestDist_reg[0]  ( .D(n125), .CK(clock), .Q(
        BestDist[0]), .QN(n183) );
  SAEDSLVT14_FDP_V2LP_0P5 \BestDist_reg[7]  ( .D(n124), .CK(clock), .Q(
        BestDist[7]), .QN(n3) );
  SAEDSLVT14_FDP_V2LP_0P5 \BestDist_reg[1]  ( .D(n118), .CK(clock), .Q(
        BestDist[1]), .QN(n184) );
  SAEDSLVT14_INV_1 U3 ( .A(n165), .X(n197) );
  SAEDSLVT14_INV_1 U4 ( .A(n167), .X(n198) );
  SAEDSLVT14_NR3B_U_0P5 U5 ( .A(PEready[7]), .B1(PEready[8]), .B2(n170), .X(
        n84) );
  SAEDSLVT14_INV_1 U6 ( .A(n186), .X(n199) );
  SAEDSLVT14_NR3B_U_0P5 U7 ( .A(PEready[9]), .B1(PEready[10]), .B2(n173), .X(
        n85) );
  SAEDSLVT14_NR3B_U_0P5 U8 ( .A(PEready[4]), .B1(PEready[6]), .B2(PEready[5]), 
        .X(n78) );
  SAEDHVT14_BUF_U_0P5 U9 ( .A(n82), .X(n187) );
  SAEDHVT14_BUF_U_0P5 U10 ( .A(n82), .X(n185) );
  SAEDHVT14_BUF_U_0P5 U11 ( .A(n82), .X(n186) );
  SAEDSLVT14_NR3B_U_0P5 U12 ( .A(PEready[1]), .B1(PEready[2]), .B2(n166), .X(
        n76) );
  SAEDSLVT14_NR3B_U_0P5 U13 ( .A(PEready[11]), .B1(PEready[13]), .B2(
        PEready[12]), .X(n86) );
  SAEDHVT14_BUF_U_0P5 U14 ( .A(n189), .X(n188) );
  SAEDSLVT14_NR2_MM_1 U15 ( .A1(PEready[15]), .A2(PEready[14]), .X(n82) );
  SAEDSLVT14_INV_1 U16 ( .A(n45), .X(n190) );
  SAEDSLVT14_INV_1 U17 ( .A(n49), .X(n194) );
  SAEDSLVT14_INV_1 U18 ( .A(n48), .X(n193) );
  SAEDSLVT14_INV_1 U19 ( .A(n46), .X(n191) );
  SAEDSLVT14_AO221_0P5 U20 ( .A1(n191), .A2(BestDist[5]), .B1(n192), .B2(
        BestDist[4]), .C(n63), .X(n62) );
  SAEDSLVT14_OA221_U_0P5 U21 ( .A1(n192), .A2(BestDist[4]), .B1(n193), .B2(
        BestDist[3]), .C(n64), .X(n63) );
  SAEDSLVT14_INV_1 U22 ( .A(n47), .X(n192) );
  SAEDSLVT14_AO221_0P5 U23 ( .A1(n193), .A2(BestDist[3]), .B1(n194), .B2(
        BestDist[2]), .C(n65), .X(n64) );
  SAEDSLVT14_AO221_0P5 U24 ( .A1(n188), .A2(n47), .B1(n43), .B2(BestDist[4]), 
        .C(n196), .X(n121) );
  SAEDSLVT14_AO221_0P5 U25 ( .A1(n188), .A2(n49), .B1(n43), .B2(BestDist[2]), 
        .C(n196), .X(n119) );
  SAEDSLVT14_AO221_0P5 U26 ( .A1(n188), .A2(n46), .B1(n43), .B2(BestDist[5]), 
        .C(n196), .X(n122) );
  SAEDSLVT14_AO221_0P5 U27 ( .A1(n188), .A2(n48), .B1(n43), .B2(BestDist[3]), 
        .C(n196), .X(n120) );
  SAEDSLVT14_AO221_0P5 U28 ( .A1(n188), .A2(n45), .B1(n43), .B2(BestDist[6]), 
        .C(n196), .X(n123) );
  SAEDSLVT14_AO221_0P5 U30 ( .A1(n188), .A2(n50), .B1(n43), .B2(BestDist[1]), 
        .C(n196), .X(n118) );
  SAEDSLVT14_INV_1 U31 ( .A(n43), .X(n189) );
  SAEDRVT14_AO222_1 U32 ( .A1(PEout[0]), .A2(n198), .B1(PEout[16]), .B2(n74), 
        .C1(PEready[6]), .C2(PEout[48]), .X(n73) );
  SAEDRVT14_AO222_1 U33 ( .A1(PEout[1]), .A2(n198), .B1(PEout[17]), .B2(n74), 
        .C1(PEout[49]), .C2(PEready[6]), .X(n94) );
  SAEDRVT14_AO222_1 U34 ( .A1(PEout[2]), .A2(n198), .B1(PEout[18]), .B2(n74), 
        .C1(PEout[50]), .C2(PEready[6]), .X(n103) );
  SAEDRVT14_AO222_1 U35 ( .A1(PEout[3]), .A2(n198), .B1(PEout[19]), .B2(n74), 
        .C1(PEout[51]), .C2(PEready[6]), .X(n128) );
  SAEDRVT14_AO222_1 U36 ( .A1(PEout[4]), .A2(n198), .B1(PEout[20]), .B2(n74), 
        .C1(PEout[52]), .C2(PEready[6]), .X(n137) );
  SAEDRVT14_AO222_1 U37 ( .A1(PEout[5]), .A2(n198), .B1(PEout[21]), .B2(n74), 
        .C1(PEout[53]), .C2(PEready[6]), .X(n146) );
  SAEDRVT14_AO222_1 U38 ( .A1(PEout[6]), .A2(n198), .B1(PEout[22]), .B2(n74), 
        .C1(PEout[54]), .C2(PEready[6]), .X(n155) );
  SAEDRVT14_AO222_1 U39 ( .A1(PEout[7]), .A2(n198), .B1(PEout[23]), .B2(n74), 
        .C1(PEout[55]), .C2(PEready[6]), .X(n164) );
  SAEDSLVT14_AO221_0P5 U40 ( .A1(n59), .A2(n60), .B1(n3), .B2(n44), .C(n196), 
        .X(n43) );
  SAEDSLVT14_ND2_CDC_0P5 U42 ( .A1(n190), .A2(BestDist[6]), .X(n60) );
  SAEDSLVT14_OA221_U_0P5 U43 ( .A1(n190), .A2(BestDist[6]), .B1(n191), .B2(
        BestDist[5]), .C(n62), .X(n61) );
  SAEDSLVT14_AO221_0P5 U44 ( .A1(n188), .A2(n42), .B1(n43), .B2(BestDist[0]), 
        .C(n196), .X(n125) );
  SAEDSLVT14_AO221_0P5 U46 ( .A1(PEout[112]), .A2(n67), .B1(PEready[15]), .B2(
        PEout[120]), .C(n68), .X(n42) );
  SAEDLVT14_ND3_0P75 U47 ( .A1(n69), .A2(n70), .A3(n71), .X(n68) );
  SAEDSLVT14_OAI21_0P5 U48 ( .A1(n80), .A2(n81), .B(n187), .X(n69) );
  SAEDSLVT14_OAI21_0P5 U49 ( .A1(n72), .A2(n73), .B(n197), .X(n71) );
  SAEDSLVT14_AO221_0P5 U50 ( .A1(PEout[114]), .A2(n67), .B1(PEout[122]), .B2(
        PEready[15]), .C(n99), .X(n49) );
  SAEDLVT14_ND3_0P75 U52 ( .A1(n100), .A2(n70), .A3(n101), .X(n99) );
  SAEDSLVT14_OAI21_0P5 U53 ( .A1(n105), .A2(n106), .B(n187), .X(n100) );
  SAEDSLVT14_OAI21_0P5 U54 ( .A1(n102), .A2(n103), .B(n197), .X(n101) );
  SAEDSLVT14_AO221_0P5 U56 ( .A1(PEout[115]), .A2(n67), .B1(PEout[123]), .B2(
        PEready[15]), .C(n108), .X(n48) );
  SAEDLVT14_ND3_0P75 U57 ( .A1(n109), .A2(n70), .A3(n126), .X(n108) );
  SAEDSLVT14_OAI21_0P5 U58 ( .A1(n130), .A2(n131), .B(n186), .X(n109) );
  SAEDSLVT14_OAI21_0P5 U59 ( .A1(n127), .A2(n128), .B(n197), .X(n126) );
  SAEDSLVT14_AO221_0P5 U60 ( .A1(PEout[116]), .A2(n67), .B1(PEout[124]), .B2(
        PEready[15]), .C(n133), .X(n47) );
  SAEDLVT14_ND3_0P75 U62 ( .A1(n134), .A2(n70), .A3(n135), .X(n133) );
  SAEDSLVT14_OAI21_0P5 U63 ( .A1(n139), .A2(n140), .B(n187), .X(n134) );
  SAEDSLVT14_OAI21_0P5 U64 ( .A1(n136), .A2(n137), .B(n197), .X(n135) );
  SAEDSLVT14_AO221_0P5 U66 ( .A1(PEout[117]), .A2(n67), .B1(PEout[125]), .B2(
        PEready[15]), .C(n142), .X(n46) );
  SAEDLVT14_ND3_0P75 U67 ( .A1(n143), .A2(n70), .A3(n144), .X(n142) );
  SAEDSLVT14_OAI21_0P5 U68 ( .A1(n148), .A2(n149), .B(n185), .X(n143) );
  SAEDSLVT14_OAI21_0P5 U69 ( .A1(n145), .A2(n146), .B(n197), .X(n144) );
  SAEDSLVT14_AO221_0P5 U70 ( .A1(PEout[118]), .A2(n67), .B1(PEout[126]), .B2(
        PEready[15]), .C(n151), .X(n45) );
  SAEDLVT14_ND3_0P75 U72 ( .A1(n152), .A2(n70), .A3(n153), .X(n151) );
  SAEDSLVT14_OAI21_0P5 U73 ( .A1(n157), .A2(n158), .B(n185), .X(n152) );
  SAEDSLVT14_OAI21_0P5 U74 ( .A1(n154), .A2(n155), .B(n197), .X(n153) );
  SAEDSLVT14_AO221_0P5 U76 ( .A1(n188), .A2(n44), .B1(n43), .B2(BestDist[7]), 
        .C(n196), .X(n124) );
  SAEDRVT14_AO222_1 U77 ( .A1(PEout[64]), .A2(n83), .B1(PEout[56]), .B2(n84), 
        .C1(PEready[13]), .C2(PEout[104]), .X(n81) );
  SAEDRVT14_AO222_1 U78 ( .A1(PEout[65]), .A2(n83), .B1(PEout[57]), .B2(n84), 
        .C1(PEout[105]), .C2(PEready[13]), .X(n97) );
  SAEDRVT14_AO222_1 U79 ( .A1(PEout[66]), .A2(n83), .B1(PEout[58]), .B2(n84), 
        .C1(PEout[106]), .C2(PEready[13]), .X(n106) );
  SAEDRVT14_AO222_1 U80 ( .A1(PEout[67]), .A2(n83), .B1(PEout[59]), .B2(n84), 
        .C1(PEout[107]), .C2(PEready[13]), .X(n131) );
  SAEDRVT14_AO222_1 U82 ( .A1(PEout[68]), .A2(n83), .B1(PEout[60]), .B2(n84), 
        .C1(PEout[108]), .C2(PEready[13]), .X(n140) );
  SAEDRVT14_AO222_1 U83 ( .A1(PEout[69]), .A2(n83), .B1(PEout[61]), .B2(n84), 
        .C1(PEout[109]), .C2(PEready[13]), .X(n149) );
  SAEDRVT14_AO222_1 U84 ( .A1(PEout[70]), .A2(n83), .B1(PEout[62]), .B2(n84), 
        .C1(PEout[110]), .C2(PEready[13]), .X(n158) );
  SAEDRVT14_AO222_1 U86 ( .A1(PEout[71]), .A2(n83), .B1(PEout[63]), .B2(n84), 
        .C1(PEout[111]), .C2(PEready[13]), .X(n172) );
  SAEDSLVT14_OA221_U_0P5 U87 ( .A1(n194), .A2(BestDist[2]), .B1(n195), .B2(
        BestDist[1]), .C(n66), .X(n65) );
  SAEDSLVT14_INV_1 U88 ( .A(n50), .X(n195) );
  SAEDSLVT14_OAI22_1 U89 ( .A1(n183), .A2(n42), .B1(n184), .B2(n50), .X(n66)
         );
  SAEDSLVT14_AO221_0P5 U90 ( .A1(PEout[113]), .A2(n67), .B1(PEout[121]), .B2(
        PEready[15]), .C(n90), .X(n50) );
  SAEDLVT14_ND3_0P75 U92 ( .A1(n91), .A2(n70), .A3(n92), .X(n90) );
  SAEDSLVT14_OAI21_0P5 U93 ( .A1(n96), .A2(n97), .B(n186), .X(n91) );
  SAEDSLVT14_OAI21_0P5 U94 ( .A1(n93), .A2(n94), .B(n197), .X(n92) );
  SAEDSLVT14_OAI21_0P5 U96 ( .A1(n177), .A2(n189), .B(n56), .X(n112) );
  SAEDSLVT14_ND2_CDC_0P5 U97 ( .A1(vectorX[2]), .A2(n189), .X(n56) );
  SAEDSLVT14_OAI21_0P5 U98 ( .A1(n178), .A2(n189), .B(n55), .X(n113) );
  SAEDSLVT14_ND2_CDC_0P5 U99 ( .A1(vectorX[3]), .A2(n189), .X(n55) );
  SAEDSLVT14_OAI21_0P5 U100 ( .A1(n182), .A2(n189), .B(n51), .X(n117) );
  SAEDSLVT14_ND2_CDC_0P5 U102 ( .A1(vectorY[3]), .A2(n188), .X(n51) );
  SAEDSLVT14_OAI21_0P5 U103 ( .A1(n181), .A2(n189), .B(n52), .X(n116) );
  SAEDSLVT14_ND2_CDC_0P5 U104 ( .A1(vectorY[2]), .A2(n188), .X(n52) );
  SAEDSLVT14_OAI21_0P5 U106 ( .A1(n179), .A2(n189), .B(n54), .X(n114) );
  SAEDSLVT14_ND2_CDC_0P5 U107 ( .A1(vectorY[0]), .A2(n188), .X(n54) );
  SAEDSLVT14_AO221_0P5 U108 ( .A1(PEout[119]), .A2(n67), .B1(PEout[127]), .B2(
        PEready[15]), .C(n160), .X(n44) );
  SAEDLVT14_ND3_0P75 U109 ( .A1(n161), .A2(n70), .A3(n162), .X(n160) );
  SAEDSLVT14_OAI21_0P5 U111 ( .A1(n171), .A2(n172), .B(n185), .X(n161) );
  SAEDSLVT14_OAI21_0P5 U114 ( .A1(n163), .A2(n164), .B(n197), .X(n162) );
  SAEDSLVT14_OAI21_0P5 U115 ( .A1(n176), .A2(n189), .B(n57), .X(n111) );
  SAEDSLVT14_ND2_CDC_0P5 U122 ( .A1(vectorX[1]), .A2(n189), .X(n57) );
  SAEDSLVT14_OAI21_0P5 U123 ( .A1(n180), .A2(n189), .B(n53), .X(n115) );
  SAEDSLVT14_ND2_CDC_0P5 U124 ( .A1(vectorY[1]), .A2(n189), .X(n53) );
  SAEDSLVT14_AO221_0P5 U125 ( .A1(PEout[74]), .A2(n85), .B1(PEout[90]), .B2(
        n86), .C(n107), .X(n105) );
  SAEDSLVT14_AO221_0P5 U128 ( .A1(PEout[75]), .A2(n85), .B1(PEout[91]), .B2(
        n86), .C(n132), .X(n130) );
  SAEDSLVT14_AO221_0P5 U132 ( .A1(PEout[76]), .A2(n85), .B1(PEout[92]), .B2(
        n86), .C(n141), .X(n139) );
  SAEDSLVT14_AO221_0P5 U133 ( .A1(PEout[77]), .A2(n85), .B1(PEout[93]), .B2(
        n86), .C(n150), .X(n148) );
  SAEDSLVT14_AO221_0P5 U136 ( .A1(PEout[78]), .A2(n85), .B1(PEout[94]), .B2(
        n86), .C(n159), .X(n157) );
  SAEDSLVT14_AO221_0P5 U137 ( .A1(PEout[79]), .A2(n85), .B1(PEout[95]), .B2(
        n86), .C(n174), .X(n171) );
  SAEDSLVT14_OAI21_0P5 U138 ( .A1(n175), .A2(n189), .B(n58), .X(n110) );
  SAEDSLVT14_ND2_CDC_0P5 U139 ( .A1(vectorX[0]), .A2(n188), .X(n58) );
  SAEDSLVT14_AO221_0P5 U140 ( .A1(PEout[40]), .A2(n75), .B1(PEout[8]), .B2(n76), .C(n77), .X(n72) );
  SAEDSLVT14_AO221_0P5 U141 ( .A1(PEout[41]), .A2(n75), .B1(PEout[9]), .B2(n76), .C(n95), .X(n93) );
  SAEDSLVT14_AO221_0P5 U142 ( .A1(PEout[42]), .A2(n75), .B1(PEout[10]), .B2(
        n76), .C(n104), .X(n102) );
  SAEDSLVT14_AO221_0P5 U143 ( .A1(PEout[43]), .A2(n75), .B1(PEout[11]), .B2(
        n76), .C(n129), .X(n127) );
  SAEDSLVT14_AO221_0P5 U144 ( .A1(PEout[44]), .A2(n75), .B1(PEout[12]), .B2(
        n76), .C(n138), .X(n136) );
  SAEDSLVT14_AO221_0P5 U145 ( .A1(PEout[45]), .A2(n75), .B1(PEout[13]), .B2(
        n76), .C(n147), .X(n145) );
  SAEDSLVT14_AO221_0P5 U146 ( .A1(PEout[46]), .A2(n75), .B1(PEout[14]), .B2(
        n76), .C(n156), .X(n154) );
  SAEDSLVT14_AO221_0P5 U147 ( .A1(PEout[47]), .A2(n75), .B1(PEout[15]), .B2(
        n76), .C(n168), .X(n163) );
  SAEDSLVT14_AO221_0P5 U148 ( .A1(PEout[72]), .A2(n85), .B1(PEout[88]), .B2(
        n86), .C(n87), .X(n80) );
  SAEDSLVT14_AO221_0P5 U149 ( .A1(PEout[73]), .A2(n85), .B1(PEout[89]), .B2(
        n86), .C(n98), .X(n96) );
  SAEDSLVT14_INV_S_0P75 U150 ( .A(CompStart), .X(n196) );
endmodule


module top ( clock, start, BestDist, motionX, motionY, AddressR, AddressS1, 
        AddressS2, R, S1, S2, completed );
  output [7:0] BestDist;
  output [3:0] motionX;
  output [3:0] motionY;
  output [7:0] AddressR;
  output [9:0] AddressS1;
  output [9:0] AddressS2;
  input [7:0] R;
  input [7:0] S1;
  input [7:0] S2;
  input clock, start;
  output completed;
  wire   CompStart;
  wire   [15:0] S1S2mux;
  wire   [15:0] newDist;
  wire   [15:0] PEready;
  wire   [3:0] VectorX;
  wire   [3:0] VectorY;
  wire   [127:0] Accumulate;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  control ctl_u ( .clock(clock), .start(start), .S1S2mux({S1S2mux[15:1], 
        SYNOPSYS_UNCONNECTED__0}), .newDist(newDist), .CompStart(CompStart), 
        .PEready(PEready), .VectorX(VectorX), .VectorY(VectorY), .AddressR(
        AddressR), .AddressS1({AddressS1[9:5], SYNOPSYS_UNCONNECTED__1, 
        AddressS1[3:0]}), .AddressS2({AddressS2[9:5], SYNOPSYS_UNCONNECTED__2, 
        AddressS2[3:0]}), .completed(completed) );
  PEtotal pe_u ( .clock(clock), .R(R), .S1(S1), .S2(S2), .S1S2mux({
        S1S2mux[15:1], AddressS2[4]}), .newDist(newDist), .Accumulate(
        Accumulate) );
  Comparator comp_u ( .clock(clock), .CompStart(CompStart), .PEout(Accumulate), 
        .PEready(PEready), .vectorX(VectorX), .vectorY(VectorY), .BestDist(
        BestDist), .motionX(motionX), .motionY(motionY) );
  SAEDSLVT14_TIE1_4 U3 ( .X(AddressS2[4]) );
  SAEDSLVT14_TIE0_V1_2 U4 ( .X(AddressS1[4]) );
endmodule

