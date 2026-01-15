# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "dead_bit_word_64bit" -parent ${Page_0}
  ipgui::add_param $IPINST -name "size_integral_32bit" -parent ${Page_0}
  ipgui::add_param $IPINST -name "weight_array_size" -parent ${Page_0}


}

proc update_PARAM_VALUE.dead_bit_word_64bit { PARAM_VALUE.dead_bit_word_64bit } {
	# Procedure called to update dead_bit_word_64bit when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.dead_bit_word_64bit { PARAM_VALUE.dead_bit_word_64bit } {
	# Procedure called to validate dead_bit_word_64bit
	return true
}

proc update_PARAM_VALUE.size_integral_32bit { PARAM_VALUE.size_integral_32bit } {
	# Procedure called to update size_integral_32bit when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.size_integral_32bit { PARAM_VALUE.size_integral_32bit } {
	# Procedure called to validate size_integral_32bit
	return true
}

proc update_PARAM_VALUE.weight_array_size { PARAM_VALUE.weight_array_size } {
	# Procedure called to update weight_array_size when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.weight_array_size { PARAM_VALUE.weight_array_size } {
	# Procedure called to validate weight_array_size
	return true
}


proc update_MODELPARAM_VALUE.weight_array_size { MODELPARAM_VALUE.weight_array_size PARAM_VALUE.weight_array_size } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.weight_array_size}] ${MODELPARAM_VALUE.weight_array_size}
}

proc update_MODELPARAM_VALUE.size_integral_32bit { MODELPARAM_VALUE.size_integral_32bit PARAM_VALUE.size_integral_32bit } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.size_integral_32bit}] ${MODELPARAM_VALUE.size_integral_32bit}
}

proc update_MODELPARAM_VALUE.dead_bit_word_64bit { MODELPARAM_VALUE.dead_bit_word_64bit PARAM_VALUE.dead_bit_word_64bit } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.dead_bit_word_64bit}] ${MODELPARAM_VALUE.dead_bit_word_64bit}
}

