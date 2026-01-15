transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+simulation_Perceptron  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.simulation_Perceptron xil_defaultlib.glbl

do {simulation_Perceptron.udo}

run 1000ns

endsim

quit -force
