transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93  -incr \
"../../../MLP.srcs/sources_1/new/Perceptron_BRAM.vhd" \
"../../../MLP.srcs/sources_1/new/BRAM_user.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib \
"../../../MLP.gen/sources_1/bd/design_1/ip/design_1_Perceptron_BRAM_0_0/sim/design_1_Perceptron_BRAM_0_0.v" \
"../../../MLP.gen/sources_1/bd/design_1/ip/design_1_BRAM_user_0_0/sim/design_1_BRAM_user_0_0.v" \
"../../../MLP.gen/sources_1/bd/design_1/sim/design_1.v" \
"../../../MLP.gen/sources_1/bd/design_1/hdl/design_1_wrapper.v" \

vlog -work xil_defaultlib \
"glbl.v"

