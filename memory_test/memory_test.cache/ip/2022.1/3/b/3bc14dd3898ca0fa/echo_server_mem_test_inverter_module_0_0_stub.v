// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Jun 10 15:57:34 2023
// Host        : jk running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ echo_server_mem_test_inverter_module_0_0_stub.v
// Design      : echo_server_mem_test_inverter_module_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "inverter_module,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset_n, m_axis_data, m_axis_valid, 
  m_axis_tlast, m_axis_ready, s_axis_data, s_axis_valid, s_axis_tlast, s_axis_ready)
/* synthesis syn_black_box black_box_pad_pin="clk,reset_n,m_axis_data[31:0],m_axis_valid,m_axis_tlast,m_axis_ready,s_axis_data[31:0],s_axis_valid,s_axis_tlast,s_axis_ready" */;
  input clk;
  input reset_n;
  output [31:0]m_axis_data;
  output m_axis_valid;
  output m_axis_tlast;
  input m_axis_ready;
  input [31:0]s_axis_data;
  input s_axis_valid;
  input s_axis_tlast;
  output s_axis_ready;
endmodule
