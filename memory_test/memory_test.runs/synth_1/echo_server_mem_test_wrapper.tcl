# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "/home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.runs/synth_1/echo_server_mem_test_wrapper.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "synth_1" START { ROLLUP_AUTO }
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.cache/wt [current_project]
set_property parent.project_path /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/ip_repo [current_project]
update_ip_catalog
set_property ip_output_repo /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_verilog -library xil_defaultlib /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/hdl/echo_server_mem_test_wrapper.v
add_files /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.srcs/sources_1/bd/echo_server_mem_test/echo_server_mem_test.bd
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_microblaze_0_0/echo_server_mem_test_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_microblaze_0_0/echo_server_mem_test_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_microblaze_0_0/echo_server_mem_test_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_dlmb_v10_0/echo_server_mem_test_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_ilmb_v10_0/echo_server_mem_test_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_dlmb_bram_if_cntlr_0/echo_server_mem_test_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_ilmb_bram_if_cntlr_0/echo_server_mem_test_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_lmb_bram_0/echo_server_mem_test_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_xbar_0/echo_server_mem_test_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_microblaze_0_axi_intc_0/echo_server_mem_test_microblaze_0_axi_intc_0.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_microblaze_0_axi_intc_0/echo_server_mem_test_microblaze_0_axi_intc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_microblaze_0_axi_intc_0/echo_server_mem_test_microblaze_0_axi_intc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_mdm_1_0/echo_server_mem_test_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_mdm_1_0/echo_server_mem_test_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_clk_wiz_1_0/echo_server_mem_test_clk_wiz_1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_clk_wiz_1_0/echo_server_mem_test_clk_wiz_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_clk_wiz_1_0/echo_server_mem_test_clk_wiz_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_rst_clk_wiz_1_100M_0/echo_server_mem_test_rst_clk_wiz_1_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_rst_clk_wiz_1_100M_0/echo_server_mem_test_rst_clk_wiz_1_100M_0.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_rst_clk_wiz_1_100M_0/echo_server_mem_test_rst_clk_wiz_1_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/constraints/echo_server_mem_test_mig_7series_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_mig_7series_0_0/echo_server_mem_test_mig_7series_0_0/user_design/constraints/echo_server_mem_test_mig_7series_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_ethernetlite_0_0/echo_server_mem_test_axi_ethernetlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_ethernetlite_0_0/echo_server_mem_test_axi_ethernetlite_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_ethernetlite_0_0/echo_server_mem_test_axi_ethernetlite_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_ethernetlite_0_0/echo_server_mem_test_axi_ethernetlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_timer_0_0/echo_server_mem_test_axi_timer_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_timer_0_0/echo_server_mem_test_axi_timer_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_uartlite_0_0/echo_server_mem_test_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_uartlite_0_0/echo_server_mem_test_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_uartlite_0_0/echo_server_mem_test_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_mii_to_rmii_0_0/echo_server_mem_test_mii_to_rmii_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_mii_to_rmii_0_0/echo_server_mem_test_mii_to_rmii_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_1/bd_2d1e_psr0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_1/bd_2d1e_psr0_0.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_2/bd_2d1e_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_2/bd_2d1e_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_3/bd_2d1e_psr_aclk1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_3/bd_2d1e_psr_aclk1_0.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_4/bd_2d1e_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_5/bd_2d1e_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_6/bd_2d1e_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_7/bd_2d1e_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_8/bd_2d1e_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_12/bd_2d1e_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_13/bd_2d1e_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_14/bd_2d1e_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_15/bd_2d1e_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_16/bd_2d1e_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_17/bd_2d1e_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_21/bd_2d1e_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_22/bd_2d1e_sarn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_23/bd_2d1e_srn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_27/bd_2d1e_s02a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_28/bd_2d1e_sarn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_29/bd_2d1e_srn_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_33/bd_2d1e_s03a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_34/bd_2d1e_sawn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_35/bd_2d1e_swn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_36/bd_2d1e_sbn_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_37/bd_2d1e_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_38/bd_2d1e_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_39/bd_2d1e_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_40/bd_2d1e_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_41/bd_2d1e_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/bd_0/ip/ip_42/bd_2d1e_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_smc_1/ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_rst_mig_7series_0_81M_2/echo_server_mem_test_rst_mig_7series_0_81M_2_board.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_rst_mig_7series_0_81M_2/echo_server_mem_test_rst_mig_7series_0_81M_2.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_rst_mig_7series_0_81M_2/echo_server_mem_test_rst_mig_7series_0_81M_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_dma_0_0/echo_server_mem_test_axi_dma_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_dma_0_0/echo_server_mem_test_axi_dma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_axi_dma_0_0/echo_server_mem_test_axi_dma_0_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/ip/ip_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/ip/ip_0/bd_4c59_ila_lib_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/bd_0/bd_4c59_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_1_1/echo_server_mem_test_system_ila_1_1_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_0_3/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_0_3/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_0_3/bd_0/ip/ip_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_0_3/bd_0/ip/ip_0/bd_4d89_ila_lib_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_0_3/bd_0/bd_4d89_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_system_ila_0_3/echo_server_mem_test_system_ila_0_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/echo_server_mem_test_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.gen/sources_1/bd/echo_server_mem_test/ip/echo_server_mem_test_microblaze_0_0/data/mb_bootloop_le.elf]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.srcs/constrs_1/imports/new/eth_ref_clk.xdc
set_property used_in_implementation false [get_files /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/memory_test.srcs/constrs_1/imports/new/eth_ref_clk.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1

read_checkpoint -auto_incremental -incremental /home/jack/VERILOG/4_29_onward/memory_test_mig/memory_test/memory_test.srcs/utils_1/imports/synth_1/echo_server_mem_test_wrapper.dcp
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top echo_server_mem_test_wrapper -part xc7a100tcsg324-1
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef echo_server_mem_test_wrapper.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "synth_1_synth_report_utilization_0" "report_utilization -file echo_server_mem_test_wrapper_utilization_synth.rpt -pb echo_server_mem_test_wrapper_utilization_synth.pb"
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
