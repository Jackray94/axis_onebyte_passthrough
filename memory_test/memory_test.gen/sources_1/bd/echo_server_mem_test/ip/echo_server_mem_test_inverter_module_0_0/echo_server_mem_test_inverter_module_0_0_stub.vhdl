-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sat Jun 10 15:57:35 2023
-- Host        : jk running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_inverter_module_0_0/echo_server_mem_test_inverter_module_0_0_stub.vhdl
-- Design      : echo_server_mem_test_inverter_module_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity echo_server_mem_test_inverter_module_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    m_axis_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_valid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_ready : in STD_LOGIC;
    s_axis_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_valid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_ready : out STD_LOGIC
  );

end echo_server_mem_test_inverter_module_0_0;

architecture stub of echo_server_mem_test_inverter_module_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset_n,m_axis_data[31:0],m_axis_valid,m_axis_tlast,m_axis_ready,s_axis_data[31:0],s_axis_valid,s_axis_tlast,s_axis_ready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "inverter_module,Vivado 2022.1";
begin
end;
