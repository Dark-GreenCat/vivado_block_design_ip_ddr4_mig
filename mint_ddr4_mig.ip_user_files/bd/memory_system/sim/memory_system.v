//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
//Date        : Thu Apr 10 02:36:32 2025
//Host        : edabk running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target memory_system.bd
//Design      : memory_system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "memory_system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=memory_system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "memory_system.hwdef" *) 
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
    c0_sys_clk_n,
    c0_sys_clk_p);
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 c0_sys " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c0_sys, CAN_DEBUG false, FREQ_HZ 300000000" *) input c0_sys_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 c0_sys " *) input c0_sys_clk_p;

  wire C0_SYS_CLK_0_1_CLK_N;
  wire C0_SYS_CLK_0_1_CLK_P;
  wire DDR4_MIG_c0_ddr4_ui_clk;
  wire [0:0]GND_dout;
  wire [31:0]axi_traffic_gen_0_M_AXI_LITE_CH1_AWADDR;
  wire [2:0]axi_traffic_gen_0_M_AXI_LITE_CH1_AWPROT;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_AWREADY;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_AWVALID;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_BREADY;
  wire [1:0]axi_traffic_gen_0_M_AXI_LITE_CH1_BRESP;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_BVALID;
  wire [31:0]axi_traffic_gen_0_M_AXI_LITE_CH1_WDATA;
  wire axi_traffic_gen_0_M_AXI_LITE_CH1_WREADY;
  wire [3:0]axi_traffic_gen_0_M_AXI_LITE_CH1_WSTRB;
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
  wire [31:0]smartconnect_0_M00_AXI_AWADDR;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WREADY;
  wire smartconnect_0_M00_AXI_WVALID;
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
  wire [511:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WLAST;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [63:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;

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
  memory_system_ddr4_0_0 DDR4_MIG
       (.c0_ddr4_act_n(ddr4_0_C0_DDR4_ACT_N),
        .c0_ddr4_adr(ddr4_0_C0_DDR4_ADR),
        .c0_ddr4_aresetn(1'b0),
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
        .c0_ddr4_s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .c0_ddr4_s_axi_arburst({1'b0,1'b1}),
        .c0_ddr4_s_axi_arcache({1'b0,1'b0,1'b1,1'b1}),
        .c0_ddr4_s_axi_arid(1'b0),
        .c0_ddr4_s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .c0_ddr4_s_axi_arlock(1'b0),
        .c0_ddr4_s_axi_arprot({1'b0,1'b0,1'b0}),
        .c0_ddr4_s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .c0_ddr4_s_axi_arsize({1'b1,1'b1,1'b0}),
        .c0_ddr4_s_axi_arvalid(1'b0),
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
        .c0_ddr4_s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .c0_ddr4_s_axi_ctrl_arvalid(1'b0),
        .c0_ddr4_s_axi_ctrl_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .c0_ddr4_s_axi_ctrl_awready(smartconnect_0_M00_AXI_AWREADY),
        .c0_ddr4_s_axi_ctrl_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .c0_ddr4_s_axi_ctrl_bready(smartconnect_0_M00_AXI_BREADY),
        .c0_ddr4_s_axi_ctrl_bresp(smartconnect_0_M00_AXI_BRESP),
        .c0_ddr4_s_axi_ctrl_bvalid(smartconnect_0_M00_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_rready(1'b0),
        .c0_ddr4_s_axi_ctrl_wdata(smartconnect_0_M00_AXI_WDATA),
        .c0_ddr4_s_axi_ctrl_wready(smartconnect_0_M00_AXI_WREADY),
        .c0_ddr4_s_axi_ctrl_wvalid(smartconnect_0_M00_AXI_WVALID),
        .c0_ddr4_s_axi_rready(1'b0),
        .c0_ddr4_s_axi_wdata(smartconnect_0_M01_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(smartconnect_0_M01_AXI_WLAST),
        .c0_ddr4_s_axi_wready(smartconnect_0_M01_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(smartconnect_0_M01_AXI_WVALID),
        .c0_ddr4_ui_clk(DDR4_MIG_c0_ddr4_ui_clk),
        .c0_sys_clk_n(C0_SYS_CLK_0_1_CLK_N),
        .c0_sys_clk_p(C0_SYS_CLK_0_1_CLK_P),
        .sys_rst(GND_dout));
  memory_system_xlconstant_0_0 GND
       (.dout(GND_dout));
  memory_system_axi_traffic_gen_0_0 axi_traffic_gen_0
       (.m_axi_lite_ch1_awaddr(axi_traffic_gen_0_M_AXI_LITE_CH1_AWADDR),
        .m_axi_lite_ch1_awprot(axi_traffic_gen_0_M_AXI_LITE_CH1_AWPROT),
        .m_axi_lite_ch1_awready(axi_traffic_gen_0_M_AXI_LITE_CH1_AWREADY),
        .m_axi_lite_ch1_awvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_AWVALID),
        .m_axi_lite_ch1_bready(axi_traffic_gen_0_M_AXI_LITE_CH1_BREADY),
        .m_axi_lite_ch1_bresp(axi_traffic_gen_0_M_AXI_LITE_CH1_BRESP),
        .m_axi_lite_ch1_bvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_BVALID),
        .m_axi_lite_ch1_wdata(axi_traffic_gen_0_M_AXI_LITE_CH1_WDATA),
        .m_axi_lite_ch1_wready(axi_traffic_gen_0_M_AXI_LITE_CH1_WREADY),
        .m_axi_lite_ch1_wstrb(axi_traffic_gen_0_M_AXI_LITE_CH1_WSTRB),
        .m_axi_lite_ch1_wvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_WVALID),
        .s_axi_aclk(DDR4_MIG_c0_ddr4_ui_clk),
        .s_axi_aresetn(1'b0));
  memory_system_smartconnect_0_0 smartconnect_0
       (.M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
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
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_0_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .S00_AXI_awaddr(axi_traffic_gen_0_M_AXI_LITE_CH1_AWADDR),
        .S00_AXI_awprot(axi_traffic_gen_0_M_AXI_LITE_CH1_AWPROT),
        .S00_AXI_awready(axi_traffic_gen_0_M_AXI_LITE_CH1_AWREADY),
        .S00_AXI_awvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_AWVALID),
        .S00_AXI_bready(axi_traffic_gen_0_M_AXI_LITE_CH1_BREADY),
        .S00_AXI_bresp(axi_traffic_gen_0_M_AXI_LITE_CH1_BRESP),
        .S00_AXI_bvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_BVALID),
        .S00_AXI_wdata(axi_traffic_gen_0_M_AXI_LITE_CH1_WDATA),
        .S00_AXI_wready(axi_traffic_gen_0_M_AXI_LITE_CH1_WREADY),
        .S00_AXI_wstrb(axi_traffic_gen_0_M_AXI_LITE_CH1_WSTRB),
        .S00_AXI_wvalid(axi_traffic_gen_0_M_AXI_LITE_CH1_WVALID),
        .aclk(DDR4_MIG_c0_ddr4_ui_clk));
endmodule
