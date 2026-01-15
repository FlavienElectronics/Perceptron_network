vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93  \
"../../../MLP.srcs/sources_1/new/Perceptron_BRAM.vhd" \
"../../../MLP.srcs/sources_1/new/BRAM_user.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../bd/design_1/ip/design_1_Perceptron_BRAM_0_0/sim/design_1_Perceptron_BRAM_0_0.v" \
"../../bd/design_1/ip/design_1_BRAM_user_0_0/sim/design_1_BRAM_user_0_0.v" \
"../../bd/design_1/sim/design_1.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../MLP.srcs/sim_1/new/simulation_Perceptron.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

