`timescale 1ns / 1ps

module top_u250 (
  input SYSCLK0_300_P,
  input SYSCLK0_300_N,

  output c0_ddr4_act_n,
  output [16:0] c0_ddr4_adr,
  output [1:0] c0_ddr4_ba,
  output [1:0] c0_ddr4_bg,
  output c0_ddr4_ck_c,
  output c0_ddr4_ck_t,
  output c0_ddr4_cke,
  output c0_ddr4_cs_n,
  inout [71:0] c0_ddr4_dq,
  inout [17:0] c0_ddr4_dqs_c,
  inout [17:0] c0_ddr4_dqs_t,
  output c0_ddr4_odt,
  output c0_ddr4_parity,
  output c0_ddr4_reset_n
);

  wire c0_sys_clk_n;
  wire c0_sys_clk_p;

  assign c0_sys_clk_n = SYSCLK0_300_N;
  assign c0_sys_clk_p = SYSCLK0_300_P;

  wire c0_ddr4_ui_clk;
  reg sys_rst = 1'b1;
  reg [63:0] clk_counter = 1'b0;

  always @(posedge c0_ddr4_ui_clk) begin
    clk_counter <= clk_counter + 1;

    if (clk_counter == 10) begin
      sys_rst <= 1'b0;
    end

    if (clk_counter == 64'd30000000000) begin
      sys_rst <= 1'b1;
      clk_counter <= 1'b0;
    end
  end

  memory_system_wrapper memory_system_i (
    .c0_ddr4_act_n(c0_ddr4_act_n),
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
    .c0_ddr4_par(c0_ddr4_parity),
    .c0_ddr4_reset_n(c0_ddr4_reset_n),
    .c0_sys_clk_n(c0_sys_clk_n),
    .c0_sys_clk_p(c0_sys_clk_p),
    .c0_ddr4_ui_clk(c0_ddr4_ui_clk),
    .sys_rst(sys_rst)
  );
endmodule
