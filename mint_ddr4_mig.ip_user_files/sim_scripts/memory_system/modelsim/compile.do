vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/microblaze_v11_0_13
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_15
vlib modelsim_lib/msim/lmb_v10_v3_0_14
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_24
vlib modelsim_lib/msim/blk_mem_gen_v8_4_8
vlib modelsim_lib/msim/iomodule_v3_1_10
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_31
vlib modelsim_lib/msim/axi_vip_v1_1_17
vlib modelsim_lib/msim/xlconstant_v1_1_9
vlib modelsim_lib/msim/dist_mem_gen_v8_0_15
vlib modelsim_lib/msim/lib_bmg_v1_0_17
vlib modelsim_lib/msim/axi_traffic_gen_v3_0_17

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap microblaze_v11_0_13 modelsim_lib/msim/microblaze_v11_0_13
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 modelsim_lib/msim/proc_sys_reset_v5_0_15
vmap lmb_v10_v3_0_14 modelsim_lib/msim/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_24 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_24
vmap blk_mem_gen_v8_4_8 modelsim_lib/msim/blk_mem_gen_v8_4_8
vmap iomodule_v3_1_10 modelsim_lib/msim/iomodule_v3_1_10
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_31 modelsim_lib/msim/axi_register_slice_v2_1_31
vmap axi_vip_v1_1_17 modelsim_lib/msim/axi_vip_v1_1_17
vmap xlconstant_v1_1_9 modelsim_lib/msim/xlconstant_v1_1_9
vmap dist_mem_gen_v8_0_15 modelsim_lib/msim/dist_mem_gen_v8_0_15
vmap lib_bmg_v1_0_17 modelsim_lib/msim/lib_bmg_v1_0_17
vmap axi_traffic_gen_v3_0_17 modelsim_lib/msim/axi_traffic_gen_v3_0_17

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"/home/huy_k66/apps/tools/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/huy_k66/apps/tools/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_13 -64 -93  \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/aa1c/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/bd_0/ip/ip_0/sim/bd_021b_microblaze_I_0.vhd" \

vcom -work lib_cdc_v1_0_3 -64 -93  \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -64 -93  \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/bd_0/ip/ip_1/sim/bd_021b_rst_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -64 -93  \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/bd_0/ip/ip_2/sim/bd_021b_ilmb_0.vhd" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/bd_0/ip/ip_3/sim/bd_021b_dlmb_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_24 -64 -93  \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/3eb2/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/bd_0/ip/ip_4/sim/bd_021b_dlmb_cntlr_0.vhd" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/bd_0/ip/ip_5/sim/bd_021b_ilmb_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_8 -64 -incr -mfcu  "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/bd_0/ip/ip_6/sim/bd_021b_lmb_bram_I_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/bd_0/ip/ip_7/sim/bd_021b_second_dlmb_cntlr_0.vhd" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/bd_0/ip/ip_8/sim/bd_021b_second_ilmb_cntlr_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/bd_0/ip/ip_9/sim/bd_021b_second_lmb_bram_I_0.v" \

vcom -work iomodule_v3_1_10 -64 -93  \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/213d/hdl/iomodule_v3_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/bd_0/ip/ip_10/sim/bd_021b_iomodule_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/bd_0/sim/bd_021b.v" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_0/sim/memory_system_ddr4_0_0_microblaze_mcs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/phy/memory_system_ddr4_0_0_phy_ddr4.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy_behav.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/iob/ddr4_phy_v2_2_iob_byte.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/iob/ddr4_phy_v2_2_iob.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/clocking/ddr4_phy_v2_2_pll.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_tristate_wrapper.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_riuor_wrapper.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_control_wrapper.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_byte_wrapper.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_bitslice_wrapper.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/ip_top/memory_system_ddr4_0_0_phy.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_wtr.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ref.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_rd_wr.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_periodic.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_group.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_merge_enc.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_gen.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_fi_xor.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_dec_fix.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc_buf.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ecc.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_ctl.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_cmd_mux_c.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_cmd_mux_ap.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_arb_p.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_arb_mux_p.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_arb_c.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_arb_a.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_act_timer.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc_act_rank.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/controller/ddr4_v2_2_mc.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ui/ddr4_v2_2_ui_wr_data.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ui/ddr4_v2_2_ui_rd_data.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ui/ddr4_v2_2_ui_cmd.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ui/ddr4_v2_2_ui.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_ar_channel.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_aw_channel.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_b_channel.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_cmd_arbiter.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_cmd_fsm.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_cmd_translator.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_fifo.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_incr_cmd.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_r_channel.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_w_channel.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_wr_cmd_fsm.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_wrap_cmd.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_a_upsizer.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_axi.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_register_slice.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_axi_upsizer.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_axic_register_slice.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_carry_and.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_carry_latch_and.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_carry_latch_or.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_carry_or.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_command_fifo.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_comparator.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_comparator_sel.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_comparator_sel_static.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_r_upsizer.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi/ddr4_v2_2_w_upsizer.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_addr_decode.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_read.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_reg_bank.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_reg.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_top.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_2_axi_ctrl_write.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/clocking/ddr4_v2_2_infrastructure.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_xsdb_bram.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_write.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_wr_byte.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_wr_bit.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_sync.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_read.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_rd_en.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_pi.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_mc_odt.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_debug_microblaze.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_cplx_data.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_cplx.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_config_rom.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_addr_decode.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_top.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_cal_xsdb_arbiter.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_cal.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_chipscope_xsdb_slave.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/ddr4_v2_2_dp_AB9.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top/memory_system_ddr4_0_0_ddr4.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top/memory_system_ddr4_0_0_ddr4_mem_intfc.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal/memory_system_ddr4_0_0_ddr4_cal_riu.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top/memory_system_ddr4_0_0.sv" \
"../../../bd/memory_system/ip/memory_system_ddr4_0_0/tb/memory_system_ddr4_0_0_microblaze_mcs_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/sim/bd_ee24.v" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_ee24_arsw_0.sv" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_ee24_rsw_0.sv" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_ee24_awsw_0.sv" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_ee24_wsw_0.sv" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_ee24_bsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/98d8/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_ee24_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_ee24_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/a950/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_ee24_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_ee24_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_ee24_sawn_0.sv" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_ee24_swn_0.sv" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_ee24_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_ee24_m00s2a_0.sv" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_ee24_m00awn_0.sv" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_ee24_m00wn_0.sv" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_ee24_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/1f04/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_ee24_m00e_0.sv" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_ee24_m01s2a_0.sv" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_ee24_m01awn_0.sv" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_ee24_m01wn_0.sv" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_ee24_m01bn_0.sv" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_ee24_m01e_0.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31 -64 -incr -mfcu  "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xlconstant_v1_1_9 -64 -incr -mfcu  "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/memory_system/ip/memory_system_smartconnect_0_0/sim/memory_system_smartconnect_0_0.v" \
"../../../bd/memory_system/sim/memory_system.v" \

vlog -work dist_mem_gen_v8_0_15 -64 -incr -mfcu  "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/fa7e/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_bmg_v1_0_17 -64 -93  \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/3f29/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work axi_traffic_gen_v3_0_17 -64 -93  \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/axi_traffic_gen_v3_0_rfs.vhd" \

vlog -work axi_traffic_gen_v3_0_17 -64 -incr -mfcu  "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/axi_traffic_gen_v3_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/c783/hdl/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/ec67/hdl" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ipshared/56ae/hdl/src/verilog" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/ip_1/rtl/map" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/ip_top" "+incdir+../../../../mint_ddr4_mig.gen/sources_1/bd/memory_system/ip/memory_system_ddr4_0_0/rtl/cal" "+incdir+/home/huy_k66/apps/tools/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/memory_system/ip/memory_system_axi_traffic_gen_0_0/sim/memory_system_axi_traffic_gen_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

