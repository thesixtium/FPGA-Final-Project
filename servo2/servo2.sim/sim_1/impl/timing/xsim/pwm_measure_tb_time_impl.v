// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Dec  2 14:39:37 2024
// Host        : hiccup running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/ajrbe/Documents/School/ENEL
//               453/servo2/servo2/servo2.sim/sim_1/impl/timing/xsim/pwm_measure_tb_time_impl.v}
// Design      : top_level
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32X1D_UNIQ_BASE_
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD1
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

(* MAX_SIZE = "256" *) (* N = "32" *) (* power = "8" *) 
module averager
   (clk,
    reset,
    EN,
    Din,
    Q);
  input clk;
  input reset;
  input EN;
  input [31:0]Din;
  output [31:0]Q;

  wire [31:0]Din;
  wire [31:0]Q;
  wire [10:0]accumilator;
  wire \accumilator[10]_i_2_n_0 ;
  wire \accumilator[10]_i_3_n_0 ;
  wire \accumilator[10]_i_4_n_0 ;
  wire \accumilator[10]_i_5_n_0 ;
  wire \accumilator[10]_i_6_n_0 ;
  wire \accumilator[3]_i_2_n_0 ;
  wire \accumilator[3]_i_3_n_0 ;
  wire \accumilator[3]_i_4_n_0 ;
  wire \accumilator[3]_i_5_n_0 ;
  wire \accumilator[3]_i_6_n_0 ;
  wire \accumilator[3]_i_7_n_0 ;
  wire \accumilator[3]_i_8_n_0 ;
  wire \accumilator[7]_i_2_n_0 ;
  wire \accumilator[7]_i_3_n_0 ;
  wire \accumilator[7]_i_4_n_0 ;
  wire \accumilator[7]_i_5_n_0 ;
  wire \accumilator[7]_i_6_n_0 ;
  wire \accumilator[7]_i_7_n_0 ;
  wire \accumilator[7]_i_8_n_0 ;
  wire \accumilator[7]_i_9_n_0 ;
  wire \accumilator_reg[10]_i_1_n_5 ;
  wire \accumilator_reg[10]_i_1_n_6 ;
  wire \accumilator_reg[10]_i_1_n_7 ;
  wire \accumilator_reg[3]_i_1_n_0 ;
  wire \accumilator_reg[3]_i_1_n_4 ;
  wire \accumilator_reg[3]_i_1_n_5 ;
  wire \accumilator_reg[3]_i_1_n_6 ;
  wire \accumilator_reg[3]_i_1_n_7 ;
  wire \accumilator_reg[7]_i_1_n_0 ;
  wire \accumilator_reg[7]_i_1_n_4 ;
  wire \accumilator_reg[7]_i_1_n_5 ;
  wire \accumilator_reg[7]_i_1_n_6 ;
  wire \accumilator_reg[7]_i_1_n_7 ;
  wire clk;
  wire [10:0]oldDin;
  wire reset;
  wire \s_reg[1][0]_s_reg_r_5_n_0 ;
  wire \s_reg[1][10]_s_reg_r_5_n_0 ;
  wire \s_reg[1][1]_s_reg_r_5_n_0 ;
  wire \s_reg[1][2]_s_reg_r_5_n_0 ;
  wire \s_reg[1][3]_s_reg_r_5_n_0 ;
  wire \s_reg[1][4]_s_reg_r_5_n_0 ;
  wire \s_reg[1][5]_s_reg_r_5_n_0 ;
  wire \s_reg[1][6]_s_reg_r_5_n_0 ;
  wire \s_reg[1][7]_s_reg_r_5_n_0 ;
  wire \s_reg[1][8]_s_reg_r_5_n_0 ;
  wire \s_reg[1][9]_s_reg_r_5_n_0 ;
  wire \s_reg[2][0]_srl6___s_reg_r_4_n_0 ;
  wire \s_reg[2][10]_srl6___s_reg_r_4_n_0 ;
  wire \s_reg[2][1]_srl6___s_reg_r_4_n_0 ;
  wire \s_reg[2][2]_srl6___s_reg_r_4_n_0 ;
  wire \s_reg[2][3]_srl6___s_reg_r_4_n_0 ;
  wire \s_reg[2][4]_srl6___s_reg_r_4_n_0 ;
  wire \s_reg[2][5]_srl6___s_reg_r_4_n_0 ;
  wire \s_reg[2][6]_srl6___s_reg_r_4_n_0 ;
  wire \s_reg[2][7]_srl6___s_reg_r_4_n_0 ;
  wire \s_reg[2][8]_srl6___s_reg_r_4_n_0 ;
  wire \s_reg[2][9]_srl6___s_reg_r_4_n_0 ;
  wire s_reg_gate__0_n_0;
  wire s_reg_gate__1_n_0;
  wire s_reg_gate__2_n_0;
  wire s_reg_gate__3_n_0;
  wire s_reg_gate__4_n_0;
  wire s_reg_gate__5_n_0;
  wire s_reg_gate__6_n_0;
  wire s_reg_gate__7_n_0;
  wire s_reg_gate__8_n_0;
  wire s_reg_gate__9_n_0;
  wire s_reg_gate_n_0;
  wire s_reg_r_0_n_0;
  wire s_reg_r_1_n_0;
  wire s_reg_r_2_n_0;
  wire s_reg_r_3_n_0;
  wire s_reg_r_4_n_0;
  wire s_reg_r_5_n_0;
  wire s_reg_r_n_0;
  wire [3:0]\NLW_accumilator_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_accumilator_reg[10]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_accumilator_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_accumilator_reg[7]_i_1_CO_UNCONNECTED ;

  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \accumilator[10]_i_2 
       (.I0(accumilator[8]),
        .I1(oldDin[8]),
        .I2(Din[8]),
        .O(\accumilator[10]_i_2_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \accumilator[10]_i_3 
       (.I0(accumilator[7]),
        .I1(oldDin[7]),
        .I2(Din[7]),
        .O(\accumilator[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \accumilator[10]_i_4 
       (.I0(Din[9]),
        .I1(oldDin[9]),
        .I2(accumilator[9]),
        .I3(oldDin[10]),
        .I4(Din[10]),
        .I5(accumilator[10]),
        .O(\accumilator[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \accumilator[10]_i_5 
       (.I0(\accumilator[10]_i_2_n_0 ),
        .I1(oldDin[9]),
        .I2(Din[9]),
        .I3(accumilator[9]),
        .O(\accumilator[10]_i_5_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \accumilator[10]_i_6 
       (.I0(accumilator[8]),
        .I1(oldDin[8]),
        .I2(Din[8]),
        .I3(\accumilator[10]_i_3_n_0 ),
        .O(\accumilator[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \accumilator[3]_i_2 
       (.I0(accumilator[2]),
        .I1(oldDin[2]),
        .I2(Din[2]),
        .O(\accumilator[3]_i_2_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \accumilator[3]_i_3 
       (.I0(accumilator[1]),
        .I1(oldDin[1]),
        .I2(Din[1]),
        .O(\accumilator[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \accumilator[3]_i_4 
       (.I0(Din[0]),
        .I1(oldDin[0]),
        .O(\accumilator[3]_i_4_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \accumilator[3]_i_5 
       (.I0(accumilator[3]),
        .I1(oldDin[3]),
        .I2(Din[3]),
        .I3(\accumilator[3]_i_2_n_0 ),
        .O(\accumilator[3]_i_5_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \accumilator[3]_i_6 
       (.I0(accumilator[2]),
        .I1(oldDin[2]),
        .I2(Din[2]),
        .I3(\accumilator[3]_i_3_n_0 ),
        .O(\accumilator[3]_i_6_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \accumilator[3]_i_7 
       (.I0(accumilator[1]),
        .I1(oldDin[1]),
        .I2(Din[1]),
        .I3(\accumilator[3]_i_4_n_0 ),
        .O(\accumilator[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \accumilator[3]_i_8 
       (.I0(Din[0]),
        .I1(oldDin[0]),
        .I2(accumilator[0]),
        .O(\accumilator[3]_i_8_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \accumilator[7]_i_2 
       (.I0(accumilator[6]),
        .I1(oldDin[6]),
        .I2(Din[6]),
        .O(\accumilator[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \accumilator[7]_i_3 
       (.I0(accumilator[5]),
        .I1(oldDin[5]),
        .I2(Din[5]),
        .O(\accumilator[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \accumilator[7]_i_4 
       (.I0(accumilator[4]),
        .I1(oldDin[4]),
        .I2(Din[4]),
        .O(\accumilator[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \accumilator[7]_i_5 
       (.I0(accumilator[3]),
        .I1(oldDin[3]),
        .I2(Din[3]),
        .O(\accumilator[7]_i_5_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \accumilator[7]_i_6 
       (.I0(accumilator[7]),
        .I1(oldDin[7]),
        .I2(Din[7]),
        .I3(\accumilator[7]_i_2_n_0 ),
        .O(\accumilator[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \accumilator[7]_i_7 
       (.I0(accumilator[6]),
        .I1(oldDin[6]),
        .I2(Din[6]),
        .I3(\accumilator[7]_i_3_n_0 ),
        .O(\accumilator[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \accumilator[7]_i_8 
       (.I0(accumilator[5]),
        .I1(oldDin[5]),
        .I2(Din[5]),
        .I3(\accumilator[7]_i_4_n_0 ),
        .O(\accumilator[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \accumilator[7]_i_9 
       (.I0(accumilator[4]),
        .I1(oldDin[4]),
        .I2(Din[4]),
        .I3(\accumilator[7]_i_5_n_0 ),
        .O(\accumilator[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \accumilator_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\accumilator_reg[3]_i_1_n_7 ),
        .Q(accumilator[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \accumilator_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\accumilator_reg[10]_i_1_n_5 ),
        .Q(accumilator[10]),
        .R(reset));
  CARRY4 \accumilator_reg[10]_i_1 
       (.CI(\accumilator_reg[7]_i_1_n_0 ),
        .CO(\NLW_accumilator_reg[10]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\accumilator[10]_i_2_n_0 ,\accumilator[10]_i_3_n_0 }),
        .O({\NLW_accumilator_reg[10]_i_1_O_UNCONNECTED [3],\accumilator_reg[10]_i_1_n_5 ,\accumilator_reg[10]_i_1_n_6 ,\accumilator_reg[10]_i_1_n_7 }),
        .S({1'b0,\accumilator[10]_i_4_n_0 ,\accumilator[10]_i_5_n_0 ,\accumilator[10]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \accumilator_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\accumilator_reg[3]_i_1_n_6 ),
        .Q(accumilator[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \accumilator_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\accumilator_reg[3]_i_1_n_5 ),
        .Q(accumilator[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \accumilator_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\accumilator_reg[3]_i_1_n_4 ),
        .Q(accumilator[3]),
        .R(reset));
  CARRY4 \accumilator_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\accumilator_reg[3]_i_1_n_0 ,\NLW_accumilator_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\accumilator[3]_i_2_n_0 ,\accumilator[3]_i_3_n_0 ,\accumilator[3]_i_4_n_0 ,accumilator[0]}),
        .O({\accumilator_reg[3]_i_1_n_4 ,\accumilator_reg[3]_i_1_n_5 ,\accumilator_reg[3]_i_1_n_6 ,\accumilator_reg[3]_i_1_n_7 }),
        .S({\accumilator[3]_i_5_n_0 ,\accumilator[3]_i_6_n_0 ,\accumilator[3]_i_7_n_0 ,\accumilator[3]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \accumilator_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\accumilator_reg[7]_i_1_n_7 ),
        .Q(accumilator[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \accumilator_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\accumilator_reg[7]_i_1_n_6 ),
        .Q(accumilator[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \accumilator_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\accumilator_reg[7]_i_1_n_5 ),
        .Q(accumilator[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \accumilator_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\accumilator_reg[7]_i_1_n_4 ),
        .Q(accumilator[7]),
        .R(reset));
  CARRY4 \accumilator_reg[7]_i_1 
       (.CI(\accumilator_reg[3]_i_1_n_0 ),
        .CO({\accumilator_reg[7]_i_1_n_0 ,\NLW_accumilator_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\accumilator[7]_i_2_n_0 ,\accumilator[7]_i_3_n_0 ,\accumilator[7]_i_4_n_0 ,\accumilator[7]_i_5_n_0 }),
        .O({\accumilator_reg[7]_i_1_n_4 ,\accumilator_reg[7]_i_1_n_5 ,\accumilator_reg[7]_i_1_n_6 ,\accumilator_reg[7]_i_1_n_7 }),
        .S({\accumilator[7]_i_6_n_0 ,\accumilator[7]_i_7_n_0 ,\accumilator[7]_i_8_n_0 ,\accumilator[7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \accumilator_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\accumilator_reg[10]_i_1_n_7 ),
        .Q(accumilator[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \accumilator_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\accumilator_reg[10]_i_1_n_6 ),
        .Q(accumilator[9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divided_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(accumilator[3]),
        .Q(Q[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divided_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(accumilator[4]),
        .Q(Q[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divided_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(accumilator[5]),
        .Q(Q[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divided_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(accumilator[6]),
        .Q(Q[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divided_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(accumilator[7]),
        .Q(Q[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divided_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(accumilator[8]),
        .Q(Q[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divided_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(accumilator[9]),
        .Q(Q[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divided_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(accumilator[10]),
        .Q(Q[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \oldDin_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(s_reg_gate__9_n_0),
        .Q(oldDin[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \oldDin_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(s_reg_gate_n_0),
        .Q(oldDin[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \oldDin_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(s_reg_gate__8_n_0),
        .Q(oldDin[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \oldDin_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(s_reg_gate__7_n_0),
        .Q(oldDin[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \oldDin_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(s_reg_gate__6_n_0),
        .Q(oldDin[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \oldDin_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(s_reg_gate__5_n_0),
        .Q(oldDin[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \oldDin_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(s_reg_gate__4_n_0),
        .Q(oldDin[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \oldDin_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(s_reg_gate__3_n_0),
        .Q(oldDin[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \oldDin_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(s_reg_gate__2_n_0),
        .Q(oldDin[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \oldDin_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(s_reg_gate__1_n_0),
        .Q(oldDin[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \oldDin_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(s_reg_gate__0_n_0),
        .Q(oldDin[9]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[1][0]_s_reg_r_5 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2][0]_srl6___s_reg_r_4_n_0 ),
        .Q(\s_reg[1][0]_s_reg_r_5_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[1][10]_s_reg_r_5 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2][10]_srl6___s_reg_r_4_n_0 ),
        .Q(\s_reg[1][10]_s_reg_r_5_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[1][1]_s_reg_r_5 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2][1]_srl6___s_reg_r_4_n_0 ),
        .Q(\s_reg[1][1]_s_reg_r_5_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[1][2]_s_reg_r_5 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2][2]_srl6___s_reg_r_4_n_0 ),
        .Q(\s_reg[1][2]_s_reg_r_5_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[1][3]_s_reg_r_5 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2][3]_srl6___s_reg_r_4_n_0 ),
        .Q(\s_reg[1][3]_s_reg_r_5_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[1][4]_s_reg_r_5 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2][4]_srl6___s_reg_r_4_n_0 ),
        .Q(\s_reg[1][4]_s_reg_r_5_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[1][5]_s_reg_r_5 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2][5]_srl6___s_reg_r_4_n_0 ),
        .Q(\s_reg[1][5]_s_reg_r_5_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[1][6]_s_reg_r_5 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2][6]_srl6___s_reg_r_4_n_0 ),
        .Q(\s_reg[1][6]_s_reg_r_5_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[1][7]_s_reg_r_5 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2][7]_srl6___s_reg_r_4_n_0 ),
        .Q(\s_reg[1][7]_s_reg_r_5_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[1][8]_s_reg_r_5 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2][8]_srl6___s_reg_r_4_n_0 ),
        .Q(\s_reg[1][8]_s_reg_r_5_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[1][9]_s_reg_r_5 
       (.C(clk),
        .CE(1'b1),
        .D(\s_reg[2][9]_srl6___s_reg_r_4_n_0 ),
        .Q(\s_reg[1][9]_s_reg_r_5_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "pwmm/a/\\s_reg[2] " *) 
  (* srl_name = "pwmm/a/\\s_reg[2][0]_srl6___s_reg_r_4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s_reg[2][0]_srl6___s_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Din[0]),
        .Q(\s_reg[2][0]_srl6___s_reg_r_4_n_0 ));
  (* srl_bus_name = "pwmm/a/\\s_reg[2] " *) 
  (* srl_name = "pwmm/a/\\s_reg[2][10]_srl6___s_reg_r_4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s_reg[2][10]_srl6___s_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Din[10]),
        .Q(\s_reg[2][10]_srl6___s_reg_r_4_n_0 ));
  (* srl_bus_name = "pwmm/a/\\s_reg[2] " *) 
  (* srl_name = "pwmm/a/\\s_reg[2][1]_srl6___s_reg_r_4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s_reg[2][1]_srl6___s_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Din[1]),
        .Q(\s_reg[2][1]_srl6___s_reg_r_4_n_0 ));
  (* srl_bus_name = "pwmm/a/\\s_reg[2] " *) 
  (* srl_name = "pwmm/a/\\s_reg[2][2]_srl6___s_reg_r_4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s_reg[2][2]_srl6___s_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Din[2]),
        .Q(\s_reg[2][2]_srl6___s_reg_r_4_n_0 ));
  (* srl_bus_name = "pwmm/a/\\s_reg[2] " *) 
  (* srl_name = "pwmm/a/\\s_reg[2][3]_srl6___s_reg_r_4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s_reg[2][3]_srl6___s_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Din[3]),
        .Q(\s_reg[2][3]_srl6___s_reg_r_4_n_0 ));
  (* srl_bus_name = "pwmm/a/\\s_reg[2] " *) 
  (* srl_name = "pwmm/a/\\s_reg[2][4]_srl6___s_reg_r_4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s_reg[2][4]_srl6___s_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Din[4]),
        .Q(\s_reg[2][4]_srl6___s_reg_r_4_n_0 ));
  (* srl_bus_name = "pwmm/a/\\s_reg[2] " *) 
  (* srl_name = "pwmm/a/\\s_reg[2][5]_srl6___s_reg_r_4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s_reg[2][5]_srl6___s_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Din[5]),
        .Q(\s_reg[2][5]_srl6___s_reg_r_4_n_0 ));
  (* srl_bus_name = "pwmm/a/\\s_reg[2] " *) 
  (* srl_name = "pwmm/a/\\s_reg[2][6]_srl6___s_reg_r_4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s_reg[2][6]_srl6___s_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Din[6]),
        .Q(\s_reg[2][6]_srl6___s_reg_r_4_n_0 ));
  (* srl_bus_name = "pwmm/a/\\s_reg[2] " *) 
  (* srl_name = "pwmm/a/\\s_reg[2][7]_srl6___s_reg_r_4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s_reg[2][7]_srl6___s_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Din[7]),
        .Q(\s_reg[2][7]_srl6___s_reg_r_4_n_0 ));
  (* srl_bus_name = "pwmm/a/\\s_reg[2] " *) 
  (* srl_name = "pwmm/a/\\s_reg[2][8]_srl6___s_reg_r_4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s_reg[2][8]_srl6___s_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Din[8]),
        .Q(\s_reg[2][8]_srl6___s_reg_r_4_n_0 ));
  (* srl_bus_name = "pwmm/a/\\s_reg[2] " *) 
  (* srl_name = "pwmm/a/\\s_reg[2][9]_srl6___s_reg_r_4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \s_reg[2][9]_srl6___s_reg_r_4 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(Din[9]),
        .Q(\s_reg[2][9]_srl6___s_reg_r_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    s_reg_gate
       (.I0(\s_reg[1][10]_s_reg_r_5_n_0 ),
        .I1(s_reg_r_5_n_0),
        .O(s_reg_gate_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    s_reg_gate__0
       (.I0(\s_reg[1][9]_s_reg_r_5_n_0 ),
        .I1(s_reg_r_5_n_0),
        .O(s_reg_gate__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    s_reg_gate__1
       (.I0(\s_reg[1][8]_s_reg_r_5_n_0 ),
        .I1(s_reg_r_5_n_0),
        .O(s_reg_gate__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    s_reg_gate__2
       (.I0(\s_reg[1][7]_s_reg_r_5_n_0 ),
        .I1(s_reg_r_5_n_0),
        .O(s_reg_gate__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    s_reg_gate__3
       (.I0(\s_reg[1][6]_s_reg_r_5_n_0 ),
        .I1(s_reg_r_5_n_0),
        .O(s_reg_gate__3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    s_reg_gate__4
       (.I0(\s_reg[1][5]_s_reg_r_5_n_0 ),
        .I1(s_reg_r_5_n_0),
        .O(s_reg_gate__4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    s_reg_gate__5
       (.I0(\s_reg[1][4]_s_reg_r_5_n_0 ),
        .I1(s_reg_r_5_n_0),
        .O(s_reg_gate__5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    s_reg_gate__6
       (.I0(\s_reg[1][3]_s_reg_r_5_n_0 ),
        .I1(s_reg_r_5_n_0),
        .O(s_reg_gate__6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    s_reg_gate__7
       (.I0(\s_reg[1][2]_s_reg_r_5_n_0 ),
        .I1(s_reg_r_5_n_0),
        .O(s_reg_gate__7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    s_reg_gate__8
       (.I0(\s_reg[1][1]_s_reg_r_5_n_0 ),
        .I1(s_reg_r_5_n_0),
        .O(s_reg_gate__8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    s_reg_gate__9
       (.I0(\s_reg[1][0]_s_reg_r_5_n_0 ),
        .I1(s_reg_r_5_n_0),
        .O(s_reg_gate__9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_reg_r
       (.C(clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(s_reg_r_n_0),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    s_reg_r_0
       (.C(clk),
        .CE(1'b1),
        .D(s_reg_r_n_0),
        .Q(s_reg_r_0_n_0),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    s_reg_r_1
       (.C(clk),
        .CE(1'b1),
        .D(s_reg_r_0_n_0),
        .Q(s_reg_r_1_n_0),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    s_reg_r_2
       (.C(clk),
        .CE(1'b1),
        .D(s_reg_r_1_n_0),
        .Q(s_reg_r_2_n_0),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    s_reg_r_3
       (.C(clk),
        .CE(1'b1),
        .D(s_reg_r_2_n_0),
        .Q(s_reg_r_3_n_0),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    s_reg_r_4
       (.C(clk),
        .CE(1'b1),
        .D(s_reg_r_3_n_0),
        .Q(s_reg_r_4_n_0),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    s_reg_r_5
       (.C(clk),
        .CE(1'b1),
        .D(s_reg_r_4_n_0),
        .Q(s_reg_r_5_n_0),
        .R(reset));
endmodule

module clk_divider
   (clk,
    reset,
    divisor,
    slow_clk);
  input clk;
  input reset;
  input [31:0]divisor;
  output slow_clk;

  wire clk;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire [31:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_4 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[28]_i_1_n_4 ;
  wire \counter_reg[28]_i_1_n_5 ;
  wire \counter_reg[28]_i_1_n_6 ;
  wire \counter_reg[28]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire reset;
  wire slow_clk;
  wire slow_clk_i_11_n_0;
  wire slow_clk_i_12_n_0;
  wire slow_clk_i_13_n_0;
  wire slow_clk_i_14_n_0;
  wire slow_clk_i_16_n_0;
  wire slow_clk_i_17_n_0;
  wire slow_clk_i_18_n_0;
  wire slow_clk_i_19_n_0;
  wire slow_clk_i_1_n_0;
  wire slow_clk_i_20_n_0;
  wire slow_clk_i_21_n_0;
  wire slow_clk_i_22_n_0;
  wire slow_clk_i_23_n_0;
  wire slow_clk_i_24_n_0;
  wire slow_clk_i_25_n_0;
  wire slow_clk_i_26_n_0;
  wire slow_clk_i_27_n_0;
  wire slow_clk_i_28_n_0;
  wire slow_clk_i_29_n_0;
  wire slow_clk_i_4_n_0;
  wire slow_clk_i_5_n_0;
  wire slow_clk_i_6_n_0;
  wire slow_clk_i_7_n_0;
  wire slow_clk_i_8_n_0;
  wire slow_clk_i_9_n_0;
  wire slow_clk_reg_i_10_n_0;
  wire slow_clk_reg_i_15_n_0;
  wire slow_clk_reg_i_2_n_0;
  wire slow_clk_reg_i_3_n_0;
  wire [2:0]\NLW_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]NLW_slow_clk_reg_i_10_CO_UNCONNECTED;
  wire [3:0]NLW_slow_clk_reg_i_10_O_UNCONNECTED;
  wire [2:0]NLW_slow_clk_reg_i_15_CO_UNCONNECTED;
  wire [3:0]NLW_slow_clk_reg_i_15_O_UNCONNECTED;
  wire [2:0]NLW_slow_clk_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_slow_clk_reg_i_2_O_UNCONNECTED;
  wire [2:0]NLW_slow_clk_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_slow_clk_reg_i_3_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'hE)) 
    \counter[0]_i_1 
       (.I0(reset),
        .I1(slow_clk_reg_i_2_n_0),
        .O(\counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_3 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\NLW_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\NLW_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S(counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1_n_4 ,\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S(counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_4 ),
        .Q(counter_reg[27]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_7 ),
        .Q(counter_reg[28]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO(\NLW_counter_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[28]_i_1_n_4 ,\counter_reg[28]_i_1_n_5 ,\counter_reg[28]_i_1_n_6 ,\counter_reg[28]_i_1_n_7 }),
        .S(counter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_6 ),
        .Q(counter_reg[29]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_5 ),
        .Q(counter_reg[30]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[28]_i_1_n_4 ),
        .Q(counter_reg[31]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    slow_clk_i_1
       (.I0(slow_clk),
        .I1(slow_clk_reg_i_2_n_0),
        .I2(reset),
        .O(slow_clk_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slow_clk_i_11
       (.I0(counter_reg[22]),
        .I1(counter_reg[23]),
        .O(slow_clk_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slow_clk_i_12
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .O(slow_clk_i_12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    slow_clk_i_13
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .O(slow_clk_i_13_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    slow_clk_i_14
       (.I0(counter_reg[16]),
        .I1(counter_reg[17]),
        .O(slow_clk_i_14_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slow_clk_i_16
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .O(slow_clk_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    slow_clk_i_17
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .O(slow_clk_i_17_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    slow_clk_i_18
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .O(slow_clk_i_18_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    slow_clk_i_19
       (.I0(counter_reg[13]),
        .I1(counter_reg[12]),
        .O(slow_clk_i_19_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    slow_clk_i_20
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .O(slow_clk_i_20_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    slow_clk_i_21
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .O(slow_clk_i_21_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    slow_clk_i_22
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .O(slow_clk_i_22_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    slow_clk_i_23
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .O(slow_clk_i_23_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    slow_clk_i_24
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .O(slow_clk_i_24_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    slow_clk_i_25
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(slow_clk_i_25_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    slow_clk_i_26
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .O(slow_clk_i_26_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    slow_clk_i_27
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .O(slow_clk_i_27_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    slow_clk_i_28
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .O(slow_clk_i_28_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    slow_clk_i_29
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(slow_clk_i_29_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    slow_clk_i_4
       (.I0(counter_reg[30]),
        .I1(counter_reg[31]),
        .O(slow_clk_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    slow_clk_i_5
       (.I0(counter_reg[28]),
        .I1(counter_reg[29]),
        .O(slow_clk_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    slow_clk_i_6
       (.I0(counter_reg[30]),
        .I1(counter_reg[31]),
        .O(slow_clk_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    slow_clk_i_7
       (.I0(counter_reg[28]),
        .I1(counter_reg[29]),
        .O(slow_clk_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    slow_clk_i_8
       (.I0(counter_reg[26]),
        .I1(counter_reg[27]),
        .O(slow_clk_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    slow_clk_i_9
       (.I0(counter_reg[24]),
        .I1(counter_reg[25]),
        .O(slow_clk_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    slow_clk_reg
       (.C(clk),
        .CE(1'b1),
        .D(slow_clk_i_1_n_0),
        .Q(slow_clk),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 slow_clk_reg_i_10
       (.CI(slow_clk_reg_i_15_n_0),
        .CO({slow_clk_reg_i_10_n_0,NLW_slow_clk_reg_i_10_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,slow_clk_i_16_n_0,slow_clk_i_17_n_0,counter_reg[9]}),
        .O(NLW_slow_clk_reg_i_10_O_UNCONNECTED[3:0]),
        .S({slow_clk_i_18_n_0,slow_clk_i_19_n_0,slow_clk_i_20_n_0,slow_clk_i_21_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 slow_clk_reg_i_15
       (.CI(1'b0),
        .CO({slow_clk_reg_i_15_n_0,NLW_slow_clk_reg_i_15_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({slow_clk_i_22_n_0,slow_clk_i_23_n_0,slow_clk_i_24_n_0,slow_clk_i_25_n_0}),
        .O(NLW_slow_clk_reg_i_15_O_UNCONNECTED[3:0]),
        .S({slow_clk_i_26_n_0,slow_clk_i_27_n_0,slow_clk_i_28_n_0,slow_clk_i_29_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 slow_clk_reg_i_2
       (.CI(slow_clk_reg_i_3_n_0),
        .CO({slow_clk_reg_i_2_n_0,NLW_slow_clk_reg_i_2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({slow_clk_i_4_n_0,slow_clk_i_5_n_0,counter_reg[27],counter_reg[25]}),
        .O(NLW_slow_clk_reg_i_2_O_UNCONNECTED[3:0]),
        .S({slow_clk_i_6_n_0,slow_clk_i_7_n_0,slow_clk_i_8_n_0,slow_clk_i_9_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 slow_clk_reg_i_3
       (.CI(slow_clk_reg_i_10_n_0),
        .CO({slow_clk_reg_i_3_n_0,NLW_slow_clk_reg_i_3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter_reg[19],counter_reg[17]}),
        .O(NLW_slow_clk_reg_i_3_O_UNCONNECTED[3:0]),
        .S({slow_clk_i_11_n_0,slow_clk_i_12_n_0,slow_clk_i_13_n_0,slow_clk_i_14_n_0}));
endmodule

module display
   (clk,
    reset,
    state,
    x,
    y,
    CA,
    CB,
    CC,
    CD,
    CE,
    CF,
    CG,
    DP,
    AN1,
    AN2,
    AN3,
    AN4);
  input clk;
  input reset;
  input [1:0]state;
  input [3:0]x;
  input [3:0]y;
  output CA;
  output CB;
  output CC;
  output CD;
  output CE;
  output CF;
  output CG;
  output DP;
  output AN1;
  output AN2;
  output AN3;
  output AN4;

  wire AN1;
  wire AN2;
  wire AN3;
  wire AN4;
  wire CA;
  wire CB;
  wire CC;
  wire CD;
  wire CE;
  wire CF;
  wire CG;
  wire clk;
  wire \count[0]_i_2_n_0 ;
  wire [13:0]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire [6:0]digit;
  wire [5:0]digit2;
  wire \digit2[0]_i_1_n_0 ;
  wire \digit2[3]_i_1_n_0 ;
  wire \digit2[5]_i_1_n_0 ;
  wire [6:0]digit3;
  wire \digit3_reg_n_0_[0] ;
  wire \digit3_reg_n_0_[1] ;
  wire \digit3_reg_n_0_[2] ;
  wire \digit3_reg_n_0_[3] ;
  wire \digit3_reg_n_0_[4] ;
  wire \digit3_reg_n_0_[5] ;
  wire \digit3_reg_n_0_[6] ;
  wire [6:0]digit4;
  wire \digit4[5]_i_1_n_0 ;
  wire \digit4_reg_n_0_[0] ;
  wire \digit4_reg_n_0_[1] ;
  wire \digit4_reg_n_0_[2] ;
  wire \digit4_reg_n_0_[3] ;
  wire \digit4_reg_n_0_[4] ;
  wire \digit4_reg_n_0_[5] ;
  wire \digit4_reg_n_0_[6] ;
  wire \digit[2]_inv_i_2_n_0 ;
  wire \digit[3]_inv_i_2_n_0 ;
  wire \digit[4]_inv_i_2_n_0 ;
  wire \digit[5]_i_1_n_0 ;
  wire \digit[5]_i_2_n_0 ;
  wire \digit[6]_inv_i_1_n_0 ;
  wire \digit_reg_n_0_[5] ;
  wire p_0_in;
  wire q;
  wire \q[0]_i_1_n_0 ;
  wire \q[1]_i_1_n_0 ;
  wire \q[2]_i_1_n_0 ;
  wire \q[3]_i_1_n_0 ;
  wire \q[3]_i_3_n_0 ;
  wire \q[3]_i_4_n_0 ;
  wire \q_reg_n_0_[0] ;
  wire \q_reg_n_0_[2] ;
  wire \q_reg_n_0_[3] ;
  wire reset;
  wire [1:0]state;
  wire [3:0]x;
  wire [3:0]y;
  wire [2:0]\NLW_count_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_reg[12]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    AN1_INST_0
       (.I0(\q_reg_n_0_[3] ),
        .O(AN1));
  LUT1 #(
    .INIT(2'h1)) 
    AN2_INST_0
       (.I0(\q_reg_n_0_[2] ),
        .O(AN2));
  LUT1 #(
    .INIT(2'h1)) 
    AN3_INST_0
       (.I0(p_0_in),
        .O(AN3));
  LUT1 #(
    .INIT(2'h1)) 
    AN4_INST_0
       (.I0(\q_reg_n_0_[0] ),
        .O(AN4));
  LUT1 #(
    .INIT(2'h1)) 
    CB_INST_0
       (.I0(\digit_reg_n_0_[5] ),
        .O(CB));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(count_reg[0]),
        .O(\count[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(count_reg[0]),
        .R(reset));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\NLW_count_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({count_reg[3:1],\count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(reset));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO(\NLW_count_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[12]_i_1_O_UNCONNECTED [3:2],\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,count_reg[13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(count_reg[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(count_reg[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(count_reg[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(reset));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(reset));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(reset));
  LUT2 #(
    .INIT(4'hB)) 
    \digit2[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\digit2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \digit2[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\digit2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \digit2[5]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\digit2[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\digit2[0]_i_1_n_0 ),
        .Q(digit2[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\digit2[3]_i_1_n_0 ),
        .Q(digit2[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\digit2[5]_i_1_n_0 ),
        .Q(digit2[5]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hBEFE)) 
    \digit3[0]_i_1 
       (.I0(x[3]),
        .I1(x[1]),
        .I2(x[2]),
        .I3(x[0]),
        .O(digit3[0]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h0467)) 
    \digit3[1]_i_1 
       (.I0(x[3]),
        .I1(x[2]),
        .I2(x[0]),
        .I3(x[1]),
        .O(digit3[1]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h0047)) 
    \digit3[2]_i_1 
       (.I0(x[3]),
        .I1(x[1]),
        .I2(x[2]),
        .I3(x[0]),
        .O(digit3[2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h1563)) 
    \digit3[3]_i_1 
       (.I0(x[3]),
        .I1(x[2]),
        .I2(x[0]),
        .I3(x[1]),
        .O(digit3[3]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h5747)) 
    \digit3[4]_i_1 
       (.I0(x[3]),
        .I1(x[2]),
        .I2(x[1]),
        .I3(x[0]),
        .O(digit3[4]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h5317)) 
    \digit3[5]_i_1 
       (.I0(x[3]),
        .I1(x[2]),
        .I2(x[1]),
        .I3(x[0]),
        .O(digit3[5]));
  LUT4 #(
    .INIT(16'h5653)) 
    \digit3[6]_i_1 
       (.I0(x[3]),
        .I1(x[2]),
        .I2(x[1]),
        .I3(x[0]),
        .O(digit3[6]));
  FDRE #(
    .INIT(1'b0)) 
    \digit3_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(digit3[0]),
        .Q(\digit3_reg_n_0_[0] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \digit3_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(digit3[1]),
        .Q(\digit3_reg_n_0_[1] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \digit3_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(digit3[2]),
        .Q(\digit3_reg_n_0_[2] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \digit3_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(digit3[3]),
        .Q(\digit3_reg_n_0_[3] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \digit3_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(digit3[4]),
        .Q(\digit3_reg_n_0_[4] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \digit3_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(digit3[5]),
        .Q(\digit3_reg_n_0_[5] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \digit3_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(digit3[6]),
        .Q(\digit3_reg_n_0_[6] ),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \digit4[0]_i_1 
       (.I0(y[0]),
        .I1(y[2]),
        .I2(y[1]),
        .O(digit4[0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    \digit4[1]_i_1 
       (.I0(y[0]),
        .I1(y[2]),
        .I2(y[1]),
        .O(digit4[1]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \digit4[2]_i_1 
       (.I0(y[1]),
        .I1(y[2]),
        .I2(y[0]),
        .O(digit4[2]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h6B)) 
    \digit4[3]_i_1 
       (.I0(y[1]),
        .I1(y[2]),
        .I2(y[0]),
        .O(digit4[3]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \digit4[4]_i_1 
       (.I0(y[2]),
        .I1(y[1]),
        .I2(y[0]),
        .O(digit4[4]));
  LUT3 #(
    .INIT(8'h9F)) 
    \digit4[5]_i_1 
       (.I0(y[0]),
        .I1(y[1]),
        .I2(y[2]),
        .O(\digit4[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hED)) 
    \digit4[6]_i_1 
       (.I0(y[2]),
        .I1(y[1]),
        .I2(y[0]),
        .O(digit4[6]));
  FDRE #(
    .INIT(1'b0)) 
    \digit4_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(digit4[0]),
        .Q(\digit4_reg_n_0_[0] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \digit4_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(digit4[1]),
        .Q(\digit4_reg_n_0_[1] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \digit4_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(digit4[2]),
        .Q(\digit4_reg_n_0_[2] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \digit4_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(digit4[3]),
        .Q(\digit4_reg_n_0_[3] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \digit4_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(digit4[4]),
        .Q(\digit4_reg_n_0_[4] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \digit4_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\digit4[5]_i_1_n_0 ),
        .Q(\digit4_reg_n_0_[5] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \digit4_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(digit4[6]),
        .Q(\digit4_reg_n_0_[6] ),
        .R(reset));
  LUT6 #(
    .INIT(64'h10BF10BA10BF15BF)) 
    \digit[0]_inv_i_1 
       (.I0(\digit[4]_inv_i_2_n_0 ),
        .I1(\digit3_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[2] ),
        .I3(digit2[0]),
        .I4(p_0_in),
        .I5(\digit4_reg_n_0_[0] ),
        .O(digit[0]));
  LUT6 #(
    .INIT(64'h4777477747444777)) 
    \digit[1]_inv_i_1 
       (.I0(digit2[3]),
        .I1(\digit[4]_inv_i_2_n_0 ),
        .I2(\digit3_reg_n_0_[1] ),
        .I3(\q_reg_n_0_[2] ),
        .I4(\digit4_reg_n_0_[1] ),
        .I5(p_0_in),
        .O(digit[1]));
  LUT6 #(
    .INIT(64'h5554544555575775)) 
    \digit[2]_inv_i_1 
       (.I0(digit2[5]),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[2] ),
        .I3(\q_reg_n_0_[3] ),
        .I4(p_0_in),
        .I5(\digit[2]_inv_i_2_n_0 ),
        .O(digit[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \digit[2]_inv_i_2 
       (.I0(\digit3_reg_n_0_[2] ),
        .I1(\q_reg_n_0_[2] ),
        .I2(digit2[3]),
        .I3(p_0_in),
        .I4(\digit4_reg_n_0_[2] ),
        .O(\digit[2]_inv_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5554544555575775)) 
    \digit[3]_inv_i_1 
       (.I0(digit2[5]),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[2] ),
        .I3(\q_reg_n_0_[3] ),
        .I4(p_0_in),
        .I5(\digit[3]_inv_i_2_n_0 ),
        .O(digit[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \digit[3]_inv_i_2 
       (.I0(\digit3_reg_n_0_[3] ),
        .I1(\q_reg_n_0_[2] ),
        .I2(digit2[3]),
        .I3(p_0_in),
        .I4(\digit4_reg_n_0_[3] ),
        .O(\digit[3]_inv_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h10BF10BA10BF15BF)) 
    \digit[4]_inv_i_1 
       (.I0(\digit[4]_inv_i_2_n_0 ),
        .I1(\digit3_reg_n_0_[4] ),
        .I2(\q_reg_n_0_[2] ),
        .I3(digit2[5]),
        .I4(p_0_in),
        .I5(\digit4_reg_n_0_[4] ),
        .O(digit[4]));
  LUT4 #(
    .INIT(16'hFEF9)) 
    \digit[4]_inv_i_2 
       (.I0(\q_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[2] ),
        .O(\digit[4]_inv_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \digit[5]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .I1(\digit[5]_i_2_n_0 ),
        .O(\digit[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCCF77FFFFCF77)) 
    \digit[5]_i_2 
       (.I0(digit2[5]),
        .I1(p_0_in),
        .I2(\digit3_reg_n_0_[5] ),
        .I3(\q_reg_n_0_[2] ),
        .I4(\q_reg_n_0_[3] ),
        .I5(\digit4_reg_n_0_[5] ),
        .O(\digit[5]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \digit[6]_inv_i_1 
       (.I0(reset),
        .O(\digit[6]_inv_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFC7F7)) 
    \digit[6]_inv_i_2 
       (.I0(\digit4_reg_n_0_[6] ),
        .I1(\q_reg_n_0_[3] ),
        .I2(\q_reg_n_0_[2] ),
        .I3(\digit3_reg_n_0_[6] ),
        .I4(\q_reg_n_0_[0] ),
        .I5(p_0_in),
        .O(digit[6]));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \digit_reg[0]_inv 
       (.C(clk),
        .CE(\digit[6]_inv_i_1_n_0 ),
        .D(digit[0]),
        .Q(CG),
        .R(1'b0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \digit_reg[1]_inv 
       (.C(clk),
        .CE(\digit[6]_inv_i_1_n_0 ),
        .D(digit[1]),
        .Q(CF),
        .R(1'b0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \digit_reg[2]_inv 
       (.C(clk),
        .CE(\digit[6]_inv_i_1_n_0 ),
        .D(digit[2]),
        .Q(CE),
        .R(1'b0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \digit_reg[3]_inv 
       (.C(clk),
        .CE(\digit[6]_inv_i_1_n_0 ),
        .D(digit[3]),
        .Q(CD),
        .R(1'b0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \digit_reg[4]_inv 
       (.C(clk),
        .CE(\digit[6]_inv_i_1_n_0 ),
        .D(digit[4]),
        .Q(CC),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit_reg[5] 
       (.C(clk),
        .CE(\digit[6]_inv_i_1_n_0 ),
        .D(\digit[5]_i_1_n_0 ),
        .Q(\digit_reg_n_0_[5] ),
        .R(1'b0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \digit_reg[6]_inv 
       (.C(clk),
        .CE(\digit[6]_inv_i_1_n_0 ),
        .D(digit[6]),
        .Q(CA),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2AF0)) 
    \q[0]_i_1 
       (.I0(\q_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(\q_reg_n_0_[0] ),
        .I3(q),
        .O(\q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h4A)) 
    \q[1]_i_1 
       (.I0(p_0_in),
        .I1(\q_reg_n_0_[0] ),
        .I2(q),
        .O(\q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \q[2]_i_1 
       (.I0(p_0_in),
        .I1(\q_reg_n_0_[0] ),
        .I2(q),
        .I3(\q_reg_n_0_[2] ),
        .O(\q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8FFF800)) 
    \q[3]_i_1 
       (.I0(p_0_in),
        .I1(\q_reg_n_0_[0] ),
        .I2(\q_reg_n_0_[2] ),
        .I3(q),
        .I4(\q_reg_n_0_[3] ),
        .I5(reset),
        .O(\q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \q[3]_i_2 
       (.I0(\q[3]_i_3_n_0 ),
        .I1(\q[3]_i_4_n_0 ),
        .I2(count_reg[5]),
        .I3(count_reg[4]),
        .I4(count_reg[7]),
        .I5(count_reg[2]),
        .O(q));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[3]_i_3 
       (.I0(count_reg[12]),
        .I1(count_reg[0]),
        .I2(count_reg[3]),
        .I3(count_reg[8]),
        .I4(count_reg[6]),
        .I5(count_reg[10]),
        .O(\q[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[3]_i_4 
       (.I0(count_reg[13]),
        .I1(count_reg[11]),
        .I2(count_reg[9]),
        .I3(count_reg[1]),
        .O(\q[3]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\q[0]_i_1_n_0 ),
        .Q(\q_reg_n_0_[0] ),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\q[1]_i_1_n_0 ),
        .Q(p_0_in),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\q[2]_i_1_n_0 ),
        .Q(\q_reg_n_0_[2] ),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\q[3]_i_1_n_0 ),
        .Q(\q_reg_n_0_[3] ),
        .R(1'b0));
endmodule

module divider
   (clk,
    reset,
    x,
    y,
    a,
    b);
  input clk;
  input reset;
  input [31:0]x;
  input [31:0]y;
  output [31:0]a;
  output [31:0]b;

  wire [31:0]a;
  wire \a[10]_i_10_n_0 ;
  wire \a[10]_i_11_n_0 ;
  wire \a[10]_i_13_n_0 ;
  wire \a[10]_i_14_n_0 ;
  wire \a[10]_i_15_n_0 ;
  wire \a[10]_i_16_n_0 ;
  wire \a[10]_i_17_n_0 ;
  wire \a[10]_i_18_n_0 ;
  wire \a[10]_i_19_n_0 ;
  wire \a[10]_i_1_n_0 ;
  wire \a[10]_i_20_n_0 ;
  wire \a[10]_i_22_n_0 ;
  wire \a[10]_i_23_n_0 ;
  wire \a[10]_i_24_n_0 ;
  wire \a[10]_i_25_n_0 ;
  wire \a[10]_i_26_n_0 ;
  wire \a[10]_i_27_n_0 ;
  wire \a[10]_i_28_n_0 ;
  wire \a[10]_i_29_n_0 ;
  wire \a[10]_i_30_n_0 ;
  wire \a[10]_i_31_n_0 ;
  wire \a[10]_i_32_n_0 ;
  wire \a[10]_i_33_n_0 ;
  wire \a[10]_i_34_n_0 ;
  wire \a[10]_i_35_n_0 ;
  wire \a[10]_i_36_n_0 ;
  wire \a[10]_i_4_n_0 ;
  wire \a[10]_i_5_n_0 ;
  wire \a[10]_i_6_n_0 ;
  wire \a[10]_i_7_n_0 ;
  wire \a[10]_i_8_n_0 ;
  wire \a[10]_i_9_n_0 ;
  wire \a_reg[10]_i_12_n_0 ;
  wire \a_reg[10]_i_21_n_0 ;
  wire \a_reg[10]_i_2_n_0 ;
  wire \a_reg[10]_i_3_n_0 ;
  wire clk;
  wire divide_counts;
  wire \divide_counts[0]_i_1_n_0 ;
  wire \divide_counts[10]_i_1_n_0 ;
  wire \divide_counts[1]_i_1_n_0 ;
  wire \divide_counts[2]_i_1_n_0 ;
  wire \divide_counts[3]_i_1_n_0 ;
  wire \divide_counts[4]_i_1_n_0 ;
  wire \divide_counts[5]_i_1_n_0 ;
  wire \divide_counts[6]_i_1_n_0 ;
  wire \divide_counts[7]_i_1_n_0 ;
  wire \divide_counts[8]_i_1_n_0 ;
  wire \divide_counts[9]_i_1_n_0 ;
  wire \divide_counts_reg[10]_i_2_n_6 ;
  wire \divide_counts_reg[10]_i_2_n_7 ;
  wire \divide_counts_reg[4]_i_2_n_0 ;
  wire \divide_counts_reg[4]_i_2_n_4 ;
  wire \divide_counts_reg[4]_i_2_n_5 ;
  wire \divide_counts_reg[4]_i_2_n_6 ;
  wire \divide_counts_reg[4]_i_2_n_7 ;
  wire \divide_counts_reg[8]_i_2_n_0 ;
  wire \divide_counts_reg[8]_i_2_n_4 ;
  wire \divide_counts_reg[8]_i_2_n_5 ;
  wire \divide_counts_reg[8]_i_2_n_6 ;
  wire \divide_counts_reg[8]_i_2_n_7 ;
  wire \divide_counts_reg_n_0_[0] ;
  wire \divide_counts_reg_n_0_[10] ;
  wire \divide_counts_reg_n_0_[1] ;
  wire \divide_counts_reg_n_0_[2] ;
  wire \divide_counts_reg_n_0_[3] ;
  wire \divide_counts_reg_n_0_[4] ;
  wire \divide_counts_reg_n_0_[5] ;
  wire \divide_counts_reg_n_0_[6] ;
  wire \divide_counts_reg_n_0_[7] ;
  wire \divide_counts_reg_n_0_[8] ;
  wire \divide_counts_reg_n_0_[9] ;
  wire [31:0]dividend;
  wire \dividend[0]_i_1_n_0 ;
  wire \dividend[10]_i_1_n_0 ;
  wire \dividend[11]_i_1_n_0 ;
  wire \dividend[11]_i_3_n_0 ;
  wire \dividend[11]_i_4_n_0 ;
  wire \dividend[12]_i_1_n_0 ;
  wire \dividend[13]_i_1_n_0 ;
  wire \dividend[14]_i_1_n_0 ;
  wire \dividend[15]_i_1_n_0 ;
  wire \dividend[15]_i_3_n_0 ;
  wire \dividend[15]_i_4_n_0 ;
  wire \dividend[15]_i_5_n_0 ;
  wire \dividend[15]_i_6_n_0 ;
  wire \dividend[16]_i_1_n_0 ;
  wire \dividend[17]_i_1_n_0 ;
  wire \dividend[18]_i_1_n_0 ;
  wire \dividend[19]_i_1_n_0 ;
  wire \dividend[19]_i_3_n_0 ;
  wire \dividend[19]_i_4_n_0 ;
  wire \dividend[19]_i_5_n_0 ;
  wire \dividend[19]_i_6_n_0 ;
  wire \dividend[1]_i_1_n_0 ;
  wire \dividend[20]_i_1_n_0 ;
  wire \dividend[21]_i_1_n_0 ;
  wire \dividend[22]_i_1_n_0 ;
  wire \dividend[23]_i_1_n_0 ;
  wire \dividend[23]_i_3_n_0 ;
  wire \dividend[23]_i_4_n_0 ;
  wire \dividend[23]_i_5_n_0 ;
  wire \dividend[23]_i_6_n_0 ;
  wire \dividend[24]_i_1_n_0 ;
  wire \dividend[25]_i_1_n_0 ;
  wire \dividend[26]_i_1_n_0 ;
  wire \dividend[27]_i_1_n_0 ;
  wire \dividend[27]_i_3_n_0 ;
  wire \dividend[27]_i_4_n_0 ;
  wire \dividend[27]_i_5_n_0 ;
  wire \dividend[27]_i_6_n_0 ;
  wire \dividend[28]_i_1_n_0 ;
  wire \dividend[29]_i_1_n_0 ;
  wire \dividend[2]_i_1_n_0 ;
  wire \dividend[30]_i_1_n_0 ;
  wire \dividend[31]_i_2_n_0 ;
  wire \dividend[31]_i_4_n_0 ;
  wire \dividend[31]_i_5_n_0 ;
  wire \dividend[31]_i_6_n_0 ;
  wire \dividend[31]_i_7_n_0 ;
  wire \dividend[3]_i_1_n_0 ;
  wire \dividend[3]_i_3_n_0 ;
  wire \dividend[3]_i_4_n_0 ;
  wire \dividend[3]_i_5_n_0 ;
  wire \dividend[3]_i_6_n_0 ;
  wire \dividend[4]_i_1_n_0 ;
  wire \dividend[5]_i_1_n_0 ;
  wire \dividend[6]_i_1_n_0 ;
  wire \dividend[7]_i_1_n_0 ;
  wire \dividend[7]_i_3_n_0 ;
  wire \dividend[7]_i_4_n_0 ;
  wire \dividend[7]_i_5_n_0 ;
  wire \dividend[8]_i_1_n_0 ;
  wire \dividend[9]_i_1_n_0 ;
  wire \dividend_reg[11]_i_2_n_0 ;
  wire \dividend_reg[11]_i_2_n_4 ;
  wire \dividend_reg[11]_i_2_n_5 ;
  wire \dividend_reg[11]_i_2_n_6 ;
  wire \dividend_reg[11]_i_2_n_7 ;
  wire \dividend_reg[15]_i_2_n_0 ;
  wire \dividend_reg[15]_i_2_n_4 ;
  wire \dividend_reg[15]_i_2_n_5 ;
  wire \dividend_reg[15]_i_2_n_6 ;
  wire \dividend_reg[15]_i_2_n_7 ;
  wire \dividend_reg[19]_i_2_n_0 ;
  wire \dividend_reg[19]_i_2_n_4 ;
  wire \dividend_reg[19]_i_2_n_5 ;
  wire \dividend_reg[19]_i_2_n_6 ;
  wire \dividend_reg[19]_i_2_n_7 ;
  wire \dividend_reg[23]_i_2_n_0 ;
  wire \dividend_reg[23]_i_2_n_4 ;
  wire \dividend_reg[23]_i_2_n_5 ;
  wire \dividend_reg[23]_i_2_n_6 ;
  wire \dividend_reg[23]_i_2_n_7 ;
  wire \dividend_reg[27]_i_2_n_0 ;
  wire \dividend_reg[27]_i_2_n_4 ;
  wire \dividend_reg[27]_i_2_n_5 ;
  wire \dividend_reg[27]_i_2_n_6 ;
  wire \dividend_reg[27]_i_2_n_7 ;
  wire \dividend_reg[31]_i_3_n_4 ;
  wire \dividend_reg[31]_i_3_n_5 ;
  wire \dividend_reg[31]_i_3_n_6 ;
  wire \dividend_reg[31]_i_3_n_7 ;
  wire \dividend_reg[3]_i_2_n_0 ;
  wire \dividend_reg[3]_i_2_n_4 ;
  wire \dividend_reg[3]_i_2_n_5 ;
  wire \dividend_reg[3]_i_2_n_6 ;
  wire \dividend_reg[3]_i_2_n_7 ;
  wire \dividend_reg[7]_i_2_n_0 ;
  wire \dividend_reg[7]_i_2_n_4 ;
  wire \dividend_reg[7]_i_2_n_5 ;
  wire \dividend_reg[7]_i_2_n_6 ;
  wire \dividend_reg[7]_i_2_n_7 ;
  wire reset;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire [31:0]x;
  wire [2:0]\NLW_a_reg[10]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_a_reg[10]_i_12_O_UNCONNECTED ;
  wire [2:0]\NLW_a_reg[10]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_a_reg[10]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_a_reg[10]_i_21_CO_UNCONNECTED ;
  wire [3:0]\NLW_a_reg[10]_i_21_O_UNCONNECTED ;
  wire [2:0]\NLW_a_reg[10]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_a_reg[10]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_divide_counts_reg[10]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_divide_counts_reg[10]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_divide_counts_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_divide_counts_reg[8]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_dividend_reg[11]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_dividend_reg[15]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_dividend_reg[19]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_dividend_reg[23]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_dividend_reg[27]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_dividend_reg[31]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_dividend_reg[3]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_dividend_reg[7]_i_2_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h04)) 
    \a[10]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\a_reg[10]_i_2_n_0 ),
        .O(\a[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[10]_i_10 
       (.I0(dividend[26]),
        .I1(dividend[27]),
        .O(\a[10]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[10]_i_11 
       (.I0(dividend[24]),
        .I1(dividend[25]),
        .O(\a[10]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \a[10]_i_13 
       (.I0(dividend[22]),
        .I1(dividend[23]),
        .O(\a[10]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \a[10]_i_14 
       (.I0(dividend[20]),
        .I1(dividend[21]),
        .O(\a[10]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \a[10]_i_15 
       (.I0(dividend[18]),
        .I1(dividend[19]),
        .O(\a[10]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \a[10]_i_16 
       (.I0(dividend[16]),
        .I1(dividend[17]),
        .O(\a[10]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[10]_i_17 
       (.I0(dividend[22]),
        .I1(dividend[23]),
        .O(\a[10]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[10]_i_18 
       (.I0(dividend[20]),
        .I1(dividend[21]),
        .O(\a[10]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[10]_i_19 
       (.I0(dividend[18]),
        .I1(dividend[19]),
        .O(\a[10]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[10]_i_20 
       (.I0(dividend[16]),
        .I1(dividend[17]),
        .O(\a[10]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \a[10]_i_22 
       (.I0(dividend[14]),
        .I1(dividend[15]),
        .O(\a[10]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \a[10]_i_23 
       (.I0(dividend[12]),
        .I1(dividend[13]),
        .O(\a[10]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \a[10]_i_24 
       (.I0(dividend[8]),
        .I1(dividend[9]),
        .O(\a[10]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[10]_i_25 
       (.I0(dividend[14]),
        .I1(dividend[15]),
        .O(\a[10]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[10]_i_26 
       (.I0(dividend[12]),
        .I1(dividend[13]),
        .O(\a[10]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a[10]_i_27 
       (.I0(dividend[10]),
        .I1(dividend[11]),
        .O(\a[10]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a[10]_i_28 
       (.I0(dividend[9]),
        .I1(dividend[8]),
        .O(\a[10]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \a[10]_i_29 
       (.I0(dividend[6]),
        .I1(dividend[7]),
        .O(\a[10]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \a[10]_i_30 
       (.I0(dividend[4]),
        .I1(dividend[5]),
        .O(\a[10]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \a[10]_i_31 
       (.I0(dividend[2]),
        .I1(dividend[3]),
        .O(\a[10]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \a[10]_i_32 
       (.I0(dividend[0]),
        .I1(dividend[1]),
        .O(\a[10]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \a[10]_i_33 
       (.I0(dividend[7]),
        .I1(dividend[6]),
        .O(\a[10]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[10]_i_34 
       (.I0(dividend[4]),
        .I1(dividend[5]),
        .O(\a[10]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[10]_i_35 
       (.I0(dividend[2]),
        .I1(dividend[3]),
        .O(\a[10]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[10]_i_36 
       (.I0(dividend[0]),
        .I1(dividend[1]),
        .O(\a[10]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \a[10]_i_4 
       (.I0(dividend[30]),
        .I1(dividend[31]),
        .O(\a[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \a[10]_i_5 
       (.I0(dividend[28]),
        .I1(dividend[29]),
        .O(\a[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \a[10]_i_6 
       (.I0(dividend[26]),
        .I1(dividend[27]),
        .O(\a[10]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \a[10]_i_7 
       (.I0(dividend[24]),
        .I1(dividend[25]),
        .O(\a[10]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[10]_i_8 
       (.I0(dividend[30]),
        .I1(dividend[31]),
        .O(\a[10]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \a[10]_i_9 
       (.I0(dividend[28]),
        .I1(dividend[29]),
        .O(\a[10]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[0] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[0] ),
        .Q(a[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[10] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[10] ),
        .Q(a[10]),
        .R(reset));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 \a_reg[10]_i_12 
       (.CI(\a_reg[10]_i_21_n_0 ),
        .CO({\a_reg[10]_i_12_n_0 ,\NLW_a_reg[10]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\a[10]_i_22_n_0 ,\a[10]_i_23_n_0 ,dividend[11],\a[10]_i_24_n_0 }),
        .O(\NLW_a_reg[10]_i_12_O_UNCONNECTED [3:0]),
        .S({\a[10]_i_25_n_0 ,\a[10]_i_26_n_0 ,\a[10]_i_27_n_0 ,\a[10]_i_28_n_0 }));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 \a_reg[10]_i_2 
       (.CI(\a_reg[10]_i_3_n_0 ),
        .CO({\a_reg[10]_i_2_n_0 ,\NLW_a_reg[10]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\a[10]_i_4_n_0 ,\a[10]_i_5_n_0 ,\a[10]_i_6_n_0 ,\a[10]_i_7_n_0 }),
        .O(\NLW_a_reg[10]_i_2_O_UNCONNECTED [3:0]),
        .S({\a[10]_i_8_n_0 ,\a[10]_i_9_n_0 ,\a[10]_i_10_n_0 ,\a[10]_i_11_n_0 }));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 \a_reg[10]_i_21 
       (.CI(1'b0),
        .CO({\a_reg[10]_i_21_n_0 ,\NLW_a_reg[10]_i_21_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\a[10]_i_29_n_0 ,\a[10]_i_30_n_0 ,\a[10]_i_31_n_0 ,\a[10]_i_32_n_0 }),
        .O(\NLW_a_reg[10]_i_21_O_UNCONNECTED [3:0]),
        .S({\a[10]_i_33_n_0 ,\a[10]_i_34_n_0 ,\a[10]_i_35_n_0 ,\a[10]_i_36_n_0 }));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 \a_reg[10]_i_3 
       (.CI(\a_reg[10]_i_12_n_0 ),
        .CO({\a_reg[10]_i_3_n_0 ,\NLW_a_reg[10]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\a[10]_i_13_n_0 ,\a[10]_i_14_n_0 ,\a[10]_i_15_n_0 ,\a[10]_i_16_n_0 }),
        .O(\NLW_a_reg[10]_i_3_O_UNCONNECTED [3:0]),
        .S({\a[10]_i_17_n_0 ,\a[10]_i_18_n_0 ,\a[10]_i_19_n_0 ,\a[10]_i_20_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[1] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[1] ),
        .Q(a[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[2] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[2] ),
        .Q(a[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[3] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[3] ),
        .Q(a[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[4] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[4] ),
        .Q(a[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[5] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[5] ),
        .Q(a[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[6] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[6] ),
        .Q(a[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[7] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[7] ),
        .Q(a[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[8] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[8] ),
        .Q(a[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[9] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[9] ),
        .Q(a[9]),
        .R(reset));
  LUT2 #(
    .INIT(4'h2)) 
    \divide_counts[0]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg_n_0_[0] ),
        .O(\divide_counts[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[10]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[10]_i_2_n_6 ),
        .O(\divide_counts[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[1]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[4]_i_2_n_7 ),
        .O(\divide_counts[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[2]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[4]_i_2_n_6 ),
        .O(\divide_counts[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[3]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[4]_i_2_n_5 ),
        .O(\divide_counts[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[4]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[4]_i_2_n_4 ),
        .O(\divide_counts[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[5]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[8]_i_2_n_7 ),
        .O(\divide_counts[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[6]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[8]_i_2_n_6 ),
        .O(\divide_counts[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[7]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[8]_i_2_n_5 ),
        .O(\divide_counts[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[8]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[8]_i_2_n_4 ),
        .O(\divide_counts[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[9]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[10]_i_2_n_7 ),
        .O(\divide_counts[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divide_counts_reg[0] 
       (.C(clk),
        .CE(divide_counts),
        .D(\divide_counts[0]_i_1_n_0 ),
        .Q(\divide_counts_reg_n_0_[0] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divide_counts_reg[10] 
       (.C(clk),
        .CE(divide_counts),
        .D(\divide_counts[10]_i_1_n_0 ),
        .Q(\divide_counts_reg_n_0_[10] ),
        .R(reset));
  CARRY4 \divide_counts_reg[10]_i_2 
       (.CI(\divide_counts_reg[8]_i_2_n_0 ),
        .CO(\NLW_divide_counts_reg[10]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_divide_counts_reg[10]_i_2_O_UNCONNECTED [3:2],\divide_counts_reg[10]_i_2_n_6 ,\divide_counts_reg[10]_i_2_n_7 }),
        .S({1'b0,1'b0,\divide_counts_reg_n_0_[10] ,\divide_counts_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \divide_counts_reg[1] 
       (.C(clk),
        .CE(divide_counts),
        .D(\divide_counts[1]_i_1_n_0 ),
        .Q(\divide_counts_reg_n_0_[1] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divide_counts_reg[2] 
       (.C(clk),
        .CE(divide_counts),
        .D(\divide_counts[2]_i_1_n_0 ),
        .Q(\divide_counts_reg_n_0_[2] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divide_counts_reg[3] 
       (.C(clk),
        .CE(divide_counts),
        .D(\divide_counts[3]_i_1_n_0 ),
        .Q(\divide_counts_reg_n_0_[3] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divide_counts_reg[4] 
       (.C(clk),
        .CE(divide_counts),
        .D(\divide_counts[4]_i_1_n_0 ),
        .Q(\divide_counts_reg_n_0_[4] ),
        .R(reset));
  CARRY4 \divide_counts_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\divide_counts_reg[4]_i_2_n_0 ,\NLW_divide_counts_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\divide_counts_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\divide_counts_reg[4]_i_2_n_4 ,\divide_counts_reg[4]_i_2_n_5 ,\divide_counts_reg[4]_i_2_n_6 ,\divide_counts_reg[4]_i_2_n_7 }),
        .S({\divide_counts_reg_n_0_[4] ,\divide_counts_reg_n_0_[3] ,\divide_counts_reg_n_0_[2] ,\divide_counts_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \divide_counts_reg[5] 
       (.C(clk),
        .CE(divide_counts),
        .D(\divide_counts[5]_i_1_n_0 ),
        .Q(\divide_counts_reg_n_0_[5] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divide_counts_reg[6] 
       (.C(clk),
        .CE(divide_counts),
        .D(\divide_counts[6]_i_1_n_0 ),
        .Q(\divide_counts_reg_n_0_[6] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divide_counts_reg[7] 
       (.C(clk),
        .CE(divide_counts),
        .D(\divide_counts[7]_i_1_n_0 ),
        .Q(\divide_counts_reg_n_0_[7] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divide_counts_reg[8] 
       (.C(clk),
        .CE(divide_counts),
        .D(\divide_counts[8]_i_1_n_0 ),
        .Q(\divide_counts_reg_n_0_[8] ),
        .R(reset));
  CARRY4 \divide_counts_reg[8]_i_2 
       (.CI(\divide_counts_reg[4]_i_2_n_0 ),
        .CO({\divide_counts_reg[8]_i_2_n_0 ,\NLW_divide_counts_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\divide_counts_reg[8]_i_2_n_4 ,\divide_counts_reg[8]_i_2_n_5 ,\divide_counts_reg[8]_i_2_n_6 ,\divide_counts_reg[8]_i_2_n_7 }),
        .S({\divide_counts_reg_n_0_[8] ,\divide_counts_reg_n_0_[7] ,\divide_counts_reg_n_0_[6] ,\divide_counts_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \divide_counts_reg[9] 
       (.C(clk),
        .CE(divide_counts),
        .D(\divide_counts[9]_i_1_n_0 ),
        .Q(\divide_counts_reg_n_0_[9] ),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[0]_i_1 
       (.I0(\dividend_reg[3]_i_2_n_7 ),
        .I1(state[1]),
        .I2(x[0]),
        .O(\dividend[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[10]_i_1 
       (.I0(\dividend_reg[11]_i_2_n_5 ),
        .I1(state[1]),
        .I2(x[10]),
        .O(\dividend[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[11]_i_1 
       (.I0(state[1]),
        .I1(\dividend_reg[11]_i_2_n_4 ),
        .I2(x[11]),
        .O(\dividend[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[11]_i_3 
       (.I0(dividend[11]),
        .O(\dividend[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[11]_i_4 
       (.I0(dividend[8]),
        .O(\dividend[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[12]_i_1 
       (.I0(state[1]),
        .I1(\dividend_reg[15]_i_2_n_7 ),
        .I2(x[12]),
        .O(\dividend[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[13]_i_1 
       (.I0(\dividend_reg[15]_i_2_n_6 ),
        .I1(state[1]),
        .I2(x[13]),
        .O(\dividend[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[14]_i_1 
       (.I0(\dividend_reg[15]_i_2_n_5 ),
        .I1(state[1]),
        .I2(x[14]),
        .O(\dividend[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[15]_i_1 
       (.I0(state[1]),
        .I1(\dividend_reg[15]_i_2_n_4 ),
        .I2(x[15]),
        .O(\dividend[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[15]_i_3 
       (.I0(dividend[15]),
        .O(\dividend[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[15]_i_4 
       (.I0(dividend[14]),
        .O(\dividend[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[15]_i_5 
       (.I0(dividend[13]),
        .O(\dividend[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[15]_i_6 
       (.I0(dividend[12]),
        .O(\dividend[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[16]_i_1 
       (.I0(state[1]),
        .I1(\dividend_reg[19]_i_2_n_7 ),
        .I2(x[16]),
        .O(\dividend[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[17]_i_1 
       (.I0(\dividend_reg[19]_i_2_n_6 ),
        .I1(state[1]),
        .I2(x[17]),
        .O(\dividend[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[18]_i_1 
       (.I0(\dividend_reg[19]_i_2_n_5 ),
        .I1(state[1]),
        .I2(x[18]),
        .O(\dividend[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[19]_i_1 
       (.I0(state[1]),
        .I1(\dividend_reg[19]_i_2_n_4 ),
        .I2(x[19]),
        .O(\dividend[19]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[19]_i_3 
       (.I0(dividend[19]),
        .O(\dividend[19]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[19]_i_4 
       (.I0(dividend[18]),
        .O(\dividend[19]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[19]_i_5 
       (.I0(dividend[17]),
        .O(\dividend[19]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[19]_i_6 
       (.I0(dividend[16]),
        .O(\dividend[19]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[1]_i_1 
       (.I0(\dividend_reg[3]_i_2_n_6 ),
        .I1(state[1]),
        .I2(x[1]),
        .O(\dividend[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[20]_i_1 
       (.I0(state[1]),
        .I1(\dividend_reg[23]_i_2_n_7 ),
        .I2(x[20]),
        .O(\dividend[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[21]_i_1 
       (.I0(\dividend_reg[23]_i_2_n_6 ),
        .I1(state[1]),
        .I2(x[21]),
        .O(\dividend[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[22]_i_1 
       (.I0(\dividend_reg[23]_i_2_n_5 ),
        .I1(state[1]),
        .I2(x[22]),
        .O(\dividend[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[23]_i_1 
       (.I0(state[1]),
        .I1(\dividend_reg[23]_i_2_n_4 ),
        .I2(x[23]),
        .O(\dividend[23]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[23]_i_3 
       (.I0(dividend[23]),
        .O(\dividend[23]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[23]_i_4 
       (.I0(dividend[22]),
        .O(\dividend[23]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[23]_i_5 
       (.I0(dividend[21]),
        .O(\dividend[23]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[23]_i_6 
       (.I0(dividend[20]),
        .O(\dividend[23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[24]_i_1 
       (.I0(state[1]),
        .I1(\dividend_reg[27]_i_2_n_7 ),
        .I2(x[24]),
        .O(\dividend[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[25]_i_1 
       (.I0(\dividend_reg[27]_i_2_n_6 ),
        .I1(state[1]),
        .I2(x[25]),
        .O(\dividend[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[26]_i_1 
       (.I0(\dividend_reg[27]_i_2_n_5 ),
        .I1(state[1]),
        .I2(x[26]),
        .O(\dividend[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[27]_i_1 
       (.I0(state[1]),
        .I1(\dividend_reg[27]_i_2_n_4 ),
        .I2(x[27]),
        .O(\dividend[27]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[27]_i_3 
       (.I0(dividend[27]),
        .O(\dividend[27]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[27]_i_4 
       (.I0(dividend[26]),
        .O(\dividend[27]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[27]_i_5 
       (.I0(dividend[25]),
        .O(\dividend[27]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[27]_i_6 
       (.I0(dividend[24]),
        .O(\dividend[27]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[28]_i_1 
       (.I0(state[1]),
        .I1(\dividend_reg[31]_i_3_n_7 ),
        .I2(x[28]),
        .O(\dividend[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[29]_i_1 
       (.I0(\dividend_reg[31]_i_3_n_6 ),
        .I1(state[1]),
        .I2(x[29]),
        .O(\dividend[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[2]_i_1 
       (.I0(\dividend_reg[3]_i_2_n_5 ),
        .I1(state[1]),
        .I2(x[2]),
        .O(\dividend[2]_i_1_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "173" *) 
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[30]_i_1 
       (.I0(\dividend_reg[31]_i_3_n_5 ),
        .I1(state[1]),
        .I2(x[30]),
        .O(\dividend[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h62)) 
    \dividend[31]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\a_reg[10]_i_2_n_0 ),
        .O(divide_counts));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[31]_i_2 
       (.I0(state[1]),
        .I1(\dividend_reg[31]_i_3_n_4 ),
        .I2(x[31]),
        .O(\dividend[31]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[31]_i_4 
       (.I0(dividend[31]),
        .O(\dividend[31]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[31]_i_5 
       (.I0(dividend[30]),
        .O(\dividend[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[31]_i_6 
       (.I0(dividend[29]),
        .O(\dividend[31]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[31]_i_7 
       (.I0(dividend[28]),
        .O(\dividend[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[3]_i_1 
       (.I0(\dividend_reg[3]_i_2_n_4 ),
        .I1(state[1]),
        .I2(x[3]),
        .O(\dividend[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[3]_i_3 
       (.I0(dividend[3]),
        .O(\dividend[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[3]_i_4 
       (.I0(dividend[2]),
        .O(\dividend[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[3]_i_5 
       (.I0(dividend[1]),
        .O(\dividend[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[3]_i_6 
       (.I0(dividend[0]),
        .O(\dividend[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[4]_i_1 
       (.I0(\dividend_reg[7]_i_2_n_7 ),
        .I1(state[1]),
        .I2(x[4]),
        .O(\dividend[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[5]_i_1 
       (.I0(state[1]),
        .I1(\dividend_reg[7]_i_2_n_6 ),
        .I2(x[5]),
        .O(\dividend[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[6]_i_1 
       (.I0(\dividend_reg[7]_i_2_n_5 ),
        .I1(state[1]),
        .I2(x[6]),
        .O(\dividend[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[7]_i_1 
       (.I0(\dividend_reg[7]_i_2_n_4 ),
        .I1(state[1]),
        .I2(x[7]),
        .O(\dividend[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[7]_i_3 
       (.I0(dividend[6]),
        .O(\dividend[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[7]_i_4 
       (.I0(dividend[5]),
        .O(\dividend[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dividend[7]_i_5 
       (.I0(dividend[4]),
        .O(\dividend[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[8]_i_1 
       (.I0(\dividend_reg[11]_i_2_n_7 ),
        .I1(state[1]),
        .I2(x[8]),
        .O(\dividend[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[9]_i_1 
       (.I0(\dividend_reg[11]_i_2_n_6 ),
        .I1(state[1]),
        .I2(x[9]),
        .O(\dividend[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[0] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[0]_i_1_n_0 ),
        .Q(dividend[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[10] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[10]_i_1_n_0 ),
        .Q(dividend[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[11] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[11]_i_1_n_0 ),
        .Q(dividend[11]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dividend_reg[11]_i_2 
       (.CI(\dividend_reg[7]_i_2_n_0 ),
        .CO({\dividend_reg[11]_i_2_n_0 ,\NLW_dividend_reg[11]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(dividend[11:8]),
        .O({\dividend_reg[11]_i_2_n_4 ,\dividend_reg[11]_i_2_n_5 ,\dividend_reg[11]_i_2_n_6 ,\dividend_reg[11]_i_2_n_7 }),
        .S({\dividend[11]_i_3_n_0 ,dividend[10:9],\dividend[11]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[12] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[12]_i_1_n_0 ),
        .Q(dividend[12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[13] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[13]_i_1_n_0 ),
        .Q(dividend[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[14] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[14]_i_1_n_0 ),
        .Q(dividend[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[15] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[15]_i_1_n_0 ),
        .Q(dividend[15]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dividend_reg[15]_i_2 
       (.CI(\dividend_reg[11]_i_2_n_0 ),
        .CO({\dividend_reg[15]_i_2_n_0 ,\NLW_dividend_reg[15]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(dividend[15:12]),
        .O({\dividend_reg[15]_i_2_n_4 ,\dividend_reg[15]_i_2_n_5 ,\dividend_reg[15]_i_2_n_6 ,\dividend_reg[15]_i_2_n_7 }),
        .S({\dividend[15]_i_3_n_0 ,\dividend[15]_i_4_n_0 ,\dividend[15]_i_5_n_0 ,\dividend[15]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[16] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[16]_i_1_n_0 ),
        .Q(dividend[16]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[17] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[17]_i_1_n_0 ),
        .Q(dividend[17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[18] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[18]_i_1_n_0 ),
        .Q(dividend[18]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[19] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[19]_i_1_n_0 ),
        .Q(dividend[19]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dividend_reg[19]_i_2 
       (.CI(\dividend_reg[15]_i_2_n_0 ),
        .CO({\dividend_reg[19]_i_2_n_0 ,\NLW_dividend_reg[19]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(dividend[19:16]),
        .O({\dividend_reg[19]_i_2_n_4 ,\dividend_reg[19]_i_2_n_5 ,\dividend_reg[19]_i_2_n_6 ,\dividend_reg[19]_i_2_n_7 }),
        .S({\dividend[19]_i_3_n_0 ,\dividend[19]_i_4_n_0 ,\dividend[19]_i_5_n_0 ,\dividend[19]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[1] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[1]_i_1_n_0 ),
        .Q(dividend[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[20] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[20]_i_1_n_0 ),
        .Q(dividend[20]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[21] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[21]_i_1_n_0 ),
        .Q(dividend[21]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[22] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[22]_i_1_n_0 ),
        .Q(dividend[22]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[23] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[23]_i_1_n_0 ),
        .Q(dividend[23]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dividend_reg[23]_i_2 
       (.CI(\dividend_reg[19]_i_2_n_0 ),
        .CO({\dividend_reg[23]_i_2_n_0 ,\NLW_dividend_reg[23]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(dividend[23:20]),
        .O({\dividend_reg[23]_i_2_n_4 ,\dividend_reg[23]_i_2_n_5 ,\dividend_reg[23]_i_2_n_6 ,\dividend_reg[23]_i_2_n_7 }),
        .S({\dividend[23]_i_3_n_0 ,\dividend[23]_i_4_n_0 ,\dividend[23]_i_5_n_0 ,\dividend[23]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[24] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[24]_i_1_n_0 ),
        .Q(dividend[24]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[25] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[25]_i_1_n_0 ),
        .Q(dividend[25]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[26] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[26]_i_1_n_0 ),
        .Q(dividend[26]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[27] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[27]_i_1_n_0 ),
        .Q(dividend[27]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dividend_reg[27]_i_2 
       (.CI(\dividend_reg[23]_i_2_n_0 ),
        .CO({\dividend_reg[27]_i_2_n_0 ,\NLW_dividend_reg[27]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(dividend[27:24]),
        .O({\dividend_reg[27]_i_2_n_4 ,\dividend_reg[27]_i_2_n_5 ,\dividend_reg[27]_i_2_n_6 ,\dividend_reg[27]_i_2_n_7 }),
        .S({\dividend[27]_i_3_n_0 ,\dividend[27]_i_4_n_0 ,\dividend[27]_i_5_n_0 ,\dividend[27]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[28] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[28]_i_1_n_0 ),
        .Q(dividend[28]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[29] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[29]_i_1_n_0 ),
        .Q(dividend[29]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[2] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[2]_i_1_n_0 ),
        .Q(dividend[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[30] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[30]_i_1_n_0 ),
        .Q(dividend[30]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[31] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[31]_i_2_n_0 ),
        .Q(dividend[31]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dividend_reg[31]_i_3 
       (.CI(\dividend_reg[27]_i_2_n_0 ),
        .CO(\NLW_dividend_reg[31]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,dividend[30:28]}),
        .O({\dividend_reg[31]_i_3_n_4 ,\dividend_reg[31]_i_3_n_5 ,\dividend_reg[31]_i_3_n_6 ,\dividend_reg[31]_i_3_n_7 }),
        .S({\dividend[31]_i_4_n_0 ,\dividend[31]_i_5_n_0 ,\dividend[31]_i_6_n_0 ,\dividend[31]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[3] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[3]_i_1_n_0 ),
        .Q(dividend[3]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dividend_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\dividend_reg[3]_i_2_n_0 ,\NLW_dividend_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(dividend[3:0]),
        .O({\dividend_reg[3]_i_2_n_4 ,\dividend_reg[3]_i_2_n_5 ,\dividend_reg[3]_i_2_n_6 ,\dividend_reg[3]_i_2_n_7 }),
        .S({\dividend[3]_i_3_n_0 ,\dividend[3]_i_4_n_0 ,\dividend[3]_i_5_n_0 ,\dividend[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[4] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[4]_i_1_n_0 ),
        .Q(dividend[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[5] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[5]_i_1_n_0 ),
        .Q(dividend[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[6] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[6]_i_1_n_0 ),
        .Q(dividend[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[7] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[7]_i_1_n_0 ),
        .Q(dividend[7]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \dividend_reg[7]_i_2 
       (.CI(\dividend_reg[3]_i_2_n_0 ),
        .CO({\dividend_reg[7]_i_2_n_0 ,\NLW_dividend_reg[7]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(dividend[7:4]),
        .O({\dividend_reg[7]_i_2_n_4 ,\dividend_reg[7]_i_2_n_5 ,\dividend_reg[7]_i_2_n_6 ,\dividend_reg[7]_i_2_n_7 }),
        .S({dividend[7],\dividend[7]_i_3_n_0 ,\dividend[7]_i_4_n_0 ,\dividend[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[8] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[8]_i_1_n_0 ),
        .Q(dividend[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dividend_reg[9] 
       (.C(clk),
        .CE(divide_counts),
        .D(\dividend[9]_i_1_n_0 ),
        .Q(dividend[9]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \state[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h2C)) 
    \state[1]_i_1 
       (.I0(\a_reg[10]_i_2_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .O(\state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(reset));
endmodule

module fsm
   (clk,
    reset,
    right,
    left,
    state,
    keyboardControlled,
    ultrasonicControlled);
  input clk;
  input reset;
  input right;
  input left;
  output [1:0]state;
  output keyboardControlled;
  output ultrasonicControlled;

  wire clk;
  wire keyboardControlled;
  wire left;
  wire reset;
  wire right;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire ultrasonicControlled;

  LUT2 #(
    .INIT(4'h2)) 
    keyboardControlled_INST_0
       (.I0(state[1]),
        .I1(state[0]),
        .O(keyboardControlled));
  (* \PinAttr:I3:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDC4C)) 
    \state[0]_i_1 
       (.I0(left),
        .I1(right),
        .I2(state[1]),
        .I3(state[0]),
        .O(\state[0]_i_1_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "192" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h32A2)) 
    \state[1]_i_1 
       (.I0(left),
        .I1(right),
        .I2(state[1]),
        .I3(state[0]),
        .O(\state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(reset));
  LUT2 #(
    .INIT(4'h4)) 
    ultrasonicControlled_INST_0
       (.I0(state[1]),
        .I1(state[0]),
        .O(ultrasonicControlled));
endmodule

module fsm_controller
   (clk,
    reset,
    state,
    keyboardControlled,
    keyboard_x,
    keyboard_y,
    data,
    ultrasonicControlled,
    ultrasonic_x,
    ultrasonic_y,
    led,
    shoulder_servo,
    elbow_servo,
    tx,
    CA,
    CB,
    CC,
    CD,
    CE,
    CF,
    CG,
    DP,
    AN1,
    AN2,
    AN3,
    AN4);
  input clk;
  input reset;
  input [1:0]state;
  input keyboardControlled;
  input [7:0]keyboard_x;
  input [7:0]keyboard_y;
  input [7:0]data;
  input ultrasonicControlled;
  input [7:0]ultrasonic_x;
  input [7:0]ultrasonic_y;
  output [15:0]led;
  output shoulder_servo;
  output elbow_servo;
  output tx;
  output CA;
  output CB;
  output CC;
  output CD;
  output CE;
  output CF;
  output CG;
  output DP;
  output AN1;
  output AN2;
  output AN3;
  output AN4;

  wire AN1;
  wire AN2;
  wire AN3;
  wire AN4;
  wire CA;
  wire CB;
  wire CC;
  wire CD;
  wire CE;
  wire CF;
  wire CG;
  wire clk;
  wire [7:0]data;
  wire [17:0]elbow_angle;
  wire elbow_servo;
  wire [7:0]inverse_kinematics_x;
  wire \inverse_kinematics_x[0]_i_1_n_0 ;
  wire \inverse_kinematics_x[1]_i_1_n_0 ;
  wire \inverse_kinematics_x[2]_i_1_n_0 ;
  wire \inverse_kinematics_x[3]_i_1_n_0 ;
  wire \inverse_kinematics_x[4]_i_1_n_0 ;
  wire \inverse_kinematics_x[5]_i_1_n_0 ;
  wire \inverse_kinematics_x[6]_i_1_n_0 ;
  wire \inverse_kinematics_x[7]_i_1_n_0 ;
  wire [2:0]inverse_kinematics_y;
  wire \inverse_kinematics_y[0]_i_1_n_0 ;
  wire \inverse_kinematics_y[1]_i_1_n_0 ;
  wire \inverse_kinematics_y[2]_i_1_n_0 ;
  wire keyboardControlled;
  wire [7:0]keyboard_x;
  wire [7:0]keyboard_y;
  wire [15:0]led;
  wire \led[0]_i_1_n_0 ;
  wire \led[10]_i_1_n_0 ;
  wire \led[11]_i_1_n_0 ;
  wire \led[12]_i_1_n_0 ;
  wire \led[13]_i_1_n_0 ;
  wire \led[14]_i_1_n_0 ;
  wire \led[15]_i_1_n_0 ;
  wire \led[15]_i_2_n_0 ;
  wire \led[1]_i_1_n_0 ;
  wire \led[2]_i_1_n_0 ;
  wire \led[3]_i_1_n_0 ;
  wire \led[4]_i_1_n_0 ;
  wire \led[5]_i_1_n_0 ;
  wire \led[6]_i_1_n_0 ;
  wire \led[7]_i_1_n_0 ;
  wire \led[8]_i_1_n_0 ;
  wire \led[8]_i_2_n_0 ;
  wire \led[9]_i_1_n_0 ;
  wire pwm_en;
  wire reset;
  wire shoulderPWM_i_1_n_0;
  wire [17:0]shoulder_angle;
  wire shoulder_servo;
  wire slow_clk;
  wire [1:0]state;
  wire tx;
  wire ultrasonicControlled;
  wire [7:0]ultrasonic_x;
  wire [31:0]NLW_cd_divisor_UNCONNECTED;
  wire NLW_d_DP_UNCONNECTED;
  wire [3:3]NLW_d_y_UNCONNECTED;
  wire [23:18]NLW_elbowPWM_angle_UNCONNECTED;
  wire [23:18]NLW_ik_elbow_angle_UNCONNECTED;
  wire [23:18]NLW_ik_shoulder_angle_UNCONNECTED;
  wire [7:3]NLW_ik_y_UNCONNECTED;
  wire [23:1]NLW_pwme_data_UNCONNECTED;
  wire [23:18]NLW_shoulderPWM_angle_UNCONNECTED;
  wire NLW_t_transmit_UNCONNECTED;
  wire [3:3]NLW_t_data_UNCONNECTED;

  clk_divider cd
       (.clk(clk),
        .divisor(NLW_cd_divisor_UNCONNECTED[31:0]),
        .reset(reset),
        .slow_clk(slow_clk));
  display d
       (.AN1(AN1),
        .AN2(AN2),
        .AN3(AN3),
        .AN4(AN4),
        .CA(CA),
        .CB(CB),
        .CC(CC),
        .CD(CD),
        .CE(CE),
        .CF(CF),
        .CG(CG),
        .DP(NLW_d_DP_UNCONNECTED),
        .clk(clk),
        .reset(reset),
        .state(state),
        .x(inverse_kinematics_x[3:0]),
        .y({NLW_d_y_UNCONNECTED[3],inverse_kinematics_y}));
  (* SERVO_PERIOD = "199999" *) 
  pwm elbowPWM
       (.angle({NLW_elbowPWM_angle_UNCONNECTED[23:18],elbow_angle}),
        .clk(clk),
        .en(shoulderPWM_i_1_n_0),
        .servo(elbow_servo));
  inverse_kinematics ik
       (.clk(clk),
        .elbow_angle({NLW_ik_elbow_angle_UNCONNECTED[23:18],elbow_angle}),
        .reset(reset),
        .shoulder_angle({NLW_ik_shoulder_angle_UNCONNECTED[23:18],shoulder_angle}),
        .x(inverse_kinematics_x),
        .y({NLW_ik_y_UNCONNECTED[7:3],inverse_kinematics_y}));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h4474)) 
    \inverse_kinematics_x[0]_i_1 
       (.I0(keyboard_x[0]),
        .I1(keyboardControlled),
        .I2(ultrasonicControlled),
        .I3(ultrasonic_x[0]),
        .O(\inverse_kinematics_x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hB8BB)) 
    \inverse_kinematics_x[1]_i_1 
       (.I0(keyboard_x[1]),
        .I1(keyboardControlled),
        .I2(ultrasonic_x[1]),
        .I3(ultrasonicControlled),
        .O(\inverse_kinematics_x[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \inverse_kinematics_x[2]_i_1 
       (.I0(keyboard_x[2]),
        .I1(keyboardControlled),
        .I2(ultrasonicControlled),
        .I3(ultrasonic_x[2]),
        .O(\inverse_kinematics_x[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \inverse_kinematics_x[3]_i_1 
       (.I0(keyboardControlled),
        .I1(ultrasonic_x[3]),
        .I2(ultrasonicControlled),
        .O(\inverse_kinematics_x[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \inverse_kinematics_x[4]_i_1 
       (.I0(keyboardControlled),
        .I1(ultrasonicControlled),
        .I2(ultrasonic_x[4]),
        .O(\inverse_kinematics_x[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \inverse_kinematics_x[5]_i_1 
       (.I0(keyboardControlled),
        .I1(ultrasonicControlled),
        .I2(ultrasonic_x[5]),
        .O(\inverse_kinematics_x[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \inverse_kinematics_x[6]_i_1 
       (.I0(ultrasonic_x[6]),
        .I1(ultrasonicControlled),
        .I2(keyboardControlled),
        .O(\inverse_kinematics_x[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \inverse_kinematics_x[7]_i_1 
       (.I0(ultrasonicControlled),
        .I1(keyboardControlled),
        .I2(ultrasonic_x[7]),
        .O(\inverse_kinematics_x[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inverse_kinematics_x_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\inverse_kinematics_x[0]_i_1_n_0 ),
        .Q(inverse_kinematics_x[0]),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \inverse_kinematics_x_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\inverse_kinematics_x[1]_i_1_n_0 ),
        .Q(inverse_kinematics_x[1]),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \inverse_kinematics_x_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\inverse_kinematics_x[2]_i_1_n_0 ),
        .Q(inverse_kinematics_x[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \inverse_kinematics_x_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\inverse_kinematics_x[3]_i_1_n_0 ),
        .Q(inverse_kinematics_x[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \inverse_kinematics_x_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\inverse_kinematics_x[4]_i_1_n_0 ),
        .Q(inverse_kinematics_x[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \inverse_kinematics_x_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\inverse_kinematics_x[5]_i_1_n_0 ),
        .Q(inverse_kinematics_x[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \inverse_kinematics_x_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\inverse_kinematics_x[6]_i_1_n_0 ),
        .Q(inverse_kinematics_x[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \inverse_kinematics_x_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\inverse_kinematics_x[7]_i_1_n_0 ),
        .Q(inverse_kinematics_x[7]),
        .R(reset));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \inverse_kinematics_y[0]_i_1 
       (.I0(keyboardControlled),
        .I1(keyboard_y[0]),
        .O(\inverse_kinematics_y[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \inverse_kinematics_y[1]_i_1 
       (.I0(keyboardControlled),
        .I1(keyboard_y[1]),
        .O(\inverse_kinematics_y[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inverse_kinematics_y[2]_i_1 
       (.I0(keyboardControlled),
        .I1(keyboard_y[2]),
        .O(\inverse_kinematics_y[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inverse_kinematics_y_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\inverse_kinematics_y[0]_i_1_n_0 ),
        .Q(inverse_kinematics_y[0]),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \inverse_kinematics_y_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\inverse_kinematics_y[1]_i_1_n_0 ),
        .Q(inverse_kinematics_y[1]),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \inverse_kinematics_y_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\inverse_kinematics_y[2]_i_1_n_0 ),
        .Q(inverse_kinematics_y[2]),
        .R(reset));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \led[0]_i_1 
       (.I0(data[0]),
        .I1(keyboardControlled),
        .I2(ultrasonic_x[0]),
        .I3(ultrasonicControlled),
        .I4(slow_clk),
        .O(\led[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000F404)) 
    \led[10]_i_1 
       (.I0(ultrasonicControlled),
        .I1(slow_clk),
        .I2(keyboardControlled),
        .I3(inverse_kinematics_y[1]),
        .I4(reset),
        .O(\led[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000F101)) 
    \led[11]_i_1 
       (.I0(ultrasonicControlled),
        .I1(slow_clk),
        .I2(keyboardControlled),
        .I3(inverse_kinematics_y[2]),
        .I4(reset),
        .O(\led[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAAFF0C)) 
    \led[12]_i_1 
       (.I0(inverse_kinematics_x[0]),
        .I1(slow_clk),
        .I2(ultrasonicControlled),
        .I3(reset),
        .I4(keyboardControlled),
        .O(\led[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA0FFA3)) 
    \led[13]_i_1 
       (.I0(inverse_kinematics_x[1]),
        .I1(slow_clk),
        .I2(keyboardControlled),
        .I3(reset),
        .I4(ultrasonicControlled),
        .O(\led[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFBFBF8)) 
    \led[14]_i_1 
       (.I0(inverse_kinematics_x[2]),
        .I1(keyboardControlled),
        .I2(reset),
        .I3(ultrasonicControlled),
        .I4(slow_clk),
        .O(\led[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \led[15]_i_1 
       (.I0(ultrasonicControlled),
        .I1(reset),
        .I2(keyboardControlled),
        .O(\led[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFA0FFA3)) 
    \led[15]_i_2 
       (.I0(pwm_en),
        .I1(slow_clk),
        .I2(keyboardControlled),
        .I3(reset),
        .I4(ultrasonicControlled),
        .O(\led[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB888B8BB)) 
    \led[1]_i_1 
       (.I0(data[1]),
        .I1(keyboardControlled),
        .I2(ultrasonic_x[1]),
        .I3(ultrasonicControlled),
        .I4(slow_clk),
        .O(\led[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \led[2]_i_1 
       (.I0(data[2]),
        .I1(keyboardControlled),
        .I2(ultrasonic_x[2]),
        .I3(ultrasonicControlled),
        .I4(slow_clk),
        .O(\led[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hB888B8BB)) 
    \led[3]_i_1 
       (.I0(data[3]),
        .I1(keyboardControlled),
        .I2(ultrasonic_x[3]),
        .I3(ultrasonicControlled),
        .I4(slow_clk),
        .O(\led[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFFCFFAAFF0C)) 
    \led[4]_i_1 
       (.I0(data[4]),
        .I1(slow_clk),
        .I2(ultrasonicControlled),
        .I3(reset),
        .I4(keyboardControlled),
        .I5(ultrasonic_x[4]),
        .O(\led[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAFFFA3FFA0FFA3)) 
    \led[5]_i_1 
       (.I0(data[5]),
        .I1(slow_clk),
        .I2(keyboardControlled),
        .I3(reset),
        .I4(ultrasonicControlled),
        .I5(ultrasonic_x[5]),
        .O(\led[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFFCFFAAFF0C)) 
    \led[6]_i_1 
       (.I0(data[6]),
        .I1(slow_clk),
        .I2(ultrasonicControlled),
        .I3(reset),
        .I4(keyboardControlled),
        .I5(ultrasonic_x[6]),
        .O(\led[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAFFFA3FFA0FFA3)) 
    \led[7]_i_1 
       (.I0(data[7]),
        .I1(slow_clk),
        .I2(keyboardControlled),
        .I3(reset),
        .I4(ultrasonicControlled),
        .I5(ultrasonic_x[7]),
        .O(\led[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \led[8]_i_1 
       (.I0(reset),
        .I1(keyboardControlled),
        .I2(ultrasonicControlled),
        .O(\led[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \led[8]_i_2 
       (.I0(keyboardControlled),
        .I1(slow_clk),
        .I2(ultrasonicControlled),
        .I3(reset),
        .O(\led[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000F101)) 
    \led[9]_i_1 
       (.I0(ultrasonicControlled),
        .I1(slow_clk),
        .I2(keyboardControlled),
        .I3(inverse_kinematics_y[0]),
        .I4(reset),
        .O(\led[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[0]_i_1_n_0 ),
        .Q(led[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[10] 
       (.C(clk),
        .CE(\led[15]_i_1_n_0 ),
        .D(\led[10]_i_1_n_0 ),
        .Q(led[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[11] 
       (.C(clk),
        .CE(\led[15]_i_1_n_0 ),
        .D(\led[11]_i_1_n_0 ),
        .Q(led[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[12] 
       (.C(clk),
        .CE(\led[15]_i_1_n_0 ),
        .D(\led[12]_i_1_n_0 ),
        .Q(led[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[13] 
       (.C(clk),
        .CE(\led[15]_i_1_n_0 ),
        .D(\led[13]_i_1_n_0 ),
        .Q(led[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[14]_i_1_n_0 ),
        .Q(led[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[15] 
       (.C(clk),
        .CE(\led[15]_i_1_n_0 ),
        .D(\led[15]_i_2_n_0 ),
        .Q(led[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[1]_i_1_n_0 ),
        .Q(led[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[2]_i_1_n_0 ),
        .Q(led[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[3]_i_1_n_0 ),
        .Q(led[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[4]_i_1_n_0 ),
        .Q(led[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[5]_i_1_n_0 ),
        .Q(led[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[6]_i_1_n_0 ),
        .Q(led[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\led[7]_i_1_n_0 ),
        .Q(led[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[8] 
       (.C(clk),
        .CE(\led[8]_i_1_n_0 ),
        .D(\led[8]_i_2_n_0 ),
        .Q(led[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[9] 
       (.C(clk),
        .CE(\led[15]_i_1_n_0 ),
        .D(\led[9]_i_1_n_0 ),
        .Q(led[9]),
        .R(1'b0));
  (* CLK_CYCLES = "140000000" *) 
  (* N = "24" *) 
  pwm_enable pwme
       (.clk(clk),
        .data({NLW_pwme_data_UNCONNECTED[23:1],data[0]}),
        .en(pwm_en),
        .reset(reset));
  (* SERVO_PERIOD = "199999" *) 
  pwm__1 shoulderPWM
       (.angle({NLW_shoulderPWM_angle_UNCONNECTED[23:18],shoulder_angle}),
        .clk(clk),
        .en(shoulderPWM_i_1_n_0),
        .servo(shoulder_servo));
  LUT2 #(
    .INIT(4'hE)) 
    shoulderPWM_i_1
       (.I0(pwm_en),
        .I1(ultrasonicControlled),
        .O(shoulderPWM_i_1_n_0));
  transmitter t
       (.TxD(tx),
        .clk(clk),
        .data({inverse_kinematics_x[3:0],NLW_t_data_UNCONNECTED[3],inverse_kinematics_y}),
        .reset(reset),
        .transmit(NLW_t_transmit_UNCONNECTED));
endmodule

module inverse_kinematics
   (clk,
    reset,
    x,
    y,
    shoulder_angle,
    elbow_angle);
  input clk;
  input reset;
  input [7:0]x;
  input [7:0]y;
  output [23:0]shoulder_angle;
  output [23:0]elbow_angle;

  wire clk;
  wire [23:0]elbow_angle;
  wire \elbow_angle[0]_i_1_n_0 ;
  wire \elbow_angle[0]_i_2_n_0 ;
  wire \elbow_angle[10]_i_1_n_0 ;
  wire \elbow_angle[10]_i_2_n_0 ;
  wire \elbow_angle[11]_i_1_n_0 ;
  wire \elbow_angle[11]_i_2_n_0 ;
  wire \elbow_angle[12]_i_1_n_0 ;
  wire \elbow_angle[12]_i_2_n_0 ;
  wire \elbow_angle[13]_i_1_n_0 ;
  wire \elbow_angle[13]_i_2_n_0 ;
  wire \elbow_angle[14]_i_1_n_0 ;
  wire \elbow_angle[14]_i_2_n_0 ;
  wire \elbow_angle[15]_i_1_n_0 ;
  wire \elbow_angle[15]_i_2_n_0 ;
  wire \elbow_angle[16]_i_1_n_0 ;
  wire \elbow_angle[16]_i_2_n_0 ;
  wire \elbow_angle[17]_i_1_n_0 ;
  wire \elbow_angle[17]_i_2_n_0 ;
  wire \elbow_angle[1]_i_1_n_0 ;
  wire \elbow_angle[1]_i_2_n_0 ;
  wire \elbow_angle[2]_i_1_n_0 ;
  wire \elbow_angle[3]_i_1_n_0 ;
  wire \elbow_angle[3]_i_2_n_0 ;
  wire \elbow_angle[4]_i_1_n_0 ;
  wire \elbow_angle[5]_i_1_n_0 ;
  wire \elbow_angle[5]_i_2_n_0 ;
  wire \elbow_angle[6]_i_1_n_0 ;
  wire \elbow_angle[6]_i_2_n_0 ;
  wire \elbow_angle[7]_i_1_n_0 ;
  wire \elbow_angle[7]_i_2_n_0 ;
  wire \elbow_angle[8]_i_1_n_0 ;
  wire \elbow_angle[8]_i_2_n_0 ;
  wire \elbow_angle[9]_i_1_n_0 ;
  wire \elbow_angle[9]_i_2_n_0 ;
  wire reset;
  wire [23:0]shoulder_angle;
  wire \shoulder_angle[0]_i_1_n_0 ;
  wire \shoulder_angle[0]_i_2_n_0 ;
  wire \shoulder_angle[0]_i_3_n_0 ;
  wire \shoulder_angle[10]_i_1_n_0 ;
  wire \shoulder_angle[10]_i_2_n_0 ;
  wire \shoulder_angle[11]_i_1_n_0 ;
  wire \shoulder_angle[11]_i_2_n_0 ;
  wire \shoulder_angle[12]_i_1_n_0 ;
  wire \shoulder_angle[12]_i_2_n_0 ;
  wire \shoulder_angle[13]_i_1_n_0 ;
  wire \shoulder_angle[13]_i_2_n_0 ;
  wire \shoulder_angle[14]_i_1_n_0 ;
  wire \shoulder_angle[14]_i_2_n_0 ;
  wire \shoulder_angle[15]_i_1_n_0 ;
  wire \shoulder_angle[16]_i_1_n_0 ;
  wire \shoulder_angle[16]_i_2_n_0 ;
  wire \shoulder_angle[17]_i_1_n_0 ;
  wire \shoulder_angle[17]_i_2_n_0 ;
  wire \shoulder_angle[17]_i_3_n_0 ;
  wire \shoulder_angle[1]_i_1_n_0 ;
  wire \shoulder_angle[2]_i_1_n_0 ;
  wire \shoulder_angle[2]_i_2_n_0 ;
  wire \shoulder_angle[3]_i_1_n_0 ;
  wire \shoulder_angle[3]_i_2_n_0 ;
  wire \shoulder_angle[4]_i_1_n_0 ;
  wire \shoulder_angle[4]_i_2_n_0 ;
  wire \shoulder_angle[5]_i_1_n_0 ;
  wire \shoulder_angle[5]_i_2_n_0 ;
  wire \shoulder_angle[6]_i_1_n_0 ;
  wire \shoulder_angle[6]_i_2_n_0 ;
  wire \shoulder_angle[7]_i_1_n_0 ;
  wire \shoulder_angle[7]_i_2_n_0 ;
  wire \shoulder_angle[8]_i_1_n_0 ;
  wire \shoulder_angle[8]_i_2_n_0 ;
  wire \shoulder_angle[9]_i_1_n_0 ;
  wire \shoulder_angle[9]_i_2_n_0 ;
  wire [7:0]x;
  wire [7:0]y;

  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \elbow_angle[0]_i_1 
       (.I0(\elbow_angle[0]_i_2_n_0 ),
        .I1(x[5]),
        .I2(x[6]),
        .I3(x[3]),
        .I4(x[4]),
        .I5(x[7]),
        .O(\elbow_angle[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001200161400)) 
    \elbow_angle[0]_i_2 
       (.I0(x[2]),
        .I1(x[0]),
        .I2(x[1]),
        .I3(y[2]),
        .I4(y[1]),
        .I5(y[0]),
        .O(\elbow_angle[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00011010)) 
    \elbow_angle[10]_i_1 
       (.I0(\shoulder_angle[17]_i_3_n_0 ),
        .I1(\elbow_angle[10]_i_2_n_0 ),
        .I2(x[1]),
        .I3(x[0]),
        .I4(x[2]),
        .O(\elbow_angle[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE5)) 
    \elbow_angle[10]_i_2 
       (.I0(y[1]),
        .I1(y[0]),
        .I2(y[2]),
        .O(\elbow_angle[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \elbow_angle[11]_i_1 
       (.I0(\elbow_angle[11]_i_2_n_0 ),
        .I1(x[5]),
        .I2(x[6]),
        .I3(x[3]),
        .I4(x[4]),
        .I5(x[7]),
        .O(\elbow_angle[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010004200001000)) 
    \elbow_angle[11]_i_2 
       (.I0(y[2]),
        .I1(y[1]),
        .I2(y[0]),
        .I3(x[2]),
        .I4(x[1]),
        .I5(x[0]),
        .O(\elbow_angle[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \elbow_angle[12]_i_1 
       (.I0(\elbow_angle[12]_i_2_n_0 ),
        .I1(x[5]),
        .I2(x[6]),
        .I3(x[3]),
        .I4(x[4]),
        .I5(x[7]),
        .O(\elbow_angle[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0018000400060800)) 
    \elbow_angle[12]_i_2 
       (.I0(y[0]),
        .I1(y[1]),
        .I2(y[2]),
        .I3(x[2]),
        .I4(x[1]),
        .I5(x[0]),
        .O(\elbow_angle[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \elbow_angle[13]_i_1 
       (.I0(x[5]),
        .I1(x[6]),
        .I2(x[3]),
        .I3(x[4]),
        .I4(x[7]),
        .I5(\elbow_angle[13]_i_2_n_0 ),
        .O(\elbow_angle[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFCFFA1DFFBF)) 
    \elbow_angle[13]_i_2 
       (.I0(x[1]),
        .I1(y[1]),
        .I2(x[0]),
        .I3(x[2]),
        .I4(y[0]),
        .I5(y[2]),
        .O(\elbow_angle[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \elbow_angle[14]_i_1 
       (.I0(\elbow_angle[14]_i_2_n_0 ),
        .I1(x[5]),
        .I2(x[6]),
        .I3(x[3]),
        .I4(x[4]),
        .I5(x[7]),
        .O(\elbow_angle[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020001400161600)) 
    \elbow_angle[14]_i_2 
       (.I0(y[0]),
        .I1(y[2]),
        .I2(y[1]),
        .I3(x[2]),
        .I4(x[1]),
        .I5(x[0]),
        .O(\elbow_angle[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \elbow_angle[15]_i_1 
       (.I0(\elbow_angle[15]_i_2_n_0 ),
        .I1(x[5]),
        .I2(x[6]),
        .I3(x[3]),
        .I4(x[4]),
        .I5(x[7]),
        .O(\elbow_angle[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000101000E080860)) 
    \elbow_angle[15]_i_2 
       (.I0(y[0]),
        .I1(y[1]),
        .I2(x[2]),
        .I3(x[0]),
        .I4(x[1]),
        .I5(y[2]),
        .O(\elbow_angle[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \elbow_angle[16]_i_1 
       (.I0(x[5]),
        .I1(x[6]),
        .I2(x[3]),
        .I3(x[4]),
        .I4(x[7]),
        .I5(\elbow_angle[16]_i_2_n_0 ),
        .O(\elbow_angle[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFEF7F)) 
    \elbow_angle[16]_i_2 
       (.I0(y[1]),
        .I1(y[0]),
        .I2(x[2]),
        .I3(y[2]),
        .I4(x[0]),
        .I5(x[1]),
        .O(\elbow_angle[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \elbow_angle[17]_i_1 
       (.I0(\elbow_angle[17]_i_2_n_0 ),
        .I1(x[5]),
        .I2(x[6]),
        .I3(x[3]),
        .I4(x[4]),
        .I5(x[7]),
        .O(\elbow_angle[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000001000800)) 
    \elbow_angle[17]_i_2 
       (.I0(y[1]),
        .I1(y[0]),
        .I2(x[1]),
        .I3(x[2]),
        .I4(y[2]),
        .I5(x[0]),
        .O(\elbow_angle[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \elbow_angle[1]_i_1 
       (.I0(\elbow_angle[1]_i_2_n_0 ),
        .I1(x[5]),
        .I2(x[6]),
        .I3(x[3]),
        .I4(x[4]),
        .I5(x[7]),
        .O(\elbow_angle[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000021001140820)) 
    \elbow_angle[1]_i_2 
       (.I0(x[0]),
        .I1(y[1]),
        .I2(y[2]),
        .I3(y[0]),
        .I4(x[2]),
        .I5(x[1]),
        .O(\elbow_angle[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFEFEEEEFEEFFE)) 
    \elbow_angle[2]_i_1 
       (.I0(\shoulder_angle[17]_i_3_n_0 ),
        .I1(\shoulder_angle[13]_i_2_n_0 ),
        .I2(x[1]),
        .I3(y[1]),
        .I4(y[0]),
        .I5(x[0]),
        .O(\elbow_angle[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \elbow_angle[3]_i_1 
       (.I0(\elbow_angle[3]_i_2_n_0 ),
        .I1(x[5]),
        .I2(x[6]),
        .I3(x[3]),
        .I4(x[4]),
        .I5(x[7]),
        .O(\elbow_angle[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000015201024400)) 
    \elbow_angle[3]_i_2 
       (.I0(y[2]),
        .I1(x[0]),
        .I2(y[0]),
        .I3(y[1]),
        .I4(x[2]),
        .I5(x[1]),
        .O(\elbow_angle[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000014040)) 
    \elbow_angle[4]_i_1 
       (.I0(\shoulder_angle[17]_i_3_n_0 ),
        .I1(y[2]),
        .I2(x[1]),
        .I3(x[0]),
        .I4(x[2]),
        .I5(\elbow_angle[10]_i_2_n_0 ),
        .O(\elbow_angle[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040200)) 
    \elbow_angle[5]_i_1 
       (.I0(x[2]),
        .I1(x[1]),
        .I2(\elbow_angle[5]_i_2_n_0 ),
        .I3(y[1]),
        .I4(y[2]),
        .I5(\shoulder_angle[17]_i_3_n_0 ),
        .O(\elbow_angle[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \elbow_angle[5]_i_2 
       (.I0(y[0]),
        .I1(x[0]),
        .O(\elbow_angle[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \elbow_angle[6]_i_1 
       (.I0(x[5]),
        .I1(x[6]),
        .I2(x[3]),
        .I3(x[4]),
        .I4(x[7]),
        .I5(\elbow_angle[6]_i_2_n_0 ),
        .O(\elbow_angle[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF9FBFF)) 
    \elbow_angle[6]_i_2 
       (.I0(x[2]),
        .I1(x[1]),
        .I2(y[0]),
        .I3(y[2]),
        .I4(y[1]),
        .I5(x[0]),
        .O(\elbow_angle[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \elbow_angle[7]_i_1 
       (.I0(x[5]),
        .I1(x[6]),
        .I2(x[3]),
        .I3(x[4]),
        .I4(x[7]),
        .I5(\elbow_angle[7]_i_2_n_0 ),
        .O(\elbow_angle[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFEBAF9BFF)) 
    \elbow_angle[7]_i_2 
       (.I0(x[2]),
        .I1(x[1]),
        .I2(y[1]),
        .I3(y[0]),
        .I4(x[0]),
        .I5(y[2]),
        .O(\elbow_angle[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \elbow_angle[8]_i_1 
       (.I0(x[5]),
        .I1(x[6]),
        .I2(x[3]),
        .I3(x[4]),
        .I4(x[7]),
        .I5(\elbow_angle[8]_i_2_n_0 ),
        .O(\elbow_angle[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFEFFFDB7)) 
    \elbow_angle[8]_i_2 
       (.I0(x[2]),
        .I1(y[2]),
        .I2(x[1]),
        .I3(y[1]),
        .I4(x[0]),
        .I5(y[0]),
        .O(\elbow_angle[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \elbow_angle[9]_i_1 
       (.I0(x[5]),
        .I1(x[6]),
        .I2(x[3]),
        .I3(x[4]),
        .I4(x[7]),
        .I5(\elbow_angle[9]_i_2_n_0 ),
        .O(\elbow_angle[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFEFFFFFE7FBFF)) 
    \elbow_angle[9]_i_2 
       (.I0(y[0]),
        .I1(x[2]),
        .I2(x[1]),
        .I3(y[2]),
        .I4(y[1]),
        .I5(x[0]),
        .O(\elbow_angle[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \elbow_angle_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[0]_i_1_n_0 ),
        .Q(elbow_angle[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \elbow_angle_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[10]_i_1_n_0 ),
        .Q(elbow_angle[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \elbow_angle_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[11]_i_1_n_0 ),
        .Q(elbow_angle[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \elbow_angle_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[12]_i_1_n_0 ),
        .Q(elbow_angle[12]),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \elbow_angle_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[13]_i_1_n_0 ),
        .Q(elbow_angle[13]),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \elbow_angle_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[14]_i_1_n_0 ),
        .Q(elbow_angle[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \elbow_angle_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[15]_i_1_n_0 ),
        .Q(elbow_angle[15]),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \elbow_angle_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[16]_i_1_n_0 ),
        .Q(elbow_angle[16]),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \elbow_angle_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[17]_i_1_n_0 ),
        .Q(elbow_angle[17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \elbow_angle_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[1]_i_1_n_0 ),
        .Q(elbow_angle[1]),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \elbow_angle_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[2]_i_1_n_0 ),
        .Q(elbow_angle[2]),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \elbow_angle_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[3]_i_1_n_0 ),
        .Q(elbow_angle[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \elbow_angle_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[4]_i_1_n_0 ),
        .Q(elbow_angle[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \elbow_angle_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[5]_i_1_n_0 ),
        .Q(elbow_angle[5]),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \elbow_angle_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[6]_i_1_n_0 ),
        .Q(elbow_angle[6]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \elbow_angle_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[7]_i_1_n_0 ),
        .Q(elbow_angle[7]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \elbow_angle_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[8]_i_1_n_0 ),
        .Q(elbow_angle[8]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \elbow_angle_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\elbow_angle[9]_i_1_n_0 ),
        .Q(elbow_angle[9]),
        .S(reset));
  LUT6 #(
    .INIT(64'h00000000501A0000)) 
    \shoulder_angle[0]_i_1 
       (.I0(y[2]),
        .I1(\shoulder_angle[0]_i_2_n_0 ),
        .I2(y[1]),
        .I3(y[0]),
        .I4(\shoulder_angle[0]_i_3_n_0 ),
        .I5(\shoulder_angle[17]_i_3_n_0 ),
        .O(\shoulder_angle[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \shoulder_angle[0]_i_2 
       (.I0(x[0]),
        .I1(x[1]),
        .O(\shoulder_angle[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h16)) 
    \shoulder_angle[0]_i_3 
       (.I0(x[2]),
        .I1(x[1]),
        .I2(x[0]),
        .O(\shoulder_angle[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \shoulder_angle[10]_i_1 
       (.I0(x[5]),
        .I1(x[6]),
        .I2(x[3]),
        .I3(x[4]),
        .I4(x[7]),
        .I5(\shoulder_angle[10]_i_2_n_0 ),
        .O(\shoulder_angle[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBDFFFEDFBFF)) 
    \shoulder_angle[10]_i_2 
       (.I0(x[0]),
        .I1(x[2]),
        .I2(x[1]),
        .I3(y[1]),
        .I4(y[2]),
        .I5(y[0]),
        .O(\shoulder_angle[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \shoulder_angle[11]_i_1 
       (.I0(x[5]),
        .I1(x[6]),
        .I2(x[3]),
        .I3(x[4]),
        .I4(x[7]),
        .I5(\shoulder_angle[11]_i_2_n_0 ),
        .O(\shoulder_angle[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF9797F)) 
    \shoulder_angle[11]_i_2 
       (.I0(y[0]),
        .I1(y[1]),
        .I2(x[0]),
        .I3(x[1]),
        .I4(x[2]),
        .I5(y[2]),
        .O(\shoulder_angle[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \shoulder_angle[12]_i_1 
       (.I0(x[5]),
        .I1(x[6]),
        .I2(x[3]),
        .I3(x[4]),
        .I4(x[7]),
        .I5(\shoulder_angle[12]_i_2_n_0 ),
        .O(\shoulder_angle[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEBFBFFF7F7)) 
    \shoulder_angle[12]_i_2 
       (.I0(x[2]),
        .I1(y[0]),
        .I2(y[2]),
        .I3(y[1]),
        .I4(x[0]),
        .I5(x[1]),
        .O(\shoulder_angle[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEFFEFEEFFEFEE)) 
    \shoulder_angle[13]_i_1 
       (.I0(\shoulder_angle[17]_i_3_n_0 ),
        .I1(\shoulder_angle[13]_i_2_n_0 ),
        .I2(y[1]),
        .I3(x[0]),
        .I4(x[1]),
        .I5(y[0]),
        .O(\shoulder_angle[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC9C9FFC9C9FF)) 
    \shoulder_angle[13]_i_2 
       (.I0(x[1]),
        .I1(x[2]),
        .I2(x[0]),
        .I3(y[1]),
        .I4(y[2]),
        .I5(y[0]),
        .O(\shoulder_angle[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \shoulder_angle[14]_i_1 
       (.I0(x[5]),
        .I1(x[6]),
        .I2(x[3]),
        .I3(x[4]),
        .I4(x[7]),
        .I5(\shoulder_angle[14]_i_2_n_0 ),
        .O(\shoulder_angle[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF99F9DF)) 
    \shoulder_angle[14]_i_2 
       (.I0(x[2]),
        .I1(x[1]),
        .I2(y[0]),
        .I3(y[2]),
        .I4(y[1]),
        .I5(x[0]),
        .O(\shoulder_angle[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000044440)) 
    \shoulder_angle[15]_i_1 
       (.I0(x[2]),
        .I1(x[1]),
        .I2(y[0]),
        .I3(y[1]),
        .I4(y[2]),
        .I5(\shoulder_angle[17]_i_3_n_0 ),
        .O(\shoulder_angle[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \shoulder_angle[16]_i_1 
       (.I0(\shoulder_angle[17]_i_3_n_0 ),
        .I1(\shoulder_angle[16]_i_2_n_0 ),
        .I2(x[2]),
        .I3(x[1]),
        .I4(x[0]),
        .O(\shoulder_angle[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC9)) 
    \shoulder_angle[16]_i_2 
       (.I0(y[0]),
        .I1(y[2]),
        .I2(y[1]),
        .O(\shoulder_angle[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \shoulder_angle[17]_i_1 
       (.I0(\shoulder_angle[17]_i_2_n_0 ),
        .I1(x[2]),
        .I2(x[0]),
        .I3(x[1]),
        .I4(\shoulder_angle[17]_i_3_n_0 ),
        .O(\shoulder_angle[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h36)) 
    \shoulder_angle[17]_i_2 
       (.I0(y[0]),
        .I1(y[2]),
        .I2(y[1]),
        .O(\shoulder_angle[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \shoulder_angle[17]_i_3 
       (.I0(x[7]),
        .I1(x[4]),
        .I2(x[3]),
        .I3(x[6]),
        .I4(x[5]),
        .O(\shoulder_angle[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEFEEEEEEEFEE)) 
    \shoulder_angle[1]_i_1 
       (.I0(\shoulder_angle[17]_i_3_n_0 ),
        .I1(\shoulder_angle[13]_i_2_n_0 ),
        .I2(x[1]),
        .I3(x[0]),
        .I4(y[1]),
        .I5(y[0]),
        .O(\shoulder_angle[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \shoulder_angle[2]_i_1 
       (.I0(\shoulder_angle[2]_i_2_n_0 ),
        .I1(x[5]),
        .I2(x[6]),
        .I3(x[3]),
        .I4(x[4]),
        .I5(x[7]),
        .O(\shoulder_angle[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000050205024060)) 
    \shoulder_angle[2]_i_2 
       (.I0(y[2]),
        .I1(y[0]),
        .I2(x[2]),
        .I3(y[1]),
        .I4(x[1]),
        .I5(x[0]),
        .O(\shoulder_angle[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \shoulder_angle[3]_i_1 
       (.I0(\shoulder_angle[3]_i_2_n_0 ),
        .I1(x[5]),
        .I2(x[6]),
        .I3(x[3]),
        .I4(x[4]),
        .I5(x[7]),
        .O(\shoulder_angle[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0016001400001000)) 
    \shoulder_angle[3]_i_2 
       (.I0(y[1]),
        .I1(y[2]),
        .I2(y[0]),
        .I3(x[2]),
        .I4(x[0]),
        .I5(x[1]),
        .O(\shoulder_angle[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \shoulder_angle[4]_i_1 
       (.I0(\shoulder_angle[4]_i_2_n_0 ),
        .I1(x[5]),
        .I2(x[6]),
        .I3(x[3]),
        .I4(x[4]),
        .I5(x[7]),
        .O(\shoulder_angle[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000142000302400)) 
    \shoulder_angle[4]_i_2 
       (.I0(y[1]),
        .I1(y[2]),
        .I2(y[0]),
        .I3(x[1]),
        .I4(x[2]),
        .I5(x[0]),
        .O(\shoulder_angle[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \shoulder_angle[5]_i_1 
       (.I0(\shoulder_angle[5]_i_2_n_0 ),
        .I1(x[5]),
        .I2(x[6]),
        .I3(x[3]),
        .I4(x[4]),
        .I5(x[7]),
        .O(\shoulder_angle[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001010006040080)) 
    \shoulder_angle[5]_i_2 
       (.I0(y[0]),
        .I1(y[1]),
        .I2(x[2]),
        .I3(x[0]),
        .I4(x[1]),
        .I5(y[2]),
        .O(\shoulder_angle[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \shoulder_angle[6]_i_1 
       (.I0(x[5]),
        .I1(x[6]),
        .I2(x[3]),
        .I3(x[4]),
        .I4(x[7]),
        .I5(\shoulder_angle[6]_i_2_n_0 ),
        .O(\shoulder_angle[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEB5FFDDFFB7)) 
    \shoulder_angle[6]_i_2 
       (.I0(x[1]),
        .I1(y[1]),
        .I2(x[0]),
        .I3(x[2]),
        .I4(y[2]),
        .I5(y[0]),
        .O(\shoulder_angle[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \shoulder_angle[7]_i_1 
       (.I0(\shoulder_angle[7]_i_2_n_0 ),
        .I1(x[5]),
        .I2(x[6]),
        .I3(x[3]),
        .I4(x[4]),
        .I5(x[7]),
        .O(\shoulder_angle[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000303400360600)) 
    \shoulder_angle[7]_i_2 
       (.I0(y[0]),
        .I1(y[2]),
        .I2(y[1]),
        .I3(x[1]),
        .I4(x[2]),
        .I5(x[0]),
        .O(\shoulder_angle[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \shoulder_angle[8]_i_1 
       (.I0(\shoulder_angle[8]_i_2_n_0 ),
        .I1(x[5]),
        .I2(x[6]),
        .I3(x[3]),
        .I4(x[4]),
        .I5(x[7]),
        .O(\shoulder_angle[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0003010410121000)) 
    \shoulder_angle[8]_i_2 
       (.I0(x[0]),
        .I1(y[2]),
        .I2(x[2]),
        .I3(y[0]),
        .I4(y[1]),
        .I5(x[1]),
        .O(\shoulder_angle[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \shoulder_angle[9]_i_1 
       (.I0(\shoulder_angle[9]_i_2_n_0 ),
        .I1(x[5]),
        .I2(x[6]),
        .I3(x[3]),
        .I4(x[4]),
        .I5(x[7]),
        .O(\shoulder_angle[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000134003000020)) 
    \shoulder_angle[9]_i_2 
       (.I0(y[1]),
        .I1(y[2]),
        .I2(x[0]),
        .I3(y[0]),
        .I4(x[2]),
        .I5(x[1]),
        .O(\shoulder_angle[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shoulder_angle_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[0]_i_1_n_0 ),
        .Q(shoulder_angle[0]),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \shoulder_angle_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[10]_i_1_n_0 ),
        .Q(shoulder_angle[10]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \shoulder_angle_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[11]_i_1_n_0 ),
        .Q(shoulder_angle[11]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \shoulder_angle_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[12]_i_1_n_0 ),
        .Q(shoulder_angle[12]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \shoulder_angle_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[13]_i_1_n_0 ),
        .Q(shoulder_angle[13]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \shoulder_angle_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[14]_i_1_n_0 ),
        .Q(shoulder_angle[14]),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \shoulder_angle_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[15]_i_1_n_0 ),
        .Q(shoulder_angle[15]),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \shoulder_angle_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[16]_i_1_n_0 ),
        .Q(shoulder_angle[16]),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \shoulder_angle_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[17]_i_1_n_0 ),
        .Q(shoulder_angle[17]),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \shoulder_angle_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[1]_i_1_n_0 ),
        .Q(shoulder_angle[1]),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \shoulder_angle_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[2]_i_1_n_0 ),
        .Q(shoulder_angle[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \shoulder_angle_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[3]_i_1_n_0 ),
        .Q(shoulder_angle[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \shoulder_angle_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[4]_i_1_n_0 ),
        .Q(shoulder_angle[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \shoulder_angle_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[5]_i_1_n_0 ),
        .Q(shoulder_angle[5]),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \shoulder_angle_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[6]_i_1_n_0 ),
        .Q(shoulder_angle[6]),
        .S(reset));
  FDRE #(
    .INIT(1'b0)) 
    \shoulder_angle_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[7]_i_1_n_0 ),
        .Q(shoulder_angle[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \shoulder_angle_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[8]_i_1_n_0 ),
        .Q(shoulder_angle[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \shoulder_angle_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\shoulder_angle[9]_i_1_n_0 ),
        .Q(shoulder_angle[9]),
        .R(reset));
endmodule

(* X_MAX = "4" *) (* Y_MAX = "4" *) 
module keyboardControl
   (clk,
    reset,
    rx,
    data,
    x,
    y);
  input clk;
  input reset;
  input rx;
  output [7:0]data;
  output [7:0]x;
  output [7:0]y;

  wire clk;
  wire [7:0]data;
  wire [7:0]data_in;
  wire [7:0]data_old;
  wire internal_x;
  wire \internal_x[0]_i_1_n_0 ;
  wire \internal_x[1]_i_1_n_0 ;
  wire \internal_x[1]_i_3_n_0 ;
  wire \internal_x[1]_i_4_n_0 ;
  wire \internal_x[1]_i_5_n_0 ;
  wire \internal_x[1]_i_6_n_0 ;
  wire \internal_x[1]_i_7_n_0 ;
  wire \internal_x[1]_i_8_n_0 ;
  wire \internal_x_reg_n_0_[0] ;
  wire \internal_x_reg_n_0_[1] ;
  wire internal_y;
  wire \internal_y[0]_i_1_n_0 ;
  wire \internal_y[1]_i_1_n_0 ;
  wire \internal_y[1]_i_3_n_0 ;
  wire \internal_y_reg_n_0_[0] ;
  wire \internal_y_reg_n_0_[1] ;
  wire reset;
  wire rx;
  wire s_i_1_n_0;
  wire [2:0]\^x ;
  wire [2:0]\^y ;
  wire NLW_s_empty_UNCONNECTED;
  wire NLW_s_r_en_UNCONNECTED;
  wire NLW_s_w_clk_UNCONNECTED;

  assign x[2:1] = \^x [2:1];
  assign x[0] = \internal_x_reg_n_0_[0] ;
  assign y[2:1] = \^y [2:1];
  assign y[0] = \internal_y_reg_n_0_[0] ;
  FDRE #(
    .INIT(1'b0)) 
    \data_old_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(data[0]),
        .Q(data_old[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_old_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data[1]),
        .Q(data_old[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_old_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(data[2]),
        .Q(data_old[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_old_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data[3]),
        .Q(data_old[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_old_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data[4]),
        .Q(data_old[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_old_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data[5]),
        .Q(data_old[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_old_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data[6]),
        .Q(data_old[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_old_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(data[7]),
        .Q(data_old[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \internal_x[0]_i_1 
       (.I0(internal_x),
        .I1(\internal_x_reg_n_0_[0] ),
        .O(\internal_x[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F90)) 
    \internal_x[1]_i_1 
       (.I0(data[0]),
        .I1(\internal_x_reg_n_0_[0] ),
        .I2(internal_x),
        .I3(\internal_x_reg_n_0_[1] ),
        .O(\internal_x[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFE00000000)) 
    \internal_x[1]_i_2 
       (.I0(\internal_x[1]_i_3_n_0 ),
        .I1(\internal_x[1]_i_4_n_0 ),
        .I2(\internal_x[1]_i_5_n_0 ),
        .I3(\internal_x[1]_i_6_n_0 ),
        .I4(\internal_x[1]_i_7_n_0 ),
        .I5(\internal_x[1]_i_8_n_0 ),
        .O(internal_x));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \internal_x[1]_i_3 
       (.I0(data_old[4]),
        .I1(data[4]),
        .I2(data_old[5]),
        .I3(data[5]),
        .O(\internal_x[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \internal_x[1]_i_4 
       (.I0(data_old[6]),
        .I1(data[6]),
        .I2(data_old[7]),
        .I3(data[7]),
        .O(\internal_x[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \internal_x[1]_i_5 
       (.I0(data_old[0]),
        .I1(data[0]),
        .I2(data_old[1]),
        .I3(data[1]),
        .O(\internal_x[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \internal_x[1]_i_6 
       (.I0(data_old[2]),
        .I1(data[2]),
        .I2(data_old[3]),
        .I3(data[3]),
        .O(\internal_x[1]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \internal_x[1]_i_7 
       (.I0(data[6]),
        .I1(data[7]),
        .I2(data[5]),
        .O(\internal_x[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000110)) 
    \internal_x[1]_i_8 
       (.I0(data[4]),
        .I1(data[3]),
        .I2(data[0]),
        .I3(data[2]),
        .I4(data[1]),
        .O(\internal_x[1]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_x_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\internal_x[0]_i_1_n_0 ),
        .Q(\internal_x_reg_n_0_[0] ),
        .R(reset));
  FDSE #(
    .INIT(1'b1)) 
    \internal_x_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\internal_x[1]_i_1_n_0 ),
        .Q(\internal_x_reg_n_0_[1] ),
        .S(reset));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \internal_y[0]_i_1 
       (.I0(\internal_y_reg_n_0_[0] ),
        .I1(internal_y),
        .O(\internal_y[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h6F90)) 
    \internal_y[1]_i_1 
       (.I0(data[2]),
        .I1(\internal_y_reg_n_0_[0] ),
        .I2(internal_y),
        .I3(\internal_y_reg_n_0_[1] ),
        .O(\internal_y[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFE00000000)) 
    \internal_y[1]_i_2 
       (.I0(\internal_x[1]_i_3_n_0 ),
        .I1(\internal_x[1]_i_4_n_0 ),
        .I2(\internal_x[1]_i_5_n_0 ),
        .I3(\internal_x[1]_i_6_n_0 ),
        .I4(\internal_x[1]_i_7_n_0 ),
        .I5(\internal_y[1]_i_3_n_0 ),
        .O(internal_y));
  LUT4 #(
    .INIT(16'h2000)) 
    \internal_y[1]_i_3 
       (.I0(data[4]),
        .I1(data[3]),
        .I2(data[0]),
        .I3(data[1]),
        .O(\internal_y[1]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \internal_y_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\internal_y[0]_i_1_n_0 ),
        .Q(\internal_y_reg_n_0_[0] ),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \internal_y_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\internal_y[1]_i_1_n_0 ),
        .Q(\internal_y_reg_n_0_[1] ),
        .S(reset));
  (* baud_rate = "9600" *) 
  (* clk_freq = "100000000" *) 
  (* div_bit = "10" *) 
  (* div_counter = "2604" *) 
  (* div_sample = "4" *) 
  (* mid_sample = "2" *) 
  receiver r
       (.clk(clk),
        .data(data_in),
        .reset(reset),
        .rx(rx));
  (* DEPTH = "2" *) 
  (* DWIDTH = "8" *) 
  syncFIFO s
       (.din(data_in),
        .dout(data),
        .empty(NLW_s_empty_UNCONNECTED),
        .full(s_i_1_n_0),
        .r_clk(clk),
        .r_en(NLW_s_r_en_UNCONNECTED),
        .reset(reset),
        .w_clk(NLW_s_w_clk_UNCONNECTED),
        .w_en(s_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \x[1]_INST_0 
       (.I0(\internal_x_reg_n_0_[0] ),
        .I1(\internal_x_reg_n_0_[1] ),
        .O(\^x [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \x[2]_INST_0 
       (.I0(\internal_x_reg_n_0_[1] ),
        .I1(\internal_x_reg_n_0_[0] ),
        .O(\^x [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \y[1]_INST_0 
       (.I0(\internal_y_reg_n_0_[0] ),
        .I1(\internal_y_reg_n_0_[1] ),
        .O(\^y [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \y[2]_INST_0 
       (.I0(\internal_y_reg_n_0_[0] ),
        .I1(\internal_y_reg_n_0_[1] ),
        .O(\^y [2]));
endmodule

(* SERVO_PERIOD = "199999" *) 
module pwm
   (clk,
    en,
    angle,
    servo);
  input clk;
  input en;
  input [23:0]angle;
  output servo;

  wire [23:0]angle;
  wire clk;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire [17:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire en;
  wire servo;
  wire servo_i_10_n_0;
  wire servo_i_11_n_0;
  wire servo_i_12_n_0;
  wire servo_i_13_n_0;
  wire servo_i_14_n_0;
  wire servo_i_15_n_0;
  wire servo_i_16_n_0;
  wire servo_i_17_n_0;
  wire servo_i_18_n_0;
  wire servo_i_19_n_0;
  wire servo_i_1_n_0;
  wire servo_i_20_n_0;
  wire servo_i_21_n_0;
  wire servo_i_22_n_0;
  wire servo_i_4_n_0;
  wire servo_i_5_n_0;
  wire servo_i_7_n_0;
  wire servo_i_8_n_0;
  wire servo_i_9_n_0;
  wire servo_reg_i_2_n_3;
  wire servo_reg_i_3_n_0;
  wire servo_reg_i_6_n_0;
  wire [2:0]\NLW_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:1]NLW_servo_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_servo_reg_i_2_O_UNCONNECTED;
  wire [2:0]NLW_servo_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_servo_reg_i_3_O_UNCONNECTED;
  wire [2:0]NLW_servo_reg_i_6_CO_UNCONNECTED;
  wire [3:0]NLW_servo_reg_i_6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0008080888888888)) 
    \counter[0]_i_1 
       (.I0(counter_reg[17]),
        .I1(counter_reg[16]),
        .I2(\counter[0]_i_3_n_0 ),
        .I3(\counter[0]_i_4_n_0 ),
        .I4(\counter[0]_i_5_n_0 ),
        .I5(\counter[0]_i_6_n_0 ),
        .O(\counter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h777F)) 
    \counter[0]_i_3 
       (.I0(counter_reg[11]),
        .I1(counter_reg[10]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(\counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[0]_i_4 
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .I2(counter_reg[4]),
        .I3(counter_reg[5]),
        .I4(counter_reg[1]),
        .I5(counter_reg[0]),
        .O(\counter[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \counter[0]_i_5 
       (.I0(counter_reg[7]),
        .I1(counter_reg[6]),
        .I2(counter_reg[9]),
        .O(\counter[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[0]_i_6 
       (.I0(counter_reg[13]),
        .I1(counter_reg[12]),
        .I2(counter_reg[15]),
        .I3(counter_reg[14]),
        .O(\counter[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_7 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\NLW_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO(\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[16]_i_1_O_UNCONNECTED [3:2],\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    servo_i_1
       (.I0(servo_reg_i_2_n_3),
        .I1(en),
        .O(servo_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_10
       (.I0(angle[8]),
        .I1(counter_reg[8]),
        .I2(counter_reg[9]),
        .I3(angle[9]),
        .O(servo_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_11
       (.I0(counter_reg[15]),
        .I1(angle[15]),
        .I2(counter_reg[14]),
        .I3(angle[14]),
        .O(servo_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_12
       (.I0(counter_reg[13]),
        .I1(angle[13]),
        .I2(counter_reg[12]),
        .I3(angle[12]),
        .O(servo_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_13
       (.I0(counter_reg[11]),
        .I1(angle[11]),
        .I2(counter_reg[10]),
        .I3(angle[10]),
        .O(servo_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_14
       (.I0(counter_reg[9]),
        .I1(angle[9]),
        .I2(counter_reg[8]),
        .I3(angle[8]),
        .O(servo_i_14_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_15
       (.I0(angle[6]),
        .I1(counter_reg[6]),
        .I2(counter_reg[7]),
        .I3(angle[7]),
        .O(servo_i_15_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_16
       (.I0(angle[4]),
        .I1(counter_reg[4]),
        .I2(counter_reg[5]),
        .I3(angle[5]),
        .O(servo_i_16_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_17
       (.I0(angle[2]),
        .I1(counter_reg[2]),
        .I2(counter_reg[3]),
        .I3(angle[3]),
        .O(servo_i_17_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_18
       (.I0(angle[0]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(angle[1]),
        .O(servo_i_18_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_19
       (.I0(counter_reg[7]),
        .I1(angle[7]),
        .I2(counter_reg[6]),
        .I3(angle[6]),
        .O(servo_i_19_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_20
       (.I0(counter_reg[5]),
        .I1(angle[5]),
        .I2(counter_reg[4]),
        .I3(angle[4]),
        .O(servo_i_20_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_21
       (.I0(counter_reg[3]),
        .I1(angle[3]),
        .I2(counter_reg[2]),
        .I3(angle[2]),
        .O(servo_i_21_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_22
       (.I0(counter_reg[1]),
        .I1(angle[1]),
        .I2(counter_reg[0]),
        .I3(angle[0]),
        .O(servo_i_22_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_4
       (.I0(angle[16]),
        .I1(counter_reg[16]),
        .I2(counter_reg[17]),
        .I3(angle[17]),
        .O(servo_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_5
       (.I0(counter_reg[17]),
        .I1(angle[17]),
        .I2(counter_reg[16]),
        .I3(angle[16]),
        .O(servo_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_7
       (.I0(angle[14]),
        .I1(counter_reg[14]),
        .I2(counter_reg[15]),
        .I3(angle[15]),
        .O(servo_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_8
       (.I0(angle[12]),
        .I1(counter_reg[12]),
        .I2(counter_reg[13]),
        .I3(angle[13]),
        .O(servo_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_9
       (.I0(angle[10]),
        .I1(counter_reg[10]),
        .I2(counter_reg[11]),
        .I3(angle[11]),
        .O(servo_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    servo_reg
       (.C(clk),
        .CE(1'b1),
        .D(servo_i_1_n_0),
        .Q(servo),
        .R(1'b0));
  CARRY4 servo_reg_i_2
       (.CI(servo_reg_i_3_n_0),
        .CO({NLW_servo_reg_i_2_CO_UNCONNECTED[3:1],servo_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,servo_i_4_n_0}),
        .O(NLW_servo_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,servo_i_5_n_0}));
  CARRY4 servo_reg_i_3
       (.CI(servo_reg_i_6_n_0),
        .CO({servo_reg_i_3_n_0,NLW_servo_reg_i_3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({servo_i_7_n_0,servo_i_8_n_0,servo_i_9_n_0,servo_i_10_n_0}),
        .O(NLW_servo_reg_i_3_O_UNCONNECTED[3:0]),
        .S({servo_i_11_n_0,servo_i_12_n_0,servo_i_13_n_0,servo_i_14_n_0}));
  CARRY4 servo_reg_i_6
       (.CI(1'b0),
        .CO({servo_reg_i_6_n_0,NLW_servo_reg_i_6_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({servo_i_15_n_0,servo_i_16_n_0,servo_i_17_n_0,servo_i_18_n_0}),
        .O(NLW_servo_reg_i_6_O_UNCONNECTED[3:0]),
        .S({servo_i_19_n_0,servo_i_20_n_0,servo_i_21_n_0,servo_i_22_n_0}));
endmodule

(* ORIG_REF_NAME = "pwm" *) (* SERVO_PERIOD = "199999" *) 
module pwm__1
   (clk,
    en,
    angle,
    servo);
  input clk;
  input en;
  input [23:0]angle;
  output servo;

  wire [23:0]angle;
  wire clk;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire [17:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire en;
  wire servo;
  wire servo_i_10_n_0;
  wire servo_i_11_n_0;
  wire servo_i_12_n_0;
  wire servo_i_13_n_0;
  wire servo_i_14_n_0;
  wire servo_i_15_n_0;
  wire servo_i_16_n_0;
  wire servo_i_17_n_0;
  wire servo_i_18_n_0;
  wire servo_i_19_n_0;
  wire servo_i_1_n_0;
  wire servo_i_20_n_0;
  wire servo_i_21_n_0;
  wire servo_i_22_n_0;
  wire servo_i_4_n_0;
  wire servo_i_5_n_0;
  wire servo_i_7_n_0;
  wire servo_i_8_n_0;
  wire servo_i_9_n_0;
  wire servo_reg_i_2_n_3;
  wire servo_reg_i_3_n_0;
  wire servo_reg_i_6_n_0;
  wire [2:0]\NLW_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:1]NLW_servo_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_servo_reg_i_2_O_UNCONNECTED;
  wire [2:0]NLW_servo_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_servo_reg_i_3_O_UNCONNECTED;
  wire [2:0]NLW_servo_reg_i_6_CO_UNCONNECTED;
  wire [3:0]NLW_servo_reg_i_6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0008080888888888)) 
    \counter[0]_i_1 
       (.I0(counter_reg[17]),
        .I1(counter_reg[16]),
        .I2(\counter[0]_i_3_n_0 ),
        .I3(\counter[0]_i_4_n_0 ),
        .I4(\counter[0]_i_5_n_0 ),
        .I5(\counter[0]_i_6_n_0 ),
        .O(\counter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h777F)) 
    \counter[0]_i_3 
       (.I0(counter_reg[11]),
        .I1(counter_reg[10]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(\counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[0]_i_4 
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .I2(counter_reg[4]),
        .I3(counter_reg[5]),
        .I4(counter_reg[1]),
        .I5(counter_reg[0]),
        .O(\counter[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \counter[0]_i_5 
       (.I0(counter_reg[7]),
        .I1(counter_reg[6]),
        .I2(counter_reg[9]),
        .O(\counter[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[0]_i_6 
       (.I0(counter_reg[13]),
        .I1(counter_reg[12]),
        .I2(counter_reg[15]),
        .I3(counter_reg[14]),
        .O(\counter[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_7 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\NLW_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO(\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[16]_i_1_O_UNCONNECTED [3:2],\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    servo_i_1
       (.I0(servo_reg_i_2_n_3),
        .I1(en),
        .O(servo_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_10
       (.I0(angle[8]),
        .I1(counter_reg[8]),
        .I2(counter_reg[9]),
        .I3(angle[9]),
        .O(servo_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_11
       (.I0(counter_reg[15]),
        .I1(angle[15]),
        .I2(counter_reg[14]),
        .I3(angle[14]),
        .O(servo_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_12
       (.I0(counter_reg[13]),
        .I1(angle[13]),
        .I2(counter_reg[12]),
        .I3(angle[12]),
        .O(servo_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_13
       (.I0(counter_reg[11]),
        .I1(angle[11]),
        .I2(counter_reg[10]),
        .I3(angle[10]),
        .O(servo_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_14
       (.I0(counter_reg[9]),
        .I1(angle[9]),
        .I2(counter_reg[8]),
        .I3(angle[8]),
        .O(servo_i_14_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_15
       (.I0(angle[6]),
        .I1(counter_reg[6]),
        .I2(counter_reg[7]),
        .I3(angle[7]),
        .O(servo_i_15_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_16
       (.I0(angle[4]),
        .I1(counter_reg[4]),
        .I2(counter_reg[5]),
        .I3(angle[5]),
        .O(servo_i_16_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_17
       (.I0(angle[2]),
        .I1(counter_reg[2]),
        .I2(counter_reg[3]),
        .I3(angle[3]),
        .O(servo_i_17_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_18
       (.I0(angle[0]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(angle[1]),
        .O(servo_i_18_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_19
       (.I0(counter_reg[7]),
        .I1(angle[7]),
        .I2(counter_reg[6]),
        .I3(angle[6]),
        .O(servo_i_19_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_20
       (.I0(counter_reg[5]),
        .I1(angle[5]),
        .I2(counter_reg[4]),
        .I3(angle[4]),
        .O(servo_i_20_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_21
       (.I0(counter_reg[3]),
        .I1(angle[3]),
        .I2(counter_reg[2]),
        .I3(angle[2]),
        .O(servo_i_21_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_22
       (.I0(counter_reg[1]),
        .I1(angle[1]),
        .I2(counter_reg[0]),
        .I3(angle[0]),
        .O(servo_i_22_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_4
       (.I0(angle[16]),
        .I1(counter_reg[16]),
        .I2(counter_reg[17]),
        .I3(angle[17]),
        .O(servo_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    servo_i_5
       (.I0(counter_reg[17]),
        .I1(angle[17]),
        .I2(counter_reg[16]),
        .I3(angle[16]),
        .O(servo_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_7
       (.I0(angle[14]),
        .I1(counter_reg[14]),
        .I2(counter_reg[15]),
        .I3(angle[15]),
        .O(servo_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_8
       (.I0(angle[12]),
        .I1(counter_reg[12]),
        .I2(counter_reg[13]),
        .I3(angle[13]),
        .O(servo_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    servo_i_9
       (.I0(angle[10]),
        .I1(counter_reg[10]),
        .I2(counter_reg[11]),
        .I3(angle[11]),
        .O(servo_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    servo_reg
       (.C(clk),
        .CE(1'b1),
        .D(servo_i_1_n_0),
        .Q(servo),
        .R(1'b0));
  CARRY4 servo_reg_i_2
       (.CI(servo_reg_i_3_n_0),
        .CO({NLW_servo_reg_i_2_CO_UNCONNECTED[3:1],servo_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,servo_i_4_n_0}),
        .O(NLW_servo_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,servo_i_5_n_0}));
  CARRY4 servo_reg_i_3
       (.CI(servo_reg_i_6_n_0),
        .CO({servo_reg_i_3_n_0,NLW_servo_reg_i_3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({servo_i_7_n_0,servo_i_8_n_0,servo_i_9_n_0,servo_i_10_n_0}),
        .O(NLW_servo_reg_i_3_O_UNCONNECTED[3:0]),
        .S({servo_i_11_n_0,servo_i_12_n_0,servo_i_13_n_0,servo_i_14_n_0}));
  CARRY4 servo_reg_i_6
       (.CI(1'b0),
        .CO({servo_reg_i_6_n_0,NLW_servo_reg_i_6_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({servo_i_15_n_0,servo_i_16_n_0,servo_i_17_n_0,servo_i_18_n_0}),
        .O(NLW_servo_reg_i_6_O_UNCONNECTED[3:0]),
        .S({servo_i_19_n_0,servo_i_20_n_0,servo_i_21_n_0,servo_i_22_n_0}));
endmodule

(* CLK_CYCLES = "140000000" *) (* N = "24" *) 
module pwm_enable
   (data,
    clk,
    reset,
    en);
  input [23:0]data;
  input clk;
  input reset;
  output en;

  wire clk;
  wire \current_clk_cycles[0]_i_1_n_0 ;
  wire \current_clk_cycles[0]_i_3_n_0 ;
  wire [255:0]current_clk_cycles_reg;
  wire \current_clk_cycles_reg[0]_i_2_n_0 ;
  wire \current_clk_cycles_reg[0]_i_2_n_4 ;
  wire \current_clk_cycles_reg[0]_i_2_n_5 ;
  wire \current_clk_cycles_reg[0]_i_2_n_6 ;
  wire \current_clk_cycles_reg[0]_i_2_n_7 ;
  wire \current_clk_cycles_reg[100]_i_1_n_0 ;
  wire \current_clk_cycles_reg[100]_i_1_n_4 ;
  wire \current_clk_cycles_reg[100]_i_1_n_5 ;
  wire \current_clk_cycles_reg[100]_i_1_n_6 ;
  wire \current_clk_cycles_reg[100]_i_1_n_7 ;
  wire \current_clk_cycles_reg[104]_i_1_n_0 ;
  wire \current_clk_cycles_reg[104]_i_1_n_4 ;
  wire \current_clk_cycles_reg[104]_i_1_n_5 ;
  wire \current_clk_cycles_reg[104]_i_1_n_6 ;
  wire \current_clk_cycles_reg[104]_i_1_n_7 ;
  wire \current_clk_cycles_reg[108]_i_1_n_0 ;
  wire \current_clk_cycles_reg[108]_i_1_n_4 ;
  wire \current_clk_cycles_reg[108]_i_1_n_5 ;
  wire \current_clk_cycles_reg[108]_i_1_n_6 ;
  wire \current_clk_cycles_reg[108]_i_1_n_7 ;
  wire \current_clk_cycles_reg[112]_i_1_n_0 ;
  wire \current_clk_cycles_reg[112]_i_1_n_4 ;
  wire \current_clk_cycles_reg[112]_i_1_n_5 ;
  wire \current_clk_cycles_reg[112]_i_1_n_6 ;
  wire \current_clk_cycles_reg[112]_i_1_n_7 ;
  wire \current_clk_cycles_reg[116]_i_1_n_0 ;
  wire \current_clk_cycles_reg[116]_i_1_n_4 ;
  wire \current_clk_cycles_reg[116]_i_1_n_5 ;
  wire \current_clk_cycles_reg[116]_i_1_n_6 ;
  wire \current_clk_cycles_reg[116]_i_1_n_7 ;
  wire \current_clk_cycles_reg[120]_i_1_n_0 ;
  wire \current_clk_cycles_reg[120]_i_1_n_4 ;
  wire \current_clk_cycles_reg[120]_i_1_n_5 ;
  wire \current_clk_cycles_reg[120]_i_1_n_6 ;
  wire \current_clk_cycles_reg[120]_i_1_n_7 ;
  wire \current_clk_cycles_reg[124]_i_1_n_0 ;
  wire \current_clk_cycles_reg[124]_i_1_n_4 ;
  wire \current_clk_cycles_reg[124]_i_1_n_5 ;
  wire \current_clk_cycles_reg[124]_i_1_n_6 ;
  wire \current_clk_cycles_reg[124]_i_1_n_7 ;
  wire \current_clk_cycles_reg[128]_i_1_n_0 ;
  wire \current_clk_cycles_reg[128]_i_1_n_4 ;
  wire \current_clk_cycles_reg[128]_i_1_n_5 ;
  wire \current_clk_cycles_reg[128]_i_1_n_6 ;
  wire \current_clk_cycles_reg[128]_i_1_n_7 ;
  wire \current_clk_cycles_reg[12]_i_1_n_0 ;
  wire \current_clk_cycles_reg[12]_i_1_n_4 ;
  wire \current_clk_cycles_reg[12]_i_1_n_5 ;
  wire \current_clk_cycles_reg[12]_i_1_n_6 ;
  wire \current_clk_cycles_reg[12]_i_1_n_7 ;
  wire \current_clk_cycles_reg[132]_i_1_n_0 ;
  wire \current_clk_cycles_reg[132]_i_1_n_4 ;
  wire \current_clk_cycles_reg[132]_i_1_n_5 ;
  wire \current_clk_cycles_reg[132]_i_1_n_6 ;
  wire \current_clk_cycles_reg[132]_i_1_n_7 ;
  wire \current_clk_cycles_reg[136]_i_1_n_0 ;
  wire \current_clk_cycles_reg[136]_i_1_n_4 ;
  wire \current_clk_cycles_reg[136]_i_1_n_5 ;
  wire \current_clk_cycles_reg[136]_i_1_n_6 ;
  wire \current_clk_cycles_reg[136]_i_1_n_7 ;
  wire \current_clk_cycles_reg[140]_i_1_n_0 ;
  wire \current_clk_cycles_reg[140]_i_1_n_4 ;
  wire \current_clk_cycles_reg[140]_i_1_n_5 ;
  wire \current_clk_cycles_reg[140]_i_1_n_6 ;
  wire \current_clk_cycles_reg[140]_i_1_n_7 ;
  wire \current_clk_cycles_reg[144]_i_1_n_0 ;
  wire \current_clk_cycles_reg[144]_i_1_n_4 ;
  wire \current_clk_cycles_reg[144]_i_1_n_5 ;
  wire \current_clk_cycles_reg[144]_i_1_n_6 ;
  wire \current_clk_cycles_reg[144]_i_1_n_7 ;
  wire \current_clk_cycles_reg[148]_i_1_n_0 ;
  wire \current_clk_cycles_reg[148]_i_1_n_4 ;
  wire \current_clk_cycles_reg[148]_i_1_n_5 ;
  wire \current_clk_cycles_reg[148]_i_1_n_6 ;
  wire \current_clk_cycles_reg[148]_i_1_n_7 ;
  wire \current_clk_cycles_reg[152]_i_1_n_0 ;
  wire \current_clk_cycles_reg[152]_i_1_n_4 ;
  wire \current_clk_cycles_reg[152]_i_1_n_5 ;
  wire \current_clk_cycles_reg[152]_i_1_n_6 ;
  wire \current_clk_cycles_reg[152]_i_1_n_7 ;
  wire \current_clk_cycles_reg[156]_i_1_n_0 ;
  wire \current_clk_cycles_reg[156]_i_1_n_4 ;
  wire \current_clk_cycles_reg[156]_i_1_n_5 ;
  wire \current_clk_cycles_reg[156]_i_1_n_6 ;
  wire \current_clk_cycles_reg[156]_i_1_n_7 ;
  wire \current_clk_cycles_reg[160]_i_1_n_0 ;
  wire \current_clk_cycles_reg[160]_i_1_n_4 ;
  wire \current_clk_cycles_reg[160]_i_1_n_5 ;
  wire \current_clk_cycles_reg[160]_i_1_n_6 ;
  wire \current_clk_cycles_reg[160]_i_1_n_7 ;
  wire \current_clk_cycles_reg[164]_i_1_n_0 ;
  wire \current_clk_cycles_reg[164]_i_1_n_4 ;
  wire \current_clk_cycles_reg[164]_i_1_n_5 ;
  wire \current_clk_cycles_reg[164]_i_1_n_6 ;
  wire \current_clk_cycles_reg[164]_i_1_n_7 ;
  wire \current_clk_cycles_reg[168]_i_1_n_0 ;
  wire \current_clk_cycles_reg[168]_i_1_n_4 ;
  wire \current_clk_cycles_reg[168]_i_1_n_5 ;
  wire \current_clk_cycles_reg[168]_i_1_n_6 ;
  wire \current_clk_cycles_reg[168]_i_1_n_7 ;
  wire \current_clk_cycles_reg[16]_i_1_n_0 ;
  wire \current_clk_cycles_reg[16]_i_1_n_4 ;
  wire \current_clk_cycles_reg[16]_i_1_n_5 ;
  wire \current_clk_cycles_reg[16]_i_1_n_6 ;
  wire \current_clk_cycles_reg[16]_i_1_n_7 ;
  wire \current_clk_cycles_reg[172]_i_1_n_0 ;
  wire \current_clk_cycles_reg[172]_i_1_n_4 ;
  wire \current_clk_cycles_reg[172]_i_1_n_5 ;
  wire \current_clk_cycles_reg[172]_i_1_n_6 ;
  wire \current_clk_cycles_reg[172]_i_1_n_7 ;
  wire \current_clk_cycles_reg[176]_i_1_n_0 ;
  wire \current_clk_cycles_reg[176]_i_1_n_4 ;
  wire \current_clk_cycles_reg[176]_i_1_n_5 ;
  wire \current_clk_cycles_reg[176]_i_1_n_6 ;
  wire \current_clk_cycles_reg[176]_i_1_n_7 ;
  wire \current_clk_cycles_reg[180]_i_1_n_0 ;
  wire \current_clk_cycles_reg[180]_i_1_n_4 ;
  wire \current_clk_cycles_reg[180]_i_1_n_5 ;
  wire \current_clk_cycles_reg[180]_i_1_n_6 ;
  wire \current_clk_cycles_reg[180]_i_1_n_7 ;
  wire \current_clk_cycles_reg[184]_i_1_n_0 ;
  wire \current_clk_cycles_reg[184]_i_1_n_4 ;
  wire \current_clk_cycles_reg[184]_i_1_n_5 ;
  wire \current_clk_cycles_reg[184]_i_1_n_6 ;
  wire \current_clk_cycles_reg[184]_i_1_n_7 ;
  wire \current_clk_cycles_reg[188]_i_1_n_0 ;
  wire \current_clk_cycles_reg[188]_i_1_n_4 ;
  wire \current_clk_cycles_reg[188]_i_1_n_5 ;
  wire \current_clk_cycles_reg[188]_i_1_n_6 ;
  wire \current_clk_cycles_reg[188]_i_1_n_7 ;
  wire \current_clk_cycles_reg[192]_i_1_n_0 ;
  wire \current_clk_cycles_reg[192]_i_1_n_4 ;
  wire \current_clk_cycles_reg[192]_i_1_n_5 ;
  wire \current_clk_cycles_reg[192]_i_1_n_6 ;
  wire \current_clk_cycles_reg[192]_i_1_n_7 ;
  wire \current_clk_cycles_reg[196]_i_1_n_0 ;
  wire \current_clk_cycles_reg[196]_i_1_n_4 ;
  wire \current_clk_cycles_reg[196]_i_1_n_5 ;
  wire \current_clk_cycles_reg[196]_i_1_n_6 ;
  wire \current_clk_cycles_reg[196]_i_1_n_7 ;
  wire \current_clk_cycles_reg[200]_i_1_n_0 ;
  wire \current_clk_cycles_reg[200]_i_1_n_4 ;
  wire \current_clk_cycles_reg[200]_i_1_n_5 ;
  wire \current_clk_cycles_reg[200]_i_1_n_6 ;
  wire \current_clk_cycles_reg[200]_i_1_n_7 ;
  wire \current_clk_cycles_reg[204]_i_1_n_0 ;
  wire \current_clk_cycles_reg[204]_i_1_n_4 ;
  wire \current_clk_cycles_reg[204]_i_1_n_5 ;
  wire \current_clk_cycles_reg[204]_i_1_n_6 ;
  wire \current_clk_cycles_reg[204]_i_1_n_7 ;
  wire \current_clk_cycles_reg[208]_i_1_n_0 ;
  wire \current_clk_cycles_reg[208]_i_1_n_4 ;
  wire \current_clk_cycles_reg[208]_i_1_n_5 ;
  wire \current_clk_cycles_reg[208]_i_1_n_6 ;
  wire \current_clk_cycles_reg[208]_i_1_n_7 ;
  wire \current_clk_cycles_reg[20]_i_1_n_0 ;
  wire \current_clk_cycles_reg[20]_i_1_n_4 ;
  wire \current_clk_cycles_reg[20]_i_1_n_5 ;
  wire \current_clk_cycles_reg[20]_i_1_n_6 ;
  wire \current_clk_cycles_reg[20]_i_1_n_7 ;
  wire \current_clk_cycles_reg[212]_i_1_n_0 ;
  wire \current_clk_cycles_reg[212]_i_1_n_4 ;
  wire \current_clk_cycles_reg[212]_i_1_n_5 ;
  wire \current_clk_cycles_reg[212]_i_1_n_6 ;
  wire \current_clk_cycles_reg[212]_i_1_n_7 ;
  wire \current_clk_cycles_reg[216]_i_1_n_0 ;
  wire \current_clk_cycles_reg[216]_i_1_n_4 ;
  wire \current_clk_cycles_reg[216]_i_1_n_5 ;
  wire \current_clk_cycles_reg[216]_i_1_n_6 ;
  wire \current_clk_cycles_reg[216]_i_1_n_7 ;
  wire \current_clk_cycles_reg[220]_i_1_n_0 ;
  wire \current_clk_cycles_reg[220]_i_1_n_4 ;
  wire \current_clk_cycles_reg[220]_i_1_n_5 ;
  wire \current_clk_cycles_reg[220]_i_1_n_6 ;
  wire \current_clk_cycles_reg[220]_i_1_n_7 ;
  wire \current_clk_cycles_reg[224]_i_1_n_0 ;
  wire \current_clk_cycles_reg[224]_i_1_n_4 ;
  wire \current_clk_cycles_reg[224]_i_1_n_5 ;
  wire \current_clk_cycles_reg[224]_i_1_n_6 ;
  wire \current_clk_cycles_reg[224]_i_1_n_7 ;
  wire \current_clk_cycles_reg[228]_i_1_n_0 ;
  wire \current_clk_cycles_reg[228]_i_1_n_4 ;
  wire \current_clk_cycles_reg[228]_i_1_n_5 ;
  wire \current_clk_cycles_reg[228]_i_1_n_6 ;
  wire \current_clk_cycles_reg[228]_i_1_n_7 ;
  wire \current_clk_cycles_reg[232]_i_1_n_0 ;
  wire \current_clk_cycles_reg[232]_i_1_n_4 ;
  wire \current_clk_cycles_reg[232]_i_1_n_5 ;
  wire \current_clk_cycles_reg[232]_i_1_n_6 ;
  wire \current_clk_cycles_reg[232]_i_1_n_7 ;
  wire \current_clk_cycles_reg[236]_i_1_n_0 ;
  wire \current_clk_cycles_reg[236]_i_1_n_4 ;
  wire \current_clk_cycles_reg[236]_i_1_n_5 ;
  wire \current_clk_cycles_reg[236]_i_1_n_6 ;
  wire \current_clk_cycles_reg[236]_i_1_n_7 ;
  wire \current_clk_cycles_reg[240]_i_1_n_0 ;
  wire \current_clk_cycles_reg[240]_i_1_n_4 ;
  wire \current_clk_cycles_reg[240]_i_1_n_5 ;
  wire \current_clk_cycles_reg[240]_i_1_n_6 ;
  wire \current_clk_cycles_reg[240]_i_1_n_7 ;
  wire \current_clk_cycles_reg[244]_i_1_n_0 ;
  wire \current_clk_cycles_reg[244]_i_1_n_4 ;
  wire \current_clk_cycles_reg[244]_i_1_n_5 ;
  wire \current_clk_cycles_reg[244]_i_1_n_6 ;
  wire \current_clk_cycles_reg[244]_i_1_n_7 ;
  wire \current_clk_cycles_reg[248]_i_1_n_0 ;
  wire \current_clk_cycles_reg[248]_i_1_n_4 ;
  wire \current_clk_cycles_reg[248]_i_1_n_5 ;
  wire \current_clk_cycles_reg[248]_i_1_n_6 ;
  wire \current_clk_cycles_reg[248]_i_1_n_7 ;
  wire \current_clk_cycles_reg[24]_i_1_n_0 ;
  wire \current_clk_cycles_reg[24]_i_1_n_4 ;
  wire \current_clk_cycles_reg[24]_i_1_n_5 ;
  wire \current_clk_cycles_reg[24]_i_1_n_6 ;
  wire \current_clk_cycles_reg[24]_i_1_n_7 ;
  wire \current_clk_cycles_reg[252]_i_1_n_4 ;
  wire \current_clk_cycles_reg[252]_i_1_n_5 ;
  wire \current_clk_cycles_reg[252]_i_1_n_6 ;
  wire \current_clk_cycles_reg[252]_i_1_n_7 ;
  wire \current_clk_cycles_reg[28]_i_1_n_0 ;
  wire \current_clk_cycles_reg[28]_i_1_n_4 ;
  wire \current_clk_cycles_reg[28]_i_1_n_5 ;
  wire \current_clk_cycles_reg[28]_i_1_n_6 ;
  wire \current_clk_cycles_reg[28]_i_1_n_7 ;
  wire \current_clk_cycles_reg[32]_i_1_n_0 ;
  wire \current_clk_cycles_reg[32]_i_1_n_4 ;
  wire \current_clk_cycles_reg[32]_i_1_n_5 ;
  wire \current_clk_cycles_reg[32]_i_1_n_6 ;
  wire \current_clk_cycles_reg[32]_i_1_n_7 ;
  wire \current_clk_cycles_reg[36]_i_1_n_0 ;
  wire \current_clk_cycles_reg[36]_i_1_n_4 ;
  wire \current_clk_cycles_reg[36]_i_1_n_5 ;
  wire \current_clk_cycles_reg[36]_i_1_n_6 ;
  wire \current_clk_cycles_reg[36]_i_1_n_7 ;
  wire \current_clk_cycles_reg[40]_i_1_n_0 ;
  wire \current_clk_cycles_reg[40]_i_1_n_4 ;
  wire \current_clk_cycles_reg[40]_i_1_n_5 ;
  wire \current_clk_cycles_reg[40]_i_1_n_6 ;
  wire \current_clk_cycles_reg[40]_i_1_n_7 ;
  wire \current_clk_cycles_reg[44]_i_1_n_0 ;
  wire \current_clk_cycles_reg[44]_i_1_n_4 ;
  wire \current_clk_cycles_reg[44]_i_1_n_5 ;
  wire \current_clk_cycles_reg[44]_i_1_n_6 ;
  wire \current_clk_cycles_reg[44]_i_1_n_7 ;
  wire \current_clk_cycles_reg[48]_i_1_n_0 ;
  wire \current_clk_cycles_reg[48]_i_1_n_4 ;
  wire \current_clk_cycles_reg[48]_i_1_n_5 ;
  wire \current_clk_cycles_reg[48]_i_1_n_6 ;
  wire \current_clk_cycles_reg[48]_i_1_n_7 ;
  wire \current_clk_cycles_reg[4]_i_1_n_0 ;
  wire \current_clk_cycles_reg[4]_i_1_n_4 ;
  wire \current_clk_cycles_reg[4]_i_1_n_5 ;
  wire \current_clk_cycles_reg[4]_i_1_n_6 ;
  wire \current_clk_cycles_reg[4]_i_1_n_7 ;
  wire \current_clk_cycles_reg[52]_i_1_n_0 ;
  wire \current_clk_cycles_reg[52]_i_1_n_4 ;
  wire \current_clk_cycles_reg[52]_i_1_n_5 ;
  wire \current_clk_cycles_reg[52]_i_1_n_6 ;
  wire \current_clk_cycles_reg[52]_i_1_n_7 ;
  wire \current_clk_cycles_reg[56]_i_1_n_0 ;
  wire \current_clk_cycles_reg[56]_i_1_n_4 ;
  wire \current_clk_cycles_reg[56]_i_1_n_5 ;
  wire \current_clk_cycles_reg[56]_i_1_n_6 ;
  wire \current_clk_cycles_reg[56]_i_1_n_7 ;
  wire \current_clk_cycles_reg[60]_i_1_n_0 ;
  wire \current_clk_cycles_reg[60]_i_1_n_4 ;
  wire \current_clk_cycles_reg[60]_i_1_n_5 ;
  wire \current_clk_cycles_reg[60]_i_1_n_6 ;
  wire \current_clk_cycles_reg[60]_i_1_n_7 ;
  wire \current_clk_cycles_reg[64]_i_1_n_0 ;
  wire \current_clk_cycles_reg[64]_i_1_n_4 ;
  wire \current_clk_cycles_reg[64]_i_1_n_5 ;
  wire \current_clk_cycles_reg[64]_i_1_n_6 ;
  wire \current_clk_cycles_reg[64]_i_1_n_7 ;
  wire \current_clk_cycles_reg[68]_i_1_n_0 ;
  wire \current_clk_cycles_reg[68]_i_1_n_4 ;
  wire \current_clk_cycles_reg[68]_i_1_n_5 ;
  wire \current_clk_cycles_reg[68]_i_1_n_6 ;
  wire \current_clk_cycles_reg[68]_i_1_n_7 ;
  wire \current_clk_cycles_reg[72]_i_1_n_0 ;
  wire \current_clk_cycles_reg[72]_i_1_n_4 ;
  wire \current_clk_cycles_reg[72]_i_1_n_5 ;
  wire \current_clk_cycles_reg[72]_i_1_n_6 ;
  wire \current_clk_cycles_reg[72]_i_1_n_7 ;
  wire \current_clk_cycles_reg[76]_i_1_n_0 ;
  wire \current_clk_cycles_reg[76]_i_1_n_4 ;
  wire \current_clk_cycles_reg[76]_i_1_n_5 ;
  wire \current_clk_cycles_reg[76]_i_1_n_6 ;
  wire \current_clk_cycles_reg[76]_i_1_n_7 ;
  wire \current_clk_cycles_reg[80]_i_1_n_0 ;
  wire \current_clk_cycles_reg[80]_i_1_n_4 ;
  wire \current_clk_cycles_reg[80]_i_1_n_5 ;
  wire \current_clk_cycles_reg[80]_i_1_n_6 ;
  wire \current_clk_cycles_reg[80]_i_1_n_7 ;
  wire \current_clk_cycles_reg[84]_i_1_n_0 ;
  wire \current_clk_cycles_reg[84]_i_1_n_4 ;
  wire \current_clk_cycles_reg[84]_i_1_n_5 ;
  wire \current_clk_cycles_reg[84]_i_1_n_6 ;
  wire \current_clk_cycles_reg[84]_i_1_n_7 ;
  wire \current_clk_cycles_reg[88]_i_1_n_0 ;
  wire \current_clk_cycles_reg[88]_i_1_n_4 ;
  wire \current_clk_cycles_reg[88]_i_1_n_5 ;
  wire \current_clk_cycles_reg[88]_i_1_n_6 ;
  wire \current_clk_cycles_reg[88]_i_1_n_7 ;
  wire \current_clk_cycles_reg[8]_i_1_n_0 ;
  wire \current_clk_cycles_reg[8]_i_1_n_4 ;
  wire \current_clk_cycles_reg[8]_i_1_n_5 ;
  wire \current_clk_cycles_reg[8]_i_1_n_6 ;
  wire \current_clk_cycles_reg[8]_i_1_n_7 ;
  wire \current_clk_cycles_reg[92]_i_1_n_0 ;
  wire \current_clk_cycles_reg[92]_i_1_n_4 ;
  wire \current_clk_cycles_reg[92]_i_1_n_5 ;
  wire \current_clk_cycles_reg[92]_i_1_n_6 ;
  wire \current_clk_cycles_reg[92]_i_1_n_7 ;
  wire \current_clk_cycles_reg[96]_i_1_n_0 ;
  wire \current_clk_cycles_reg[96]_i_1_n_4 ;
  wire \current_clk_cycles_reg[96]_i_1_n_5 ;
  wire \current_clk_cycles_reg[96]_i_1_n_6 ;
  wire \current_clk_cycles_reg[96]_i_1_n_7 ;
  wire [23:0]data;
  wire data_different;
  wire data_different_i_1_n_0;
  wire en;
  wire en_i_100_n_0;
  wire en_i_101_n_0;
  wire en_i_103_n_0;
  wire en_i_104_n_0;
  wire en_i_105_n_0;
  wire en_i_106_n_0;
  wire en_i_108_n_0;
  wire en_i_109_n_0;
  wire en_i_10_n_0;
  wire en_i_110_n_0;
  wire en_i_111_n_0;
  wire en_i_113_n_0;
  wire en_i_114_n_0;
  wire en_i_115_n_0;
  wire en_i_116_n_0;
  wire en_i_118_n_0;
  wire en_i_119_n_0;
  wire en_i_11_n_0;
  wire en_i_120_n_0;
  wire en_i_121_n_0;
  wire en_i_123_n_0;
  wire en_i_124_n_0;
  wire en_i_125_n_0;
  wire en_i_126_n_0;
  wire en_i_128_n_0;
  wire en_i_129_n_0;
  wire en_i_130_n_0;
  wire en_i_131_n_0;
  wire en_i_133_n_0;
  wire en_i_134_n_0;
  wire en_i_135_n_0;
  wire en_i_136_n_0;
  wire en_i_138_n_0;
  wire en_i_139_n_0;
  wire en_i_13_n_0;
  wire en_i_140_n_0;
  wire en_i_141_n_0;
  wire en_i_143_n_0;
  wire en_i_144_n_0;
  wire en_i_145_n_0;
  wire en_i_146_n_0;
  wire en_i_147_n_0;
  wire en_i_149_n_0;
  wire en_i_14_n_0;
  wire en_i_150_n_0;
  wire en_i_151_n_0;
  wire en_i_152_n_0;
  wire en_i_153_n_0;
  wire en_i_154_n_0;
  wire en_i_155_n_0;
  wire en_i_157_n_0;
  wire en_i_158_n_0;
  wire en_i_159_n_0;
  wire en_i_15_n_0;
  wire en_i_160_n_0;
  wire en_i_161_n_0;
  wire en_i_162_n_0;
  wire en_i_163_n_0;
  wire en_i_164_n_0;
  wire en_i_165_n_0;
  wire en_i_166_n_0;
  wire en_i_167_n_0;
  wire en_i_168_n_0;
  wire en_i_16_n_0;
  wire en_i_18_n_0;
  wire en_i_19_n_0;
  wire en_i_1_n_0;
  wire en_i_20_n_0;
  wire en_i_21_n_0;
  wire en_i_23_n_0;
  wire en_i_24_n_0;
  wire en_i_25_n_0;
  wire en_i_26_n_0;
  wire en_i_28_n_0;
  wire en_i_29_n_0;
  wire en_i_30_n_0;
  wire en_i_31_n_0;
  wire en_i_33_n_0;
  wire en_i_34_n_0;
  wire en_i_35_n_0;
  wire en_i_36_n_0;
  wire en_i_38_n_0;
  wire en_i_39_n_0;
  wire en_i_40_n_0;
  wire en_i_41_n_0;
  wire en_i_43_n_0;
  wire en_i_44_n_0;
  wire en_i_45_n_0;
  wire en_i_46_n_0;
  wire en_i_48_n_0;
  wire en_i_49_n_0;
  wire en_i_4_n_0;
  wire en_i_50_n_0;
  wire en_i_51_n_0;
  wire en_i_53_n_0;
  wire en_i_54_n_0;
  wire en_i_55_n_0;
  wire en_i_56_n_0;
  wire en_i_58_n_0;
  wire en_i_59_n_0;
  wire en_i_5_n_0;
  wire en_i_60_n_0;
  wire en_i_61_n_0;
  wire en_i_63_n_0;
  wire en_i_64_n_0;
  wire en_i_65_n_0;
  wire en_i_66_n_0;
  wire en_i_68_n_0;
  wire en_i_69_n_0;
  wire en_i_6_n_0;
  wire en_i_70_n_0;
  wire en_i_71_n_0;
  wire en_i_73_n_0;
  wire en_i_74_n_0;
  wire en_i_75_n_0;
  wire en_i_76_n_0;
  wire en_i_78_n_0;
  wire en_i_79_n_0;
  wire en_i_80_n_0;
  wire en_i_81_n_0;
  wire en_i_83_n_0;
  wire en_i_84_n_0;
  wire en_i_85_n_0;
  wire en_i_86_n_0;
  wire en_i_88_n_0;
  wire en_i_89_n_0;
  wire en_i_8_n_0;
  wire en_i_90_n_0;
  wire en_i_91_n_0;
  wire en_i_93_n_0;
  wire en_i_94_n_0;
  wire en_i_95_n_0;
  wire en_i_96_n_0;
  wire en_i_98_n_0;
  wire en_i_99_n_0;
  wire en_i_9_n_0;
  wire en_reg_i_102_n_0;
  wire en_reg_i_107_n_0;
  wire en_reg_i_112_n_0;
  wire en_reg_i_117_n_0;
  wire en_reg_i_122_n_0;
  wire en_reg_i_127_n_0;
  wire en_reg_i_12_n_0;
  wire en_reg_i_132_n_0;
  wire en_reg_i_137_n_0;
  wire en_reg_i_142_n_0;
  wire en_reg_i_148_n_0;
  wire en_reg_i_156_n_0;
  wire en_reg_i_17_n_0;
  wire en_reg_i_22_n_0;
  wire en_reg_i_27_n_0;
  wire en_reg_i_2_n_1;
  wire en_reg_i_32_n_0;
  wire en_reg_i_37_n_0;
  wire en_reg_i_3_n_0;
  wire en_reg_i_42_n_0;
  wire en_reg_i_47_n_0;
  wire en_reg_i_52_n_0;
  wire en_reg_i_57_n_0;
  wire en_reg_i_62_n_0;
  wire en_reg_i_67_n_0;
  wire en_reg_i_72_n_0;
  wire en_reg_i_77_n_0;
  wire en_reg_i_7_n_0;
  wire en_reg_i_82_n_0;
  wire en_reg_i_87_n_0;
  wire en_reg_i_92_n_0;
  wire en_reg_i_97_n_0;
  wire [0:0]old_data;
  wire reset;
  wire [2:0]\NLW_current_clk_cycles_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[100]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[104]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[108]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[112]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[116]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[120]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[124]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[128]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[132]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[136]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[140]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[144]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[148]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[152]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[156]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[160]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[164]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[168]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[172]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[176]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[180]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[184]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[188]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[192]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[196]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[200]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[204]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[208]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[212]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[216]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[220]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[224]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[228]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[232]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[236]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[240]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[244]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[248]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_current_clk_cycles_reg[252]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[32]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[36]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[40]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[44]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[48]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[52]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[56]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[60]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[64]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[68]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[72]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[76]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[80]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[84]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[88]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[92]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_current_clk_cycles_reg[96]_i_1_CO_UNCONNECTED ;
  wire [2:0]NLW_en_reg_i_102_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_102_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_107_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_107_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_112_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_112_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_117_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_117_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_12_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_12_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_122_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_122_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_127_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_127_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_132_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_132_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_137_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_137_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_142_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_142_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_148_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_148_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_156_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_156_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_17_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_17_O_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_2_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_22_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_22_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_27_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_27_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_3_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_32_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_32_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_37_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_37_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_42_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_42_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_47_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_47_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_52_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_52_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_57_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_57_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_62_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_62_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_67_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_67_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_7_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_7_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_72_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_72_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_77_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_77_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_82_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_82_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_87_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_87_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_92_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_92_O_UNCONNECTED;
  wire [2:0]NLW_en_reg_i_97_CO_UNCONNECTED;
  wire [3:0]NLW_en_reg_i_97_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hBEFF)) 
    \current_clk_cycles[0]_i_1 
       (.I0(reset),
        .I1(data[0]),
        .I2(old_data),
        .I3(data_different),
        .O(\current_clk_cycles[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_clk_cycles[0]_i_3 
       (.I0(current_clk_cycles_reg[0]),
        .O(\current_clk_cycles[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[0]_i_2_n_7 ),
        .Q(current_clk_cycles_reg[0]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\current_clk_cycles_reg[0]_i_2_n_0 ,\NLW_current_clk_cycles_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\current_clk_cycles_reg[0]_i_2_n_4 ,\current_clk_cycles_reg[0]_i_2_n_5 ,\current_clk_cycles_reg[0]_i_2_n_6 ,\current_clk_cycles_reg[0]_i_2_n_7 }),
        .S({current_clk_cycles_reg[3:1],\current_clk_cycles[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[100] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[100]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[100]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[100]_i_1 
       (.CI(\current_clk_cycles_reg[96]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[100]_i_1_n_0 ,\NLW_current_clk_cycles_reg[100]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[100]_i_1_n_4 ,\current_clk_cycles_reg[100]_i_1_n_5 ,\current_clk_cycles_reg[100]_i_1_n_6 ,\current_clk_cycles_reg[100]_i_1_n_7 }),
        .S(current_clk_cycles_reg[103:100]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[101] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[100]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[101]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[102] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[100]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[102]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[103] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[100]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[103]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[104] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[104]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[104]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[104]_i_1 
       (.CI(\current_clk_cycles_reg[100]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[104]_i_1_n_0 ,\NLW_current_clk_cycles_reg[104]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[104]_i_1_n_4 ,\current_clk_cycles_reg[104]_i_1_n_5 ,\current_clk_cycles_reg[104]_i_1_n_6 ,\current_clk_cycles_reg[104]_i_1_n_7 }),
        .S(current_clk_cycles_reg[107:104]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[105] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[104]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[105]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[106] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[104]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[106]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[107] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[104]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[107]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[108] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[108]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[108]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[108]_i_1 
       (.CI(\current_clk_cycles_reg[104]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[108]_i_1_n_0 ,\NLW_current_clk_cycles_reg[108]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[108]_i_1_n_4 ,\current_clk_cycles_reg[108]_i_1_n_5 ,\current_clk_cycles_reg[108]_i_1_n_6 ,\current_clk_cycles_reg[108]_i_1_n_7 }),
        .S(current_clk_cycles_reg[111:108]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[109] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[108]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[109]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[8]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[10]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[110] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[108]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[110]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[111] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[108]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[111]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[112] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[112]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[112]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[112]_i_1 
       (.CI(\current_clk_cycles_reg[108]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[112]_i_1_n_0 ,\NLW_current_clk_cycles_reg[112]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[112]_i_1_n_4 ,\current_clk_cycles_reg[112]_i_1_n_5 ,\current_clk_cycles_reg[112]_i_1_n_6 ,\current_clk_cycles_reg[112]_i_1_n_7 }),
        .S(current_clk_cycles_reg[115:112]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[113] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[112]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[113]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[114] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[112]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[114]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[115] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[112]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[115]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[116] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[116]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[116]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[116]_i_1 
       (.CI(\current_clk_cycles_reg[112]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[116]_i_1_n_0 ,\NLW_current_clk_cycles_reg[116]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[116]_i_1_n_4 ,\current_clk_cycles_reg[116]_i_1_n_5 ,\current_clk_cycles_reg[116]_i_1_n_6 ,\current_clk_cycles_reg[116]_i_1_n_7 }),
        .S(current_clk_cycles_reg[119:116]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[117] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[116]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[117]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[118] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[116]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[118]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[119] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[116]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[119]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[8]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[11]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[120] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[120]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[120]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[120]_i_1 
       (.CI(\current_clk_cycles_reg[116]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[120]_i_1_n_0 ,\NLW_current_clk_cycles_reg[120]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[120]_i_1_n_4 ,\current_clk_cycles_reg[120]_i_1_n_5 ,\current_clk_cycles_reg[120]_i_1_n_6 ,\current_clk_cycles_reg[120]_i_1_n_7 }),
        .S(current_clk_cycles_reg[123:120]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[121] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[120]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[121]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[122] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[120]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[122]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[123] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[120]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[123]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[124] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[124]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[124]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[124]_i_1 
       (.CI(\current_clk_cycles_reg[120]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[124]_i_1_n_0 ,\NLW_current_clk_cycles_reg[124]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[124]_i_1_n_4 ,\current_clk_cycles_reg[124]_i_1_n_5 ,\current_clk_cycles_reg[124]_i_1_n_6 ,\current_clk_cycles_reg[124]_i_1_n_7 }),
        .S(current_clk_cycles_reg[127:124]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[125] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[124]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[125]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[126] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[124]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[126]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[127] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[124]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[127]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[128] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[128]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[128]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[128]_i_1 
       (.CI(\current_clk_cycles_reg[124]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[128]_i_1_n_0 ,\NLW_current_clk_cycles_reg[128]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[128]_i_1_n_4 ,\current_clk_cycles_reg[128]_i_1_n_5 ,\current_clk_cycles_reg[128]_i_1_n_6 ,\current_clk_cycles_reg[128]_i_1_n_7 }),
        .S(current_clk_cycles_reg[131:128]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[129] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[128]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[129]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[12]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[12]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[12]_i_1 
       (.CI(\current_clk_cycles_reg[8]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[12]_i_1_n_0 ,\NLW_current_clk_cycles_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[12]_i_1_n_4 ,\current_clk_cycles_reg[12]_i_1_n_5 ,\current_clk_cycles_reg[12]_i_1_n_6 ,\current_clk_cycles_reg[12]_i_1_n_7 }),
        .S(current_clk_cycles_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[130] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[128]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[130]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[131] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[128]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[131]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[132] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[132]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[132]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[132]_i_1 
       (.CI(\current_clk_cycles_reg[128]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[132]_i_1_n_0 ,\NLW_current_clk_cycles_reg[132]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[132]_i_1_n_4 ,\current_clk_cycles_reg[132]_i_1_n_5 ,\current_clk_cycles_reg[132]_i_1_n_6 ,\current_clk_cycles_reg[132]_i_1_n_7 }),
        .S(current_clk_cycles_reg[135:132]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[133] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[132]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[133]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[134] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[132]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[134]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[135] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[132]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[135]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[136] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[136]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[136]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[136]_i_1 
       (.CI(\current_clk_cycles_reg[132]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[136]_i_1_n_0 ,\NLW_current_clk_cycles_reg[136]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[136]_i_1_n_4 ,\current_clk_cycles_reg[136]_i_1_n_5 ,\current_clk_cycles_reg[136]_i_1_n_6 ,\current_clk_cycles_reg[136]_i_1_n_7 }),
        .S(current_clk_cycles_reg[139:136]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[137] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[136]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[137]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[138] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[136]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[138]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[139] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[136]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[139]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[12]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[13]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[140] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[140]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[140]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[140]_i_1 
       (.CI(\current_clk_cycles_reg[136]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[140]_i_1_n_0 ,\NLW_current_clk_cycles_reg[140]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[140]_i_1_n_4 ,\current_clk_cycles_reg[140]_i_1_n_5 ,\current_clk_cycles_reg[140]_i_1_n_6 ,\current_clk_cycles_reg[140]_i_1_n_7 }),
        .S(current_clk_cycles_reg[143:140]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[141] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[140]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[141]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[142] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[140]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[142]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[143] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[140]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[143]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[144] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[144]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[144]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[144]_i_1 
       (.CI(\current_clk_cycles_reg[140]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[144]_i_1_n_0 ,\NLW_current_clk_cycles_reg[144]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[144]_i_1_n_4 ,\current_clk_cycles_reg[144]_i_1_n_5 ,\current_clk_cycles_reg[144]_i_1_n_6 ,\current_clk_cycles_reg[144]_i_1_n_7 }),
        .S(current_clk_cycles_reg[147:144]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[145] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[144]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[145]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[146] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[144]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[146]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[147] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[144]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[147]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[148] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[148]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[148]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[148]_i_1 
       (.CI(\current_clk_cycles_reg[144]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[148]_i_1_n_0 ,\NLW_current_clk_cycles_reg[148]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[148]_i_1_n_4 ,\current_clk_cycles_reg[148]_i_1_n_5 ,\current_clk_cycles_reg[148]_i_1_n_6 ,\current_clk_cycles_reg[148]_i_1_n_7 }),
        .S(current_clk_cycles_reg[151:148]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[149] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[148]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[149]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[12]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[14]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[150] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[148]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[150]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[151] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[148]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[151]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[152] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[152]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[152]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[152]_i_1 
       (.CI(\current_clk_cycles_reg[148]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[152]_i_1_n_0 ,\NLW_current_clk_cycles_reg[152]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[152]_i_1_n_4 ,\current_clk_cycles_reg[152]_i_1_n_5 ,\current_clk_cycles_reg[152]_i_1_n_6 ,\current_clk_cycles_reg[152]_i_1_n_7 }),
        .S(current_clk_cycles_reg[155:152]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[153] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[152]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[153]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[154] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[152]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[154]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[155] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[152]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[155]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[156] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[156]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[156]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[156]_i_1 
       (.CI(\current_clk_cycles_reg[152]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[156]_i_1_n_0 ,\NLW_current_clk_cycles_reg[156]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[156]_i_1_n_4 ,\current_clk_cycles_reg[156]_i_1_n_5 ,\current_clk_cycles_reg[156]_i_1_n_6 ,\current_clk_cycles_reg[156]_i_1_n_7 }),
        .S(current_clk_cycles_reg[159:156]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[157] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[156]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[157]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[158] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[156]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[158]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[159] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[156]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[159]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[12]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[15]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[160] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[160]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[160]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[160]_i_1 
       (.CI(\current_clk_cycles_reg[156]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[160]_i_1_n_0 ,\NLW_current_clk_cycles_reg[160]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[160]_i_1_n_4 ,\current_clk_cycles_reg[160]_i_1_n_5 ,\current_clk_cycles_reg[160]_i_1_n_6 ,\current_clk_cycles_reg[160]_i_1_n_7 }),
        .S(current_clk_cycles_reg[163:160]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[161] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[160]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[161]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[162] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[160]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[162]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[163] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[160]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[163]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[164] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[164]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[164]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[164]_i_1 
       (.CI(\current_clk_cycles_reg[160]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[164]_i_1_n_0 ,\NLW_current_clk_cycles_reg[164]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[164]_i_1_n_4 ,\current_clk_cycles_reg[164]_i_1_n_5 ,\current_clk_cycles_reg[164]_i_1_n_6 ,\current_clk_cycles_reg[164]_i_1_n_7 }),
        .S(current_clk_cycles_reg[167:164]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[165] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[164]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[165]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[166] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[164]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[166]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[167] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[164]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[167]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[168] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[168]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[168]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[168]_i_1 
       (.CI(\current_clk_cycles_reg[164]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[168]_i_1_n_0 ,\NLW_current_clk_cycles_reg[168]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[168]_i_1_n_4 ,\current_clk_cycles_reg[168]_i_1_n_5 ,\current_clk_cycles_reg[168]_i_1_n_6 ,\current_clk_cycles_reg[168]_i_1_n_7 }),
        .S(current_clk_cycles_reg[171:168]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[169] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[168]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[169]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[16]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[16]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[16]_i_1 
       (.CI(\current_clk_cycles_reg[12]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[16]_i_1_n_0 ,\NLW_current_clk_cycles_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[16]_i_1_n_4 ,\current_clk_cycles_reg[16]_i_1_n_5 ,\current_clk_cycles_reg[16]_i_1_n_6 ,\current_clk_cycles_reg[16]_i_1_n_7 }),
        .S(current_clk_cycles_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[170] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[168]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[170]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[171] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[168]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[171]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[172] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[172]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[172]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[172]_i_1 
       (.CI(\current_clk_cycles_reg[168]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[172]_i_1_n_0 ,\NLW_current_clk_cycles_reg[172]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[172]_i_1_n_4 ,\current_clk_cycles_reg[172]_i_1_n_5 ,\current_clk_cycles_reg[172]_i_1_n_6 ,\current_clk_cycles_reg[172]_i_1_n_7 }),
        .S(current_clk_cycles_reg[175:172]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[173] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[172]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[173]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[174] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[172]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[174]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[175] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[172]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[175]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[176] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[176]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[176]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[176]_i_1 
       (.CI(\current_clk_cycles_reg[172]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[176]_i_1_n_0 ,\NLW_current_clk_cycles_reg[176]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[176]_i_1_n_4 ,\current_clk_cycles_reg[176]_i_1_n_5 ,\current_clk_cycles_reg[176]_i_1_n_6 ,\current_clk_cycles_reg[176]_i_1_n_7 }),
        .S(current_clk_cycles_reg[179:176]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[177] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[176]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[177]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[178] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[176]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[178]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[179] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[176]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[179]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[16]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[17]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[180] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[180]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[180]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[180]_i_1 
       (.CI(\current_clk_cycles_reg[176]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[180]_i_1_n_0 ,\NLW_current_clk_cycles_reg[180]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[180]_i_1_n_4 ,\current_clk_cycles_reg[180]_i_1_n_5 ,\current_clk_cycles_reg[180]_i_1_n_6 ,\current_clk_cycles_reg[180]_i_1_n_7 }),
        .S(current_clk_cycles_reg[183:180]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[181] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[180]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[181]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[182] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[180]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[182]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[183] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[180]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[183]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[184] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[184]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[184]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[184]_i_1 
       (.CI(\current_clk_cycles_reg[180]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[184]_i_1_n_0 ,\NLW_current_clk_cycles_reg[184]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[184]_i_1_n_4 ,\current_clk_cycles_reg[184]_i_1_n_5 ,\current_clk_cycles_reg[184]_i_1_n_6 ,\current_clk_cycles_reg[184]_i_1_n_7 }),
        .S(current_clk_cycles_reg[187:184]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[185] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[184]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[185]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[186] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[184]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[186]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[187] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[184]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[187]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[188] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[188]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[188]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[188]_i_1 
       (.CI(\current_clk_cycles_reg[184]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[188]_i_1_n_0 ,\NLW_current_clk_cycles_reg[188]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[188]_i_1_n_4 ,\current_clk_cycles_reg[188]_i_1_n_5 ,\current_clk_cycles_reg[188]_i_1_n_6 ,\current_clk_cycles_reg[188]_i_1_n_7 }),
        .S(current_clk_cycles_reg[191:188]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[189] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[188]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[189]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[16]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[18]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[190] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[188]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[190]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[191] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[188]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[191]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[192] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[192]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[192]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[192]_i_1 
       (.CI(\current_clk_cycles_reg[188]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[192]_i_1_n_0 ,\NLW_current_clk_cycles_reg[192]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[192]_i_1_n_4 ,\current_clk_cycles_reg[192]_i_1_n_5 ,\current_clk_cycles_reg[192]_i_1_n_6 ,\current_clk_cycles_reg[192]_i_1_n_7 }),
        .S(current_clk_cycles_reg[195:192]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[193] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[192]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[193]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[194] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[192]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[194]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[195] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[192]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[195]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[196] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[196]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[196]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[196]_i_1 
       (.CI(\current_clk_cycles_reg[192]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[196]_i_1_n_0 ,\NLW_current_clk_cycles_reg[196]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[196]_i_1_n_4 ,\current_clk_cycles_reg[196]_i_1_n_5 ,\current_clk_cycles_reg[196]_i_1_n_6 ,\current_clk_cycles_reg[196]_i_1_n_7 }),
        .S(current_clk_cycles_reg[199:196]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[197] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[196]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[197]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[198] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[196]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[198]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[199] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[196]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[199]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[16]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[19]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[0]_i_2_n_6 ),
        .Q(current_clk_cycles_reg[1]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[200] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[200]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[200]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[200]_i_1 
       (.CI(\current_clk_cycles_reg[196]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[200]_i_1_n_0 ,\NLW_current_clk_cycles_reg[200]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[200]_i_1_n_4 ,\current_clk_cycles_reg[200]_i_1_n_5 ,\current_clk_cycles_reg[200]_i_1_n_6 ,\current_clk_cycles_reg[200]_i_1_n_7 }),
        .S(current_clk_cycles_reg[203:200]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[201] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[200]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[201]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[202] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[200]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[202]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[203] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[200]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[203]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[204] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[204]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[204]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[204]_i_1 
       (.CI(\current_clk_cycles_reg[200]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[204]_i_1_n_0 ,\NLW_current_clk_cycles_reg[204]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[204]_i_1_n_4 ,\current_clk_cycles_reg[204]_i_1_n_5 ,\current_clk_cycles_reg[204]_i_1_n_6 ,\current_clk_cycles_reg[204]_i_1_n_7 }),
        .S(current_clk_cycles_reg[207:204]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[205] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[204]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[205]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[206] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[204]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[206]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[207] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[204]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[207]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[208] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[208]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[208]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[208]_i_1 
       (.CI(\current_clk_cycles_reg[204]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[208]_i_1_n_0 ,\NLW_current_clk_cycles_reg[208]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[208]_i_1_n_4 ,\current_clk_cycles_reg[208]_i_1_n_5 ,\current_clk_cycles_reg[208]_i_1_n_6 ,\current_clk_cycles_reg[208]_i_1_n_7 }),
        .S(current_clk_cycles_reg[211:208]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[209] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[208]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[209]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[20]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[20]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[20]_i_1 
       (.CI(\current_clk_cycles_reg[16]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[20]_i_1_n_0 ,\NLW_current_clk_cycles_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[20]_i_1_n_4 ,\current_clk_cycles_reg[20]_i_1_n_5 ,\current_clk_cycles_reg[20]_i_1_n_6 ,\current_clk_cycles_reg[20]_i_1_n_7 }),
        .S(current_clk_cycles_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[210] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[208]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[210]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[211] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[208]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[211]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[212] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[212]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[212]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[212]_i_1 
       (.CI(\current_clk_cycles_reg[208]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[212]_i_1_n_0 ,\NLW_current_clk_cycles_reg[212]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[212]_i_1_n_4 ,\current_clk_cycles_reg[212]_i_1_n_5 ,\current_clk_cycles_reg[212]_i_1_n_6 ,\current_clk_cycles_reg[212]_i_1_n_7 }),
        .S(current_clk_cycles_reg[215:212]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[213] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[212]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[213]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[214] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[212]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[214]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[215] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[212]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[215]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[216] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[216]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[216]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[216]_i_1 
       (.CI(\current_clk_cycles_reg[212]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[216]_i_1_n_0 ,\NLW_current_clk_cycles_reg[216]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[216]_i_1_n_4 ,\current_clk_cycles_reg[216]_i_1_n_5 ,\current_clk_cycles_reg[216]_i_1_n_6 ,\current_clk_cycles_reg[216]_i_1_n_7 }),
        .S(current_clk_cycles_reg[219:216]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[217] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[216]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[217]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[218] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[216]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[218]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[219] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[216]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[219]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[20]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[21]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[220] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[220]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[220]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[220]_i_1 
       (.CI(\current_clk_cycles_reg[216]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[220]_i_1_n_0 ,\NLW_current_clk_cycles_reg[220]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[220]_i_1_n_4 ,\current_clk_cycles_reg[220]_i_1_n_5 ,\current_clk_cycles_reg[220]_i_1_n_6 ,\current_clk_cycles_reg[220]_i_1_n_7 }),
        .S(current_clk_cycles_reg[223:220]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[221] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[220]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[221]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[222] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[220]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[222]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[223] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[220]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[223]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[224] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[224]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[224]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[224]_i_1 
       (.CI(\current_clk_cycles_reg[220]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[224]_i_1_n_0 ,\NLW_current_clk_cycles_reg[224]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[224]_i_1_n_4 ,\current_clk_cycles_reg[224]_i_1_n_5 ,\current_clk_cycles_reg[224]_i_1_n_6 ,\current_clk_cycles_reg[224]_i_1_n_7 }),
        .S(current_clk_cycles_reg[227:224]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[225] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[224]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[225]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[226] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[224]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[226]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[227] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[224]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[227]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[228] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[228]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[228]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[228]_i_1 
       (.CI(\current_clk_cycles_reg[224]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[228]_i_1_n_0 ,\NLW_current_clk_cycles_reg[228]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[228]_i_1_n_4 ,\current_clk_cycles_reg[228]_i_1_n_5 ,\current_clk_cycles_reg[228]_i_1_n_6 ,\current_clk_cycles_reg[228]_i_1_n_7 }),
        .S(current_clk_cycles_reg[231:228]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[229] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[228]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[229]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[20]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[22]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[230] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[228]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[230]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[231] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[228]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[231]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[232] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[232]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[232]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[232]_i_1 
       (.CI(\current_clk_cycles_reg[228]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[232]_i_1_n_0 ,\NLW_current_clk_cycles_reg[232]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[232]_i_1_n_4 ,\current_clk_cycles_reg[232]_i_1_n_5 ,\current_clk_cycles_reg[232]_i_1_n_6 ,\current_clk_cycles_reg[232]_i_1_n_7 }),
        .S(current_clk_cycles_reg[235:232]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[233] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[232]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[233]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[234] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[232]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[234]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[235] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[232]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[235]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[236] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[236]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[236]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[236]_i_1 
       (.CI(\current_clk_cycles_reg[232]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[236]_i_1_n_0 ,\NLW_current_clk_cycles_reg[236]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[236]_i_1_n_4 ,\current_clk_cycles_reg[236]_i_1_n_5 ,\current_clk_cycles_reg[236]_i_1_n_6 ,\current_clk_cycles_reg[236]_i_1_n_7 }),
        .S(current_clk_cycles_reg[239:236]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[237] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[236]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[237]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[238] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[236]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[238]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[239] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[236]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[239]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[20]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[23]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[240] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[240]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[240]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[240]_i_1 
       (.CI(\current_clk_cycles_reg[236]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[240]_i_1_n_0 ,\NLW_current_clk_cycles_reg[240]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[240]_i_1_n_4 ,\current_clk_cycles_reg[240]_i_1_n_5 ,\current_clk_cycles_reg[240]_i_1_n_6 ,\current_clk_cycles_reg[240]_i_1_n_7 }),
        .S(current_clk_cycles_reg[243:240]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[241] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[240]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[241]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[242] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[240]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[242]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[243] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[240]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[243]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[244] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[244]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[244]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[244]_i_1 
       (.CI(\current_clk_cycles_reg[240]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[244]_i_1_n_0 ,\NLW_current_clk_cycles_reg[244]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[244]_i_1_n_4 ,\current_clk_cycles_reg[244]_i_1_n_5 ,\current_clk_cycles_reg[244]_i_1_n_6 ,\current_clk_cycles_reg[244]_i_1_n_7 }),
        .S(current_clk_cycles_reg[247:244]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[245] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[244]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[245]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[246] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[244]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[246]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[247] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[244]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[247]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[248] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[248]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[248]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[248]_i_1 
       (.CI(\current_clk_cycles_reg[244]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[248]_i_1_n_0 ,\NLW_current_clk_cycles_reg[248]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[248]_i_1_n_4 ,\current_clk_cycles_reg[248]_i_1_n_5 ,\current_clk_cycles_reg[248]_i_1_n_6 ,\current_clk_cycles_reg[248]_i_1_n_7 }),
        .S(current_clk_cycles_reg[251:248]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[249] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[248]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[249]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[24]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[24]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[24]_i_1 
       (.CI(\current_clk_cycles_reg[20]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[24]_i_1_n_0 ,\NLW_current_clk_cycles_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[24]_i_1_n_4 ,\current_clk_cycles_reg[24]_i_1_n_5 ,\current_clk_cycles_reg[24]_i_1_n_6 ,\current_clk_cycles_reg[24]_i_1_n_7 }),
        .S(current_clk_cycles_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[250] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[248]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[250]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[251] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[248]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[251]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[252] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[252]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[252]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[252]_i_1 
       (.CI(\current_clk_cycles_reg[248]_i_1_n_0 ),
        .CO(\NLW_current_clk_cycles_reg[252]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[252]_i_1_n_4 ,\current_clk_cycles_reg[252]_i_1_n_5 ,\current_clk_cycles_reg[252]_i_1_n_6 ,\current_clk_cycles_reg[252]_i_1_n_7 }),
        .S(current_clk_cycles_reg[255:252]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[253] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[252]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[253]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[254] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[252]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[254]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[255] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[252]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[255]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[24]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[25]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[24]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[26]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[24]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[27]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[28]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[28]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[28]_i_1 
       (.CI(\current_clk_cycles_reg[24]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[28]_i_1_n_0 ,\NLW_current_clk_cycles_reg[28]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[28]_i_1_n_4 ,\current_clk_cycles_reg[28]_i_1_n_5 ,\current_clk_cycles_reg[28]_i_1_n_6 ,\current_clk_cycles_reg[28]_i_1_n_7 }),
        .S(current_clk_cycles_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[28]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[29]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[0]_i_2_n_5 ),
        .Q(current_clk_cycles_reg[2]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[28]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[30]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[28]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[31]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[32]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[32]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[32]_i_1 
       (.CI(\current_clk_cycles_reg[28]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[32]_i_1_n_0 ,\NLW_current_clk_cycles_reg[32]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[32]_i_1_n_4 ,\current_clk_cycles_reg[32]_i_1_n_5 ,\current_clk_cycles_reg[32]_i_1_n_6 ,\current_clk_cycles_reg[32]_i_1_n_7 }),
        .S(current_clk_cycles_reg[35:32]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[32]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[33]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[32]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[34]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[32]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[35]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[36]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[36]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[36]_i_1 
       (.CI(\current_clk_cycles_reg[32]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[36]_i_1_n_0 ,\NLW_current_clk_cycles_reg[36]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[36]_i_1_n_4 ,\current_clk_cycles_reg[36]_i_1_n_5 ,\current_clk_cycles_reg[36]_i_1_n_6 ,\current_clk_cycles_reg[36]_i_1_n_7 }),
        .S(current_clk_cycles_reg[39:36]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[36]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[37]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[36]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[38]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[36]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[39]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[0]_i_2_n_4 ),
        .Q(current_clk_cycles_reg[3]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[40]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[40]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[40]_i_1 
       (.CI(\current_clk_cycles_reg[36]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[40]_i_1_n_0 ,\NLW_current_clk_cycles_reg[40]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[40]_i_1_n_4 ,\current_clk_cycles_reg[40]_i_1_n_5 ,\current_clk_cycles_reg[40]_i_1_n_6 ,\current_clk_cycles_reg[40]_i_1_n_7 }),
        .S(current_clk_cycles_reg[43:40]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[40]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[41]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[40]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[42]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[40]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[43]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[44]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[44]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[44]_i_1 
       (.CI(\current_clk_cycles_reg[40]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[44]_i_1_n_0 ,\NLW_current_clk_cycles_reg[44]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[44]_i_1_n_4 ,\current_clk_cycles_reg[44]_i_1_n_5 ,\current_clk_cycles_reg[44]_i_1_n_6 ,\current_clk_cycles_reg[44]_i_1_n_7 }),
        .S(current_clk_cycles_reg[47:44]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[44]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[45]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[44]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[46]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[44]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[47]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[48]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[48]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[48]_i_1 
       (.CI(\current_clk_cycles_reg[44]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[48]_i_1_n_0 ,\NLW_current_clk_cycles_reg[48]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[48]_i_1_n_4 ,\current_clk_cycles_reg[48]_i_1_n_5 ,\current_clk_cycles_reg[48]_i_1_n_6 ,\current_clk_cycles_reg[48]_i_1_n_7 }),
        .S(current_clk_cycles_reg[51:48]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[48]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[49]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[4]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[4]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[4]_i_1 
       (.CI(\current_clk_cycles_reg[0]_i_2_n_0 ),
        .CO({\current_clk_cycles_reg[4]_i_1_n_0 ,\NLW_current_clk_cycles_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[4]_i_1_n_4 ,\current_clk_cycles_reg[4]_i_1_n_5 ,\current_clk_cycles_reg[4]_i_1_n_6 ,\current_clk_cycles_reg[4]_i_1_n_7 }),
        .S(current_clk_cycles_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[48]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[50]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[48]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[51]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[52]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[52]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[52]_i_1 
       (.CI(\current_clk_cycles_reg[48]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[52]_i_1_n_0 ,\NLW_current_clk_cycles_reg[52]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[52]_i_1_n_4 ,\current_clk_cycles_reg[52]_i_1_n_5 ,\current_clk_cycles_reg[52]_i_1_n_6 ,\current_clk_cycles_reg[52]_i_1_n_7 }),
        .S(current_clk_cycles_reg[55:52]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[52]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[53]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[52]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[54]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[52]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[55]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[56]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[56]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[56]_i_1 
       (.CI(\current_clk_cycles_reg[52]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[56]_i_1_n_0 ,\NLW_current_clk_cycles_reg[56]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[56]_i_1_n_4 ,\current_clk_cycles_reg[56]_i_1_n_5 ,\current_clk_cycles_reg[56]_i_1_n_6 ,\current_clk_cycles_reg[56]_i_1_n_7 }),
        .S(current_clk_cycles_reg[59:56]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[56]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[57]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[56]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[58]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[56]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[59]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[4]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[5]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[60]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[60]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[60]_i_1 
       (.CI(\current_clk_cycles_reg[56]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[60]_i_1_n_0 ,\NLW_current_clk_cycles_reg[60]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[60]_i_1_n_4 ,\current_clk_cycles_reg[60]_i_1_n_5 ,\current_clk_cycles_reg[60]_i_1_n_6 ,\current_clk_cycles_reg[60]_i_1_n_7 }),
        .S(current_clk_cycles_reg[63:60]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[60]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[61]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[60]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[62]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[60]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[63]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[64]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[64]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[64]_i_1 
       (.CI(\current_clk_cycles_reg[60]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[64]_i_1_n_0 ,\NLW_current_clk_cycles_reg[64]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[64]_i_1_n_4 ,\current_clk_cycles_reg[64]_i_1_n_5 ,\current_clk_cycles_reg[64]_i_1_n_6 ,\current_clk_cycles_reg[64]_i_1_n_7 }),
        .S(current_clk_cycles_reg[67:64]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[64]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[65]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[64]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[66]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[64]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[67]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[68]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[68]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[68]_i_1 
       (.CI(\current_clk_cycles_reg[64]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[68]_i_1_n_0 ,\NLW_current_clk_cycles_reg[68]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[68]_i_1_n_4 ,\current_clk_cycles_reg[68]_i_1_n_5 ,\current_clk_cycles_reg[68]_i_1_n_6 ,\current_clk_cycles_reg[68]_i_1_n_7 }),
        .S(current_clk_cycles_reg[71:68]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[68]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[69]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[4]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[6]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[68]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[70]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[68]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[71]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[72] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[72]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[72]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[72]_i_1 
       (.CI(\current_clk_cycles_reg[68]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[72]_i_1_n_0 ,\NLW_current_clk_cycles_reg[72]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[72]_i_1_n_4 ,\current_clk_cycles_reg[72]_i_1_n_5 ,\current_clk_cycles_reg[72]_i_1_n_6 ,\current_clk_cycles_reg[72]_i_1_n_7 }),
        .S(current_clk_cycles_reg[75:72]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[73] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[72]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[73]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[74] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[72]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[74]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[75] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[72]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[75]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[76] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[76]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[76]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[76]_i_1 
       (.CI(\current_clk_cycles_reg[72]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[76]_i_1_n_0 ,\NLW_current_clk_cycles_reg[76]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[76]_i_1_n_4 ,\current_clk_cycles_reg[76]_i_1_n_5 ,\current_clk_cycles_reg[76]_i_1_n_6 ,\current_clk_cycles_reg[76]_i_1_n_7 }),
        .S(current_clk_cycles_reg[79:76]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[77] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[76]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[77]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[78] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[76]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[78]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[79] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[76]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[79]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[4]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[7]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[80] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[80]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[80]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[80]_i_1 
       (.CI(\current_clk_cycles_reg[76]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[80]_i_1_n_0 ,\NLW_current_clk_cycles_reg[80]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[80]_i_1_n_4 ,\current_clk_cycles_reg[80]_i_1_n_5 ,\current_clk_cycles_reg[80]_i_1_n_6 ,\current_clk_cycles_reg[80]_i_1_n_7 }),
        .S(current_clk_cycles_reg[83:80]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[81] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[80]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[81]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[82] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[80]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[82]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[83] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[80]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[83]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[84] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[84]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[84]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[84]_i_1 
       (.CI(\current_clk_cycles_reg[80]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[84]_i_1_n_0 ,\NLW_current_clk_cycles_reg[84]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[84]_i_1_n_4 ,\current_clk_cycles_reg[84]_i_1_n_5 ,\current_clk_cycles_reg[84]_i_1_n_6 ,\current_clk_cycles_reg[84]_i_1_n_7 }),
        .S(current_clk_cycles_reg[87:84]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[85] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[84]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[85]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[86] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[84]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[86]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[87] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[84]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[87]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[88] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[88]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[88]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[88]_i_1 
       (.CI(\current_clk_cycles_reg[84]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[88]_i_1_n_0 ,\NLW_current_clk_cycles_reg[88]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[88]_i_1_n_4 ,\current_clk_cycles_reg[88]_i_1_n_5 ,\current_clk_cycles_reg[88]_i_1_n_6 ,\current_clk_cycles_reg[88]_i_1_n_7 }),
        .S(current_clk_cycles_reg[91:88]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[89] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[88]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[89]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[8]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[8]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[8]_i_1 
       (.CI(\current_clk_cycles_reg[4]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[8]_i_1_n_0 ,\NLW_current_clk_cycles_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[8]_i_1_n_4 ,\current_clk_cycles_reg[8]_i_1_n_5 ,\current_clk_cycles_reg[8]_i_1_n_6 ,\current_clk_cycles_reg[8]_i_1_n_7 }),
        .S(current_clk_cycles_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[90] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[88]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[90]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[91] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[88]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[91]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[92] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[92]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[92]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[92]_i_1 
       (.CI(\current_clk_cycles_reg[88]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[92]_i_1_n_0 ,\NLW_current_clk_cycles_reg[92]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[92]_i_1_n_4 ,\current_clk_cycles_reg[92]_i_1_n_5 ,\current_clk_cycles_reg[92]_i_1_n_6 ,\current_clk_cycles_reg[92]_i_1_n_7 }),
        .S(current_clk_cycles_reg[95:92]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[93] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[92]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[93]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[94] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[92]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[94]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[95] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[92]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[95]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[96] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[96]_i_1_n_7 ),
        .Q(current_clk_cycles_reg[96]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_clk_cycles_reg[96]_i_1 
       (.CI(\current_clk_cycles_reg[92]_i_1_n_0 ),
        .CO({\current_clk_cycles_reg[96]_i_1_n_0 ,\NLW_current_clk_cycles_reg[96]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_clk_cycles_reg[96]_i_1_n_4 ,\current_clk_cycles_reg[96]_i_1_n_5 ,\current_clk_cycles_reg[96]_i_1_n_6 ,\current_clk_cycles_reg[96]_i_1_n_7 }),
        .S(current_clk_cycles_reg[99:96]));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[97] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[96]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[97]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[98] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[96]_i_1_n_5 ),
        .Q(current_clk_cycles_reg[98]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[99] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[96]_i_1_n_4 ),
        .Q(current_clk_cycles_reg[99]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_clk_cycles_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_clk_cycles_reg[8]_i_1_n_6 ),
        .Q(current_clk_cycles_reg[9]),
        .R(\current_clk_cycles[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBE)) 
    data_different_i_1
       (.I0(data_different),
        .I1(old_data),
        .I2(data[0]),
        .O(data_different_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_different_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_different_i_1_n_0),
        .Q(data_different),
        .R(reset));
  LUT3 #(
    .INIT(8'hB8)) 
    en_i_1
       (.I0(en),
        .I1(reset),
        .I2(en_reg_i_2_n_1),
        .O(en_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_10
       (.I0(current_clk_cycles_reg[244]),
        .I1(current_clk_cycles_reg[245]),
        .O(en_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_100
       (.I0(current_clk_cycles_reg[100]),
        .I1(current_clk_cycles_reg[101]),
        .O(en_i_100_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_101
       (.I0(current_clk_cycles_reg[98]),
        .I1(current_clk_cycles_reg[99]),
        .O(en_i_101_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_103
       (.I0(current_clk_cycles_reg[96]),
        .I1(current_clk_cycles_reg[97]),
        .O(en_i_103_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_104
       (.I0(current_clk_cycles_reg[94]),
        .I1(current_clk_cycles_reg[95]),
        .O(en_i_104_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_105
       (.I0(current_clk_cycles_reg[92]),
        .I1(current_clk_cycles_reg[93]),
        .O(en_i_105_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_106
       (.I0(current_clk_cycles_reg[90]),
        .I1(current_clk_cycles_reg[91]),
        .O(en_i_106_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_108
       (.I0(current_clk_cycles_reg[88]),
        .I1(current_clk_cycles_reg[89]),
        .O(en_i_108_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_109
       (.I0(current_clk_cycles_reg[86]),
        .I1(current_clk_cycles_reg[87]),
        .O(en_i_109_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_11
       (.I0(current_clk_cycles_reg[242]),
        .I1(current_clk_cycles_reg[243]),
        .O(en_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_110
       (.I0(current_clk_cycles_reg[84]),
        .I1(current_clk_cycles_reg[85]),
        .O(en_i_110_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_111
       (.I0(current_clk_cycles_reg[82]),
        .I1(current_clk_cycles_reg[83]),
        .O(en_i_111_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_113
       (.I0(current_clk_cycles_reg[80]),
        .I1(current_clk_cycles_reg[81]),
        .O(en_i_113_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_114
       (.I0(current_clk_cycles_reg[78]),
        .I1(current_clk_cycles_reg[79]),
        .O(en_i_114_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_115
       (.I0(current_clk_cycles_reg[76]),
        .I1(current_clk_cycles_reg[77]),
        .O(en_i_115_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_116
       (.I0(current_clk_cycles_reg[74]),
        .I1(current_clk_cycles_reg[75]),
        .O(en_i_116_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_118
       (.I0(current_clk_cycles_reg[72]),
        .I1(current_clk_cycles_reg[73]),
        .O(en_i_118_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_119
       (.I0(current_clk_cycles_reg[70]),
        .I1(current_clk_cycles_reg[71]),
        .O(en_i_119_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_120
       (.I0(current_clk_cycles_reg[68]),
        .I1(current_clk_cycles_reg[69]),
        .O(en_i_120_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_121
       (.I0(current_clk_cycles_reg[66]),
        .I1(current_clk_cycles_reg[67]),
        .O(en_i_121_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_123
       (.I0(current_clk_cycles_reg[64]),
        .I1(current_clk_cycles_reg[65]),
        .O(en_i_123_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_124
       (.I0(current_clk_cycles_reg[62]),
        .I1(current_clk_cycles_reg[63]),
        .O(en_i_124_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_125
       (.I0(current_clk_cycles_reg[60]),
        .I1(current_clk_cycles_reg[61]),
        .O(en_i_125_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_126
       (.I0(current_clk_cycles_reg[58]),
        .I1(current_clk_cycles_reg[59]),
        .O(en_i_126_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_128
       (.I0(current_clk_cycles_reg[56]),
        .I1(current_clk_cycles_reg[57]),
        .O(en_i_128_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_129
       (.I0(current_clk_cycles_reg[54]),
        .I1(current_clk_cycles_reg[55]),
        .O(en_i_129_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_13
       (.I0(current_clk_cycles_reg[240]),
        .I1(current_clk_cycles_reg[241]),
        .O(en_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_130
       (.I0(current_clk_cycles_reg[52]),
        .I1(current_clk_cycles_reg[53]),
        .O(en_i_130_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_131
       (.I0(current_clk_cycles_reg[50]),
        .I1(current_clk_cycles_reg[51]),
        .O(en_i_131_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_133
       (.I0(current_clk_cycles_reg[48]),
        .I1(current_clk_cycles_reg[49]),
        .O(en_i_133_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_134
       (.I0(current_clk_cycles_reg[46]),
        .I1(current_clk_cycles_reg[47]),
        .O(en_i_134_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_135
       (.I0(current_clk_cycles_reg[44]),
        .I1(current_clk_cycles_reg[45]),
        .O(en_i_135_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_136
       (.I0(current_clk_cycles_reg[42]),
        .I1(current_clk_cycles_reg[43]),
        .O(en_i_136_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_138
       (.I0(current_clk_cycles_reg[40]),
        .I1(current_clk_cycles_reg[41]),
        .O(en_i_138_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_139
       (.I0(current_clk_cycles_reg[38]),
        .I1(current_clk_cycles_reg[39]),
        .O(en_i_139_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_14
       (.I0(current_clk_cycles_reg[238]),
        .I1(current_clk_cycles_reg[239]),
        .O(en_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_140
       (.I0(current_clk_cycles_reg[36]),
        .I1(current_clk_cycles_reg[37]),
        .O(en_i_140_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_141
       (.I0(current_clk_cycles_reg[34]),
        .I1(current_clk_cycles_reg[35]),
        .O(en_i_141_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    en_i_143
       (.I0(current_clk_cycles_reg[27]),
        .O(en_i_143_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_144
       (.I0(current_clk_cycles_reg[32]),
        .I1(current_clk_cycles_reg[33]),
        .O(en_i_144_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_145
       (.I0(current_clk_cycles_reg[30]),
        .I1(current_clk_cycles_reg[31]),
        .O(en_i_145_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_146
       (.I0(current_clk_cycles_reg[28]),
        .I1(current_clk_cycles_reg[29]),
        .O(en_i_146_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    en_i_147
       (.I0(current_clk_cycles_reg[27]),
        .I1(current_clk_cycles_reg[26]),
        .O(en_i_147_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_149
       (.I0(current_clk_cycles_reg[22]),
        .I1(current_clk_cycles_reg[23]),
        .O(en_i_149_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_15
       (.I0(current_clk_cycles_reg[236]),
        .I1(current_clk_cycles_reg[237]),
        .O(en_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_150
       (.I0(current_clk_cycles_reg[20]),
        .I1(current_clk_cycles_reg[21]),
        .O(en_i_150_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    en_i_151
       (.I0(current_clk_cycles_reg[19]),
        .O(en_i_151_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_152
       (.I0(current_clk_cycles_reg[24]),
        .I1(current_clk_cycles_reg[25]),
        .O(en_i_152_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    en_i_153
       (.I0(current_clk_cycles_reg[22]),
        .I1(current_clk_cycles_reg[23]),
        .O(en_i_153_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    en_i_154
       (.I0(current_clk_cycles_reg[20]),
        .I1(current_clk_cycles_reg[21]),
        .O(en_i_154_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    en_i_155
       (.I0(current_clk_cycles_reg[19]),
        .I1(current_clk_cycles_reg[18]),
        .O(en_i_155_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    en_i_157
       (.I0(current_clk_cycles_reg[12]),
        .I1(current_clk_cycles_reg[13]),
        .O(en_i_157_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    en_i_158
       (.I0(current_clk_cycles_reg[11]),
        .O(en_i_158_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_159
       (.I0(current_clk_cycles_reg[16]),
        .I1(current_clk_cycles_reg[17]),
        .O(en_i_159_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_16
       (.I0(current_clk_cycles_reg[234]),
        .I1(current_clk_cycles_reg[235]),
        .O(en_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_160
       (.I0(current_clk_cycles_reg[14]),
        .I1(current_clk_cycles_reg[15]),
        .O(en_i_160_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    en_i_161
       (.I0(current_clk_cycles_reg[12]),
        .I1(current_clk_cycles_reg[13]),
        .O(en_i_161_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    en_i_162
       (.I0(current_clk_cycles_reg[11]),
        .I1(current_clk_cycles_reg[10]),
        .O(en_i_162_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_163
       (.I0(current_clk_cycles_reg[0]),
        .I1(current_clk_cycles_reg[1]),
        .O(en_i_163_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    en_i_164
       (.I0(current_clk_cycles_reg[8]),
        .I1(current_clk_cycles_reg[9]),
        .O(en_i_164_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    en_i_165
       (.I0(current_clk_cycles_reg[8]),
        .I1(current_clk_cycles_reg[9]),
        .O(en_i_165_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_166
       (.I0(current_clk_cycles_reg[6]),
        .I1(current_clk_cycles_reg[7]),
        .O(en_i_166_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_167
       (.I0(current_clk_cycles_reg[4]),
        .I1(current_clk_cycles_reg[5]),
        .O(en_i_167_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_168
       (.I0(current_clk_cycles_reg[2]),
        .I1(current_clk_cycles_reg[3]),
        .O(en_i_168_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_18
       (.I0(current_clk_cycles_reg[232]),
        .I1(current_clk_cycles_reg[233]),
        .O(en_i_18_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_19
       (.I0(current_clk_cycles_reg[230]),
        .I1(current_clk_cycles_reg[231]),
        .O(en_i_19_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_20
       (.I0(current_clk_cycles_reg[228]),
        .I1(current_clk_cycles_reg[229]),
        .O(en_i_20_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_21
       (.I0(current_clk_cycles_reg[226]),
        .I1(current_clk_cycles_reg[227]),
        .O(en_i_21_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_23
       (.I0(current_clk_cycles_reg[224]),
        .I1(current_clk_cycles_reg[225]),
        .O(en_i_23_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_24
       (.I0(current_clk_cycles_reg[222]),
        .I1(current_clk_cycles_reg[223]),
        .O(en_i_24_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_25
       (.I0(current_clk_cycles_reg[220]),
        .I1(current_clk_cycles_reg[221]),
        .O(en_i_25_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_26
       (.I0(current_clk_cycles_reg[218]),
        .I1(current_clk_cycles_reg[219]),
        .O(en_i_26_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_28
       (.I0(current_clk_cycles_reg[216]),
        .I1(current_clk_cycles_reg[217]),
        .O(en_i_28_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_29
       (.I0(current_clk_cycles_reg[214]),
        .I1(current_clk_cycles_reg[215]),
        .O(en_i_29_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_30
       (.I0(current_clk_cycles_reg[212]),
        .I1(current_clk_cycles_reg[213]),
        .O(en_i_30_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_31
       (.I0(current_clk_cycles_reg[210]),
        .I1(current_clk_cycles_reg[211]),
        .O(en_i_31_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_33
       (.I0(current_clk_cycles_reg[208]),
        .I1(current_clk_cycles_reg[209]),
        .O(en_i_33_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_34
       (.I0(current_clk_cycles_reg[206]),
        .I1(current_clk_cycles_reg[207]),
        .O(en_i_34_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_35
       (.I0(current_clk_cycles_reg[204]),
        .I1(current_clk_cycles_reg[205]),
        .O(en_i_35_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_36
       (.I0(current_clk_cycles_reg[202]),
        .I1(current_clk_cycles_reg[203]),
        .O(en_i_36_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_38
       (.I0(current_clk_cycles_reg[200]),
        .I1(current_clk_cycles_reg[201]),
        .O(en_i_38_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_39
       (.I0(current_clk_cycles_reg[198]),
        .I1(current_clk_cycles_reg[199]),
        .O(en_i_39_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_4
       (.I0(current_clk_cycles_reg[254]),
        .I1(current_clk_cycles_reg[255]),
        .O(en_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_40
       (.I0(current_clk_cycles_reg[196]),
        .I1(current_clk_cycles_reg[197]),
        .O(en_i_40_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_41
       (.I0(current_clk_cycles_reg[194]),
        .I1(current_clk_cycles_reg[195]),
        .O(en_i_41_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_43
       (.I0(current_clk_cycles_reg[192]),
        .I1(current_clk_cycles_reg[193]),
        .O(en_i_43_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_44
       (.I0(current_clk_cycles_reg[190]),
        .I1(current_clk_cycles_reg[191]),
        .O(en_i_44_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_45
       (.I0(current_clk_cycles_reg[188]),
        .I1(current_clk_cycles_reg[189]),
        .O(en_i_45_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_46
       (.I0(current_clk_cycles_reg[186]),
        .I1(current_clk_cycles_reg[187]),
        .O(en_i_46_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_48
       (.I0(current_clk_cycles_reg[184]),
        .I1(current_clk_cycles_reg[185]),
        .O(en_i_48_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_49
       (.I0(current_clk_cycles_reg[182]),
        .I1(current_clk_cycles_reg[183]),
        .O(en_i_49_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_5
       (.I0(current_clk_cycles_reg[252]),
        .I1(current_clk_cycles_reg[253]),
        .O(en_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_50
       (.I0(current_clk_cycles_reg[180]),
        .I1(current_clk_cycles_reg[181]),
        .O(en_i_50_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_51
       (.I0(current_clk_cycles_reg[178]),
        .I1(current_clk_cycles_reg[179]),
        .O(en_i_51_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_53
       (.I0(current_clk_cycles_reg[176]),
        .I1(current_clk_cycles_reg[177]),
        .O(en_i_53_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_54
       (.I0(current_clk_cycles_reg[174]),
        .I1(current_clk_cycles_reg[175]),
        .O(en_i_54_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_55
       (.I0(current_clk_cycles_reg[172]),
        .I1(current_clk_cycles_reg[173]),
        .O(en_i_55_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_56
       (.I0(current_clk_cycles_reg[170]),
        .I1(current_clk_cycles_reg[171]),
        .O(en_i_56_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_58
       (.I0(current_clk_cycles_reg[168]),
        .I1(current_clk_cycles_reg[169]),
        .O(en_i_58_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_59
       (.I0(current_clk_cycles_reg[166]),
        .I1(current_clk_cycles_reg[167]),
        .O(en_i_59_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_6
       (.I0(current_clk_cycles_reg[250]),
        .I1(current_clk_cycles_reg[251]),
        .O(en_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_60
       (.I0(current_clk_cycles_reg[164]),
        .I1(current_clk_cycles_reg[165]),
        .O(en_i_60_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_61
       (.I0(current_clk_cycles_reg[162]),
        .I1(current_clk_cycles_reg[163]),
        .O(en_i_61_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_63
       (.I0(current_clk_cycles_reg[160]),
        .I1(current_clk_cycles_reg[161]),
        .O(en_i_63_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_64
       (.I0(current_clk_cycles_reg[158]),
        .I1(current_clk_cycles_reg[159]),
        .O(en_i_64_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_65
       (.I0(current_clk_cycles_reg[156]),
        .I1(current_clk_cycles_reg[157]),
        .O(en_i_65_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_66
       (.I0(current_clk_cycles_reg[154]),
        .I1(current_clk_cycles_reg[155]),
        .O(en_i_66_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_68
       (.I0(current_clk_cycles_reg[152]),
        .I1(current_clk_cycles_reg[153]),
        .O(en_i_68_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_69
       (.I0(current_clk_cycles_reg[150]),
        .I1(current_clk_cycles_reg[151]),
        .O(en_i_69_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_70
       (.I0(current_clk_cycles_reg[148]),
        .I1(current_clk_cycles_reg[149]),
        .O(en_i_70_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_71
       (.I0(current_clk_cycles_reg[146]),
        .I1(current_clk_cycles_reg[147]),
        .O(en_i_71_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_73
       (.I0(current_clk_cycles_reg[144]),
        .I1(current_clk_cycles_reg[145]),
        .O(en_i_73_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_74
       (.I0(current_clk_cycles_reg[142]),
        .I1(current_clk_cycles_reg[143]),
        .O(en_i_74_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_75
       (.I0(current_clk_cycles_reg[140]),
        .I1(current_clk_cycles_reg[141]),
        .O(en_i_75_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_76
       (.I0(current_clk_cycles_reg[138]),
        .I1(current_clk_cycles_reg[139]),
        .O(en_i_76_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_78
       (.I0(current_clk_cycles_reg[136]),
        .I1(current_clk_cycles_reg[137]),
        .O(en_i_78_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_79
       (.I0(current_clk_cycles_reg[134]),
        .I1(current_clk_cycles_reg[135]),
        .O(en_i_79_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_8
       (.I0(current_clk_cycles_reg[248]),
        .I1(current_clk_cycles_reg[249]),
        .O(en_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_80
       (.I0(current_clk_cycles_reg[132]),
        .I1(current_clk_cycles_reg[133]),
        .O(en_i_80_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_81
       (.I0(current_clk_cycles_reg[130]),
        .I1(current_clk_cycles_reg[131]),
        .O(en_i_81_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_83
       (.I0(current_clk_cycles_reg[128]),
        .I1(current_clk_cycles_reg[129]),
        .O(en_i_83_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_84
       (.I0(current_clk_cycles_reg[126]),
        .I1(current_clk_cycles_reg[127]),
        .O(en_i_84_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_85
       (.I0(current_clk_cycles_reg[124]),
        .I1(current_clk_cycles_reg[125]),
        .O(en_i_85_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_86
       (.I0(current_clk_cycles_reg[122]),
        .I1(current_clk_cycles_reg[123]),
        .O(en_i_86_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_88
       (.I0(current_clk_cycles_reg[120]),
        .I1(current_clk_cycles_reg[121]),
        .O(en_i_88_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_89
       (.I0(current_clk_cycles_reg[118]),
        .I1(current_clk_cycles_reg[119]),
        .O(en_i_89_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_9
       (.I0(current_clk_cycles_reg[246]),
        .I1(current_clk_cycles_reg[247]),
        .O(en_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_90
       (.I0(current_clk_cycles_reg[116]),
        .I1(current_clk_cycles_reg[117]),
        .O(en_i_90_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_91
       (.I0(current_clk_cycles_reg[114]),
        .I1(current_clk_cycles_reg[115]),
        .O(en_i_91_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_93
       (.I0(current_clk_cycles_reg[112]),
        .I1(current_clk_cycles_reg[113]),
        .O(en_i_93_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_94
       (.I0(current_clk_cycles_reg[110]),
        .I1(current_clk_cycles_reg[111]),
        .O(en_i_94_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_95
       (.I0(current_clk_cycles_reg[108]),
        .I1(current_clk_cycles_reg[109]),
        .O(en_i_95_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_96
       (.I0(current_clk_cycles_reg[106]),
        .I1(current_clk_cycles_reg[107]),
        .O(en_i_96_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_98
       (.I0(current_clk_cycles_reg[104]),
        .I1(current_clk_cycles_reg[105]),
        .O(en_i_98_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    en_i_99
       (.I0(current_clk_cycles_reg[102]),
        .I1(current_clk_cycles_reg[103]),
        .O(en_i_99_n_0));
  FDRE #(
    .INIT(1'b0)) 
    en_reg
       (.C(clk),
        .CE(1'b1),
        .D(en_i_1_n_0),
        .Q(en),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_102
       (.CI(en_reg_i_107_n_0),
        .CO({en_reg_i_102_n_0,NLW_en_reg_i_102_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_102_O_UNCONNECTED[3:0]),
        .S({en_i_108_n_0,en_i_109_n_0,en_i_110_n_0,en_i_111_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_107
       (.CI(en_reg_i_112_n_0),
        .CO({en_reg_i_107_n_0,NLW_en_reg_i_107_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_107_O_UNCONNECTED[3:0]),
        .S({en_i_113_n_0,en_i_114_n_0,en_i_115_n_0,en_i_116_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_112
       (.CI(en_reg_i_117_n_0),
        .CO({en_reg_i_112_n_0,NLW_en_reg_i_112_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_112_O_UNCONNECTED[3:0]),
        .S({en_i_118_n_0,en_i_119_n_0,en_i_120_n_0,en_i_121_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_117
       (.CI(en_reg_i_122_n_0),
        .CO({en_reg_i_117_n_0,NLW_en_reg_i_117_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_117_O_UNCONNECTED[3:0]),
        .S({en_i_123_n_0,en_i_124_n_0,en_i_125_n_0,en_i_126_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_12
       (.CI(en_reg_i_17_n_0),
        .CO({en_reg_i_12_n_0,NLW_en_reg_i_12_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_12_O_UNCONNECTED[3:0]),
        .S({en_i_18_n_0,en_i_19_n_0,en_i_20_n_0,en_i_21_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_122
       (.CI(en_reg_i_127_n_0),
        .CO({en_reg_i_122_n_0,NLW_en_reg_i_122_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_122_O_UNCONNECTED[3:0]),
        .S({en_i_128_n_0,en_i_129_n_0,en_i_130_n_0,en_i_131_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_127
       (.CI(en_reg_i_132_n_0),
        .CO({en_reg_i_127_n_0,NLW_en_reg_i_127_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_127_O_UNCONNECTED[3:0]),
        .S({en_i_133_n_0,en_i_134_n_0,en_i_135_n_0,en_i_136_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_132
       (.CI(en_reg_i_137_n_0),
        .CO({en_reg_i_132_n_0,NLW_en_reg_i_132_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_132_O_UNCONNECTED[3:0]),
        .S({en_i_138_n_0,en_i_139_n_0,en_i_140_n_0,en_i_141_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_137
       (.CI(en_reg_i_142_n_0),
        .CO({en_reg_i_137_n_0,NLW_en_reg_i_137_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,en_i_143_n_0}),
        .O(NLW_en_reg_i_137_O_UNCONNECTED[3:0]),
        .S({en_i_144_n_0,en_i_145_n_0,en_i_146_n_0,en_i_147_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_142
       (.CI(en_reg_i_148_n_0),
        .CO({en_reg_i_142_n_0,NLW_en_reg_i_142_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,en_i_149_n_0,en_i_150_n_0,en_i_151_n_0}),
        .O(NLW_en_reg_i_142_O_UNCONNECTED[3:0]),
        .S({en_i_152_n_0,en_i_153_n_0,en_i_154_n_0,en_i_155_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_148
       (.CI(en_reg_i_156_n_0),
        .CO({en_reg_i_148_n_0,NLW_en_reg_i_148_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,en_i_157_n_0,en_i_158_n_0}),
        .O(NLW_en_reg_i_148_O_UNCONNECTED[3:0]),
        .S({en_i_159_n_0,en_i_160_n_0,en_i_161_n_0,en_i_162_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_156
       (.CI(1'b0),
        .CO({en_reg_i_156_n_0,NLW_en_reg_i_156_CO_UNCONNECTED[2:0]}),
        .CYINIT(en_i_163_n_0),
        .DI({en_i_164_n_0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_156_O_UNCONNECTED[3:0]),
        .S({en_i_165_n_0,en_i_166_n_0,en_i_167_n_0,en_i_168_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_17
       (.CI(en_reg_i_22_n_0),
        .CO({en_reg_i_17_n_0,NLW_en_reg_i_17_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_17_O_UNCONNECTED[3:0]),
        .S({en_i_23_n_0,en_i_24_n_0,en_i_25_n_0,en_i_26_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_2
       (.CI(en_reg_i_3_n_0),
        .CO({NLW_en_reg_i_2_CO_UNCONNECTED[3],en_reg_i_2_n_1,NLW_en_reg_i_2_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,en_i_4_n_0,en_i_5_n_0,en_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_22
       (.CI(en_reg_i_27_n_0),
        .CO({en_reg_i_22_n_0,NLW_en_reg_i_22_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_22_O_UNCONNECTED[3:0]),
        .S({en_i_28_n_0,en_i_29_n_0,en_i_30_n_0,en_i_31_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_27
       (.CI(en_reg_i_32_n_0),
        .CO({en_reg_i_27_n_0,NLW_en_reg_i_27_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_27_O_UNCONNECTED[3:0]),
        .S({en_i_33_n_0,en_i_34_n_0,en_i_35_n_0,en_i_36_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_3
       (.CI(en_reg_i_7_n_0),
        .CO({en_reg_i_3_n_0,NLW_en_reg_i_3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_3_O_UNCONNECTED[3:0]),
        .S({en_i_8_n_0,en_i_9_n_0,en_i_10_n_0,en_i_11_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_32
       (.CI(en_reg_i_37_n_0),
        .CO({en_reg_i_32_n_0,NLW_en_reg_i_32_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_32_O_UNCONNECTED[3:0]),
        .S({en_i_38_n_0,en_i_39_n_0,en_i_40_n_0,en_i_41_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_37
       (.CI(en_reg_i_42_n_0),
        .CO({en_reg_i_37_n_0,NLW_en_reg_i_37_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_37_O_UNCONNECTED[3:0]),
        .S({en_i_43_n_0,en_i_44_n_0,en_i_45_n_0,en_i_46_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_42
       (.CI(en_reg_i_47_n_0),
        .CO({en_reg_i_42_n_0,NLW_en_reg_i_42_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_42_O_UNCONNECTED[3:0]),
        .S({en_i_48_n_0,en_i_49_n_0,en_i_50_n_0,en_i_51_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_47
       (.CI(en_reg_i_52_n_0),
        .CO({en_reg_i_47_n_0,NLW_en_reg_i_47_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_47_O_UNCONNECTED[3:0]),
        .S({en_i_53_n_0,en_i_54_n_0,en_i_55_n_0,en_i_56_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_52
       (.CI(en_reg_i_57_n_0),
        .CO({en_reg_i_52_n_0,NLW_en_reg_i_52_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_52_O_UNCONNECTED[3:0]),
        .S({en_i_58_n_0,en_i_59_n_0,en_i_60_n_0,en_i_61_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_57
       (.CI(en_reg_i_62_n_0),
        .CO({en_reg_i_57_n_0,NLW_en_reg_i_57_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_57_O_UNCONNECTED[3:0]),
        .S({en_i_63_n_0,en_i_64_n_0,en_i_65_n_0,en_i_66_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_62
       (.CI(en_reg_i_67_n_0),
        .CO({en_reg_i_62_n_0,NLW_en_reg_i_62_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_62_O_UNCONNECTED[3:0]),
        .S({en_i_68_n_0,en_i_69_n_0,en_i_70_n_0,en_i_71_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_67
       (.CI(en_reg_i_72_n_0),
        .CO({en_reg_i_67_n_0,NLW_en_reg_i_67_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_67_O_UNCONNECTED[3:0]),
        .S({en_i_73_n_0,en_i_74_n_0,en_i_75_n_0,en_i_76_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_7
       (.CI(en_reg_i_12_n_0),
        .CO({en_reg_i_7_n_0,NLW_en_reg_i_7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_7_O_UNCONNECTED[3:0]),
        .S({en_i_13_n_0,en_i_14_n_0,en_i_15_n_0,en_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_72
       (.CI(en_reg_i_77_n_0),
        .CO({en_reg_i_72_n_0,NLW_en_reg_i_72_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_72_O_UNCONNECTED[3:0]),
        .S({en_i_78_n_0,en_i_79_n_0,en_i_80_n_0,en_i_81_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_77
       (.CI(en_reg_i_82_n_0),
        .CO({en_reg_i_77_n_0,NLW_en_reg_i_77_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_77_O_UNCONNECTED[3:0]),
        .S({en_i_83_n_0,en_i_84_n_0,en_i_85_n_0,en_i_86_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_82
       (.CI(en_reg_i_87_n_0),
        .CO({en_reg_i_82_n_0,NLW_en_reg_i_82_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_82_O_UNCONNECTED[3:0]),
        .S({en_i_88_n_0,en_i_89_n_0,en_i_90_n_0,en_i_91_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_87
       (.CI(en_reg_i_92_n_0),
        .CO({en_reg_i_87_n_0,NLW_en_reg_i_87_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_87_O_UNCONNECTED[3:0]),
        .S({en_i_93_n_0,en_i_94_n_0,en_i_95_n_0,en_i_96_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_92
       (.CI(en_reg_i_97_n_0),
        .CO({en_reg_i_92_n_0,NLW_en_reg_i_92_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_92_O_UNCONNECTED[3:0]),
        .S({en_i_98_n_0,en_i_99_n_0,en_i_100_n_0,en_i_101_n_0}));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 en_reg_i_97
       (.CI(en_reg_i_102_n_0),
        .CO({en_reg_i_97_n_0,NLW_en_reg_i_97_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_en_reg_i_97_O_UNCONNECTED[3:0]),
        .S({en_i_103_n_0,en_i_104_n_0,en_i_105_n_0,en_i_106_n_0}));
  FDRE #(
    .INIT(1'b0)) 
    \old_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(data[0]),
        .Q(old_data),
        .R(reset));
endmodule

(* DIVISION_AMOUNT = "1664" *) 
module pwm_measure
   (clk,
    reset,
    pwm_in,
    distance);
  input clk;
  input reset;
  input pwm_in;
  output [7:0]distance;

  wire [7:0]averaged_distance;
  wire clk;
  wire count;
  wire count12_out;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire [31:0]count_reg;
  wire \count_reg[0]_i_3_n_0 ;
  wire \count_reg[0]_i_3_n_4 ;
  wire \count_reg[0]_i_3_n_5 ;
  wire \count_reg[0]_i_3_n_6 ;
  wire \count_reg[0]_i_3_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_4 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire [7:0]\^distance ;
  wire \distance[7]_INST_0_i_1_n_0 ;
  wire [10:0]divided_distance;
  wire old_pwm_in;
  wire pwm_in;
  wire [31:0]raw_distance;
  wire reset;
  wire NLW_a_EN_UNCONNECTED;
  wire [31:11]NLW_a_Din_UNCONNECTED;
  wire [31:8]NLW_a_Q_UNCONNECTED;
  wire [2:0]\NLW_count_reg[0]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;
  wire [31:11]NLW_d_a_UNCONNECTED;
  wire [31:0]NLW_d_b_UNCONNECTED;
  wire [31:0]NLW_d_y_UNCONNECTED;

  assign distance[7:1] = \^distance [7:1];
  assign distance[0] = averaged_distance[0];
  (* MAX_SIZE = "256" *) 
  (* N = "32" *) 
  (* POWER = "8" *) 
  averager a
       (.Din({NLW_a_Din_UNCONNECTED[31:11],divided_distance}),
        .EN(NLW_a_EN_UNCONNECTED),
        .Q({NLW_a_Q_UNCONNECTED[31:8],averaged_distance}),
        .clk(clk),
        .reset(reset));
  LUT3 #(
    .INIT(8'hBA)) 
    \count[0]_i_1 
       (.I0(reset),
        .I1(old_pwm_in),
        .I2(pwm_in),
        .O(\count[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_2 
       (.I0(pwm_in),
        .I1(old_pwm_in),
        .O(count));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_4 
       (.I0(count_reg[0]),
        .O(\count[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[0]_i_3_n_7 ),
        .Q(count_reg[0]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_3_n_0 ,\NLW_count_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_3_n_4 ,\count_reg[0]_i_3_n_5 ,\count_reg[0]_i_3_n_6 ,\count_reg[0]_i_3_n_7 }),
        .S({count_reg[3:1],\count[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\NLW_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\NLW_count_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[0]_i_3_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\NLW_count_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S(count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\NLW_count_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S(count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count_reg[28]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO(\NLW_count_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S(count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(count_reg[29]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[0]_i_3_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count_reg[30]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(count_reg[31]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[0]_i_3_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_3_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(count),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1_n_0 ));
  divider d
       (.a({NLW_d_a_UNCONNECTED[31:11],divided_distance}),
        .b(NLW_d_b_UNCONNECTED[31:0]),
        .clk(clk),
        .reset(reset),
        .x(raw_distance),
        .y(NLW_d_y_UNCONNECTED[31:0]));
  LUT2 #(
    .INIT(4'h6)) 
    \distance[1]_INST_0 
       (.I0(averaged_distance[0]),
        .I1(averaged_distance[1]),
        .O(\^distance [1]));
  LUT3 #(
    .INIT(8'h78)) 
    \distance[2]_INST_0 
       (.I0(averaged_distance[0]),
        .I1(averaged_distance[1]),
        .I2(averaged_distance[2]),
        .O(\^distance [2]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \distance[3]_INST_0 
       (.I0(averaged_distance[2]),
        .I1(averaged_distance[0]),
        .I2(averaged_distance[1]),
        .I3(averaged_distance[3]),
        .O(\^distance [3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \distance[4]_INST_0 
       (.I0(averaged_distance[2]),
        .I1(averaged_distance[0]),
        .I2(averaged_distance[1]),
        .I3(averaged_distance[3]),
        .I4(averaged_distance[4]),
        .O(\^distance [4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \distance[5]_INST_0 
       (.I0(averaged_distance[3]),
        .I1(averaged_distance[1]),
        .I2(averaged_distance[0]),
        .I3(averaged_distance[2]),
        .I4(averaged_distance[4]),
        .I5(averaged_distance[5]),
        .O(\^distance [5]));
  LUT2 #(
    .INIT(4'h6)) 
    \distance[6]_INST_0 
       (.I0(\distance[7]_INST_0_i_1_n_0 ),
        .I1(averaged_distance[6]),
        .O(\^distance [6]));
  LUT3 #(
    .INIT(8'h78)) 
    \distance[7]_INST_0 
       (.I0(\distance[7]_INST_0_i_1_n_0 ),
        .I1(averaged_distance[6]),
        .I2(averaged_distance[7]),
        .O(\^distance [7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \distance[7]_INST_0_i_1 
       (.I0(averaged_distance[5]),
        .I1(averaged_distance[3]),
        .I2(averaged_distance[1]),
        .I3(averaged_distance[0]),
        .I4(averaged_distance[2]),
        .I5(averaged_distance[4]),
        .O(\distance[7]_INST_0_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    old_pwm_in_reg
       (.C(clk),
        .CE(1'b1),
        .D(pwm_in),
        .Q(old_pwm_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \raw_distance[31]_i_1 
       (.I0(old_pwm_in),
        .I1(pwm_in),
        .O(count12_out));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[0] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[0]),
        .Q(raw_distance[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[10] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[10]),
        .Q(raw_distance[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[11] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[11]),
        .Q(raw_distance[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[12] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[12]),
        .Q(raw_distance[12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[13] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[13]),
        .Q(raw_distance[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[14] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[14]),
        .Q(raw_distance[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[15] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[15]),
        .Q(raw_distance[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[16] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[16]),
        .Q(raw_distance[16]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[17] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[17]),
        .Q(raw_distance[17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[18] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[18]),
        .Q(raw_distance[18]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[19] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[19]),
        .Q(raw_distance[19]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[1] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[1]),
        .Q(raw_distance[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[20] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[20]),
        .Q(raw_distance[20]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[21] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[21]),
        .Q(raw_distance[21]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[22] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[22]),
        .Q(raw_distance[22]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[23] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[23]),
        .Q(raw_distance[23]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[24] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[24]),
        .Q(raw_distance[24]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[25] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[25]),
        .Q(raw_distance[25]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[26] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[26]),
        .Q(raw_distance[26]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[27] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[27]),
        .Q(raw_distance[27]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[28] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[28]),
        .Q(raw_distance[28]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[29] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[29]),
        .Q(raw_distance[29]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[2] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[2]),
        .Q(raw_distance[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[30] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[30]),
        .Q(raw_distance[30]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[31] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[31]),
        .Q(raw_distance[31]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[3] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[3]),
        .Q(raw_distance[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[4] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[4]),
        .Q(raw_distance[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[5] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[5]),
        .Q(raw_distance[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[6] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[6]),
        .Q(raw_distance[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[7] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[7]),
        .Q(raw_distance[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[8] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[8]),
        .Q(raw_distance[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[9] 
       (.C(clk),
        .CE(count12_out),
        .D(count_reg[9]),
        .Q(raw_distance[9]),
        .R(reset));
endmodule

(* baud_rate = "9600" *) (* clk_freq = "100000000" *) (* div_bit = "10" *) 
(* div_counter = "2604" *) (* div_sample = "4" *) (* mid_sample = "2" *) 
module receiver
   (clk,
    reset,
    rx,
    data);
  input clk;
  input reset;
  input rx;
  output [7:0]data;

  wire bitcounter;
  wire \bitcounter[0]_i_1_n_0 ;
  wire \bitcounter[1]_i_1_n_0 ;
  wire \bitcounter[2]_i_1_n_0 ;
  wire \bitcounter[3]_i_1_n_0 ;
  wire \bitcounter[3]_i_3_n_0 ;
  wire [3:0]bitcounter_reg;
  wire clear_bitcounter;
  wire clear_bitcounter_i_1_n_0;
  wire clear_samplecounter;
  wire clear_samplecounter_i_1_n_0;
  wire clk;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire [11:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [7:0]data;
  wire inc_bitcounter_i_1_n_0;
  wire inc_bitcounter_reg_n_0;
  wire inc_samplecounter;
  wire inc_samplecounter_i_1_n_0;
  wire inc_samplecounter_reg_n_0;
  wire nextstate;
  wire nextstate_i_2_n_0;
  wire nextstate_reg_n_0;
  wire reset;
  wire rx;
  wire rxshiftreg;
  wire \rxshiftreg[8]_i_2_n_0 ;
  wire \rxshiftreg[8]_i_3_n_0 ;
  wire \rxshiftreg[8]_i_4_n_0 ;
  wire \rxshiftreg_reg_n_0_[9] ;
  wire \samplecounter[0]_i_1_n_0 ;
  wire \samplecounter[1]_i_1_n_0 ;
  wire \samplecounter_reg_n_0_[0] ;
  wire \samplecounter_reg_n_0_[1] ;
  wire shift;
  wire shift_i_1_n_0;
  wire state;
  wire state_i_1_n_0;
  wire [2:0]\NLW_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;

  (* \PinAttr:I0:HOLD_DETOUR  = "190" *) 
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bitcounter[0]_i_1 
       (.I0(bitcounter_reg[0]),
        .O(\bitcounter[0]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "190" *) 
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bitcounter[1]_i_1 
       (.I0(bitcounter_reg[0]),
        .I1(bitcounter_reg[1]),
        .O(\bitcounter[1]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bitcounter[2]_i_1 
       (.I0(bitcounter_reg[1]),
        .I1(bitcounter_reg[0]),
        .I2(bitcounter_reg[2]),
        .O(\bitcounter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \bitcounter[3]_i_1 
       (.I0(\rxshiftreg[8]_i_2_n_0 ),
        .I1(clear_bitcounter),
        .I2(inc_bitcounter_reg_n_0),
        .I3(reset),
        .O(\bitcounter[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bitcounter[3]_i_2 
       (.I0(\rxshiftreg[8]_i_2_n_0 ),
        .I1(inc_bitcounter_reg_n_0),
        .O(bitcounter));
  (* \PinAttr:I1:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bitcounter[3]_i_3 
       (.I0(bitcounter_reg[1]),
        .I1(bitcounter_reg[0]),
        .I2(bitcounter_reg[2]),
        .I3(bitcounter_reg[3]),
        .O(\bitcounter[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[0] 
       (.C(clk),
        .CE(bitcounter),
        .D(\bitcounter[0]_i_1_n_0 ),
        .Q(bitcounter_reg[0]),
        .R(\bitcounter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[1] 
       (.C(clk),
        .CE(bitcounter),
        .D(\bitcounter[1]_i_1_n_0 ),
        .Q(bitcounter_reg[1]),
        .R(\bitcounter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[2] 
       (.C(clk),
        .CE(bitcounter),
        .D(\bitcounter[2]_i_1_n_0 ),
        .Q(bitcounter_reg[2]),
        .R(\bitcounter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[3] 
       (.C(clk),
        .CE(bitcounter),
        .D(\bitcounter[3]_i_3_n_0 ),
        .Q(bitcounter_reg[3]),
        .R(\bitcounter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h1)) 
    clear_bitcounter_i_1
       (.I0(state),
        .I1(rx),
        .O(clear_bitcounter_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clear_bitcounter_reg
       (.C(clk),
        .CE(1'b1),
        .D(clear_bitcounter_i_1_n_0),
        .Q(clear_bitcounter),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h808F)) 
    clear_samplecounter_i_1
       (.I0(\samplecounter_reg_n_0_[0] ),
        .I1(\samplecounter_reg_n_0_[1] ),
        .I2(state),
        .I3(rx),
        .O(clear_samplecounter_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clear_samplecounter_reg
       (.C(clk),
        .CE(1'b1),
        .D(clear_samplecounter_i_1_n_0),
        .Q(clear_samplecounter),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \counter[0]_i_1 
       (.I0(reset),
        .I1(\rxshiftreg[8]_i_2_n_0 ),
        .O(\counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_3 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\NLW_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO(\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    inc_bitcounter_i_1
       (.I0(state),
        .I1(\samplecounter_reg_n_0_[1] ),
        .I2(\samplecounter_reg_n_0_[0] ),
        .O(inc_bitcounter_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inc_bitcounter_reg
       (.C(clk),
        .CE(1'b1),
        .D(inc_bitcounter_i_1_n_0),
        .Q(inc_bitcounter_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    inc_samplecounter_i_1
       (.I0(state),
        .I1(\samplecounter_reg_n_0_[1] ),
        .I2(\samplecounter_reg_n_0_[0] ),
        .O(inc_samplecounter_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    inc_samplecounter_reg
       (.C(clk),
        .CE(1'b1),
        .D(inc_samplecounter_i_1_n_0),
        .Q(inc_samplecounter_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    nextstate_i_1
       (.I0(state),
        .I1(rx),
        .I2(nextstate_i_2_n_0),
        .O(nextstate));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    nextstate_i_2
       (.I0(bitcounter_reg[1]),
        .I1(bitcounter_reg[2]),
        .I2(bitcounter_reg[3]),
        .I3(bitcounter_reg[0]),
        .I4(state),
        .I5(inc_samplecounter),
        .O(nextstate_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    nextstate_i_3
       (.I0(\samplecounter_reg_n_0_[0] ),
        .I1(\samplecounter_reg_n_0_[1] ),
        .O(inc_samplecounter));
  FDRE #(
    .INIT(1'b0)) 
    nextstate_reg
       (.C(clk),
        .CE(1'b1),
        .D(nextstate),
        .Q(nextstate_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \rxshiftreg[8]_i_1 
       (.I0(reset),
        .I1(shift),
        .I2(\rxshiftreg[8]_i_2_n_0 ),
        .O(rxshiftreg));
  LUT5 #(
    .INIT(32'hFFE00000)) 
    \rxshiftreg[8]_i_2 
       (.I0(\rxshiftreg[8]_i_3_n_0 ),
        .I1(\rxshiftreg[8]_i_4_n_0 ),
        .I2(counter_reg[9]),
        .I3(counter_reg[10]),
        .I4(counter_reg[11]),
        .O(\rxshiftreg[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \rxshiftreg[8]_i_3 
       (.I0(counter_reg[7]),
        .I1(counter_reg[6]),
        .I2(counter_reg[8]),
        .O(\rxshiftreg[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA008000)) 
    \rxshiftreg[8]_i_4 
       (.I0(counter_reg[5]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(counter_reg[3]),
        .I4(counter_reg[2]),
        .I5(counter_reg[4]),
        .O(\rxshiftreg[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rxshiftreg_reg[1] 
       (.C(clk),
        .CE(rxshiftreg),
        .D(data[1]),
        .Q(data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rxshiftreg_reg[2] 
       (.C(clk),
        .CE(rxshiftreg),
        .D(data[2]),
        .Q(data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rxshiftreg_reg[3] 
       (.C(clk),
        .CE(rxshiftreg),
        .D(data[3]),
        .Q(data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rxshiftreg_reg[4] 
       (.C(clk),
        .CE(rxshiftreg),
        .D(data[4]),
        .Q(data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rxshiftreg_reg[5] 
       (.C(clk),
        .CE(rxshiftreg),
        .D(data[5]),
        .Q(data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rxshiftreg_reg[6] 
       (.C(clk),
        .CE(rxshiftreg),
        .D(data[6]),
        .Q(data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rxshiftreg_reg[7] 
       (.C(clk),
        .CE(rxshiftreg),
        .D(data[7]),
        .Q(data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rxshiftreg_reg[8] 
       (.C(clk),
        .CE(rxshiftreg),
        .D(\rxshiftreg_reg_n_0_[9] ),
        .Q(data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rxshiftreg_reg[9] 
       (.C(clk),
        .CE(rxshiftreg),
        .D(rx),
        .Q(\rxshiftreg_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h10122222)) 
    \samplecounter[0]_i_1 
       (.I0(\samplecounter_reg_n_0_[0] ),
        .I1(reset),
        .I2(inc_samplecounter_reg_n_0),
        .I3(clear_samplecounter),
        .I4(\rxshiftreg[8]_i_2_n_0 ),
        .O(\samplecounter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0600060A0A0A0A0A)) 
    \samplecounter[1]_i_1 
       (.I0(\samplecounter_reg_n_0_[1] ),
        .I1(\samplecounter_reg_n_0_[0] ),
        .I2(reset),
        .I3(inc_samplecounter_reg_n_0),
        .I4(clear_samplecounter),
        .I5(\rxshiftreg[8]_i_2_n_0 ),
        .O(\samplecounter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \samplecounter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\samplecounter[0]_i_1_n_0 ),
        .Q(\samplecounter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \samplecounter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\samplecounter[1]_i_1_n_0 ),
        .Q(\samplecounter_reg_n_0_[1] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    shift_i_1
       (.I0(\samplecounter_reg_n_0_[1] ),
        .I1(\samplecounter_reg_n_0_[0] ),
        .I2(state),
        .O(shift_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    shift_reg
       (.C(clk),
        .CE(1'b1),
        .D(shift_i_1_n_0),
        .Q(shift),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E2)) 
    state_i_1
       (.I0(state),
        .I1(\rxshiftreg[8]_i_2_n_0 ),
        .I2(nextstate_reg_n_0),
        .I3(reset),
        .O(state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state),
        .R(1'b0));
endmodule

(* DEPTH = "2" *) (* DWIDTH = "8" *) 
module syncFIFO
   (reset,
    w_clk,
    r_clk,
    w_en,
    r_en,
    din,
    dout,
    empty,
    full);
  input reset;
  input w_clk;
  input r_clk;
  input w_en;
  input r_en;
  input [7:0]din;
  output [7:0]dout;
  output empty;
  output full;

  wire [7:0]din;
  wire [7:0]dout;
  wire [7:0]dout0;
  wire \dout[7]_i_1_n_0 ;
  wire fifo_reg_0_1_0_5_i_1_n_0;
  wire full;
  wire r_clk;
  wire reset;
  wire rptr;
  wire w_en;
  wire wptr;
  wire \wptr[0]_i_1_n_0 ;
  wire [1:0]NLW_fifo_reg_0_1_0_5_DOD_UNCONNECTED;
  wire NLW_fifo_reg_0_1_6_7_SPO_UNCONNECTED;
  wire NLW_fifo_reg_0_1_6_7__0_SPO_UNCONNECTED;

  LUT3 #(
    .INIT(8'h14)) 
    \dout[7]_i_1 
       (.I0(reset),
        .I1(wptr),
        .I2(rptr),
        .O(\dout[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[0] 
       (.C(r_clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(dout0[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[1] 
       (.C(r_clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(dout0[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[2] 
       (.C(r_clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(dout0[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[3] 
       (.C(r_clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(dout0[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[4] 
       (.C(r_clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(dout0[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[5] 
       (.C(r_clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(dout0[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[6] 
       (.C(r_clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(dout0[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dout_reg[7] 
       (.C(r_clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(dout0[7]),
        .Q(dout[7]),
        .R(1'b0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "fifo_reg_0_1_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ fifo_reg_0_1_0_5
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,wptr}),
        .DIA(din[1:0]),
        .DIB(din[3:2]),
        .DIC(din[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(dout0[1:0]),
        .DOB(dout0[3:2]),
        .DOC(dout0[5:4]),
        .DOD(NLW_fifo_reg_0_1_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(r_clk),
        .WE(fifo_reg_0_1_0_5_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_reg_0_1_0_5_i_1
       (.I0(w_en),
        .I1(reset),
        .O(fifo_reg_0_1_0_5_i_1_n_0));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "fifo_reg_0_1_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D_UNIQ_BASE_ fifo_reg_0_1_6_7
       (.A0(wptr),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(din[6]),
        .DPO(dout0[6]),
        .DPRA0(rptr),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_fifo_reg_0_1_6_7_SPO_UNCONNECTED),
        .WCLK(r_clk),
        .WE(fifo_reg_0_1_0_5_i_1_n_0));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "fifo_reg_0_1_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D_HD1 fifo_reg_0_1_6_7__0
       (.A0(wptr),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(din[7]),
        .DPO(dout0[7]),
        .DPRA0(rptr),
        .DPRA1(1'b0),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_fifo_reg_0_1_6_7__0_SPO_UNCONNECTED),
        .WCLK(r_clk),
        .WE(fifo_reg_0_1_0_5_i_1_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'hD)) 
    full_INST_0
       (.I0(rptr),
        .I1(wptr),
        .O(full));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rptr_reg[0] 
       (.C(r_clk),
        .CE(1'b1),
        .D(wptr),
        .Q(rptr),
        .R(reset));
  LUT2 #(
    .INIT(4'h6)) 
    \wptr[0]_i_1 
       (.I0(w_en),
        .I1(wptr),
        .O(\wptr[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wptr_reg[0] 
       (.C(r_clk),
        .CE(1'b1),
        .D(\wptr[0]_i_1_n_0 ),
        .Q(wptr),
        .R(reset));
endmodule

(* ECO_CHECKSUM = "b7a6f82e" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module top_level
   (clk,
    reset,
    rx,
    ultrasonic,
    switches_inputs,
    tx,
    shoulder_servo,
    elbow_servo,
    led,
    CA,
    CB,
    CC,
    CD,
    CE,
    CF,
    CG,
    DP,
    AN1,
    AN2,
    AN3,
    AN4);
  input clk;
  input reset;
  input rx;
  input ultrasonic;
  input [15:0]switches_inputs;
  output tx;
  output shoulder_servo;
  output elbow_servo;
  output [15:0]led;
  output CA;
  output CB;
  output CC;
  output CD;
  output CE;
  output CF;
  output CG;
  output DP;
  output AN1;
  output AN2;
  output AN3;
  output AN4;

  wire AN1;
  wire AN1_OBUF;
  wire AN2;
  wire AN2_OBUF;
  wire AN3;
  wire AN3_OBUF;
  wire AN4;
  wire AN4_OBUF;
  wire CA;
  wire CA_OBUF;
  wire CB;
  wire CB_OBUF;
  wire CC;
  wire CC_OBUF;
  wire CD;
  wire CD_OBUF;
  wire CE;
  wire CE_OBUF;
  wire CF;
  wire CF_OBUF;
  wire CG;
  wire CG_OBUF;
  wire DP;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]data;
  wire elbow_servo;
  wire elbow_servo_OBUF;
  wire keyboardControlled;
  wire [2:0]keyboard_x;
  wire [2:0]keyboard_y;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire reset;
  wire reset_IBUF;
  wire rx;
  wire rx_IBUF;
  wire shoulder_servo;
  wire shoulder_servo_OBUF;
  wire [1:0]state;
  wire [15:0]switches_inputs;
  wire [15:0]switches_inputs_IBUF;
  wire tx;
  wire tx_OBUF;
  wire ultrasonic;
  wire ultrasonicControlled;
  wire ultrasonic_IBUF;
  wire [7:0]ultrasonic_x;
  wire NLW_fsmc_DP_UNCONNECTED;
  wire [7:3]NLW_fsmc_keyboard_x_UNCONNECTED;
  wire [7:3]NLW_fsmc_keyboard_y_UNCONNECTED;
  wire [7:0]NLW_fsmc_ultrasonic_y_UNCONNECTED;
  wire [7:3]NLW_kbc_x_UNCONNECTED;
  wire [7:3]NLW_kbc_y_UNCONNECTED;

initial begin
 $sdf_annotate("pwm_measure_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF AN1_OBUF_inst
       (.I(AN1_OBUF),
        .O(AN1));
  OBUF AN2_OBUF_inst
       (.I(AN2_OBUF),
        .O(AN2));
  OBUF AN3_OBUF_inst
       (.I(AN3_OBUF),
        .O(AN3));
  OBUF AN4_OBUF_inst
       (.I(AN4_OBUF),
        .O(AN4));
  OBUF CA_OBUF_inst
       (.I(CA_OBUF),
        .O(CA));
  OBUF CB_OBUF_inst
       (.I(CB_OBUF),
        .O(CB));
  OBUF CC_OBUF_inst
       (.I(CC_OBUF),
        .O(CC));
  OBUF CD_OBUF_inst
       (.I(CD_OBUF),
        .O(CD));
  OBUF CE_OBUF_inst
       (.I(CE_OBUF),
        .O(CE));
  OBUF CF_OBUF_inst
       (.I(CF_OBUF),
        .O(CF));
  OBUF CG_OBUF_inst
       (.I(CG_OBUF),
        .O(CG));
  OBUF DP_OBUF_inst
       (.I(1'b1),
        .O(DP));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF elbow_servo_OBUF_inst
       (.I(elbow_servo_OBUF),
        .O(elbow_servo));
  fsm f
       (.clk(clk_IBUF_BUFG),
        .keyboardControlled(keyboardControlled),
        .left(switches_inputs_IBUF[15]),
        .reset(reset_IBUF),
        .right(switches_inputs_IBUF[0]),
        .state(state),
        .ultrasonicControlled(ultrasonicControlled));
  fsm_controller fsmc
       (.AN1(AN1_OBUF),
        .AN2(AN2_OBUF),
        .AN3(AN3_OBUF),
        .AN4(AN4_OBUF),
        .CA(CA_OBUF),
        .CB(CB_OBUF),
        .CC(CC_OBUF),
        .CD(CD_OBUF),
        .CE(CE_OBUF),
        .CF(CF_OBUF),
        .CG(CG_OBUF),
        .DP(NLW_fsmc_DP_UNCONNECTED),
        .clk(clk_IBUF_BUFG),
        .data(data),
        .elbow_servo(elbow_servo_OBUF),
        .keyboardControlled(keyboardControlled),
        .keyboard_x({NLW_fsmc_keyboard_x_UNCONNECTED[7:3],keyboard_x}),
        .keyboard_y({NLW_fsmc_keyboard_y_UNCONNECTED[7:3],keyboard_y}),
        .led(led_OBUF),
        .reset(reset_IBUF),
        .shoulder_servo(shoulder_servo_OBUF),
        .state(state),
        .tx(tx_OBUF),
        .ultrasonicControlled(ultrasonicControlled),
        .ultrasonic_x(ultrasonic_x),
        .ultrasonic_y(NLW_fsmc_ultrasonic_y_UNCONNECTED[7:0]));
  (* X_MAX = "4" *) 
  (* Y_MAX = "4" *) 
  keyboardControl kbc
       (.clk(clk_IBUF_BUFG),
        .data(data),
        .reset(reset_IBUF),
        .rx(rx_IBUF),
        .x({NLW_kbc_x_UNCONNECTED[7:3],keyboard_x}),
        .y({NLW_kbc_y_UNCONNECTED[7:3],keyboard_y}));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  (* DIVISION_AMOUNT = "1664" *) 
  pwm_measure pwmm
       (.clk(clk_IBUF_BUFG),
        .distance(ultrasonic_x),
        .pwm_in(ultrasonic_IBUF),
        .reset(reset_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  OBUF shoulder_servo_OBUF_inst
       (.I(shoulder_servo_OBUF),
        .O(shoulder_servo));
  IBUF \switches_inputs_IBUF[0]_inst 
       (.I(switches_inputs[0]),
        .O(switches_inputs_IBUF[0]));
  IBUF \switches_inputs_IBUF[15]_inst 
       (.I(switches_inputs[15]),
        .O(switches_inputs_IBUF[15]));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  IBUF ultrasonic_IBUF_inst
       (.I(ultrasonic),
        .O(ultrasonic_IBUF));
endmodule

module transmitter
   (clk,
    reset,
    transmit,
    data,
    TxD);
  input clk;
  input reset;
  input transmit;
  input [7:0]data;
  output TxD;

  wire TxD;
  wire TxD_i_1_n_0;
  wire bitcounter;
  wire \bitcounter[0]_i_1_n_0 ;
  wire \bitcounter[1]_i_1_n_0 ;
  wire \bitcounter[2]_i_1_n_0 ;
  wire \bitcounter[3]_i_1_n_0 ;
  wire \bitcounter[3]_i_3_n_0 ;
  wire \bitcounter[3]_i_4_n_0 ;
  wire [3:1]bitcounter_reg;
  wire \bitcounter_reg_n_0_[0] ;
  wire clear;
  wire clear_i_1_n_0;
  wire clear_reg_n_0;
  wire clk;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire [13:0]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [7:0]data;
  wire load;
  wire nextstate;
  wire nextstate_i_1_n_0;
  wire reset;
  wire rightshiftreg;
  wire \rightshiftreg[0]_i_1_n_0 ;
  wire \rightshiftreg[1]_i_1_n_0 ;
  wire \rightshiftreg[2]_i_1_n_0 ;
  wire \rightshiftreg[3]_i_1_n_0 ;
  wire \rightshiftreg[4]_i_1_n_0 ;
  wire \rightshiftreg[5]_i_1_n_0 ;
  wire \rightshiftreg[6]_i_1_n_0 ;
  wire \rightshiftreg[7]_i_1_n_0 ;
  wire \rightshiftreg[8]_i_1_n_0 ;
  wire \rightshiftreg[9]_i_2_n_0 ;
  wire \rightshiftreg[9]_i_3_n_0 ;
  wire \rightshiftreg[9]_i_4_n_0 ;
  wire \rightshiftreg[9]_i_5_n_0 ;
  wire \rightshiftreg_reg_n_0_[0] ;
  wire \rightshiftreg_reg_n_0_[1] ;
  wire \rightshiftreg_reg_n_0_[2] ;
  wire \rightshiftreg_reg_n_0_[3] ;
  wire \rightshiftreg_reg_n_0_[4] ;
  wire \rightshiftreg_reg_n_0_[5] ;
  wire \rightshiftreg_reg_n_0_[6] ;
  wire \rightshiftreg_reg_n_0_[7] ;
  wire \rightshiftreg_reg_n_0_[8] ;
  wire \rightshiftreg_reg_n_0_[9] ;
  wire shift;
  wire shift_i_1_n_0;
  wire state;
  wire state_i_1_n_0;
  wire state_i_2_n_0;
  wire state_i_3_n_0;
  wire [2:0]\NLW_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[12]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hE0FF)) 
    TxD_i_1
       (.I0(bitcounter_reg[2]),
        .I1(bitcounter_reg[1]),
        .I2(bitcounter_reg[3]),
        .I3(state),
        .O(TxD_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    TxD_reg
       (.C(clk),
        .CE(1'b1),
        .D(\rightshiftreg_reg_n_0_[0] ),
        .Q(TxD),
        .S(TxD_i_1_n_0));
  (* \PinAttr:I0:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bitcounter[0]_i_1 
       (.I0(\bitcounter_reg_n_0_[0] ),
        .O(\bitcounter[0]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bitcounter[1]_i_1 
       (.I0(\bitcounter_reg_n_0_[0] ),
        .I1(bitcounter_reg[1]),
        .O(\bitcounter[1]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bitcounter[2]_i_1 
       (.I0(bitcounter_reg[1]),
        .I1(\bitcounter_reg_n_0_[0] ),
        .I2(bitcounter_reg[2]),
        .O(\bitcounter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAAAAAAA)) 
    \bitcounter[3]_i_1 
       (.I0(reset),
        .I1(\bitcounter[3]_i_4_n_0 ),
        .I2(counter_reg[13]),
        .I3(counter_reg[11]),
        .I4(\rightshiftreg[9]_i_4_n_0 ),
        .I5(counter_reg[12]),
        .O(\bitcounter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEA000000)) 
    \bitcounter[3]_i_2 
       (.I0(counter_reg[12]),
        .I1(\rightshiftreg[9]_i_4_n_0 ),
        .I2(counter_reg[11]),
        .I3(counter_reg[13]),
        .I4(shift),
        .O(bitcounter));
  (* \PinAttr:I1:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bitcounter[3]_i_3 
       (.I0(bitcounter_reg[1]),
        .I1(\bitcounter_reg_n_0_[0] ),
        .I2(bitcounter_reg[2]),
        .I3(bitcounter_reg[3]),
        .O(\bitcounter[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \bitcounter[3]_i_4 
       (.I0(shift),
        .I1(clear_reg_n_0),
        .O(\bitcounter[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[0] 
       (.C(clk),
        .CE(bitcounter),
        .D(\bitcounter[0]_i_1_n_0 ),
        .Q(\bitcounter_reg_n_0_[0] ),
        .R(\bitcounter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[1] 
       (.C(clk),
        .CE(bitcounter),
        .D(\bitcounter[1]_i_1_n_0 ),
        .Q(bitcounter_reg[1]),
        .R(\bitcounter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[2] 
       (.C(clk),
        .CE(bitcounter),
        .D(\bitcounter[2]_i_1_n_0 ),
        .Q(bitcounter_reg[2]),
        .R(\bitcounter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[3] 
       (.C(clk),
        .CE(bitcounter),
        .D(\bitcounter[3]_i_3_n_0 ),
        .Q(bitcounter_reg[3]),
        .R(\bitcounter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    clear_i_1
       (.I0(bitcounter_reg[3]),
        .I1(bitcounter_reg[1]),
        .I2(bitcounter_reg[2]),
        .I3(state),
        .O(clear_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clear_reg
       (.C(clk),
        .CE(1'b1),
        .D(clear_i_1_n_0),
        .Q(clear_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \counter[0]_i_1 
       (.I0(reset),
        .I1(counter_reg[12]),
        .I2(\rightshiftreg[9]_i_4_n_0 ),
        .I3(counter_reg[11]),
        .I4(counter_reg[13]),
        .O(\counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_3 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\NLW_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO(\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[12]_i_1_O_UNCONNECTED [3:2],\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,counter_reg[13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT1 #(
    .INIT(2'h1)) 
    load_i_1
       (.I0(state),
        .O(clear));
  FDRE #(
    .INIT(1'b0)) 
    load_reg
       (.C(clk),
        .CE(1'b1),
        .D(clear),
        .Q(load),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h57FF)) 
    nextstate_i_1
       (.I0(state),
        .I1(bitcounter_reg[2]),
        .I2(bitcounter_reg[1]),
        .I3(bitcounter_reg[3]),
        .O(nextstate_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    nextstate_reg
       (.C(clk),
        .CE(1'b1),
        .D(nextstate_i_1_n_0),
        .Q(nextstate),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rightshiftreg[0]_i_1 
       (.I0(shift),
        .I1(\rightshiftreg_reg_n_0_[1] ),
        .O(\rightshiftreg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rightshiftreg[1]_i_1 
       (.I0(\rightshiftreg_reg_n_0_[2] ),
        .I1(shift),
        .I2(data[0]),
        .O(\rightshiftreg[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rightshiftreg[2]_i_1 
       (.I0(\rightshiftreg_reg_n_0_[3] ),
        .I1(shift),
        .I2(data[1]),
        .O(\rightshiftreg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rightshiftreg[3]_i_1 
       (.I0(\rightshiftreg_reg_n_0_[4] ),
        .I1(shift),
        .I2(data[2]),
        .O(\rightshiftreg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rightshiftreg[4]_i_1 
       (.I0(shift),
        .I1(\rightshiftreg_reg_n_0_[5] ),
        .O(\rightshiftreg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rightshiftreg[5]_i_1 
       (.I0(\rightshiftreg_reg_n_0_[6] ),
        .I1(shift),
        .I2(data[4]),
        .O(\rightshiftreg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \rightshiftreg[6]_i_1 
       (.I0(shift),
        .I1(\rightshiftreg_reg_n_0_[7] ),
        .I2(data[5]),
        .O(\rightshiftreg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rightshiftreg[7]_i_1 
       (.I0(\rightshiftreg_reg_n_0_[8] ),
        .I1(shift),
        .I2(data[6]),
        .O(\rightshiftreg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \rightshiftreg[8]_i_1 
       (.I0(shift),
        .I1(\rightshiftreg_reg_n_0_[9] ),
        .I2(data[7]),
        .O(\rightshiftreg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088888000)) 
    \rightshiftreg[9]_i_1 
       (.I0(\rightshiftreg[9]_i_3_n_0 ),
        .I1(counter_reg[13]),
        .I2(counter_reg[11]),
        .I3(\rightshiftreg[9]_i_4_n_0 ),
        .I4(counter_reg[12]),
        .I5(reset),
        .O(rightshiftreg));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rightshiftreg[9]_i_2 
       (.I0(shift),
        .O(\rightshiftreg[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rightshiftreg[9]_i_3 
       (.I0(shift),
        .I1(load),
        .O(\rightshiftreg[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    \rightshiftreg[9]_i_4 
       (.I0(counter_reg[9]),
        .I1(counter_reg[8]),
        .I2(counter_reg[7]),
        .I3(\rightshiftreg[9]_i_5_n_0 ),
        .I4(counter_reg[6]),
        .I5(counter_reg[10]),
        .O(\rightshiftreg[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80000000)) 
    \rightshiftreg[9]_i_5 
       (.I0(counter_reg[5]),
        .I1(counter_reg[2]),
        .I2(counter_reg[1]),
        .I3(counter_reg[0]),
        .I4(counter_reg[3]),
        .I5(counter_reg[4]),
        .O(\rightshiftreg[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rightshiftreg_reg[0] 
       (.C(clk),
        .CE(rightshiftreg),
        .D(\rightshiftreg[0]_i_1_n_0 ),
        .Q(\rightshiftreg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rightshiftreg_reg[1] 
       (.C(clk),
        .CE(rightshiftreg),
        .D(\rightshiftreg[1]_i_1_n_0 ),
        .Q(\rightshiftreg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rightshiftreg_reg[2] 
       (.C(clk),
        .CE(rightshiftreg),
        .D(\rightshiftreg[2]_i_1_n_0 ),
        .Q(\rightshiftreg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rightshiftreg_reg[3] 
       (.C(clk),
        .CE(rightshiftreg),
        .D(\rightshiftreg[3]_i_1_n_0 ),
        .Q(\rightshiftreg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rightshiftreg_reg[4] 
       (.C(clk),
        .CE(rightshiftreg),
        .D(\rightshiftreg[4]_i_1_n_0 ),
        .Q(\rightshiftreg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rightshiftreg_reg[5] 
       (.C(clk),
        .CE(rightshiftreg),
        .D(\rightshiftreg[5]_i_1_n_0 ),
        .Q(\rightshiftreg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rightshiftreg_reg[6] 
       (.C(clk),
        .CE(rightshiftreg),
        .D(\rightshiftreg[6]_i_1_n_0 ),
        .Q(\rightshiftreg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rightshiftreg_reg[7] 
       (.C(clk),
        .CE(rightshiftreg),
        .D(\rightshiftreg[7]_i_1_n_0 ),
        .Q(\rightshiftreg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rightshiftreg_reg[8] 
       (.C(clk),
        .CE(rightshiftreg),
        .D(\rightshiftreg[8]_i_1_n_0 ),
        .Q(\rightshiftreg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rightshiftreg_reg[9] 
       (.C(clk),
        .CE(rightshiftreg),
        .D(\rightshiftreg[9]_i_2_n_0 ),
        .Q(\rightshiftreg_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    shift_i_1
       (.I0(bitcounter_reg[3]),
        .I1(bitcounter_reg[1]),
        .I2(bitcounter_reg[2]),
        .I3(state),
        .O(shift_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    shift_reg
       (.C(clk),
        .CE(1'b1),
        .D(shift_i_1_n_0),
        .Q(shift),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FEAA02AA)) 
    state_i_1
       (.I0(state),
        .I1(counter_reg[12]),
        .I2(state_i_2_n_0),
        .I3(counter_reg[13]),
        .I4(nextstate),
        .I5(reset),
        .O(state_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA88888)) 
    state_i_2
       (.I0(counter_reg[11]),
        .I1(counter_reg[10]),
        .I2(counter_reg[6]),
        .I3(\rightshiftreg[9]_i_5_n_0 ),
        .I4(counter_reg[7]),
        .I5(state_i_3_n_0),
        .O(state_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state_i_3
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .O(state_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
