

/******************************************************************************
# (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
#
# This file contains confidential and proprietary information
# of AMD and is protected under U.S. and international copyright
# and other intellectual property laws.
#
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# AMD, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) AMD shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or AMD had been advised of the
# possibility of the same.
#
# CRITICAL APPLICATIONS
# AMD products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of AMD products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.
******************************************************************************/
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor             : AMD
// \   \   \/     Version            : 1.0
//  \   \         Application        : MIG
//  /   /         Filename           : sim_tb_top.sv
// /___/   /\     Date Last Modified : $Date: 2014/09/03 $
// \   \  /  \    Date Created       : Thu Apr 18 2013
//  \___\/\___\
//
// Device           : UltraScale
// Design Name      : DDR4_SDRAM
// Purpose          :
//                   Top-level testbench for testing Memory interface.
//                   Instantiates:
//                     1. IP_TOP (top-level representing FPGA, contains core,
//                        clocking, built-in testbench/memory checker and other
//                        support structures)
//                     2. Memory Model
//                     3. Miscellaneous clock generation and reset logic
// Reference        :
// Revision History :
//*****************************************************************************

`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR
module short(in1, in1);
inout in1;
endmodule
`endif

module sim_tb_top;

  localparam ADDR_WIDTH                    = 17;
  localparam DQ_WIDTH                      = 72;
  localparam DQS_WIDTH                     = 18;
  localparam DM_WIDTH                      = 9;
  localparam DRAM_WIDTH                    = 4;
  localparam tCK                           = 833 ; //DDR4 interface clock period in ps
  localparam real SYSCLK_PERIOD            = tCK; 
  localparam NUM_PHYSICAL_PARTS = (DQ_WIDTH/DRAM_WIDTH) ;
  localparam           CLAMSHELL_PARTS = (NUM_PHYSICAL_PARTS/2);
  localparam           ODD_PARTS = ((CLAMSHELL_PARTS*2) < NUM_PHYSICAL_PARTS) ? 1 : 0;
  parameter RANK_WIDTH                       = 1;
  parameter CS_WIDTH                       = 1;
  parameter ODT_WIDTH                      = 1;
  parameter CA_MIRROR                      = "OFF";


  localparam MRS                           = 3'b000;
  localparam REF                           = 3'b001;
  localparam PRE                           = 3'b010;
  localparam ACT                           = 3'b011;
  localparam WR                            = 3'b100;
  localparam RD                            = 3'b101;
  localparam ZQC                           = 3'b110;
  localparam NOP                           = 3'b111;
  //Added to support RDIMM wrapper
  localparam ODT_WIDTH_RDIMM   = 1;
  localparam CKE_WIDTH_RDIMM   = 1;
  localparam CS_WIDTH_RDIMM   = 1;
  localparam RANK_WIDTH_RDIMM   = 1;
  localparam RDIMM_SLOTS   = 1;
  localparam BANK_WIDTH_RDIMM = 2;
  localparam BANK_GROUP_WIDTH_RDIMM     = 2;

    localparam DM_DBI                        = "NONE";
  localparam DM_WIDTH_RDIMM                  = 18;
   
  localparam MEM_PART_WIDTH       = "x4";
  localparam REG_CTRL             = "ON";

  import arch_package::*;
  parameter UTYPE_density CONFIGURED_DENSITY = _8G;

  // Input clock is assumed to be equal to the memory clock frequency
  // User should change the parameter as necessary if a different input
  // clock frequency is used
  localparam real CLKIN_PERIOD_NS = 3332 / 1000.0;

  //initial begin
  //   $shm_open("waves.shm");
  //   $shm_probe("ACMTF");
  //end

  reg                  sys_clk_i;
  reg                  sys_rst;

  wire                 c0_sys_clk_p;
  wire                 c0_sys_clk_n;

  reg  [16:0]            c0_ddr4_adr_sdram[1:0];
  reg  [1:0]           c0_ddr4_ba_sdram[1:0];
  reg  [1:0]           c0_ddr4_bg_sdram[1:0];


  wire                 c0_ddr4_act_n;
  wire  [16:0]          c0_ddr4_adr;
  wire  [1:0]          c0_ddr4_ba;
  wire  [1:0]    c0_ddr4_bg;
  wire  [0:0]           c0_ddr4_cke;
  wire  [0:0]           c0_ddr4_odt;
  wire  [0:0]            c0_ddr4_cs_n;

  wire  [0:0]  c0_ddr4_ck_t_int;
  wire  [0:0]  c0_ddr4_ck_c_int;

  wire    c0_ddr4_ck_t;
  wire    c0_ddr4_ck_c;

  wire                 c0_ddr4_reset_n;
  wire                  c0_ddr4_parity;

  wire  [71:0]          c0_ddr4_dq;
  wire  [17:0]          c0_ddr4_dqs_c;
  wire  [17:0]          c0_ddr4_dqs_t;
  wire                 c0_init_calib_complete;
  wire                 c0_data_compare_error;


  reg  [31:0] cmdName;
  bit  en_model;
  tri        model_enable = en_model;



  //**************************************************************************//
  // Reset Generation
  //**************************************************************************//
  initial begin
     sys_rst = 1'b0;
     #200
     sys_rst = 1'b1;
     en_model = 1'b0; 
     #5 en_model = 1'b1;
     #200;
     sys_rst = 1'b0;
     #100;
  end

  //**************************************************************************//
  // Clock Generation
  //**************************************************************************//

  initial
    sys_clk_i = 1'b0;
  always
    sys_clk_i = #(3332/2.0) ~sys_clk_i;

  assign c0_sys_clk_p = sys_clk_i;
  assign c0_sys_clk_n = ~sys_clk_i;

  assign c0_ddr4_ck_t = c0_ddr4_ck_t_int[0];
  assign c0_ddr4_ck_c = c0_ddr4_ck_c_int[0];

   always @( * ) begin
     c0_ddr4_adr_sdram[0]   <=  c0_ddr4_adr;
     c0_ddr4_adr_sdram[1]   <=  (CA_MIRROR == "ON") ?
                                       {c0_ddr4_adr[ADDR_WIDTH-1:14],
                                        c0_ddr4_adr[11], c0_ddr4_adr[12],
                                        c0_ddr4_adr[13], c0_ddr4_adr[10:9],
                                        c0_ddr4_adr[7], c0_ddr4_adr[8],
                                        c0_ddr4_adr[5], c0_ddr4_adr[6],
                                        c0_ddr4_adr[3], c0_ddr4_adr[4],
                                        c0_ddr4_adr[2:0]} :
                                        c0_ddr4_adr;
     c0_ddr4_ba_sdram[0]    <=  c0_ddr4_ba;
     c0_ddr4_ba_sdram[1]    <=  (CA_MIRROR == "ON") ?
                                        {c0_ddr4_ba[0],
                                         c0_ddr4_ba[1]} :
                                         c0_ddr4_ba;
     c0_ddr4_bg_sdram[0]    <=  c0_ddr4_bg;
     c0_ddr4_bg_sdram[1]    <=  (CA_MIRROR == "ON" && DRAM_WIDTH != 16) ?
                                        {c0_ddr4_bg[0],
                                         c0_ddr4_bg[1]} :
                                         c0_ddr4_bg;
    end


  //===========================================================================
  //                         FPGA Memory Controller instantiation
  //===========================================================================

  example_top 
    u_example_top
    (
     .sys_rst           (sys_rst),

     .c0_data_compare_error  (c0_data_compare_error),
     .c0_init_calib_complete (c0_init_calib_complete),
     .c0_sys_clk_p           (c0_sys_clk_p),
     .c0_sys_clk_n           (c0_sys_clk_n),

     .c0_ddr4_act_n          (c0_ddr4_act_n),
     .c0_ddr4_adr            (c0_ddr4_adr),
     .c0_ddr4_ba             (c0_ddr4_ba),
     .c0_ddr4_bg             (c0_ddr4_bg),
     .c0_ddr4_cke            (c0_ddr4_cke),
     .c0_ddr4_odt            (c0_ddr4_odt),
     .c0_ddr4_cs_n           (c0_ddr4_cs_n),
     .c0_ddr4_ck_t           (c0_ddr4_ck_t_int),
     .c0_ddr4_ck_c           (c0_ddr4_ck_c_int),
     .c0_ddr4_reset_n        (c0_ddr4_reset_n),
     .c0_ddr4_parity            (c0_ddr4_parity),
     .c0_ddr4_dq             (c0_ddr4_dq),
     .c0_ddr4_dqs_c          (c0_ddr4_dqs_c),
     .c0_ddr4_dqs_t          (c0_ddr4_dqs_t)
     );


  reg [ADDR_WIDTH-1:0] DDR4_ADRMOD[RANK_WIDTH-1:0];

  always @(*)
    if (c0_ddr4_cs_n == 4'b1111)
      cmdName = "DSEL";
    else
    if (c0_ddr4_act_n)
      casez (DDR4_ADRMOD[0][16:14])
       MRS:     cmdName = "MRS";
       REF:     cmdName = "REF";
       PRE:     cmdName = "PRE";
       WR:      cmdName = "WR";
       RD:      cmdName = "RD";
       ZQC:     cmdName = "ZQC";
       NOP:     cmdName = "NOP";
      default:  cmdName = "***";
      endcase
    else
      cmdName = "ACT";

   reg wr_en ;
   always@(posedge c0_ddr4_ck_t)begin
     if(!c0_ddr4_reset_n)begin
       wr_en <= #100 1'b0 ;
     end else begin
       if(cmdName == "WR")begin
         wr_en <= #100 1'b1 ;
       end else if (cmdName == "RD")begin
         wr_en <= #100 1'b0 ;
       end
     end
   end

genvar rnk;
generate
localparam IDX = CS_WIDTH;
for (rnk = 0; rnk < IDX; rnk++) begin:rankup
 always @(*)
    if (c0_ddr4_act_n)
      casez (c0_ddr4_adr_sdram[0][16:14])
      WR, RD: begin
        DDR4_ADRMOD[rnk] = c0_ddr4_adr_sdram[rnk];
      end
      default: begin
        DDR4_ADRMOD[rnk] = c0_ddr4_adr_sdram[rnk];
      end
      endcase
    else begin
      DDR4_ADRMOD[rnk] = c0_ddr4_adr_sdram[rnk];
    end
end
endgenerate

  //===========================================================================
  //                         Memory Model instantiation
  //===========================================================================
genvar rdimm_x;
			      
generate
  for(rdimm_x=0; rdimm_x<RDIMM_SLOTS; rdimm_x=rdimm_x+1)
    begin: instance_of_rdimm_slots
ddr4_rdimm_wrapper #(
             .MC_DQ_WIDTH(DQ_WIDTH),
             .MC_DQS_BITS(DQS_WIDTH),
             .MC_DM_WIDTH(DM_WIDTH_RDIMM),
             .MC_CKE_NUM(CKE_WIDTH_RDIMM),
             .MC_ODT_WIDTH(ODT_WIDTH_RDIMM),
             .MC_ABITS(ADDR_WIDTH),
             .MC_BANK_WIDTH(BANK_WIDTH_RDIMM),
             .MC_BANK_GROUP(BANK_GROUP_WIDTH_RDIMM),
             .MC_CS_NUM(CS_WIDTH_RDIMM),
             .MC_RANKS_NUM(RANK_WIDTH_RDIMM),
             .NUM_PHYSICAL_PARTS(NUM_PHYSICAL_PARTS),
             .CALIB_EN("NO"),
             .tCK(tCK),
             .tPDM(),
             .MIN_TOTAL_R2R_DELAY(),
             .MAX_TOTAL_R2R_DELAY(),
             .TOTAL_FBT_DELAY(),
             .MEM_PART_WIDTH(MEM_PART_WIDTH),
             .MC_CA_MIRROR(CA_MIRROR),
            // .SDRAM("DDR4"),
   `ifdef SAMSUNG
             .DDR_SIM_MODEL("SAMSUNG"),

   `else         
             .DDR_SIM_MODEL("MICRON"),
   `endif
             .DM_DBI(DM_DBI),
             .MC_REG_CTRL(REG_CTRL),
             .DIMM_MODEL ("RDIMM"),
             .RDIMM_SLOTS (RDIMM_SLOTS),
             .CONFIGURED_DENSITY (CONFIGURED_DENSITY)
                     )
   u_ddr4_rdimm_wrapper  (
                .ddr4_act_n(c0_ddr4_act_n), // input
                .ddr4_addr(c0_ddr4_adr), // input
                .ddr4_ba(c0_ddr4_ba), // input
                .ddr4_bg(c0_ddr4_bg), // input
                .ddr4_par(c0_ddr4_parity), // input
                .ddr4_cke(c0_ddr4_cke[CKE_WIDTH_RDIMM-1:0]), // input
                .ddr4_odt(c0_ddr4_odt[ODT_WIDTH_RDIMM-1:0]), // input
                .ddr4_cs_n(c0_ddr4_cs_n[CS_WIDTH_RDIMM-1:0]), // input
                .ddr4_ck_t(c0_ddr4_ck_t), // input
                .ddr4_ck_c(c0_ddr4_ck_c), // input
                .ddr4_reset_n(c0_ddr4_reset_n), // input
                .ddr4_dm_dbi_n       (),
                .ddr4_dq(c0_ddr4_dq), // inout
                .ddr4_dqs_t(c0_ddr4_dqs_t), // inout
                .ddr4_dqs_c(c0_ddr4_dqs_c), // inout
        .ddr4_alert_n(), // inout
        .initDone(c0_init_calib_complete), // inout
                .scl(), // input
        .sa0(), // input
        .sa1(), // input
        .sa2(), // input
                .sda(), // inout
        .bfunc(), // input
        .vddspd() // input
        );
    end
    endgenerate

endmodule
