// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Nov 13 12:30:36 2024
// Host        : rsws13.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/khogeesa/Desktop/cs256_project/fpga/cs256_project.gen/sources_1/ip/char_ROM_diag/char_ROM_diag_sim_netlist.v
// Design      : char_ROM_diag
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_ROM_diag,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module char_ROM_diag
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
  char_ROM_diag_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18224)
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
