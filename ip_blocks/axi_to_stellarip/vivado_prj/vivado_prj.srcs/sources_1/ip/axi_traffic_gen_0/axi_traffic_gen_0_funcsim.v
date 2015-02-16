// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:48:31 MST 2014
// Date        : Mon Feb 16 11:07:32 2015
// Host        : austin_workstation_1 running 64-bit Fedora release 20 (Heisenbug)
// Command     : write_verilog -force -mode funcsim
//               /home/luis/FIRMWARE/git/vhdl/ip_blocks/axi_to_stellarip/vivado_prj/vivado_prj.srcs/sources_1/ip/axi_traffic_gen_0/axi_traffic_gen_0_funcsim.v
// Design      : axi_traffic_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* X_CORE_INFO = "axi_traffic_gen_v2_0_top,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "axi_traffic_gen_0,axi_traffic_gen_v2_0_top,{}" *) (* CORE_GENERATION_INFO = "axi_traffic_gen_0,axi_traffic_gen_v2_0_top,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_traffic_gen,x_ipVersion=2.0,x_ipCoreRevision=5,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_FAMILY=virtex7,C_BASEADDR=0x00000000,C_HIGHADDR=0x0000FFFF,C_ZERO_INVALID=1,C_NO_EXCL=0,C_S_AXI_DATA_WIDTH=32,C_S_AXI_AWUSER_WIDTH=8,C_S_AXI_ARUSER_WIDTH=8,C_S_AXI_ID_WIDTH=1,C_M_AXI_THREAD_ID_WIDTH=1,C_M_AXI_DATA_WIDTH=32,C_M_AXI_AWUSER_WIDTH=8,C_M_AXI_ARUSER_WIDTH=8,C_AXIS1_HAS_TKEEP=1,C_AXIS1_HAS_TSTRB=1,C_AXIS2_HAS_TKEEP=0,C_AXIS2_HAS_TSTRB=0,C_AXIS_TDATA_WIDTH=32,C_AXIS_TUSER_WIDTH=8,C_AXIS_TID_WIDTH=8,C_AXIS_TDEST_WIDTH=8,C_ATG_BASIC_AXI4=0,C_ATG_REPEAT_TYPE=0,C_ATG_HLTP_MODE=0,C_ATG_STATIC=0,C_ATG_SYSTEM_INIT=1,C_ATG_SYSTEM_TEST=0,C_ATG_STREAMING=0,C_ATG_STREAMING_MST_ONLY=1,C_ATG_STREAMING_MST_LPBK=0,C_ATG_STREAMING_SLV_LPBK=0,C_ATG_STREAMING_MAX_LEN_BITS=16,C_AXIS_SPARSE_EN=1,C_ATG_SLAVE_ONLY=0,C_ATG_STATIC_WR_ADDRESS=0x12A00000,C_ATG_STATIC_RD_ADDRESS=0x13A00000,C_ATG_STATIC_WR_HIGH_ADDRESS=0x12A00FFF,C_ATG_STATIC_RD_HIGH_ADDRESS=0x13A00FFF,C_ATG_STATIC_INCR=0,C_ATG_STATIC_EN_READ=1,C_ATG_STATIC_EN_WRITE=1,C_ATG_STATIC_FREE_RUN=1,C_ATG_STATIC_RD_PIPELINE=3,C_ATG_STATIC_WR_PIPELINE=3,C_ATG_STATIC_TRANGAP=256,C_ATG_STATIC_LENGTH=16,C_ATG_SYSTEM_INIT_DATA_MIF=axi_traffic_gen_0_data.mif,C_ATG_SYSTEM_INIT_ADDR_MIF=axi_traffic_gen_0_addr.mif,C_ATG_SYSTEM_INIT_CTRL_MIF=axi_traffic_gen_0_ctrl.mif,C_ATG_SYSTEM_INIT_MASK_MIF=axi_traffic_gen_0_mask.mif,C_ATG_MIF_DATA_DEPTH=16,C_ATG_MIF_ADDR_BITS=4,C_ATG_SYSTEM_CMD_MAX_RETRY=256,C_ATG_SYSTEM_TEST_MAX_CLKS=265000,C_ATG_SYSTEM_MAX_CHANNELS=00000000000000000000000000000001,C_ATG_SYSTEM_CH1_LOW=0x00000000,C_ATG_SYSTEM_CH1_HIGH=0xFFFFFFFF,C_ATG_SYSTEM_CH2_LOW=0x00000100,C_ATG_SYSTEM_CH2_HIGH=0x000001FF,C_ATG_SYSTEM_CH3_LOW=0x00000200,C_ATG_SYSTEM_CH3_HIGH=0x000002FF,C_ATG_SYSTEM_CH4_LOW=0x00000300,C_ATG_SYSTEM_CH4_HIGH=0x000003FF,C_ATG_SYSTEM_CH5_LOW=0x00000400,C_ATG_SYSTEM_CH5_HIGH=0x000004FF,C_RAMINIT_CMDRAM0_F=axi_traffic_gen_0_default_cmdram.mif,C_RAMINIT_CMDRAM1_F=NONE,C_RAMINIT_CMDRAM2_F=NONE,C_RAMINIT_CMDRAM3_F=NONE,C_RAMINIT_SRAM0_F=axi_traffic_gen_0_default_mstram.mif,C_RAMINIT_PARAMRAM0_F=axi_traffic_gen_0_default_prmram.mif}" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module axi_traffic_gen_0
   (s_axi_aclk,
    s_axi_aresetn,
    m_axi_lite_ch1_awaddr,
    m_axi_lite_ch1_awprot,
    m_axi_lite_ch1_awvalid,
    m_axi_lite_ch1_awready,
    m_axi_lite_ch1_wdata,
    m_axi_lite_ch1_wstrb,
    m_axi_lite_ch1_wvalid,
    m_axi_lite_ch1_wready,
    m_axi_lite_ch1_bresp,
    m_axi_lite_ch1_bvalid,
    m_axi_lite_ch1_bready,
    done,
    status);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) input s_axi_aresetn;
  output [31:0]m_axi_lite_ch1_awaddr;
  output [2:0]m_axi_lite_ch1_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_CH1 AWVALID" *) output m_axi_lite_ch1_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_CH1 AWREADY" *) input m_axi_lite_ch1_awready;
  output [31:0]m_axi_lite_ch1_wdata;
  output [3:0]m_axi_lite_ch1_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_CH1 WVALID" *) output m_axi_lite_ch1_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_CH1 WREADY" *) input m_axi_lite_ch1_wready;
  input [1:0]m_axi_lite_ch1_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_CH1 BVALID" *) input m_axi_lite_ch1_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_CH1 BREADY" *) output m_axi_lite_ch1_bready;
  output done;
  output [31:0]status;

  wire done;
  wire [31:0]m_axi_lite_ch1_awaddr;
  wire [2:0]m_axi_lite_ch1_awprot;
  wire m_axi_lite_ch1_awready;
  wire m_axi_lite_ch1_awvalid;
  wire m_axi_lite_ch1_bready;
  wire [1:0]m_axi_lite_ch1_bresp;
  wire m_axi_lite_ch1_bvalid;
  wire [31:0]m_axi_lite_ch1_wdata;
  wire m_axi_lite_ch1_wready;
  wire [3:0]m_axi_lite_ch1_wstrb;
  wire m_axi_lite_ch1_wvalid;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [31:0]status;
  wire NLW_inst_err_out_UNCONNECTED;
  wire NLW_inst_irq_out_UNCONNECTED;
  wire NLW_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_axi_bready_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch1_arvalid_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch1_rready_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch2_arvalid_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch2_awvalid_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch2_bready_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch2_rready_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch2_wvalid_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch3_arvalid_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch3_awvalid_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch3_bready_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch3_rready_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch3_wvalid_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch4_arvalid_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch4_awvalid_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch4_bready_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch4_rready_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch4_wvalid_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch5_arvalid_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch5_awvalid_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch5_bready_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch5_rready_UNCONNECTED;
  wire NLW_inst_m_axi_lite_ch5_wvalid_UNCONNECTED;
  wire NLW_inst_m_axi_rready_UNCONNECTED;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_inst_m_axis_1_tlast_UNCONNECTED;
  wire NLW_inst_m_axis_1_tvalid_UNCONNECTED;
  wire NLW_inst_m_axis_2_tlast_UNCONNECTED;
  wire NLW_inst_m_axis_2_tvalid_UNCONNECTED;
  wire NLW_inst_s_axi_arready_UNCONNECTED;
  wire NLW_inst_s_axi_awready_UNCONNECTED;
  wire NLW_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_inst_s_axi_wready_UNCONNECTED;
  wire NLW_inst_s_axis_1_tready_UNCONNECTED;
  wire NLW_inst_s_axis_2_tready_UNCONNECTED;
  wire [15:0]NLW_inst_axis_err_count_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_lite_ch1_araddr_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_lite_ch2_araddr_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_lite_ch2_awaddr_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_lite_ch2_awprot_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_lite_ch2_wdata_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_lite_ch2_wstrb_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_lite_ch3_araddr_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_lite_ch3_awaddr_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_lite_ch3_awprot_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_lite_ch3_wdata_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_lite_ch3_wstrb_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_lite_ch4_araddr_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_lite_ch4_awaddr_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_lite_ch4_awprot_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_lite_ch4_wdata_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_lite_ch4_wstrb_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_lite_ch5_araddr_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_lite_ch5_awaddr_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_lite_ch5_awprot_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_lite_ch5_wdata_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_lite_ch5_wstrb_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_wstrb_UNCONNECTED;
  wire [31:0]NLW_inst_m_axis_1_tdata_UNCONNECTED;
  wire [7:0]NLW_inst_m_axis_1_tdest_UNCONNECTED;
  wire [7:0]NLW_inst_m_axis_1_tid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_1_tkeep_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_1_tstrb_UNCONNECTED;
  wire [7:0]NLW_inst_m_axis_1_tuser_UNCONNECTED;
  wire [31:0]NLW_inst_m_axis_2_tdata_UNCONNECTED;
  wire [7:0]NLW_inst_m_axis_2_tdest_UNCONNECTED;
  wire [7:0]NLW_inst_m_axis_2_tid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_2_tkeep_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_2_tstrb_UNCONNECTED;
  wire [7:0]NLW_inst_m_axis_2_tuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;

(* C_ATG_BASIC_AXI4 = "0" *) 
   (* C_ATG_HLTP_MODE = "0" *) 
   (* C_ATG_MIF_ADDR_BITS = "4" *) 
   (* C_ATG_MIF_DATA_DEPTH = "16" *) 
   (* C_ATG_REPEAT_TYPE = "0" *) 
   (* C_ATG_SLAVE_ONLY = "0" *) 
   (* C_ATG_STATIC = "0" *) 
   (* C_ATG_STATIC_EN_READ = "1" *) 
   (* C_ATG_STATIC_EN_WRITE = "1" *) 
   (* C_ATG_STATIC_FREE_RUN = "1" *) 
   (* C_ATG_STATIC_INCR = "0" *) 
   (* C_ATG_STATIC_LENGTH = "16" *) 
   (* C_ATG_STATIC_RD_ADDRESS = "329252864" *) 
   (* C_ATG_STATIC_RD_HIGH_ADDRESS = "329256959" *) 
   (* C_ATG_STATIC_RD_PIPELINE = "3" *) 
   (* C_ATG_STATIC_TRANGAP = "256" *) 
   (* C_ATG_STATIC_WR_ADDRESS = "312475648" *) 
   (* C_ATG_STATIC_WR_HIGH_ADDRESS = "312479743" *) 
   (* C_ATG_STATIC_WR_PIPELINE = "3" *) 
   (* C_ATG_STREAMING = "0" *) 
   (* C_ATG_STREAMING_MAX_LEN_BITS = "16" *) 
   (* C_ATG_STREAMING_MST_LPBK = "0" *) 
   (* C_ATG_STREAMING_MST_ONLY = "1" *) 
   (* C_ATG_STREAMING_SLV_LPBK = "0" *) 
   (* C_ATG_SYSTEM_CH1_HIGH = "-1" *) 
   (* C_ATG_SYSTEM_CH1_LOW = "0" *) 
   (* C_ATG_SYSTEM_CH2_HIGH = "511" *) 
   (* C_ATG_SYSTEM_CH2_LOW = "256" *) 
   (* C_ATG_SYSTEM_CH3_HIGH = "767" *) 
   (* C_ATG_SYSTEM_CH3_LOW = "512" *) 
   (* C_ATG_SYSTEM_CH4_HIGH = "1023" *) 
   (* C_ATG_SYSTEM_CH4_LOW = "768" *) 
   (* C_ATG_SYSTEM_CH5_HIGH = "1279" *) 
   (* C_ATG_SYSTEM_CH5_LOW = "1024" *) 
   (* C_ATG_SYSTEM_CMD_MAX_RETRY = "256" *) 
   (* C_ATG_SYSTEM_INIT = "1" *) 
   (* C_ATG_SYSTEM_INIT_ADDR_MIF = "axi_traffic_gen_0_addr.mif" *) 
   (* C_ATG_SYSTEM_INIT_CTRL_MIF = "axi_traffic_gen_0_ctrl.mif" *) 
   (* C_ATG_SYSTEM_INIT_DATA_MIF = "axi_traffic_gen_0_data.mif" *) 
   (* C_ATG_SYSTEM_INIT_MASK_MIF = "axi_traffic_gen_0_mask.mif" *) 
   (* C_ATG_SYSTEM_MAX_CHANNELS = "1" *) 
   (* C_ATG_SYSTEM_TEST = "0" *) 
   (* C_ATG_SYSTEM_TEST_MAX_CLKS = "265000" *) 
   (* C_AXIS1_HAS_TKEEP = "1" *) 
   (* C_AXIS1_HAS_TSTRB = "1" *) 
   (* C_AXIS2_HAS_TKEEP = "0" *) 
   (* C_AXIS2_HAS_TSTRB = "0" *) 
   (* C_AXIS_SPARSE_EN = "1" *) 
   (* C_AXIS_TDATA_WIDTH = "32" *) 
   (* C_AXIS_TDEST_WIDTH = "8" *) 
   (* C_AXIS_TID_WIDTH = "8" *) 
   (* C_AXIS_TUSER_WIDTH = "8" *) 
   (* C_BASEADDR = "0" *) 
   (* C_FAMILY = "virtex7" *) 
   (* C_HIGHADDR = "65535" *) 
   (* C_M_AXI_ARUSER_WIDTH = "8" *) 
   (* C_M_AXI_AWUSER_WIDTH = "8" *) 
   (* C_M_AXI_DATA_WIDTH = "32" *) 
   (* C_M_AXI_THREAD_ID_WIDTH = "1" *) 
   (* C_NO_EXCL = "0" *) 
   (* C_RAMINIT_CMDRAM0_F = "axi_traffic_gen_0_default_cmdram.mif" *) 
   (* C_RAMINIT_CMDRAM1_F = "NONE" *) 
   (* C_RAMINIT_CMDRAM2_F = "NONE" *) 
   (* C_RAMINIT_CMDRAM3_F = "NONE" *) 
   (* C_RAMINIT_PARAMRAM0_F = "axi_traffic_gen_0_default_prmram.mif" *) 
   (* C_RAMINIT_SRAM0_F = "axi_traffic_gen_0_default_mstram.mif" *) 
   (* C_S_AXI_ARUSER_WIDTH = "8" *) 
   (* C_S_AXI_AWUSER_WIDTH = "8" *) 
   (* C_S_AXI_DATA_WIDTH = "32" *) 
   (* C_S_AXI_ID_WIDTH = "1" *) 
   (* C_ZERO_INVALID = "1" *) 
   (* DONT_TOUCH *) 
   (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_LITE_CH1 AWADDR" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   axi_traffic_gen_0_axi_traffic_gen_v2_0_top inst
       (.axis_err_count(NLW_inst_axis_err_count_UNCONNECTED[15:0]),
        .core_ext_start(1'b0),
        .core_ext_stop(1'b0),
        .done(done),
        .err_out(NLW_inst_err_out_UNCONNECTED),
        .irq_out(NLW_inst_irq_out_UNCONNECTED),
        .m_axi_araddr(NLW_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[7:0]),
        .m_axi_arvalid(NLW_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[7:0]),
        .m_axi_awvalid(NLW_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_bvalid(1'b0),
        .m_axi_lite_ch1_araddr(NLW_inst_m_axi_lite_ch1_araddr_UNCONNECTED[31:0]),
        .m_axi_lite_ch1_arready(1'b0),
        .m_axi_lite_ch1_arvalid(NLW_inst_m_axi_lite_ch1_arvalid_UNCONNECTED),
        .m_axi_lite_ch1_awaddr(m_axi_lite_ch1_awaddr),
        .m_axi_lite_ch1_awprot(m_axi_lite_ch1_awprot),
        .m_axi_lite_ch1_awready(m_axi_lite_ch1_awready),
        .m_axi_lite_ch1_awvalid(m_axi_lite_ch1_awvalid),
        .m_axi_lite_ch1_bready(m_axi_lite_ch1_bready),
        .m_axi_lite_ch1_bresp(m_axi_lite_ch1_bresp),
        .m_axi_lite_ch1_bvalid(m_axi_lite_ch1_bvalid),
        .m_axi_lite_ch1_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_lite_ch1_rready(NLW_inst_m_axi_lite_ch1_rready_UNCONNECTED),
        .m_axi_lite_ch1_rresp({1'b0,1'b0}),
        .m_axi_lite_ch1_rvalid(1'b0),
        .m_axi_lite_ch1_wdata(m_axi_lite_ch1_wdata),
        .m_axi_lite_ch1_wready(m_axi_lite_ch1_wready),
        .m_axi_lite_ch1_wstrb(m_axi_lite_ch1_wstrb),
        .m_axi_lite_ch1_wvalid(m_axi_lite_ch1_wvalid),
        .m_axi_lite_ch2_araddr(NLW_inst_m_axi_lite_ch2_araddr_UNCONNECTED[31:0]),
        .m_axi_lite_ch2_arready(1'b0),
        .m_axi_lite_ch2_arvalid(NLW_inst_m_axi_lite_ch2_arvalid_UNCONNECTED),
        .m_axi_lite_ch2_awaddr(NLW_inst_m_axi_lite_ch2_awaddr_UNCONNECTED[31:0]),
        .m_axi_lite_ch2_awprot(NLW_inst_m_axi_lite_ch2_awprot_UNCONNECTED[2:0]),
        .m_axi_lite_ch2_awready(1'b0),
        .m_axi_lite_ch2_awvalid(NLW_inst_m_axi_lite_ch2_awvalid_UNCONNECTED),
        .m_axi_lite_ch2_bready(NLW_inst_m_axi_lite_ch2_bready_UNCONNECTED),
        .m_axi_lite_ch2_bresp({1'b0,1'b0}),
        .m_axi_lite_ch2_bvalid(1'b0),
        .m_axi_lite_ch2_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_lite_ch2_rready(NLW_inst_m_axi_lite_ch2_rready_UNCONNECTED),
        .m_axi_lite_ch2_rresp({1'b0,1'b0}),
        .m_axi_lite_ch2_rvalid(1'b0),
        .m_axi_lite_ch2_wdata(NLW_inst_m_axi_lite_ch2_wdata_UNCONNECTED[31:0]),
        .m_axi_lite_ch2_wready(1'b0),
        .m_axi_lite_ch2_wstrb(NLW_inst_m_axi_lite_ch2_wstrb_UNCONNECTED[3:0]),
        .m_axi_lite_ch2_wvalid(NLW_inst_m_axi_lite_ch2_wvalid_UNCONNECTED),
        .m_axi_lite_ch3_araddr(NLW_inst_m_axi_lite_ch3_araddr_UNCONNECTED[31:0]),
        .m_axi_lite_ch3_arready(1'b0),
        .m_axi_lite_ch3_arvalid(NLW_inst_m_axi_lite_ch3_arvalid_UNCONNECTED),
        .m_axi_lite_ch3_awaddr(NLW_inst_m_axi_lite_ch3_awaddr_UNCONNECTED[31:0]),
        .m_axi_lite_ch3_awprot(NLW_inst_m_axi_lite_ch3_awprot_UNCONNECTED[2:0]),
        .m_axi_lite_ch3_awready(1'b0),
        .m_axi_lite_ch3_awvalid(NLW_inst_m_axi_lite_ch3_awvalid_UNCONNECTED),
        .m_axi_lite_ch3_bready(NLW_inst_m_axi_lite_ch3_bready_UNCONNECTED),
        .m_axi_lite_ch3_bresp({1'b0,1'b0}),
        .m_axi_lite_ch3_bvalid(1'b0),
        .m_axi_lite_ch3_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_lite_ch3_rready(NLW_inst_m_axi_lite_ch3_rready_UNCONNECTED),
        .m_axi_lite_ch3_rresp({1'b0,1'b0}),
        .m_axi_lite_ch3_rvalid(1'b0),
        .m_axi_lite_ch3_wdata(NLW_inst_m_axi_lite_ch3_wdata_UNCONNECTED[31:0]),
        .m_axi_lite_ch3_wready(1'b0),
        .m_axi_lite_ch3_wstrb(NLW_inst_m_axi_lite_ch3_wstrb_UNCONNECTED[3:0]),
        .m_axi_lite_ch3_wvalid(NLW_inst_m_axi_lite_ch3_wvalid_UNCONNECTED),
        .m_axi_lite_ch4_araddr(NLW_inst_m_axi_lite_ch4_araddr_UNCONNECTED[31:0]),
        .m_axi_lite_ch4_arready(1'b0),
        .m_axi_lite_ch4_arvalid(NLW_inst_m_axi_lite_ch4_arvalid_UNCONNECTED),
        .m_axi_lite_ch4_awaddr(NLW_inst_m_axi_lite_ch4_awaddr_UNCONNECTED[31:0]),
        .m_axi_lite_ch4_awprot(NLW_inst_m_axi_lite_ch4_awprot_UNCONNECTED[2:0]),
        .m_axi_lite_ch4_awready(1'b0),
        .m_axi_lite_ch4_awvalid(NLW_inst_m_axi_lite_ch4_awvalid_UNCONNECTED),
        .m_axi_lite_ch4_bready(NLW_inst_m_axi_lite_ch4_bready_UNCONNECTED),
        .m_axi_lite_ch4_bresp({1'b0,1'b0}),
        .m_axi_lite_ch4_bvalid(1'b0),
        .m_axi_lite_ch4_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_lite_ch4_rready(NLW_inst_m_axi_lite_ch4_rready_UNCONNECTED),
        .m_axi_lite_ch4_rresp({1'b0,1'b0}),
        .m_axi_lite_ch4_rvalid(1'b0),
        .m_axi_lite_ch4_wdata(NLW_inst_m_axi_lite_ch4_wdata_UNCONNECTED[31:0]),
        .m_axi_lite_ch4_wready(1'b0),
        .m_axi_lite_ch4_wstrb(NLW_inst_m_axi_lite_ch4_wstrb_UNCONNECTED[3:0]),
        .m_axi_lite_ch4_wvalid(NLW_inst_m_axi_lite_ch4_wvalid_UNCONNECTED),
        .m_axi_lite_ch5_araddr(NLW_inst_m_axi_lite_ch5_araddr_UNCONNECTED[31:0]),
        .m_axi_lite_ch5_arready(1'b0),
        .m_axi_lite_ch5_arvalid(NLW_inst_m_axi_lite_ch5_arvalid_UNCONNECTED),
        .m_axi_lite_ch5_awaddr(NLW_inst_m_axi_lite_ch5_awaddr_UNCONNECTED[31:0]),
        .m_axi_lite_ch5_awprot(NLW_inst_m_axi_lite_ch5_awprot_UNCONNECTED[2:0]),
        .m_axi_lite_ch5_awready(1'b0),
        .m_axi_lite_ch5_awvalid(NLW_inst_m_axi_lite_ch5_awvalid_UNCONNECTED),
        .m_axi_lite_ch5_bready(NLW_inst_m_axi_lite_ch5_bready_UNCONNECTED),
        .m_axi_lite_ch5_bresp({1'b0,1'b0}),
        .m_axi_lite_ch5_bvalid(1'b0),
        .m_axi_lite_ch5_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_lite_ch5_rready(NLW_inst_m_axi_lite_ch5_rready_UNCONNECTED),
        .m_axi_lite_ch5_rresp({1'b0,1'b0}),
        .m_axi_lite_ch5_rvalid(1'b0),
        .m_axi_lite_ch5_wdata(NLW_inst_m_axi_lite_ch5_wdata_UNCONNECTED[31:0]),
        .m_axi_lite_ch5_wready(1'b0),
        .m_axi_lite_ch5_wstrb(NLW_inst_m_axi_lite_ch5_wstrb_UNCONNECTED[3:0]),
        .m_axi_lite_ch5_wvalid(NLW_inst_m_axi_lite_ch5_wvalid_UNCONNECTED),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_inst_m_axi_wdata_UNCONNECTED[31:0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_inst_m_axi_wstrb_UNCONNECTED[3:0]),
        .m_axi_wvalid(NLW_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_1_tdata(NLW_inst_m_axis_1_tdata_UNCONNECTED[31:0]),
        .m_axis_1_tdest(NLW_inst_m_axis_1_tdest_UNCONNECTED[7:0]),
        .m_axis_1_tid(NLW_inst_m_axis_1_tid_UNCONNECTED[7:0]),
        .m_axis_1_tkeep(NLW_inst_m_axis_1_tkeep_UNCONNECTED[3:0]),
        .m_axis_1_tlast(NLW_inst_m_axis_1_tlast_UNCONNECTED),
        .m_axis_1_tready(1'b1),
        .m_axis_1_tstrb(NLW_inst_m_axis_1_tstrb_UNCONNECTED[3:0]),
        .m_axis_1_tuser(NLW_inst_m_axis_1_tuser_UNCONNECTED[7:0]),
        .m_axis_1_tvalid(NLW_inst_m_axis_1_tvalid_UNCONNECTED),
        .m_axis_2_tdata(NLW_inst_m_axis_2_tdata_UNCONNECTED[31:0]),
        .m_axis_2_tdest(NLW_inst_m_axis_2_tdest_UNCONNECTED[7:0]),
        .m_axis_2_tid(NLW_inst_m_axis_2_tid_UNCONNECTED[7:0]),
        .m_axis_2_tkeep(NLW_inst_m_axis_2_tkeep_UNCONNECTED[3:0]),
        .m_axis_2_tlast(NLW_inst_m_axis_2_tlast_UNCONNECTED),
        .m_axis_2_tready(1'b1),
        .m_axis_2_tstrb(NLW_inst_m_axis_2_tstrb_UNCONNECTED[3:0]),
        .m_axis_2_tuser(NLW_inst_m_axis_2_tuser_UNCONNECTED[7:0]),
        .m_axis_2_tvalid(NLW_inst_m_axis_2_tvalid_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_inst_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .s_axis_1_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_1_tdest({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_1_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_1_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_1_tlast(1'b0),
        .s_axis_1_tready(NLW_inst_s_axis_1_tready_UNCONNECTED),
        .s_axis_1_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_1_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_1_tvalid(1'b0),
        .s_axis_2_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_2_tdest({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_2_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_2_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_2_tlast(1'b0),
        .s_axis_2_tready(NLW_inst_s_axis_2_tready_UNCONNECTED),
        .s_axis_2_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_2_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_2_tvalid(1'b0),
        .status(status));
endmodule

(* ORIG_REF_NAME = "axi_traffic_gen_v2_0_asynch_rst_ff" *) 
module axi_traffic_gen_0_axi_traffic_gen_v2_0_asynch_rst_ff
   (st_flop_ze_out,
    s_axi_aclk,
    core_ext_stop);
  output st_flop_ze_out;
  input s_axi_aclk;
  input core_ext_stop;

  wire core_ext_stop;
  wire s_axi_aclk;
  wire st_flop_ze_out;

(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDPE q_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(core_ext_stop),
        .Q(st_flop_ze_out));
endmodule

(* ORIG_REF_NAME = "axi_traffic_gen_v2_0_asynch_rst_ff" *) 
module axi_traffic_gen_0_axi_traffic_gen_v2_0_asynch_rst_ff_0
   (st_flop_ze_out,
    s_axi_aclk,
    core_ext_stop);
  input st_flop_ze_out;
  input s_axi_aclk;
  input core_ext_stop;

  wire core_ext_stop;
  wire n_0_q_reg;
  wire s_axi_aclk;
  wire st_flop_ze_out;

(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDPE q_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(st_flop_ze_out),
        .PRE(core_ext_stop),
        .Q(n_0_q_reg));
endmodule

(* ORIG_REF_NAME = "axi_traffic_gen_v2_0_asynch_rst_ff" *) 
module axi_traffic_gen_0_axi_traffic_gen_v2_0_asynch_rst_ff_1
   (flop_ze_out,
    s_axi_aclk,
    core_ext_start);
  output flop_ze_out;
  input s_axi_aclk;
  input core_ext_start;

  wire core_ext_start;
  wire flop_ze_out;
  wire s_axi_aclk;

(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDPE q_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(core_ext_start),
        .Q(flop_ze_out));
endmodule

(* ORIG_REF_NAME = "axi_traffic_gen_v2_0_asynch_rst_ff" *) 
module axi_traffic_gen_0_axi_traffic_gen_v2_0_asynch_rst_ff_2
   (flop_ze_out,
    s_axi_aclk,
    core_ext_start);
  input flop_ze_out;
  input s_axi_aclk;
  input core_ext_start;

  wire core_ext_start;
  wire flop_ze_out;
  wire n_0_q_reg;
  wire s_axi_aclk;

(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDPE q_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(flop_ze_out),
        .PRE(core_ext_start),
        .Q(n_0_q_reg));
endmodule

(* ORIG_REF_NAME = "axi_traffic_gen_v2_0_systeminit_dmg" *) 
module axi_traffic_gen_0_axi_traffic_gen_v2_0_systeminit_dmg
   (qspo,
    O1,
    a,
    s_axi_aclk,
    I1);
  output [31:0]qspo;
  output O1;
  input [3:0]a;
  input s_axi_aclk;
  input I1;

  wire I1;
  wire O1;
  wire [3:0]a;
  wire \n_0_awaddr_m[31]_i_19 ;
  wire \n_0_awaddr_m[31]_i_20 ;
  wire \n_0_awaddr_m[31]_i_21 ;
  wire \n_0_awaddr_m[31]_i_22 ;
  wire \n_0_awaddr_m[31]_i_23 ;
  wire \n_0_awaddr_m[31]_i_24 ;
  wire [31:0]qspo;
  wire s_axi_aclk;
  wire [31:0]NLW_inst_dpo_UNCONNECTED;
  wire [31:0]NLW_inst_qdpo_UNCONNECTED;
  wire [31:0]NLW_inst_spo_UNCONNECTED;

LUT6 #(
    .INIT(64'h8000000000000000)) 
     \awaddr_m[31]_i_19 
       (.I0(qspo[16]),
        .I1(qspo[0]),
        .I2(qspo[12]),
        .I3(qspo[21]),
        .I4(qspo[1]),
        .I5(qspo[19]),
        .O(\n_0_awaddr_m[31]_i_19 ));
LUT2 #(
    .INIT(4'h8)) 
     \awaddr_m[31]_i_20 
       (.I0(qspo[10]),
        .I1(qspo[6]),
        .O(\n_0_awaddr_m[31]_i_20 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \awaddr_m[31]_i_21 
       (.I0(qspo[13]),
        .I1(qspo[11]),
        .I2(qspo[20]),
        .I3(qspo[28]),
        .I4(qspo[27]),
        .I5(qspo[29]),
        .O(\n_0_awaddr_m[31]_i_21 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \awaddr_m[31]_i_22 
       (.I0(qspo[26]),
        .I1(qspo[7]),
        .I2(qspo[18]),
        .I3(qspo[25]),
        .I4(qspo[5]),
        .I5(qspo[30]),
        .O(\n_0_awaddr_m[31]_i_22 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \awaddr_m[31]_i_23 
       (.I0(qspo[23]),
        .I1(qspo[8]),
        .I2(qspo[22]),
        .I3(qspo[31]),
        .I4(qspo[2]),
        .I5(qspo[4]),
        .O(\n_0_awaddr_m[31]_i_23 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \awaddr_m[31]_i_24 
       (.I0(qspo[24]),
        .I1(qspo[14]),
        .I2(qspo[9]),
        .I3(qspo[15]),
        .I4(qspo[3]),
        .I5(qspo[17]),
        .O(\n_0_awaddr_m[31]_i_24 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \awaddr_m[31]_i_7 
       (.I0(\n_0_awaddr_m[31]_i_19 ),
        .I1(\n_0_awaddr_m[31]_i_20 ),
        .I2(\n_0_awaddr_m[31]_i_21 ),
        .I3(\n_0_awaddr_m[31]_i_22 ),
        .I4(\n_0_awaddr_m[31]_i_23 ),
        .I5(\n_0_awaddr_m[31]_i_24 ),
        .O(O1));
(* C_FAMILY = "virtex7" *) 
   (* C_HAS_D = "0" *) 
   (* C_HAS_DPO = "0" *) 
   (* C_HAS_DPRA = "0" *) 
   (* C_HAS_I_CE = "0" *) 
   (* C_HAS_QDPO = "0" *) 
   (* C_HAS_QDPO_CE = "0" *) 
   (* C_HAS_QDPO_CLK = "0" *) 
   (* C_HAS_QDPO_RST = "0" *) 
   (* C_HAS_QDPO_SRST = "0" *) 
   (* C_HAS_WE = "0" *) 
   (* C_MEM_TYPE = "0" *) 
   (* C_PIPELINE_STAGES = "0" *) 
   (* C_QCE_JOINED = "0" *) 
   (* C_QUALIFY_WE = "0" *) 
   (* C_REG_DPRA_INPUT = "0" *) 
   (* DONT_TOUCH *) 
   (* c_addr_width = "4" *) 
   (* c_default_data = "0" *) 
   (* c_depth = "16" *) 
   (* c_elaboration_dir = "./" *) 
   (* c_has_clk = "1" *) 
   (* c_has_qspo = "1" *) 
   (* c_has_qspo_ce = "0" *) 
   (* c_has_qspo_rst = "0" *) 
   (* c_has_qspo_srst = "1" *) 
   (* c_has_spo = "0" *) 
   (* c_mem_init_file = "axi_traffic_gen_0_addr.mif" *) 
   (* c_parser_type = "1" *) 
   (* c_read_mif = "1" *) 
   (* c_reg_a_d_inputs = "0" *) 
   (* c_sync_enable = "1" *) 
   (* c_width = "32" *) 
   axi_traffic_gen_0_dist_mem_gen_v8_0 inst
       (.a(a),
        .clk(s_axi_aclk),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_inst_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b0),
        .qdpo(NLW_inst_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b0),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(qspo),
        .qspo_ce(1'b0),
        .qspo_rst(1'b0),
        .qspo_srst(I1),
        .spo(NLW_inst_spo_UNCONNECTED[31:0]),
        .we(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_traffic_gen_v2_0_systeminit_dmg" *) 
module axi_traffic_gen_0_axi_traffic_gen_v2_0_systeminit_dmg__parameterized0
   (qspo,
    a,
    s_axi_aclk,
    I1);
  output [31:0]qspo;
  input [3:0]a;
  input s_axi_aclk;
  input I1;

  wire I1;
  wire [3:0]a;
  wire [31:0]qspo;
  wire s_axi_aclk;
  wire [31:0]NLW_inst_dpo_UNCONNECTED;
  wire [31:0]NLW_inst_qdpo_UNCONNECTED;
  wire [31:0]NLW_inst_spo_UNCONNECTED;

(* C_FAMILY = "virtex7" *) 
   (* C_HAS_D = "0" *) 
   (* C_HAS_DPO = "0" *) 
   (* C_HAS_DPRA = "0" *) 
   (* C_HAS_I_CE = "0" *) 
   (* C_HAS_QDPO = "0" *) 
   (* C_HAS_QDPO_CE = "0" *) 
   (* C_HAS_QDPO_CLK = "0" *) 
   (* C_HAS_QDPO_RST = "0" *) 
   (* C_HAS_QDPO_SRST = "0" *) 
   (* C_HAS_WE = "0" *) 
   (* C_MEM_TYPE = "0" *) 
   (* C_PIPELINE_STAGES = "0" *) 
   (* C_QCE_JOINED = "0" *) 
   (* C_QUALIFY_WE = "0" *) 
   (* C_REG_DPRA_INPUT = "0" *) 
   (* DONT_TOUCH *) 
   (* c_addr_width = "4" *) 
   (* c_default_data = "0" *) 
   (* c_depth = "16" *) 
   (* c_elaboration_dir = "./" *) 
   (* c_has_clk = "1" *) 
   (* c_has_qspo = "1" *) 
   (* c_has_qspo_ce = "0" *) 
   (* c_has_qspo_rst = "0" *) 
   (* c_has_qspo_srst = "1" *) 
   (* c_has_spo = "0" *) 
   (* c_mem_init_file = "axi_traffic_gen_0_data.mif" *) 
   (* c_parser_type = "1" *) 
   (* c_read_mif = "1" *) 
   (* c_reg_a_d_inputs = "0" *) 
   (* c_sync_enable = "1" *) 
   (* c_width = "32" *) 
   axi_traffic_gen_0_dist_mem_gen_v8_0__parameterized0 inst
       (.a(a),
        .clk(s_axi_aclk),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_inst_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b0),
        .qdpo(NLW_inst_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b0),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(qspo),
        .qspo_ce(1'b0),
        .qspo_rst(1'b0),
        .qspo_srst(I1),
        .spo(NLW_inst_spo_UNCONNECTED[31:0]),
        .we(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_traffic_gen_v2_0_systeminit_mrdwr" *) 
module axi_traffic_gen_0_axi_traffic_gen_v2_0_systeminit_mrdwr
   (O1,
    O2,
    done,
    O3,
    m_axi_lite_ch1_awaddr,
    m_axi_lite_ch5_wdata,
    m_axi_lite_ch1_wvalid,
    status,
    a,
    s_axi_aresetn,
    s_axi_aclk,
    m_axi_lite_ch1_awready,
    m_axi_lite_ch1_bvalid,
    I1,
    D,
    I2,
    m_axi_lite_ch1_wready);
  output O1;
  output O2;
  output done;
  output O3;
  output [31:0]m_axi_lite_ch1_awaddr;
  output [31:0]m_axi_lite_ch5_wdata;
  output m_axi_lite_ch1_wvalid;
  output [9:0]status;
  output [3:0]a;
  input s_axi_aresetn;
  input s_axi_aclk;
  input m_axi_lite_ch1_awready;
  input m_axi_lite_ch1_bvalid;
  input I1;
  input [31:0]D;
  input [31:0]I2;
  input m_axi_lite_ch1_wready;

  wire [7:0]\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 ;
  wire [31:0]D;
  wire I1;
  wire [31:0]I2;
  wire O1;
  wire O2;
  wire O3;
  wire [3:0]a;
  wire b_complete;
  wire b_complete_2ff;
  wire b_complete_3ff;
  wire [31:0]cur_trn_addr;
  wire cur_trn_done;
  wire done;
  wire done_i;
  wire first_tran_done;
  wire launch_new_wr;
  wire [31:0]m_axi_lite_ch1_awaddr;
  wire m_axi_lite_ch1_awready;
  wire m_axi_lite_ch1_bvalid;
  wire m_axi_lite_ch1_wready;
  wire m_axi_lite_ch1_wvalid;
  wire [31:0]m_axi_lite_ch5_wdata;
  wire max_retry_cntr0;
  wire max_retry_cntr24_in;
  wire [31:0]max_retry_cntr_reg;
  wire [31:0]max_test_time_cntr_reg;
  wire \n_0_ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[2]_i_1 ;
  wire \n_0_ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[3]_i_1 ;
  wire \n_0_ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[4]_i_1 ;
  wire \n_0_ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[5]_i_1 ;
  wire \n_0_ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[7]_i_2 ;
  wire \n_0_awaddr_m[31]_i_10 ;
  wire \n_0_awaddr_m[31]_i_11 ;
  wire \n_0_awaddr_m[31]_i_12 ;
  wire \n_0_awaddr_m[31]_i_13 ;
  wire \n_0_awaddr_m[31]_i_14 ;
  wire \n_0_awaddr_m[31]_i_15 ;
  wire \n_0_awaddr_m[31]_i_16 ;
  wire \n_0_awaddr_m[31]_i_17 ;
  wire \n_0_awaddr_m[31]_i_18 ;
  wire \n_0_awaddr_m[31]_i_3 ;
  wire \n_0_awaddr_m[31]_i_4 ;
  wire \n_0_awaddr_m[31]_i_5 ;
  wire \n_0_awaddr_m[31]_i_6 ;
  wire \n_0_awaddr_m[31]_i_8 ;
  wire \n_0_awaddr_m[31]_i_9 ;
  wire n_0_awvalid_m_i_1;
  wire n_0_bready_m_i_1;
  wire \n_0_cur_trn_addr[31]_i_1 ;
  wire \n_0_cur_trn_type[0]_i_1 ;
  wire \n_0_cur_trn_type[1]_i_1 ;
  wire \n_0_cur_trn_type_reg[0] ;
  wire \n_0_cur_trn_type_reg[1] ;
  wire n_0_done_i_i_1;
  wire n_0_first_tran_done_i_1;
  wire \n_0_max_retry_cntr[0]_i_1 ;
  wire \n_0_max_retry_cntr[0]_i_10 ;
  wire \n_0_max_retry_cntr[0]_i_12 ;
  wire \n_0_max_retry_cntr[0]_i_13 ;
  wire \n_0_max_retry_cntr[0]_i_14 ;
  wire \n_0_max_retry_cntr[0]_i_15 ;
  wire \n_0_max_retry_cntr[0]_i_16 ;
  wire \n_0_max_retry_cntr[0]_i_17 ;
  wire \n_0_max_retry_cntr[0]_i_18 ;
  wire \n_0_max_retry_cntr[0]_i_19 ;
  wire \n_0_max_retry_cntr[0]_i_5 ;
  wire \n_0_max_retry_cntr[0]_i_6 ;
  wire \n_0_max_retry_cntr[0]_i_8 ;
  wire \n_0_max_retry_cntr[0]_i_9 ;
  wire \n_0_max_retry_cntr_reg[0]_i_11 ;
  wire \n_0_max_retry_cntr_reg[0]_i_3 ;
  wire \n_0_max_retry_cntr_reg[0]_i_7 ;
  wire \n_0_max_retry_cntr_reg[10]_i_1 ;
  wire \n_0_max_retry_cntr_reg[10]_i_2 ;
  wire \n_0_max_retry_cntr_reg[11]_i_1 ;
  wire \n_0_max_retry_cntr_reg[11]_i_2 ;
  wire \n_0_max_retry_cntr_reg[12]_i_1 ;
  wire \n_0_max_retry_cntr_reg[12]_i_2 ;
  wire \n_0_max_retry_cntr_reg[13]_i_1 ;
  wire \n_0_max_retry_cntr_reg[13]_i_2 ;
  wire \n_0_max_retry_cntr_reg[14]_i_1 ;
  wire \n_0_max_retry_cntr_reg[14]_i_2 ;
  wire \n_0_max_retry_cntr_reg[15]_i_1 ;
  wire \n_0_max_retry_cntr_reg[15]_i_2 ;
  wire \n_0_max_retry_cntr_reg[16]_i_1 ;
  wire \n_0_max_retry_cntr_reg[16]_i_2 ;
  wire \n_0_max_retry_cntr_reg[17]_i_1 ;
  wire \n_0_max_retry_cntr_reg[17]_i_2 ;
  wire \n_0_max_retry_cntr_reg[18]_i_1 ;
  wire \n_0_max_retry_cntr_reg[18]_i_2 ;
  wire \n_0_max_retry_cntr_reg[19]_i_1 ;
  wire \n_0_max_retry_cntr_reg[19]_i_2 ;
  wire \n_0_max_retry_cntr_reg[1]_i_1 ;
  wire \n_0_max_retry_cntr_reg[1]_i_2 ;
  wire \n_0_max_retry_cntr_reg[20]_i_1 ;
  wire \n_0_max_retry_cntr_reg[20]_i_2 ;
  wire \n_0_max_retry_cntr_reg[21]_i_1 ;
  wire \n_0_max_retry_cntr_reg[21]_i_2 ;
  wire \n_0_max_retry_cntr_reg[22]_i_1 ;
  wire \n_0_max_retry_cntr_reg[22]_i_2 ;
  wire \n_0_max_retry_cntr_reg[23]_i_1 ;
  wire \n_0_max_retry_cntr_reg[23]_i_2 ;
  wire \n_0_max_retry_cntr_reg[24]_i_1 ;
  wire \n_0_max_retry_cntr_reg[24]_i_2 ;
  wire \n_0_max_retry_cntr_reg[25]_i_1 ;
  wire \n_0_max_retry_cntr_reg[25]_i_2 ;
  wire \n_0_max_retry_cntr_reg[26]_i_1 ;
  wire \n_0_max_retry_cntr_reg[26]_i_2 ;
  wire \n_0_max_retry_cntr_reg[27]_i_1 ;
  wire \n_0_max_retry_cntr_reg[27]_i_2 ;
  wire \n_0_max_retry_cntr_reg[28]_i_1 ;
  wire \n_0_max_retry_cntr_reg[28]_i_2 ;
  wire \n_0_max_retry_cntr_reg[29]_i_1 ;
  wire \n_0_max_retry_cntr_reg[29]_i_2 ;
  wire \n_0_max_retry_cntr_reg[2]_i_1 ;
  wire \n_0_max_retry_cntr_reg[2]_i_2 ;
  wire \n_0_max_retry_cntr_reg[30]_i_1 ;
  wire \n_0_max_retry_cntr_reg[30]_i_2 ;
  wire \n_0_max_retry_cntr_reg[31]_i_1 ;
  wire \n_0_max_retry_cntr_reg[3]_i_1 ;
  wire \n_0_max_retry_cntr_reg[3]_i_2 ;
  wire \n_0_max_retry_cntr_reg[4]_i_1 ;
  wire \n_0_max_retry_cntr_reg[4]_i_2 ;
  wire \n_0_max_retry_cntr_reg[5]_i_1 ;
  wire \n_0_max_retry_cntr_reg[5]_i_2 ;
  wire \n_0_max_retry_cntr_reg[6]_i_1 ;
  wire \n_0_max_retry_cntr_reg[6]_i_2 ;
  wire \n_0_max_retry_cntr_reg[7]_i_1 ;
  wire \n_0_max_retry_cntr_reg[7]_i_2 ;
  wire \n_0_max_retry_cntr_reg[8]_i_1 ;
  wire \n_0_max_retry_cntr_reg[8]_i_2 ;
  wire \n_0_max_retry_cntr_reg[9]_i_1 ;
  wire \n_0_max_retry_cntr_reg[9]_i_2 ;
  wire \n_0_max_test_time_cntr[0]_i_1 ;
  wire \n_0_max_test_time_cntr[0]_i_3 ;
  wire \n_0_max_test_time_cntr_reg[0]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[10]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[10]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[11]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[11]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[12]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[12]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[13]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[13]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[14]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[14]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[15]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[15]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[16]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[16]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[17]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[17]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[18]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[18]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[19]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[19]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[1]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[1]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[20]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[20]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[21]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[21]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[22]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[22]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[23]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[23]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[24]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[24]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[25]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[25]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[26]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[26]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[27]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[27]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[28]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[28]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[29]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[29]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[2]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[2]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[30]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[30]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[31]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[3]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[3]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[4]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[4]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[5]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[5]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[6]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[6]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[7]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[7]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[8]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[8]_i_2 ;
  wire \n_0_max_test_time_cntr_reg[9]_i_1 ;
  wire \n_0_max_test_time_cntr_reg[9]_i_2 ;
  wire \n_0_new_trn_addr[31]_i_1 ;
  wire \n_0_new_trn_addr_reg[0] ;
  wire \n_0_new_trn_addr_reg[10] ;
  wire \n_0_new_trn_addr_reg[11] ;
  wire \n_0_new_trn_addr_reg[12] ;
  wire \n_0_new_trn_addr_reg[13] ;
  wire \n_0_new_trn_addr_reg[14] ;
  wire \n_0_new_trn_addr_reg[15] ;
  wire \n_0_new_trn_addr_reg[16] ;
  wire \n_0_new_trn_addr_reg[17] ;
  wire \n_0_new_trn_addr_reg[18] ;
  wire \n_0_new_trn_addr_reg[19] ;
  wire \n_0_new_trn_addr_reg[1] ;
  wire \n_0_new_trn_addr_reg[20] ;
  wire \n_0_new_trn_addr_reg[21] ;
  wire \n_0_new_trn_addr_reg[22] ;
  wire \n_0_new_trn_addr_reg[23] ;
  wire \n_0_new_trn_addr_reg[24] ;
  wire \n_0_new_trn_addr_reg[25] ;
  wire \n_0_new_trn_addr_reg[26] ;
  wire \n_0_new_trn_addr_reg[27] ;
  wire \n_0_new_trn_addr_reg[28] ;
  wire \n_0_new_trn_addr_reg[29] ;
  wire \n_0_new_trn_addr_reg[2] ;
  wire \n_0_new_trn_addr_reg[30] ;
  wire \n_0_new_trn_addr_reg[31] ;
  wire \n_0_new_trn_addr_reg[3] ;
  wire \n_0_new_trn_addr_reg[4] ;
  wire \n_0_new_trn_addr_reg[5] ;
  wire \n_0_new_trn_addr_reg[6] ;
  wire \n_0_new_trn_addr_reg[7] ;
  wire \n_0_new_trn_addr_reg[8] ;
  wire \n_0_new_trn_addr_reg[9] ;
  wire \n_0_new_trn_type[0]_i_1 ;
  wire \n_0_new_trn_type[1]_i_1 ;
  wire n_0_rom_eof_i_1;
  wire n_0_start_retry_check_i_1;
  wire \n_0_status[1]_i_1 ;
  wire \n_0_status[1]_i_2 ;
  wire \n_0_status[1]_i_3 ;
  wire \n_0_status[9]_i_1 ;
  wire n_0_wvalid_m_i_1;
  wire \n_1_max_retry_cntr_reg[0]_i_11 ;
  wire \n_1_max_retry_cntr_reg[0]_i_7 ;
  wire \n_2_max_retry_cntr_reg[0]_i_11 ;
  wire \n_2_max_retry_cntr_reg[0]_i_4 ;
  wire \n_2_max_retry_cntr_reg[0]_i_7 ;
  wire \n_3_max_retry_cntr_reg[0]_i_11 ;
  wire \n_3_max_retry_cntr_reg[0]_i_4 ;
  wire \n_3_max_retry_cntr_reg[0]_i_7 ;
  wire [31:0]new_trn_addr;
  wire [1:0]new_trn_type;
  wire [7:0]p_0_in;
  wire rom_eof;
  wire [4:0]rom_ptr_ff;
  wire rst_l_2ff;
  wire rst_l_3ff;
  wire rst_l_ff;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire start_retry_check;
  wire [9:0]status;
  wire [3:0]\NLW_max_retry_cntr_reg[0]_i_11_O_UNCONNECTED ;
  wire [3:3]\NLW_max_retry_cntr_reg[0]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_max_retry_cntr_reg[0]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_max_retry_cntr_reg[0]_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_max_retry_cntr_reg[29]_i_2_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_max_retry_cntr_reg[29]_i_2_CARRY4_DI_UNCONNECTED ;
  wire [3:2]\NLW_max_test_time_cntr_reg[29]_i_2_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_max_test_time_cntr_reg[29]_i_2_CARRY4_DI_UNCONNECTED ;

LUT1 #(
    .INIT(2'h1)) 
     \ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[0]_i_1 
       (.I0(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [0]),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[1]_i_1 
       (.I0(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [0]),
        .I1(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [1]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[2]_i_1 
       (.I0(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [2]),
        .I1(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [1]),
        .I2(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [0]),
        .O(\n_0_ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[3]_i_1 
       (.I0(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [3]),
        .I1(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [2]),
        .I2(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [0]),
        .I3(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [1]),
        .O(\n_0_ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[4]_i_1 
       (.I0(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [4]),
        .I1(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [3]),
        .I2(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [1]),
        .I3(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [0]),
        .I4(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [2]),
        .O(\n_0_ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[4]_i_1 ));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[5]_i_1 
       (.I0(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [5]),
        .I1(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [4]),
        .I2(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [2]),
        .I3(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [0]),
        .I4(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [1]),
        .I5(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [3]),
        .O(\n_0_ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'h9A)) 
     \ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[6]_i_1 
       (.I0(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [6]),
        .I1(\n_0_ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[7]_i_2 ),
        .I2(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [5]),
        .O(p_0_in[6]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h9AAA)) 
     \ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[7]_i_1 
       (.I0(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [7]),
        .I1(\n_0_ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[7]_i_2 ),
        .I2(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [5]),
        .I3(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [6]),
        .O(p_0_in[7]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h7FFFFFFF)) 
     \ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[7]_i_2 
       (.I0(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [3]),
        .I1(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [1]),
        .I2(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [0]),
        .I3(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [2]),
        .I4(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [4]),
        .O(\n_0_ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[7]_i_2 ));
FDRE \ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg[0] 
       (.C(s_axi_aclk),
        .CE(cur_trn_done),
        .D(p_0_in[0]),
        .Q(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [0]),
        .R(O2));
FDRE \ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg[1] 
       (.C(s_axi_aclk),
        .CE(cur_trn_done),
        .D(p_0_in[1]),
        .Q(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [1]),
        .R(O2));
FDRE \ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg[2] 
       (.C(s_axi_aclk),
        .CE(cur_trn_done),
        .D(\n_0_ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[2]_i_1 ),
        .Q(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [2]),
        .R(O2));
FDRE \ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg[3] 
       (.C(s_axi_aclk),
        .CE(cur_trn_done),
        .D(\n_0_ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[3]_i_1 ),
        .Q(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [3]),
        .R(O2));
FDRE \ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg[4] 
       (.C(s_axi_aclk),
        .CE(cur_trn_done),
        .D(\n_0_ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[4]_i_1 ),
        .Q(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [4]),
        .R(O2));
FDRE \ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg[5] 
       (.C(s_axi_aclk),
        .CE(cur_trn_done),
        .D(\n_0_ATG_SYSINIT_NXT_PTR.nxt_rom_ptr[5]_i_1 ),
        .Q(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [5]),
        .R(O2));
FDRE \ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg[6] 
       (.C(s_axi_aclk),
        .CE(cur_trn_done),
        .D(p_0_in[6]),
        .Q(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [6]),
        .R(O2));
FDRE \ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg[7] 
       (.C(s_axi_aclk),
        .CE(cur_trn_done),
        .D(p_0_in[7]),
        .Q(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [7]),
        .R(O2));
LUT1 #(
    .INIT(2'h1)) 
     \awaddr_m[31]_i_1 
       (.I0(s_axi_aresetn),
        .O(O2));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \awaddr_m[31]_i_10 
       (.I0(max_retry_cntr_reg[29]),
        .I1(max_retry_cntr_reg[25]),
        .I2(max_retry_cntr_reg[8]),
        .I3(max_retry_cntr_reg[6]),
        .I4(max_retry_cntr_reg[9]),
        .I5(max_retry_cntr_reg[13]),
        .O(\n_0_awaddr_m[31]_i_10 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \awaddr_m[31]_i_11 
       (.I0(max_retry_cntr_reg[16]),
        .I1(max_retry_cntr_reg[22]),
        .I2(max_retry_cntr_reg[10]),
        .I3(max_retry_cntr_reg[14]),
        .I4(max_retry_cntr_reg[26]),
        .I5(max_retry_cntr_reg[31]),
        .O(\n_0_awaddr_m[31]_i_11 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \awaddr_m[31]_i_12 
       (.I0(max_retry_cntr_reg[3]),
        .I1(max_retry_cntr_reg[2]),
        .I2(max_retry_cntr_reg[27]),
        .I3(max_retry_cntr_reg[30]),
        .I4(max_retry_cntr_reg[23]),
        .I5(max_retry_cntr_reg[17]),
        .O(\n_0_awaddr_m[31]_i_12 ));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \awaddr_m[31]_i_13 
       (.I0(max_test_time_cntr_reg[28]),
        .I1(max_test_time_cntr_reg[24]),
        .I2(max_test_time_cntr_reg[8]),
        .I3(max_test_time_cntr_reg[0]),
        .I4(max_test_time_cntr_reg[2]),
        .I5(max_test_time_cntr_reg[10]),
        .O(\n_0_awaddr_m[31]_i_13 ));
LUT2 #(
    .INIT(4'h1)) 
     \awaddr_m[31]_i_14 
       (.I0(max_test_time_cntr_reg[20]),
        .I1(max_test_time_cntr_reg[17]),
        .O(\n_0_awaddr_m[31]_i_14 ));
LUT6 #(
    .INIT(64'h0001000000000000)) 
     \awaddr_m[31]_i_15 
       (.I0(max_test_time_cntr_reg[14]),
        .I1(max_test_time_cntr_reg[7]),
        .I2(max_test_time_cntr_reg[21]),
        .I3(max_test_time_cntr_reg[19]),
        .I4(max_test_time_cntr_reg[5]),
        .I5(max_test_time_cntr_reg[18]),
        .O(\n_0_awaddr_m[31]_i_15 ));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \awaddr_m[31]_i_16 
       (.I0(max_test_time_cntr_reg[29]),
        .I1(max_test_time_cntr_reg[25]),
        .I2(max_test_time_cntr_reg[9]),
        .I3(max_test_time_cntr_reg[1]),
        .I4(max_test_time_cntr_reg[4]),
        .I5(max_test_time_cntr_reg[12]),
        .O(\n_0_awaddr_m[31]_i_16 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \awaddr_m[31]_i_17 
       (.I0(max_test_time_cntr_reg[15]),
        .I1(max_test_time_cntr_reg[22]),
        .I2(max_test_time_cntr_reg[6]),
        .I3(max_test_time_cntr_reg[13]),
        .I4(max_test_time_cntr_reg[26]),
        .I5(max_test_time_cntr_reg[31]),
        .O(\n_0_awaddr_m[31]_i_17 ));
LUT6 #(
    .INIT(64'h0000000000000008)) 
     \awaddr_m[31]_i_18 
       (.I0(max_test_time_cntr_reg[11]),
        .I1(max_test_time_cntr_reg[3]),
        .I2(max_test_time_cntr_reg[27]),
        .I3(max_test_time_cntr_reg[30]),
        .I4(max_test_time_cntr_reg[23]),
        .I5(max_test_time_cntr_reg[16]),
        .O(\n_0_awaddr_m[31]_i_18 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \awaddr_m[31]_i_2 
       (.I0(\n_0_awaddr_m[31]_i_3 ),
        .I1(\n_0_awaddr_m[31]_i_4 ),
        .I2(rom_eof),
        .I3(\n_0_awaddr_m[31]_i_5 ),
        .I4(\n_0_awaddr_m[31]_i_6 ),
        .I5(I1),
        .O(launch_new_wr));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \awaddr_m[31]_i_3 
       (.I0(\n_0_status[1]_i_3 ),
        .I1(\n_0_awaddr_m[31]_i_8 ),
        .I2(\n_0_awaddr_m[31]_i_9 ),
        .I3(\n_0_awaddr_m[31]_i_10 ),
        .I4(\n_0_awaddr_m[31]_i_11 ),
        .I5(\n_0_awaddr_m[31]_i_12 ),
        .O(\n_0_awaddr_m[31]_i_3 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \awaddr_m[31]_i_4 
       (.I0(\n_0_awaddr_m[31]_i_13 ),
        .I1(\n_0_awaddr_m[31]_i_14 ),
        .I2(\n_0_awaddr_m[31]_i_15 ),
        .I3(\n_0_awaddr_m[31]_i_16 ),
        .I4(\n_0_awaddr_m[31]_i_17 ),
        .I5(\n_0_awaddr_m[31]_i_18 ),
        .O(\n_0_awaddr_m[31]_i_4 ));
LUT3 #(
    .INIT(8'h0D)) 
     \awaddr_m[31]_i_5 
       (.I0(rst_l_2ff),
        .I1(rst_l_3ff),
        .I2(b_complete_3ff),
        .O(\n_0_awaddr_m[31]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \awaddr_m[31]_i_6 
       (.I0(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [4]),
        .I1(b_complete_2ff),
        .I2(rom_ptr_ff[4]),
        .O(\n_0_awaddr_m[31]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \awaddr_m[31]_i_8 
       (.I0(max_retry_cntr_reg[20]),
        .I1(max_retry_cntr_reg[18]),
        .O(\n_0_awaddr_m[31]_i_8 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \awaddr_m[31]_i_9 
       (.I0(max_retry_cntr_reg[15]),
        .I1(max_retry_cntr_reg[11]),
        .I2(max_retry_cntr_reg[21]),
        .I3(max_retry_cntr_reg[19]),
        .I4(max_retry_cntr_reg[0]),
        .I5(max_retry_cntr_reg[4]),
        .O(\n_0_awaddr_m[31]_i_9 ));
FDRE \awaddr_m_reg[0] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[0]),
        .Q(m_axi_lite_ch1_awaddr[0]),
        .R(O2));
FDRE \awaddr_m_reg[10] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[10]),
        .Q(m_axi_lite_ch1_awaddr[10]),
        .R(O2));
FDRE \awaddr_m_reg[11] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[11]),
        .Q(m_axi_lite_ch1_awaddr[11]),
        .R(O2));
FDRE \awaddr_m_reg[12] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[12]),
        .Q(m_axi_lite_ch1_awaddr[12]),
        .R(O2));
FDRE \awaddr_m_reg[13] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[13]),
        .Q(m_axi_lite_ch1_awaddr[13]),
        .R(O2));
FDRE \awaddr_m_reg[14] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[14]),
        .Q(m_axi_lite_ch1_awaddr[14]),
        .R(O2));
FDRE \awaddr_m_reg[15] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[15]),
        .Q(m_axi_lite_ch1_awaddr[15]),
        .R(O2));
FDRE \awaddr_m_reg[16] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[16]),
        .Q(m_axi_lite_ch1_awaddr[16]),
        .R(O2));
FDRE \awaddr_m_reg[17] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[17]),
        .Q(m_axi_lite_ch1_awaddr[17]),
        .R(O2));
FDRE \awaddr_m_reg[18] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[18]),
        .Q(m_axi_lite_ch1_awaddr[18]),
        .R(O2));
FDRE \awaddr_m_reg[19] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[19]),
        .Q(m_axi_lite_ch1_awaddr[19]),
        .R(O2));
FDRE \awaddr_m_reg[1] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[1]),
        .Q(m_axi_lite_ch1_awaddr[1]),
        .R(O2));
FDRE \awaddr_m_reg[20] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[20]),
        .Q(m_axi_lite_ch1_awaddr[20]),
        .R(O2));
FDRE \awaddr_m_reg[21] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[21]),
        .Q(m_axi_lite_ch1_awaddr[21]),
        .R(O2));
FDRE \awaddr_m_reg[22] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[22]),
        .Q(m_axi_lite_ch1_awaddr[22]),
        .R(O2));
FDRE \awaddr_m_reg[23] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[23]),
        .Q(m_axi_lite_ch1_awaddr[23]),
        .R(O2));
FDRE \awaddr_m_reg[24] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[24]),
        .Q(m_axi_lite_ch1_awaddr[24]),
        .R(O2));
FDRE \awaddr_m_reg[25] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[25]),
        .Q(m_axi_lite_ch1_awaddr[25]),
        .R(O2));
FDRE \awaddr_m_reg[26] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[26]),
        .Q(m_axi_lite_ch1_awaddr[26]),
        .R(O2));
FDRE \awaddr_m_reg[27] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[27]),
        .Q(m_axi_lite_ch1_awaddr[27]),
        .R(O2));
FDRE \awaddr_m_reg[28] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[28]),
        .Q(m_axi_lite_ch1_awaddr[28]),
        .R(O2));
FDRE \awaddr_m_reg[29] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[29]),
        .Q(m_axi_lite_ch1_awaddr[29]),
        .R(O2));
FDRE \awaddr_m_reg[2] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[2]),
        .Q(m_axi_lite_ch1_awaddr[2]),
        .R(O2));
FDRE \awaddr_m_reg[30] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[30]),
        .Q(m_axi_lite_ch1_awaddr[30]),
        .R(O2));
FDRE \awaddr_m_reg[31] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[31]),
        .Q(m_axi_lite_ch1_awaddr[31]),
        .R(O2));
FDRE \awaddr_m_reg[3] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[3]),
        .Q(m_axi_lite_ch1_awaddr[3]),
        .R(O2));
FDRE \awaddr_m_reg[4] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[4]),
        .Q(m_axi_lite_ch1_awaddr[4]),
        .R(O2));
FDRE \awaddr_m_reg[5] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[5]),
        .Q(m_axi_lite_ch1_awaddr[5]),
        .R(O2));
FDRE \awaddr_m_reg[6] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[6]),
        .Q(m_axi_lite_ch1_awaddr[6]),
        .R(O2));
FDRE \awaddr_m_reg[7] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[7]),
        .Q(m_axi_lite_ch1_awaddr[7]),
        .R(O2));
FDRE \awaddr_m_reg[8] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[8]),
        .Q(m_axi_lite_ch1_awaddr[8]),
        .R(O2));
FDRE \awaddr_m_reg[9] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(D[9]),
        .Q(m_axi_lite_ch1_awaddr[9]),
        .R(O2));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h4C40)) 
     awvalid_m_i_1
       (.I0(m_axi_lite_ch1_awready),
        .I1(s_axi_aresetn),
        .I2(O1),
        .I3(launch_new_wr),
        .O(n_0_awvalid_m_i_1));
FDRE awvalid_m_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_awvalid_m_i_1),
        .Q(O1),
        .R(1'b0));
FDRE b_complete_2ff_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cur_trn_done),
        .Q(b_complete_2ff),
        .R(O2));
FDRE b_complete_3ff_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(b_complete_2ff),
        .Q(b_complete_3ff),
        .R(O2));
LUT2 #(
    .INIT(4'h8)) 
     b_complete_ff_i_1
       (.I0(O3),
        .I1(m_axi_lite_ch1_bvalid),
        .O(b_complete));
FDRE b_complete_ff_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(b_complete),
        .Q(cur_trn_done),
        .R(O2));
LUT4 #(
    .INIT(16'h08C8)) 
     bready_m_i_1
       (.I0(launch_new_wr),
        .I1(s_axi_aresetn),
        .I2(O3),
        .I3(m_axi_lite_ch1_bvalid),
        .O(n_0_bready_m_i_1));
FDRE bready_m_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_bready_m_i_1),
        .Q(O3),
        .R(1'b0));
LUT3 #(
    .INIT(8'h40)) 
     \cur_trn_addr[31]_i_1 
       (.I0(first_tran_done),
        .I1(O1),
        .I2(m_axi_lite_ch1_awready),
        .O(\n_0_cur_trn_addr[31]_i_1 ));
FDRE \cur_trn_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[0]),
        .Q(cur_trn_addr[0]),
        .R(O2));
FDRE \cur_trn_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[10]),
        .Q(cur_trn_addr[10]),
        .R(O2));
FDRE \cur_trn_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[11]),
        .Q(cur_trn_addr[11]),
        .R(O2));
FDRE \cur_trn_addr_reg[12] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[12]),
        .Q(cur_trn_addr[12]),
        .R(O2));
FDRE \cur_trn_addr_reg[13] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[13]),
        .Q(cur_trn_addr[13]),
        .R(O2));
FDRE \cur_trn_addr_reg[14] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[14]),
        .Q(cur_trn_addr[14]),
        .R(O2));
FDRE \cur_trn_addr_reg[15] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[15]),
        .Q(cur_trn_addr[15]),
        .R(O2));
FDRE \cur_trn_addr_reg[16] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[16]),
        .Q(cur_trn_addr[16]),
        .R(O2));
FDRE \cur_trn_addr_reg[17] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[17]),
        .Q(cur_trn_addr[17]),
        .R(O2));
FDRE \cur_trn_addr_reg[18] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[18]),
        .Q(cur_trn_addr[18]),
        .R(O2));
FDRE \cur_trn_addr_reg[19] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[19]),
        .Q(cur_trn_addr[19]),
        .R(O2));
FDRE \cur_trn_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[1]),
        .Q(cur_trn_addr[1]),
        .R(O2));
FDRE \cur_trn_addr_reg[20] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[20]),
        .Q(cur_trn_addr[20]),
        .R(O2));
FDRE \cur_trn_addr_reg[21] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[21]),
        .Q(cur_trn_addr[21]),
        .R(O2));
FDRE \cur_trn_addr_reg[22] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[22]),
        .Q(cur_trn_addr[22]),
        .R(O2));
FDRE \cur_trn_addr_reg[23] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[23]),
        .Q(cur_trn_addr[23]),
        .R(O2));
FDRE \cur_trn_addr_reg[24] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[24]),
        .Q(cur_trn_addr[24]),
        .R(O2));
FDRE \cur_trn_addr_reg[25] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[25]),
        .Q(cur_trn_addr[25]),
        .R(O2));
FDRE \cur_trn_addr_reg[26] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[26]),
        .Q(cur_trn_addr[26]),
        .R(O2));
FDRE \cur_trn_addr_reg[27] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[27]),
        .Q(cur_trn_addr[27]),
        .R(O2));
FDRE \cur_trn_addr_reg[28] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[28]),
        .Q(cur_trn_addr[28]),
        .R(O2));
FDRE \cur_trn_addr_reg[29] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[29]),
        .Q(cur_trn_addr[29]),
        .R(O2));
FDRE \cur_trn_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[2]),
        .Q(cur_trn_addr[2]),
        .R(O2));
FDRE \cur_trn_addr_reg[30] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[30]),
        .Q(cur_trn_addr[30]),
        .R(O2));
FDRE \cur_trn_addr_reg[31] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[31]),
        .Q(cur_trn_addr[31]),
        .R(O2));
FDRE \cur_trn_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[3]),
        .Q(cur_trn_addr[3]),
        .R(O2));
FDRE \cur_trn_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[4]),
        .Q(cur_trn_addr[4]),
        .R(O2));
FDRE \cur_trn_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[5]),
        .Q(cur_trn_addr[5]),
        .R(O2));
FDRE \cur_trn_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[6]),
        .Q(cur_trn_addr[6]),
        .R(O2));
FDRE \cur_trn_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[7]),
        .Q(cur_trn_addr[7]),
        .R(O2));
FDRE \cur_trn_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[8]),
        .Q(cur_trn_addr[8]),
        .R(O2));
FDRE \cur_trn_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(\n_0_cur_trn_addr[31]_i_1 ),
        .D(new_trn_addr[9]),
        .Q(cur_trn_addr[9]),
        .R(O2));
LUT5 #(
    .INIT(32'h8888C888)) 
     \cur_trn_type[0]_i_1 
       (.I0(\n_0_cur_trn_type_reg[0] ),
        .I1(s_axi_aresetn),
        .I2(m_axi_lite_ch1_awready),
        .I3(O1),
        .I4(first_tran_done),
        .O(\n_0_cur_trn_type[0]_i_1 ));
LUT5 #(
    .INIT(32'hF7000000)) 
     \cur_trn_type[1]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(first_tran_done),
        .I3(s_axi_aresetn),
        .I4(\n_0_cur_trn_type_reg[1] ),
        .O(\n_0_cur_trn_type[1]_i_1 ));
FDRE \cur_trn_type_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_cur_trn_type[0]_i_1 ),
        .Q(\n_0_cur_trn_type_reg[0] ),
        .R(1'b0));
FDRE \cur_trn_type_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_cur_trn_type[1]_i_1 ),
        .Q(\n_0_cur_trn_type_reg[1] ),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFFFFFF0000FF01)) 
     done_i_i_1
       (.I0(O1),
        .I1(m_axi_lite_ch1_wvalid),
        .I2(O3),
        .I3(\n_0_awaddr_m[31]_i_4 ),
        .I4(\n_0_max_test_time_cntr[0]_i_1 ),
        .I5(done_i),
        .O(n_0_done_i_i_1));
FDRE done_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_done_i_i_1),
        .Q(done_i),
        .R(O2));
FDRE done_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(done_i),
        .Q(done),
        .R(O2));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'h78)) 
     first_tran_done_i_1
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(first_tran_done),
        .O(n_0_first_tran_done_i_1));
FDRE first_tran_done_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_first_tran_done_i_1),
        .Q(first_tran_done),
        .R(O2));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     inst_i_1
       (.I0(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [3]),
        .I1(b_complete_2ff),
        .I2(rom_ptr_ff[3]),
        .O(a[3]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     inst_i_2
       (.I0(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [2]),
        .I1(b_complete_2ff),
        .I2(rom_ptr_ff[2]),
        .O(a[2]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     inst_i_3
       (.I0(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [1]),
        .I1(b_complete_2ff),
        .I2(rom_ptr_ff[1]),
        .O(a[1]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     inst_i_4
       (.I0(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [0]),
        .I1(b_complete_2ff),
        .I2(rom_ptr_ff[0]),
        .O(a[0]));
LUT6 #(
    .INIT(64'h80800080FFFFFFFF)) 
     \max_retry_cntr[0]_i_1 
       (.I0(m_axi_lite_ch1_bvalid),
        .I1(O3),
        .I2(start_retry_check),
        .I3(max_retry_cntr24_in),
        .I4(\n_0_max_retry_cntr[0]_i_5 ),
        .I5(s_axi_aresetn),
        .O(\n_0_max_retry_cntr[0]_i_1 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \max_retry_cntr[0]_i_10 
       (.I0(cur_trn_addr[24]),
        .I1(\n_0_new_trn_addr_reg[24] ),
        .I2(cur_trn_addr[25]),
        .I3(\n_0_new_trn_addr_reg[25] ),
        .I4(\n_0_new_trn_addr_reg[26] ),
        .I5(cur_trn_addr[26]),
        .O(\n_0_max_retry_cntr[0]_i_10 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \max_retry_cntr[0]_i_12 
       (.I0(cur_trn_addr[21]),
        .I1(\n_0_new_trn_addr_reg[21] ),
        .I2(cur_trn_addr[22]),
        .I3(\n_0_new_trn_addr_reg[22] ),
        .I4(\n_0_new_trn_addr_reg[23] ),
        .I5(cur_trn_addr[23]),
        .O(\n_0_max_retry_cntr[0]_i_12 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \max_retry_cntr[0]_i_13 
       (.I0(cur_trn_addr[18]),
        .I1(\n_0_new_trn_addr_reg[18] ),
        .I2(cur_trn_addr[19]),
        .I3(\n_0_new_trn_addr_reg[19] ),
        .I4(\n_0_new_trn_addr_reg[20] ),
        .I5(cur_trn_addr[20]),
        .O(\n_0_max_retry_cntr[0]_i_13 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \max_retry_cntr[0]_i_14 
       (.I0(cur_trn_addr[17]),
        .I1(\n_0_new_trn_addr_reg[17] ),
        .I2(cur_trn_addr[15]),
        .I3(\n_0_new_trn_addr_reg[15] ),
        .I4(\n_0_new_trn_addr_reg[16] ),
        .I5(cur_trn_addr[16]),
        .O(\n_0_max_retry_cntr[0]_i_14 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \max_retry_cntr[0]_i_15 
       (.I0(cur_trn_addr[12]),
        .I1(\n_0_new_trn_addr_reg[12] ),
        .I2(cur_trn_addr[13]),
        .I3(\n_0_new_trn_addr_reg[13] ),
        .I4(\n_0_new_trn_addr_reg[14] ),
        .I5(cur_trn_addr[14]),
        .O(\n_0_max_retry_cntr[0]_i_15 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \max_retry_cntr[0]_i_16 
       (.I0(cur_trn_addr[11]),
        .I1(\n_0_new_trn_addr_reg[11] ),
        .I2(cur_trn_addr[9]),
        .I3(\n_0_new_trn_addr_reg[9] ),
        .I4(\n_0_new_trn_addr_reg[10] ),
        .I5(cur_trn_addr[10]),
        .O(\n_0_max_retry_cntr[0]_i_16 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \max_retry_cntr[0]_i_17 
       (.I0(cur_trn_addr[6]),
        .I1(\n_0_new_trn_addr_reg[6] ),
        .I2(cur_trn_addr[7]),
        .I3(\n_0_new_trn_addr_reg[7] ),
        .I4(\n_0_new_trn_addr_reg[8] ),
        .I5(cur_trn_addr[8]),
        .O(\n_0_max_retry_cntr[0]_i_17 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \max_retry_cntr[0]_i_18 
       (.I0(cur_trn_addr[5]),
        .I1(\n_0_new_trn_addr_reg[5] ),
        .I2(cur_trn_addr[3]),
        .I3(\n_0_new_trn_addr_reg[3] ),
        .I4(\n_0_new_trn_addr_reg[4] ),
        .I5(cur_trn_addr[4]),
        .O(\n_0_max_retry_cntr[0]_i_18 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \max_retry_cntr[0]_i_19 
       (.I0(cur_trn_addr[0]),
        .I1(\n_0_new_trn_addr_reg[0] ),
        .I2(cur_trn_addr[1]),
        .I3(\n_0_new_trn_addr_reg[1] ),
        .I4(\n_0_new_trn_addr_reg[2] ),
        .I5(cur_trn_addr[2]),
        .O(\n_0_max_retry_cntr[0]_i_19 ));
LUT3 #(
    .INIT(8'h80)) 
     \max_retry_cntr[0]_i_2 
       (.I0(start_retry_check),
        .I1(O3),
        .I2(m_axi_lite_ch1_bvalid),
        .O(max_retry_cntr0));
LUT4 #(
    .INIT(16'h6FF6)) 
     \max_retry_cntr[0]_i_5 
       (.I0(new_trn_type[1]),
        .I1(\n_0_cur_trn_type_reg[1] ),
        .I2(new_trn_type[0]),
        .I3(\n_0_cur_trn_type_reg[0] ),
        .O(\n_0_max_retry_cntr[0]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \max_retry_cntr[0]_i_6 
       (.I0(max_retry_cntr_reg[0]),
        .O(\n_0_max_retry_cntr[0]_i_6 ));
LUT4 #(
    .INIT(16'h9009)) 
     \max_retry_cntr[0]_i_8 
       (.I0(\n_0_new_trn_addr_reg[30] ),
        .I1(cur_trn_addr[30]),
        .I2(\n_0_new_trn_addr_reg[31] ),
        .I3(cur_trn_addr[31]),
        .O(\n_0_max_retry_cntr[0]_i_8 ));
LUT6 #(
    .INIT(64'h9009000000009009)) 
     \max_retry_cntr[0]_i_9 
       (.I0(cur_trn_addr[28]),
        .I1(\n_0_new_trn_addr_reg[28] ),
        .I2(cur_trn_addr[29]),
        .I3(\n_0_new_trn_addr_reg[29] ),
        .I4(\n_0_new_trn_addr_reg[27] ),
        .I5(cur_trn_addr[27]),
        .O(\n_0_max_retry_cntr[0]_i_9 ));
FDRE \max_retry_cntr_reg[0] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[0]_i_3 ),
        .Q(max_retry_cntr_reg[0]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
CARRY4 \max_retry_cntr_reg[0]_i_11 
       (.CI(1'b0),
        .CO({\n_0_max_retry_cntr_reg[0]_i_11 ,\n_1_max_retry_cntr_reg[0]_i_11 ,\n_2_max_retry_cntr_reg[0]_i_11 ,\n_3_max_retry_cntr_reg[0]_i_11 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_max_retry_cntr_reg[0]_i_11_O_UNCONNECTED [3:0]),
        .S({\n_0_max_retry_cntr[0]_i_16 ,\n_0_max_retry_cntr[0]_i_17 ,\n_0_max_retry_cntr[0]_i_18 ,\n_0_max_retry_cntr[0]_i_19 }));
CARRY4 \max_retry_cntr_reg[0]_i_4 
       (.CI(\n_0_max_retry_cntr_reg[0]_i_7 ),
        .CO({\NLW_max_retry_cntr_reg[0]_i_4_CO_UNCONNECTED [3],max_retry_cntr24_in,\n_2_max_retry_cntr_reg[0]_i_4 ,\n_3_max_retry_cntr_reg[0]_i_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_max_retry_cntr_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\n_0_max_retry_cntr[0]_i_8 ,\n_0_max_retry_cntr[0]_i_9 ,\n_0_max_retry_cntr[0]_i_10 }));
CARRY4 \max_retry_cntr_reg[0]_i_7 
       (.CI(\n_0_max_retry_cntr_reg[0]_i_11 ),
        .CO({\n_0_max_retry_cntr_reg[0]_i_7 ,\n_1_max_retry_cntr_reg[0]_i_7 ,\n_2_max_retry_cntr_reg[0]_i_7 ,\n_3_max_retry_cntr_reg[0]_i_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_max_retry_cntr_reg[0]_i_7_O_UNCONNECTED [3:0]),
        .S({\n_0_max_retry_cntr[0]_i_12 ,\n_0_max_retry_cntr[0]_i_13 ,\n_0_max_retry_cntr[0]_i_14 ,\n_0_max_retry_cntr[0]_i_15 }));
FDRE \max_retry_cntr_reg[10] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[10]_i_1 ),
        .Q(max_retry_cntr_reg[10]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[11] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[11]_i_1 ),
        .Q(max_retry_cntr_reg[11]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[12] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[12]_i_1 ),
        .Q(max_retry_cntr_reg[12]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[13] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[13]_i_1 ),
        .Q(max_retry_cntr_reg[13]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \max_retry_cntr_reg[13]_i_2_CARRY4 
       (.CI(\n_0_max_retry_cntr_reg[12]_i_2 ),
        .CO({\n_0_max_retry_cntr_reg[16]_i_2 ,\n_0_max_retry_cntr_reg[15]_i_2 ,\n_0_max_retry_cntr_reg[14]_i_2 ,\n_0_max_retry_cntr_reg[13]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_max_retry_cntr_reg[15]_i_1 ,\n_0_max_retry_cntr_reg[14]_i_1 ,\n_0_max_retry_cntr_reg[13]_i_1 ,\n_0_max_retry_cntr_reg[12]_i_1 }),
        .S(max_retry_cntr_reg[15:12]));
FDRE \max_retry_cntr_reg[14] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[14]_i_1 ),
        .Q(max_retry_cntr_reg[14]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[15] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[15]_i_1 ),
        .Q(max_retry_cntr_reg[15]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[16] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[16]_i_1 ),
        .Q(max_retry_cntr_reg[16]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[17] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[17]_i_1 ),
        .Q(max_retry_cntr_reg[17]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \max_retry_cntr_reg[17]_i_2_CARRY4 
       (.CI(\n_0_max_retry_cntr_reg[16]_i_2 ),
        .CO({\n_0_max_retry_cntr_reg[20]_i_2 ,\n_0_max_retry_cntr_reg[19]_i_2 ,\n_0_max_retry_cntr_reg[18]_i_2 ,\n_0_max_retry_cntr_reg[17]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_max_retry_cntr_reg[19]_i_1 ,\n_0_max_retry_cntr_reg[18]_i_1 ,\n_0_max_retry_cntr_reg[17]_i_1 ,\n_0_max_retry_cntr_reg[16]_i_1 }),
        .S(max_retry_cntr_reg[19:16]));
FDRE \max_retry_cntr_reg[18] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[18]_i_1 ),
        .Q(max_retry_cntr_reg[18]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[19] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[19]_i_1 ),
        .Q(max_retry_cntr_reg[19]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[1] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[1]_i_1 ),
        .Q(max_retry_cntr_reg[1]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \max_retry_cntr_reg[1]_i_2_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_max_retry_cntr_reg[4]_i_2 ,\n_0_max_retry_cntr_reg[3]_i_2 ,\n_0_max_retry_cntr_reg[2]_i_2 ,\n_0_max_retry_cntr_reg[1]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_0_max_retry_cntr_reg[3]_i_1 ,\n_0_max_retry_cntr_reg[2]_i_1 ,\n_0_max_retry_cntr_reg[1]_i_1 ,\n_0_max_retry_cntr_reg[0]_i_3 }),
        .S({max_retry_cntr_reg[3:1],\n_0_max_retry_cntr[0]_i_6 }));
FDRE \max_retry_cntr_reg[20] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[20]_i_1 ),
        .Q(max_retry_cntr_reg[20]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[21] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[21]_i_1 ),
        .Q(max_retry_cntr_reg[21]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \max_retry_cntr_reg[21]_i_2_CARRY4 
       (.CI(\n_0_max_retry_cntr_reg[20]_i_2 ),
        .CO({\n_0_max_retry_cntr_reg[24]_i_2 ,\n_0_max_retry_cntr_reg[23]_i_2 ,\n_0_max_retry_cntr_reg[22]_i_2 ,\n_0_max_retry_cntr_reg[21]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_max_retry_cntr_reg[23]_i_1 ,\n_0_max_retry_cntr_reg[22]_i_1 ,\n_0_max_retry_cntr_reg[21]_i_1 ,\n_0_max_retry_cntr_reg[20]_i_1 }),
        .S(max_retry_cntr_reg[23:20]));
FDRE \max_retry_cntr_reg[22] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[22]_i_1 ),
        .Q(max_retry_cntr_reg[22]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[23] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[23]_i_1 ),
        .Q(max_retry_cntr_reg[23]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[24] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[24]_i_1 ),
        .Q(max_retry_cntr_reg[24]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[25] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[25]_i_1 ),
        .Q(max_retry_cntr_reg[25]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \max_retry_cntr_reg[25]_i_2_CARRY4 
       (.CI(\n_0_max_retry_cntr_reg[24]_i_2 ),
        .CO({\n_0_max_retry_cntr_reg[28]_i_2 ,\n_0_max_retry_cntr_reg[27]_i_2 ,\n_0_max_retry_cntr_reg[26]_i_2 ,\n_0_max_retry_cntr_reg[25]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_max_retry_cntr_reg[27]_i_1 ,\n_0_max_retry_cntr_reg[26]_i_1 ,\n_0_max_retry_cntr_reg[25]_i_1 ,\n_0_max_retry_cntr_reg[24]_i_1 }),
        .S(max_retry_cntr_reg[27:24]));
FDRE \max_retry_cntr_reg[26] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[26]_i_1 ),
        .Q(max_retry_cntr_reg[26]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[27] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[27]_i_1 ),
        .Q(max_retry_cntr_reg[27]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[28] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[28]_i_1 ),
        .Q(max_retry_cntr_reg[28]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[29] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[29]_i_1 ),
        .Q(max_retry_cntr_reg[29]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \max_retry_cntr_reg[29]_i_2_CARRY4 
       (.CI(\n_0_max_retry_cntr_reg[28]_i_2 ),
        .CO({\NLW_max_retry_cntr_reg[29]_i_2_CARRY4_CO_UNCONNECTED [3:2],\n_0_max_retry_cntr_reg[30]_i_2 ,\n_0_max_retry_cntr_reg[29]_i_2 }),
        .CYINIT(1'b0),
        .DI({\NLW_max_retry_cntr_reg[29]_i_2_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O({\n_0_max_retry_cntr_reg[31]_i_1 ,\n_0_max_retry_cntr_reg[30]_i_1 ,\n_0_max_retry_cntr_reg[29]_i_1 ,\n_0_max_retry_cntr_reg[28]_i_1 }),
        .S(max_retry_cntr_reg[31:28]));
FDRE \max_retry_cntr_reg[2] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[2]_i_1 ),
        .Q(max_retry_cntr_reg[2]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[30] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[30]_i_1 ),
        .Q(max_retry_cntr_reg[30]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[31] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[31]_i_1 ),
        .Q(max_retry_cntr_reg[31]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[3] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[3]_i_1 ),
        .Q(max_retry_cntr_reg[3]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[4] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[4]_i_1 ),
        .Q(max_retry_cntr_reg[4]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[5] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[5]_i_1 ),
        .Q(max_retry_cntr_reg[5]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \max_retry_cntr_reg[5]_i_2_CARRY4 
       (.CI(\n_0_max_retry_cntr_reg[4]_i_2 ),
        .CO({\n_0_max_retry_cntr_reg[8]_i_2 ,\n_0_max_retry_cntr_reg[7]_i_2 ,\n_0_max_retry_cntr_reg[6]_i_2 ,\n_0_max_retry_cntr_reg[5]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_max_retry_cntr_reg[7]_i_1 ,\n_0_max_retry_cntr_reg[6]_i_1 ,\n_0_max_retry_cntr_reg[5]_i_1 ,\n_0_max_retry_cntr_reg[4]_i_1 }),
        .S(max_retry_cntr_reg[7:4]));
FDRE \max_retry_cntr_reg[6] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[6]_i_1 ),
        .Q(max_retry_cntr_reg[6]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[7] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[7]_i_1 ),
        .Q(max_retry_cntr_reg[7]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[8] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[8]_i_1 ),
        .Q(max_retry_cntr_reg[8]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
FDRE \max_retry_cntr_reg[9] 
       (.C(s_axi_aclk),
        .CE(max_retry_cntr0),
        .D(\n_0_max_retry_cntr_reg[9]_i_1 ),
        .Q(max_retry_cntr_reg[9]),
        .R(\n_0_max_retry_cntr[0]_i_1 ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \max_retry_cntr_reg[9]_i_2_CARRY4 
       (.CI(\n_0_max_retry_cntr_reg[8]_i_2 ),
        .CO({\n_0_max_retry_cntr_reg[12]_i_2 ,\n_0_max_retry_cntr_reg[11]_i_2 ,\n_0_max_retry_cntr_reg[10]_i_2 ,\n_0_max_retry_cntr_reg[9]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_max_retry_cntr_reg[11]_i_1 ,\n_0_max_retry_cntr_reg[10]_i_1 ,\n_0_max_retry_cntr_reg[9]_i_1 ,\n_0_max_retry_cntr_reg[8]_i_1 }),
        .S(max_retry_cntr_reg[11:8]));
LUT6 #(
    .INIT(64'h1111110111111111)) 
     \max_test_time_cntr[0]_i_1 
       (.I0(rom_eof),
        .I1(\n_0_awaddr_m[31]_i_4 ),
        .I2(\n_0_status[1]_i_3 ),
        .I3(max_retry_cntr_reg[20]),
        .I4(max_retry_cntr_reg[18]),
        .I5(\n_0_status[1]_i_2 ),
        .O(\n_0_max_test_time_cntr[0]_i_1 ));
LUT1 #(
    .INIT(2'h1)) 
     \max_test_time_cntr[0]_i_3 
       (.I0(max_test_time_cntr_reg[0]),
        .O(\n_0_max_test_time_cntr[0]_i_3 ));
FDRE \max_test_time_cntr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[0]_i_2 ),
        .Q(max_test_time_cntr_reg[0]),
        .R(O2));
FDRE \max_test_time_cntr_reg[10] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[10]_i_1 ),
        .Q(max_test_time_cntr_reg[10]),
        .R(O2));
FDRE \max_test_time_cntr_reg[11] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[11]_i_1 ),
        .Q(max_test_time_cntr_reg[11]),
        .R(O2));
FDRE \max_test_time_cntr_reg[12] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[12]_i_1 ),
        .Q(max_test_time_cntr_reg[12]),
        .R(O2));
FDRE \max_test_time_cntr_reg[13] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[13]_i_1 ),
        .Q(max_test_time_cntr_reg[13]),
        .R(O2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \max_test_time_cntr_reg[13]_i_2_CARRY4 
       (.CI(\n_0_max_test_time_cntr_reg[12]_i_2 ),
        .CO({\n_0_max_test_time_cntr_reg[16]_i_2 ,\n_0_max_test_time_cntr_reg[15]_i_2 ,\n_0_max_test_time_cntr_reg[14]_i_2 ,\n_0_max_test_time_cntr_reg[13]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_max_test_time_cntr_reg[15]_i_1 ,\n_0_max_test_time_cntr_reg[14]_i_1 ,\n_0_max_test_time_cntr_reg[13]_i_1 ,\n_0_max_test_time_cntr_reg[12]_i_1 }),
        .S(max_test_time_cntr_reg[15:12]));
FDRE \max_test_time_cntr_reg[14] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[14]_i_1 ),
        .Q(max_test_time_cntr_reg[14]),
        .R(O2));
FDRE \max_test_time_cntr_reg[15] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[15]_i_1 ),
        .Q(max_test_time_cntr_reg[15]),
        .R(O2));
FDRE \max_test_time_cntr_reg[16] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[16]_i_1 ),
        .Q(max_test_time_cntr_reg[16]),
        .R(O2));
FDRE \max_test_time_cntr_reg[17] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[17]_i_1 ),
        .Q(max_test_time_cntr_reg[17]),
        .R(O2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \max_test_time_cntr_reg[17]_i_2_CARRY4 
       (.CI(\n_0_max_test_time_cntr_reg[16]_i_2 ),
        .CO({\n_0_max_test_time_cntr_reg[20]_i_2 ,\n_0_max_test_time_cntr_reg[19]_i_2 ,\n_0_max_test_time_cntr_reg[18]_i_2 ,\n_0_max_test_time_cntr_reg[17]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_max_test_time_cntr_reg[19]_i_1 ,\n_0_max_test_time_cntr_reg[18]_i_1 ,\n_0_max_test_time_cntr_reg[17]_i_1 ,\n_0_max_test_time_cntr_reg[16]_i_1 }),
        .S(max_test_time_cntr_reg[19:16]));
FDRE \max_test_time_cntr_reg[18] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[18]_i_1 ),
        .Q(max_test_time_cntr_reg[18]),
        .R(O2));
FDRE \max_test_time_cntr_reg[19] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[19]_i_1 ),
        .Q(max_test_time_cntr_reg[19]),
        .R(O2));
FDRE \max_test_time_cntr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[1]_i_1 ),
        .Q(max_test_time_cntr_reg[1]),
        .R(O2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \max_test_time_cntr_reg[1]_i_2_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_max_test_time_cntr_reg[4]_i_2 ,\n_0_max_test_time_cntr_reg[3]_i_2 ,\n_0_max_test_time_cntr_reg[2]_i_2 ,\n_0_max_test_time_cntr_reg[1]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_0_max_test_time_cntr_reg[3]_i_1 ,\n_0_max_test_time_cntr_reg[2]_i_1 ,\n_0_max_test_time_cntr_reg[1]_i_1 ,\n_0_max_test_time_cntr_reg[0]_i_2 }),
        .S({max_test_time_cntr_reg[3:1],\n_0_max_test_time_cntr[0]_i_3 }));
FDRE \max_test_time_cntr_reg[20] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[20]_i_1 ),
        .Q(max_test_time_cntr_reg[20]),
        .R(O2));
FDRE \max_test_time_cntr_reg[21] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[21]_i_1 ),
        .Q(max_test_time_cntr_reg[21]),
        .R(O2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \max_test_time_cntr_reg[21]_i_2_CARRY4 
       (.CI(\n_0_max_test_time_cntr_reg[20]_i_2 ),
        .CO({\n_0_max_test_time_cntr_reg[24]_i_2 ,\n_0_max_test_time_cntr_reg[23]_i_2 ,\n_0_max_test_time_cntr_reg[22]_i_2 ,\n_0_max_test_time_cntr_reg[21]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_max_test_time_cntr_reg[23]_i_1 ,\n_0_max_test_time_cntr_reg[22]_i_1 ,\n_0_max_test_time_cntr_reg[21]_i_1 ,\n_0_max_test_time_cntr_reg[20]_i_1 }),
        .S(max_test_time_cntr_reg[23:20]));
FDRE \max_test_time_cntr_reg[22] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[22]_i_1 ),
        .Q(max_test_time_cntr_reg[22]),
        .R(O2));
FDRE \max_test_time_cntr_reg[23] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[23]_i_1 ),
        .Q(max_test_time_cntr_reg[23]),
        .R(O2));
FDRE \max_test_time_cntr_reg[24] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[24]_i_1 ),
        .Q(max_test_time_cntr_reg[24]),
        .R(O2));
FDRE \max_test_time_cntr_reg[25] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[25]_i_1 ),
        .Q(max_test_time_cntr_reg[25]),
        .R(O2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \max_test_time_cntr_reg[25]_i_2_CARRY4 
       (.CI(\n_0_max_test_time_cntr_reg[24]_i_2 ),
        .CO({\n_0_max_test_time_cntr_reg[28]_i_2 ,\n_0_max_test_time_cntr_reg[27]_i_2 ,\n_0_max_test_time_cntr_reg[26]_i_2 ,\n_0_max_test_time_cntr_reg[25]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_max_test_time_cntr_reg[27]_i_1 ,\n_0_max_test_time_cntr_reg[26]_i_1 ,\n_0_max_test_time_cntr_reg[25]_i_1 ,\n_0_max_test_time_cntr_reg[24]_i_1 }),
        .S(max_test_time_cntr_reg[27:24]));
FDRE \max_test_time_cntr_reg[26] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[26]_i_1 ),
        .Q(max_test_time_cntr_reg[26]),
        .R(O2));
FDRE \max_test_time_cntr_reg[27] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[27]_i_1 ),
        .Q(max_test_time_cntr_reg[27]),
        .R(O2));
FDRE \max_test_time_cntr_reg[28] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[28]_i_1 ),
        .Q(max_test_time_cntr_reg[28]),
        .R(O2));
FDRE \max_test_time_cntr_reg[29] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[29]_i_1 ),
        .Q(max_test_time_cntr_reg[29]),
        .R(O2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \max_test_time_cntr_reg[29]_i_2_CARRY4 
       (.CI(\n_0_max_test_time_cntr_reg[28]_i_2 ),
        .CO({\NLW_max_test_time_cntr_reg[29]_i_2_CARRY4_CO_UNCONNECTED [3:2],\n_0_max_test_time_cntr_reg[30]_i_2 ,\n_0_max_test_time_cntr_reg[29]_i_2 }),
        .CYINIT(1'b0),
        .DI({\NLW_max_test_time_cntr_reg[29]_i_2_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O({\n_0_max_test_time_cntr_reg[31]_i_1 ,\n_0_max_test_time_cntr_reg[30]_i_1 ,\n_0_max_test_time_cntr_reg[29]_i_1 ,\n_0_max_test_time_cntr_reg[28]_i_1 }),
        .S(max_test_time_cntr_reg[31:28]));
FDRE \max_test_time_cntr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[2]_i_1 ),
        .Q(max_test_time_cntr_reg[2]),
        .R(O2));
FDRE \max_test_time_cntr_reg[30] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[30]_i_1 ),
        .Q(max_test_time_cntr_reg[30]),
        .R(O2));
FDRE \max_test_time_cntr_reg[31] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[31]_i_1 ),
        .Q(max_test_time_cntr_reg[31]),
        .R(O2));
FDRE \max_test_time_cntr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[3]_i_1 ),
        .Q(max_test_time_cntr_reg[3]),
        .R(O2));
FDRE \max_test_time_cntr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[4]_i_1 ),
        .Q(max_test_time_cntr_reg[4]),
        .R(O2));
FDRE \max_test_time_cntr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[5]_i_1 ),
        .Q(max_test_time_cntr_reg[5]),
        .R(O2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \max_test_time_cntr_reg[5]_i_2_CARRY4 
       (.CI(\n_0_max_test_time_cntr_reg[4]_i_2 ),
        .CO({\n_0_max_test_time_cntr_reg[8]_i_2 ,\n_0_max_test_time_cntr_reg[7]_i_2 ,\n_0_max_test_time_cntr_reg[6]_i_2 ,\n_0_max_test_time_cntr_reg[5]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_max_test_time_cntr_reg[7]_i_1 ,\n_0_max_test_time_cntr_reg[6]_i_1 ,\n_0_max_test_time_cntr_reg[5]_i_1 ,\n_0_max_test_time_cntr_reg[4]_i_1 }),
        .S(max_test_time_cntr_reg[7:4]));
FDRE \max_test_time_cntr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[6]_i_1 ),
        .Q(max_test_time_cntr_reg[6]),
        .R(O2));
FDRE \max_test_time_cntr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[7]_i_1 ),
        .Q(max_test_time_cntr_reg[7]),
        .R(O2));
FDRE \max_test_time_cntr_reg[8] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[8]_i_1 ),
        .Q(max_test_time_cntr_reg[8]),
        .R(O2));
FDRE \max_test_time_cntr_reg[9] 
       (.C(s_axi_aclk),
        .CE(\n_0_max_test_time_cntr[0]_i_1 ),
        .D(\n_0_max_test_time_cntr_reg[9]_i_1 ),
        .Q(max_test_time_cntr_reg[9]),
        .R(O2));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \max_test_time_cntr_reg[9]_i_2_CARRY4 
       (.CI(\n_0_max_test_time_cntr_reg[8]_i_2 ),
        .CO({\n_0_max_test_time_cntr_reg[12]_i_2 ,\n_0_max_test_time_cntr_reg[11]_i_2 ,\n_0_max_test_time_cntr_reg[10]_i_2 ,\n_0_max_test_time_cntr_reg[9]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_max_test_time_cntr_reg[11]_i_1 ,\n_0_max_test_time_cntr_reg[10]_i_1 ,\n_0_max_test_time_cntr_reg[9]_i_1 ,\n_0_max_test_time_cntr_reg[8]_i_1 }),
        .S(max_test_time_cntr_reg[11:8]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[0]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[0]),
        .O(new_trn_addr[0]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[10]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[10]),
        .O(new_trn_addr[10]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[11]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[11]),
        .O(new_trn_addr[11]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[12]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[12]),
        .O(new_trn_addr[12]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[13]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[13]),
        .O(new_trn_addr[13]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[14]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[14]),
        .O(new_trn_addr[14]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[15]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[15]),
        .O(new_trn_addr[15]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[16]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[16]),
        .O(new_trn_addr[16]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[17]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[17]),
        .O(new_trn_addr[17]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[18]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[18]),
        .O(new_trn_addr[18]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[19]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[19]),
        .O(new_trn_addr[19]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[1]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[1]),
        .O(new_trn_addr[1]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[20]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[20]),
        .O(new_trn_addr[20]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[21]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[21]),
        .O(new_trn_addr[21]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[22]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[22]),
        .O(new_trn_addr[22]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[23]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[23]),
        .O(new_trn_addr[23]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[24]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[24]),
        .O(new_trn_addr[24]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[25]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[25]),
        .O(new_trn_addr[25]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[26]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[26]),
        .O(new_trn_addr[26]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[27]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[27]),
        .O(new_trn_addr[27]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[28]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[28]),
        .O(new_trn_addr[28]));
LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[29]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[29]),
        .O(new_trn_addr[29]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[2]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[2]),
        .O(new_trn_addr[2]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[30]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[30]),
        .O(new_trn_addr[30]));
LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[31]_i_1 
       (.I0(first_tran_done),
        .I1(O1),
        .I2(m_axi_lite_ch1_awready),
        .O(\n_0_new_trn_addr[31]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[31]_i_2 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[31]),
        .O(new_trn_addr[31]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[3]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[3]),
        .O(new_trn_addr[3]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[4]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[4]),
        .O(new_trn_addr[4]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[5]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[5]),
        .O(new_trn_addr[5]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[6]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[6]),
        .O(new_trn_addr[6]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[7]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[7]),
        .O(new_trn_addr[7]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[8]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[8]),
        .O(new_trn_addr[8]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \new_trn_addr[9]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(m_axi_lite_ch1_awaddr[9]),
        .O(new_trn_addr[9]));
FDRE \new_trn_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[0]),
        .Q(\n_0_new_trn_addr_reg[0] ),
        .R(O2));
FDRE \new_trn_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[10]),
        .Q(\n_0_new_trn_addr_reg[10] ),
        .R(O2));
FDRE \new_trn_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[11]),
        .Q(\n_0_new_trn_addr_reg[11] ),
        .R(O2));
FDRE \new_trn_addr_reg[12] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[12]),
        .Q(\n_0_new_trn_addr_reg[12] ),
        .R(O2));
FDRE \new_trn_addr_reg[13] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[13]),
        .Q(\n_0_new_trn_addr_reg[13] ),
        .R(O2));
FDRE \new_trn_addr_reg[14] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[14]),
        .Q(\n_0_new_trn_addr_reg[14] ),
        .R(O2));
FDRE \new_trn_addr_reg[15] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[15]),
        .Q(\n_0_new_trn_addr_reg[15] ),
        .R(O2));
FDRE \new_trn_addr_reg[16] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[16]),
        .Q(\n_0_new_trn_addr_reg[16] ),
        .R(O2));
FDRE \new_trn_addr_reg[17] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[17]),
        .Q(\n_0_new_trn_addr_reg[17] ),
        .R(O2));
FDRE \new_trn_addr_reg[18] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[18]),
        .Q(\n_0_new_trn_addr_reg[18] ),
        .R(O2));
FDRE \new_trn_addr_reg[19] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[19]),
        .Q(\n_0_new_trn_addr_reg[19] ),
        .R(O2));
FDRE \new_trn_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[1]),
        .Q(\n_0_new_trn_addr_reg[1] ),
        .R(O2));
FDRE \new_trn_addr_reg[20] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[20]),
        .Q(\n_0_new_trn_addr_reg[20] ),
        .R(O2));
FDRE \new_trn_addr_reg[21] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[21]),
        .Q(\n_0_new_trn_addr_reg[21] ),
        .R(O2));
FDRE \new_trn_addr_reg[22] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[22]),
        .Q(\n_0_new_trn_addr_reg[22] ),
        .R(O2));
FDRE \new_trn_addr_reg[23] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[23]),
        .Q(\n_0_new_trn_addr_reg[23] ),
        .R(O2));
FDRE \new_trn_addr_reg[24] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[24]),
        .Q(\n_0_new_trn_addr_reg[24] ),
        .R(O2));
FDRE \new_trn_addr_reg[25] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[25]),
        .Q(\n_0_new_trn_addr_reg[25] ),
        .R(O2));
FDRE \new_trn_addr_reg[26] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[26]),
        .Q(\n_0_new_trn_addr_reg[26] ),
        .R(O2));
FDRE \new_trn_addr_reg[27] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[27]),
        .Q(\n_0_new_trn_addr_reg[27] ),
        .R(O2));
FDRE \new_trn_addr_reg[28] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[28]),
        .Q(\n_0_new_trn_addr_reg[28] ),
        .R(O2));
FDRE \new_trn_addr_reg[29] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[29]),
        .Q(\n_0_new_trn_addr_reg[29] ),
        .R(O2));
FDRE \new_trn_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[2]),
        .Q(\n_0_new_trn_addr_reg[2] ),
        .R(O2));
FDRE \new_trn_addr_reg[30] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[30]),
        .Q(\n_0_new_trn_addr_reg[30] ),
        .R(O2));
FDRE \new_trn_addr_reg[31] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[31]),
        .Q(\n_0_new_trn_addr_reg[31] ),
        .R(O2));
FDRE \new_trn_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[3]),
        .Q(\n_0_new_trn_addr_reg[3] ),
        .R(O2));
FDRE \new_trn_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[4]),
        .Q(\n_0_new_trn_addr_reg[4] ),
        .R(O2));
FDRE \new_trn_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[5]),
        .Q(\n_0_new_trn_addr_reg[5] ),
        .R(O2));
FDRE \new_trn_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[6]),
        .Q(\n_0_new_trn_addr_reg[6] ),
        .R(O2));
FDRE \new_trn_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[7]),
        .Q(\n_0_new_trn_addr_reg[7] ),
        .R(O2));
FDRE \new_trn_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[8]),
        .Q(\n_0_new_trn_addr_reg[8] ),
        .R(O2));
FDRE \new_trn_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(\n_0_new_trn_addr[31]_i_1 ),
        .D(new_trn_addr[9]),
        .Q(\n_0_new_trn_addr_reg[9] ),
        .R(O2));
LUT5 #(
    .INIT(32'hC8888888)) 
     \new_trn_type[0]_i_1 
       (.I0(new_trn_type[0]),
        .I1(s_axi_aresetn),
        .I2(m_axi_lite_ch1_awready),
        .I3(O1),
        .I4(first_tran_done),
        .O(\n_0_new_trn_type[0]_i_1 ));
LUT5 #(
    .INIT(32'h7F000000)) 
     \new_trn_type[1]_i_1 
       (.I0(m_axi_lite_ch1_awready),
        .I1(O1),
        .I2(first_tran_done),
        .I3(s_axi_aresetn),
        .I4(new_trn_type[1]),
        .O(\n_0_new_trn_type[1]_i_1 ));
FDRE \new_trn_type_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_new_trn_type[0]_i_1 ),
        .Q(new_trn_type[0]),
        .R(1'b0));
FDRE \new_trn_type_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_new_trn_type[1]_i_1 ),
        .Q(new_trn_type[1]),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFE2FFFFFFE20000)) 
     rom_eof_i_1
       (.I0(rom_ptr_ff[4]),
        .I1(b_complete_2ff),
        .I2(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [4]),
        .I3(I1),
        .I4(rst_l_2ff),
        .I5(rom_eof),
        .O(n_0_rom_eof_i_1));
FDRE rom_eof_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_rom_eof_i_1),
        .Q(rom_eof),
        .R(O2));
FDRE \rom_ptr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(b_complete_2ff),
        .D(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [0]),
        .Q(rom_ptr_ff[0]),
        .R(O2));
FDRE \rom_ptr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(b_complete_2ff),
        .D(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [1]),
        .Q(rom_ptr_ff[1]),
        .R(O2));
FDRE \rom_ptr_ff_reg[2] 
       (.C(s_axi_aclk),
        .CE(b_complete_2ff),
        .D(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [2]),
        .Q(rom_ptr_ff[2]),
        .R(O2));
FDRE \rom_ptr_ff_reg[3] 
       (.C(s_axi_aclk),
        .CE(b_complete_2ff),
        .D(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [3]),
        .Q(rom_ptr_ff[3]),
        .R(O2));
FDRE \rom_ptr_ff_reg[4] 
       (.C(s_axi_aclk),
        .CE(b_complete_2ff),
        .D(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [4]),
        .Q(rom_ptr_ff[4]),
        .R(O2));
FDRE rst_l_2ff_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_l_ff),
        .Q(rst_l_2ff),
        .R(1'b0));
FDRE rst_l_3ff_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_l_2ff),
        .Q(rst_l_3ff),
        .R(1'b0));
FDRE rst_l_ff_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_aresetn),
        .Q(rst_l_ff),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'hEA)) 
     start_retry_check_i_1
       (.I0(start_retry_check),
        .I1(m_axi_lite_ch1_awready),
        .I2(O1),
        .O(n_0_start_retry_check_i_1));
FDRE start_retry_check_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_start_retry_check_i_1),
        .Q(start_retry_check),
        .R(O2));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hFFFF0200)) 
     \status[1]_i_1 
       (.I0(\n_0_status[1]_i_2 ),
        .I1(max_retry_cntr_reg[18]),
        .I2(max_retry_cntr_reg[20]),
        .I3(\n_0_status[1]_i_3 ),
        .I4(\n_0_awaddr_m[31]_i_4 ),
        .O(\n_0_status[1]_i_1 ));
LUT4 #(
    .INIT(16'h8000)) 
     \status[1]_i_2 
       (.I0(\n_0_awaddr_m[31]_i_12 ),
        .I1(\n_0_awaddr_m[31]_i_11 ),
        .I2(\n_0_awaddr_m[31]_i_10 ),
        .I3(\n_0_awaddr_m[31]_i_9 ),
        .O(\n_0_status[1]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \status[1]_i_3 
       (.I0(max_retry_cntr_reg[28]),
        .I1(max_retry_cntr_reg[24]),
        .I2(max_retry_cntr_reg[1]),
        .I3(max_retry_cntr_reg[5]),
        .I4(max_retry_cntr_reg[7]),
        .I5(max_retry_cntr_reg[12]),
        .O(\n_0_status[1]_i_3 ));
LUT3 #(
    .INIT(8'h1F)) 
     \status[9]_i_1 
       (.I0(\n_0_max_test_time_cntr[0]_i_1 ),
        .I1(done_i),
        .I2(s_axi_aresetn),
        .O(\n_0_status[9]_i_1 ));
FDRE \status_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_status[9]_i_1 ),
        .D(1'b1),
        .Q(status[0]),
        .R(O2));
FDRE \status_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_status[9]_i_1 ),
        .D(\n_0_status[1]_i_1 ),
        .Q(status[1]),
        .R(O2));
FDRE \status_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_status[9]_i_1 ),
        .D(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [0]),
        .Q(status[2]),
        .R(O2));
FDRE \status_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_status[9]_i_1 ),
        .D(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [1]),
        .Q(status[3]),
        .R(O2));
FDRE \status_reg[4] 
       (.C(s_axi_aclk),
        .CE(\n_0_status[9]_i_1 ),
        .D(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [2]),
        .Q(status[4]),
        .R(O2));
FDRE \status_reg[5] 
       (.C(s_axi_aclk),
        .CE(\n_0_status[9]_i_1 ),
        .D(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [3]),
        .Q(status[5]),
        .R(O2));
FDRE \status_reg[6] 
       (.C(s_axi_aclk),
        .CE(\n_0_status[9]_i_1 ),
        .D(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [4]),
        .Q(status[6]),
        .R(O2));
FDRE \status_reg[7] 
       (.C(s_axi_aclk),
        .CE(\n_0_status[9]_i_1 ),
        .D(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [5]),
        .Q(status[7]),
        .R(O2));
FDRE \status_reg[8] 
       (.C(s_axi_aclk),
        .CE(\n_0_status[9]_i_1 ),
        .D(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [6]),
        .Q(status[8]),
        .R(O2));
FDRE \status_reg[9] 
       (.C(s_axi_aclk),
        .CE(\n_0_status[9]_i_1 ),
        .D(\ATG_SYSINIT_NXT_PTR.nxt_rom_ptr_reg__0 [7]),
        .Q(status[9]),
        .R(O2));
FDRE \wdata_m_reg[0] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[0]),
        .Q(m_axi_lite_ch5_wdata[0]),
        .R(O2));
FDRE \wdata_m_reg[10] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[10]),
        .Q(m_axi_lite_ch5_wdata[10]),
        .R(O2));
FDRE \wdata_m_reg[11] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[11]),
        .Q(m_axi_lite_ch5_wdata[11]),
        .R(O2));
FDRE \wdata_m_reg[12] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[12]),
        .Q(m_axi_lite_ch5_wdata[12]),
        .R(O2));
FDRE \wdata_m_reg[13] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[13]),
        .Q(m_axi_lite_ch5_wdata[13]),
        .R(O2));
FDRE \wdata_m_reg[14] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[14]),
        .Q(m_axi_lite_ch5_wdata[14]),
        .R(O2));
FDRE \wdata_m_reg[15] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[15]),
        .Q(m_axi_lite_ch5_wdata[15]),
        .R(O2));
FDRE \wdata_m_reg[16] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[16]),
        .Q(m_axi_lite_ch5_wdata[16]),
        .R(O2));
FDRE \wdata_m_reg[17] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[17]),
        .Q(m_axi_lite_ch5_wdata[17]),
        .R(O2));
FDRE \wdata_m_reg[18] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[18]),
        .Q(m_axi_lite_ch5_wdata[18]),
        .R(O2));
FDRE \wdata_m_reg[19] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[19]),
        .Q(m_axi_lite_ch5_wdata[19]),
        .R(O2));
FDRE \wdata_m_reg[1] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[1]),
        .Q(m_axi_lite_ch5_wdata[1]),
        .R(O2));
FDRE \wdata_m_reg[20] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[20]),
        .Q(m_axi_lite_ch5_wdata[20]),
        .R(O2));
FDRE \wdata_m_reg[21] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[21]),
        .Q(m_axi_lite_ch5_wdata[21]),
        .R(O2));
FDRE \wdata_m_reg[22] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[22]),
        .Q(m_axi_lite_ch5_wdata[22]),
        .R(O2));
FDRE \wdata_m_reg[23] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[23]),
        .Q(m_axi_lite_ch5_wdata[23]),
        .R(O2));
FDRE \wdata_m_reg[24] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[24]),
        .Q(m_axi_lite_ch5_wdata[24]),
        .R(O2));
FDRE \wdata_m_reg[25] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[25]),
        .Q(m_axi_lite_ch5_wdata[25]),
        .R(O2));
FDRE \wdata_m_reg[26] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[26]),
        .Q(m_axi_lite_ch5_wdata[26]),
        .R(O2));
FDRE \wdata_m_reg[27] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[27]),
        .Q(m_axi_lite_ch5_wdata[27]),
        .R(O2));
FDRE \wdata_m_reg[28] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[28]),
        .Q(m_axi_lite_ch5_wdata[28]),
        .R(O2));
FDRE \wdata_m_reg[29] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[29]),
        .Q(m_axi_lite_ch5_wdata[29]),
        .R(O2));
FDRE \wdata_m_reg[2] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[2]),
        .Q(m_axi_lite_ch5_wdata[2]),
        .R(O2));
FDRE \wdata_m_reg[30] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[30]),
        .Q(m_axi_lite_ch5_wdata[30]),
        .R(O2));
FDRE \wdata_m_reg[31] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[31]),
        .Q(m_axi_lite_ch5_wdata[31]),
        .R(O2));
FDRE \wdata_m_reg[3] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[3]),
        .Q(m_axi_lite_ch5_wdata[3]),
        .R(O2));
FDRE \wdata_m_reg[4] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[4]),
        .Q(m_axi_lite_ch5_wdata[4]),
        .R(O2));
FDRE \wdata_m_reg[5] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[5]),
        .Q(m_axi_lite_ch5_wdata[5]),
        .R(O2));
FDRE \wdata_m_reg[6] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[6]),
        .Q(m_axi_lite_ch5_wdata[6]),
        .R(O2));
FDRE \wdata_m_reg[7] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[7]),
        .Q(m_axi_lite_ch5_wdata[7]),
        .R(O2));
FDRE \wdata_m_reg[8] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[8]),
        .Q(m_axi_lite_ch5_wdata[8]),
        .R(O2));
FDRE \wdata_m_reg[9] 
       (.C(s_axi_aclk),
        .CE(launch_new_wr),
        .D(I2[9]),
        .Q(m_axi_lite_ch5_wdata[9]),
        .R(O2));
LUT4 #(
    .INIT(16'h08C8)) 
     wvalid_m_i_1
       (.I0(launch_new_wr),
        .I1(s_axi_aresetn),
        .I2(m_axi_lite_ch1_wvalid),
        .I3(m_axi_lite_ch1_wready),
        .O(n_0_wvalid_m_i_1));
FDRE wvalid_m_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_wvalid_m_i_1),
        .Q(m_axi_lite_ch1_wvalid),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_traffic_gen_v2_0_systeminit_top" *) 
module axi_traffic_gen_0_axi_traffic_gen_v2_0_systeminit_top
   (O1,
    done,
    O2,
    m_axi_lite_ch1_awaddr,
    m_axi_lite_ch5_wdata,
    m_axi_lite_ch1_wvalid,
    status,
    s_axi_aclk,
    s_axi_aresetn,
    m_axi_lite_ch1_awready,
    m_axi_lite_ch1_bvalid,
    m_axi_lite_ch1_wready);
  output O1;
  output done;
  output O2;
  output [31:0]m_axi_lite_ch1_awaddr;
  output [31:0]m_axi_lite_ch5_wdata;
  output m_axi_lite_ch1_wvalid;
  output [9:0]status;
  input s_axi_aclk;
  input s_axi_aresetn;
  input m_axi_lite_ch1_awready;
  input m_axi_lite_ch1_bvalid;
  input m_axi_lite_ch1_wready;

  wire O1;
  wire O2;
  wire done;
  wire [31:0]m_axi_lite_ch1_awaddr;
  wire m_axi_lite_ch1_awready;
  wire m_axi_lite_ch1_bvalid;
  wire m_axi_lite_ch1_wready;
  wire m_axi_lite_ch1_wvalid;
  wire [31:0]m_axi_lite_ch5_wdata;
  wire n_1_static_mrdwr;
  wire n_32_systeminit_dmg_addr;
  wire [31:0]rom_addr;
  wire [3:0]rom_addr_ptr_ff;
  wire [31:0]rom_data;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [9:0]status;

axi_traffic_gen_0_axi_traffic_gen_v2_0_systeminit_mrdwr static_mrdwr
       (.D(rom_addr),
        .I1(n_32_systeminit_dmg_addr),
        .I2(rom_data),
        .O1(O1),
        .O2(n_1_static_mrdwr),
        .O3(O2),
        .a(rom_addr_ptr_ff),
        .done(done),
        .m_axi_lite_ch1_awaddr(m_axi_lite_ch1_awaddr),
        .m_axi_lite_ch1_awready(m_axi_lite_ch1_awready),
        .m_axi_lite_ch1_bvalid(m_axi_lite_ch1_bvalid),
        .m_axi_lite_ch1_wready(m_axi_lite_ch1_wready),
        .m_axi_lite_ch1_wvalid(m_axi_lite_ch1_wvalid),
        .m_axi_lite_ch5_wdata(m_axi_lite_ch5_wdata),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .status(status));
axi_traffic_gen_0_axi_traffic_gen_v2_0_systeminit_dmg systeminit_dmg_addr
       (.I1(n_1_static_mrdwr),
        .O1(n_32_systeminit_dmg_addr),
        .a(rom_addr_ptr_ff),
        .qspo(rom_addr),
        .s_axi_aclk(s_axi_aclk));
axi_traffic_gen_0_axi_traffic_gen_v2_0_systeminit_dmg__parameterized0 systeminit_dmg_data
       (.I1(n_1_static_mrdwr),
        .a(rom_addr_ptr_ff),
        .qspo(rom_data),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* C_FAMILY = "virtex7" *) (* C_BASEADDR = "0" *) 
(* C_HIGHADDR = "65535" *) (* C_ZERO_INVALID = "1" *) (* C_NO_EXCL = "0" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_AWUSER_WIDTH = "8" *) (* C_S_AXI_ARUSER_WIDTH = "8" *) 
(* C_S_AXI_ID_WIDTH = "1" *) (* C_M_AXI_THREAD_ID_WIDTH = "1" *) (* C_M_AXI_DATA_WIDTH = "32" *) 
(* C_M_AXI_AWUSER_WIDTH = "8" *) (* C_M_AXI_ARUSER_WIDTH = "8" *) (* C_AXIS1_HAS_TKEEP = "1" *) 
(* C_AXIS1_HAS_TSTRB = "1" *) (* C_AXIS2_HAS_TKEEP = "0" *) (* C_AXIS2_HAS_TSTRB = "0" *) 
(* C_AXIS_TDATA_WIDTH = "32" *) (* C_AXIS_TUSER_WIDTH = "8" *) (* C_AXIS_TID_WIDTH = "8" *) 
(* C_AXIS_TDEST_WIDTH = "8" *) (* C_ATG_BASIC_AXI4 = "0" *) (* C_ATG_REPEAT_TYPE = "0" *) 
(* C_ATG_HLTP_MODE = "0" *) (* C_ATG_STATIC = "0" *) (* C_ATG_SYSTEM_INIT = "1" *) 
(* C_ATG_SYSTEM_TEST = "0" *) (* C_ATG_STREAMING = "0" *) (* C_ATG_STREAMING_MST_ONLY = "1" *) 
(* C_ATG_STREAMING_MST_LPBK = "0" *) (* C_ATG_STREAMING_SLV_LPBK = "0" *) (* C_ATG_STREAMING_MAX_LEN_BITS = "16" *) 
(* C_AXIS_SPARSE_EN = "1" *) (* C_ATG_SLAVE_ONLY = "0" *) (* C_ATG_STATIC_WR_ADDRESS = "312475648" *) 
(* C_ATG_STATIC_RD_ADDRESS = "329252864" *) (* C_ATG_STATIC_WR_HIGH_ADDRESS = "312479743" *) (* C_ATG_STATIC_RD_HIGH_ADDRESS = "329256959" *) 
(* C_ATG_STATIC_INCR = "0" *) (* C_ATG_STATIC_EN_READ = "1" *) (* C_ATG_STATIC_EN_WRITE = "1" *) 
(* C_ATG_STATIC_FREE_RUN = "1" *) (* C_ATG_STATIC_RD_PIPELINE = "3" *) (* C_ATG_STATIC_WR_PIPELINE = "3" *) 
(* C_ATG_STATIC_TRANGAP = "256" *) (* C_ATG_STATIC_LENGTH = "16" *) (* C_ATG_SYSTEM_INIT_DATA_MIF = "axi_traffic_gen_0_data.mif" *) 
(* C_ATG_SYSTEM_INIT_ADDR_MIF = "axi_traffic_gen_0_addr.mif" *) (* C_ATG_SYSTEM_INIT_CTRL_MIF = "axi_traffic_gen_0_ctrl.mif" *) (* C_ATG_SYSTEM_INIT_MASK_MIF = "axi_traffic_gen_0_mask.mif" *) 
(* C_ATG_MIF_DATA_DEPTH = "16" *) (* C_ATG_MIF_ADDR_BITS = "4" *) (* C_ATG_SYSTEM_CMD_MAX_RETRY = "256" *) 
(* C_ATG_SYSTEM_TEST_MAX_CLKS = "265000" *) (* C_ATG_SYSTEM_MAX_CHANNELS = "1" *) (* C_ATG_SYSTEM_CH1_LOW = "0" *) 
(* C_ATG_SYSTEM_CH1_HIGH = "-1" *) (* C_ATG_SYSTEM_CH2_LOW = "256" *) (* C_ATG_SYSTEM_CH2_HIGH = "511" *) 
(* C_ATG_SYSTEM_CH3_LOW = "512" *) (* C_ATG_SYSTEM_CH3_HIGH = "767" *) (* C_ATG_SYSTEM_CH4_LOW = "768" *) 
(* C_ATG_SYSTEM_CH4_HIGH = "1023" *) (* C_ATG_SYSTEM_CH5_LOW = "1024" *) (* C_ATG_SYSTEM_CH5_HIGH = "1279" *) 
(* C_RAMINIT_CMDRAM0_F = "axi_traffic_gen_0_default_cmdram.mif" *) (* C_RAMINIT_CMDRAM1_F = "NONE" *) (* C_RAMINIT_CMDRAM2_F = "NONE" *) 
(* C_RAMINIT_CMDRAM3_F = "NONE" *) (* C_RAMINIT_SRAM0_F = "axi_traffic_gen_0_default_mstram.mif" *) (* C_RAMINIT_PARAMRAM0_F = "axi_traffic_gen_0_default_prmram.mif" *) 
(* ORIG_REF_NAME = "axi_traffic_gen_v2_0_top" *) 
module axi_traffic_gen_0_axi_traffic_gen_v2_0_top
   (s_axi_aclk,
    s_axi_aresetn,
    core_ext_start,
    core_ext_stop,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wlast,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rlast,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wlast,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready,
    m_axis_1_tready,
    m_axis_1_tvalid,
    m_axis_1_tlast,
    m_axis_1_tdata,
    m_axis_1_tstrb,
    m_axis_1_tkeep,
    m_axis_1_tuser,
    m_axis_1_tid,
    m_axis_1_tdest,
    s_axis_1_tready,
    s_axis_1_tvalid,
    s_axis_1_tlast,
    s_axis_1_tdata,
    s_axis_1_tstrb,
    s_axis_1_tkeep,
    s_axis_1_tuser,
    s_axis_1_tid,
    s_axis_1_tdest,
    axis_err_count,
    s_axis_2_tready,
    s_axis_2_tvalid,
    s_axis_2_tlast,
    s_axis_2_tdata,
    s_axis_2_tstrb,
    s_axis_2_tkeep,
    s_axis_2_tuser,
    s_axis_2_tid,
    s_axis_2_tdest,
    m_axis_2_tready,
    m_axis_2_tvalid,
    m_axis_2_tlast,
    m_axis_2_tdata,
    m_axis_2_tstrb,
    m_axis_2_tkeep,
    m_axis_2_tuser,
    m_axis_2_tid,
    m_axis_2_tdest,
    irq_out,
    err_out,
    m_axi_lite_ch1_awaddr,
    m_axi_lite_ch1_awprot,
    m_axi_lite_ch1_awvalid,
    m_axi_lite_ch1_awready,
    m_axi_lite_ch1_wdata,
    m_axi_lite_ch1_wstrb,
    m_axi_lite_ch1_wvalid,
    m_axi_lite_ch1_wready,
    m_axi_lite_ch1_bresp,
    m_axi_lite_ch1_bvalid,
    m_axi_lite_ch1_bready,
    m_axi_lite_ch1_araddr,
    m_axi_lite_ch1_arvalid,
    m_axi_lite_ch1_arready,
    m_axi_lite_ch1_rdata,
    m_axi_lite_ch1_rvalid,
    m_axi_lite_ch1_rresp,
    m_axi_lite_ch1_rready,
    m_axi_lite_ch2_awaddr,
    m_axi_lite_ch2_awprot,
    m_axi_lite_ch2_awvalid,
    m_axi_lite_ch2_awready,
    m_axi_lite_ch2_wdata,
    m_axi_lite_ch2_wstrb,
    m_axi_lite_ch2_wvalid,
    m_axi_lite_ch2_wready,
    m_axi_lite_ch2_bresp,
    m_axi_lite_ch2_bvalid,
    m_axi_lite_ch2_bready,
    m_axi_lite_ch2_araddr,
    m_axi_lite_ch2_arvalid,
    m_axi_lite_ch2_arready,
    m_axi_lite_ch2_rdata,
    m_axi_lite_ch2_rvalid,
    m_axi_lite_ch2_rresp,
    m_axi_lite_ch2_rready,
    m_axi_lite_ch3_awaddr,
    m_axi_lite_ch3_awprot,
    m_axi_lite_ch3_awvalid,
    m_axi_lite_ch3_awready,
    m_axi_lite_ch3_wdata,
    m_axi_lite_ch3_wstrb,
    m_axi_lite_ch3_wvalid,
    m_axi_lite_ch3_wready,
    m_axi_lite_ch3_bresp,
    m_axi_lite_ch3_bvalid,
    m_axi_lite_ch3_bready,
    m_axi_lite_ch3_araddr,
    m_axi_lite_ch3_arvalid,
    m_axi_lite_ch3_arready,
    m_axi_lite_ch3_rdata,
    m_axi_lite_ch3_rvalid,
    m_axi_lite_ch3_rresp,
    m_axi_lite_ch3_rready,
    m_axi_lite_ch4_awaddr,
    m_axi_lite_ch4_awprot,
    m_axi_lite_ch4_awvalid,
    m_axi_lite_ch4_awready,
    m_axi_lite_ch4_wdata,
    m_axi_lite_ch4_wstrb,
    m_axi_lite_ch4_wvalid,
    m_axi_lite_ch4_wready,
    m_axi_lite_ch4_bresp,
    m_axi_lite_ch4_bvalid,
    m_axi_lite_ch4_bready,
    m_axi_lite_ch4_araddr,
    m_axi_lite_ch4_arvalid,
    m_axi_lite_ch4_arready,
    m_axi_lite_ch4_rdata,
    m_axi_lite_ch4_rvalid,
    m_axi_lite_ch4_rresp,
    m_axi_lite_ch4_rready,
    m_axi_lite_ch5_awaddr,
    m_axi_lite_ch5_awprot,
    m_axi_lite_ch5_awvalid,
    m_axi_lite_ch5_awready,
    m_axi_lite_ch5_wdata,
    m_axi_lite_ch5_wstrb,
    m_axi_lite_ch5_wvalid,
    m_axi_lite_ch5_wready,
    m_axi_lite_ch5_bresp,
    m_axi_lite_ch5_bvalid,
    m_axi_lite_ch5_bready,
    m_axi_lite_ch5_araddr,
    m_axi_lite_ch5_arvalid,
    m_axi_lite_ch5_arready,
    m_axi_lite_ch5_rdata,
    m_axi_lite_ch5_rvalid,
    m_axi_lite_ch5_rresp,
    m_axi_lite_ch5_rready,
    done,
    status);
  input s_axi_aclk;
  input s_axi_aresetn;
  input core_ext_start;
  input core_ext_stop;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [7:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input s_axi_wlast;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [7:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output s_axi_rlast;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [7:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output m_axi_wlast;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [7:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input m_axi_rlast;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;
  input m_axis_1_tready;
  output m_axis_1_tvalid;
  output m_axis_1_tlast;
  output [31:0]m_axis_1_tdata;
  output [3:0]m_axis_1_tstrb;
  output [3:0]m_axis_1_tkeep;
  output [7:0]m_axis_1_tuser;
  output [7:0]m_axis_1_tid;
  output [7:0]m_axis_1_tdest;
  output s_axis_1_tready;
  input s_axis_1_tvalid;
  input s_axis_1_tlast;
  input [31:0]s_axis_1_tdata;
  input [3:0]s_axis_1_tstrb;
  input [3:0]s_axis_1_tkeep;
  input [7:0]s_axis_1_tuser;
  input [7:0]s_axis_1_tid;
  input [7:0]s_axis_1_tdest;
  output [15:0]axis_err_count;
  output s_axis_2_tready;
  input s_axis_2_tvalid;
  input s_axis_2_tlast;
  input [31:0]s_axis_2_tdata;
  input [3:0]s_axis_2_tstrb;
  input [3:0]s_axis_2_tkeep;
  input [7:0]s_axis_2_tuser;
  input [7:0]s_axis_2_tid;
  input [7:0]s_axis_2_tdest;
  input m_axis_2_tready;
  output m_axis_2_tvalid;
  output m_axis_2_tlast;
  output [31:0]m_axis_2_tdata;
  output [3:0]m_axis_2_tstrb;
  output [3:0]m_axis_2_tkeep;
  output [7:0]m_axis_2_tuser;
  output [7:0]m_axis_2_tid;
  output [7:0]m_axis_2_tdest;
  output irq_out;
  output err_out;
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
  output [31:0]m_axi_lite_ch1_araddr;
  output m_axi_lite_ch1_arvalid;
  input m_axi_lite_ch1_arready;
  input [31:0]m_axi_lite_ch1_rdata;
  input m_axi_lite_ch1_rvalid;
  input [1:0]m_axi_lite_ch1_rresp;
  output m_axi_lite_ch1_rready;
  output [31:0]m_axi_lite_ch2_awaddr;
  output [2:0]m_axi_lite_ch2_awprot;
  output m_axi_lite_ch2_awvalid;
  input m_axi_lite_ch2_awready;
  output [31:0]m_axi_lite_ch2_wdata;
  output [3:0]m_axi_lite_ch2_wstrb;
  output m_axi_lite_ch2_wvalid;
  input m_axi_lite_ch2_wready;
  input [1:0]m_axi_lite_ch2_bresp;
  input m_axi_lite_ch2_bvalid;
  output m_axi_lite_ch2_bready;
  output [31:0]m_axi_lite_ch2_araddr;
  output m_axi_lite_ch2_arvalid;
  input m_axi_lite_ch2_arready;
  input [31:0]m_axi_lite_ch2_rdata;
  input m_axi_lite_ch2_rvalid;
  input [1:0]m_axi_lite_ch2_rresp;
  output m_axi_lite_ch2_rready;
  output [31:0]m_axi_lite_ch3_awaddr;
  output [2:0]m_axi_lite_ch3_awprot;
  output m_axi_lite_ch3_awvalid;
  input m_axi_lite_ch3_awready;
  output [31:0]m_axi_lite_ch3_wdata;
  output [3:0]m_axi_lite_ch3_wstrb;
  output m_axi_lite_ch3_wvalid;
  input m_axi_lite_ch3_wready;
  input [1:0]m_axi_lite_ch3_bresp;
  input m_axi_lite_ch3_bvalid;
  output m_axi_lite_ch3_bready;
  output [31:0]m_axi_lite_ch3_araddr;
  output m_axi_lite_ch3_arvalid;
  input m_axi_lite_ch3_arready;
  input [31:0]m_axi_lite_ch3_rdata;
  input m_axi_lite_ch3_rvalid;
  input [1:0]m_axi_lite_ch3_rresp;
  output m_axi_lite_ch3_rready;
  output [31:0]m_axi_lite_ch4_awaddr;
  output [2:0]m_axi_lite_ch4_awprot;
  output m_axi_lite_ch4_awvalid;
  input m_axi_lite_ch4_awready;
  output [31:0]m_axi_lite_ch4_wdata;
  output [3:0]m_axi_lite_ch4_wstrb;
  output m_axi_lite_ch4_wvalid;
  input m_axi_lite_ch4_wready;
  input [1:0]m_axi_lite_ch4_bresp;
  input m_axi_lite_ch4_bvalid;
  output m_axi_lite_ch4_bready;
  output [31:0]m_axi_lite_ch4_araddr;
  output m_axi_lite_ch4_arvalid;
  input m_axi_lite_ch4_arready;
  input [31:0]m_axi_lite_ch4_rdata;
  input m_axi_lite_ch4_rvalid;
  input [1:0]m_axi_lite_ch4_rresp;
  output m_axi_lite_ch4_rready;
  output [31:0]m_axi_lite_ch5_awaddr;
  output [2:0]m_axi_lite_ch5_awprot;
  output m_axi_lite_ch5_awvalid;
  input m_axi_lite_ch5_awready;
  output [31:0]m_axi_lite_ch5_wdata;
  output [3:0]m_axi_lite_ch5_wstrb;
  output m_axi_lite_ch5_wvalid;
  input m_axi_lite_ch5_wready;
  input [1:0]m_axi_lite_ch5_bresp;
  input m_axi_lite_ch5_bvalid;
  output m_axi_lite_ch5_bready;
  output [31:0]m_axi_lite_ch5_araddr;
  output m_axi_lite_ch5_arvalid;
  input m_axi_lite_ch5_arready;
  input [31:0]m_axi_lite_ch5_rdata;
  input m_axi_lite_ch5_rvalid;
  input [1:0]m_axi_lite_ch5_rresp;
  output m_axi_lite_ch5_rready;
  output done;
  output [31:0]status;

  wire \<const0> ;
  wire \<const1> ;
  wire core_ext_start;
  wire core_ext_stop;
  wire done;
  wire flop_ze_out;
  wire m_axi_lite_ch1_arready;
  wire [31:0]m_axi_lite_ch1_awaddr;
  wire m_axi_lite_ch1_awready;
  wire m_axi_lite_ch1_awvalid;
  wire m_axi_lite_ch1_bready;
  wire [1:0]m_axi_lite_ch1_bresp;
  wire m_axi_lite_ch1_bvalid;
  wire [31:0]m_axi_lite_ch1_rdata;
  wire [1:0]m_axi_lite_ch1_rresp;
  wire m_axi_lite_ch1_rvalid;
  wire m_axi_lite_ch1_wready;
  wire m_axi_lite_ch1_wvalid;
  wire m_axi_lite_ch2_arready;
  wire m_axi_lite_ch2_awready;
  wire [1:0]m_axi_lite_ch2_bresp;
  wire m_axi_lite_ch2_bvalid;
  wire [31:0]m_axi_lite_ch2_rdata;
  wire [1:0]m_axi_lite_ch2_rresp;
  wire m_axi_lite_ch2_rvalid;
  wire m_axi_lite_ch2_wready;
  wire m_axi_lite_ch3_arready;
  wire m_axi_lite_ch3_awready;
  wire [1:0]m_axi_lite_ch3_bresp;
  wire m_axi_lite_ch3_bvalid;
  wire [31:0]m_axi_lite_ch3_rdata;
  wire [1:0]m_axi_lite_ch3_rresp;
  wire m_axi_lite_ch3_rvalid;
  wire m_axi_lite_ch3_wready;
  wire m_axi_lite_ch4_arready;
  wire m_axi_lite_ch4_awready;
  wire [1:0]m_axi_lite_ch4_bresp;
  wire m_axi_lite_ch4_bvalid;
  wire [31:0]m_axi_lite_ch4_rdata;
  wire [1:0]m_axi_lite_ch4_rresp;
  wire m_axi_lite_ch4_rvalid;
  wire m_axi_lite_ch4_wready;
  wire m_axi_lite_ch5_arready;
  wire m_axi_lite_ch5_awready;
  wire [1:0]m_axi_lite_ch5_bresp;
  wire m_axi_lite_ch5_bvalid;
  wire [31:0]m_axi_lite_ch5_rdata;
  wire [1:0]m_axi_lite_ch5_rresp;
  wire m_axi_lite_ch5_rvalid;
  wire [31:0]m_axi_lite_ch5_wdata;
  wire m_axi_lite_ch5_wready;
  wire n_0_232;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire st_flop_ze_out;
  wire [9:0]\^status ;

  assign axis_err_count[15] = \<const0> ;
  assign axis_err_count[14] = \<const0> ;
  assign axis_err_count[13] = \<const0> ;
  assign axis_err_count[12] = \<const0> ;
  assign axis_err_count[11] = \<const0> ;
  assign axis_err_count[10] = \<const0> ;
  assign axis_err_count[9] = \<const0> ;
  assign axis_err_count[8] = \<const0> ;
  assign axis_err_count[7] = \<const0> ;
  assign axis_err_count[6] = \<const0> ;
  assign axis_err_count[5] = \<const0> ;
  assign axis_err_count[4] = \<const0> ;
  assign axis_err_count[3] = \<const0> ;
  assign axis_err_count[2] = \<const0> ;
  assign axis_err_count[1] = \<const0> ;
  assign axis_err_count[0] = \<const0> ;
  assign err_out = \<const0> ;
  assign irq_out = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[7] = \<const0> ;
  assign m_axi_aruser[6] = \<const0> ;
  assign m_axi_aruser[5] = \<const0> ;
  assign m_axi_aruser[4] = \<const0> ;
  assign m_axi_aruser[3] = \<const0> ;
  assign m_axi_aruser[2] = \<const0> ;
  assign m_axi_aruser[1] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[7] = \<const0> ;
  assign m_axi_awuser[6] = \<const0> ;
  assign m_axi_awuser[5] = \<const0> ;
  assign m_axi_awuser[4] = \<const0> ;
  assign m_axi_awuser[3] = \<const0> ;
  assign m_axi_awuser[2] = \<const0> ;
  assign m_axi_awuser[1] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_lite_ch1_araddr[31] = \<const0> ;
  assign m_axi_lite_ch1_araddr[30] = \<const0> ;
  assign m_axi_lite_ch1_araddr[29] = \<const0> ;
  assign m_axi_lite_ch1_araddr[28] = \<const0> ;
  assign m_axi_lite_ch1_araddr[27] = \<const0> ;
  assign m_axi_lite_ch1_araddr[26] = \<const0> ;
  assign m_axi_lite_ch1_araddr[25] = \<const0> ;
  assign m_axi_lite_ch1_araddr[24] = \<const0> ;
  assign m_axi_lite_ch1_araddr[23] = \<const0> ;
  assign m_axi_lite_ch1_araddr[22] = \<const0> ;
  assign m_axi_lite_ch1_araddr[21] = \<const0> ;
  assign m_axi_lite_ch1_araddr[20] = \<const0> ;
  assign m_axi_lite_ch1_araddr[19] = \<const0> ;
  assign m_axi_lite_ch1_araddr[18] = \<const0> ;
  assign m_axi_lite_ch1_araddr[17] = \<const0> ;
  assign m_axi_lite_ch1_araddr[16] = \<const0> ;
  assign m_axi_lite_ch1_araddr[15] = \<const0> ;
  assign m_axi_lite_ch1_araddr[14] = \<const0> ;
  assign m_axi_lite_ch1_araddr[13] = \<const0> ;
  assign m_axi_lite_ch1_araddr[12] = \<const0> ;
  assign m_axi_lite_ch1_araddr[11] = \<const0> ;
  assign m_axi_lite_ch1_araddr[10] = \<const0> ;
  assign m_axi_lite_ch1_araddr[9] = \<const0> ;
  assign m_axi_lite_ch1_araddr[8] = \<const0> ;
  assign m_axi_lite_ch1_araddr[7] = \<const0> ;
  assign m_axi_lite_ch1_araddr[6] = \<const0> ;
  assign m_axi_lite_ch1_araddr[5] = \<const0> ;
  assign m_axi_lite_ch1_araddr[4] = \<const0> ;
  assign m_axi_lite_ch1_araddr[3] = \<const0> ;
  assign m_axi_lite_ch1_araddr[2] = \<const0> ;
  assign m_axi_lite_ch1_araddr[1] = \<const0> ;
  assign m_axi_lite_ch1_araddr[0] = \<const0> ;
  assign m_axi_lite_ch1_arvalid = \<const0> ;
  assign m_axi_lite_ch1_awprot[2] = \<const0> ;
  assign m_axi_lite_ch1_awprot[1] = \<const0> ;
  assign m_axi_lite_ch1_awprot[0] = \<const0> ;
  assign m_axi_lite_ch1_rready = \<const0> ;
  assign m_axi_lite_ch1_wdata[31:0] = m_axi_lite_ch5_wdata;
  assign m_axi_lite_ch1_wstrb[3] = \<const1> ;
  assign m_axi_lite_ch1_wstrb[2] = \<const1> ;
  assign m_axi_lite_ch1_wstrb[1] = \<const1> ;
  assign m_axi_lite_ch1_wstrb[0] = \<const1> ;
  assign m_axi_lite_ch2_araddr[31] = \<const0> ;
  assign m_axi_lite_ch2_araddr[30] = \<const0> ;
  assign m_axi_lite_ch2_araddr[29] = \<const0> ;
  assign m_axi_lite_ch2_araddr[28] = \<const0> ;
  assign m_axi_lite_ch2_araddr[27] = \<const0> ;
  assign m_axi_lite_ch2_araddr[26] = \<const0> ;
  assign m_axi_lite_ch2_araddr[25] = \<const0> ;
  assign m_axi_lite_ch2_araddr[24] = \<const0> ;
  assign m_axi_lite_ch2_araddr[23] = \<const0> ;
  assign m_axi_lite_ch2_araddr[22] = \<const0> ;
  assign m_axi_lite_ch2_araddr[21] = \<const0> ;
  assign m_axi_lite_ch2_araddr[20] = \<const0> ;
  assign m_axi_lite_ch2_araddr[19] = \<const0> ;
  assign m_axi_lite_ch2_araddr[18] = \<const0> ;
  assign m_axi_lite_ch2_araddr[17] = \<const0> ;
  assign m_axi_lite_ch2_araddr[16] = \<const0> ;
  assign m_axi_lite_ch2_araddr[15] = \<const0> ;
  assign m_axi_lite_ch2_araddr[14] = \<const0> ;
  assign m_axi_lite_ch2_araddr[13] = \<const0> ;
  assign m_axi_lite_ch2_araddr[12] = \<const0> ;
  assign m_axi_lite_ch2_araddr[11] = \<const0> ;
  assign m_axi_lite_ch2_araddr[10] = \<const0> ;
  assign m_axi_lite_ch2_araddr[9] = \<const0> ;
  assign m_axi_lite_ch2_araddr[8] = \<const0> ;
  assign m_axi_lite_ch2_araddr[7] = \<const0> ;
  assign m_axi_lite_ch2_araddr[6] = \<const0> ;
  assign m_axi_lite_ch2_araddr[5] = \<const0> ;
  assign m_axi_lite_ch2_araddr[4] = \<const0> ;
  assign m_axi_lite_ch2_araddr[3] = \<const0> ;
  assign m_axi_lite_ch2_araddr[2] = \<const0> ;
  assign m_axi_lite_ch2_araddr[1] = \<const0> ;
  assign m_axi_lite_ch2_araddr[0] = \<const0> ;
  assign m_axi_lite_ch2_arvalid = \<const0> ;
  assign m_axi_lite_ch2_awaddr[31:0] = m_axi_lite_ch1_awaddr;
  assign m_axi_lite_ch2_awprot[2] = \<const0> ;
  assign m_axi_lite_ch2_awprot[1] = \<const0> ;
  assign m_axi_lite_ch2_awprot[0] = \<const0> ;
  assign m_axi_lite_ch2_awvalid = \<const0> ;
  assign m_axi_lite_ch2_bready = \<const0> ;
  assign m_axi_lite_ch2_rready = \<const0> ;
  assign m_axi_lite_ch2_wdata[31:0] = m_axi_lite_ch5_wdata;
  assign m_axi_lite_ch2_wstrb[3] = \<const1> ;
  assign m_axi_lite_ch2_wstrb[2] = \<const1> ;
  assign m_axi_lite_ch2_wstrb[1] = \<const1> ;
  assign m_axi_lite_ch2_wstrb[0] = \<const1> ;
  assign m_axi_lite_ch2_wvalid = \<const0> ;
  assign m_axi_lite_ch3_araddr[31] = \<const0> ;
  assign m_axi_lite_ch3_araddr[30] = \<const0> ;
  assign m_axi_lite_ch3_araddr[29] = \<const0> ;
  assign m_axi_lite_ch3_araddr[28] = \<const0> ;
  assign m_axi_lite_ch3_araddr[27] = \<const0> ;
  assign m_axi_lite_ch3_araddr[26] = \<const0> ;
  assign m_axi_lite_ch3_araddr[25] = \<const0> ;
  assign m_axi_lite_ch3_araddr[24] = \<const0> ;
  assign m_axi_lite_ch3_araddr[23] = \<const0> ;
  assign m_axi_lite_ch3_araddr[22] = \<const0> ;
  assign m_axi_lite_ch3_araddr[21] = \<const0> ;
  assign m_axi_lite_ch3_araddr[20] = \<const0> ;
  assign m_axi_lite_ch3_araddr[19] = \<const0> ;
  assign m_axi_lite_ch3_araddr[18] = \<const0> ;
  assign m_axi_lite_ch3_araddr[17] = \<const0> ;
  assign m_axi_lite_ch3_araddr[16] = \<const0> ;
  assign m_axi_lite_ch3_araddr[15] = \<const0> ;
  assign m_axi_lite_ch3_araddr[14] = \<const0> ;
  assign m_axi_lite_ch3_araddr[13] = \<const0> ;
  assign m_axi_lite_ch3_araddr[12] = \<const0> ;
  assign m_axi_lite_ch3_araddr[11] = \<const0> ;
  assign m_axi_lite_ch3_araddr[10] = \<const0> ;
  assign m_axi_lite_ch3_araddr[9] = \<const0> ;
  assign m_axi_lite_ch3_araddr[8] = \<const0> ;
  assign m_axi_lite_ch3_araddr[7] = \<const0> ;
  assign m_axi_lite_ch3_araddr[6] = \<const0> ;
  assign m_axi_lite_ch3_araddr[5] = \<const0> ;
  assign m_axi_lite_ch3_araddr[4] = \<const0> ;
  assign m_axi_lite_ch3_araddr[3] = \<const0> ;
  assign m_axi_lite_ch3_araddr[2] = \<const0> ;
  assign m_axi_lite_ch3_araddr[1] = \<const0> ;
  assign m_axi_lite_ch3_araddr[0] = \<const0> ;
  assign m_axi_lite_ch3_arvalid = \<const0> ;
  assign m_axi_lite_ch3_awaddr[31:0] = m_axi_lite_ch1_awaddr;
  assign m_axi_lite_ch3_awprot[2] = \<const0> ;
  assign m_axi_lite_ch3_awprot[1] = \<const0> ;
  assign m_axi_lite_ch3_awprot[0] = \<const0> ;
  assign m_axi_lite_ch3_awvalid = \<const0> ;
  assign m_axi_lite_ch3_bready = \<const0> ;
  assign m_axi_lite_ch3_rready = \<const0> ;
  assign m_axi_lite_ch3_wdata[31:0] = m_axi_lite_ch5_wdata;
  assign m_axi_lite_ch3_wstrb[3] = \<const1> ;
  assign m_axi_lite_ch3_wstrb[2] = \<const1> ;
  assign m_axi_lite_ch3_wstrb[1] = \<const1> ;
  assign m_axi_lite_ch3_wstrb[0] = \<const1> ;
  assign m_axi_lite_ch3_wvalid = \<const0> ;
  assign m_axi_lite_ch4_araddr[31] = \<const0> ;
  assign m_axi_lite_ch4_araddr[30] = \<const0> ;
  assign m_axi_lite_ch4_araddr[29] = \<const0> ;
  assign m_axi_lite_ch4_araddr[28] = \<const0> ;
  assign m_axi_lite_ch4_araddr[27] = \<const0> ;
  assign m_axi_lite_ch4_araddr[26] = \<const0> ;
  assign m_axi_lite_ch4_araddr[25] = \<const0> ;
  assign m_axi_lite_ch4_araddr[24] = \<const0> ;
  assign m_axi_lite_ch4_araddr[23] = \<const0> ;
  assign m_axi_lite_ch4_araddr[22] = \<const0> ;
  assign m_axi_lite_ch4_araddr[21] = \<const0> ;
  assign m_axi_lite_ch4_araddr[20] = \<const0> ;
  assign m_axi_lite_ch4_araddr[19] = \<const0> ;
  assign m_axi_lite_ch4_araddr[18] = \<const0> ;
  assign m_axi_lite_ch4_araddr[17] = \<const0> ;
  assign m_axi_lite_ch4_araddr[16] = \<const0> ;
  assign m_axi_lite_ch4_araddr[15] = \<const0> ;
  assign m_axi_lite_ch4_araddr[14] = \<const0> ;
  assign m_axi_lite_ch4_araddr[13] = \<const0> ;
  assign m_axi_lite_ch4_araddr[12] = \<const0> ;
  assign m_axi_lite_ch4_araddr[11] = \<const0> ;
  assign m_axi_lite_ch4_araddr[10] = \<const0> ;
  assign m_axi_lite_ch4_araddr[9] = \<const0> ;
  assign m_axi_lite_ch4_araddr[8] = \<const0> ;
  assign m_axi_lite_ch4_araddr[7] = \<const0> ;
  assign m_axi_lite_ch4_araddr[6] = \<const0> ;
  assign m_axi_lite_ch4_araddr[5] = \<const0> ;
  assign m_axi_lite_ch4_araddr[4] = \<const0> ;
  assign m_axi_lite_ch4_araddr[3] = \<const0> ;
  assign m_axi_lite_ch4_araddr[2] = \<const0> ;
  assign m_axi_lite_ch4_araddr[1] = \<const0> ;
  assign m_axi_lite_ch4_araddr[0] = \<const0> ;
  assign m_axi_lite_ch4_arvalid = \<const0> ;
  assign m_axi_lite_ch4_awaddr[31:0] = m_axi_lite_ch1_awaddr;
  assign m_axi_lite_ch4_awprot[2] = \<const0> ;
  assign m_axi_lite_ch4_awprot[1] = \<const0> ;
  assign m_axi_lite_ch4_awprot[0] = \<const0> ;
  assign m_axi_lite_ch4_awvalid = \<const0> ;
  assign m_axi_lite_ch4_bready = \<const0> ;
  assign m_axi_lite_ch4_rready = \<const0> ;
  assign m_axi_lite_ch4_wdata[31:0] = m_axi_lite_ch5_wdata;
  assign m_axi_lite_ch4_wstrb[3] = \<const1> ;
  assign m_axi_lite_ch4_wstrb[2] = \<const1> ;
  assign m_axi_lite_ch4_wstrb[1] = \<const1> ;
  assign m_axi_lite_ch4_wstrb[0] = \<const1> ;
  assign m_axi_lite_ch4_wvalid = \<const0> ;
  assign m_axi_lite_ch5_araddr[31] = \<const0> ;
  assign m_axi_lite_ch5_araddr[30] = \<const0> ;
  assign m_axi_lite_ch5_araddr[29] = \<const0> ;
  assign m_axi_lite_ch5_araddr[28] = \<const0> ;
  assign m_axi_lite_ch5_araddr[27] = \<const0> ;
  assign m_axi_lite_ch5_araddr[26] = \<const0> ;
  assign m_axi_lite_ch5_araddr[25] = \<const0> ;
  assign m_axi_lite_ch5_araddr[24] = \<const0> ;
  assign m_axi_lite_ch5_araddr[23] = \<const0> ;
  assign m_axi_lite_ch5_araddr[22] = \<const0> ;
  assign m_axi_lite_ch5_araddr[21] = \<const0> ;
  assign m_axi_lite_ch5_araddr[20] = \<const0> ;
  assign m_axi_lite_ch5_araddr[19] = \<const0> ;
  assign m_axi_lite_ch5_araddr[18] = \<const0> ;
  assign m_axi_lite_ch5_araddr[17] = \<const0> ;
  assign m_axi_lite_ch5_araddr[16] = \<const0> ;
  assign m_axi_lite_ch5_araddr[15] = \<const0> ;
  assign m_axi_lite_ch5_araddr[14] = \<const0> ;
  assign m_axi_lite_ch5_araddr[13] = \<const0> ;
  assign m_axi_lite_ch5_araddr[12] = \<const0> ;
  assign m_axi_lite_ch5_araddr[11] = \<const0> ;
  assign m_axi_lite_ch5_araddr[10] = \<const0> ;
  assign m_axi_lite_ch5_araddr[9] = \<const0> ;
  assign m_axi_lite_ch5_araddr[8] = \<const0> ;
  assign m_axi_lite_ch5_araddr[7] = \<const0> ;
  assign m_axi_lite_ch5_araddr[6] = \<const0> ;
  assign m_axi_lite_ch5_araddr[5] = \<const0> ;
  assign m_axi_lite_ch5_araddr[4] = \<const0> ;
  assign m_axi_lite_ch5_araddr[3] = \<const0> ;
  assign m_axi_lite_ch5_araddr[2] = \<const0> ;
  assign m_axi_lite_ch5_araddr[1] = \<const0> ;
  assign m_axi_lite_ch5_araddr[0] = \<const0> ;
  assign m_axi_lite_ch5_arvalid = \<const0> ;
  assign m_axi_lite_ch5_awaddr[31:0] = m_axi_lite_ch1_awaddr;
  assign m_axi_lite_ch5_awprot[2] = \<const0> ;
  assign m_axi_lite_ch5_awprot[1] = \<const0> ;
  assign m_axi_lite_ch5_awprot[0] = \<const0> ;
  assign m_axi_lite_ch5_awvalid = \<const0> ;
  assign m_axi_lite_ch5_bready = \<const0> ;
  assign m_axi_lite_ch5_rready = \<const0> ;
  assign m_axi_lite_ch5_wstrb[3] = \<const1> ;
  assign m_axi_lite_ch5_wstrb[2] = \<const1> ;
  assign m_axi_lite_ch5_wstrb[1] = \<const1> ;
  assign m_axi_lite_ch5_wstrb[0] = \<const1> ;
  assign m_axi_lite_ch5_wvalid = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_1_tdata[31] = \<const0> ;
  assign m_axis_1_tdata[30] = \<const0> ;
  assign m_axis_1_tdata[29] = \<const0> ;
  assign m_axis_1_tdata[28] = \<const0> ;
  assign m_axis_1_tdata[27] = \<const0> ;
  assign m_axis_1_tdata[26] = \<const0> ;
  assign m_axis_1_tdata[25] = \<const0> ;
  assign m_axis_1_tdata[24] = \<const0> ;
  assign m_axis_1_tdata[23] = \<const0> ;
  assign m_axis_1_tdata[22] = \<const0> ;
  assign m_axis_1_tdata[21] = \<const0> ;
  assign m_axis_1_tdata[20] = \<const0> ;
  assign m_axis_1_tdata[19] = \<const0> ;
  assign m_axis_1_tdata[18] = \<const0> ;
  assign m_axis_1_tdata[17] = \<const0> ;
  assign m_axis_1_tdata[16] = \<const0> ;
  assign m_axis_1_tdata[15] = \<const0> ;
  assign m_axis_1_tdata[14] = \<const0> ;
  assign m_axis_1_tdata[13] = \<const0> ;
  assign m_axis_1_tdata[12] = \<const0> ;
  assign m_axis_1_tdata[11] = \<const0> ;
  assign m_axis_1_tdata[10] = \<const0> ;
  assign m_axis_1_tdata[9] = \<const0> ;
  assign m_axis_1_tdata[8] = \<const0> ;
  assign m_axis_1_tdata[7] = \<const0> ;
  assign m_axis_1_tdata[6] = \<const0> ;
  assign m_axis_1_tdata[5] = \<const0> ;
  assign m_axis_1_tdata[4] = \<const0> ;
  assign m_axis_1_tdata[3] = \<const0> ;
  assign m_axis_1_tdata[2] = \<const0> ;
  assign m_axis_1_tdata[1] = \<const0> ;
  assign m_axis_1_tdata[0] = \<const0> ;
  assign m_axis_1_tdest[7] = \<const0> ;
  assign m_axis_1_tdest[6] = \<const0> ;
  assign m_axis_1_tdest[5] = \<const0> ;
  assign m_axis_1_tdest[4] = \<const0> ;
  assign m_axis_1_tdest[3] = \<const0> ;
  assign m_axis_1_tdest[2] = \<const0> ;
  assign m_axis_1_tdest[1] = \<const0> ;
  assign m_axis_1_tdest[0] = \<const0> ;
  assign m_axis_1_tid[7] = \<const0> ;
  assign m_axis_1_tid[6] = \<const0> ;
  assign m_axis_1_tid[5] = \<const0> ;
  assign m_axis_1_tid[4] = \<const0> ;
  assign m_axis_1_tid[3] = \<const0> ;
  assign m_axis_1_tid[2] = \<const0> ;
  assign m_axis_1_tid[1] = \<const0> ;
  assign m_axis_1_tid[0] = \<const0> ;
  assign m_axis_1_tkeep[3] = \<const0> ;
  assign m_axis_1_tkeep[2] = \<const0> ;
  assign m_axis_1_tkeep[1] = \<const0> ;
  assign m_axis_1_tkeep[0] = \<const0> ;
  assign m_axis_1_tlast = \<const0> ;
  assign m_axis_1_tstrb[3] = \<const0> ;
  assign m_axis_1_tstrb[2] = \<const0> ;
  assign m_axis_1_tstrb[1] = \<const0> ;
  assign m_axis_1_tstrb[0] = \<const0> ;
  assign m_axis_1_tuser[7] = \<const0> ;
  assign m_axis_1_tuser[6] = \<const0> ;
  assign m_axis_1_tuser[5] = \<const0> ;
  assign m_axis_1_tuser[4] = \<const0> ;
  assign m_axis_1_tuser[3] = \<const0> ;
  assign m_axis_1_tuser[2] = \<const0> ;
  assign m_axis_1_tuser[1] = \<const0> ;
  assign m_axis_1_tuser[0] = \<const0> ;
  assign m_axis_1_tvalid = \<const0> ;
  assign m_axis_2_tdata[31] = \<const0> ;
  assign m_axis_2_tdata[30] = \<const0> ;
  assign m_axis_2_tdata[29] = \<const0> ;
  assign m_axis_2_tdata[28] = \<const0> ;
  assign m_axis_2_tdata[27] = \<const0> ;
  assign m_axis_2_tdata[26] = \<const0> ;
  assign m_axis_2_tdata[25] = \<const0> ;
  assign m_axis_2_tdata[24] = \<const0> ;
  assign m_axis_2_tdata[23] = \<const0> ;
  assign m_axis_2_tdata[22] = \<const0> ;
  assign m_axis_2_tdata[21] = \<const0> ;
  assign m_axis_2_tdata[20] = \<const0> ;
  assign m_axis_2_tdata[19] = \<const0> ;
  assign m_axis_2_tdata[18] = \<const0> ;
  assign m_axis_2_tdata[17] = \<const0> ;
  assign m_axis_2_tdata[16] = \<const0> ;
  assign m_axis_2_tdata[15] = \<const0> ;
  assign m_axis_2_tdata[14] = \<const0> ;
  assign m_axis_2_tdata[13] = \<const0> ;
  assign m_axis_2_tdata[12] = \<const0> ;
  assign m_axis_2_tdata[11] = \<const0> ;
  assign m_axis_2_tdata[10] = \<const0> ;
  assign m_axis_2_tdata[9] = \<const0> ;
  assign m_axis_2_tdata[8] = \<const0> ;
  assign m_axis_2_tdata[7] = \<const0> ;
  assign m_axis_2_tdata[6] = \<const0> ;
  assign m_axis_2_tdata[5] = \<const0> ;
  assign m_axis_2_tdata[4] = \<const0> ;
  assign m_axis_2_tdata[3] = \<const0> ;
  assign m_axis_2_tdata[2] = \<const0> ;
  assign m_axis_2_tdata[1] = \<const0> ;
  assign m_axis_2_tdata[0] = \<const0> ;
  assign m_axis_2_tdest[7] = \<const0> ;
  assign m_axis_2_tdest[6] = \<const0> ;
  assign m_axis_2_tdest[5] = \<const0> ;
  assign m_axis_2_tdest[4] = \<const0> ;
  assign m_axis_2_tdest[3] = \<const0> ;
  assign m_axis_2_tdest[2] = \<const0> ;
  assign m_axis_2_tdest[1] = \<const0> ;
  assign m_axis_2_tdest[0] = \<const0> ;
  assign m_axis_2_tid[7] = \<const0> ;
  assign m_axis_2_tid[6] = \<const0> ;
  assign m_axis_2_tid[5] = \<const0> ;
  assign m_axis_2_tid[4] = \<const0> ;
  assign m_axis_2_tid[3] = \<const0> ;
  assign m_axis_2_tid[2] = \<const0> ;
  assign m_axis_2_tid[1] = \<const0> ;
  assign m_axis_2_tid[0] = \<const0> ;
  assign m_axis_2_tkeep[3] = \<const0> ;
  assign m_axis_2_tkeep[2] = \<const0> ;
  assign m_axis_2_tkeep[1] = \<const0> ;
  assign m_axis_2_tkeep[0] = \<const0> ;
  assign m_axis_2_tlast = \<const0> ;
  assign m_axis_2_tstrb[3] = \<const0> ;
  assign m_axis_2_tstrb[2] = \<const0> ;
  assign m_axis_2_tstrb[1] = \<const0> ;
  assign m_axis_2_tstrb[0] = \<const0> ;
  assign m_axis_2_tuser[7] = \<const0> ;
  assign m_axis_2_tuser[6] = \<const0> ;
  assign m_axis_2_tuser[5] = \<const0> ;
  assign m_axis_2_tuser[4] = \<const0> ;
  assign m_axis_2_tuser[3] = \<const0> ;
  assign m_axis_2_tuser[2] = \<const0> ;
  assign m_axis_2_tuser[1] = \<const0> ;
  assign m_axis_2_tuser[0] = \<const0> ;
  assign m_axis_2_tvalid = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_1_tready = \<const0> ;
  assign s_axis_2_tready = \<const0> ;
  assign status[31] = \<const0> ;
  assign status[30] = \<const0> ;
  assign status[29] = \<const0> ;
  assign status[28] = \<const0> ;
  assign status[27] = \<const0> ;
  assign status[26] = \<const0> ;
  assign status[25] = \<const0> ;
  assign status[24] = \<const0> ;
  assign status[23] = \<const0> ;
  assign status[22] = \<const0> ;
  assign status[21] = \<const0> ;
  assign status[20] = \<const0> ;
  assign status[19] = \<const0> ;
  assign status[18] = \<const0> ;
  assign status[17] = \<const0> ;
  assign status[16] = \<const0> ;
  assign status[15] = \<const0> ;
  assign status[14] = \<const0> ;
  assign status[13] = \<const0> ;
  assign status[12] = \<const0> ;
  assign status[11] = \<const0> ;
  assign status[10] = \<const0> ;
  assign status[9:0] = \^status [9:0];
axi_traffic_gen_0_axi_traffic_gen_v2_0_systeminit_top \ATG_MODE_SYSTEM_INIT_TEST.systeminit_top 
       (.O1(m_axi_lite_ch1_awvalid),
        .O2(m_axi_lite_ch1_bready),
        .done(done),
        .m_axi_lite_ch1_awaddr(m_axi_lite_ch1_awaddr),
        .m_axi_lite_ch1_awready(m_axi_lite_ch1_awready),
        .m_axi_lite_ch1_bvalid(m_axi_lite_ch1_bvalid),
        .m_axi_lite_ch1_wready(m_axi_lite_ch1_wready),
        .m_axi_lite_ch1_wvalid(m_axi_lite_ch1_wvalid),
        .m_axi_lite_ch5_wdata(m_axi_lite_ch5_wdata),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .status(\^status ));
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
axi_traffic_gen_0_axi_traffic_gen_v2_0_asynch_rst_ff ext_st_sync_flop_0
       (.core_ext_stop(core_ext_stop),
        .s_axi_aclk(s_axi_aclk),
        .st_flop_ze_out(st_flop_ze_out));
axi_traffic_gen_0_axi_traffic_gen_v2_0_asynch_rst_ff_0 ext_st_sync_flop_1
       (.core_ext_stop(core_ext_stop),
        .s_axi_aclk(s_axi_aclk),
        .st_flop_ze_out(st_flop_ze_out));
axi_traffic_gen_0_axi_traffic_gen_v2_0_asynch_rst_ff_1 ext_sync_flop_0
       (.core_ext_start(core_ext_start),
        .flop_ze_out(flop_ze_out),
        .s_axi_aclk(s_axi_aclk));
axi_traffic_gen_0_axi_traffic_gen_v2_0_asynch_rst_ff_2 ext_sync_flop_1
       (.core_ext_start(core_ext_start),
        .flop_ze_out(flop_ze_out),
        .s_axi_aclk(s_axi_aclk));
LUT1 #(
    .INIT(2'h1)) 
     i_232
       (.I0(s_axi_aresetn),
        .O(n_0_232));
endmodule

(* C_FAMILY = "virtex7" *) (* C_ADDR_WIDTH = "4" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "16" *) (* C_HAS_CLK = "1" *) (* C_HAS_D = "0" *) 
(* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) (* C_HAS_I_CE = "0" *) 
(* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) (* C_HAS_QDPO_CLK = "0" *) 
(* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) (* C_HAS_QSPO = "1" *) 
(* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) (* C_HAS_QSPO_SRST = "1" *) 
(* C_HAS_SPO = "0" *) (* C_HAS_WE = "0" *) (* C_MEM_INIT_FILE = "axi_traffic_gen_0_addr.mif" *) 
(* C_ELABORATION_DIR = "./" *) (* C_MEM_TYPE = "0" *) (* C_PIPELINE_STAGES = "0" *) 
(* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) (* C_READ_MIF = "1" *) 
(* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) (* C_SYNC_ENABLE = "1" *) 
(* C_WIDTH = "32" *) (* C_PARSER_TYPE = "1" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0" *) 
module axi_traffic_gen_0_dist_mem_gen_v8_0
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [3:0]a;
  input [31:0]d;
  input [3:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [3:0]a;
  wire clk;
  wire [31:0]qspo;
  wire qspo_srst;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29] = \<const0> ;
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26] = \<const0> ;
  assign spo[25] = \<const0> ;
  assign spo[24] = \<const0> ;
  assign spo[23] = \<const0> ;
  assign spo[22] = \<const0> ;
  assign spo[21] = \<const0> ;
  assign spo[20] = \<const0> ;
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17] = \<const0> ;
  assign spo[16] = \<const0> ;
  assign spo[15] = \<const0> ;
  assign spo[14] = \<const0> ;
  assign spo[13] = \<const0> ;
  assign spo[12] = \<const0> ;
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8] = \<const0> ;
  assign spo[7] = \<const0> ;
  assign spo[6] = \<const0> ;
  assign spo[5] = \<const0> ;
  assign spo[4] = \<const0> ;
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1] = \<const0> ;
  assign spo[0] = \<const0> ;
GND GND
       (.G(\<const0> ));
axi_traffic_gen_0_dist_mem_gen_v8_0_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .qspo(qspo),
        .qspo_srst(qspo_srst));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0" *) (* C_FAMILY = "virtex7" *) (* C_ADDR_WIDTH = "4" *) 
(* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "16" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "1" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "1" *) (* C_HAS_SPO = "0" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "axi_traffic_gen_0_data.mif" *) (* C_ELABORATION_DIR = "./" *) (* C_MEM_TYPE = "0" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* C_PARSER_TYPE = "1" *) 
module axi_traffic_gen_0_dist_mem_gen_v8_0__parameterized0
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [3:0]a;
  input [31:0]d;
  input [3:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [3:0]a;
  wire clk;
  wire [31:0]qspo;
  wire qspo_srst;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29] = \<const0> ;
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26] = \<const0> ;
  assign spo[25] = \<const0> ;
  assign spo[24] = \<const0> ;
  assign spo[23] = \<const0> ;
  assign spo[22] = \<const0> ;
  assign spo[21] = \<const0> ;
  assign spo[20] = \<const0> ;
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17] = \<const0> ;
  assign spo[16] = \<const0> ;
  assign spo[15] = \<const0> ;
  assign spo[14] = \<const0> ;
  assign spo[13] = \<const0> ;
  assign spo[12] = \<const0> ;
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8] = \<const0> ;
  assign spo[7] = \<const0> ;
  assign spo[6] = \<const0> ;
  assign spo[5] = \<const0> ;
  assign spo[4] = \<const0> ;
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1] = \<const0> ;
  assign spo[0] = \<const0> ;
GND GND
       (.G(\<const0> ));
axi_traffic_gen_0_dist_mem_gen_v8_0_synth__parameterized0 \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .qspo(qspo),
        .qspo_srst(qspo_srst));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_synth" *) 
module axi_traffic_gen_0_dist_mem_gen_v8_0_synth
   (qspo,
    a,
    qspo_srst,
    clk);
  output [31:0]qspo;
  input [3:0]a;
  input qspo_srst;
  input clk;

  wire [3:0]a;
  wire clk;
  wire [31:0]qspo;
  wire qspo_srst;

axi_traffic_gen_0_rom__parameterized0 \gen_rom.rom_inst 
       (.a(a),
        .clk(clk),
        .qspo(qspo),
        .qspo_srst(qspo_srst));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_synth" *) 
module axi_traffic_gen_0_dist_mem_gen_v8_0_synth__parameterized0
   (qspo,
    a,
    qspo_srst,
    clk);
  output [31:0]qspo;
  input [3:0]a;
  input qspo_srst;
  input clk;

  wire [3:0]a;
  wire clk;
  wire [31:0]qspo;
  wire qspo_srst;

axi_traffic_gen_0_rom__parameterized2 \gen_rom.rom_inst 
       (.a(a),
        .clk(clk),
        .qspo(qspo),
        .qspo_srst(qspo_srst));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module axi_traffic_gen_0_rom__parameterized0
   (qspo,
    a,
    qspo_srst,
    clk);
  output [31:0]qspo;
  input [3:0]a;
  input qspo_srst;
  input clk;

  wire [3:0]a;
  wire clk;
  wire n_0_g0_b0;
  wire n_0_g0_b1;
  wire n_0_g0_b10;
  wire n_0_g0_b11;
  wire n_0_g0_b12;
  wire n_0_g0_b14;
  wire n_0_g0_b15;
  wire n_0_g0_b16;
  wire n_0_g0_b17;
  wire n_0_g0_b18;
  wire n_0_g0_b19;
  wire n_0_g0_b20;
  wire n_0_g0_b21;
  wire n_0_g0_b22;
  wire n_0_g0_b23;
  wire n_0_g0_b24;
  wire n_0_g0_b25;
  wire n_0_g0_b26;
  wire n_0_g0_b27;
  wire n_0_g0_b28;
  wire n_0_g0_b29;
  wire n_0_g0_b3;
  wire n_0_g0_b30;
  wire n_0_g0_b31;
  wire n_0_g0_b4;
  wire n_0_g0_b5;
  wire n_0_g0_b6;
  wire n_0_g0_b7;
  wire n_0_g0_b8;
  wire n_0_g0_b9;
  wire [31:0]qspo;
  wire qspo_srst;

(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT4 #(
    .INIT(16'hE560)) 
     g0_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b0));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT4 #(
    .INIT(16'hE030)) 
     g0_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b1));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT3 #(
    .INIT(8'hFD)) 
     g0_b10
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[3]),
        .O(n_0_g0_b10));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT4 #(
    .INIT(16'hE00A)) 
     g0_b11
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b11));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b12
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b12));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b14
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b14));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b15
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b15));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b16
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b16));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b17
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b17));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b18
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b18));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b19
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b19));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b20
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b20));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b21
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b21));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b22
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b22));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b23
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b23));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b24
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b24));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b25
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b25));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b26
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b26));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b27
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b27));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b28
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b28));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b29
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b29));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b3));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b30
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b30));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b31
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b31));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT4 #(
    .INIT(16'hE00F)) 
     g0_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b4));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b5));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b6));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b7));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT4 #(
    .INIT(16'hE00A)) 
     g0_b8
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b8));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT4 #(
    .INIT(16'hE00A)) 
     g0_b9
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b9));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b0),
        .Q(qspo[0]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b10),
        .Q(qspo[10]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b11),
        .Q(qspo[11]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b12),
        .Q(qspo[12]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(qspo[13]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b14),
        .Q(qspo[14]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b15),
        .Q(qspo[15]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b16),
        .Q(qspo[16]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b17),
        .Q(qspo[17]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b18),
        .Q(qspo[18]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b19),
        .Q(qspo[19]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b1),
        .Q(qspo[1]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b20),
        .Q(qspo[20]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b21),
        .Q(qspo[21]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b22),
        .Q(qspo[22]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b23),
        .Q(qspo[23]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b24),
        .Q(qspo[24]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b25),
        .Q(qspo[25]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b26),
        .Q(qspo[26]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b27),
        .Q(qspo[27]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b28),
        .Q(qspo[28]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b29),
        .Q(qspo[29]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(qspo[2]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b30),
        .Q(qspo[30]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b31),
        .Q(qspo[31]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b3),
        .Q(qspo[3]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b4),
        .Q(qspo[4]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b5),
        .Q(qspo[5]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b6),
        .Q(qspo[6]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b7),
        .Q(qspo[7]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b8),
        .Q(qspo[8]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b9),
        .Q(qspo[9]),
        .R(qspo_srst));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module axi_traffic_gen_0_rom__parameterized2
   (qspo,
    a,
    qspo_srst,
    clk);
  output [31:0]qspo;
  input [3:0]a;
  input qspo_srst;
  input clk;

  wire [3:0]a;
  wire clk;
  wire n_0_g0_b0;
  wire n_0_g0_b1;
  wire n_0_g0_b10;
  wire n_0_g0_b11;
  wire n_0_g0_b12;
  wire n_0_g0_b13;
  wire n_0_g0_b14;
  wire n_0_g0_b15;
  wire n_0_g0_b16;
  wire n_0_g0_b17;
  wire n_0_g0_b18;
  wire n_0_g0_b19;
  wire n_0_g0_b2;
  wire n_0_g0_b20;
  wire n_0_g0_b21;
  wire n_0_g0_b22;
  wire n_0_g0_b23;
  wire n_0_g0_b24;
  wire n_0_g0_b25;
  wire n_0_g0_b26;
  wire n_0_g0_b27;
  wire n_0_g0_b28;
  wire n_0_g0_b29;
  wire n_0_g0_b3;
  wire n_0_g0_b30;
  wire n_0_g0_b31;
  wire n_0_g0_b4;
  wire n_0_g0_b5;
  wire n_0_g0_b6;
  wire n_0_g0_b7;
  wire n_0_g0_b8;
  wire n_0_g0_b9;
  wire [31:0]qspo;
  wire qspo_srst;

(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT4 #(
    .INIT(16'hEC13)) 
     g0_b0
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b0));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT4 #(
    .INIT(16'hE403)) 
     g0_b1
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b1));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b10
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b10));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b11
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b11));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b12
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b12));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b13
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b13));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b14
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b14));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b15
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b15));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b16
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b16));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b17
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b17));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b18
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b18));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b19
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b19));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT4 #(
    .INIT(16'hF443)) 
     g0_b2
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b2));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b20
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b20));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b21
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b21));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b22
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b22));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b23
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b23));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b24
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b24));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b25
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b25));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b26
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b26));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b27
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b27));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b28
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b28));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b29
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b29));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT4 #(
    .INIT(16'hE78C)) 
     g0_b3
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b3));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b30
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b30));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b31
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b31));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b4
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b4));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b5
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b5));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b6
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b6));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b7
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b7));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT4 #(
    .INIT(16'hE020)) 
     g0_b8
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b8));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     g0_b9
       (.I0(a[0]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[3]),
        .O(n_0_g0_b9));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b0),
        .Q(qspo[0]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b10),
        .Q(qspo[10]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b11),
        .Q(qspo[11]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b12),
        .Q(qspo[12]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b13),
        .Q(qspo[13]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b14),
        .Q(qspo[14]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b15),
        .Q(qspo[15]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b16),
        .Q(qspo[16]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b17),
        .Q(qspo[17]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b18),
        .Q(qspo[18]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b19),
        .Q(qspo[19]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b1),
        .Q(qspo[1]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b20),
        .Q(qspo[20]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b21),
        .Q(qspo[21]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b22),
        .Q(qspo[22]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b23),
        .Q(qspo[23]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b24),
        .Q(qspo[24]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b25),
        .Q(qspo[25]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b26),
        .Q(qspo[26]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b27),
        .Q(qspo[27]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b28),
        .Q(qspo[28]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b29),
        .Q(qspo[29]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b2),
        .Q(qspo[2]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b30),
        .Q(qspo[30]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b31),
        .Q(qspo[31]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b3),
        .Q(qspo[3]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b4),
        .Q(qspo[4]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b5),
        .Q(qspo[5]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b6),
        .Q(qspo[6]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b7),
        .Q(qspo[7]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b8),
        .Q(qspo[8]),
        .R(qspo_srst));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(n_0_g0_b9),
        .Q(qspo[9]),
        .R(qspo_srst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif
