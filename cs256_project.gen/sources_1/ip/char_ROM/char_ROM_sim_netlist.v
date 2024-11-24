// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Nov  6 18:09:54 2024
// Host        : rsws08.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/khogeesa/Desktop/cs256_project/fpga/cs256_project.gen/sources_1/ip/char_ROM/char_ROM_sim_netlist.v
// Design      : char_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_ROM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module char_ROM
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
  char_ROM_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18160)
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
