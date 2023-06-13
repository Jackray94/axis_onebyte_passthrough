vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/microblaze_v11_0_9
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lmb_v10_v3_0_12
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_21
vlib questa_lib/msim/blk_mem_gen_v8_4_5
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_26
vlib questa_lib/msim/fifo_generator_v13_2_7
vlib questa_lib/msim/axi_data_fifo_v2_1_25
vlib questa_lib/msim/axi_crossbar_v2_1_27
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/axi_intc_v4_1_17
vlib questa_lib/msim/xlconcat_v2_1_4
vlib questa_lib/msim/mdm_v3_2_23
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/lib_bmg_v1_0_14
vlib questa_lib/msim/lib_fifo_v1_0_16
vlib questa_lib/msim/axi_ethernetlite_v3_0_25
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/axi_timer_v2_0_28
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_uartlite_v2_0_30
vlib questa_lib/msim/mii_to_rmii_v2_0_21
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_vip_v1_1_12
vlib questa_lib/msim/axi_datamover_v5_1_28
vlib questa_lib/msim/axi_sg_v4_1_15
vlib questa_lib/msim/axi_dma_v7_1_27
vlib questa_lib/msim/gigantic_mux

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap microblaze_v11_0_9 questa_lib/msim/microblaze_v11_0_9
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lmb_v10_v3_0_12 questa_lib/msim/lmb_v10_v3_0_12
vmap lmb_bram_if_cntlr_v4_0_21 questa_lib/msim/lmb_bram_if_cntlr_v4_0_21
vmap blk_mem_gen_v8_4_5 questa_lib/msim/blk_mem_gen_v8_4_5
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_26 questa_lib/msim/axi_register_slice_v2_1_26
vmap fifo_generator_v13_2_7 questa_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 questa_lib/msim/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 questa_lib/msim/axi_crossbar_v2_1_27
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_17 questa_lib/msim/axi_intc_v4_1_17
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4
vmap mdm_v3_2_23 questa_lib/msim/mdm_v3_2_23
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap lib_bmg_v1_0_14 questa_lib/msim/lib_bmg_v1_0_14
vmap lib_fifo_v1_0_16 questa_lib/msim/lib_fifo_v1_0_16
vmap axi_ethernetlite_v3_0_25 questa_lib/msim/axi_ethernetlite_v3_0_25
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap axi_timer_v2_0_28 questa_lib/msim/axi_timer_v2_0_28
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_30 questa_lib/msim/axi_uartlite_v2_0_30
vmap mii_to_rmii_v2_0_21 questa_lib/msim/mii_to_rmii_v2_0_21
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_vip_v1_1_12 questa_lib/msim/axi_vip_v1_1_12
vmap axi_datamover_v5_1_28 questa_lib/msim/axi_datamover_v5_1_28
vmap axi_sg_v4_1_15 questa_lib/msim/axi_sg_v4_1_15
vmap axi_dma_v7_1_27 questa_lib/msim/axi_dma_v7_1_27
vmap gigantic_mux questa_lib/msim/gigantic_mux

vlog -work xilinx_vip -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_9 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/057e/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_microblaze_0_0/sim/echo_server_mem_test_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_12 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/cd1d/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_dlmb_v10_0/sim/echo_server_mem_test_dlmb_v10_0.vhd" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_ilmb_v10_0/sim/echo_server_mem_test_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_21 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/a177/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_dlmb_bram_if_cntlr_0/sim/echo_server_mem_test_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_ilmb_bram_if_cntlr_0/sim/echo_server_mem_test_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_5 -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_lmb_bram_0/sim/echo_server_mem_test_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26 -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25 -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27 -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_xbar_0/sim/echo_server_mem_test_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_17 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/802b/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_microblaze_0_axi_intc_0/sim/echo_server_mem_test_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_4 -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_microblaze_0_xlconcat_0/sim/echo_server_mem_test_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_23 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b8f4/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mdm_1_0/sim/echo_server_mem_test_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_clk_wiz_1_0/echo_server_mem_test_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_clk_wiz_1_0/echo_server_mem_test_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_rst_clk_wiz_1_100M_0/sim/echo_server_mem_test_rst_clk_wiz_1_100M_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/echo_server_mem_test_mig_7series_0_0_mig_sim.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/rtl/echo_server_mem_test_mig_7series_0_0.v" \

vcom -work lib_bmg_v1_0_14 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/3a3e/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_16 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_ethernetlite_v3_0_25 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/c002/hdl/axi_ethernetlite_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_ethernetlite_0_0/sim/echo_server_mem_test_axi_ethernetlite_0_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_28 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/2389/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_timer_0_0/sim/echo_server_mem_test_axi_timer_0_0.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_30 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/5d2b/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_uartlite_0_0/sim/echo_server_mem_test_axi_uartlite_0_0.vhd" \

vcom -work mii_to_rmii_v2_0_21 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/25d7/hdl/mii_to_rmii_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_mii_to_rmii_0_0/sim/echo_server_mem_test_mii_to_rmii_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/sim/bd_2d1e.v" \

vlog -work xlconstant_v1_1_7 -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_0/sim/bd_2d1e_one_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_1/sim/bd_2d1e_psr0_0.vhd" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_2/sim/bd_2d1e_psr_aclk_0.vhd" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_3/sim/bd_2d1e_psr_aclk1_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_4/sim/bd_2d1e_arsw_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_5/sim/bd_2d1e_rsw_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_6/sim/bd_2d1e_awsw_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_7/sim/bd_2d1e_wsw_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_8/sim/bd_2d1e_bsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_9/sim/bd_2d1e_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_10/sim/bd_2d1e_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_11/sim/bd_2d1e_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_12/sim/bd_2d1e_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_13/sim/bd_2d1e_sarn_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_14/sim/bd_2d1e_srn_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_15/sim/bd_2d1e_sawn_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_16/sim/bd_2d1e_swn_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_17/sim/bd_2d1e_sbn_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_18/sim/bd_2d1e_s01mmu_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_19/sim/bd_2d1e_s01tr_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_20/sim/bd_2d1e_s01sic_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_21/sim/bd_2d1e_s01a2s_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_22/sim/bd_2d1e_sarn_1.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_23/sim/bd_2d1e_srn_1.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_24/sim/bd_2d1e_s02mmu_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_25/sim/bd_2d1e_s02tr_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_26/sim/bd_2d1e_s02sic_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_27/sim/bd_2d1e_s02a2s_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_28/sim/bd_2d1e_sarn_2.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_29/sim/bd_2d1e_srn_2.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_30/sim/bd_2d1e_s03mmu_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_31/sim/bd_2d1e_s03tr_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_32/sim/bd_2d1e_s03sic_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_33/sim/bd_2d1e_s03a2s_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_34/sim/bd_2d1e_sawn_1.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_35/sim/bd_2d1e_swn_1.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_36/sim/bd_2d1e_sbn_1.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_37/sim/bd_2d1e_m00s2a_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_38/sim/bd_2d1e_m00arn_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_39/sim/bd_2d1e_m00rn_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_40/sim/bd_2d1e_m00awn_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_41/sim/bd_2d1e_m00wn_0.sv" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_42/sim/bd_2d1e_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_43/sim/bd_2d1e_m00e_0.sv" \

vlog -work axi_vip_v1_1_12 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/sim/echo_server_mem_test_axi_smc_1.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_rst_mig_7series_0_81M_2/sim/echo_server_mem_test_rst_mig_7series_0_81M_2.vhd" \

vcom -work axi_datamover_v5_1_28 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1bb8/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_15 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_27 -64 -93 \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/7b0b/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_axi_dma_0_0/sim/echo_server_mem_test_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/sim/bd_4c59.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/ip/ip_0/sim/bd_4c59_ila_lib_0.v" \

vlog -work gigantic_mux -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/e87a/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/ec67/hdl" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/4e49" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/f0b6/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/66be/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/1b7e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/122e/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/b205/hdl/verilog" "+incdir+../../../../memory_test.gen/sources_1/bd/echo_server_mem_test/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/ip/ip_1/bd_4c59_g_inst_0_gigantic_mux.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/ip/ip_1/sim/bd_4c59_g_inst_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/ip/ip_2/sim/bd_4c59_slot_0_aw_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/ip/ip_3/sim/bd_4c59_slot_0_w_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/ip/ip_4/sim/bd_4c59_slot_0_b_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/ip/ip_5/sim/bd_4c59_slot_0_ar_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/ip/ip_6/sim/bd_4c59_slot_0_r_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/ip/ip_7/sim/bd_4c59_slot_1_aw_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/ip/ip_8/sim/bd_4c59_slot_1_w_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/ip/ip_9/sim/bd_4c59_slot_1_b_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/ip/ip_10/sim/bd_4c59_slot_1_ar_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/ip/ip_11/sim/bd_4c59_slot_1_r_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/sim/echo_server_mem_test_system_ila_1_1.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_0_3/bd_0/sim/bd_4d89.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_0_3/bd_0/ip/ip_0/sim/bd_4d89_ila_lib_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_0_3/bd_0/ip/ip_1/bd_4d89_g_inst_0_gigantic_mux.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_0_3/bd_0/ip/ip_1/sim/bd_4d89_g_inst_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_0_3/bd_0/ip/ip_2/sim/bd_4d89_slot_0_aw_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_0_3/bd_0/ip/ip_3/sim/bd_4d89_slot_0_w_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_0_3/bd_0/ip/ip_4/sim/bd_4d89_slot_0_b_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_0_3/bd_0/ip/ip_5/sim/bd_4d89_slot_0_ar_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_0_3/bd_0/ip/ip_6/sim/bd_4d89_slot_0_r_0.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_0_3/sim/echo_server_mem_test_system_ila_0_3.v" \
"../../../bd/echo_server_mem_test/ipshared/3d80/inverter_original_prj/inverter_original_prj.srcs/sources_1/new/inverter_module.v" \
"../../../bd/echo_server_mem_test/ip/echo_server_mem_test_inverter_module_0_0/sim/echo_server_mem_test_inverter_module_0_0.v" \
"../../../bd/echo_server_mem_test/sim/echo_server_mem_test.v" \

vlog -work xil_defaultlib \
"glbl.v"

