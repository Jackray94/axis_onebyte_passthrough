onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib echo_server_mem_test_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {echo_server_mem_test.udo}

run -all

quit -force
