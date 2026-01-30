# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "w0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "w1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "w2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "w3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "w4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "w5" -parent ${Page_0}
  ipgui::add_param $IPINST -name "w6" -parent ${Page_0}


}

proc update_PARAM_VALUE.w0 { PARAM_VALUE.w0 } {
	# Procedure called to update w0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.w0 { PARAM_VALUE.w0 } {
	# Procedure called to validate w0
	return true
}

proc update_PARAM_VALUE.w1 { PARAM_VALUE.w1 } {
	# Procedure called to update w1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.w1 { PARAM_VALUE.w1 } {
	# Procedure called to validate w1
	return true
}

proc update_PARAM_VALUE.w2 { PARAM_VALUE.w2 } {
	# Procedure called to update w2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.w2 { PARAM_VALUE.w2 } {
	# Procedure called to validate w2
	return true
}

proc update_PARAM_VALUE.w3 { PARAM_VALUE.w3 } {
	# Procedure called to update w3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.w3 { PARAM_VALUE.w3 } {
	# Procedure called to validate w3
	return true
}

proc update_PARAM_VALUE.w4 { PARAM_VALUE.w4 } {
	# Procedure called to update w4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.w4 { PARAM_VALUE.w4 } {
	# Procedure called to validate w4
	return true
}

proc update_PARAM_VALUE.w5 { PARAM_VALUE.w5 } {
	# Procedure called to update w5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.w5 { PARAM_VALUE.w5 } {
	# Procedure called to validate w5
	return true
}

proc update_PARAM_VALUE.w6 { PARAM_VALUE.w6 } {
	# Procedure called to update w6 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.w6 { PARAM_VALUE.w6 } {
	# Procedure called to validate w6
	return true
}


proc update_MODELPARAM_VALUE.w0 { MODELPARAM_VALUE.w0 PARAM_VALUE.w0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.w0}] ${MODELPARAM_VALUE.w0}
}

proc update_MODELPARAM_VALUE.w1 { MODELPARAM_VALUE.w1 PARAM_VALUE.w1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.w1}] ${MODELPARAM_VALUE.w1}
}

proc update_MODELPARAM_VALUE.w2 { MODELPARAM_VALUE.w2 PARAM_VALUE.w2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.w2}] ${MODELPARAM_VALUE.w2}
}

proc update_MODELPARAM_VALUE.w3 { MODELPARAM_VALUE.w3 PARAM_VALUE.w3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.w3}] ${MODELPARAM_VALUE.w3}
}

proc update_MODELPARAM_VALUE.w4 { MODELPARAM_VALUE.w4 PARAM_VALUE.w4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.w4}] ${MODELPARAM_VALUE.w4}
}

proc update_MODELPARAM_VALUE.w5 { MODELPARAM_VALUE.w5 PARAM_VALUE.w5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.w5}] ${MODELPARAM_VALUE.w5}
}

proc update_MODELPARAM_VALUE.w6 { MODELPARAM_VALUE.w6 PARAM_VALUE.w6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.w6}] ${MODELPARAM_VALUE.w6}
}

