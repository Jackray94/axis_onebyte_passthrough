# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/vitis5/plat/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/vitis5/plat/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {plat}\
-hw {/home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/echo_server_mem_test_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {/home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/vitis5}

platform write
platform generate -domains 
platform active {plat}
platform generate
