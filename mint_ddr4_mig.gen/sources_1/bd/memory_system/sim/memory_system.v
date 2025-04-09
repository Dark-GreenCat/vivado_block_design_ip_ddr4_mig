//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
//Date        : Thu Apr 10 04:10:23 2025
//Host        : edabk running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target memory_system.bd
//Design      : memory_system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "memory_system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=memory_system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "memory_system.hwdef" *) 
module memory_system
   (c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_ck_c,
    c0_ddr4_ck_t,
    c0_ddr4_cke,
    c0_ddr4_cs_n,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_ddr4_odt,
    c0_ddr4_par,
    c0_ddr4_reset_n,
    c0_ddr4_ui_clk,
    c0_sys_clk_n,
    c0_sys_clk_p,
    sys_rst);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c0_ddr4, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 17, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED NONE, DATA_WIDTH 72, MEMORY_PART MTA18ASF2G72PZ-2G3, MEMORY_TYPE RDIMMs, MEM_ADDR_MAP ROW_COLUMN_BANK_INTLV, SLOT Single, TIMEPERIOD_PS 833" *) output c0_ddr4_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 " *) output [16:0]c0_ddr4_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 " *) output [1:0]c0_ddr4_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 " *) output [1:0]c0_ddr4_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 " *) output c0_ddr4_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 " *) output c0_ddr4_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 " *) output c0_ddr4_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 " *) output c0_ddr4_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 " *) inout [71:0]c0_ddr4_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 " *) inout [17:0]c0_ddr4_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 " *) inout [17:0]c0_ddr4_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 " *) output c0_ddr4_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 " *) output c0_ddr4_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 c0_ddr4 " *) output c0_ddr4_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.C0_DDR4_UI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.C0_DDR4_UI_CLK, CLK_DOMAIN memory_system_ddr4_0_0_c0_ddr4_ui_clk, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.00" *) output c0_ddr4_ui_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 c0_sys " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c0_sys, CAN_DEBUG false, FREQ_HZ 300000000" *) input c0_sys_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 c0_sys " *) input c0_sys_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input sys_rst;

  wire C0_SYS_CLK_0_1_CLK_N;
  wire C0_SYS_CLK_0_1_CLK_P;
  wire DDR4_MIG_c0_ddr4_ui_clk1;
  wire DDR4_MIG_c0_ddr4_ui_clk_sync_rst;
  wire DDR4_MIG_c0_init_calib_complete;
  wire [0:0]NOT_GATE_Res;
  wire [33:0]axi_cdma_0_M_AXI_ARADDR;
  wire [1:0]axi_cdma_0_M_AXI_ARBURST;
  wire [3:0]axi_cdma_0_M_AXI_ARCACHE;
  wire [7:0]axi_cdma_0_M_AXI_ARLEN;
  wire [2:0]axi_cdma_0_M_AXI_ARPROT;
  wire axi_cdma_0_M_AXI_ARREADY;
  wire [2:0]axi_cdma_0_M_AXI_ARSIZE;
  wire axi_cdma_0_M_AXI_ARVALID;
  wire [33:0]axi_cdma_0_M_AXI_AWADDR;
  wire [1:0]axi_cdma_0_M_AXI_AWBURST;
  wire [3:0]axi_cdma_0_M_AXI_AWCACHE;
  wire [7:0]axi_cdma_0_M_AXI_AWLEN;
  wire [2:0]axi_cdma_0_M_AXI_AWPROT;
  wire axi_cdma_0_M_AXI_AWREADY;
  wire [2:0]axi_cdma_0_M_AXI_AWSIZE;
  wire axi_cdma_0_M_AXI_AWVALID;
  wire axi_cdma_0_M_AXI_BREADY;
  wire [1:0]axi_cdma_0_M_AXI_BRESP;
  wire axi_cdma_0_M_AXI_BVALID;
  wire [511:0]axi_cdma_0_M_AXI_RDATA;
  wire axi_cdma_0_M_AXI_RLAST;
  wire axi_cdma_0_M_AXI_RREADY;
  wire [1:0]axi_cdma_0_M_AXI_RRESP;
  wire axi_cdma_0_M_AXI_RVALID;
  wire [511:0]axi_cdma_0_M_AXI_WDATA;
  wire axi_cdma_0_M_AXI_WLAST;
  wire axi_cdma_0_M_AXI_WREADY;
  wire [63:0]axi_cdma_0_M_AXI_WSTRB;
  wire axi_cdma_0_M_AXI_WVALID;
  wire [31:0]axi_traffic_gen_0_M_AXI_LITE_CH1_AWADDR;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_AWREADY;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_AWVALID;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_BREADY;
  wire [1:0]axi_traffic_gen_0_M_AXI_LITE_CH1_BRESP;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_BVALID;
  wire [31:0]axi_traffic_gen_0_M_AXI_LITE_CH1_WDATA;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_WREADY;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_WVALID;
  wire ddr4_0_C0_DDR4_ACT_N;
  wire [16:0]ddr4_0_C0_DDR4_ADR;
  wire [1:0]ddr4_0_C0_DDR4_BA;
  wire [1:0]ddr4_0_C0_DDR4_BG;
  wire [0:0]ddr4_0_C0_DDR4_CKE;
  wire [0:0]ddr4_0_C0_DDR4_CK_C;
  wire [0:0]ddr4_0_C0_DDR4_CK_T;
  wire [0:0]ddr4_0_C0_DDR4_CS_N;
  wire [71:0]ddr4_0_C0_DDR4_DQ;
  wire [17:0]ddr4_0_C0_DDR4_DQS_C;
  wire [17:0]ddr4_0_C0_DDR4_DQS_T;
  wire [0:0]ddr4_0_C0_DDR4_ODT;
  wire ddr4_0_C0_DDR4_PAR;
  wire ddr4_0_C0_DDR4_RESET_N;
  wire [31:0]smartconnect_0_M00_AXI_ARADDR;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [31:0]smartconnect_0_M00_AXI_AWADDR;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WREADY;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [33:0]smartconnect_0_M01_AXI_ARADDR;
  wire [1:0]smartconnect_0_M01_AXI_ARBURST;
  wire [3:0]smartconnect_0_M01_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M01_AXI_ARLEN;
  wire [0:0]smartconnect_0_M01_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M01_AXI_ARPROT;
  wire [3:0]smartconnect_0_M01_AXI_ARQOS;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire [2:0]smartconnect_0_M01_AXI_ARSIZE;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [33:0]smartconnect_0_M01_AXI_AWADDR;
  wire [1:0]smartconnect_0_M01_AXI_AWBURST;
  wire [3:0]smartconnect_0_M01_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M01_AXI_AWLEN;
  wire [0:0]smartconnect_0_M01_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M01_AXI_AWPROT;
  wire [3:0]smartconnect_0_M01_AXI_AWQOS;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire [2:0]smartconnect_0_M01_AXI_AWSIZE;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [511:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RLAST;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [511:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WLAST;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [63:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire sys_rst_0_1;

  assign C0_SYS_CLK_0_1_CLK_N = c0_sys_clk_n;
  assign C0_SYS_CLK_0_1_CLK_P = c0_sys_clk_p;
  assign c0_ddr4_act_n = ddr4_0_C0_DDR4_ACT_N;
  assign c0_ddr4_adr[16:0] = ddr4_0_C0_DDR4_ADR;
  assign c0_ddr4_ba[1:0] = ddr4_0_C0_DDR4_BA;
  assign c0_ddr4_bg[1:0] = ddr4_0_C0_DDR4_BG;
  assign c0_ddr4_ck_c = ddr4_0_C0_DDR4_CK_C;
  assign c0_ddr4_ck_t = ddr4_0_C0_DDR4_CK_T;
  assign c0_ddr4_cke = ddr4_0_C0_DDR4_CKE;
  assign c0_ddr4_cs_n = ddr4_0_C0_DDR4_CS_N;
  assign c0_ddr4_odt = ddr4_0_C0_DDR4_ODT;
  assign c0_ddr4_par = ddr4_0_C0_DDR4_PAR;
  assign c0_ddr4_reset_n = ddr4_0_C0_DDR4_RESET_N;
  assign c0_ddr4_ui_clk = DDR4_MIG_c0_ddr4_ui_clk1;
  assign sys_rst_0_1 = sys_rst;
  memory_system_ddr4_0_0 DDR4_MIG
       (.c0_ddr4_act_n(ddr4_0_C0_DDR4_ACT_N),
        .c0_ddr4_adr(ddr4_0_C0_DDR4_ADR),
        .c0_ddr4_aresetn(NOT_GATE_Res),
        .c0_ddr4_ba(ddr4_0_C0_DDR4_BA),
        .c0_ddr4_bg(ddr4_0_C0_DDR4_BG),
        .c0_ddr4_ck_c(ddr4_0_C0_DDR4_CK_C),
        .c0_ddr4_ck_t(ddr4_0_C0_DDR4_CK_T),
        .c0_ddr4_cke(ddr4_0_C0_DDR4_CKE),
        .c0_ddr4_cs_n(ddr4_0_C0_DDR4_CS_N),
        .c0_ddr4_dq(c0_ddr4_dq[71:0]),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c[17:0]),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t[17:0]),
        .c0_ddr4_odt(ddr4_0_C0_DDR4_ODT),
        .c0_ddr4_parity(ddr4_0_C0_DDR4_PAR),
        .c0_ddr4_reset_n(ddr4_0_C0_DDR4_RESET_N),
        .c0_ddr4_s_axi_araddr(smartconnect_0_M01_AXI_ARADDR),
        .c0_ddr4_s_axi_arburst(smartconnect_0_M01_AXI_ARBURST),
        .c0_ddr4_s_axi_arcache(smartconnect_0_M01_AXI_ARCACHE),
        .c0_ddr4_s_axi_arid(1'b0),
        .c0_ddr4_s_axi_arlen(smartconnect_0_M01_AXI_ARLEN),
        .c0_ddr4_s_axi_arlock(smartconnect_0_M01_AXI_ARLOCK),
        .c0_ddr4_s_axi_arprot(smartconnect_0_M01_AXI_ARPROT),
        .c0_ddr4_s_axi_arqos(smartconnect_0_M01_AXI_ARQOS),
        .c0_ddr4_s_axi_arready(smartconnect_0_M01_AXI_ARREADY),
        .c0_ddr4_s_axi_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .c0_ddr4_s_axi_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .c0_ddr4_s_axi_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .c0_ddr4_s_axi_awburst(smartconnect_0_M01_AXI_AWBURST),
        .c0_ddr4_s_axi_awcache(smartconnect_0_M01_AXI_AWCACHE),
        .c0_ddr4_s_axi_awid(1'b0),
        .c0_ddr4_s_axi_awlen(smartconnect_0_M01_AXI_AWLEN),
        .c0_ddr4_s_axi_awlock(smartconnect_0_M01_AXI_AWLOCK),
        .c0_ddr4_s_axi_awprot(smartconnect_0_M01_AXI_AWPROT),
        .c0_ddr4_s_axi_awqos(smartconnect_0_M01_AXI_AWQOS),
        .c0_ddr4_s_axi_awready(smartconnect_0_M01_AXI_AWREADY),
        .c0_ddr4_s_axi_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .c0_ddr4_s_axi_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .c0_ddr4_s_axi_bready(smartconnect_0_M01_AXI_BREADY),
        .c0_ddr4_s_axi_bresp(smartconnect_0_M01_AXI_BRESP),
        .c0_ddr4_s_axi_bvalid(smartconnect_0_M01_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_araddr(smartconnect_0_M00_AXI_ARADDR),
        .c0_ddr4_s_axi_ctrl_arready(smartconnect_0_M00_AXI_ARREADY),
        .c0_ddr4_s_axi_ctrl_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .c0_ddr4_s_axi_ctrl_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .c0_ddr4_s_axi_ctrl_awready(smartconnect_0_M00_AXI_AWREADY),
        .c0_ddr4_s_axi_ctrl_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .c0_ddr4_s_axi_ctrl_bready(smartconnect_0_M00_AXI_BREADY),
        .c0_ddr4_s_axi_ctrl_bresp(smartconnect_0_M00_AXI_BRESP),
        .c0_ddr4_s_axi_ctrl_bvalid(smartconnect_0_M00_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_rdata(smartconnect_0_M00_AXI_RDATA),
        .c0_ddr4_s_axi_ctrl_rready(smartconnect_0_M00_AXI_RREADY),
        .c0_ddr4_s_axi_ctrl_rresp(smartconnect_0_M00_AXI_RRESP),
        .c0_ddr4_s_axi_ctrl_rvalid(smartconnect_0_M00_AXI_RVALID),
        .c0_ddr4_s_axi_ctrl_wdata(smartconnect_0_M00_AXI_WDATA),
        .c0_ddr4_s_axi_ctrl_wready(smartconnect_0_M00_AXI_WREADY),
        .c0_ddr4_s_axi_ctrl_wvalid(smartconnect_0_M00_AXI_WVALID),
        .c0_ddr4_s_axi_rdata(smartconnect_0_M01_AXI_RDATA),
        .c0_ddr4_s_axi_rlast(smartconnect_0_M01_AXI_RLAST),
        .c0_ddr4_s_axi_rready(smartconnect_0_M01_AXI_RREADY),
        .c0_ddr4_s_axi_rresp(smartconnect_0_M01_AXI_RRESP),
        .c0_ddr4_s_axi_rvalid(smartconnect_0_M01_AXI_RVALID),
        .c0_ddr4_s_axi_wdata(smartconnect_0_M01_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(smartconnect_0_M01_AXI_WLAST),
        .c0_ddr4_s_axi_wready(smartconnect_0_M01_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(smartconnect_0_M01_AXI_WVALID),
        .c0_ddr4_ui_clk(DDR4_MIG_c0_ddr4_ui_clk1),
        .c0_ddr4_ui_clk_sync_rst(DDR4_MIG_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(DDR4_MIG_c0_init_calib_complete),
        .c0_sys_clk_n(C0_SYS_CLK_0_1_CLK_N),
        .c0_sys_clk_p(C0_SYS_CLK_0_1_CLK_P),
        .sys_rst(sys_rst_0_1));
  memory_system_util_vector_logic_0_0 NOT_GATE
       (.Op1(DDR4_MIG_c0_ddr4_ui_clk_sync_rst),
        .Res(NOT_GATE_Res));
  memory_system_axi_cdma_0_0 axi_cdma_0
       (.m_axi_aclk(DDR4_MIG_c0_ddr4_ui_clk1),
        .m_axi_araddr(axi_cdma_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_cdma_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_cdma_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_cdma_0_M_AXI_ARLEN),
        .m_axi_arprot(axi_cdma_0_M_AXI_ARPROT),
        .m_axi_arready(axi_cdma_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_cdma_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_cdma_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_cdma_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_cdma_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_cdma_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_cdma_0_M_AXI_AWLEN),
        .m_axi_awprot(axi_cdma_0_M_AXI_AWPROT),
        .m_axi_awready(axi_cdma_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_cdma_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_cdma_0_M_AXI_AWVALID),
        .m_axi_bready(axi_cdma_0_M_AXI_BREADY),
        .m_axi_bresp(axi_cdma_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_cdma_0_M_AXI_BVALID),
        .m_axi_rdata(axi_cdma_0_M_AXI_RDATA),
        .m_axi_rlast(axi_cdma_0_M_AXI_RLAST),
        .m_axi_rready(axi_cdma_0_M_AXI_RREADY),
        .m_axi_rresp(axi_cdma_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_cdma_0_M_AXI_RVALID),
        .m_axi_wdata(axi_cdma_0_M_AXI_WDATA),
        .m_axi_wlast(axi_cdma_0_M_AXI_WLAST),
        .m_axi_wready(axi_cdma_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_cdma_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_cdma_0_M_AXI_WVALID),
        .s_axi_lite_aclk(DDR4_MIG_c0_ddr4_ui_clk1),
        .s_axi_lite_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_lite_aresetn(NOT_GATE_Res),
        .s_axi_lite_arvalid(1'b0),
        .s_axi_lite_awaddr(axi_traffic_gen_0_M_AXI_LITE_CH1_AWADDR[5:0]),
        .s_axi_lite_awready(axi_traffic_gen_0_M_AXI_LITE_CH1_AWREADY),
        .s_axi_lite_awvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_AWVALID),
        .s_axi_lite_bready(axi_traffic_gen_0_M_AXI_LITE_CH1_BREADY),
        .s_axi_lite_bresp(axi_traffic_gen_0_M_AXI_LITE_CH1_BRESP),
        .s_axi_lite_bvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_BVALID),
        .s_axi_lite_rready(1'b0),
        .s_axi_lite_wdata(axi_traffic_gen_0_M_AXI_LITE_CH1_WDATA),
        .s_axi_lite_wready(axi_traffic_gen_0_M_AXI_LITE_CH1_WREADY),
        .s_axi_lite_wvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_WVALID));
  memory_system_axi_traffic_gen_0_0 axi_traffic_gen_0
       (.m_axi_lite_ch1_awaddr(axi_traffic_gen_0_M_AXI_LITE_CH1_AWADDR),
        .m_axi_lite_ch1_awready(axi_traffic_gen_0_M_AXI_LITE_CH1_AWREADY),
        .m_axi_lite_ch1_awvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_AWVALID),
        .m_axi_lite_ch1_bready(axi_traffic_gen_0_M_AXI_LITE_CH1_BREADY),
        .m_axi_lite_ch1_bresp(axi_traffic_gen_0_M_AXI_LITE_CH1_BRESP),
        .m_axi_lite_ch1_bvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_BVALID),
        .m_axi_lite_ch1_wdata(axi_traffic_gen_0_M_AXI_LITE_CH1_WDATA),
        .m_axi_lite_ch1_wready(axi_traffic_gen_0_M_AXI_LITE_CH1_WREADY),
        .m_axi_lite_ch1_wvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_WVALID),
        .s_axi_aclk(DDR4_MIG_c0_ddr4_ui_clk1),
        .s_axi_aresetn(DDR4_MIG_c0_init_calib_complete));
  memory_system_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_0_M01_AXI_ARBURST),
        .M01_AXI_arcache(smartconnect_0_M01_AXI_ARCACHE),
        .M01_AXI_arlen(smartconnect_0_M01_AXI_ARLEN),
        .M01_AXI_arlock(smartconnect_0_M01_AXI_ARLOCK),
        .M01_AXI_arprot(smartconnect_0_M01_AXI_ARPROT),
        .M01_AXI_arqos(smartconnect_0_M01_AXI_ARQOS),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_0_M01_AXI_AWBURST),
        .M01_AXI_awcache(smartconnect_0_M01_AXI_AWCACHE),
        .M01_AXI_awlen(smartconnect_0_M01_AXI_AWLEN),
        .M01_AXI_awlock(smartconnect_0_M01_AXI_AWLOCK),
        .M01_AXI_awprot(smartconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awqos(smartconnect_0_M01_AXI_AWQOS),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rlast(smartconnect_0_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_0_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .S00_AXI_araddr(axi_cdma_0_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_cdma_0_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_cdma_0_M_AXI_ARCACHE),
        .S00_AXI_arlen(axi_cdma_0_M_AXI_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_cdma_0_M_AXI_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_cdma_0_M_AXI_ARREADY),
        .S00_AXI_arsize(axi_cdma_0_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_cdma_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_cdma_0_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_cdma_0_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_cdma_0_M_AXI_AWCACHE),
        .S00_AXI_awlen(axi_cdma_0_M_AXI_AWLEN),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot(axi_cdma_0_M_AXI_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(axi_cdma_0_M_AXI_AWREADY),
        .S00_AXI_awsize(axi_cdma_0_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_cdma_0_M_AXI_AWVALID),
        .S00_AXI_bready(axi_cdma_0_M_AXI_BREADY),
        .S00_AXI_bresp(axi_cdma_0_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_cdma_0_M_AXI_BVALID),
        .S00_AXI_rdata(axi_cdma_0_M_AXI_RDATA),
        .S00_AXI_rlast(axi_cdma_0_M_AXI_RLAST),
        .S00_AXI_rready(axi_cdma_0_M_AXI_RREADY),
        .S00_AXI_rresp(axi_cdma_0_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_cdma_0_M_AXI_RVALID),
        .S00_AXI_wdata(axi_cdma_0_M_AXI_WDATA),
        .S00_AXI_wlast(axi_cdma_0_M_AXI_WLAST),
        .S00_AXI_wready(axi_cdma_0_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_cdma_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_cdma_0_M_AXI_WVALID),
        .aclk(DDR4_MIG_c0_ddr4_ui_clk1));
endmodule
