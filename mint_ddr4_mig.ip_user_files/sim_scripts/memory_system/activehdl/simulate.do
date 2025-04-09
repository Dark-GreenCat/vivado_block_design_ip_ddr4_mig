transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+memory_system  -L xilinx_vip -L xpm -L microblaze_v11_0_13 -L xil_defaultlib -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_15 -L lmb_v10_v3_0_14 -L lmb_bram_if_cntlr_v4_0_24 -L blk_mem_gen_v8_4_8 -L iomodule_v3_1_10 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_31 -L axi_vip_v1_1_17 -L xlconstant_v1_1_9 -L dist_mem_gen_v8_0_15 -L lib_bmg_v1_0_17 -L axi_traffic_gen_v3_0_17 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.memory_system xil_defaultlib.glbl

do {memory_system.udo}

run

endsim

quit -force
