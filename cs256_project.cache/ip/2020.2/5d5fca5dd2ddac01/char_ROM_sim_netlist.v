// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Nov 24 13:48:58 2024
// Host        : rsws13.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ char_ROM_sim_netlist.v
// Design      : char_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_ROM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [11:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.2716 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "char_ROM.mem" *) 
  (* C_INIT_FILE_NAME = "char_ROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18240)
`pragma protect data_block
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
`pragma protect end_protected
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
