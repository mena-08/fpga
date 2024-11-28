// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Nov 27 10:00:28 2024
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [8:0]addra;
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
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
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
  (* C_READ_DEPTH_A = "384" *) 
  (* C_READ_DEPTH_B = "384" *) 
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
  (* C_WRITE_DEPTH_A = "384" *) 
  (* C_WRITE_DEPTH_B = "384" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19840)
`pragma protect data_block
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
mffNPA==
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
