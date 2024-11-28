transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xbip_utils_v3_0_13
vlib activehdl/axi_utils_v2_0_9
vlib activehdl/xbip_pipe_v3_0_9
vlib activehdl/xbip_dsp48_wrapper_v3_0_6
vlib activehdl/xbip_dsp48_addsub_v3_0_9
vlib activehdl/xbip_bram18k_v3_0_9
vlib activehdl/mult_gen_v12_0_21
vlib activehdl/floating_point_v7_0_23
vlib activehdl/xbip_dsp48_mult_v3_0_9
vlib activehdl/xbip_dsp48_multadd_v3_0_9
vlib activehdl/div_gen_v5_1_22
vlib activehdl/xil_defaultlib

vmap xbip_utils_v3_0_13 activehdl/xbip_utils_v3_0_13
vmap axi_utils_v2_0_9 activehdl/axi_utils_v2_0_9
vmap xbip_pipe_v3_0_9 activehdl/xbip_pipe_v3_0_9
vmap xbip_dsp48_wrapper_v3_0_6 activehdl/xbip_dsp48_wrapper_v3_0_6
vmap xbip_dsp48_addsub_v3_0_9 activehdl/xbip_dsp48_addsub_v3_0_9
vmap xbip_bram18k_v3_0_9 activehdl/xbip_bram18k_v3_0_9
vmap mult_gen_v12_0_21 activehdl/mult_gen_v12_0_21
vmap floating_point_v7_0_23 activehdl/floating_point_v7_0_23
vmap xbip_dsp48_mult_v3_0_9 activehdl/xbip_dsp48_mult_v3_0_9
vmap xbip_dsp48_multadd_v3_0_9 activehdl/xbip_dsp48_multadd_v3_0_9
vmap div_gen_v5_1_22 activehdl/div_gen_v5_1_22
vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xbip_utils_v3_0_13 -93  \
"../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_9 -93  \
"../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_9 -93  \
"../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_6 -93  \
"../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_9 -93  \
"../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_9 -93  \
"../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_21 -93  \
"../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_0_23 -93  \
"../../ipstatic/hdl/floating_point_v7_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_mult_v3_0_9 -93  \
"../../ipstatic/hdl/xbip_dsp48_mult_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_9 -93  \
"../../ipstatic/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work div_gen_v5_1_22 -93  \
"../../ipstatic/hdl/div_gen_v5_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../servo2.gen/sources_1/ip/div_gen_0/sim/div_gen_0.vhd" \
"../../../servo2.gen/sources_1/ip/div_gen_0/demo_tb/tb_div_gen_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_0_23 -l xbip_dsp48_mult_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l div_gen_v5_1_22 -l xil_defaultlib \
"../../../../keyboardControl.sv" \
"../../../../pwm.sv" \
"../../../../receiver.sv" \
"../../../../top_level.sv" \
"../../../../pwm_enable.sv" \
"../../../../inverse_kinematics.sv" \
"../../../../ikKeyboardControl.sv" \
"../../../../syncFIFO.sv" \
"../../../../clk_divider.sv" \
"../../../../clk_divider_tb.sv" \
"../../../../pwm_tb.sv" \
"../../../../pwm_enable_tb.sv" \
"../../../../syncFIFO_tb.sv" \
"../../../../div_gen_0_tb.sv" \

vlog -work xil_defaultlib \
"glbl.v"

