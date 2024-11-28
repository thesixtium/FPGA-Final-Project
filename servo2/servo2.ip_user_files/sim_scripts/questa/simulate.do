onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib inverse_tb_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {inverse_tb.udo}

run 1000ns

quit -force
