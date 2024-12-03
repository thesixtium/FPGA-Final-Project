transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 -l xil_defaultlib \
"../../../servo2.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0.v" \

vlog -work xil_defaultlib  -sv2k12 -l xil_defaultlib \
"../../../../keyboardControl.sv" \
"../../../../pwm.sv" \
"../../../../receiver.sv" \
"../../../../top_level.sv" \
"../../../../pwm_enable.sv" \
"../../../../inverse_kinematics.sv" \
"../../../../syncFIFO.sv" \
"../../../../clk_divider.sv" \
"../../../../divider.sv" \
"../../../../pwm_measure.sv" \
"../../../../averager.sv" \
"../../../../fsm.sv" \
"../../../../fsm_controller.sv" \
"../../../../transmitter.sv" \
"../../../../display.sv" \
"../../../../clk_divider_tb.sv" \
"../../../../pwm_tb.sv" \
"../../../../pwm_enable_tb.sv" \
"../../../../syncFIFO_tb.sv" \
"../../../../pwm_measure_tb.sv" \
"../../../../divider_tb.sv" \
"../../../../fsm_tb.sv" \
"../../../../inverse_kinematics_tb.sv" \

vlog -work xil_defaultlib \
"glbl.v"

