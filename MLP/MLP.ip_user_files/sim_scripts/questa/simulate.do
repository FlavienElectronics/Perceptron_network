onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib simulation_Perceptron_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {simulation_Perceptron.udo}

run 1000ns

quit -force
