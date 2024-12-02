// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Dec  2 14:07:11 2024
// Host        : hiccup running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/ajrbe/Documents/School/ENEL
//               453/servo2/servo2/servo2.sim/sim_1/synth/timing/xsim/pwm_measure_tb_time_synth.v}
// Design      : pwm_measure
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

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

  wire \<const0> ;
  wire [31:0]Din;
  wire [7:0]\^Q ;
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
  wire \accumilator_reg[10]_i_1_n_2 ;
  wire \accumilator_reg[10]_i_1_n_3 ;
  wire \accumilator_reg[10]_i_1_n_5 ;
  wire \accumilator_reg[10]_i_1_n_6 ;
  wire \accumilator_reg[10]_i_1_n_7 ;
  wire \accumilator_reg[3]_i_1_n_0 ;
  wire \accumilator_reg[3]_i_1_n_1 ;
  wire \accumilator_reg[3]_i_1_n_2 ;
  wire \accumilator_reg[3]_i_1_n_3 ;
  wire \accumilator_reg[3]_i_1_n_4 ;
  wire \accumilator_reg[3]_i_1_n_5 ;
  wire \accumilator_reg[3]_i_1_n_6 ;
  wire \accumilator_reg[3]_i_1_n_7 ;
  wire \accumilator_reg[7]_i_1_n_0 ;
  wire \accumilator_reg[7]_i_1_n_1 ;
  wire \accumilator_reg[7]_i_1_n_2 ;
  wire \accumilator_reg[7]_i_1_n_3 ;
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
  wire [3:2]\NLW_accumilator_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_accumilator_reg[10]_i_1_O_UNCONNECTED ;

  assign Q[31] = \<const0> ;
  assign Q[30] = \<const0> ;
  assign Q[29] = \<const0> ;
  assign Q[28] = \<const0> ;
  assign Q[27] = \<const0> ;
  assign Q[26] = \<const0> ;
  assign Q[25] = \<const0> ;
  assign Q[24] = \<const0> ;
  assign Q[23] = \<const0> ;
  assign Q[22] = \<const0> ;
  assign Q[21] = \<const0> ;
  assign Q[20] = \<const0> ;
  assign Q[19] = \<const0> ;
  assign Q[18] = \<const0> ;
  assign Q[17] = \<const0> ;
  assign Q[16] = \<const0> ;
  assign Q[15] = \<const0> ;
  assign Q[14] = \<const0> ;
  assign Q[13] = \<const0> ;
  assign Q[12] = \<const0> ;
  assign Q[11] = \<const0> ;
  assign Q[10] = \<const0> ;
  assign Q[9] = \<const0> ;
  assign Q[8] = \<const0> ;
  assign Q[7:0] = \^Q [7:0];
  GND GND
       (.G(\<const0> ));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \accumilator[10]_i_2 
       (.I0(accumilator[8]),
        .I1(oldDin[8]),
        .I2(Din[8]),
        .O(\accumilator[10]_i_2_n_0 ));
  (* HLUTNM = "lutpair28" *) 
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
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \accumilator[10]_i_6 
       (.I0(accumilator[8]),
        .I1(oldDin[8]),
        .I2(Din[8]),
        .I3(\accumilator[10]_i_3_n_0 ),
        .O(\accumilator[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \accumilator[3]_i_2 
       (.I0(accumilator[2]),
        .I1(oldDin[2]),
        .I2(Din[2]),
        .O(\accumilator[3]_i_2_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \accumilator[3]_i_3 
       (.I0(accumilator[1]),
        .I1(oldDin[1]),
        .I2(Din[1]),
        .O(\accumilator[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \accumilator[3]_i_4 
       (.I0(Din[0]),
        .I1(oldDin[0]),
        .O(\accumilator[3]_i_4_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \accumilator[3]_i_5 
       (.I0(accumilator[3]),
        .I1(oldDin[3]),
        .I2(Din[3]),
        .I3(\accumilator[3]_i_2_n_0 ),
        .O(\accumilator[3]_i_5_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \accumilator[3]_i_6 
       (.I0(accumilator[2]),
        .I1(oldDin[2]),
        .I2(Din[2]),
        .I3(\accumilator[3]_i_3_n_0 ),
        .O(\accumilator[3]_i_6_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \accumilator[3]_i_7 
       (.I0(accumilator[1]),
        .I1(oldDin[1]),
        .I2(Din[1]),
        .I3(\accumilator[3]_i_4_n_0 ),
        .O(\accumilator[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \accumilator[3]_i_8 
       (.I0(Din[0]),
        .I1(oldDin[0]),
        .I2(accumilator[0]),
        .O(\accumilator[3]_i_8_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \accumilator[7]_i_2 
       (.I0(accumilator[6]),
        .I1(oldDin[6]),
        .I2(Din[6]),
        .O(\accumilator[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \accumilator[7]_i_3 
       (.I0(accumilator[5]),
        .I1(oldDin[5]),
        .I2(Din[5]),
        .O(\accumilator[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \accumilator[7]_i_4 
       (.I0(accumilator[4]),
        .I1(oldDin[4]),
        .I2(Din[4]),
        .O(\accumilator[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \accumilator[7]_i_5 
       (.I0(accumilator[3]),
        .I1(oldDin[3]),
        .I2(Din[3]),
        .O(\accumilator[7]_i_5_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \accumilator[7]_i_6 
       (.I0(accumilator[7]),
        .I1(oldDin[7]),
        .I2(Din[7]),
        .I3(\accumilator[7]_i_2_n_0 ),
        .O(\accumilator[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \accumilator[7]_i_7 
       (.I0(accumilator[6]),
        .I1(oldDin[6]),
        .I2(Din[6]),
        .I3(\accumilator[7]_i_3_n_0 ),
        .O(\accumilator[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \accumilator[7]_i_8 
       (.I0(accumilator[5]),
        .I1(oldDin[5]),
        .I2(Din[5]),
        .I3(\accumilator[7]_i_4_n_0 ),
        .O(\accumilator[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair25" *) 
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
        .CO({\NLW_accumilator_reg[10]_i_1_CO_UNCONNECTED [3:2],\accumilator_reg[10]_i_1_n_2 ,\accumilator_reg[10]_i_1_n_3 }),
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
        .CO({\accumilator_reg[3]_i_1_n_0 ,\accumilator_reg[3]_i_1_n_1 ,\accumilator_reg[3]_i_1_n_2 ,\accumilator_reg[3]_i_1_n_3 }),
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
        .CO({\accumilator_reg[7]_i_1_n_0 ,\accumilator_reg[7]_i_1_n_1 ,\accumilator_reg[7]_i_1_n_2 ,\accumilator_reg[7]_i_1_n_3 }),
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
        .Q(\^Q [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divided_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(accumilator[4]),
        .Q(\^Q [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divided_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(accumilator[5]),
        .Q(\^Q [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divided_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(accumilator[6]),
        .Q(\^Q [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divided_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(accumilator[7]),
        .Q(\^Q [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divided_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(accumilator[8]),
        .Q(\^Q [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divided_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(accumilator[9]),
        .Q(\^Q [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \divided_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(accumilator[10]),
        .Q(\^Q [7]),
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
  (* srl_bus_name = "a/\\s_reg[2] " *) 
  (* srl_name = "a/\\s_reg[2][0]_srl6___s_reg_r_4 " *) 
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
  (* srl_bus_name = "a/\\s_reg[2] " *) 
  (* srl_name = "a/\\s_reg[2][10]_srl6___s_reg_r_4 " *) 
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
  (* srl_bus_name = "a/\\s_reg[2] " *) 
  (* srl_name = "a/\\s_reg[2][1]_srl6___s_reg_r_4 " *) 
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
  (* srl_bus_name = "a/\\s_reg[2] " *) 
  (* srl_name = "a/\\s_reg[2][2]_srl6___s_reg_r_4 " *) 
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
  (* srl_bus_name = "a/\\s_reg[2] " *) 
  (* srl_name = "a/\\s_reg[2][3]_srl6___s_reg_r_4 " *) 
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
  (* srl_bus_name = "a/\\s_reg[2] " *) 
  (* srl_name = "a/\\s_reg[2][4]_srl6___s_reg_r_4 " *) 
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
  (* srl_bus_name = "a/\\s_reg[2] " *) 
  (* srl_name = "a/\\s_reg[2][5]_srl6___s_reg_r_4 " *) 
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
  (* srl_bus_name = "a/\\s_reg[2] " *) 
  (* srl_name = "a/\\s_reg[2][6]_srl6___s_reg_r_4 " *) 
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
  (* srl_bus_name = "a/\\s_reg[2] " *) 
  (* srl_name = "a/\\s_reg[2][7]_srl6___s_reg_r_4 " *) 
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
  (* srl_bus_name = "a/\\s_reg[2] " *) 
  (* srl_name = "a/\\s_reg[2][8]_srl6___s_reg_r_4 " *) 
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
  (* srl_bus_name = "a/\\s_reg[2] " *) 
  (* srl_name = "a/\\s_reg[2][9]_srl6___s_reg_r_4 " *) 
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

  wire \<const0> ;
  wire [10:0]\^a ;
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
  wire \a_reg[10]_i_12_n_1 ;
  wire \a_reg[10]_i_12_n_2 ;
  wire \a_reg[10]_i_12_n_3 ;
  wire \a_reg[10]_i_21_n_0 ;
  wire \a_reg[10]_i_21_n_1 ;
  wire \a_reg[10]_i_21_n_2 ;
  wire \a_reg[10]_i_21_n_3 ;
  wire \a_reg[10]_i_2_n_0 ;
  wire \a_reg[10]_i_2_n_1 ;
  wire \a_reg[10]_i_2_n_2 ;
  wire \a_reg[10]_i_2_n_3 ;
  wire \a_reg[10]_i_3_n_0 ;
  wire \a_reg[10]_i_3_n_1 ;
  wire \a_reg[10]_i_3_n_2 ;
  wire \a_reg[10]_i_3_n_3 ;
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
  wire \divide_counts_reg[10]_i_2_n_3 ;
  wire \divide_counts_reg[10]_i_2_n_6 ;
  wire \divide_counts_reg[10]_i_2_n_7 ;
  wire \divide_counts_reg[4]_i_2_n_0 ;
  wire \divide_counts_reg[4]_i_2_n_1 ;
  wire \divide_counts_reg[4]_i_2_n_2 ;
  wire \divide_counts_reg[4]_i_2_n_3 ;
  wire \divide_counts_reg[4]_i_2_n_4 ;
  wire \divide_counts_reg[4]_i_2_n_5 ;
  wire \divide_counts_reg[4]_i_2_n_6 ;
  wire \divide_counts_reg[4]_i_2_n_7 ;
  wire \divide_counts_reg[8]_i_2_n_0 ;
  wire \divide_counts_reg[8]_i_2_n_1 ;
  wire \divide_counts_reg[8]_i_2_n_2 ;
  wire \divide_counts_reg[8]_i_2_n_3 ;
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
  wire \dividend_reg[11]_i_2_n_1 ;
  wire \dividend_reg[11]_i_2_n_2 ;
  wire \dividend_reg[11]_i_2_n_3 ;
  wire \dividend_reg[11]_i_2_n_4 ;
  wire \dividend_reg[11]_i_2_n_5 ;
  wire \dividend_reg[11]_i_2_n_6 ;
  wire \dividend_reg[11]_i_2_n_7 ;
  wire \dividend_reg[15]_i_2_n_0 ;
  wire \dividend_reg[15]_i_2_n_1 ;
  wire \dividend_reg[15]_i_2_n_2 ;
  wire \dividend_reg[15]_i_2_n_3 ;
  wire \dividend_reg[15]_i_2_n_4 ;
  wire \dividend_reg[15]_i_2_n_5 ;
  wire \dividend_reg[15]_i_2_n_6 ;
  wire \dividend_reg[15]_i_2_n_7 ;
  wire \dividend_reg[19]_i_2_n_0 ;
  wire \dividend_reg[19]_i_2_n_1 ;
  wire \dividend_reg[19]_i_2_n_2 ;
  wire \dividend_reg[19]_i_2_n_3 ;
  wire \dividend_reg[19]_i_2_n_4 ;
  wire \dividend_reg[19]_i_2_n_5 ;
  wire \dividend_reg[19]_i_2_n_6 ;
  wire \dividend_reg[19]_i_2_n_7 ;
  wire \dividend_reg[23]_i_2_n_0 ;
  wire \dividend_reg[23]_i_2_n_1 ;
  wire \dividend_reg[23]_i_2_n_2 ;
  wire \dividend_reg[23]_i_2_n_3 ;
  wire \dividend_reg[23]_i_2_n_4 ;
  wire \dividend_reg[23]_i_2_n_5 ;
  wire \dividend_reg[23]_i_2_n_6 ;
  wire \dividend_reg[23]_i_2_n_7 ;
  wire \dividend_reg[27]_i_2_n_0 ;
  wire \dividend_reg[27]_i_2_n_1 ;
  wire \dividend_reg[27]_i_2_n_2 ;
  wire \dividend_reg[27]_i_2_n_3 ;
  wire \dividend_reg[27]_i_2_n_4 ;
  wire \dividend_reg[27]_i_2_n_5 ;
  wire \dividend_reg[27]_i_2_n_6 ;
  wire \dividend_reg[27]_i_2_n_7 ;
  wire \dividend_reg[31]_i_3_n_1 ;
  wire \dividend_reg[31]_i_3_n_2 ;
  wire \dividend_reg[31]_i_3_n_3 ;
  wire \dividend_reg[31]_i_3_n_4 ;
  wire \dividend_reg[31]_i_3_n_5 ;
  wire \dividend_reg[31]_i_3_n_6 ;
  wire \dividend_reg[31]_i_3_n_7 ;
  wire \dividend_reg[3]_i_2_n_0 ;
  wire \dividend_reg[3]_i_2_n_1 ;
  wire \dividend_reg[3]_i_2_n_2 ;
  wire \dividend_reg[3]_i_2_n_3 ;
  wire \dividend_reg[3]_i_2_n_4 ;
  wire \dividend_reg[3]_i_2_n_5 ;
  wire \dividend_reg[3]_i_2_n_6 ;
  wire \dividend_reg[3]_i_2_n_7 ;
  wire \dividend_reg[7]_i_2_n_0 ;
  wire \dividend_reg[7]_i_2_n_1 ;
  wire \dividend_reg[7]_i_2_n_2 ;
  wire \dividend_reg[7]_i_2_n_3 ;
  wire \dividend_reg[7]_i_2_n_4 ;
  wire \dividend_reg[7]_i_2_n_5 ;
  wire \dividend_reg[7]_i_2_n_6 ;
  wire \dividend_reg[7]_i_2_n_7 ;
  wire reset;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire [31:0]x;
  wire [3:0]\NLW_a_reg[10]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_a_reg[10]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_a_reg[10]_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_a_reg[10]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_divide_counts_reg[10]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_divide_counts_reg[10]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_dividend_reg[31]_i_3_CO_UNCONNECTED ;

  assign a[31] = \<const0> ;
  assign a[30] = \<const0> ;
  assign a[29] = \<const0> ;
  assign a[28] = \<const0> ;
  assign a[27] = \<const0> ;
  assign a[26] = \<const0> ;
  assign a[25] = \<const0> ;
  assign a[24] = \<const0> ;
  assign a[23] = \<const0> ;
  assign a[22] = \<const0> ;
  assign a[21] = \<const0> ;
  assign a[20] = \<const0> ;
  assign a[19] = \<const0> ;
  assign a[18] = \<const0> ;
  assign a[17] = \<const0> ;
  assign a[16] = \<const0> ;
  assign a[15] = \<const0> ;
  assign a[14] = \<const0> ;
  assign a[13] = \<const0> ;
  assign a[12] = \<const0> ;
  assign a[11] = \<const0> ;
  assign a[10:0] = \^a [10:0];
  assign b[31] = \<const0> ;
  assign b[30] = \<const0> ;
  assign b[29] = \<const0> ;
  assign b[28] = \<const0> ;
  assign b[27] = \<const0> ;
  assign b[26] = \<const0> ;
  assign b[25] = \<const0> ;
  assign b[24] = \<const0> ;
  assign b[23] = \<const0> ;
  assign b[22] = \<const0> ;
  assign b[21] = \<const0> ;
  assign b[20] = \<const0> ;
  assign b[19] = \<const0> ;
  assign b[18] = \<const0> ;
  assign b[17] = \<const0> ;
  assign b[16] = \<const0> ;
  assign b[15] = \<const0> ;
  assign b[14] = \<const0> ;
  assign b[13] = \<const0> ;
  assign b[12] = \<const0> ;
  assign b[11] = \<const0> ;
  assign b[10] = \<const0> ;
  assign b[9] = \<const0> ;
  assign b[8] = \<const0> ;
  assign b[7] = \<const0> ;
  assign b[6] = \<const0> ;
  assign b[5] = \<const0> ;
  assign b[4] = \<const0> ;
  assign b[3] = \<const0> ;
  assign b[2] = \<const0> ;
  assign b[1] = \<const0> ;
  assign b[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
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
        .Q(\^a [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[10] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[10] ),
        .Q(\^a [10]),
        .R(reset));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 \a_reg[10]_i_12 
       (.CI(\a_reg[10]_i_21_n_0 ),
        .CO({\a_reg[10]_i_12_n_0 ,\a_reg[10]_i_12_n_1 ,\a_reg[10]_i_12_n_2 ,\a_reg[10]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\a[10]_i_22_n_0 ,\a[10]_i_23_n_0 ,dividend[11],\a[10]_i_24_n_0 }),
        .O(\NLW_a_reg[10]_i_12_O_UNCONNECTED [3:0]),
        .S({\a[10]_i_25_n_0 ,\a[10]_i_26_n_0 ,\a[10]_i_27_n_0 ,\a[10]_i_28_n_0 }));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 \a_reg[10]_i_2 
       (.CI(\a_reg[10]_i_3_n_0 ),
        .CO({\a_reg[10]_i_2_n_0 ,\a_reg[10]_i_2_n_1 ,\a_reg[10]_i_2_n_2 ,\a_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\a[10]_i_4_n_0 ,\a[10]_i_5_n_0 ,\a[10]_i_6_n_0 ,\a[10]_i_7_n_0 }),
        .O(\NLW_a_reg[10]_i_2_O_UNCONNECTED [3:0]),
        .S({\a[10]_i_8_n_0 ,\a[10]_i_9_n_0 ,\a[10]_i_10_n_0 ,\a[10]_i_11_n_0 }));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 \a_reg[10]_i_21 
       (.CI(1'b0),
        .CO({\a_reg[10]_i_21_n_0 ,\a_reg[10]_i_21_n_1 ,\a_reg[10]_i_21_n_2 ,\a_reg[10]_i_21_n_3 }),
        .CYINIT(1'b1),
        .DI({\a[10]_i_29_n_0 ,\a[10]_i_30_n_0 ,\a[10]_i_31_n_0 ,\a[10]_i_32_n_0 }),
        .O(\NLW_a_reg[10]_i_21_O_UNCONNECTED [3:0]),
        .S({\a[10]_i_33_n_0 ,\a[10]_i_34_n_0 ,\a[10]_i_35_n_0 ,\a[10]_i_36_n_0 }));
  (* COMPARATOR_THRESHOLD = "6" *) 
  CARRY4 \a_reg[10]_i_3 
       (.CI(\a_reg[10]_i_12_n_0 ),
        .CO({\a_reg[10]_i_3_n_0 ,\a_reg[10]_i_3_n_1 ,\a_reg[10]_i_3_n_2 ,\a_reg[10]_i_3_n_3 }),
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
        .Q(\^a [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[2] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[2] ),
        .Q(\^a [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[3] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[3] ),
        .Q(\^a [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[4] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[4] ),
        .Q(\^a [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[5] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[5] ),
        .Q(\^a [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[6] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[6] ),
        .Q(\^a [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[7] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[7] ),
        .Q(\^a [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[8] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[8] ),
        .Q(\^a [8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg[9] 
       (.C(clk),
        .CE(\a[10]_i_1_n_0 ),
        .D(\divide_counts_reg_n_0_[9] ),
        .Q(\^a [9]),
        .R(reset));
  LUT2 #(
    .INIT(4'h2)) 
    \divide_counts[0]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg_n_0_[0] ),
        .O(\divide_counts[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[10]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[10]_i_2_n_6 ),
        .O(\divide_counts[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[1]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[4]_i_2_n_7 ),
        .O(\divide_counts[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[2]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[4]_i_2_n_6 ),
        .O(\divide_counts[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[3]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[4]_i_2_n_5 ),
        .O(\divide_counts[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[4]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[4]_i_2_n_4 ),
        .O(\divide_counts[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[5]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[8]_i_2_n_7 ),
        .O(\divide_counts[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[6]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[8]_i_2_n_6 ),
        .O(\divide_counts[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[7]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[8]_i_2_n_5 ),
        .O(\divide_counts[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divide_counts[8]_i_1 
       (.I0(state[1]),
        .I1(\divide_counts_reg[8]_i_2_n_4 ),
        .O(\divide_counts[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
        .CO({\NLW_divide_counts_reg[10]_i_2_CO_UNCONNECTED [3:1],\divide_counts_reg[10]_i_2_n_3 }),
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
        .CO({\divide_counts_reg[4]_i_2_n_0 ,\divide_counts_reg[4]_i_2_n_1 ,\divide_counts_reg[4]_i_2_n_2 ,\divide_counts_reg[4]_i_2_n_3 }),
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
        .CO({\divide_counts_reg[8]_i_2_n_0 ,\divide_counts_reg[8]_i_2_n_1 ,\divide_counts_reg[8]_i_2_n_2 ,\divide_counts_reg[8]_i_2_n_3 }),
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
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[0]_i_1 
       (.I0(\dividend_reg[3]_i_2_n_7 ),
        .I1(state[1]),
        .I2(x[0]),
        .O(\dividend[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[10]_i_1 
       (.I0(\dividend_reg[11]_i_2_n_5 ),
        .I1(state[1]),
        .I2(x[10]),
        .O(\dividend[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[12]_i_1 
       (.I0(state[1]),
        .I1(\dividend_reg[15]_i_2_n_7 ),
        .I2(x[12]),
        .O(\dividend[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[13]_i_1 
       (.I0(\dividend_reg[15]_i_2_n_6 ),
        .I1(state[1]),
        .I2(x[13]),
        .O(\dividend[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[14]_i_1 
       (.I0(\dividend_reg[15]_i_2_n_5 ),
        .I1(state[1]),
        .I2(x[14]),
        .O(\dividend[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[16]_i_1 
       (.I0(state[1]),
        .I1(\dividend_reg[19]_i_2_n_7 ),
        .I2(x[16]),
        .O(\dividend[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[17]_i_1 
       (.I0(\dividend_reg[19]_i_2_n_6 ),
        .I1(state[1]),
        .I2(x[17]),
        .O(\dividend[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[18]_i_1 
       (.I0(\dividend_reg[19]_i_2_n_5 ),
        .I1(state[1]),
        .I2(x[18]),
        .O(\dividend[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[1]_i_1 
       (.I0(\dividend_reg[3]_i_2_n_6 ),
        .I1(state[1]),
        .I2(x[1]),
        .O(\dividend[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[20]_i_1 
       (.I0(state[1]),
        .I1(\dividend_reg[23]_i_2_n_7 ),
        .I2(x[20]),
        .O(\dividend[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[21]_i_1 
       (.I0(\dividend_reg[23]_i_2_n_6 ),
        .I1(state[1]),
        .I2(x[21]),
        .O(\dividend[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[22]_i_1 
       (.I0(\dividend_reg[23]_i_2_n_5 ),
        .I1(state[1]),
        .I2(x[22]),
        .O(\dividend[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[24]_i_1 
       (.I0(state[1]),
        .I1(\dividend_reg[27]_i_2_n_7 ),
        .I2(x[24]),
        .O(\dividend[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[25]_i_1 
       (.I0(\dividend_reg[27]_i_2_n_6 ),
        .I1(state[1]),
        .I2(x[25]),
        .O(\dividend[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[26]_i_1 
       (.I0(\dividend_reg[27]_i_2_n_5 ),
        .I1(state[1]),
        .I2(x[26]),
        .O(\dividend[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[28]_i_1 
       (.I0(state[1]),
        .I1(\dividend_reg[31]_i_3_n_7 ),
        .I2(x[28]),
        .O(\dividend[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[29]_i_1 
       (.I0(\dividend_reg[31]_i_3_n_6 ),
        .I1(state[1]),
        .I2(x[29]),
        .O(\dividend[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[2]_i_1 
       (.I0(\dividend_reg[3]_i_2_n_5 ),
        .I1(state[1]),
        .I2(x[2]),
        .O(\dividend[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[4]_i_1 
       (.I0(\dividend_reg[7]_i_2_n_7 ),
        .I1(state[1]),
        .I2(x[4]),
        .O(\dividend[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \dividend[5]_i_1 
       (.I0(state[1]),
        .I1(\dividend_reg[7]_i_2_n_6 ),
        .I2(x[5]),
        .O(\dividend[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[6]_i_1 
       (.I0(\dividend_reg[7]_i_2_n_5 ),
        .I1(state[1]),
        .I2(x[6]),
        .O(\dividend[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dividend[8]_i_1 
       (.I0(\dividend_reg[11]_i_2_n_7 ),
        .I1(state[1]),
        .I2(x[8]),
        .O(\dividend[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
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
        .CO({\dividend_reg[11]_i_2_n_0 ,\dividend_reg[11]_i_2_n_1 ,\dividend_reg[11]_i_2_n_2 ,\dividend_reg[11]_i_2_n_3 }),
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
        .CO({\dividend_reg[15]_i_2_n_0 ,\dividend_reg[15]_i_2_n_1 ,\dividend_reg[15]_i_2_n_2 ,\dividend_reg[15]_i_2_n_3 }),
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
        .CO({\dividend_reg[19]_i_2_n_0 ,\dividend_reg[19]_i_2_n_1 ,\dividend_reg[19]_i_2_n_2 ,\dividend_reg[19]_i_2_n_3 }),
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
        .CO({\dividend_reg[23]_i_2_n_0 ,\dividend_reg[23]_i_2_n_1 ,\dividend_reg[23]_i_2_n_2 ,\dividend_reg[23]_i_2_n_3 }),
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
        .CO({\dividend_reg[27]_i_2_n_0 ,\dividend_reg[27]_i_2_n_1 ,\dividend_reg[27]_i_2_n_2 ,\dividend_reg[27]_i_2_n_3 }),
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
        .CO({\NLW_dividend_reg[31]_i_3_CO_UNCONNECTED [3],\dividend_reg[31]_i_3_n_1 ,\dividend_reg[31]_i_3_n_2 ,\dividend_reg[31]_i_3_n_3 }),
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
        .CO({\dividend_reg[3]_i_2_n_0 ,\dividend_reg[3]_i_2_n_1 ,\dividend_reg[3]_i_2_n_2 ,\dividend_reg[3]_i_2_n_3 }),
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
        .CO({\dividend_reg[7]_i_2_n_0 ,\dividend_reg[7]_i_2_n_1 ,\dividend_reg[7]_i_2_n_2 ,\dividend_reg[7]_i_2_n_3 }),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \state[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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

(* DIVISION_AMOUNT = "1664" *) 
(* NotValidForBitStream *)
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
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire count;
  wire count12_out;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire [31:0]count_reg;
  wire \count_reg[0]_i_3_n_0 ;
  wire \count_reg[0]_i_3_n_1 ;
  wire \count_reg[0]_i_3_n_2 ;
  wire \count_reg[0]_i_3_n_3 ;
  wire \count_reg[0]_i_3_n_4 ;
  wire \count_reg[0]_i_3_n_5 ;
  wire \count_reg[0]_i_3_n_6 ;
  wire \count_reg[0]_i_3_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_1 ;
  wire \count_reg[28]_i_1_n_2 ;
  wire \count_reg[28]_i_1_n_3 ;
  wire \count_reg[28]_i_1_n_4 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire [7:0]distance;
  wire [7:0]distance_OBUF;
  wire \distance_OBUF[7]_inst_i_2_n_0 ;
  wire [10:0]divided_distance;
  wire old_pwm_in;
  wire pwm_in;
  wire pwm_in_IBUF;
  wire [31:0]raw_distance;
  wire reset;
  wire reset_IBUF;
  wire [31:8]NLW_a_Q_UNCONNECTED;
  wire [3:3]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [31:11]NLW_d_a_UNCONNECTED;
  wire [31:0]NLW_d_b_UNCONNECTED;

initial begin
 $sdf_annotate("pwm_measure_tb_time_synth.sdf",,,,"tool_control");
end
  (* MAX_SIZE = "256" *) 
  (* N = "32" *) 
  (* POWER = "8" *) 
  averager a
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,divided_distance}),
        .EN(1'b1),
        .Q({NLW_a_Q_UNCONNECTED[31:8],averaged_distance}),
        .clk(clk_IBUF_BUFG),
        .reset(reset_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT3 #(
    .INIT(8'hF4)) 
    \count[0]_i_1 
       (.I0(old_pwm_in),
        .I1(pwm_in_IBUF),
        .I2(reset_IBUF),
        .O(\count[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_2 
       (.I0(pwm_in_IBUF),
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
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[0]_i_3_n_7 ),
        .Q(count_reg[0]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_3_n_0 ,\count_reg[0]_i_3_n_1 ,\count_reg[0]_i_3_n_2 ,\count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_3_n_4 ,\count_reg[0]_i_3_n_5 ,\count_reg[0]_i_3_n_6 ,\count_reg[0]_i_3_n_7 }),
        .S({count_reg[3:1],\count[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[0]_i_3_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S(count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S(count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count_reg[28]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\NLW_count_reg[28]_i_1_CO_UNCONNECTED [3],\count_reg[28]_i_1_n_1 ,\count_reg[28]_i_1_n_2 ,\count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S(count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(count_reg[29]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[0]_i_3_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count_reg[30]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(count_reg[31]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[0]_i_3_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_3_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1_n_0 ));
  divider d
       (.a({NLW_d_a_UNCONNECTED[31:11],divided_distance}),
        .b(NLW_d_b_UNCONNECTED[31:0]),
        .clk(clk_IBUF_BUFG),
        .reset(reset_IBUF),
        .x(raw_distance),
        .y({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  OBUF \distance_OBUF[0]_inst 
       (.I(distance_OBUF[0]),
        .O(distance[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \distance_OBUF[0]_inst_i_1 
       (.I0(averaged_distance[0]),
        .O(distance_OBUF[0]));
  OBUF \distance_OBUF[1]_inst 
       (.I(distance_OBUF[1]),
        .O(distance[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \distance_OBUF[1]_inst_i_1 
       (.I0(averaged_distance[0]),
        .I1(averaged_distance[1]),
        .O(distance_OBUF[1]));
  OBUF \distance_OBUF[2]_inst 
       (.I(distance_OBUF[2]),
        .O(distance[2]));
  LUT3 #(
    .INIT(8'h78)) 
    \distance_OBUF[2]_inst_i_1 
       (.I0(averaged_distance[0]),
        .I1(averaged_distance[1]),
        .I2(averaged_distance[2]),
        .O(distance_OBUF[2]));
  OBUF \distance_OBUF[3]_inst 
       (.I(distance_OBUF[3]),
        .O(distance[3]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \distance_OBUF[3]_inst_i_1 
       (.I0(averaged_distance[1]),
        .I1(averaged_distance[0]),
        .I2(averaged_distance[2]),
        .I3(averaged_distance[3]),
        .O(distance_OBUF[3]));
  OBUF \distance_OBUF[4]_inst 
       (.I(distance_OBUF[4]),
        .O(distance[4]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \distance_OBUF[4]_inst_i_1 
       (.I0(averaged_distance[2]),
        .I1(averaged_distance[0]),
        .I2(averaged_distance[1]),
        .I3(averaged_distance[3]),
        .I4(averaged_distance[4]),
        .O(distance_OBUF[4]));
  OBUF \distance_OBUF[5]_inst 
       (.I(distance_OBUF[5]),
        .O(distance[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \distance_OBUF[5]_inst_i_1 
       (.I0(averaged_distance[3]),
        .I1(averaged_distance[1]),
        .I2(averaged_distance[0]),
        .I3(averaged_distance[2]),
        .I4(averaged_distance[4]),
        .I5(averaged_distance[5]),
        .O(distance_OBUF[5]));
  OBUF \distance_OBUF[6]_inst 
       (.I(distance_OBUF[6]),
        .O(distance[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \distance_OBUF[6]_inst_i_1 
       (.I0(\distance_OBUF[7]_inst_i_2_n_0 ),
        .I1(averaged_distance[6]),
        .O(distance_OBUF[6]));
  OBUF \distance_OBUF[7]_inst 
       (.I(distance_OBUF[7]),
        .O(distance[7]));
  LUT3 #(
    .INIT(8'h78)) 
    \distance_OBUF[7]_inst_i_1 
       (.I0(\distance_OBUF[7]_inst_i_2_n_0 ),
        .I1(averaged_distance[6]),
        .I2(averaged_distance[7]),
        .O(distance_OBUF[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \distance_OBUF[7]_inst_i_2 
       (.I0(averaged_distance[5]),
        .I1(averaged_distance[3]),
        .I2(averaged_distance[1]),
        .I3(averaged_distance[0]),
        .I4(averaged_distance[2]),
        .I5(averaged_distance[4]),
        .O(\distance_OBUF[7]_inst_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    old_pwm_in_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pwm_in_IBUF),
        .Q(old_pwm_in),
        .R(1'b0));
  IBUF pwm_in_IBUF_inst
       (.I(pwm_in),
        .O(pwm_in_IBUF));
  LUT2 #(
    .INIT(4'h2)) 
    \raw_distance[31]_i_1 
       (.I0(old_pwm_in),
        .I1(pwm_in_IBUF),
        .O(count12_out));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[0]),
        .Q(raw_distance[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[10]),
        .Q(raw_distance[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[11]),
        .Q(raw_distance[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[12]),
        .Q(raw_distance[12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[13]),
        .Q(raw_distance[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[14]),
        .Q(raw_distance[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[15]),
        .Q(raw_distance[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[16]),
        .Q(raw_distance[16]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[17]),
        .Q(raw_distance[17]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[18]),
        .Q(raw_distance[18]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[19]),
        .Q(raw_distance[19]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[1]),
        .Q(raw_distance[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[20]),
        .Q(raw_distance[20]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[21]),
        .Q(raw_distance[21]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[22]),
        .Q(raw_distance[22]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[23]),
        .Q(raw_distance[23]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[24]),
        .Q(raw_distance[24]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[25]),
        .Q(raw_distance[25]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[26]),
        .Q(raw_distance[26]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[27]),
        .Q(raw_distance[27]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[28]),
        .Q(raw_distance[28]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[29]),
        .Q(raw_distance[29]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[2]),
        .Q(raw_distance[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[30]),
        .Q(raw_distance[30]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[31]),
        .Q(raw_distance[31]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[3]),
        .Q(raw_distance[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[4]),
        .Q(raw_distance[4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[5]),
        .Q(raw_distance[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[6]),
        .Q(raw_distance[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[7]),
        .Q(raw_distance[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[8]),
        .Q(raw_distance[8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \raw_distance_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(count12_out),
        .D(count_reg[9]),
        .Q(raw_distance[9]),
        .R(reset_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
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
