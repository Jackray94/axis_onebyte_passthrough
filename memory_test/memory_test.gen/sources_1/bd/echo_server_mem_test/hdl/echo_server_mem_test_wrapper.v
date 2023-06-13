//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Sat Jun 10 15:56:50 2023
//Host        : jk running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target echo_server_mem_test_wrapper.bd
//Design      : echo_server_mem_test_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module echo_server_mem_test_wrapper
   (DDR2_0_addr,
    DDR2_0_ba,
    DDR2_0_cas_n,
    DDR2_0_ck_n,
    DDR2_0_ck_p,
    DDR2_0_cke,
    DDR2_0_cs_n,
    DDR2_0_dm,
    DDR2_0_dq,
    DDR2_0_dqs_n,
    DDR2_0_dqs_p,
    DDR2_0_odt,
    DDR2_0_ras_n,
    DDR2_0_we_n,
    eth_ref_clk,
    mdio_rtl_0_mdc,
    mdio_rtl_0_mdio_io,
    reset,
    rmii_rtl_0_crs_dv,
    rmii_rtl_0_rx_er,
    rmii_rtl_0_rxd,
    rmii_rtl_0_tx_en,
    rmii_rtl_0_txd,
    sys_clk,
    uart_rtl_0_rxd,
    uart_rtl_0_txd);
  output [12:0]DDR2_0_addr;
  output [2:0]DDR2_0_ba;
  output DDR2_0_cas_n;
  output [0:0]DDR2_0_ck_n;
  output [0:0]DDR2_0_ck_p;
  output [0:0]DDR2_0_cke;
  output [0:0]DDR2_0_cs_n;
  output [1:0]DDR2_0_dm;
  inout [15:0]DDR2_0_dq;
  inout [1:0]DDR2_0_dqs_n;
  inout [1:0]DDR2_0_dqs_p;
  output [0:0]DDR2_0_odt;
  output DDR2_0_ras_n;
  output DDR2_0_we_n;
  output eth_ref_clk;
  output mdio_rtl_0_mdc;
  inout mdio_rtl_0_mdio_io;
  input reset;
  input rmii_rtl_0_crs_dv;
  input rmii_rtl_0_rx_er;
  input [1:0]rmii_rtl_0_rxd;
  output rmii_rtl_0_tx_en;
  output [1:0]rmii_rtl_0_txd;
  input sys_clk;
  input uart_rtl_0_rxd;
  output uart_rtl_0_txd;

  wire [12:0]DDR2_0_addr;
  wire [2:0]DDR2_0_ba;
  wire DDR2_0_cas_n;
  wire [0:0]DDR2_0_ck_n;
  wire [0:0]DDR2_0_ck_p;
  wire [0:0]DDR2_0_cke;
  wire [0:0]DDR2_0_cs_n;
  wire [1:0]DDR2_0_dm;
  wire [15:0]DDR2_0_dq;
  wire [1:0]DDR2_0_dqs_n;
  wire [1:0]DDR2_0_dqs_p;
  wire [0:0]DDR2_0_odt;
  wire DDR2_0_ras_n;
  wire DDR2_0_we_n;
  wire eth_ref_clk;
  wire mdio_rtl_0_mdc;
  wire mdio_rtl_0_mdio_i;
  wire mdio_rtl_0_mdio_io;
  wire mdio_rtl_0_mdio_o;
  wire mdio_rtl_0_mdio_t;
  wire reset;
  wire rmii_rtl_0_crs_dv;
  wire rmii_rtl_0_rx_er;
  wire [1:0]rmii_rtl_0_rxd;
  wire rmii_rtl_0_tx_en;
  wire [1:0]rmii_rtl_0_txd;
  wire sys_clk;
  wire uart_rtl_0_rxd;
  wire uart_rtl_0_txd;

  echo_server_mem_test echo_server_mem_test_i
       (.DDR2_0_addr(DDR2_0_addr),
        .DDR2_0_ba(DDR2_0_ba),
        .DDR2_0_cas_n(DDR2_0_cas_n),
        .DDR2_0_ck_n(DDR2_0_ck_n),
        .DDR2_0_ck_p(DDR2_0_ck_p),
        .DDR2_0_cke(DDR2_0_cke),
        .DDR2_0_cs_n(DDR2_0_cs_n),
        .DDR2_0_dm(DDR2_0_dm),
        .DDR2_0_dq(DDR2_0_dq),
        .DDR2_0_dqs_n(DDR2_0_dqs_n),
        .DDR2_0_dqs_p(DDR2_0_dqs_p),
        .DDR2_0_odt(DDR2_0_odt),
        .DDR2_0_ras_n(DDR2_0_ras_n),
        .DDR2_0_we_n(DDR2_0_we_n),
        .eth_ref_clk(eth_ref_clk),
        .mdio_rtl_0_mdc(mdio_rtl_0_mdc),
        .mdio_rtl_0_mdio_i(mdio_rtl_0_mdio_i),
        .mdio_rtl_0_mdio_o(mdio_rtl_0_mdio_o),
        .mdio_rtl_0_mdio_t(mdio_rtl_0_mdio_t),
        .reset(reset),
        .rmii_rtl_0_crs_dv(rmii_rtl_0_crs_dv),
        .rmii_rtl_0_rx_er(rmii_rtl_0_rx_er),
        .rmii_rtl_0_rxd(rmii_rtl_0_rxd),
        .rmii_rtl_0_tx_en(rmii_rtl_0_tx_en),
        .rmii_rtl_0_txd(rmii_rtl_0_txd),
        .sys_clk(sys_clk),
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd));
  IOBUF mdio_rtl_0_mdio_iobuf
       (.I(mdio_rtl_0_mdio_o),
        .IO(mdio_rtl_0_mdio_io),
        .O(mdio_rtl_0_mdio_i),
        .T(mdio_rtl_0_mdio_t));
endmodule
