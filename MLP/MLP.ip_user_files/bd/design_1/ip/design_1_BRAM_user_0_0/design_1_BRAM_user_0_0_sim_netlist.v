// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Jan 29 13:31:33 2026
// Host        : fixe_flavien running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/flavi/Desktop/Perceptron_network/MLP/MLP.gen/sources_1/bd/design_1/ip/design_1_BRAM_user_0_0/design_1_BRAM_user_0_0_sim_netlist.v
// Design      : design_1_BRAM_user_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_BRAM_user_0_0,BRAM_user,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "BRAM_user,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_BRAM_user_0_0
   (addr,
    CLK,
    data_out);
  input [7:0]addr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  output [31:0]data_out;

  wire \<const0> ;
  wire CLK;
  wire [7:0]addr;
  wire [31:18]\^data_out ;

  assign data_out[31:28] = \^data_out [31:28];
  assign data_out[27] = \^data_out [25];
  assign data_out[26:25] = \^data_out [26:25];
  assign data_out[24] = \^data_out [23];
  assign data_out[23] = \^data_out [23];
  assign data_out[22] = \^data_out [23];
  assign data_out[21:20] = \^data_out [19:18];
  assign data_out[19:18] = \^data_out [19:18];
  assign data_out[17] = \^data_out [23];
  assign data_out[16] = \^data_out [23];
  assign data_out[15] = \^data_out [19];
  assign data_out[14] = \<const0> ;
  assign data_out[13] = \<const0> ;
  assign data_out[12] = \<const0> ;
  assign data_out[11] = \^data_out [18];
  assign data_out[10:9] = \^data_out [19:18];
  assign data_out[8] = \^data_out [19];
  assign data_out[7] = \<const0> ;
  assign data_out[6] = \<const0> ;
  assign data_out[5] = \^data_out [18];
  assign data_out[4] = \^data_out [23];
  assign data_out[3] = \^data_out [23];
  assign data_out[2] = \^data_out [23];
  assign data_out[1:0] = \^data_out [19:18];
  GND GND
       (.G(\<const0> ));
  design_1_BRAM_user_0_0_BRAM_user inst
       (.CLK(CLK),
        .addr(addr),
        .data_out({\^data_out [31:28],\^data_out [25],\^data_out [26],\^data_out [23],\^data_out [19:18]}));
endmodule

(* ORIG_REF_NAME = "BRAM_user" *) 
module design_1_BRAM_user_0_0_BRAM_user
   (data_out,
    addr,
    CLK);
  output [8:0]data_out;
  input [7:0]addr;
  input CLK;

  wire CLK;
  wire [7:0]addr;
  wire [8:0]data_out;
  wire \data_out[20]_i_1_n_0 ;
  wire \data_out[21]_i_1_n_0 ;
  wire \data_out[24]_i_1_n_0 ;
  wire \data_out[26]_i_1_n_0 ;
  wire \data_out[27]_i_1_n_0 ;
  wire \data_out[28]_i_1_n_0 ;
  wire \data_out[29]_i_1_n_0 ;
  wire \data_out[30]_i_1_n_0 ;
  wire \data_out[31]_i_1_n_0 ;
  wire \data_out[31]_i_2_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \data_out[20]_i_1 
       (.I0(addr[0]),
        .I1(\data_out[31]_i_2_n_0 ),
        .I2(addr[2]),
        .I3(addr[1]),
        .O(\data_out[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \data_out[21]_i_1 
       (.I0(addr[1]),
        .I1(\data_out[31]_i_2_n_0 ),
        .I2(addr[2]),
        .I3(addr[0]),
        .O(\data_out[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4080)) 
    \data_out[24]_i_1 
       (.I0(addr[0]),
        .I1(addr[2]),
        .I2(\data_out[31]_i_2_n_0 ),
        .I3(addr[1]),
        .O(\data_out[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \data_out[26]_i_1 
       (.I0(addr[0]),
        .I1(\data_out[31]_i_2_n_0 ),
        .I2(addr[2]),
        .I3(addr[1]),
        .O(\data_out[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_out[27]_i_1 
       (.I0(addr[2]),
        .I1(\data_out[31]_i_2_n_0 ),
        .I2(addr[0]),
        .O(\data_out[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7050)) 
    \data_out[28]_i_1 
       (.I0(addr[1]),
        .I1(addr[0]),
        .I2(\data_out[31]_i_2_n_0 ),
        .I3(addr[2]),
        .O(\data_out[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data_out[29]_i_1 
       (.I0(addr[7]),
        .I1(addr[6]),
        .I2(addr[5]),
        .I3(addr[4]),
        .I4(addr[3]),
        .I5(addr[0]),
        .O(\data_out[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \data_out[30]_i_1 
       (.I0(\data_out[31]_i_2_n_0 ),
        .I1(addr[2]),
        .I2(addr[1]),
        .I3(addr[0]),
        .O(\data_out[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h3040)) 
    \data_out[31]_i_1 
       (.I0(addr[0]),
        .I1(addr[1]),
        .I2(\data_out[31]_i_2_n_0 ),
        .I3(addr[2]),
        .O(\data_out[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \data_out[31]_i_2 
       (.I0(addr[3]),
        .I1(addr[4]),
        .I2(addr[5]),
        .I3(addr[6]),
        .I4(addr[7]),
        .O(\data_out[31]_i_2_n_0 ));
  FDRE \data_out_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[20]_i_1_n_0 ),
        .Q(data_out[0]),
        .R(1'b0));
  FDRE \data_out_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[21]_i_1_n_0 ),
        .Q(data_out[1]),
        .R(1'b0));
  FDRE \data_out_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[24]_i_1_n_0 ),
        .Q(data_out[2]),
        .R(1'b0));
  FDRE \data_out_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[26]_i_1_n_0 ),
        .Q(data_out[3]),
        .R(1'b0));
  FDRE \data_out_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[27]_i_1_n_0 ),
        .Q(data_out[4]),
        .R(1'b0));
  FDRE \data_out_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[28]_i_1_n_0 ),
        .Q(data_out[5]),
        .R(1'b0));
  FDRE \data_out_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[29]_i_1_n_0 ),
        .Q(data_out[6]),
        .R(1'b0));
  FDRE \data_out_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[30]_i_1_n_0 ),
        .Q(data_out[7]),
        .R(1'b0));
  FDRE \data_out_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(\data_out[31]_i_1_n_0 ),
        .Q(data_out[8]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
