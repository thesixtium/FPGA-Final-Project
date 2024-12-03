transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+pwm_measure_tb  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.pwm_measure_tb xil_defaultlib.glbl

do {pwm_measure_tb.udo}

run 1000ns

endsim

quit -force
