// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Nov 24 13:48:53 2024
// Host        : rsws13.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ enemy_ROM_sim_netlist.v
// Design      : enemy_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "enemy_ROM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [7:0]addra;
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
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.5432 mW" *) 
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
  (* C_INIT_FILE = "enemy_ROM.mem" *) 
  (* C_INIT_FILE_NAME = "enemy_ROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "200" *) 
  (* C_READ_DEPTH_B = "200" *) 
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
  (* C_WRITE_DEPTH_A = "200" *) 
  (* C_WRITE_DEPTH_B = "200" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19776)
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
