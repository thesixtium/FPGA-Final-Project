// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Nov 28 11:04:41 2024
// Host        : hiccup running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/ajrbe/Documents/School/ENEL
//               453/servo2/servo2/servo2.gen/sources_1/ip/div_gen_0/div_gen_0_stub.v}
// Design      : div_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "div_gen_v5_1_22,Vivado 2024.1" *)
module div_gen_0(aclk, s_axis_divisor_tvalid, 
  s_axis_divisor_tready, s_axis_divisor_tdata, s_axis_dividend_tvalid, 
  s_axis_dividend_tready, s_axis_dividend_tdata, m_axis_dout_tvalid, m_axis_dout_tready, 
  m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="s_axis_divisor_tvalid,s_axis_divisor_tready,s_axis_divisor_tdata[15:0],s_axis_dividend_tvalid,s_axis_dividend_tready,s_axis_dividend_tdata[15:0],m_axis_dout_tvalid,m_axis_dout_tready,m_axis_dout_tdata[31:0]" */
/* synthesis syn_force_seq_prim="aclk" */;
  input aclk /* synthesis syn_isclock = 1 */;
  input s_axis_divisor_tvalid;
  output s_axis_divisor_tready;
  input [15:0]s_axis_divisor_tdata;
  input s_axis_dividend_tvalid;
  output s_axis_dividend_tready;
  input [15:0]s_axis_dividend_tdata;
  output m_axis_dout_tvalid;
  input m_axis_dout_tready;
  output [31:0]m_axis_dout_tdata;
endmodule
