set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { sys_clk }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {sys_clk}];


set_property -dict { PACKAGE_PIN D5    IOSTANDARD LVCMOS33 } [get_ports { eth_ref_clk }]; # Sch=eth_ref_clk

set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L3P_T0_DQS_AD1P_15 Sch=cpu_resetn

set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { uart_rtl_0_rxd }]; #IO_L7P_T1_AD6P_35 Sch=uart_txd_in
set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { uart_rtl_0_txd }]; #IO_L11N_T1_SRCC_35 Sch=uart_rxd_out


set_property PACKAGE_PIN C9 [get_ports mdio_rtl_0_mdc]
set_property IOSTANDARD LVCMOS33 [get_ports mdio_rtl_0_mdc]

set_property PACKAGE_PIN A9 [get_ports mdio_rtl_0_mdio_io]
set_property IOSTANDARD LVCMOS33 [get_ports mdio_rtl_0_mdio_io]

set_property -dict {PACKAGE_PIN C11 IOSTANDARD LVCMOS33} [get_ports {rmii_rtl_0_rxd[0]}]
set_property -dict {PACKAGE_PIN D10 IOSTANDARD LVCMOS33} [get_ports {rmii_rtl_0_rxd[1]}]
set_property -dict {PACKAGE_PIN C10 IOSTANDARD LVCMOS33} [get_ports rmii_rtl_0_rx_er]
set_property -dict {PACKAGE_PIN B9 IOSTANDARD LVCMOS33} [get_ports rmii_rtl_0_tx_en]
set_property -dict {PACKAGE_PIN A10 IOSTANDARD LVCMOS33} [get_ports {rmii_rtl_0_txd[0]}]
set_property -dict {PACKAGE_PIN A8 IOSTANDARD LVCMOS33} [get_ports {rmii_rtl_0_txd[1]}]
set_property -dict {PACKAGE_PIN D9 IOSTANDARD LVCMOS33} [get_ports rmii_rtl_0_crs_dv]

#set_property CLOCK_DEDICATED_ROUTE TRUE [get_nets echo_setup_i/clk_wiz_1/inst/clk_out2]
#set_property CLOCK_DEDICATED_ROUTE SAME_CMT_COLUMN [get_nets echo_setup_i/clk_wiz_1/inst/clk_out2]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets echo_server_mem_test_i/clk_wiz_1/inst/clk_out1]
#set_property CLOCK_DEDICATED_ROUTE SAME_CMT_COLUMN [get_nets echo_server_mem_test_i/clk_wiz_1/inst/clk_out1]