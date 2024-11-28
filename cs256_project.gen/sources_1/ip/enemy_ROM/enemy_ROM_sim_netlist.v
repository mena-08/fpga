// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Nov 27 10:00:29 2024
// Host        : rsws13.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/menao/Project_Test/fpga/cs256_project.gen/sources_1/ip/enemy_ROM/enemy_ROM_sim_netlist.v
// Design      : enemy_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "enemy_ROM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module enemy_ROM
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
  enemy_ROM_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19776)
`pragma protect data_block
cAbfDHZTPslGY3QOBjR/CtGi+xKy99lmMxK8Ha1wquTqHpv4H2A+ZT/fMDS+HAQIMh4RiJH4Psay
E7p6BE3pkX4xMqqJwSgpFcz5koK273vcKY1PYEW6lRfKBxLdMvRKNRm442hun5/NrqRuxBe0mpqc
I4OqGtocr9dLGYfWj/OpKPrNLLGELwNkz/g+NlYmrZ+/3m2kXLsT1e6B4XJYNpL0JHyNYZLWrnhV
M48yCPyUB322NyFOGKwLTugRXs9Fu6cu4T6gvpTszXGSi037SgbOWrmqqjmDeK2aeZCkJPsKojJR
SZnSAuIKPup4HgZujPSzWTRXlhoU0cxcHJkVji5nCdPtTSkHX5zgjNzKIPMxsY/Fn1dGYe7XA4k+
IVk093Zf96KURtHC0Nbdz9qyAbBa/dZ0JsgdCuAMMd+1LiaBUfbQ+mFxScoT+b94HemlJNYrz+Vd
GkpnxKdZVNLqULTDJ9IAFsnYJoqMMd+zH7H4RW2undgSkKuXji1m957epZAnsQO4H/jh1AYJ7eAb
Ro5CX/qEDLGuUci53XuI6PVEDzjDmWR4dNXYiHSAFpSb6o31tM5cMfl/o9bAbCu8MPF26ZzIAMlr
mDbkEVrodqNphMhn0Pw+V8UvaCeI+W7xeg29VTqDt79G9XTJeNz2XbenvWs90+7uuhPJCOErtLf6
O+/1wBLPnQNDFW6dTs6gDrx8ZypzxVAj9BOlFUm+kQBVC4oOF6gDo+T69bmON9PJ1aJljgUmQRtX
8pagqY6Pzj3I989lQE/besuyPM8Ar3dTB6Go3wtp4BgPVZ8NLIdOnYH4umk9ajeaITy8ZVGQq6/N
qKvb3s/XSffB9o7QmevgbHq1T+dJnFqp9CuF+aMEScNhV2QMI7CKsb4DCE6NK8IWo7Y1Pbri1crU
jEvB9nI8luCvCtZ9w093x+KnZ5UG1YP/i/SwrIj4g1kQ8Uaf4AfBBeSLz9hhsP+alDARM1iDez9Y
1VF/jsrpuCfvyacWhbJCciPojRzL9bEGBaMy+e6nbrSWLY806USQ8Y/eE7OzZzRr3GBqvGPjwyDq
tTyEySjwhbo5YG+Pl4ByUY50FVcAVeGP7+8QDVb72dRTWnzlN1Uz1WfETdZT85BLrkuyngxO2Rpd
6sZlDgePtGqIT+fF1gLaFiLCcXtwUgtHiMm2Ez4JfdZfDJL9NjjBSSympRmHEvCRbONl5FSVAMwS
DFbQ0Kk40j8JW12HeIIn8cKS+Yko668+0fBNn5Mhr6Cm+g6hoypyB4YXUjsd2MDY9vP97FJ8l9DE
p4OZt4vj81IHIInlAhNNw8Ch+JrYdkHdMTVzRaIW4a3xxRWCvkwgFngcYPEsI8xRYLCVMMOsUQyk
skIlLRm+usrNJrSHIbSJRLW3tXbhK8HEsz3EOufLUin5ZHK5bI+e3Vp6D1UfU1xi9M/GjgCpZik8
LDOqFLqxBTTXktfuPQGCczXhnZzdEbawA1aPLA1Js/UoiFO41s+GdLCWg9HjEsKcilWyXY+U7Rol
GroH/L9IZX/ZgXjX3zERnMg9OgCgm2BivdGtTj9xwEDe8MA4c3kqvg/oSS7AnTljO0p/vJyZiIJF
9TucWrFjp9AGLxwqGdjKVpkiPLCD12PVXxQEbjVqCU0MUjn0jaIqaUrRuT9lODSueGd/SGET8FNo
ChSX7FHT2NpIAD7AoVBA15h4ltFEsYxLm+9ODZUSWrdFsFTDfcZVNLVIhtHtCaLmuJsLghwphm46
B5dgLjtdNM2YZrVLnc8lE53El5ruPJI8jfkIN3q1eTaBK+5WUdAM7jeXqupZk4bBd52e1dPfpPFb
pqr0C7CDBfPvf4m7XR/+2fu8vhZrbcRFU+1LDgQB7ajCtnOcCunR/G0RTXe6fGmlpYfl4dluewzJ
nzR7+cNnJOi3yX+8ec0TJG5B30sAw4vKXIKBIoLLvvao30EhcQey9r939KgUB3ElpScAUhQeRTn2
Goxmq7SuZIuuyjsjAfs+Jd43QG3/Bi++3vuk6SmqPN+bJSdwApfBJuRTXf0b+vsLBCN/YGkYYDuS
bjB4/T54djDkoaTr7OsUMXqTXOP2njTRyp8kyGPUxY6bJX4zcerWTJCAbLDei7rKaXG9evaxysK+
vDZJBU0gOegidjaONtfBuLcfms7tooi9h+66k1yHtFQE2+gvthkFDaFHbpiPhZF9zrAzfWmqYveJ
VvAJKI8OLiV4b5R3FFi/OeN1kkEcIVZBziyt+Q1uN1KCyFUuqNJnSLqkbCHGysZj+Q0bHmxf7wc0
N9E184HrXICbWg1jSw+5vB1GA6sqF5qrP4ASQVRdLmjCIkXvzpaq2kZmICWq9Cow2cxppKC5rAwl
8dS6QRumufJcw4XGuoUDB+SJYn9N8hJwZ/QeTYAy/ZVqtoO5GRNAsI7tVUmCUxrOSq2Tr7a00+fm
xXh0z0EnL0lyMVaaPncDGaB9JfTcUs0NuazB6o3fH2LYmgChdNpcfOXEuRwsKX2ggaKnLoQHcGHs
IdhuTYkYLA1B3e89jFjLVFITsgpEJmC02cwvERsWrP7bVv88Oy08BIGVZ/xOQ1h4f+n+R/7bUvrI
Akeh7yiwt7DKiGAX0I289rcb6XxPyGLPHo9Acr2BeVdufaezycyBmq9+nEXtou30WrrT1CRMiIyA
ehxE8jPyIhyMtBP1E53EnWa13Ow9spfOn6N7QPp1cCpe1HzG9Zctlo0oisAlYzhjAXwElSoum4NF
x741B0El2W7Nvu/WznaF80H/TJR1xRrRu2e60i55wyrq8ArOQXhO+tUuq7jUsGSUGU2HNqcyQu4E
f96d3w6kPdhyyxF/OCml8QyaFjqWCPIw7eJgqBvd0laNzkGWgrg9Uhc/UwVDkqNfDeR/rPfknOa+
Y5CBsgYU0aQBOwEamPkQyVwIZEfHEqHKKcOY4cUBOAvVBqIznN12Iu+/JVBzKHREkUQCsa5ZU6UG
zGuPE5SeS8xo0vs+Se43Yi/o7Ft1lFQ8SdiEy+P95MGObhEYLg5YLhDH/GNVCBJG0IggLQQZchpu
3n1QlqjOprX3sgdatKUFgZYvNhDGOeio+yQkAINbTJHQps+gocTwHzzdI8RKcu960ZoR1lkx4wrx
zzgEUyDtluGbZWdT2fCdMtjWSMm4ht7spa0W9C1xqeGtMbTt5BoAT6IhGXKviGOMLoGIpkLmnFJd
rCGGRV98bjbBI1r+aBZ8iW5dHXun1MSSgix0NyLzrGdM2lRfQACGlznw7Xg6LIwOUMG/vkyzQAtq
fNF0WWeZdfsRmRtuhpTelYFvGM8BvBC8deW3ZJgk/HbBkLMFc0nuRgBeNShFresf+R0Zui11P3K+
0l8N6jCkRh2E0aZUBmH9ZpQ3pOdUrGtnfJ+I7BnZ6ZcMzqbt3MJpUcq+RCiYpgQB26FFyXgjSa79
Zl8YlldFIQKVQLfbGMYu0TaDYmWILROJkubm/ozejYR52e/I+H+jDtHJX8zjdQNlj52+xsFuT5eN
THvS0GzqNkonWWKEw8x8RZ0lqR8CiREFqPok+hwdEvlhvjAmpIh5l2SmZtZxBvIWRV0RmzZn/IJy
qGG2YfJ7WEoN1GUmoCxjpAG1Qw9A6hS0oKmlbujXoC+2M+h3TojzIJ/eQ3Q9WsZ6llWBnbCU5qYF
N0jCu7/hdTht+v7OjM4dHrRRAouulmaVfBj6dc0DWviQluclCfchq2ba7Zp7ni8b4oqVAX4ZsQ/w
Q3OX4kbqh2BDR6UREw060ZWqOqEpscChZLVIBIUYSgVrDO5Zo2v0Bl8sVmPX3c8iizYbJFeQm9Vx
CNdk4BZj20MvD38Sm/OiEk2COwJ9AtYxIayBOLXUHwB5wM0phD6FRUYMZZ0ztyNzUa49NhLQZZuV
27JXdu8sgDDBT4n9Q7dzuK1nSjc9AoBg6rjCMLsBJOmwcbgDdfgM6FNhbxb8MyaotyYxGx9q8/Dc
Blq5bHpGUkG1Ea1ARldAYzcgJiuwQz7f5OaX+1jr22lXQVlR8pKniyii1gW5rrvYmnK6+r+MBAd+
+Oc9BKq0enCcqoC9uIGoXpCFsk7ZhgWNYd6O8KN0LOOZQDATj+Z8rg3w0Dw7TShHMRMyZgLum2hZ
lFSmtbL39eCH/Ww0TcHI0QZUm3IiILRcFpCaAsh6anNrKSlwfmmF9HC9IYeEjvBlTejs2uhfQoeJ
AbCxJ0l6e4Fhnuduti+gVddJ7hAFE4oxLioVJI2th2e0+JuWAFGULXDxFLQNechhucUdNMtrmIgf
P/ZT42DwW9OIOr2Q4O4a/Cw+iCAWgsTqeVP1BXAznX72cEgCavaQvkLxJOAvkmwWozQUQS4AzImS
S1aBsBRnMRxmEMymKrUa8RZSii+hPm5MuguRKletCPZ+Q7IW4gPfbNAQYlyJj/WvUxZfu8gJY5W3
y0KR8DBAGAY79mMOdaQ/T0RfEljUaOq/gLG7U/fL59vQj/RGz96vPJHTmDTNaKfYadUrzeZw3yrm
GArvbg9gFYsr3HbSh19dhgHJhxVUpki3agkr4gjKfcYE5QhsywXNylkVbJGHmhtwauM9FsZTTzFd
smZCaLev968Jfx/Kja511hy8KPxgEucMLMNYuEwJgsnFvlUSdEEr8x/PCgC6HqQOwFo6OJ+ZdOih
Bi/662o2KX1P6TZmh4RNY19DcC9U46/wlNl3DxkMA/4bJV0YGhO+nB8nAQc1se1c4ih57fkWAeFn
vnyCBkCnICoW36wkT19sc/MkFNpZ6Z+5fB/b2A2NWfMd+Bek9FhpLl3uDc0TN7YfT5sZkfPd1HWf
SuKdt6yqnbTeIlfoXqWYw5ewOyM5ZiQAHaqs6/2aJZQRNgYI1J2FPPFhT98RiuLcN4jzeQBvs2C3
Ex3YkEl+Px12o6xUTiS/Tp2vGF96dPVo5UxTvn18Ws7ComcuFXtmRZcTLIc03AssYjmpPtauLUKX
/5HtWO3kVaXZcL616OvyfQ1Plw1R9EvdiqBSlZ8MX9xgYBNYqJbQ1mA7zEgFwKy6/jos4AFj8pT6
zpCa01e5YlKdiDrSoR7MsYcvPXdikxdcmaS+H7sAHUwA+A0nAYiM/qI4Bo5SCrUYrs98mLyT/H/C
GMAPJiZUXNyUO9F2Qizpz1tauBnjDU+KaOpaiXkQOHD1881UmkbCb6ecw0eKlO2xr/jl5kPiYGRF
i0pKpKTmP8SOR1uwrNShJu5+2LRvn7wtNCIvLIz0HXtUJj/CZHwctOWMXmesRpGfoqy49cdhfJ0w
RErMGQlbk2BSWBlMqcAfYrDcCqpCBeEY5TiW37TFvoAK7jS/MziFD/ObQErBIYBgbGQ2TgsVDmBv
k0XstxhVDNGZce7jAu2pFsZx6tJHqotw95AdaLKLIN+2B50Ie2S0R7MqYPjqFqiub9YmO5yAZvGU
rKVk38+DB05w2S+temkobxrdEEVS1AC2sGho/YiI7s+PdKZB55ZL7wXqmUWSioK12VBoa3k9lK7K
XewI6DveIS1P0bX74OFI9DkeZaTYbg9XxoynHoYpdiocOoWZXKW+vr4W/Z3cFIlXAMhPilZdzPBM
k8/KcMzbLTEuyLbZma5hqnQkrOyqkMfcoqu1uHYDxuVKnTZDCMu51eEP2xRUf0YiEihkrPfzdsjb
f+dK1eSqbSqiyQi41utO2/abA9OIrcEpqQ3CN0qqPA+ntjKNwsGy7u3vrtbKOySyZlQSdRadfNQ3
6RdTSEFHxJUmwZcbWM2nD2RbVajiAjl0FlNTs8y4dCJc6o6Ec5JqMBl8Tu+iWhnfl7Rylu3sgpzr
tqnQy3t0O04XDXB7GTcIn1A7Nj7Kli5Zs3Sh4l4LyA7xY6GqtUddb9XP2YvMTONIWrnLMwIqdNZ/
X0TPUG+ADYOTqIBPC0TARO1Y7GbmZT+9umA3PB5BINl/aZ3uDS9KEOE0/9T4PydpfSKpyktIUsEU
vXmXwr0tf+Vqd77+b65B3q0SxlZM5x53xslyJgItt0PtK1kuhwG+aD8juOm8Ypy8PYjbnD+KjpdD
a+RIHbZ/MVzaTGfzu4cUmhUcbjcd+fvaa5GfBhtC9bY4Z3SWioAIAknCeUZFViRNj4+Ci8TZYwzP
NvhSJVWZc3Kld1CFpWnV7Zw8xG9PNys/ZI4BR85U1Ydw6Rw95+gINSz+9Ks43hyvr6IFuQsPd509
8mkjOQT5HyXXgLx6LeGm1RqUGkJRJHgQvQWtbi/1k6XMLurdTHYL1b0WISYemh/xwnoEwEHS22no
gjamMt7zmbISJBYCtIVlUOOj9mU4KjIvRghU9nyxXqMwFibaHeK8VsReuL39Zd8Ma5ov+icj1Ugs
LTzeJ202y/O5rxd16xX6ctEqiao8ZMDrfjdyqMzTauemC4oPJoIce9fewlgX5rFk6KbpX5yJAWWw
6jE19XQoWvgIcbrexakBJWdxIwrtaEWqi6Zvv2D9udvzO+O/LefxXwZkIvtvoerBMZVPn6T6eVh+
ekzo9DuXipYQZBd0bz4NlgpnvmzFacUGkp5hGCKZgmhjTi/FkDUy0fhdb/YPo47EZYdrj4219YBP
Z9UZzlVPNuCxVNbZt4O7osrbClSNs5RhvMYPHgEGbcZdSd9gSe7DOPwqu3OIKZ+MOQSRjMuzRqpG
va8/tfThPx4KRWrEUY0FdLBkiDzQgd0IybtLOElca/A6GFhJlfzirRtYDD3Fe7htwzGCZ/8LMbr6
z1lVkvKMgJUS8siCPmUGOkTNISByitjfSDgWwSwfIev/l42pIUwthjetyA4xYztl5cfHhjviOXLx
Wlthb8hOoEg8HSgdip0FkojNxoWZ+9fmI5/VHa7B1CF5QIX59Pj/74jKw/Wa9dNaplebSwjSQUsx
f5FoOGG2v/kD2YlFgquEd/fcFvtLvxgN02tZSwby+LG4Pc+AhKzW1llEuw4Azd4yPG/ql1F8uJ+W
ckV47HeOYfFMVE+tl9m2zL52gzlQdd/TFoi+8V0M/su3eyKZPzdnmYchZWqYAGm8jr1MGKP3BeP2
+NxRLvWq2o9KPGMsKrRZw0yg6ArniX2w4eT7QfjqmMpRrdr7tTm4H5aVvrsxXkiFveYoLZttw8lW
meO2ee7xbxMNgKJkwBHexMi+GoitVo7kr2zSvrI2D5TCN/BtLyWqhkpOUvnnldPApOq92v9xutZw
x3gfhv1UqhOusQZNIKMP+bmDBH+KiXEwYvXRh28s9g7I+QzOYXBH1V/LPQLq/4f/0cbvOgz4MJHD
o2vT10tdwM55kWqRmCihtEzEUFpAVFzk0xrIPdISyGrt96RAUNHOO0NpngvTFo7N5HRxWdb/LXk2
qh4aMS+1R5vLUbtMYfXhp6UM4G5ouoKTqk2lh6tfFTQ47xpbSkBDjecxNDFkgwH02wtkbJv513xr
GAYGnb1FEUMEZZwsrsS/0lAskF5ziJLimizNia45YyGyCZmJAVeVfVgv1Oole/TdatqP5HJSSs4+
3RrVoZ70+AICW4NqH7NuMNwDv470AhhKZ4Ui4vIcet009lmLZLmHSm2j+cSrlK/ERmyZ6HS0pklu
sMLWmjIoLIYP8rb+70cdDyt0ekgSpau5CM2A83XlMdW8kub8ZXvq6NIP0xfJ2vFlXS6mz1UlQcB4
f5BLSQBJwM5Mbp0vneggyRWSt9Pn3u33ZF6yhH95fhtm/yFc0QNW/E9i8KpdxMnNOCppae6HZIek
Kr1RAC4Rfii1Yz+YBqwkcBprS3fe52F6y0+cE9E0q22YGBxTA6Ec3a5BsN5sER3+3WbYBz4d131i
rQJ9tJ/sqI8GwlBiXFtoqhiO28XiZHCPLLgDLYm4Th+U6Zmb8FKilvyjoUsQ6HSn7QomvrYYapln
2qkNFeoFdu7SFODH8eY6aJxyMyVs8OOb5XzsI7g4f4ACfic+2dFc6sHsZhoMBTDHY9Btq7ARPk7E
0S55iFV+Uc/3L+xghXzcPlqzXIRkm/7jpaS1Rn9BCn98JpzRJy8lw8EM9OA2quA/YYBe9cIFyxC6
F1nkvFbzUHnZX+ovMpjHexJR4O08FMLc0OX1r2XZOPI1nYsi2bLOte/TRZtbt9lontfSo6X1goP5
e9TkLo71UoZNbWNpo4JT8hzzrBUM9hC0gzPH3rwCppbXc2GS9HUBDbFmSUBHbD9Xr0Xb8LDVo0ac
Gq+dN84RDfOHpSxtl+YyfcMNU/f+tX28ymvXO/Xv32tzUkIibAaLGW26So7F2I5mZg3V3UCv3o6w
s56RfFjnLWPnVcLycrjK3fKN52Pnx3qGjbGk3s1guzxsBvp+5e6jdmtwHf1vMxPTM/C8NRMwTirQ
v1v3ZAURKHuNoJPUFvcW9A3DBRNm34EJ+/WfyNLUqaPGVlhf29dDcTXxyTQT6YJOFNzpoGLoAc6q
gDSNNEpqX81ClDUFI3qrbCH1F7fU5ITBATeYdLnn9dQ1b6W0hiwIgsGzXFEHmrLl5Uws8T4MpC7g
FhIXBo9CYL9pxzURqDqFXFbn4Dnzrzwr/31apjzI20HgfU5Oygpc2tExa4cQPlZWleJvxMp50rTK
InuPZMdC573NbxMB7TqOjGnSlapgkbA0K8mJt5gVZDcqeNQDHv0J/MBpMWsoroy6wWl91FDOpu8O
nMtXIjAOl4jU+yPSwrQ79k70cu2ODfdKiDqvQAmdPxWepSeO1uSQHGP/L93CnvOYgB8y3ERgIK4h
PfHQmxTCOR/FFoz0qw85RTh195rcYx8QvLzoRNtGPR5r6rVrDxD9n7kL2rmWHh8gJILMUbgs7wke
vCJRKo8dshnbePXlg1ZfwrISXCa+4Ec23nUZ4eGwiyL4AnZWPyo6SZz+Zc/81i6j+TgUy8RHrAYx
1Ekk9DaPqgG8DXeEqCFKSzRjsXVaNOUiPGKY9Il2wohHF9g8eHojMwO5bIBc8VrYQwuLMZF54ylY
cIXbHNSf0TsTEAgKJpo33BqcRyWJvQF7DbBXeLwOiWc9UuRek6KjhBE8lDT7Td8kxHwFn8vK3Wmy
mEZdgQVTHEk1zYWPGM+M1i9IWkziXv0uaD5OQGKII504IaIu8SrWzGgvo5uyTkd1unK+Hoe21aIx
ByAkrSJJYyfDYsinDY5hS//m+8TpwlNcq1BRL5IepCwHku+l6Pd0hnK74GNCcnieBCUoJ+JYqFmA
FUx8/qxouVAdZsy2gvO9lE3AOBo4rC0qzZoDk0d2E2Qh2cV9ljc9c5QWtnQGketCkpnK45Ufc2Cg
jNPG9CLS/SwHK8noSOJUkpKl8m6qIB0NjiBdDLQ+gaTgjLKh67bfvAvaMnTtRdbQEJ1MGBs4i/HN
UxWsvRNq5WJYsX2EIXJMsc6RkWvLNvKj6vwydaKhVYmHR7Sa5piNnUPnVMrV1ZZC7OOzoNoXMPLo
ZSp+ka+N0mj6AwkdB3470ZSOS/XDrGcGhn5olQCfMiIQ2El9lf41qMSRAzVN3oNwBrIExYWBTLfK
d0MWtFrC2aRPIcqxg0boFDbhuoDQQQJvigkZC+qYBjHpixADahPxNoc3PYjs0G8lZdauBywOASHP
DhPAP44+yeqBlXw9MzvKzp/TcO5phLTvYc3BV7+Cw/AxT2+S+TuNATqvur5v753BCvWSkvTt/Wuy
ARgjNW1xBqEPPlv8jnkamBk4ixbcsXzqUAmo/xHyTtW3sqNTLGe89SCpedXI94lD7Xvi3o5obkq5
20M246nLvvz1NzCnPaKFTWZvDKfGfE+jZ7JTmn6uMDopknZaLyKj/nW7T7hKO7QZ5TxP1WlXcCPi
RRN2Dday5v0TdyfZ2F0eLpJrV2X0DZP8CIslnuBMqmwjrcu3b/jAWiYV4g6zXDwDwHSf99oS3ZEA
+AQ+JPs8sIq5QJY8LXskBY7aMovkMRF4vKvUyvwPeS87Qfj7htsk+LE/sR8smfuqIlTauubkVK1y
Xa+vHkgWh06tdF9g4ZZlUq7rTlqnSQxLs4oe9au2tKgS3gFnb/WvpJbwSrGx73WI+fQaX4JchGwG
5a0Rg3wfr6ZogRd9O1ZHHf9D/67nYSls3WOBqXB6DMVxO2XGmWrmU5t7M6E5g+GMpm5vVvo8xvuF
oR0FrWGzOi0YNuLTXwkcLNT1rcMy3saMdyL8eK3G2Z+gx9igkpVZb+TuXUP27mOKNAp3B1rKOpwV
BRQmw7QiPGs5eEs5TVIVzv2GEz6W83Y88JF+Awl1jzXjIDJKv1YrjZRWygtZpnPLorme3nNtJiHg
KftedTBLrsjIiBATiEGYVTm4vsCFswhum9oIPW6lom98Io/ZhMRXiuFPEbw03VX7G9XoWuA/kB3r
t/+5TDxaMl5cAjr1Gh+EyJOFP94E90Lr5eVJzO+KrB/bQNF7+mRP/HpIu1D9J6RYbDf3jkStmC8/
11fxb9aR2IvbyyV9pq22Co92y+2s73PPkx0PSceHeXrVSGZS9jQqTgV9PeBZTk55SBXAAZG4E+Tk
v0pt4nN+qT4GFcrHb4gCttaTh7Ouf3ZBfliO9EAVT3yBlUDZI1fnX7N83/I5IyWk9hez0GwDEk4V
TICOZ8i6tYY1/HN82PrU0uwKNiY/xNHVxrFDcIZYNfISCqcehBCXsxjOtdrA4E1BwE4DxIztoIEX
jibYWLFWqLaZzR2i064voruHFbY/vpvU1ybeIzaa2v2PFE5osxvnu57SMMR0DkVaJ83V1v4UndS9
CKzKoMfauFtmSpicUob2CN75ceDmOV1adiiB77+dUspTQNPFzmJaNq/BE0yPe0/wPpSU13UwZ3eO
Ge2oWTBXMw718+WrsVQiVytEfV4Vlp4Xs7XCg44Fm0LLrEmjBfOT3eMSm+S+2SYGQk0pSLw/BI0W
bi66iZKiE7/AilFWu+l38RjMSpdKlOJwHjlZuXThexeHVrIu7Vb9ostdKFKx7ga9KMlSbkCuCUb7
DBawCJ6RcfO1p5xRSraxaUuH1yAjZLVQb4r8yaXDfzonvh+QUYOB7qctFVeJCn9WMWNIyBrQQdce
8BC1fvViD1sYXJnEg/+Nc3PCG8hqlf78kJ8J7Zlv8mAOMdrTgXh5yqn3Tj3XfjV4mHkGCsoMrB3C
hCVXRgPRZ1PGW036hfkhZZOFnKKGfEQwD2JLX7SrYg3DZRu9t7HtBanh2Q2U55Hd+F3entfDMfjT
ODoZY2/ByT8ZHoc/6JLpsx/HwH8wiRQY06/OJqnM6GMQwBACnRgRR4TvnOZkWEod23YDrEWBqOt2
mZ4hvA3RUydJ7CqRW8rmAoTJkb/2dX+Zy5lfevG2+q4qj51p9UAQUiflE0MTkKkjboCoPEmi6nrj
nTZYKMHrgHzwaHTsr/sxAzvc2xXat2XKaK57nLa6i6Kf5uL0BN9PmTnytL2Nb5BXpJ5kGadtKZua
AJaEZ4rJPZ6O9WRC3xhD88O3t0NHh9lDUlsENG8Q2oF/tQooHu4U0zgZ2wMPG0lWqQ0+TmsJZSzu
b6lx+9rg4n8LTIi4WEgqZ+3TfJtxng3+L1jS1FEkWkeAEUqOxBvwyqhZxJKNWYQTeoFRk/SoMXea
6Tr4JBRFNI9X1j5KY4LmdYVeSMWUm/hksIlIB6qLhXCWYIxHT9vyNx9zplPfPnajT0iZ+lZAfic2
NSwYot4BabHvedoaSZkfeJ6ymx0iSML0T7Izqn1fCV/IUsI3jmkREk6xSTNmjAlGiiMJ7fn/dQfc
fu7A849UdW7zhseJP0kQl2O+rxgvTqO3Ku+Ad4DbNLEqVC1bmu5zP6Oztx3WcNJNpAt3mFAv3t+p
N1e5HxbqhY8L7usfTbiI/n4rIkeHLkvVa9Ce/HnmyOXtvdbSjH5bW/xylpGWurgLRgqb5/MTuKjU
JnnR5RCbrV7bsKejGaW1IkUDFKcAbwuVTDV2UsZNoD2XjIO9EWRAFSlmF2dNHqZ/+ygqM032m5qj
C8Fv2TifDhBJgPGoPhtbkvL0YMlUT2AORJfbDNrRgubrDSaGAcudVnBBL654Fj46gBRZvKmxKMSV
CJOtqgL6BhaM8M0iMBtii6B5cmZEWDreQmetsVPmZwTusAO7cdLnyVMe6sGEiMzPqFptx8sfyJTD
fhlQLItAEVCvroknlChKr8KuoSfwSXuEbvz2UgIg2Yjh+rflasLeeQ1BVFEKptCYAgk37Fs+jtGK
tWu0KAr111IEyCdckhUBe2SI9YrmJkvj9jzfCfpSH1BhqsCDJ6lRDUWxNKaAFivH0PhssVrOogYn
Q6WQTzk5wmv7huk1pO8DQCit+FCVnhmweoUjU8c/nHWzf5R7dZ9JVgizCGz0fF37jCTw9aSrKcOm
enOS8gWYXS+1vy8gANwAMP4iIYIV9wmLA8CBD6gjBbl+skHKNrpRFKVtpk663wyIEkM3GHRVWvup
qOESOP/VpCJiSZpEDfS3BwqGj4pfMoli860zxXo9nuukvxqaJwu7hOhAj0C8Zg1N0YwduVmJwnb2
zlAw1kgoFjXBsbdAC5u/dncHUnPWa86oegNo4Px3x9leGZwiAX96EjVVKe2Zz+kOjVr8ggPW3H+N
V4W+O6DkOPQIbPVPWyl6hAFpiKMR1UDgz5Zpaandp1HtOYCmR+vz9yZVkjlgz2ce1kcHvjDaKci8
/2HmpaOP4zM9VG/+cxlr1x3mZGLoaNMbNBH3pY0pqbs5l1AxUWOMzx2ijQgFrhlOsGslsH9+BJS7
C8L5fl6wGh52psouX5hXXjUjTdNO2aQFjJVGY1qFUHmlGIh+C/gg4SIZD0TwSON2UE0MElb+CUG+
a9qaT8q4kkpojREd4ll4L+ledIZEzmQaWCRcr/Wg712D97Qa5teIVDeNjo6kV4GvyCB5NKxBdUgj
ma1FZJe1nac6YcFnm3MfnyWPIxw+r1YgoqKJ+szTB5u4oqJA6y1d3kr9ft0amRvow81+r0eqVEJS
N+EEemUjoC6/duCWdhGcH64P1BJ43Ab+Adv7tXIZ4AICs3lCECl6oibWOv0KhtMMruu8Zb0Tterc
2Upa329p1JWPHyELCuBAXzHtRcFyjhQKlUGnXc1F4fDHs4njLIYGU4cI7MAa/GpgfNLmUSpkZPlM
2nuDEc69vJ2ZFuK3PcP4SATpwFYomMj9HRY2doOuiUNyHSvDl9VWNujU8Mntyni76xaP8UID79ug
8Jjqvwnb/vD51H5sOckNUdac+iWVttXw52lg5KBVqtlX+EVfS1uQgR8yhaCZc5BUlxvf+8v8yMKR
wtdaSpuHSZBCxYq3L4QY20dGPJ2/tgkii48TPGLVaZyvwdt1556EkAhEk/rLNa8FjKxCAe8FpELh
6vHEbDKhA7IRca4g8qJFZQZs9/ZNigAsHadLNRYr7DpP7rEy0CfyurKk05oSDE3IlD/RZmDRQt7B
dbXUz2LBfGbUAbhT+yfc8Cb2qBSTpJ6m1CjuZn/zGlNl4MKSne4RfMkrPEGmPp+laCp+hI6hAHAH
UJAoK9Z3KliKdrLXDT26MgPAUJMa2PbdxzVXQdApb5kW8aUXcjTaXkzibj4glzuE8lYsJ+iQ4wtC
ns/W7uw0o25E7Q4LE7mL/siwWgcp+hJvUroCr3/aIXWVNdWR6OIoMAsDpv0AP5kESVzkEgZz8C+b
EGYQq8r8/PIDaKLTnepiv+SMXsTERhazwFqm/dbwZ6BHRuLXMFTTZAcliy44Ij1ugw1UnvXkYEGM
aoLFdfuy0183tvH+VaPr22NAYDFBzs8BtBqA0r3kiCnJHbbL/tF+6v7ZMfrmqrIWzrn60b+R39Jj
9X8FbVf9YeZVrrLRGbk1bpn15TNMR4UQnHdLYwkUvr511Inqr/bpDisFBrF6uETEca3GKjCVH95y
SVbggDfk30HzWhJJ/k3a5FqMuoeiGZSwYkkGBsjccb1OC/dKfZ6GOfqOlSlioyOVK2BUHWDDx/ox
e+q+qE1IIZ+VDg2XkyxQCTKdq8xnCTkO8rjBDMLpETtFjoWL4zjW8AuJHVmdFQ/KCVgto89a3yMu
qUCtDvhavS2iboj80X1fDgR4Sbgizm741O/b8E9UMWx2fDMr3TVQg3XdgYh5AYqh8KquHGiXJ1Yx
xukTd5UReU+3maBQknUaqBVg9mX1i2MaKCUy82V47OWK6agnG0zYtclnbZ861S/R+/0p434B4ZGz
7ZmKwobpdCan++9t7Y/D3e6kOqvOFG8+bFo1reV15yX2bFzDlykyhyhDQOlGMvUY9YMXT2hQp6Xw
EImbINcMFf93ZZDt/VR6lu4kqKsleORNa3+x1dXtG6h9Rj3pkK3dhL+YP4SFUAcNOweh/KJzsbKR
8d9l3f1c3ff0YoCCmw/ib6DO9yXnkBtoodO3uA2QI5fl4rMbsB75mztTX0ARrSElACG99/NvZpYB
KeU/fPpt/QVtWHAD0uWLx3KCfHHMHm1hJxyJdI3JpfRiEHjl+K0th6gBypFo3g2sS6zuy93evT9/
wF5EAdED4sKxrHpAIj9pTwTbnlalvsjitEmWKc3N/wRFwPB1vwyjm6nM7ekyYbk0tY1bqDU1Axpf
jQGoBIk7YuPuPyt14KzPOC60dJvp7NrOG4tk8/LwgG65GrVIh82oexGiwtpxba/rj+Qeadrg+ACh
xAnym6AMy1Al7zh1pP+UZBNcKLPbKnE1CV4eXwI42p4mv7zYeG2HOGM7Hb/5epk3cllQlLWUFJAa
0iGpPGc1yvifxZRF77tMr6pVWXKuTJujtCk+eN9JZY/DIEqUULAQ6NXxD34dYFbSnz6Y3np0hQCU
z3/06+jF5lsd/vNRs0zyGGiJXz77L7ALse9UoPoYCTYH46XEX7qDt70e3ZzeXBl/OxR3PiKwNioN
Accg0LLQYd3dbPswI+nJonm3zN6VC1Hcm0D9cn86HNtk3v2qbV0sMeEbd76ZLet7W44ySDU8RCXq
+bQIAnUUi8L5434oB51AXw/vtkQqP0VeNUCxM2ZrEqX6DVPx3rj3A77H/6jXnxH/J+13VmKRDcDb
2RivLWPimZaO9hgLjTIuzs4aJjxO0IWB/EMjYN4tsPVdzQr5Njf73UtLWlYzMFQldDUmI44Vy7+n
A0N49/wmZPk9h8bw8p6RQDjc5qKEdvbGoP+9B/FBKyWcrIRABQi8RsPoeMmxNxi3AjWsROyYGws3
8a9qCRP4b1Ng6W1jt1Xd4qqCwocN4/Adf8sQVTtX4zr9oBUyHaoSqOP3jgPjgVglYbhRjxhinHyc
k2/azkCLsnak5Fgjj5CD6COaKeYNv62VFVSz9AxNJQr1/yZcrU9pSIA/iFfb7GYQ6NNSE3zxp722
QGYCr82Jin6cjhgl5FFC8aV40Cueu7xrmrlFhnTckeDKsFT0KrUggGHQf66+Hgx3e5CnLQ/jxyC5
mAAiCOwg9e2wphAS7Ac9pDxR+TeLLCRyslt26ImspDEghMQWmpRPXVz1ABjCskEA+5d6kgWyGDYf
bBJqarAJZHHUVhU+zC+m2MySib8PlAlqMWl9m7xGAWGjwo0NM7gyN40PwPnHNAwcCfWoyZVKsZlK
uHzfcmpjyg0bGViXzlMjdHCEpfWWI96QDAMWW4D+0kwCvmPzyqLb3bXjPZwzdpFTPtTGZBu7Lsa0
L4uOq2fyQb3yak1WPprb1DsEiqByFWh9x+QkkPCEOphoc3lQAW5LQ+hwoalaW2wJ4CKQuHKlY3uW
V5UwMa1rW1cHpBQC4f96i6tLmAOvqO11BhNq61PN8bx8lf1X+b3Zw4Pi7snObbiMYIdkCm5jJT44
x36FcBXwDFNJfqpS2YGF2NPKtogwRVxzYuxtWSQ9BASQZCawHcNr0JXWAE/1OT7jX7ZdI+2YmXKy
9k8wDmxrXTr7/VwJaz5oxHV0o7G7Nj7Zoelcob8ZVOetJH30SZxAYGmBnodabexwqA42s0+JkL+Z
apGOXhkbIf3ePcn7DQiMvd93R+q6j+CjDfuuOF8rpswdpebHYQBrgLDIhml2HFIciMI9Bp15RMcd
CCrzHIkuuga7ELJBJR3FMrWDheq7NJGCuU3DRlRc7klrzTGjQ+sVw2aSZQfqwONQ3rEEDi+Q7gbz
xAxvnz9IBHGJJsUdHsW/j55SfFEyD4JCOOqdbkyaWkGog1RY+CTnMVAI5lfi7Sz5Gj8Hii8t0PTs
+6O/ohpQi5gaa11scIgWBjDb9KYiYV17DsLYfwvkJevjx7bIQIxW5EDNXZpt/orZXgL3D1TsVVMZ
+ZbQ3Wmm8bqB7AAYNSujoh6PCjqLz2tykmhskNjeesKHV+nU/8Rj7NNDUarcWXMbdyIGKd3OXMm2
+wbDL8uTbEndvfypnR6rj77EGiEewItyo4+jff/qx+vgfsxVYmFhhe9Uil5K3OS8Ntj9KKhjirvq
QlhZwpSSpl2WPd1UxBbc6j8dGJsN8iySyKdqo/xZtqSyViJ4vjPnN8vDo6qBxM192G+OFvaI87xD
LSzP3l1rn1I3TB8WxI5SlQuBfHDBZZBtuQ28/leiv1gkdsg74Ei1dZfHPmqEaG0a2/Q32x8yNPhS
TB+rTys+4z9S//ye/bzAvaeiijMTwCgbbSPrac8pLxP/q/WUffINQtykAnJJnhnY4KWDTe+mYPO2
zWnpGt8hZ6xOe8T7O2s9qweOwlhwbjnxFWBKmYagI+pp8GoKxpjPnRK9LI+s/gdir8scMcgY1eJm
msUMKMkncdWJYZVHqsrqDvHHDDzItZT8h3J4TAFUcTTjfBKQlrSA3m5K3XUdIX2ozMBzTmTN5v2o
8zNFSxkoN+oYfHJU/yfN5/M9CZ84craMFE51mSan0KtGUcf9lu/ZBtlUZoro/Hyzcw092uhUr2EN
ocir70CIAwUaocwi8oS6rvz6CqjoYJciY0Aixm8XKRfBOBTjs8iV1fGcLIE4BleIslhiV6ZNTMJi
4uoqRgnpGhhwyJY89bMjjT8JCOBuDtHI9M0LEGv/Jd+xO6wOQyMUjHND+yV9AwMDi4O87AYwQKFP
PmjSr5BPgg90HBhClYQELSoHea18IQhmDKiCVzvQXdMRosh6pW+r08USbSWIw6XKHE/beQsaTtr7
X5MzWZVsZVWKpT+ivbJFRQAjBQ+xXv6f00xdN2j/VLq88HdoynR/Zp1MzLnkgMOO6rv0Xt81/zsx
son3aDAGLvYUSo6hr6/nKT3UZuJYI57LbazRbyMRMAFuMIez+unit1wxERvuk2npA+9O7tzcKzXH
sQRgkSK6t5aBaw7rtrrYRFBOYVBsyKr5ju5bbMXbs80WwgQRAGnsw6c4ekUQ8AmyDAred8BqVc/w
mAkEaNM5T7EueLoXRw0n1tP9ltid3WFzgCnqZjBG0FvQhOPq1RzBcwMqdmHITb2u2XYp1mpgdlXY
6sNYSQL7ESCs/+0c/wDAg6JCeNKgakzPCq4DcwuETX5lAg93eXsJRvgKyBhdhfHtagA02GbCGQ2W
TF/dWLHpSjLSkUOqgrCh3cFa3hifBTjeWrUYJ0qoRQ9eOgEE5vfp3lx20C5UHNJDn8CZzlK+EdbU
hpvUwXbroBkYjcTKsQwPtqWCC1tVJenJtWSCBhZaR7VqduayrQC8J4Qk2VTLs2a34KVsLXKA3oZg
N2B+fLCYpQKwPgk8nqWBlmrlaI9Jhluo5teT5tObCRER1xoEv6a71Z9BbsF54z0E1r3O2XURZOZE
vegmVr3Jxoa1OHB7wQHhneo4eioACCHbSyNZeHyWvh2Iztc5bccIa3RRy/S9PvCYx7Xu7LpPeGUs
F5+f13effAUcJj6Z/DMlQgrHcy7lY7bqaLniVOHoVr+blc5lvMFkiDG31EF7Heik7u4Kz7uAIIcw
oalLULRHf8ZgQ00ywL3Die0qDX3nvkmLKVEtr662EAkGGcbG3cbHzrdEN2zPnbTRFIqwWLqhoSFW
Eh2t+VpfWGRYjFJ46mR9YLmNaA2pxR484vUzg9MK1D8gf+fOTwfCqykQFzf7CC+cOg01NBtoN1Nv
IRq7AkbYVoy8mQ90kIZJ9WSSPsshcq+YqFt9hrQhK5mXn7U+aa28mlyVMNFzmvwM2j/xnZ3YdjJN
qlpmXrZPYsfIACmvug5MiVmjPu1332H73Q3BRL+FyiLH3Y7lUWHxU2S08FL/KkqTZuIeJsbSw7rQ
bjhzvlq1p/j7eewqoXUALOij5IWar0gzTyYMV9xLGcBLiOcqHxcrAL9PezeyWF4Rv1dNw4IlKm71
Uvdthg7aub4H48glmYrS+/ZCq1JU5lkdq8R7c23IQ9qSCC8OQiSBEoP7tNv94ah3N/kMZWhIpUSC
02Yy0MwQDlEJDQbHre6591LuA2lr+D+475/VC14M+QXzfFbLsamGcvJlIGoWSwqPChQTrm+arjM3
SseV0h2RopVF/GLQG55Fdy54jqLGhyLitTi/OV+rXDpN4wIJnZvL0NqAPs2EXQaJfwfhiXELfZKT
JQ407Wlqy5+M8aqL/StbvV7heAxQTRHUQddDbkt/EYDytGeYgvPz9OSdQ9vyJF01m9+wT1Us2kEf
Ft95MPOBmPU3rwGwFsvL6Wu8uBO45vmothxry20HGoWt3/1uZMgpcdghXqFeWCiQ4dGwIR9KL89M
n66KU66M7ahcrkNoqGrOpH2BP0PM7baJs8RRL238w1fwHnBwiwdW+eMJEriidy6JcvJfjuJ4Jymy
BD6NiE203OVb0PRN+VahkTymioMj/wx3027M8i9ksBdbKXRbi6EpYbmnQSJ/ex3uHIK4jdnTpDoJ
G1WuOYCWFTtGoaARby/4tSR2MMHLCRYB6vjoYcCZsI3Yje0OhPg8aEKnT+h8ZkdgYrtzEevpBfJv
2fwf3R8UbQTTzVN0joAHXEEoQjKM6qCkYyEqzdrsKMVh5dncqdZANnMyKzP6y1Qz97sCRvlJP0ks
s4DDRjoFgpA61m246ay6Mmd2fooG6fr2WGymPHap8HGLHQuoV2KDeqv5p5GSZoE4K+YE/zFS1rDH
vbqc310NsZU5ZQgWr8zuRw9j2W/c9pLEDW1DZ0nYxXaN5IwENAuzuFEd1UtbBmOxZrAKxsujVwqP
AKNB22bDbxjV6vIhdCzAJ6h2ESYEUP//YbxKRGLZCaoG4tYxF7dG2UKWqvjJrW2D/Vf8kOVUfkQ4
eb2x55vicwX/HCDOs0FmpPDbRixJaNENwCP+Ym4B7l0Seb4OQpZk/C4yUlzVsjAAl79k55SsH6+6
qugr7P/ZPMy8Lig6qd3nmQnadxnb1Kho1Qxt7aUdVUas+8BFsCU6MG4Ofh0YfrNsjI7yGKSO7Fb2
SlSAeQBNQccfzfzRndQqOUWdbHXwNjVDKFffY17Ni052dMXwm0b+iy8CZmyH2CmOntyXERtnPuzl
l4uj+J2mDCNY7c4fz6DMPCA8sQxHltFlMrHJedA7luQy/SWeY2PBgJdaXWY+vfVRzziRa1iEGmID
eNGzFVbap4XUODXiCFx8yZtbQzUAYcsoEdBIR+ygJ/BnvDgQB6E6v/NAC+u+L7j7MBOYUMRacIjR
cbmCNMWKhWJ6q3wsMbGhsqSvQXZGBdLLzdiJSPIv/ACmKmJIG5n/f2Y9n53GamiBnF3h2Jyk26J/
BYJkbItAJGKmJrBXl16d9Ls9mOxTjVTByN3kFg5ciq+J2mg0BKdzGCwZ/eZzC+4td5rjwFbtaqWf
jojXDSqPFnkZN9suV8PyhuFx47BkTRu51+3zR4DLXzCQTLTaMnbnIN6m9BuT3LOypX+aHR/n2UvI
latjj3HK+13u+Mo8z9E+vG1dOa5xj/25N9YRY3xyS9UXJ6cLLoU5x5VH5BS/TaC6vNLLJuV3o6mg
+WjkB1kMA+eHhKUJLzVrS8wAsZP934nAvA+h7gHB+8FkwkKI0A8Vlcvo8mP9ej7AEZNPaAJzeIi6
QIdaHLfU+oAiDCS4BvszAuGXf1cDitHoVEpheQCCIo6WbGNTcToSCmdovg5lG56ro744Uq9yGAFQ
f7AzuTK0Z8JsZX8+gB7Ek945dKXaAC/ilZh88hr1UiqKPzha6P9v/TdUmc0iTPmgBYCnjJomtLUc
McSkqR3qpxdcrcSCqPm67Nm+qR6nCklPtu2j+ZHkj4ht4fdmA+Lc2Mh1eONM+BqTzYusNCVkU2Y6
cXTc3zxw3tCoqoxzNU9NqjEKReUVhl0x/fu3yUm8Auzknmp0dpGHGdOO3dILtS44tEoAAcCqObKD
FIlnL/spFqlYJyVZwY4wsPwDX/DlzqkpTnEQurLkJDU+NkZqVaiSGFP4Kgai/6/trStqyoofJ+CN
HRoYWgNw6zRD1SkCyyi8PH/THMhLAq5BAUrP/x3VJbwE2KMmWAyteOme6j+/hdNtXWc+dH3uOhXJ
hLwSWo9geXX7WWV1rutbWOP7q0dipCC2ltDZ5Js12RmFqt6XtlPSABfjSYsfgN7xFThoBCNTMi/T
Mj50b+Qeat6ZOHtwpNStjfstM8rui4MhXao/Td86igwr1qR0w2E03EWoD3ZMduSb5gFt3NnkiqPW
/aZHsBokcnI6PkZ4S56t3MnsJfpW5/4gPY/fkhoH5cd2NkaZtrf9LqxzqK37TfF/gZW6D6rpaeH7
/n6415sNKJfu8PAexRqV2Tf0cAQfw0sOEVSq+5QFvCuOOlrEjJ4ALH0DDRrK8FtYGZ/l7Qq+7wQ9
CPpC7dXs7QpnAmJVTZHKZFIJZ5xuaHNOS0aaWqsiz4dMr6zZnNA0s4jR4iMiLSi5YsIN+oDwH+i+
qLIPbxZe2ubDFNFw4MIxw8jNf+/CuHDncx0RV1NaFk/Zm1N736lB8SO97xuwH+xCsAuaF5EZLcp5
darWU30Dw+3nZJzyfg9/ZcPEqcjr2u5foA9QKJ8iQAzLsEZjm8xz6hQrYHDzC60avSvQzJzg7zBW
XyD3kTEXZr2PlREDiFtu0XgE7qjvDwWHQPlq339FJQCO2qZ6YltIN+jDvMpn/Q3SEqOSIM19zNOc
Ya5vz/EMQ4xo98lNEpmxvmHgnSJzdlwuadO47DRDmYhcSfKHEhX1F0TARkkjbOhknIwf2ifYFX42
4J9Vtq5dWbd+OcxmFtUyuY/AK0Vle+RDDCUoXE+uLCDays26O+YmR+JvzImEFpx4GXiDuunCdTNl
AH2Aa+YtvZLDH4cUiA71iseUobRZ72Bs/4GIGXUKR1ZXzKdI9T0aeo/6zrsdSPXAHW7FWGPnaPDX
rk4s48YuN8uD4vXU+Z4iI7jlzeij3iWlEb2JWtzl1geIq0DayJLRys0+bL5r450c2+XnbUZdHvFc
2CXqRfr4REfjWlh6+8Q5gUekAFXqRq6hNdQTvSUhiiDCQfrl/EybzgF3hC/Wk0oo3p0Ss7ZnVC8u
eYNDmoL83A1u29MDvEPbMUCzuoCfMCh7g8/jJJWNcpF0tFDaCE+EsaV6IEpIlWW5EqnLw7IE4ok3
oI9n8QApmXbThxzTlttbIluFF/FqHpr8ttLF5TRbATIaKFW0lAHGPgk/u7U6SxsaHhs3auV3LhS1
24K00jh8oglLOtKaRoJD3qgOhLCRRz96tVQOSxnN3umXGlN03kOgJz5T/FSUM7kXpg6mU5htZcHR
qmuvxMqGAibzAik9RDK3fi1cz7iKFKZpgUsYhQiwXkujDRWKGrhxxsCTCRYBmF8q9/GfyQahFNmz
57VT6uds2e+kE/tdaWUq2v7aiDgt8pqjdvEmCq3vtW25Vt8icu5NDePKA7UkeVgOP3MWh10cWamr
KCnGyWtIdbL9v3PBYfcPq0XBl1PJZ4ixbEZUmoB0fgKjGftBtmhnWd2bH+Teq35NtB7IWDQ5Pjx0
YvPtWTFdndYDGZk+oHHsyAN9uLYbm3dG0VMa4QKZSikOEeKmpGxMmmZOJm3UGc0n2mwsKm3gz5NV
azmDox/tjcTpBhA1LJsdNthhpOqpHmVUwmIJ1zoeovO2Ld0+rKRsea4hqjcIwzsYIlbpivbbMBvr
SwEOu7UyKvj6whUbvGnzH36NHU/7INPwgo2nBdxz36JS2OWz+sBupzEInfYthd/O8+abx775Xthn
t8gURTFc0miYyyKkR4nP2w4/BOGLT1+2QlFgrgFNZDj88U3WuEZOmVJxcwBUiJmHLFf9Nmxtedn3
iXRsKHLKK5hYZAznn0A6+EF02wNJIQpK4Nh9Yuaxf92nGZhJcJLh6gcY7LaiOwiw2ln12Z3QxgZG
gqrjm4USNrFj/7TzW2nvfkzXOuSVQFfnIZ554Av5VU3p+3MX3Xy4PHjk+EoKGMANCj5J3k3IxxYJ
VhpKG7jm8esJ6VWRfmFj8IX7SYtStKq0m35jMUcSi0VS60rHxLpPAxfAIqxasgxsIzf56no67/Iu
cFjgpld0YYT1gWGsEYpIn0Zjks48D3wEi+xIS3iUZ19FK4gUk8fMQpvPh9fsFl805Vac2D6qylJ+
9c8iK04wNtVkJ9U11Juc6jI33Xpk19wB+h9BKrQ6p0+CSt41hnt3lxRjVXs6LCx+luARkDhy6mfJ
oskvL7grQcHoYJyHumZzC+bAdEBZbY0GmH87l860GLYlekmaKZefUlu7XKhho7XHczWrSrGjUfkR
mRBNBu/6hMZyXoR8QkaUF99qoqTvqXlyqR9jBzKZVjb8SvXDJKB1Ac+LRwATR9BuxQagYK6SRvSu
QzHhh7pYgULb+72RcTv73oNNYXLU+BjYLGA52W8OjopXugM8bFNJeZDZOAzOtSEm1HdfuYK7xV+3
yyZi6DogxH6c8mRoQClgTi9goRZgLhwHLdxkPF9HLg8i/kEWKE3Wem/DEPdcbYWBhAVDDRF7MXHp
3yyoDv/2DczfcOf7L11yEtmFgpvlBfxrf7U4VCVoX6MWSu7ZB0eyOxO4q7RWnrrlPZMruh59/s5j
UepsXer7ut9keFSDg8Rc+kZ+L9PMnjUY/su/qZg09PE8RenYGbx9pak7CM10AW79s2V1VKi7kr1o
+Qb2L8+NJBSk8ZSf+5RrEw4ADLy8doTpGT0s1fH1ik76mZQwBNq0D8EzhE9XEFgF4WLv7EBcAsB2
piUz1xXd9exyPkUvHuKkkTPYDjzaOCSnNWdZXzqV2ehSi7wiQUzCKsrr+r0VpcpxsatBRgXcH9/c
hS0lrHrY3DNEN/oLY/2A9f0F6WmWdYu3ImRj9XI3h821uLnxrk8ujtl/b1HkMUO71QB1vudghsaw
QtlPK+H2fbzqPZvcCzhbwpPodttUiN7CE1FrAUeNaIMEqo/DfNke6wqNF+JvpQ8vOAleMQOhzWS3
oNGDilSsBQqubapSO/C4Qe2s8cPWQ1nYhBasjL6QiLxWDfJwb2RX6mTxogxwz/wMhUKK+OTRIrMP
BHXnrQWXLQ248MYlvw5ydf8l23yjkqZPsOumfyRYdYUCtN64v9Te2gbtDTlp6gkASc3Vv4AmVe60
lKbnKbNyo0rPq6L2d8mnBoeJ8EwwqZSi3M4eX74vMwNpTViTvfeTZ5Q3h0bmR3fDeADKTDfVIDd2
jFVb3mfyfYbm6muUSMrrPnZceEzKsRNy9PqwnnO9qGMeqFyO2FecVcluG/zCyr/ZzGj8FTOQNPRV
20L7l1gUuXE2Kkz0SFd2kgJ9f22bUoo0Y+02XBDSNNyXjak8HW7HfevDEWrwYa5h4hgod7gqg4tD
AuycbfdujpLRJiN0NhoW67LbVb8J8NRT3Dughdh/gZANUzT8j65waNVQ2jGoKCsAaX68/TtuZFo8
Zk67h7saqp9Mj54eQt3ZuPZ9WLCKsn3sftbTfa9OVT/1dOL3cAaY32KNjuk94w3Qzswoy/S46xmp
sCwOcWSMG0A6VAAULLvSF1IhveHTo0CGVCXFzre5AEWfVe2bz0pXmFtDUgVtT30Un4MtWvzjqxtq
hxXj01xbIHQC20F5M/C6sVFhJYoeHZKG9I2s16VwP6hfBbXJMiPVICIQ2XEA+lzCFaFzTjRKi6GP
cz/A74JJ25W6bis/BVy5z7j412wphuQMHJGZ0RFhL8hcuvgmSM/oS9cicQyh3Upk/H6pnbsekdDd
32vcs7rAp0dlGD+0OXg+8SGj1AjBgbvBYZ2KfJ6YzGGhjxJZivMBBw07PR4d3a4D9ZBhqqWRlYsb
4v2dSnPVw5YPJcXMtVzYVjazBioyaHnZtyfYHAhD3ROnWsuYvslFXSWmi7c+9AhLpGQz1wGg1Wfu
dYO7Lu15YZjlQR0HeyiUewKbkmH1l1EpGo/obIDIsip7L1IejfP8O1Oz6kaR4atJ67FTilWgmOO7
EFlfAE8Yt/dGns5bq8t4rWe8R36tX9zuMq2LBGJwLYwPBWkNiC22wkZ6/bHxPBw0dkO1xtQH1RGB
HM0bIKZSgh+EndpvGRhhSH94XEPdPLwhtgL99Dgk3t6ueg5loxP8kvJuP2fIsTFCOLAL4yr/3t/N
WriLDqI9gJhMvSjl3vqzPAjoXeiLQxCzCwTQ6RhcRJRKHoiCIxjqZUVERWyiR2A/XZYsWNDBT2qz
NHbf8CaVURUeazGOmqH9v3DohvZt7Y6bz/cnsnM/LhcNwnAd5dfep2wON0SKlVbBvyknhdbyW9fp
3hSuZJlmaGdo3JGhXlgUzqhvGytgm2fj6bLPvEvD4+ql+T1OsruI0g5ptLKsZ2W/AaNHoVD55zfw
8BFHmsWGtv1Jy3srL8fmgfspmAh9nLZQO0+KAb/qm/kOYTL+l68SAiivvqju/fXGnDAuSuzCw8pP
VHhB+r7q5Zfs6tNiY+wW8Jvnt+pJvs56O4pMQ/ZgzxDBlfXt+l2Hfp3YuiL8QY4UqtwIQ8CBioHx
lGE+Kdu/ol+mrgykUGO1xGKoRo9VSl0UbSaRPtLqKKbzioASdG6OYfi7JB71VthYdE8BkXpCKx6I
q7xkLsKPhX714phzd4KtHaS1dWd1ww31a4MIypMNP+nzTTEDBFvVAr8mAjxMkHtT0dhVbTvZM6R4
Zrm6WjY8D5Nm+p07ts1A3fb2nZlLJVxEOUCrm9ePWBKsTx3/xdea2VC0MR/dx1QM8PQebEeBCEBy
+hhercHsJH5bD0IlPtXY/xy8Iyz45kPi9IrclN7DvlNE0whacqIVSEwEEuRSvfrwfD3snuA7aRML
6aCHUytna0sGDGuNj1IkdabKymzc0Sh3E37zk7qvLO5MQwX6rq78rIGj40Lei/qyphmb90PdgDgt
H+5Dg24nJxMNnhn5OwmXZ+HyM+dyW9CP16kHiBO76wJukiMLp36s8rBgDrljSIar6NfJA1658gxE
IQf9+4a9b2rKweXiEsl2XB9icZUJZh95YlHERf0bE3gudXs6/UM3RFk3B+aRzIoxTSNnSJVlu5Pr
Qq0tw0YG2zWa3w4YM+Uo/QiN1fVetB0h0EX5hRXq+UwfCzYdqfdCLSDyKWI5oT1jzRaQnBwDvnmV
grW+cv7SJzJnofpUnI8AGNQJa9TqAgkeywod+/GUV1qE8GGLvwztzGOS6Rw+9LfNN5GLuR3/2jWF
u+AqA49Fg78AGsUAtFYQ2nq02qJUdnE4PB7YnMZ+CLQGEfXrdmUNu0XtrA0pC9IuMA+osJuKjxJx
67OObdLWSYSYUD2Iwohh5lREDL0u19rV89uUVxqBFvD/sdJTdCuWRxeZoN7O9F/BO9Bw78jBHtnW
bcVNEeBoWYO2I+C7YyjWPRsHKvk6p+xbvDyzlFMyr33RkhLklvup5vyWBTAn2BMec+IYIhw676kL
Z5MY1xpMvETZNQStn9fa49z3XxawEqSqhM0dSNgM6D4ur/JWPPdf8Z9rgPrtodoFnVbSN8ZLRG9K
/hxpFCMZyUmMNhgyC/EYZQHbeQUbGXeormy2v6ZgShS2KOeGcN3KuifjZiIprvC8tcw4FKPfqCti
Psmt2jb+nLQzdtm4umvKBNgZ4JvrOmG7C6U28D3b9itBUhL/aizFO8/rN8+eAyUZXnbre4gxDF8k
GO8ojmohctmelwi+qtyNZ+8Xm9Odj6OtL7r1c5fhY+4/IPDaibijgTaD6ewwOLqo/Jqa7k6jYuMQ
WXiIWqSknyusxvMJT2luSrJT6dSj8vSQNEcKJUoyE3Nls6BKN8Fx7jgUe+jElwP5/pvFpTaPEO0l
/HzIOkIJa9sAX4aYkcFsRM0fbwcw+3RINIb/oS2hw6uwp8v3QjOLaGTpANb2giNKB0DZzVoZwGt9
TvEog2/oti2NCbttHQrmuwQrDoxLW443hM1Bilm5ijgHSdUE7FO+O7JrAiIRN+2DL39AZcjN9xLH
2UUnHXNa1HFL38KdpiqozN56utFJdXFecIALQ0CxdUa53HEl3+TX5ufUv9dbO21pu5TfXsTopB8H
jV2cJQZw22sfn08EOGAW8OTBp/GH4HRfKHm2yUO3e0PCOHFXIK4/Mah23b/cvCO72wvWjY72HNao
2FsMAB1gLcBI7O24o2CSZPQQAYpFkmte7Y6zU0jZwWHy1U7ZYnkQ1mn9gWKnRdFXR+HibYzoWWBT
8JG1a6qdgeEdqGGFn3KJFPTDm5Z6HnFFs74b7iVO5n6TyORMsAay9s7T1gsQYUHJBYweQDVU
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
