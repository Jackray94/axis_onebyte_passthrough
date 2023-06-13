# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/vitis5/app_system/_ide/scripts/no_program_no_reset_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/vitis5/app_system/_ide/scripts/no_program_no_reset_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/vitis5/plat/export/plat/hw/echo_server_mem_test_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -processor
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow /home/jack/VERILOG/4_29_onward/axis_ip_attempt1_part2/memory_test/vitis5/app/Debug/app.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
