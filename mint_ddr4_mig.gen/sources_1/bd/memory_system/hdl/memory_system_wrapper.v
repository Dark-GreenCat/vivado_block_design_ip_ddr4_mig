//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
//Date        : Thu Apr 10 01:51:08 2025
//Host        : edabk running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target memory_system_wrapper.bd
//Design      : memory_system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module memory_system_wrapper
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
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  output [1:0]c0_ddr4_ba;
  output [1:0]c0_ddr4_bg;
  output c0_ddr4_ck_c;
  output c0_ddr4_ck_t;
  output c0_ddr4_cke;
  output c0_ddr4_cs_n;
  inout [71:0]c0_ddr4_dq;
  inout [17:0]c0_ddr4_dqs_c;
  inout [17:0]c0_ddr4_dqs_t;
  output c0_ddr4_odt;
  output c0_ddr4_par;
  output c0_ddr4_reset_n;
  input c0_sys_clk_n;
  input c0_sys_clk_p;

  wire c0_ddr4_act_n;
  wire [16:0]c0_ddr4_adr;
  wire [1:0]c0_ddr4_ba;
  wire [1:0]c0_ddr4_bg;
  wire c0_ddr4_ck_c;
  wire c0_ddr4_ck_t;
  wire c0_ddr4_cke;
  wire c0_ddr4_cs_n;
  wire [71:0]c0_ddr4_dq;
  wire [17:0]c0_ddr4_dqs_c;
  wire [17:0]c0_ddr4_dqs_t;
  wire c0_ddr4_odt;
  wire c0_ddr4_par;
  wire c0_ddr4_reset_n;
  wire c0_sys_clk_n;
  wire c0_sys_clk_p;

  memory_system memory_system_i
       (.c0_ddr4_act_n(c0_ddr4_act_n),
        .c0_ddr4_adr(c0_ddr4_adr),
        .c0_ddr4_ba(c0_ddr4_ba),
        .c0_ddr4_bg(c0_ddr4_bg),
        .c0_ddr4_ck_c(c0_ddr4_ck_c),
        .c0_ddr4_ck_t(c0_ddr4_ck_t),
        .c0_ddr4_cke(c0_ddr4_cke),
        .c0_ddr4_cs_n(c0_ddr4_cs_n),
        .c0_ddr4_dq(c0_ddr4_dq),
        .c0_ddr4_dqs_c(c0_ddr4_dqs_c),
        .c0_ddr4_dqs_t(c0_ddr4_dqs_t),
        .c0_ddr4_odt(c0_ddr4_odt),
        .c0_ddr4_par(c0_ddr4_par),
        .c0_ddr4_reset_n(c0_ddr4_reset_n),
        .c0_sys_clk_n(c0_sys_clk_n),
        .c0_sys_clk_p(c0_sys_clk_p));
endmodule
