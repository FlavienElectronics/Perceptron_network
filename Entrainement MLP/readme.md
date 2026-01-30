Here you will find several scripts to help you to train and implement weight memories on a FPGA. 

A requirements.txt file can help you to install the good packages in python. 
It is recommended to use a venv before installing them 

python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

mlp_trainer.ipynb : 
    This is a notebook alowing to train a MLP over MNIST dataset. 
    You can find 3 degrees of complexity : 
        - 1 neuron telling if it is a 0 or not 
        - a layer of 10 neurons to classify every image
        - 2 layers of 256 and 10 neurons to classify every image with a slightly better accuracy
    
    You can save the weights of these networks into .npz file to use them in other scripts 

quantization_functions.py 
    contains several functions to quantize float values (between -1 and 1) into integers : 
        - quantize_to_int8 gives the actual value and the scale 
        - int_to_vhdl_hex gives a quantize value and write it with VHDL syntax (x"F4" for example)


vhdl_generator.py
    write_test_input_coe : Take an input in npz which is a flatten image of MNIST dataset and quantize it. Then it saves it into a .coe file to use it as the input of your implemented model (for testing)

    write_layer_weights_mem : From a npz file with the weights of your model generate the VHDL code with the memories in BRAM for each neuron within a layer. You can add the path of a MNIST dataset image npz to get the expected result in simulation.
    The result of this script can be just drag and drop into the block diagram and should be connected to a layer component. 
    However the memory output is a bus with all the values of the memory at a certain time. It should be cut in several parts in your layer component.
    Only one adress is set as input because for a layer, every neuron should access at the same adress of their memory. 
    (Example after i clocks ticks the neuron 1 access to w_1i while the neuron n access to w_ni)


PS : The code was made for a int quantization and tested with 8 bits (you can find some bugs).
To use fixed points you will have to program it yourself (it should be easy).

If you have any problem contact me : loic.thomas@laas.fr