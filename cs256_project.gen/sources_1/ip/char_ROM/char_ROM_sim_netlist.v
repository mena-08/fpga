// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Nov 24 13:48:59 2024
// Host        : rsws13.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/menao/Project_Test/fpga/cs256_project.gen/sources_1/ip/char_ROM/char_ROM_sim_netlist.v
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
