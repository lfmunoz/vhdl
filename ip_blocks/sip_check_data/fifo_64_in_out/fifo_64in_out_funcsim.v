// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:48:31 MST 2014
// Date        : Tue Feb 10 12:36:17 2015
// Host        : austin_workstation_1 running 64-bit Fedora release 20 (Heisenbug)
// Command     : write_verilog -force -mode funcsim
//               /home/luis/FIRMWARE/git/vhdl/ip_blocks/sip_capture_x4/src/fifo_64_in_out/fifo_64in_out_funcsim.v
// Design      : fifo_64in_out
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v12_0,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "fifo_64in_out,fifo_generator_v12_0,{}" *) 
(* core_generation_info = "fifo_64in_out,fifo_generator_v12_0,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=fifo_generator,x_ipVersion=12.0,x_ipCoreRevision=3,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_COMMON_CLOCK=0,C_COUNT_TYPE=0,C_DATA_COUNT_WIDTH=12,C_DEFAULT_VALUE=BlankString,C_DIN_WIDTH=64,C_DOUT_RST_VAL=0,C_DOUT_WIDTH=64,C_ENABLE_RLOCS=0,C_FAMILY=virtex7,C_FULL_FLAGS_RST_VAL=1,C_HAS_ALMOST_EMPTY=0,C_HAS_ALMOST_FULL=0,C_HAS_BACKUP=0,C_HAS_DATA_COUNT=0,C_HAS_INT_CLK=0,C_HAS_MEMINIT_FILE=0,C_HAS_OVERFLOW=0,C_HAS_RD_DATA_COUNT=1,C_HAS_RD_RST=0,C_HAS_RST=1,C_HAS_SRST=0,C_HAS_UNDERFLOW=0,C_HAS_VALID=1,C_HAS_WR_ACK=0,C_HAS_WR_DATA_COUNT=0,C_HAS_WR_RST=0,C_IMPLEMENTATION_TYPE=2,C_INIT_WR_PNTR_VAL=0,C_MEMORY_TYPE=1,C_MIF_FILE_NAME=BlankString,C_OPTIMIZATION_MODE=0,C_OVERFLOW_LOW=0,C_PRELOAD_LATENCY=1,C_PRELOAD_REGS=0,C_PRIM_FIFO_TYPE=4kx9,C_PROG_EMPTY_THRESH_ASSERT_VAL=2,C_PROG_EMPTY_THRESH_NEGATE_VAL=3,C_PROG_EMPTY_TYPE=0,C_PROG_FULL_THRESH_ASSERT_VAL=4093,C_PROG_FULL_THRESH_NEGATE_VAL=4092,C_PROG_FULL_TYPE=0,C_RD_DATA_COUNT_WIDTH=12,C_RD_DEPTH=4096,C_RD_FREQ=1,C_RD_PNTR_WIDTH=12,C_UNDERFLOW_LOW=0,C_USE_DOUT_RST=1,C_USE_ECC=0,C_USE_EMBEDDED_REG=0,C_USE_PIPELINE_REG=0,C_POWER_SAVING_MODE=0,C_USE_FIFO16_FLAGS=0,C_USE_FWFT_DATA_COUNT=0,C_VALID_LOW=0,C_WR_ACK_LOW=0,C_WR_DATA_COUNT_WIDTH=12,C_WR_DEPTH=4096,C_WR_FREQ=1,C_WR_PNTR_WIDTH=12,C_WR_RESPONSE_LATENCY=1,C_MSGON_VAL=1,C_ENABLE_RST_SYNC=1,C_ERROR_INJECTION_TYPE=0,C_SYNCHRONIZER_STAGE=2,C_INTERFACE_TYPE=0,C_AXI_TYPE=1,C_HAS_AXI_WR_CHANNEL=1,C_HAS_AXI_RD_CHANNEL=1,C_HAS_SLAVE_CE=0,C_HAS_MASTER_CE=0,C_ADD_NGC_CONSTRAINT=0,C_USE_COMMON_OVERFLOW=0,C_USE_COMMON_UNDERFLOW=0,C_USE_DEFAULT_SETTINGS=0,C_AXI_ID_WIDTH=1,C_AXI_ADDR_WIDTH=32,C_AXI_DATA_WIDTH=64,C_AXI_LEN_WIDTH=8,C_AXI_LOCK_WIDTH=1,C_HAS_AXI_ID=0,C_HAS_AXI_AWUSER=0,C_HAS_AXI_WUSER=0,C_HAS_AXI_BUSER=0,C_HAS_AXI_ARUSER=0,C_HAS_AXI_RUSER=0,C_AXI_ARUSER_WIDTH=1,C_AXI_AWUSER_WIDTH=1,C_AXI_WUSER_WIDTH=1,C_AXI_BUSER_WIDTH=1,C_AXI_RUSER_WIDTH=1,C_HAS_AXIS_TDATA=1,C_HAS_AXIS_TID=0,C_HAS_AXIS_TDEST=0,C_HAS_AXIS_TUSER=1,C_HAS_AXIS_TREADY=1,C_HAS_AXIS_TLAST=0,C_HAS_AXIS_TSTRB=0,C_HAS_AXIS_TKEEP=0,C_AXIS_TDATA_WIDTH=8,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=1,C_AXIS_TUSER_WIDTH=4,C_AXIS_TSTRB_WIDTH=1,C_AXIS_TKEEP_WIDTH=1,C_WACH_TYPE=0,C_WDCH_TYPE=0,C_WRCH_TYPE=0,C_RACH_TYPE=0,C_RDCH_TYPE=0,C_AXIS_TYPE=0,C_IMPLEMENTATION_TYPE_WACH=1,C_IMPLEMENTATION_TYPE_WDCH=1,C_IMPLEMENTATION_TYPE_WRCH=1,C_IMPLEMENTATION_TYPE_RACH=1,C_IMPLEMENTATION_TYPE_RDCH=1,C_IMPLEMENTATION_TYPE_AXIS=1,C_APPLICATION_TYPE_WACH=0,C_APPLICATION_TYPE_WDCH=0,C_APPLICATION_TYPE_WRCH=0,C_APPLICATION_TYPE_RACH=0,C_APPLICATION_TYPE_RDCH=0,C_APPLICATION_TYPE_AXIS=0,C_PRIM_FIFO_TYPE_WACH=512x36,C_PRIM_FIFO_TYPE_WDCH=1kx36,C_PRIM_FIFO_TYPE_WRCH=512x36,C_PRIM_FIFO_TYPE_RACH=512x36,C_PRIM_FIFO_TYPE_RDCH=1kx36,C_PRIM_FIFO_TYPE_AXIS=1kx18,C_USE_ECC_WACH=0,C_USE_ECC_WDCH=0,C_USE_ECC_WRCH=0,C_USE_ECC_RACH=0,C_USE_ECC_RDCH=0,C_USE_ECC_AXIS=0,C_ERROR_INJECTION_TYPE_WACH=0,C_ERROR_INJECTION_TYPE_WDCH=0,C_ERROR_INJECTION_TYPE_WRCH=0,C_ERROR_INJECTION_TYPE_RACH=0,C_ERROR_INJECTION_TYPE_RDCH=0,C_ERROR_INJECTION_TYPE_AXIS=0,C_DIN_WIDTH_WACH=32,C_DIN_WIDTH_WDCH=64,C_DIN_WIDTH_WRCH=2,C_DIN_WIDTH_RACH=32,C_DIN_WIDTH_RDCH=64,C_DIN_WIDTH_AXIS=1,C_WR_DEPTH_WACH=16,C_WR_DEPTH_WDCH=1024,C_WR_DEPTH_WRCH=16,C_WR_DEPTH_RACH=16,C_WR_DEPTH_RDCH=1024,C_WR_DEPTH_AXIS=1024,C_WR_PNTR_WIDTH_WACH=4,C_WR_PNTR_WIDTH_WDCH=10,C_WR_PNTR_WIDTH_WRCH=4,C_WR_PNTR_WIDTH_RACH=4,C_WR_PNTR_WIDTH_RDCH=10,C_WR_PNTR_WIDTH_AXIS=10,C_HAS_DATA_COUNTS_WACH=0,C_HAS_DATA_COUNTS_WDCH=0,C_HAS_DATA_COUNTS_WRCH=0,C_HAS_DATA_COUNTS_RACH=0,C_HAS_DATA_COUNTS_RDCH=0,C_HAS_DATA_COUNTS_AXIS=0,C_HAS_PROG_FLAGS_WACH=0,C_HAS_PROG_FLAGS_WDCH=0,C_HAS_PROG_FLAGS_WRCH=0,C_HAS_PROG_FLAGS_RACH=0,C_HAS_PROG_FLAGS_RDCH=0,C_HAS_PROG_FLAGS_AXIS=0,C_PROG_FULL_TYPE_WACH=0,C_PROG_FULL_TYPE_WDCH=0,C_PROG_FULL_TYPE_WRCH=0,C_PROG_FULL_TYPE_RACH=0,C_PROG_FULL_TYPE_RDCH=0,C_PROG_FULL_TYPE_AXIS=0,C_PROG_FULL_THRESH_ASSERT_VAL_WACH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_WDCH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_WRCH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_RACH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_RDCH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_AXIS=1023,C_PROG_EMPTY_TYPE_WACH=0,C_PROG_EMPTY_TYPE_WDCH=0,C_PROG_EMPTY_TYPE_WRCH=0,C_PROG_EMPTY_TYPE_RACH=0,C_PROG_EMPTY_TYPE_RDCH=0,C_PROG_EMPTY_TYPE_AXIS=0,C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS=1022,C_REG_SLICE_MODE_WACH=0,C_REG_SLICE_MODE_WDCH=0,C_REG_SLICE_MODE_WRCH=0,C_REG_SLICE_MODE_RACH=0,C_REG_SLICE_MODE_RDCH=0,C_REG_SLICE_MODE_AXIS=0}" *) 
(* NotValidForBitStream *)
module fifo_64in_out
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid,
    rd_data_count);
  input rst;
  input wr_clk;
  input rd_clk;
  input [63:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  output [63:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;
  output [11:0]rd_data_count;

  wire [63:0]din;
  wire [63:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [11:0]rd_data_count;
  wire rd_en;
  wire rst;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

(* C_ADD_NGC_CONSTRAINT = "0" *) 
   (* C_APPLICATION_TYPE_AXIS = "0" *) 
   (* C_APPLICATION_TYPE_RACH = "0" *) 
   (* C_APPLICATION_TYPE_RDCH = "0" *) 
   (* C_APPLICATION_TYPE_WACH = "0" *) 
   (* C_APPLICATION_TYPE_WDCH = "0" *) 
   (* C_APPLICATION_TYPE_WRCH = "0" *) 
   (* C_AXIS_TDATA_WIDTH = "8" *) 
   (* C_AXIS_TDEST_WIDTH = "1" *) 
   (* C_AXIS_TID_WIDTH = "1" *) 
   (* C_AXIS_TKEEP_WIDTH = "1" *) 
   (* C_AXIS_TSTRB_WIDTH = "1" *) 
   (* C_AXIS_TUSER_WIDTH = "4" *) 
   (* C_AXIS_TYPE = "0" *) 
   (* C_AXI_ADDR_WIDTH = "32" *) 
   (* C_AXI_ARUSER_WIDTH = "1" *) 
   (* C_AXI_AWUSER_WIDTH = "1" *) 
   (* C_AXI_BUSER_WIDTH = "1" *) 
   (* C_AXI_DATA_WIDTH = "64" *) 
   (* C_AXI_ID_WIDTH = "1" *) 
   (* C_AXI_LEN_WIDTH = "8" *) 
   (* C_AXI_LOCK_WIDTH = "1" *) 
   (* C_AXI_RUSER_WIDTH = "1" *) 
   (* C_AXI_TYPE = "1" *) 
   (* C_AXI_WUSER_WIDTH = "1" *) 
   (* C_COMMON_CLOCK = "0" *) 
   (* C_COUNT_TYPE = "0" *) 
   (* C_DATA_COUNT_WIDTH = "12" *) 
   (* C_DEFAULT_VALUE = "BlankString" *) 
   (* C_DIN_WIDTH = "64" *) 
   (* C_DIN_WIDTH_AXIS = "1" *) 
   (* C_DIN_WIDTH_RACH = "32" *) 
   (* C_DIN_WIDTH_RDCH = "64" *) 
   (* C_DIN_WIDTH_WACH = "32" *) 
   (* C_DIN_WIDTH_WDCH = "64" *) 
   (* C_DIN_WIDTH_WRCH = "2" *) 
   (* C_DOUT_RST_VAL = "0" *) 
   (* C_DOUT_WIDTH = "64" *) 
   (* C_ENABLE_RLOCS = "0" *) 
   (* C_ENABLE_RST_SYNC = "1" *) 
   (* C_ERROR_INJECTION_TYPE = "0" *) 
   (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
   (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
   (* C_FAMILY = "virtex7" *) 
   (* C_FULL_FLAGS_RST_VAL = "1" *) 
   (* C_HAS_ALMOST_EMPTY = "0" *) 
   (* C_HAS_ALMOST_FULL = "0" *) 
   (* C_HAS_AXIS_TDATA = "1" *) 
   (* C_HAS_AXIS_TDEST = "0" *) 
   (* C_HAS_AXIS_TID = "0" *) 
   (* C_HAS_AXIS_TKEEP = "0" *) 
   (* C_HAS_AXIS_TLAST = "0" *) 
   (* C_HAS_AXIS_TREADY = "1" *) 
   (* C_HAS_AXIS_TSTRB = "0" *) 
   (* C_HAS_AXIS_TUSER = "1" *) 
   (* C_HAS_AXI_ARUSER = "0" *) 
   (* C_HAS_AXI_AWUSER = "0" *) 
   (* C_HAS_AXI_BUSER = "0" *) 
   (* C_HAS_AXI_ID = "0" *) 
   (* C_HAS_AXI_RD_CHANNEL = "1" *) 
   (* C_HAS_AXI_RUSER = "0" *) 
   (* C_HAS_AXI_WR_CHANNEL = "1" *) 
   (* C_HAS_AXI_WUSER = "0" *) 
   (* C_HAS_BACKUP = "0" *) 
   (* C_HAS_DATA_COUNT = "0" *) 
   (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
   (* C_HAS_DATA_COUNTS_RACH = "0" *) 
   (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
   (* C_HAS_DATA_COUNTS_WACH = "0" *) 
   (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
   (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
   (* C_HAS_INT_CLK = "0" *) 
   (* C_HAS_MASTER_CE = "0" *) 
   (* C_HAS_MEMINIT_FILE = "0" *) 
   (* C_HAS_OVERFLOW = "0" *) 
   (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
   (* C_HAS_PROG_FLAGS_RACH = "0" *) 
   (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
   (* C_HAS_PROG_FLAGS_WACH = "0" *) 
   (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
   (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
   (* C_HAS_RD_DATA_COUNT = "1" *) 
   (* C_HAS_RD_RST = "0" *) 
   (* C_HAS_RST = "1" *) 
   (* C_HAS_SLAVE_CE = "0" *) 
   (* C_HAS_SRST = "0" *) 
   (* C_HAS_UNDERFLOW = "0" *) 
   (* C_HAS_VALID = "1" *) 
   (* C_HAS_WR_ACK = "0" *) 
   (* C_HAS_WR_DATA_COUNT = "0" *) 
   (* C_HAS_WR_RST = "0" *) 
   (* C_IMPLEMENTATION_TYPE = "2" *) 
   (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
   (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
   (* C_INIT_WR_PNTR_VAL = "0" *) 
   (* C_INTERFACE_TYPE = "0" *) 
   (* C_MEMORY_TYPE = "1" *) 
   (* C_MIF_FILE_NAME = "BlankString" *) 
   (* C_MSGON_VAL = "1" *) 
   (* C_OPTIMIZATION_MODE = "0" *) 
   (* C_OVERFLOW_LOW = "0" *) 
   (* C_POWER_SAVING_MODE = "0" *) 
   (* C_PRELOAD_LATENCY = "1" *) 
   (* C_PRELOAD_REGS = "0" *) 
   (* C_PRIM_FIFO_TYPE = "4kx9" *) 
   (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
   (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
   (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
   (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
   (* C_PROG_EMPTY_TYPE = "0" *) 
   (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
   (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
   (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL = "4093" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
   (* C_PROG_FULL_THRESH_NEGATE_VAL = "4092" *) 
   (* C_PROG_FULL_TYPE = "0" *) 
   (* C_PROG_FULL_TYPE_AXIS = "0" *) 
   (* C_PROG_FULL_TYPE_RACH = "0" *) 
   (* C_PROG_FULL_TYPE_RDCH = "0" *) 
   (* C_PROG_FULL_TYPE_WACH = "0" *) 
   (* C_PROG_FULL_TYPE_WDCH = "0" *) 
   (* C_PROG_FULL_TYPE_WRCH = "0" *) 
   (* C_RACH_TYPE = "0" *) 
   (* C_RDCH_TYPE = "0" *) 
   (* C_RD_DATA_COUNT_WIDTH = "12" *) 
   (* C_RD_DEPTH = "4096" *) 
   (* C_RD_FREQ = "1" *) 
   (* C_RD_PNTR_WIDTH = "12" *) 
   (* C_REG_SLICE_MODE_AXIS = "0" *) 
   (* C_REG_SLICE_MODE_RACH = "0" *) 
   (* C_REG_SLICE_MODE_RDCH = "0" *) 
   (* C_REG_SLICE_MODE_WACH = "0" *) 
   (* C_REG_SLICE_MODE_WDCH = "0" *) 
   (* C_REG_SLICE_MODE_WRCH = "0" *) 
   (* C_SYNCHRONIZER_STAGE = "2" *) 
   (* C_UNDERFLOW_LOW = "0" *) 
   (* C_USE_COMMON_OVERFLOW = "0" *) 
   (* C_USE_COMMON_UNDERFLOW = "0" *) 
   (* C_USE_DEFAULT_SETTINGS = "0" *) 
   (* C_USE_DOUT_RST = "1" *) 
   (* C_USE_ECC = "0" *) 
   (* C_USE_ECC_AXIS = "0" *) 
   (* C_USE_ECC_RACH = "0" *) 
   (* C_USE_ECC_RDCH = "0" *) 
   (* C_USE_ECC_WACH = "0" *) 
   (* C_USE_ECC_WDCH = "0" *) 
   (* C_USE_ECC_WRCH = "0" *) 
   (* C_USE_EMBEDDED_REG = "0" *) 
   (* C_USE_FIFO16_FLAGS = "0" *) 
   (* C_USE_FWFT_DATA_COUNT = "0" *) 
   (* C_USE_PIPELINE_REG = "0" *) 
   (* C_VALID_LOW = "0" *) 
   (* C_WACH_TYPE = "0" *) 
   (* C_WDCH_TYPE = "0" *) 
   (* C_WRCH_TYPE = "0" *) 
   (* C_WR_ACK_LOW = "0" *) 
   (* C_WR_DATA_COUNT_WIDTH = "12" *) 
   (* C_WR_DEPTH = "4096" *) 
   (* C_WR_DEPTH_AXIS = "1024" *) 
   (* C_WR_DEPTH_RACH = "16" *) 
   (* C_WR_DEPTH_RDCH = "1024" *) 
   (* C_WR_DEPTH_WACH = "16" *) 
   (* C_WR_DEPTH_WDCH = "1024" *) 
   (* C_WR_DEPTH_WRCH = "16" *) 
   (* C_WR_FREQ = "1" *) 
   (* C_WR_PNTR_WIDTH = "12" *) 
   (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
   (* C_WR_PNTR_WIDTH_RACH = "4" *) 
   (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WACH = "4" *) 
   (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
   (* C_WR_RESPONSE_LATENCY = "1" *) 
   fifo_64in_out_fifo_generator_v12_0__parameterized0 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module fifo_64in_out_blk_mem_gen_generic_cstr
   (dout,
    wr_clk,
    rd_clk,
    I1,
    tmp_ram_rd_en,
    Q,
    O2,
    O1,
    din);
  output [63:0]dout;
  input wr_clk;
  input rd_clk;
  input I1;
  input tmp_ram_rd_en;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [63:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [63:0]din;
  wire [63:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

fifo_64in_out_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din[3:0]),
        .dout(dout[3:0]),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
fifo_64in_out_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din[12:4]),
        .dout(dout[12:4]),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
fifo_64in_out_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din[21:13]),
        .dout(dout[21:13]),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
fifo_64in_out_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din[30:22]),
        .dout(dout[30:22]),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
fifo_64in_out_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din[39:31]),
        .dout(dout[39:31]),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
fifo_64in_out_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din[48:40]),
        .dout(dout[48:40]),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
fifo_64in_out_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din[57:49]),
        .dout(dout[57:49]),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
fifo_64in_out_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din[63:58]),
        .dout(dout[63:58]),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module fifo_64in_out_blk_mem_gen_prim_width
   (dout,
    wr_clk,
    rd_clk,
    I1,
    tmp_ram_rd_en,
    Q,
    O2,
    O1,
    din);
  output [3:0]dout;
  input wr_clk;
  input rd_clk;
  input I1;
  input tmp_ram_rd_en;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [3:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [3:0]din;
  wire [3:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

fifo_64in_out_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din),
        .dout(dout),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module fifo_64in_out_blk_mem_gen_prim_width__parameterized0
   (dout,
    I1,
    wr_clk,
    tmp_ram_rd_en,
    rd_clk,
    Q,
    O2,
    O1,
    din);
  output [8:0]dout;
  input I1;
  input wr_clk;
  input tmp_ram_rd_en;
  input rd_clk;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [8:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [8:0]din;
  wire [8:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

fifo_64in_out_blk_mem_gen_prim_wrapper__parameterized0 \prim_noinit.ram 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din),
        .dout(dout),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module fifo_64in_out_blk_mem_gen_prim_width__parameterized1
   (dout,
    I1,
    wr_clk,
    tmp_ram_rd_en,
    rd_clk,
    Q,
    O2,
    O1,
    din);
  output [8:0]dout;
  input I1;
  input wr_clk;
  input tmp_ram_rd_en;
  input rd_clk;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [8:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [8:0]din;
  wire [8:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

fifo_64in_out_blk_mem_gen_prim_wrapper__parameterized1 \prim_noinit.ram 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din),
        .dout(dout),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module fifo_64in_out_blk_mem_gen_prim_width__parameterized2
   (dout,
    I1,
    wr_clk,
    tmp_ram_rd_en,
    rd_clk,
    Q,
    O2,
    O1,
    din);
  output [8:0]dout;
  input I1;
  input wr_clk;
  input tmp_ram_rd_en;
  input rd_clk;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [8:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [8:0]din;
  wire [8:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

fifo_64in_out_blk_mem_gen_prim_wrapper__parameterized2 \prim_noinit.ram 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din),
        .dout(dout),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module fifo_64in_out_blk_mem_gen_prim_width__parameterized3
   (dout,
    I1,
    wr_clk,
    tmp_ram_rd_en,
    rd_clk,
    Q,
    O2,
    O1,
    din);
  output [8:0]dout;
  input I1;
  input wr_clk;
  input tmp_ram_rd_en;
  input rd_clk;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [8:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [8:0]din;
  wire [8:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

fifo_64in_out_blk_mem_gen_prim_wrapper__parameterized3 \prim_noinit.ram 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din),
        .dout(dout),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module fifo_64in_out_blk_mem_gen_prim_width__parameterized4
   (dout,
    I1,
    wr_clk,
    tmp_ram_rd_en,
    rd_clk,
    Q,
    O2,
    O1,
    din);
  output [8:0]dout;
  input I1;
  input wr_clk;
  input tmp_ram_rd_en;
  input rd_clk;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [8:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [8:0]din;
  wire [8:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

fifo_64in_out_blk_mem_gen_prim_wrapper__parameterized4 \prim_noinit.ram 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din),
        .dout(dout),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module fifo_64in_out_blk_mem_gen_prim_width__parameterized5
   (dout,
    I1,
    wr_clk,
    tmp_ram_rd_en,
    rd_clk,
    Q,
    O2,
    O1,
    din);
  output [8:0]dout;
  input I1;
  input wr_clk;
  input tmp_ram_rd_en;
  input rd_clk;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [8:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [8:0]din;
  wire [8:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

fifo_64in_out_blk_mem_gen_prim_wrapper__parameterized5 \prim_noinit.ram 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din),
        .dout(dout),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module fifo_64in_out_blk_mem_gen_prim_width__parameterized6
   (dout,
    I1,
    wr_clk,
    tmp_ram_rd_en,
    rd_clk,
    Q,
    O2,
    O1,
    din);
  output [5:0]dout;
  input I1;
  input wr_clk;
  input tmp_ram_rd_en;
  input rd_clk;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [5:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [5:0]din;
  wire [5:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

fifo_64in_out_blk_mem_gen_prim_wrapper__parameterized6 \prim_noinit.ram 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din),
        .dout(dout),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module fifo_64in_out_blk_mem_gen_prim_wrapper
   (dout,
    wr_clk,
    rd_clk,
    I1,
    tmp_ram_rd_en,
    Q,
    O2,
    O1,
    din);
  output [3:0]dout;
  input wr_clk;
  input rd_clk;
  input I1;
  input tmp_ram_rd_en;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [3:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [3:0]din;
  wire [3:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({O2,1'b0,1'b0}),
        .ADDRBWRADDR({O1,1'b0,1'b0}),
        .CLKARDCLK(wr_clk),
        .CLKBWRCLK(rd_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:4],dout}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(I1),
        .ENBWREN(tmp_ram_rd_en),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(Q),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({I1,I1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module fifo_64in_out_blk_mem_gen_prim_wrapper__parameterized0
   (dout,
    I1,
    wr_clk,
    tmp_ram_rd_en,
    rd_clk,
    Q,
    O2,
    O1,
    din);
  output [8:0]dout;
  input I1;
  input wr_clk;
  input tmp_ram_rd_en;
  input rd_clk;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [8:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [8:0]din;
  wire [8:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,O2,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,O1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(wr_clk),
        .CLKBWRCLK(rd_clk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,din[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],dout[7:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],dout[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(tmp_ram_rd_en),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(Q),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({I1,I1,I1,I1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module fifo_64in_out_blk_mem_gen_prim_wrapper__parameterized1
   (dout,
    I1,
    wr_clk,
    tmp_ram_rd_en,
    rd_clk,
    Q,
    O2,
    O1,
    din);
  output [8:0]dout;
  input I1;
  input wr_clk;
  input tmp_ram_rd_en;
  input rd_clk;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [8:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [8:0]din;
  wire [8:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,O2,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,O1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(wr_clk),
        .CLKBWRCLK(rd_clk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,din[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],dout[7:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],dout[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(tmp_ram_rd_en),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(Q),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({I1,I1,I1,I1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module fifo_64in_out_blk_mem_gen_prim_wrapper__parameterized2
   (dout,
    I1,
    wr_clk,
    tmp_ram_rd_en,
    rd_clk,
    Q,
    O2,
    O1,
    din);
  output [8:0]dout;
  input I1;
  input wr_clk;
  input tmp_ram_rd_en;
  input rd_clk;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [8:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [8:0]din;
  wire [8:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,O2,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,O1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(wr_clk),
        .CLKBWRCLK(rd_clk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,din[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],dout[7:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],dout[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(tmp_ram_rd_en),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(Q),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({I1,I1,I1,I1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module fifo_64in_out_blk_mem_gen_prim_wrapper__parameterized3
   (dout,
    I1,
    wr_clk,
    tmp_ram_rd_en,
    rd_clk,
    Q,
    O2,
    O1,
    din);
  output [8:0]dout;
  input I1;
  input wr_clk;
  input tmp_ram_rd_en;
  input rd_clk;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [8:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [8:0]din;
  wire [8:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,O2,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,O1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(wr_clk),
        .CLKBWRCLK(rd_clk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,din[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],dout[7:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],dout[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(tmp_ram_rd_en),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(Q),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({I1,I1,I1,I1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module fifo_64in_out_blk_mem_gen_prim_wrapper__parameterized4
   (dout,
    I1,
    wr_clk,
    tmp_ram_rd_en,
    rd_clk,
    Q,
    O2,
    O1,
    din);
  output [8:0]dout;
  input I1;
  input wr_clk;
  input tmp_ram_rd_en;
  input rd_clk;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [8:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [8:0]din;
  wire [8:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,O2,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,O1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(wr_clk),
        .CLKBWRCLK(rd_clk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,din[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],dout[7:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],dout[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(tmp_ram_rd_en),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(Q),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({I1,I1,I1,I1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module fifo_64in_out_blk_mem_gen_prim_wrapper__parameterized5
   (dout,
    I1,
    wr_clk,
    tmp_ram_rd_en,
    rd_clk,
    Q,
    O2,
    O1,
    din);
  output [8:0]dout;
  input I1;
  input wr_clk;
  input tmp_ram_rd_en;
  input rd_clk;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [8:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [8:0]din;
  wire [8:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,O2,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,O1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(wr_clk),
        .CLKBWRCLK(rd_clk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,din[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],dout[7:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],dout[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(tmp_ram_rd_en),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(Q),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({I1,I1,I1,I1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module fifo_64in_out_blk_mem_gen_prim_wrapper__parameterized6
   (dout,
    I1,
    wr_clk,
    tmp_ram_rd_en,
    rd_clk,
    Q,
    O2,
    O1,
    din);
  output [5:0]dout;
  input I1;
  input wr_clk;
  input tmp_ram_rd_en;
  input rd_clk;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [5:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [5:0]din;
  wire [5:0]dout;
  wire \n_60_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_61_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_75_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,O2,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,O1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(wr_clk),
        .CLKBWRCLK(rd_clk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\n_60_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_61_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,dout}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\n_75_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(tmp_ram_rd_en),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(Q),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({I1,I1,I1,I1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module fifo_64in_out_blk_mem_gen_top
   (dout,
    wr_clk,
    rd_clk,
    I1,
    tmp_ram_rd_en,
    Q,
    O2,
    O1,
    din);
  output [63:0]dout;
  input wr_clk;
  input rd_clk;
  input I1;
  input tmp_ram_rd_en;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [63:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [63:0]din;
  wire [63:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

fifo_64in_out_blk_mem_gen_generic_cstr \valid.cstr 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din),
        .dout(dout),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2" *) 
module fifo_64in_out_blk_mem_gen_v8_2__parameterized0
   (dout,
    wr_clk,
    rd_clk,
    I1,
    tmp_ram_rd_en,
    Q,
    O2,
    O1,
    din);
  output [63:0]dout;
  input wr_clk;
  input rd_clk;
  input I1;
  input tmp_ram_rd_en;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [63:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [63:0]din;
  wire [63:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

fifo_64in_out_blk_mem_gen_v8_2_synth inst_blk_mem_gen
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din),
        .dout(dout),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_2_synth" *) 
module fifo_64in_out_blk_mem_gen_v8_2_synth
   (dout,
    wr_clk,
    rd_clk,
    I1,
    tmp_ram_rd_en,
    Q,
    O2,
    O1,
    din);
  output [63:0]dout;
  input wr_clk;
  input rd_clk;
  input I1;
  input tmp_ram_rd_en;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [63:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [63:0]din;
  wire [63:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

fifo_64in_out_blk_mem_gen_top \gnativebmg.native_blk_mem_gen 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din),
        .dout(dout),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module fifo_64in_out_clk_x_pntrs
   (S,
    WR_PNTR_RD,
    O1,
    O2,
    RD_PNTR_WR,
    Q,
    I1,
    wr_clk,
    I2,
    rd_clk,
    I3);
  output [3:0]S;
  output [11:0]WR_PNTR_RD;
  output [3:0]O1;
  output [3:0]O2;
  output [11:0]RD_PNTR_WR;
  input [11:0]Q;
  input [11:0]I1;
  input wr_clk;
  input [0:0]I2;
  input rd_clk;
  input [0:0]I3;

  wire [11:0]I1;
  wire [0:0]I2;
  wire [0:0]I3;
  wire [3:0]O1;
  wire [3:0]O2;
  wire [11:0]Q;
  wire [11:0]Q_0;
  wire [11:0]RD_PNTR_WR;
  wire [3:0]S;
  wire [11:0]WR_PNTR_RD;
  wire \n_0_gsync_stage[1].wr_stg_inst ;
  wire \n_0_gsync_stage[2].wr_stg_inst ;
  wire \n_0_rd_pntr_gc[0]_i_1 ;
  wire \n_0_rd_pntr_gc[10]_i_1 ;
  wire \n_0_rd_pntr_gc[1]_i_1 ;
  wire \n_0_rd_pntr_gc[2]_i_1 ;
  wire \n_0_rd_pntr_gc[3]_i_1 ;
  wire \n_0_rd_pntr_gc[4]_i_1 ;
  wire \n_0_rd_pntr_gc[5]_i_1 ;
  wire \n_0_rd_pntr_gc[6]_i_1 ;
  wire \n_0_rd_pntr_gc[7]_i_1 ;
  wire \n_0_rd_pntr_gc[8]_i_1 ;
  wire \n_0_rd_pntr_gc[9]_i_1 ;
  wire \n_10_gsync_stage[1].wr_stg_inst ;
  wire \n_10_gsync_stage[2].wr_stg_inst ;
  wire \n_11_gsync_stage[1].wr_stg_inst ;
  wire \n_11_gsync_stage[2].wr_stg_inst ;
  wire \n_1_gsync_stage[1].wr_stg_inst ;
  wire \n_1_gsync_stage[2].wr_stg_inst ;
  wire \n_2_gsync_stage[1].wr_stg_inst ;
  wire \n_2_gsync_stage[2].wr_stg_inst ;
  wire \n_3_gsync_stage[1].wr_stg_inst ;
  wire \n_3_gsync_stage[2].wr_stg_inst ;
  wire \n_4_gsync_stage[1].wr_stg_inst ;
  wire \n_4_gsync_stage[2].wr_stg_inst ;
  wire \n_5_gsync_stage[1].wr_stg_inst ;
  wire \n_5_gsync_stage[2].wr_stg_inst ;
  wire \n_6_gsync_stage[1].wr_stg_inst ;
  wire \n_6_gsync_stage[2].wr_stg_inst ;
  wire \n_7_gsync_stage[1].wr_stg_inst ;
  wire \n_7_gsync_stage[2].wr_stg_inst ;
  wire \n_8_gsync_stage[1].wr_stg_inst ;
  wire \n_8_gsync_stage[2].wr_stg_inst ;
  wire \n_9_gsync_stage[1].wr_stg_inst ;
  wire \n_9_gsync_stage[2].wr_stg_inst ;
  wire [11:0]p_0_in;
  wire [10:0]p_0_in10_out;
  wire rd_clk;
  wire [11:0]rd_pntr_gc;
  wire wr_clk;
  wire [11:0]wr_pntr_gc;

fifo_64in_out_synchronizer_ff \gsync_stage[1].rd_stg_inst 
       (.I1(wr_pntr_gc),
        .I3(I3),
        .Q(Q_0),
        .rd_clk(rd_clk));
fifo_64in_out_synchronizer_ff_3 \gsync_stage[1].wr_stg_inst 
       (.I1(rd_pntr_gc),
        .I2(I2),
        .Q({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst ,\n_4_gsync_stage[1].wr_stg_inst ,\n_5_gsync_stage[1].wr_stg_inst ,\n_6_gsync_stage[1].wr_stg_inst ,\n_7_gsync_stage[1].wr_stg_inst ,\n_8_gsync_stage[1].wr_stg_inst ,\n_9_gsync_stage[1].wr_stg_inst ,\n_10_gsync_stage[1].wr_stg_inst ,\n_11_gsync_stage[1].wr_stg_inst }),
        .wr_clk(wr_clk));
fifo_64in_out_synchronizer_ff_4 \gsync_stage[2].rd_stg_inst 
       (.D(Q_0),
        .I3(I3),
        .p_0_in(p_0_in),
        .rd_clk(rd_clk));
fifo_64in_out_synchronizer_ff_5 \gsync_stage[2].wr_stg_inst 
       (.D({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst ,\n_4_gsync_stage[1].wr_stg_inst ,\n_5_gsync_stage[1].wr_stg_inst ,\n_6_gsync_stage[1].wr_stg_inst ,\n_7_gsync_stage[1].wr_stg_inst ,\n_8_gsync_stage[1].wr_stg_inst ,\n_9_gsync_stage[1].wr_stg_inst ,\n_10_gsync_stage[1].wr_stg_inst ,\n_11_gsync_stage[1].wr_stg_inst }),
        .I2(I2),
        .O1({\n_1_gsync_stage[2].wr_stg_inst ,\n_2_gsync_stage[2].wr_stg_inst ,\n_3_gsync_stage[2].wr_stg_inst ,\n_4_gsync_stage[2].wr_stg_inst ,\n_5_gsync_stage[2].wr_stg_inst ,\n_6_gsync_stage[2].wr_stg_inst ,\n_7_gsync_stage[2].wr_stg_inst ,\n_8_gsync_stage[2].wr_stg_inst ,\n_9_gsync_stage[2].wr_stg_inst ,\n_10_gsync_stage[2].wr_stg_inst ,\n_11_gsync_stage[2].wr_stg_inst }),
        .Q(\n_0_gsync_stage[2].wr_stg_inst ),
        .wr_clk(wr_clk));
LUT2 #(
    .INIT(4'h9)) 
     \rd_dc_i[11]_i_2 
       (.I0(WR_PNTR_RD[11]),
        .I1(Q[11]),
        .O(O2[3]));
LUT2 #(
    .INIT(4'h9)) 
     \rd_dc_i[11]_i_3 
       (.I0(WR_PNTR_RD[10]),
        .I1(Q[10]),
        .O(O2[2]));
LUT2 #(
    .INIT(4'h9)) 
     \rd_dc_i[11]_i_4 
       (.I0(WR_PNTR_RD[9]),
        .I1(Q[9]),
        .O(O2[1]));
LUT2 #(
    .INIT(4'h9)) 
     \rd_dc_i[11]_i_5 
       (.I0(WR_PNTR_RD[8]),
        .I1(Q[8]),
        .O(O2[0]));
LUT2 #(
    .INIT(4'h9)) 
     \rd_dc_i[3]_i_2 
       (.I0(WR_PNTR_RD[3]),
        .I1(Q[3]),
        .O(S[3]));
LUT2 #(
    .INIT(4'h9)) 
     \rd_dc_i[3]_i_3 
       (.I0(WR_PNTR_RD[2]),
        .I1(Q[2]),
        .O(S[2]));
LUT2 #(
    .INIT(4'h9)) 
     \rd_dc_i[3]_i_4 
       (.I0(WR_PNTR_RD[1]),
        .I1(Q[1]),
        .O(S[1]));
LUT2 #(
    .INIT(4'h9)) 
     \rd_dc_i[3]_i_5 
       (.I0(WR_PNTR_RD[0]),
        .I1(Q[0]),
        .O(S[0]));
LUT2 #(
    .INIT(4'h9)) 
     \rd_dc_i[7]_i_2 
       (.I0(WR_PNTR_RD[7]),
        .I1(Q[7]),
        .O(O1[3]));
LUT2 #(
    .INIT(4'h9)) 
     \rd_dc_i[7]_i_3 
       (.I0(WR_PNTR_RD[6]),
        .I1(Q[6]),
        .O(O1[2]));
LUT2 #(
    .INIT(4'h9)) 
     \rd_dc_i[7]_i_4 
       (.I0(WR_PNTR_RD[5]),
        .I1(Q[5]),
        .O(O1[1]));
LUT2 #(
    .INIT(4'h9)) 
     \rd_dc_i[7]_i_5 
       (.I0(WR_PNTR_RD[4]),
        .I1(Q[4]),
        .O(O1[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_11_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_1_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[10]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[11] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_0_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[11]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_10_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_9_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_8_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[3]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_7_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[4]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_6_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[5]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_5_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[6]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_4_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[7]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_3_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[8]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(\n_2_gsync_stage[2].wr_stg_inst ),
        .Q(RD_PNTR_WR[9]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\n_0_rd_pntr_gc[0]_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[10]_i_1 
       (.I0(Q[10]),
        .I1(Q[11]),
        .O(\n_0_rd_pntr_gc[10]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\n_0_rd_pntr_gc[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\n_0_rd_pntr_gc[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\n_0_rd_pntr_gc[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\n_0_rd_pntr_gc[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[5]_i_1 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\n_0_rd_pntr_gc[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[6]_i_1 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\n_0_rd_pntr_gc[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[7]_i_1 
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(\n_0_rd_pntr_gc[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[8]_i_1 
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(\n_0_rd_pntr_gc[8]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[9]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .O(\n_0_rd_pntr_gc[9]_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[0]_i_1 ),
        .Q(rd_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[10]_i_1 ),
        .Q(rd_pntr_gc[10]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[11] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(Q[11]),
        .Q(rd_pntr_gc[11]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[1]_i_1 ),
        .Q(rd_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[2]_i_1 ),
        .Q(rd_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[3]_i_1 ),
        .Q(rd_pntr_gc[3]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[4]_i_1 ),
        .Q(rd_pntr_gc[4]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[5]_i_1 ),
        .Q(rd_pntr_gc[5]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[6]_i_1 ),
        .Q(rd_pntr_gc[6]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[7]_i_1 ),
        .Q(rd_pntr_gc[7]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[8]_i_1 ),
        .Q(rd_pntr_gc[8]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[9]_i_1 ),
        .Q(rd_pntr_gc[9]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(p_0_in[0]),
        .Q(WR_PNTR_RD[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(p_0_in[10]),
        .Q(WR_PNTR_RD[10]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[11] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(p_0_in[11]),
        .Q(WR_PNTR_RD[11]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(p_0_in[1]),
        .Q(WR_PNTR_RD[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(p_0_in[2]),
        .Q(WR_PNTR_RD[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(p_0_in[3]),
        .Q(WR_PNTR_RD[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(p_0_in[4]),
        .Q(WR_PNTR_RD[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(p_0_in[5]),
        .Q(WR_PNTR_RD[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(p_0_in[6]),
        .Q(WR_PNTR_RD[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(p_0_in[7]),
        .Q(WR_PNTR_RD[7]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(p_0_in[8]),
        .Q(WR_PNTR_RD[8]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(p_0_in[9]),
        .Q(WR_PNTR_RD[9]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[0]_i_1 
       (.I0(I1[0]),
        .I1(I1[1]),
        .O(p_0_in10_out[0]));
LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[10]_i_1 
       (.I0(I1[10]),
        .I1(I1[11]),
        .O(p_0_in10_out[10]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[1]_i_1 
       (.I0(I1[1]),
        .I1(I1[2]),
        .O(p_0_in10_out[1]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[2]_i_1 
       (.I0(I1[2]),
        .I1(I1[3]),
        .O(p_0_in10_out[2]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[3]_i_1 
       (.I0(I1[3]),
        .I1(I1[4]),
        .O(p_0_in10_out[3]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[4]_i_1 
       (.I0(I1[4]),
        .I1(I1[5]),
        .O(p_0_in10_out[4]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[5]_i_1 
       (.I0(I1[5]),
        .I1(I1[6]),
        .O(p_0_in10_out[5]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[6]_i_1 
       (.I0(I1[6]),
        .I1(I1[7]),
        .O(p_0_in10_out[6]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[7]_i_1 
       (.I0(I1[7]),
        .I1(I1[8]),
        .O(p_0_in10_out[7]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[8]_i_1 
       (.I0(I1[8]),
        .I1(I1[9]),
        .O(p_0_in10_out[8]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[9]_i_1 
       (.I0(I1[9]),
        .I1(I1[10]),
        .O(p_0_in10_out[9]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in10_out[0]),
        .Q(wr_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in10_out[10]),
        .Q(wr_pntr_gc[10]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[11] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(I1[11]),
        .Q(wr_pntr_gc[11]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in10_out[1]),
        .Q(wr_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in10_out[2]),
        .Q(wr_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in10_out[3]),
        .Q(wr_pntr_gc[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in10_out[4]),
        .Q(wr_pntr_gc[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in10_out[5]),
        .Q(wr_pntr_gc[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in10_out[6]),
        .Q(wr_pntr_gc[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in10_out[7]),
        .Q(wr_pntr_gc[7]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in10_out[8]),
        .Q(wr_pntr_gc[8]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(p_0_in10_out[9]),
        .Q(wr_pntr_gc[9]));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fifo_64in_out_compare
   (comp1,
    Q,
    RD_PNTR_WR);
  output comp1;
  input [11:0]Q;
  input [11:0]RD_PNTR_WR;

  wire [11:0]Q;
  wire [11:0]RD_PNTR_WR;
  wire comp1;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [5:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1 
       (.I0(Q[0]),
        .I1(RD_PNTR_WR[0]),
        .I2(Q[1]),
        .I3(RD_PNTR_WR[1]),
        .O(v1_reg[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1 
       (.I0(Q[2]),
        .I1(RD_PNTR_WR[2]),
        .I2(Q[3]),
        .I3(RD_PNTR_WR[3]),
        .O(v1_reg[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1 
       (.I0(Q[4]),
        .I1(RD_PNTR_WR[4]),
        .I2(Q[5]),
        .I3(RD_PNTR_WR[5]),
        .O(v1_reg[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1 
       (.I0(Q[6]),
        .I1(RD_PNTR_WR[6]),
        .I2(Q[7]),
        .I3(RD_PNTR_WR[7]),
        .O(v1_reg[3]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp1,\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],v1_reg[5:4]}));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[4].gms.ms_i_1 
       (.I0(Q[8]),
        .I1(RD_PNTR_WR[8]),
        .I2(Q[9]),
        .I3(RD_PNTR_WR[9]),
        .O(v1_reg[4]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[5].gms.ms_i_1 
       (.I0(Q[10]),
        .I1(RD_PNTR_WR[10]),
        .I2(Q[11]),
        .I3(RD_PNTR_WR[11]),
        .O(v1_reg[5]));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fifo_64in_out_compare_0
   (comp2,
    out,
    RD_PNTR_WR);
  output comp2;
  input [11:0]out;
  input [11:0]RD_PNTR_WR;

  wire [11:0]RD_PNTR_WR;
  wire comp2;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [11:0]out;
  wire [5:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1 
       (.I0(out[0]),
        .I1(RD_PNTR_WR[0]),
        .I2(out[1]),
        .I3(RD_PNTR_WR[1]),
        .O(v1_reg[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1 
       (.I0(out[2]),
        .I1(RD_PNTR_WR[2]),
        .I2(out[3]),
        .I3(RD_PNTR_WR[3]),
        .O(v1_reg[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1 
       (.I0(out[4]),
        .I1(RD_PNTR_WR[4]),
        .I2(out[5]),
        .I3(RD_PNTR_WR[5]),
        .O(v1_reg[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1 
       (.I0(out[6]),
        .I1(RD_PNTR_WR[6]),
        .I2(out[7]),
        .I3(RD_PNTR_WR[7]),
        .O(v1_reg[3]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp2,\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],v1_reg[5:4]}));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[4].gms.ms_i_1 
       (.I0(out[8]),
        .I1(RD_PNTR_WR[8]),
        .I2(out[9]),
        .I3(RD_PNTR_WR[9]),
        .O(v1_reg[4]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[5].gms.ms_i_1 
       (.I0(out[10]),
        .I1(RD_PNTR_WR[10]),
        .I2(out[11]),
        .I3(RD_PNTR_WR[11]),
        .O(v1_reg[5]));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fifo_64in_out_compare_1
   (comp0,
    WR_PNTR_RD,
    I1);
  output comp0;
  input [11:0]WR_PNTR_RD;
  input [11:0]I1;

  wire [11:0]I1;
  wire [11:0]WR_PNTR_RD;
  wire comp0;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [5:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1 
       (.I0(WR_PNTR_RD[0]),
        .I1(I1[0]),
        .I2(WR_PNTR_RD[1]),
        .I3(I1[1]),
        .O(v1_reg[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1 
       (.I0(WR_PNTR_RD[2]),
        .I1(I1[2]),
        .I2(WR_PNTR_RD[3]),
        .I3(I1[3]),
        .O(v1_reg[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1 
       (.I0(WR_PNTR_RD[4]),
        .I1(I1[4]),
        .I2(WR_PNTR_RD[5]),
        .I3(I1[5]),
        .O(v1_reg[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1 
       (.I0(WR_PNTR_RD[6]),
        .I1(I1[6]),
        .I2(WR_PNTR_RD[7]),
        .I3(I1[7]),
        .O(v1_reg[3]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp0,\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],v1_reg[5:4]}));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[4].gms.ms_i_1 
       (.I0(WR_PNTR_RD[8]),
        .I1(I1[8]),
        .I2(WR_PNTR_RD[9]),
        .I3(I1[9]),
        .O(v1_reg[4]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[5].gms.ms_i_1 
       (.I0(WR_PNTR_RD[10]),
        .I1(I1[10]),
        .I2(WR_PNTR_RD[11]),
        .I3(I1[11]),
        .O(v1_reg[5]));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fifo_64in_out_compare_2
   (comp1,
    WR_PNTR_RD,
    out);
  output comp1;
  input [11:0]WR_PNTR_RD;
  input [11:0]out;

  wire [11:0]WR_PNTR_RD;
  wire comp1;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [11:0]out;
  wire [5:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1 
       (.I0(WR_PNTR_RD[0]),
        .I1(out[0]),
        .I2(WR_PNTR_RD[1]),
        .I3(out[1]),
        .O(v1_reg[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1 
       (.I0(WR_PNTR_RD[2]),
        .I1(out[2]),
        .I2(WR_PNTR_RD[3]),
        .I3(out[3]),
        .O(v1_reg[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1 
       (.I0(WR_PNTR_RD[4]),
        .I1(out[4]),
        .I2(WR_PNTR_RD[5]),
        .I3(out[5]),
        .O(v1_reg[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1 
       (.I0(WR_PNTR_RD[6]),
        .I1(out[6]),
        .I2(WR_PNTR_RD[7]),
        .I3(out[7]),
        .O(v1_reg[3]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp1,\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],v1_reg[5:4]}));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[4].gms.ms_i_1 
       (.I0(WR_PNTR_RD[8]),
        .I1(out[8]),
        .I2(WR_PNTR_RD[9]),
        .I3(out[9]),
        .O(v1_reg[4]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[5].gms.ms_i_1 
       (.I0(WR_PNTR_RD[10]),
        .I1(out[10]),
        .I2(WR_PNTR_RD[11]),
        .I3(out[11]),
        .O(v1_reg[5]));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module fifo_64in_out_fifo_generator_ramfifo
   (empty,
    dout,
    valid,
    full,
    rd_data_count,
    rd_en,
    wr_en,
    wr_clk,
    rd_clk,
    din,
    rst);
  output empty;
  output [63:0]dout;
  output valid;
  output full;
  output [11:0]rd_data_count;
  input rd_en;
  input wr_en;
  input wr_clk;
  input rd_clk;
  input [63:0]din;
  input rst;

  wire RD_RST;
  wire RST;
  wire [63:0]din;
  wire [63:0]dout;
  wire empty;
  wire full;
  wire \n_0_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_16_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_17_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_18_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_19_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_1_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_1_gntv_or_sync_fifo.gl0.wr ;
  wire \n_20_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_21_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_22_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_23_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_2_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_3_gntv_or_sync_fifo.gcx.clkx ;
  wire [11:0]p_0_out;
  wire p_18_out;
  wire [11:0]p_1_out;
  wire [11:0]p_20_out;
  wire [11:0]p_9_out;
  wire rd_clk;
  wire [11:0]rd_data_count;
  wire rd_en;
  wire [1:0]rd_rst_i;
  wire rst;
  wire rst_d2;
  wire rst_full_gen_i;
  wire tmp_ram_rd_en;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire [0:0]wr_rst_i;

fifo_64in_out_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.I1(p_9_out),
        .I2(wr_rst_i),
        .I3(rd_rst_i[1]),
        .O1({\n_16_gntv_or_sync_fifo.gcx.clkx ,\n_17_gntv_or_sync_fifo.gcx.clkx ,\n_18_gntv_or_sync_fifo.gcx.clkx ,\n_19_gntv_or_sync_fifo.gcx.clkx }),
        .O2({\n_20_gntv_or_sync_fifo.gcx.clkx ,\n_21_gntv_or_sync_fifo.gcx.clkx ,\n_22_gntv_or_sync_fifo.gcx.clkx ,\n_23_gntv_or_sync_fifo.gcx.clkx }),
        .Q(p_20_out),
        .RD_PNTR_WR(p_0_out),
        .S({\n_0_gntv_or_sync_fifo.gcx.clkx ,\n_1_gntv_or_sync_fifo.gcx.clkx ,\n_2_gntv_or_sync_fifo.gcx.clkx ,\n_3_gntv_or_sync_fifo.gcx.clkx }),
        .WR_PNTR_RD(p_1_out),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
fifo_64in_out_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.I1({\n_16_gntv_or_sync_fifo.gcx.clkx ,\n_17_gntv_or_sync_fifo.gcx.clkx ,\n_18_gntv_or_sync_fifo.gcx.clkx ,\n_19_gntv_or_sync_fifo.gcx.clkx }),
        .O1(p_20_out),
        .O2({\n_20_gntv_or_sync_fifo.gcx.clkx ,\n_21_gntv_or_sync_fifo.gcx.clkx ,\n_22_gntv_or_sync_fifo.gcx.clkx ,\n_23_gntv_or_sync_fifo.gcx.clkx }),
        .Q(RD_RST),
        .S({\n_0_gntv_or_sync_fifo.gcx.clkx ,\n_1_gntv_or_sync_fifo.gcx.clkx ,\n_2_gntv_or_sync_fifo.gcx.clkx ,\n_3_gntv_or_sync_fifo.gcx.clkx }),
        .WR_PNTR_RD(p_1_out),
        .empty(empty),
        .p_18_out(p_18_out),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .valid(valid));
fifo_64in_out_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.O1(\n_1_gntv_or_sync_fifo.gl0.wr ),
        .O2(p_9_out),
        .Q(RST),
        .RD_PNTR_WR(p_0_out),
        .full(full),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
fifo_64in_out_memory \gntv_or_sync_fifo.mem 
       (.I1(\n_1_gntv_or_sync_fifo.gl0.wr ),
        .O1(p_20_out),
        .O2(p_9_out),
        .Q(rd_rst_i[0]),
        .din(din),
        .dout(dout),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
fifo_64in_out_reset_blk_ramfifo rstblk
       (.O1({RST,wr_rst_i}),
        .Q({RD_RST,rd_rst_i}),
        .p_18_out(p_18_out),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module fifo_64in_out_fifo_generator_top
   (empty,
    dout,
    valid,
    full,
    rd_data_count,
    rd_en,
    wr_en,
    wr_clk,
    rd_clk,
    din,
    rst);
  output empty;
  output [63:0]dout;
  output valid;
  output full;
  output [11:0]rd_data_count;
  input rd_en;
  input wr_en;
  input wr_clk;
  input rd_clk;
  input [63:0]din;
  input rst;

  wire [63:0]din;
  wire [63:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [11:0]rd_data_count;
  wire rd_en;
  wire rst;
  wire valid;
  wire wr_clk;
  wire wr_en;

fifo_64in_out_fifo_generator_ramfifo \grf.rf 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rst(rst),
        .valid(valid),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "12" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "64" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "64" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_FAMILY = "virtex7" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_BACKUP = "0" *) (* C_HAS_DATA_COUNT = "0" *) 
(* C_HAS_INT_CLK = "0" *) (* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) 
(* C_HAS_RD_DATA_COUNT = "1" *) (* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "1" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "2" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_MEMORY_TYPE = "1" *) 
(* C_MIF_FILE_NAME = "BlankString" *) (* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "4kx9" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "4093" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "4092" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_RD_DATA_COUNT_WIDTH = "12" *) (* C_RD_DEPTH = "4096" *) (* C_RD_FREQ = "1" *) 
(* C_RD_PNTR_WIDTH = "12" *) (* C_UNDERFLOW_LOW = "0" *) (* C_USE_DOUT_RST = "1" *) 
(* C_USE_ECC = "0" *) (* C_USE_EMBEDDED_REG = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_POWER_SAVING_MODE = "0" *) (* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "12" *) 
(* C_WR_DEPTH = "4096" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "12" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* C_MSGON_VAL = "1" *) (* C_ENABLE_RST_SYNC = "1" *) 
(* C_ERROR_INJECTION_TYPE = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_AXI_TYPE = "1" *) (* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) 
(* C_HAS_SLAVE_CE = "0" *) (* C_HAS_MASTER_CE = "0" *) (* C_ADD_NGC_CONSTRAINT = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_AXI_ID_WIDTH = "1" *) (* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_DATA_WIDTH = "64" *) 
(* C_AXI_LEN_WIDTH = "8" *) (* C_AXI_LOCK_WIDTH = "1" *) (* C_HAS_AXI_ID = "0" *) 
(* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_RUSER = "0" *) (* C_AXI_ARUSER_WIDTH = "1" *) 
(* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TID = "0" *) 
(* C_HAS_AXIS_TDEST = "0" *) (* C_HAS_AXIS_TUSER = "1" *) (* C_HAS_AXIS_TREADY = "1" *) 
(* C_HAS_AXIS_TLAST = "0" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) 
(* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TSTRB_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) 
(* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) (* C_WRCH_TYPE = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_AXIS_TYPE = "0" *) 
(* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RACH = "1" *) (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
(* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) (* C_APPLICATION_TYPE_WRCH = "0" *) 
(* C_APPLICATION_TYPE_RACH = "0" *) (* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
(* C_USE_ECC_WACH = "0" *) (* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
(* C_DIN_WIDTH_WACH = "32" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) (* C_DIN_WIDTH_AXIS = "1" *) 
(* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) (* C_WR_DEPTH_WRCH = "16" *) 
(* C_WR_DEPTH_RACH = "16" *) (* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_AXIS = "1024" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
(* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
(* C_HAS_DATA_COUNTS_RACH = "0" *) (* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_WACH = "0" *) (* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) (* C_PROG_FULL_TYPE_AXIS = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) (* C_REG_SLICE_MODE_AXIS = "0" *) 
module fifo_64in_out_fifo_generator_v12_0__parameterized0
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [63:0]din;
  input wr_en;
  input rd_en;
  input [11:0]prog_empty_thresh;
  input [11:0]prog_empty_thresh_assert;
  input [11:0]prog_empty_thresh_negate;
  input [11:0]prog_full_thresh;
  input [11:0]prog_full_thresh_assert;
  input [11:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [63:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [11:0]data_count;
  output [11:0]rd_data_count;
  output [11:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire axi_ar_injectdbiterr;
  wire axi_ar_injectsbiterr;
  wire [3:0]axi_ar_prog_empty_thresh;
  wire [3:0]axi_ar_prog_full_thresh;
  wire axi_aw_injectdbiterr;
  wire axi_aw_injectsbiterr;
  wire [3:0]axi_aw_prog_empty_thresh;
  wire [3:0]axi_aw_prog_full_thresh;
  wire axi_b_injectdbiterr;
  wire axi_b_injectsbiterr;
  wire [3:0]axi_b_prog_empty_thresh;
  wire [3:0]axi_b_prog_full_thresh;
  wire axi_r_injectdbiterr;
  wire axi_r_injectsbiterr;
  wire [9:0]axi_r_prog_empty_thresh;
  wire [9:0]axi_r_prog_full_thresh;
  wire axi_w_injectdbiterr;
  wire axi_w_injectsbiterr;
  wire [9:0]axi_w_prog_empty_thresh;
  wire [9:0]axi_w_prog_full_thresh;
  wire axis_injectdbiterr;
  wire axis_injectsbiterr;
  wire [9:0]axis_prog_empty_thresh;
  wire [9:0]axis_prog_full_thresh;
  wire backup;
  wire backup_marker;
  wire clk;
  wire [63:0]din;
  wire [63:0]dout;
  wire empty;
  wire full;
  wire injectdbiterr;
  wire injectsbiterr;
  wire int_clk;
  wire m_aclk;
  wire m_aclk_en;
  wire m_axi_arready;
  wire m_axi_awready;
  wire [0:0]m_axi_bid;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_buser;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axis_tready;
  wire [11:0]prog_empty_thresh;
  wire [11:0]prog_empty_thresh_assert;
  wire [11:0]prog_empty_thresh_negate;
  wire [11:0]prog_full_thresh;
  wire [11:0]prog_full_thresh_assert;
  wire [11:0]prog_full_thresh_negate;
  wire rd_clk;
  wire [11:0]rd_data_count;
  wire rd_en;
  wire rd_rst;
  wire rst;
  wire s_aclk;
  wire s_aclk_en;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [0:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire [0:0]s_axi_wid;
  wire s_axi_wlast;
  wire [7:0]s_axi_wstrb;
  wire [0:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire [7:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [0:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire [0:0]s_axis_tstrb;
  wire [3:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire srst;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire wr_rst;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[11] = \<const0> ;
  assign data_count[10] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
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
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
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
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
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
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
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
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[11] = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
fifo_64in_out_fifo_generator_v12_0_synth inst_fifo_gen
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rst(rst),
        .valid(valid),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0_synth" *) 
module fifo_64in_out_fifo_generator_v12_0_synth
   (empty,
    dout,
    valid,
    full,
    rd_data_count,
    rd_en,
    wr_en,
    wr_clk,
    rd_clk,
    din,
    rst);
  output empty;
  output [63:0]dout;
  output valid;
  output full;
  output [11:0]rd_data_count;
  input rd_en;
  input wr_en;
  input wr_clk;
  input rd_clk;
  input [63:0]din;
  input rst;

  wire [63:0]din;
  wire [63:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [11:0]rd_data_count;
  wire rd_en;
  wire rst;
  wire valid;
  wire wr_clk;
  wire wr_en;

fifo_64in_out_fifo_generator_top \gconvfifo.rf 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rst(rst),
        .valid(valid),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module fifo_64in_out_memory
   (dout,
    wr_clk,
    rd_clk,
    I1,
    tmp_ram_rd_en,
    Q,
    O2,
    O1,
    din);
  output [63:0]dout;
  input wr_clk;
  input rd_clk;
  input I1;
  input tmp_ram_rd_en;
  input [0:0]Q;
  input [11:0]O2;
  input [11:0]O1;
  input [63:0]din;

  wire I1;
  wire [11:0]O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [63:0]din;
  wire [63:0]dout;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

fifo_64in_out_blk_mem_gen_v8_2__parameterized0 \gbm.gbmg.gbmga.ngecc.bmg 
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .Q(Q),
        .din(din),
        .dout(dout),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module fifo_64in_out_rd_bin_cntr
   (out,
    O1,
    E,
    rd_clk,
    Q);
  output [11:0]out;
  output [11:0]O1;
  input [0:0]E;
  input rd_clk;
  input [0:0]Q;

  wire [0:0]E;
  wire [11:0]O1;
  wire [0:0]Q;
  wire \n_0_gc0.count[0]_i_2 ;
  wire \n_0_gc0.count_reg[0]_i_1 ;
  wire \n_0_gc0.count_reg[10]_i_1 ;
  wire \n_0_gc0.count_reg[10]_i_2 ;
  wire \n_0_gc0.count_reg[11]_i_1 ;
  wire \n_0_gc0.count_reg[1]_i_1 ;
  wire \n_0_gc0.count_reg[1]_i_2 ;
  wire \n_0_gc0.count_reg[2]_i_1 ;
  wire \n_0_gc0.count_reg[2]_i_2 ;
  wire \n_0_gc0.count_reg[3]_i_1 ;
  wire \n_0_gc0.count_reg[3]_i_2 ;
  wire \n_0_gc0.count_reg[4]_i_1 ;
  wire \n_0_gc0.count_reg[4]_i_2 ;
  wire \n_0_gc0.count_reg[5]_i_1 ;
  wire \n_0_gc0.count_reg[5]_i_2 ;
  wire \n_0_gc0.count_reg[6]_i_1 ;
  wire \n_0_gc0.count_reg[6]_i_2 ;
  wire \n_0_gc0.count_reg[7]_i_1 ;
  wire \n_0_gc0.count_reg[7]_i_2 ;
  wire \n_0_gc0.count_reg[8]_i_1 ;
  wire \n_0_gc0.count_reg[8]_i_2 ;
  wire \n_0_gc0.count_reg[9]_i_1 ;
  wire \n_0_gc0.count_reg[9]_i_2 ;
  wire [11:0]out;
  wire rd_clk;
  wire [3:2]\NLW_gc0.count_reg[9]_i_2_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_gc0.count_reg[9]_i_2_CARRY4_DI_UNCONNECTED ;

LUT1 #(
    .INIT(2'h1)) 
     \gc0.count[0]_i_2 
       (.I0(out[0]),
        .O(\n_0_gc0.count[0]_i_2 ));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(out[0]),
        .Q(O1[0]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(out[10]),
        .Q(O1[10]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[11] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(out[11]),
        .Q(O1[11]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(out[1]),
        .Q(O1[1]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(out[2]),
        .Q(O1[2]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(out[3]),
        .Q(O1[3]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(out[4]),
        .Q(O1[4]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(out[5]),
        .Q(O1[5]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(out[6]),
        .Q(O1[6]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(out[7]),
        .Q(O1[7]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(out[8]),
        .Q(O1[8]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(out[9]),
        .Q(O1[9]));
FDPE #(
    .INIT(1'b1)) 
     \gc0.count_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\n_0_gc0.count_reg[0]_i_1 ),
        .PRE(Q),
        .Q(out[0]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(\n_0_gc0.count_reg[10]_i_1 ),
        .Q(out[10]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[11] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(\n_0_gc0.count_reg[11]_i_1 ),
        .Q(out[11]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(\n_0_gc0.count_reg[1]_i_1 ),
        .Q(out[1]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \gc0.count_reg[1]_i_2_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gc0.count_reg[4]_i_2 ,\n_0_gc0.count_reg[3]_i_2 ,\n_0_gc0.count_reg[2]_i_2 ,\n_0_gc0.count_reg[1]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_0_gc0.count_reg[3]_i_1 ,\n_0_gc0.count_reg[2]_i_1 ,\n_0_gc0.count_reg[1]_i_1 ,\n_0_gc0.count_reg[0]_i_1 }),
        .S({out[3:1],\n_0_gc0.count[0]_i_2 }));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(\n_0_gc0.count_reg[2]_i_1 ),
        .Q(out[2]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(\n_0_gc0.count_reg[3]_i_1 ),
        .Q(out[3]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(\n_0_gc0.count_reg[4]_i_1 ),
        .Q(out[4]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(\n_0_gc0.count_reg[5]_i_1 ),
        .Q(out[5]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \gc0.count_reg[5]_i_2_CARRY4 
       (.CI(\n_0_gc0.count_reg[4]_i_2 ),
        .CO({\n_0_gc0.count_reg[8]_i_2 ,\n_0_gc0.count_reg[7]_i_2 ,\n_0_gc0.count_reg[6]_i_2 ,\n_0_gc0.count_reg[5]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_gc0.count_reg[7]_i_1 ,\n_0_gc0.count_reg[6]_i_1 ,\n_0_gc0.count_reg[5]_i_1 ,\n_0_gc0.count_reg[4]_i_1 }),
        .S(out[7:4]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(\n_0_gc0.count_reg[6]_i_1 ),
        .Q(out[6]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(\n_0_gc0.count_reg[7]_i_1 ),
        .Q(out[7]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(\n_0_gc0.count_reg[8]_i_1 ),
        .Q(out[8]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .CLR(Q),
        .D(\n_0_gc0.count_reg[9]_i_1 ),
        .Q(out[9]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \gc0.count_reg[9]_i_2_CARRY4 
       (.CI(\n_0_gc0.count_reg[8]_i_2 ),
        .CO({\NLW_gc0.count_reg[9]_i_2_CARRY4_CO_UNCONNECTED [3:2],\n_0_gc0.count_reg[10]_i_2 ,\n_0_gc0.count_reg[9]_i_2 }),
        .CYINIT(1'b0),
        .DI({\NLW_gc0.count_reg[9]_i_2_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O({\n_0_gc0.count_reg[11]_i_1 ,\n_0_gc0.count_reg[10]_i_1 ,\n_0_gc0.count_reg[9]_i_1 ,\n_0_gc0.count_reg[8]_i_1 }),
        .S(out[11:8]));
endmodule

(* ORIG_REF_NAME = "rd_dc_as" *) 
module fifo_64in_out_rd_dc_as
   (rd_data_count,
    rd_clk,
    Q,
    WR_PNTR_RD,
    S,
    I1,
    O2);
  output [11:0]rd_data_count;
  input rd_clk;
  input [0:0]Q;
  input [10:0]WR_PNTR_RD;
  input [3:0]S;
  input [3:0]I1;
  input [3:0]O2;

  wire [3:0]I1;
  wire [3:0]O2;
  wire [0:0]Q;
  wire [3:0]S;
  wire [10:0]WR_PNTR_RD;
  wire [11:0]minusOp;
  wire \n_0_rd_dc_i_reg[3]_i_1 ;
  wire \n_0_rd_dc_i_reg[7]_i_1 ;
  wire \n_1_rd_dc_i_reg[11]_i_1 ;
  wire \n_1_rd_dc_i_reg[3]_i_1 ;
  wire \n_1_rd_dc_i_reg[7]_i_1 ;
  wire \n_2_rd_dc_i_reg[11]_i_1 ;
  wire \n_2_rd_dc_i_reg[3]_i_1 ;
  wire \n_2_rd_dc_i_reg[7]_i_1 ;
  wire \n_3_rd_dc_i_reg[11]_i_1 ;
  wire \n_3_rd_dc_i_reg[3]_i_1 ;
  wire \n_3_rd_dc_i_reg[7]_i_1 ;
  wire rd_clk;
  wire [11:0]rd_data_count;
  wire [3:3]\NLW_rd_dc_i_reg[11]_i_1_CO_UNCONNECTED ;

FDCE #(
    .INIT(1'b0)) 
     \rd_dc_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(minusOp[0]),
        .Q(rd_data_count[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_dc_i_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(minusOp[10]),
        .Q(rd_data_count[10]));
FDCE #(
    .INIT(1'b0)) 
     \rd_dc_i_reg[11] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(minusOp[11]),
        .Q(rd_data_count[11]));
CARRY4 \rd_dc_i_reg[11]_i_1 
       (.CI(\n_0_rd_dc_i_reg[7]_i_1 ),
        .CO({\NLW_rd_dc_i_reg[11]_i_1_CO_UNCONNECTED [3],\n_1_rd_dc_i_reg[11]_i_1 ,\n_2_rd_dc_i_reg[11]_i_1 ,\n_3_rd_dc_i_reg[11]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,WR_PNTR_RD[10:8]}),
        .O(minusOp[11:8]),
        .S(O2));
FDCE #(
    .INIT(1'b0)) 
     \rd_dc_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(minusOp[1]),
        .Q(rd_data_count[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_dc_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(minusOp[2]),
        .Q(rd_data_count[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_dc_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(minusOp[3]),
        .Q(rd_data_count[3]));
CARRY4 \rd_dc_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\n_0_rd_dc_i_reg[3]_i_1 ,\n_1_rd_dc_i_reg[3]_i_1 ,\n_2_rd_dc_i_reg[3]_i_1 ,\n_3_rd_dc_i_reg[3]_i_1 }),
        .CYINIT(1'b1),
        .DI(WR_PNTR_RD[3:0]),
        .O(minusOp[3:0]),
        .S(S));
FDCE #(
    .INIT(1'b0)) 
     \rd_dc_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(minusOp[4]),
        .Q(rd_data_count[4]));
FDCE #(
    .INIT(1'b0)) 
     \rd_dc_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(minusOp[5]),
        .Q(rd_data_count[5]));
FDCE #(
    .INIT(1'b0)) 
     \rd_dc_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(minusOp[6]),
        .Q(rd_data_count[6]));
FDCE #(
    .INIT(1'b0)) 
     \rd_dc_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(minusOp[7]),
        .Q(rd_data_count[7]));
CARRY4 \rd_dc_i_reg[7]_i_1 
       (.CI(\n_0_rd_dc_i_reg[3]_i_1 ),
        .CO({\n_0_rd_dc_i_reg[7]_i_1 ,\n_1_rd_dc_i_reg[7]_i_1 ,\n_2_rd_dc_i_reg[7]_i_1 ,\n_3_rd_dc_i_reg[7]_i_1 }),
        .CYINIT(1'b0),
        .DI(WR_PNTR_RD[7:4]),
        .O(minusOp[7:4]),
        .S(I1));
FDCE #(
    .INIT(1'b0)) 
     \rd_dc_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(minusOp[8]),
        .Q(rd_data_count[8]));
FDCE #(
    .INIT(1'b0)) 
     \rd_dc_i_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(minusOp[9]),
        .Q(rd_data_count[9]));
endmodule

(* ORIG_REF_NAME = "rd_handshaking_flags" *) 
module fifo_64in_out_rd_handshaking_flags
   (valid,
    I1,
    rd_clk,
    Q);
  output valid;
  input I1;
  input rd_clk;
  input [0:0]Q;

  wire I1;
  wire [0:0]Q;
  wire rd_clk;
  wire valid;

FDCE #(
    .INIT(1'b0)) 
     \gv.ram_valid_d1_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(Q),
        .D(I1),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module fifo_64in_out_rd_logic
   (empty,
    p_18_out,
    valid,
    O1,
    rd_data_count,
    rd_clk,
    Q,
    rd_en,
    WR_PNTR_RD,
    S,
    I1,
    O2);
  output empty;
  output p_18_out;
  output valid;
  output [11:0]O1;
  output [11:0]rd_data_count;
  input rd_clk;
  input [0:0]Q;
  input rd_en;
  input [11:0]WR_PNTR_RD;
  input [3:0]S;
  input [3:0]I1;
  input [3:0]O2;

  wire [3:0]I1;
  wire [11:0]O1;
  wire [3:0]O2;
  wire [0:0]Q;
  wire [3:0]S;
  wire [11:0]WR_PNTR_RD;
  wire empty;
  wire \n_2_gras.rsts ;
  wire \n_3_gras.rsts ;
  wire p_18_out;
  wire rd_clk;
  wire [11:0]rd_data_count;
  wire rd_en;
  wire [11:0]rd_pntr_plus1;
  wire valid;

fifo_64in_out_rd_dc_as \gras.grdc1.rdc 
       (.I1(I1),
        .O2(O2),
        .Q(Q),
        .S(S),
        .WR_PNTR_RD(WR_PNTR_RD[10:0]),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count));
fifo_64in_out_rd_status_flags_as \gras.rsts 
       (.E(\n_2_gras.rsts ),
        .I1(O1),
        .O1(\n_3_gras.rsts ),
        .Q(Q),
        .WR_PNTR_RD(WR_PNTR_RD),
        .empty(empty),
        .out(rd_pntr_plus1),
        .p_18_out(p_18_out),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
fifo_64in_out_rd_handshaking_flags \grhf.rhf 
       (.I1(\n_3_gras.rsts ),
        .Q(Q),
        .rd_clk(rd_clk),
        .valid(valid));
fifo_64in_out_rd_bin_cntr rpntr
       (.E(\n_2_gras.rsts ),
        .O1(O1),
        .Q(Q),
        .out(rd_pntr_plus1),
        .rd_clk(rd_clk));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module fifo_64in_out_rd_status_flags_as
   (empty,
    p_18_out,
    E,
    O1,
    rd_clk,
    Q,
    rd_en,
    WR_PNTR_RD,
    I1,
    out);
  output empty;
  output p_18_out;
  output [0:0]E;
  output O1;
  input rd_clk;
  input [0:0]Q;
  input rd_en;
  input [11:0]WR_PNTR_RD;
  input [11:0]I1;
  input [11:0]out;

  wire [0:0]E;
  wire [11:0]I1;
  wire O1;
  wire [0:0]Q;
  wire [11:0]WR_PNTR_RD;
  wire comp0;
  wire comp1;
  wire empty;
  wire n_0_ram_empty_i_i_1;
  wire [11:0]out;
  wire p_18_out;
  wire rd_clk;
  wire rd_en;

fifo_64in_out_compare_1 c0
       (.I1(I1),
        .WR_PNTR_RD(WR_PNTR_RD),
        .comp0(comp0));
fifo_64in_out_compare_2 c1
       (.WR_PNTR_RD(WR_PNTR_RD),
        .comp1(comp1),
        .out(out));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \gc0.count_d1[11]_i_1 
       (.I0(rd_en),
        .I1(p_18_out),
        .O(E));
LUT2 #(
    .INIT(4'h2)) 
     \gv.ram_valid_d1_i_1 
       (.I0(rd_en),
        .I1(empty),
        .O(O1));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_empty_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(n_0_ram_empty_i_i_1),
        .PRE(Q),
        .Q(p_18_out));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT4 #(
    .INIT(16'hAEAA)) 
     ram_empty_i_i_1
       (.I0(comp0),
        .I1(rd_en),
        .I2(p_18_out),
        .I3(comp1),
        .O(n_0_ram_empty_i_i_1));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_empty_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(n_0_ram_empty_i_i_1),
        .PRE(Q),
        .Q(empty));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module fifo_64in_out_reset_blk_ramfifo
   (rst_d2,
    rst_full_gen_i,
    tmp_ram_rd_en,
    Q,
    O1,
    wr_clk,
    rst,
    rd_clk,
    p_18_out,
    rd_en);
  output rst_d2;
  output rst_full_gen_i;
  output tmp_ram_rd_en;
  output [2:0]Q;
  output [1:0]O1;
  input wr_clk;
  input rst;
  input rd_clk;
  input p_18_out;
  input rd_en;

  wire [1:0]O1;
  wire [2:0]Q;
  wire \n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ;
  wire \n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ;
  wire p_18_out;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d1;
  wire rd_rst_asreg_d2;
  wire rst;
  wire rst_d1;
  wire rst_d2;
  wire rst_d3;
  wire rst_full_gen_i;
  wire tmp_ram_rd_en;
  wire wr_clk;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d1;
  wire wr_rst_asreg_d2;

LUT3 #(
    .INIT(8'hBA)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2 
       (.I0(Q[0]),
        .I1(p_18_out),
        .I2(rd_en),
        .O(tmp_ram_rd_en));
FDCE #(
    .INIT(1'b0)) 
     \grstd1.grst_full.grst_f.RST_FULL_GEN_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst),
        .D(rst_d3),
        .Q(rst_full_gen_i));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_d1));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst),
        .Q(rst_d2));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d2),
        .PRE(rst),
        .Q(rst_d3));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(rd_rst_asreg_d1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rd_rst_asreg_d1),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(rd_clk),
        .CE(rd_rst_asreg_d1),
        .D(1'b0),
        .PRE(rst),
        .Q(rd_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(Q[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(Q[1]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(wr_rst_asreg_d1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(wr_rst_asreg_d1),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(wr_clk),
        .CE(wr_rst_asreg_d1),
        .D(1'b0),
        .PRE(rst),
        .Q(wr_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ),
        .Q(O1[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ),
        .Q(O1[1]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module fifo_64in_out_synchronizer_ff
   (Q,
    I1,
    rd_clk,
    I3);
  output [11:0]Q;
  input [11:0]I1;
  input rd_clk;
  input [0:0]I3;

  wire [11:0]I1;
  wire [0:0]I3;
  wire [11:0]Q;
  wire rd_clk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(I1[10]),
        .Q(Q[10]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[11] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(I1[11]),
        .Q(Q[11]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(I1[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(I1[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(I1[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(I1[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(I1[7]),
        .Q(Q[7]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(I1[8]),
        .Q(Q[8]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(I1[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module fifo_64in_out_synchronizer_ff_3
   (Q,
    I1,
    wr_clk,
    I2);
  output [11:0]Q;
  input [11:0]I1;
  input wr_clk;
  input [0:0]I2;

  wire [11:0]I1;
  wire [0:0]I2;
  wire [11:0]Q;
  wire wr_clk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(I1[10]),
        .Q(Q[10]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[11] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(I1[11]),
        .Q(Q[11]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(I1[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(I1[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(I1[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(I1[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(I1[7]),
        .Q(Q[7]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(I1[8]),
        .Q(Q[8]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(I1[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module fifo_64in_out_synchronizer_ff_4
   (p_0_in,
    D,
    rd_clk,
    I3);
  output [11:0]p_0_in;
  input [11:0]D;
  input rd_clk;
  input [0:0]I3;

  wire [11:0]D;
  wire [0:0]I3;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[10] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire \n_0_Q_reg_reg[3] ;
  wire \n_0_Q_reg_reg[4] ;
  wire \n_0_Q_reg_reg[5] ;
  wire \n_0_Q_reg_reg[6] ;
  wire \n_0_Q_reg_reg[7] ;
  wire \n_0_Q_reg_reg[8] ;
  wire \n_0_Q_reg_reg[9] ;
  wire [11:0]p_0_in;
  wire rd_clk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(D[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(D[10]),
        .Q(\n_0_Q_reg_reg[10] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[11] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(D[11]),
        .Q(p_0_in[11]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(D[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(D[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(D[3]),
        .Q(\n_0_Q_reg_reg[3] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(D[4]),
        .Q(\n_0_Q_reg_reg[4] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(D[5]),
        .Q(\n_0_Q_reg_reg[5] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(D[6]),
        .Q(\n_0_Q_reg_reg[6] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(D[7]),
        .Q(\n_0_Q_reg_reg[7] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(D[8]),
        .Q(\n_0_Q_reg_reg[8] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(I3),
        .D(D[9]),
        .Q(\n_0_Q_reg_reg[9] ));
LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[0]_i_1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[0] ),
        .I3(p_0_in[3]),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_bin[10]_i_1 
       (.I0(\n_0_Q_reg_reg[10] ),
        .I1(p_0_in[11]),
        .O(p_0_in[10]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \wr_pntr_bin[1]_i_1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[3] ),
        .I3(\n_0_Q_reg_reg[5] ),
        .I4(p_0_in[6]),
        .I5(\n_0_Q_reg_reg[4] ),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \wr_pntr_bin[2]_i_1 
       (.I0(\n_0_Q_reg_reg[3] ),
        .I1(\n_0_Q_reg_reg[5] ),
        .I2(p_0_in[6]),
        .I3(\n_0_Q_reg_reg[4] ),
        .I4(\n_0_Q_reg_reg[2] ),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[3]_i_1 
       (.I0(\n_0_Q_reg_reg[4] ),
        .I1(p_0_in[6]),
        .I2(\n_0_Q_reg_reg[5] ),
        .I3(\n_0_Q_reg_reg[3] ),
        .O(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \wr_pntr_bin[4]_i_1 
       (.I0(\n_0_Q_reg_reg[5] ),
        .I1(p_0_in[6]),
        .I2(\n_0_Q_reg_reg[4] ),
        .O(p_0_in[4]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_bin[5]_i_1 
       (.I0(p_0_in[6]),
        .I1(\n_0_Q_reg_reg[5] ),
        .O(p_0_in[5]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \wr_pntr_bin[6]_i_1 
       (.I0(\n_0_Q_reg_reg[7] ),
        .I1(p_0_in[11]),
        .I2(\n_0_Q_reg_reg[9] ),
        .I3(\n_0_Q_reg_reg[10] ),
        .I4(\n_0_Q_reg_reg[8] ),
        .I5(\n_0_Q_reg_reg[6] ),
        .O(p_0_in[6]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \wr_pntr_bin[7]_i_1 
       (.I0(\n_0_Q_reg_reg[8] ),
        .I1(\n_0_Q_reg_reg[10] ),
        .I2(\n_0_Q_reg_reg[9] ),
        .I3(p_0_in[11]),
        .I4(\n_0_Q_reg_reg[7] ),
        .O(p_0_in[7]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[8]_i_1 
       (.I0(p_0_in[11]),
        .I1(\n_0_Q_reg_reg[9] ),
        .I2(\n_0_Q_reg_reg[10] ),
        .I3(\n_0_Q_reg_reg[8] ),
        .O(p_0_in[8]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \wr_pntr_bin[9]_i_1 
       (.I0(\n_0_Q_reg_reg[10] ),
        .I1(\n_0_Q_reg_reg[9] ),
        .I2(p_0_in[11]),
        .O(p_0_in[9]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module fifo_64in_out_synchronizer_ff_5
   (Q,
    O1,
    D,
    wr_clk,
    I2);
  output [0:0]Q;
  output [10:0]O1;
  input [11:0]D;
  input wr_clk;
  input [0:0]I2;

  wire [11:0]D;
  wire [0:0]I2;
  wire [10:0]O1;
  wire [0:0]Q;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[10] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire \n_0_Q_reg_reg[3] ;
  wire \n_0_Q_reg_reg[4] ;
  wire \n_0_Q_reg_reg[5] ;
  wire \n_0_Q_reg_reg[6] ;
  wire \n_0_Q_reg_reg[7] ;
  wire \n_0_Q_reg_reg[8] ;
  wire \n_0_Q_reg_reg[9] ;
  wire wr_clk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(D[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(D[10]),
        .Q(\n_0_Q_reg_reg[10] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[11] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(D[11]),
        .Q(Q));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(D[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(D[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(D[3]),
        .Q(\n_0_Q_reg_reg[3] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(D[4]),
        .Q(\n_0_Q_reg_reg[4] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(D[5]),
        .Q(\n_0_Q_reg_reg[5] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(D[6]),
        .Q(\n_0_Q_reg_reg[6] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(D[7]),
        .Q(\n_0_Q_reg_reg[7] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(D[8]),
        .Q(\n_0_Q_reg_reg[8] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(D[9]),
        .Q(\n_0_Q_reg_reg[9] ));
LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[0]_i_1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[0] ),
        .I3(O1[3]),
        .O(O1[0]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_bin[10]_i_1 
       (.I0(\n_0_Q_reg_reg[10] ),
        .I1(Q),
        .O(O1[10]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \rd_pntr_bin[1]_i_1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[3] ),
        .I3(\n_0_Q_reg_reg[5] ),
        .I4(O1[6]),
        .I5(\n_0_Q_reg_reg[4] ),
        .O(O1[1]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \rd_pntr_bin[2]_i_1 
       (.I0(\n_0_Q_reg_reg[3] ),
        .I1(\n_0_Q_reg_reg[5] ),
        .I2(O1[6]),
        .I3(\n_0_Q_reg_reg[4] ),
        .I4(\n_0_Q_reg_reg[2] ),
        .O(O1[2]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[3]_i_1 
       (.I0(\n_0_Q_reg_reg[4] ),
        .I1(O1[6]),
        .I2(\n_0_Q_reg_reg[5] ),
        .I3(\n_0_Q_reg_reg[3] ),
        .O(O1[3]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \rd_pntr_bin[4]_i_1 
       (.I0(\n_0_Q_reg_reg[5] ),
        .I1(O1[6]),
        .I2(\n_0_Q_reg_reg[4] ),
        .O(O1[4]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_bin[5]_i_1 
       (.I0(O1[6]),
        .I1(\n_0_Q_reg_reg[5] ),
        .O(O1[5]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \rd_pntr_bin[6]_i_1 
       (.I0(\n_0_Q_reg_reg[7] ),
        .I1(Q),
        .I2(\n_0_Q_reg_reg[9] ),
        .I3(\n_0_Q_reg_reg[10] ),
        .I4(\n_0_Q_reg_reg[8] ),
        .I5(\n_0_Q_reg_reg[6] ),
        .O(O1[6]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \rd_pntr_bin[7]_i_1 
       (.I0(\n_0_Q_reg_reg[8] ),
        .I1(\n_0_Q_reg_reg[10] ),
        .I2(\n_0_Q_reg_reg[9] ),
        .I3(Q),
        .I4(\n_0_Q_reg_reg[7] ),
        .O(O1[7]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[8]_i_1 
       (.I0(Q),
        .I1(\n_0_Q_reg_reg[9] ),
        .I2(\n_0_Q_reg_reg[10] ),
        .I3(\n_0_Q_reg_reg[8] ),
        .O(O1[8]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \rd_pntr_bin[9]_i_1 
       (.I0(\n_0_Q_reg_reg[10] ),
        .I1(\n_0_Q_reg_reg[9] ),
        .I2(Q),
        .O(O1[9]));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module fifo_64in_out_wr_bin_cntr
   (out,
    Q,
    O2,
    sel,
    wr_clk,
    I1);
  output [11:0]out;
  output [11:0]Q;
  output [11:0]O2;
  input sel;
  input wr_clk;
  input [0:0]I1;

  wire [0:0]I1;
  wire [11:0]O2;
  wire [11:0]Q;
  wire \n_0_gic0.gc0.count[0]_i_2 ;
  wire \n_0_gic0.gc0.count_reg[0]_i_1 ;
  wire \n_0_gic0.gc0.count_reg[10]_i_1 ;
  wire \n_0_gic0.gc0.count_reg[10]_i_2 ;
  wire \n_0_gic0.gc0.count_reg[11]_i_1 ;
  wire \n_0_gic0.gc0.count_reg[1]_i_1 ;
  wire \n_0_gic0.gc0.count_reg[1]_i_2 ;
  wire \n_0_gic0.gc0.count_reg[2]_i_1 ;
  wire \n_0_gic0.gc0.count_reg[2]_i_2 ;
  wire \n_0_gic0.gc0.count_reg[3]_i_1 ;
  wire \n_0_gic0.gc0.count_reg[3]_i_2 ;
  wire \n_0_gic0.gc0.count_reg[4]_i_1 ;
  wire \n_0_gic0.gc0.count_reg[4]_i_2 ;
  wire \n_0_gic0.gc0.count_reg[5]_i_1 ;
  wire \n_0_gic0.gc0.count_reg[5]_i_2 ;
  wire \n_0_gic0.gc0.count_reg[6]_i_1 ;
  wire \n_0_gic0.gc0.count_reg[6]_i_2 ;
  wire \n_0_gic0.gc0.count_reg[7]_i_1 ;
  wire \n_0_gic0.gc0.count_reg[7]_i_2 ;
  wire \n_0_gic0.gc0.count_reg[8]_i_1 ;
  wire \n_0_gic0.gc0.count_reg[8]_i_2 ;
  wire \n_0_gic0.gc0.count_reg[9]_i_1 ;
  wire \n_0_gic0.gc0.count_reg[9]_i_2 ;
  wire [11:0]out;
  wire sel;
  wire wr_clk;
  wire [3:2]\NLW_gic0.gc0.count_reg[9]_i_2_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_gic0.gc0.count_reg[9]_i_2_CARRY4_DI_UNCONNECTED ;

LUT1 #(
    .INIT(2'h1)) 
     \gic0.gc0.count[0]_i_2 
       (.I0(out[0]),
        .O(\n_0_gic0.gc0.count[0]_i_2 ));
FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_d1_reg[0] 
       (.C(wr_clk),
        .CE(sel),
        .D(out[0]),
        .PRE(I1),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[10] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(out[10]),
        .Q(Q[10]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[11] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(out[11]),
        .Q(Q[11]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[1] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(out[1]),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[2] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(out[2]),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[3] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(out[3]),
        .Q(Q[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[4] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(out[4]),
        .Q(Q[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[5] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(out[5]),
        .Q(Q[5]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[6] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(out[6]),
        .Q(Q[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[7] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(out[7]),
        .Q(Q[7]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[8] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(out[8]),
        .Q(Q[8]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[9] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(out[9]),
        .Q(Q[9]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[0] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(Q[0]),
        .Q(O2[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[10] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(Q[10]),
        .Q(O2[10]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[11] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(Q[11]),
        .Q(O2[11]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[1] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(Q[1]),
        .Q(O2[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[2] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(Q[2]),
        .Q(O2[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[3] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(Q[3]),
        .Q(O2[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[4] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(Q[4]),
        .Q(O2[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[5] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(Q[5]),
        .Q(O2[5]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[6] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(Q[6]),
        .Q(O2[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[7] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(Q[7]),
        .Q(O2[7]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[8] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(Q[8]),
        .Q(O2[8]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[9] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(Q[9]),
        .Q(O2[9]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[0] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(\n_0_gic0.gc0.count_reg[0]_i_1 ),
        .Q(out[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[10] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(\n_0_gic0.gc0.count_reg[10]_i_1 ),
        .Q(out[10]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[11] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(\n_0_gic0.gc0.count_reg[11]_i_1 ),
        .Q(out[11]));
FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_reg[1] 
       (.C(wr_clk),
        .CE(sel),
        .D(\n_0_gic0.gc0.count_reg[1]_i_1 ),
        .PRE(I1),
        .Q(out[1]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \gic0.gc0.count_reg[1]_i_2_CARRY4 
       (.CI(1'b0),
        .CO({\n_0_gic0.gc0.count_reg[4]_i_2 ,\n_0_gic0.gc0.count_reg[3]_i_2 ,\n_0_gic0.gc0.count_reg[2]_i_2 ,\n_0_gic0.gc0.count_reg[1]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_0_gic0.gc0.count_reg[3]_i_1 ,\n_0_gic0.gc0.count_reg[2]_i_1 ,\n_0_gic0.gc0.count_reg[1]_i_1 ,\n_0_gic0.gc0.count_reg[0]_i_1 }),
        .S({out[3:1],\n_0_gic0.gc0.count[0]_i_2 }));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[2] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(\n_0_gic0.gc0.count_reg[2]_i_1 ),
        .Q(out[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[3] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(\n_0_gic0.gc0.count_reg[3]_i_1 ),
        .Q(out[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[4] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(\n_0_gic0.gc0.count_reg[4]_i_1 ),
        .Q(out[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[5] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(\n_0_gic0.gc0.count_reg[5]_i_1 ),
        .Q(out[5]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \gic0.gc0.count_reg[5]_i_2_CARRY4 
       (.CI(\n_0_gic0.gc0.count_reg[4]_i_2 ),
        .CO({\n_0_gic0.gc0.count_reg[8]_i_2 ,\n_0_gic0.gc0.count_reg[7]_i_2 ,\n_0_gic0.gc0.count_reg[6]_i_2 ,\n_0_gic0.gc0.count_reg[5]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_0_gic0.gc0.count_reg[7]_i_1 ,\n_0_gic0.gc0.count_reg[6]_i_1 ,\n_0_gic0.gc0.count_reg[5]_i_1 ,\n_0_gic0.gc0.count_reg[4]_i_1 }),
        .S(out[7:4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[6] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(\n_0_gic0.gc0.count_reg[6]_i_1 ),
        .Q(out[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[7] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(\n_0_gic0.gc0.count_reg[7]_i_1 ),
        .Q(out[7]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[8] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(\n_0_gic0.gc0.count_reg[8]_i_1 ),
        .Q(out[8]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[9] 
       (.C(wr_clk),
        .CE(sel),
        .CLR(I1),
        .D(\n_0_gic0.gc0.count_reg[9]_i_1 ),
        .Q(out[9]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \gic0.gc0.count_reg[9]_i_2_CARRY4 
       (.CI(\n_0_gic0.gc0.count_reg[8]_i_2 ),
        .CO({\NLW_gic0.gc0.count_reg[9]_i_2_CARRY4_CO_UNCONNECTED [3:2],\n_0_gic0.gc0.count_reg[10]_i_2 ,\n_0_gic0.gc0.count_reg[9]_i_2 }),
        .CYINIT(1'b0),
        .DI({\NLW_gic0.gc0.count_reg[9]_i_2_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O({\n_0_gic0.gc0.count_reg[11]_i_1 ,\n_0_gic0.gc0.count_reg[10]_i_1 ,\n_0_gic0.gc0.count_reg[9]_i_1 ,\n_0_gic0.gc0.count_reg[8]_i_1 }),
        .S(out[11:8]));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module fifo_64in_out_wr_logic
   (full,
    O1,
    O2,
    wr_clk,
    rst_d2,
    wr_en,
    Q,
    RD_PNTR_WR,
    rst_full_gen_i);
  output full;
  output O1;
  output [11:0]O2;
  input wr_clk;
  input rst_d2;
  input wr_en;
  input [0:0]Q;
  input [11:0]RD_PNTR_WR;
  input rst_full_gen_i;

  wire O1;
  wire [11:0]O2;
  wire [0:0]Q;
  wire [11:0]RD_PNTR_WR;
  wire full;
  wire [11:0]p_8_out;
  wire rst_d2;
  wire rst_full_gen_i;
  wire wr_clk;
  wire wr_en;
  wire [11:0]wr_pntr_plus2;

fifo_64in_out_wr_status_flags_as \gwas.wsts 
       (.Q(p_8_out),
        .RD_PNTR_WR(RD_PNTR_WR),
        .full(full),
        .out(wr_pntr_plus2),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .sel(O1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
fifo_64in_out_wr_bin_cntr wpntr
       (.I1(Q),
        .O2(O2),
        .Q(p_8_out),
        .out(wr_pntr_plus2),
        .sel(O1),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module fifo_64in_out_wr_status_flags_as
   (full,
    sel,
    wr_clk,
    rst_d2,
    wr_en,
    Q,
    RD_PNTR_WR,
    out,
    rst_full_gen_i);
  output full;
  output sel;
  input wr_clk;
  input rst_d2;
  input wr_en;
  input [11:0]Q;
  input [11:0]RD_PNTR_WR;
  input [11:0]out;
  input rst_full_gen_i;

  wire [11:0]Q;
  wire [11:0]RD_PNTR_WR;
  wire comp1;
  wire comp2;
  wire full;
  wire [11:0]out;
  wire p_0_out;
  wire ram_full_i;
  wire rst_d2;
  wire rst_full_gen_i;
  wire sel;
  wire wr_clk;
  wire wr_en;

LUT2 #(
    .INIT(4'h2)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1 
       (.I0(wr_en),
        .I1(p_0_out),
        .O(sel));
fifo_64in_out_compare c1
       (.Q(Q),
        .RD_PNTR_WR(RD_PNTR_WR),
        .comp1(comp1));
fifo_64in_out_compare_0 c2
       (.RD_PNTR_WR(RD_PNTR_WR),
        .comp2(comp2),
        .out(out));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_fb_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_i),
        .PRE(rst_d2),
        .Q(p_0_out));
LUT5 #(
    .INIT(32'h55550400)) 
     ram_full_i_i_1
       (.I0(rst_full_gen_i),
        .I1(comp2),
        .I2(p_0_out),
        .I3(wr_en),
        .I4(comp1),
        .O(ram_full_i));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_i),
        .PRE(rst_d2),
        .Q(full));
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
