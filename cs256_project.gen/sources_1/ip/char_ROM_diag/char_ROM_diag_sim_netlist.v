// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Nov 24 13:48:53 2024
// Host        : rsws13.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/menao/Project_Test/fpga/cs256_project.gen/sources_1/ip/char_ROM_diag/char_ROM_diag_sim_netlist.v
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
+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
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
