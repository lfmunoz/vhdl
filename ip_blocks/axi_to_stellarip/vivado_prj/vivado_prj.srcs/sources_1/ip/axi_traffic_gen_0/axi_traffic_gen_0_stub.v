// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:48:31 MST 2014
// Date        : Mon Feb 16 11:07:32 2015
// Host        : austin_workstation_1 running 64-bit Fedora release 20 (Heisenbug)
// Command     : write_verilog -force -mode synth_stub
//               /home/luis/FIRMWARE/git/vhdl/ip_blocks/axi_to_stellarip/vivado_prj/vivado_prj.srcs/sources_1/ip/axi_traffic_gen_0/axi_traffic_gen_0_stub.v
// Design      : axi_traffic_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_traffic_gen_v2_0_top,Vivado 2014.4" *)
module axi_traffic_gen_0(s_axi_aclk, s_axi_aresetn, m_axi_lite_ch1_awaddr, m_axi_lite_ch1_awprot, m_axi_lite_ch1_awvalid, m_axi_lite_ch1_awready, m_axi_lite_ch1_wdata, m_axi_lite_ch1_wstrb, m_axi_lite_ch1_wvalid, m_axi_lite_ch1_wready, m_axi_lite_ch1_bresp, m_axi_lite_ch1_bvalid, m_axi_lite_ch1_bready, done, status)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_aresetn,m_axi_lite_ch1_awaddr[31:0],m_axi_lite_ch1_awprot[2:0],m_axi_lite_ch1_awvalid,m_axi_lite_ch1_awready,m_axi_lite_ch1_wdata[31:0],m_axi_lite_ch1_wstrb[3:0],m_axi_lite_ch1_wvalid,m_axi_lite_ch1_wready,m_axi_lite_ch1_bresp[1:0],m_axi_lite_ch1_bvalid,m_axi_lite_ch1_bready,done,status[31:0]" */;
  input s_axi_aclk;
  input s_axi_aresetn;
  output [31:0]m_axi_lite_ch1_awaddr;
  output [2:0]m_axi_lite_ch1_awprot;
  output m_axi_lite_ch1_awvalid;
  input m_axi_lite_ch1_awready;
  output [31:0]m_axi_lite_ch1_wdata;
  output [3:0]m_axi_lite_ch1_wstrb;
  output m_axi_lite_ch1_wvalid;
  input m_axi_lite_ch1_wready;
  input [1:0]m_axi_lite_ch1_bresp;
  input m_axi_lite_ch1_bvalid;
  output m_axi_lite_ch1_bready;
  output done;
  output [31:0]status;
endmodule
