// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Nov 24 13:48:52 2024
// Host        : rsws13.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ char_ROM_diag_sim_netlist.v
// Design      : char_ROM_diag
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_ROM_diag,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  (* C_INIT_FILE = "char_ROM_diag.mem" *) 
  (* C_INIT_FILE_NAME = "char_ROM_diag.mif" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18256)
`pragma protect data_block
+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
mYpyB7rD/WVm4PQ3MxsBEg==
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
