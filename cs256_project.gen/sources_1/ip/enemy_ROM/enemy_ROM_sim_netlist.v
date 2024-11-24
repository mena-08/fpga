// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Nov 19 14:09:59 2024
// Host        : rsws09.kaust.edu.sa running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/khogeesa/Desktop/cs256_project/fpga/cs256_project.gen/sources_1/ip/enemy_ROM/enemy_ROM_sim_netlist.v
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
  enemy_ROM_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19712)
`pragma protect data_block
CMdOa6M2eCecv4QHUyOdS6UWvUopGTzVKXbJHHgCz9GAlBEm8iHd9rsHjYgH1aHc29OTW8k/eZAb
jlsw9v2SDjrokAVc4UAnsw/oOOOz/iT6qSJFHKJjMtvAEEZKXhOTynr1HAyqkwYmO0IhFj7btRxP
NTaw3Mu+kyjJs7zhx3nTChiASjGmTgmsuN4+daeHJn0nVN3dAfK5xeRI7WhuWcV27glBIinQ61Ho
Rt6dO8E7j+Sbs0FpIIZzv8nhwop6S8LVPnYm1yk2rdbaoMb5WZBWN0WudiPWK6NM3aIanxbzX993
01BZZN14occVw9N8mKUNs25RNL68+WoMJj3XYkj0pUVPj04xuO7rUSxgF6v+yuGv2gn46ECEiBnP
/1cpx8d3Y0Zn85cPqwq2pG0G51qaByVFgsUmnGHDl21Y9uADheOmPglByhTp5dJBq0PKa+ogkalh
S/a2MJl9ND5bCnthZgznZapVvHnAWXdzYS2xWWEtnXJgLn5NKiEVmVzWR58N1Mpt7sUCFir07w/g
vQudLRHmGcmq02B7g4eQqR5cPh1Edf265fEAxIG136NQyYOe/bnUAuTRUJLoJYB2IM3+BQL/X9+E
qEyAq+juQG6Gi0eD/wK452j2Hrn1A+9BurJb+x6IHU857fNTnLTWX6vpMGhVy61ze8uR8gewNC08
Trb2mqwBk8eRVKWeg50PA67wXzA2d0ASSVLz1D4iUd3RfDU1nWv2HbKVtj1pDXbnWLbUgIobxffa
QfpgmYtM8MIByIhc8+JHyh4Pu6bc2q2J2G/lP9QIcaroEn3hPgvN30FqSL/BiTYYAITLFhXz4Uqz
HFANs6goVbvwp9cln5Lr1SHnqgdJ/eliiR2HTBt/DV31llmAMuabMWnNtA7J++bnBsd6JIIzc3Cx
Ga1x6aUAmv7jZo0jIW1eb+z+/VEo4cuQe/5GySAmJpYigFoUOA7See3OpT2QdCbt+c3lv6s9NWdl
BqilbOu8dZbOZSjO5qgq3PSexZ3BqojVqqQzyQ/ECqJ20EO2XKKpR69IK8M0ZDhnbDEBy5C5VrDK
jCS/pVIIxmm8ZJmIomeIz4eJKss78WdGEogsntODfuM8aVIrH0CnqnK96lQfp5hX7VZlm45QDIY/
6GexKgsUBBXz2pUnJ4cnbZS4aZ6/8lI31Iwy+BymdoDp+JlBcESaJIMkFqmIkr1dps09aoQ/2L0b
aWwGGKm+5IUHtULJ6J8YRzu1kXKx2wOKo+S5az68edozxTMopYUDom8buZP6GGntgnTCOfcIbIlj
CXO80mxYGLuctqTBvARbuZYcCyKyEI0dnSW1fSggJOl7VpOgBqMI1fMaiKfoJNJFD7LuO1ORcoC9
uc9OiOOOThnqvpvffDsmgnmWsUrhNKEIVHcuydblpujsbnvy7sCxPWLoFrGlmxWl8YGS/FFhvowx
0L8U/hNfbzV9lWGhFlw11Mp7XsuSHyh6U4Liddgxulzc+9nEMZWmFG0JDt89wHWU0ACfWJARCW1A
lvJYn/dut4icgSKcWl/j0hRdMykHVttDDdp5xFwhEkvujoYD4tINUxm5/y+j2Q4yoje9g8Q8TcXx
0EMA1hguezlD7IM3RM9Da6zGKyI519cNvt3f3/XPpbn14Xqwk/OoRo4pUJMTjTewSgH5osw8qH3I
wX3FPVMIF8Kdpw27CHO9oTCuuwiT75iYG80SfWjPnKgSsdatctMDub3O54ScUorvD3he05Aqs9+8
PHYRBu5E+ycKZG4mZGM68VJKKDE4rkcXdqet1Owdmgr4WieYXRSfEwNMBkK1UQPMAqiTV0EDOUw8
yQfRrGBu0k1MjHVocHk8Rv5kepWMdeF2UhNtn4tbQIretbjrusDn7gyyagyl7U235XhVCFwZ/WqW
h7pspL4QMXShX2P6ywp7Zbw6acdLiGxostg9FZp3g1D5Os8m5t8EUyWt/zf6fiULeS9cVpYygzBH
aZOeBgpuGjKDkIarWXzLCtjaSfYmvwfEZO1Ug1Qn1gSLQdvpz1arf7XcMt0BQUdXl2RunTwmzshu
1SP+xv6UqCRDg358y529S0QJxmAsEOkqoHqLqTxXYxTwxNrpNjrd6Bcy3FXX5TehDAibsmQlwcxG
SBSBazrEHooO6yoKDVvvHxEEP6ZzpyE+ix8Wd1jcAXOwy2tbHsTbzW2tkseLd3vS3t/IMU03GDMa
hc+RGqKqLd3UzrIlNy2Jj9FUGUGr3wPdnCO8KGou/ReAzERWIqxwfPeh+l2T8tNQXMu59siAW5lu
3VuB81/rYwnXstlnYwIzwhH9Q7OxPdOGaGmaXRXojEiZv9p9B4CrZab7XQlgGG9rdIfIfaGzZ0Zh
/k9ZH60GO+whslQ3HHNrgoRPVhtZVw2DX/3tQCWroS26GUENz4P7cqYOI1WgmDfJ1kC8lho3kCVp
K7NcHN8F9xV0F/vd2Kjj9HV6/9bIFSSG22njWRLRtk+F0S/BnS2Hw62IpDcaM4iu3gBrzied4Nqw
eWw/jIqY5KI1vXUBy4sa7kNG8xz7kgF2m5uRvz3AQqOOSQu30YLUXGa+1zwi+xqQpCC5VJIE45Ro
acbvC/DrIBtz9oXrPfujNWPIhzGFp3LtS6LtAQZUznZjmoyT0StHK8VHgTt2OxeyLrmpLWKSrryH
kuM6AT8BkSUMtCF3/yYsYVcxgXyxon4JDPnGPRddPM3aC3j+ILngPl+I96Jt8hQvUvwSuxx8xu1m
aghk8aXpq2whL27e60jQzk+J1OphMrQ8s0wnb9Helzw8j08VRxA1EZxVVXVfe7FeVVygLWFZbupL
E9lzEzGac2LJ/TqwzktHiVK5dtpI7vlJzZE1dDsPc577ZFGOw/LPocOm23kCeGrnxQUChKxqC99F
cquqyaiMWRrRVDreou0Ctdgn9NWVFZtCN+iWQqs8xL2dKBHHTQ7D5uYVmDo0GB8oR2aO2z/iucqc
51nSL7ZZx2ckAbbra901OzcVlKSsTEWrrhLJQqBNA0NQ6f6D55vLcTMg3decJoeBLWoJCJqq1hpd
Gzt2wcnz9F3VOfBOoKt3Itb/T/7dIqFAlH7xPNUqxqisQnKz3nXes9QT9GMcShHl76mwwH+M8QHo
uuNKsW8b1CG48EBhpXs5HKtYDQJXCMtCl3JWEqIsAXBMgmX7yaPbxPEvxRfRpQstwZqc31Itd+hr
4pnJx8egfBL0jfNi4alSrlWLopJ8ZLEdMMQ9Ov0k60Hle6muYCZt1ufCTK82AOky7IMqHmdVZufY
inXpaWKGCVPwhCaSvzTsR/LhPeOcr2cOLbZPrb4wogRR9WpmCk829ZlVGt0zK+rokJ2A5IfTBZls
met8DMbD5VsC8l4bisOjpMztQLwdBcPESW81fhCrDSkKtsc2lGEsVLMUvRNHhBz3VtIc5YiJv2j4
LjbnzcuSNLVL2/3uIQ6361HjvgmCnY+0yf/l4Iqil5zevgiR4a4uqAS9MIpLlQUqq6pSmgtZcaTy
Eui+mhhPz3sc4WNshwvkACedvuzkQjJA5iq52yTmeagj0WP8mn0VJQ4dX3SY3KDyA6ZK0E8dxCa/
qaiJ3FxkdGYGyIRQ/o80DSL1U2d+8PkfGBLO348EAxMn7Sbl1dbDBoEFu+MCa/5wCT6xvRX9JQlf
J0sGPA1o4uLU46Wm3atyzUj+z8W3ZRbRFqkKbA/XwJdn6F5vV5bO75TxOdXQrB7Mn+qViblT19gk
3JSX62AAtEkpnWQzpoQlwWyq/H+Z1RabBuAaP/nwlOpt34zaQuzVdDSUHGT0Z8ob8In653hUBH+e
7WCsvocQHopbMzqzNJOgFNhGIbQlfwtNHADCmg4NBR84lhTCWIMj/1q8KJFOQfkzfFBuspPo8f+D
D/FsUd9msLQ+iolwZWqKpjplqTvkK+gZwLhS4MHMjxHO0mO4/7wQcOms4pUQfvSgYxMbIPVNdz/X
ymH7G5ZJCxItwLgEi+3Jp5AEO0w86Z/XM/4YQKnDKo03XDPTFN+G6+bzxKeIIf0AajTsLjVfftBN
KkQjW6wXDVn9BbT9E4vZ4PNquCKA+QVMSKGpT5vsLOlbsR138/08cd/dSOuxeOe3SM4ZnhzCleNj
WhwZthstMlomfMQ5WcXg35piiUBgsBS9nzy1gwbyeTU6nSuGXpXqZiu+j5pVKEI7gzY7tTmIS9+e
AwOzof70MwbsRL26tDhVhrYkyCrCEm7GmnUk1axQ25u6dEDB+by8FgIYcP+VyPmOVqWYwrilVGsz
225wQZl3avNMjQ+P5dSHxyqhJ/ip4PAHdaHEqB3VgoQO14P8HTbgxZUhcPHn99M1MzHrmuTCQ5UJ
lhpILgi2T5jwEK9ZTbBW4zLJKK7NNTswelIzIAnatZbgPZvArEQ/Pz7U0bSrPjzdF0khKOO5oSGI
Vo2dCvtKSrNkZ3cXW9kX/kLBmOEIyXRvXsvBVGqtDcYsdtdS0BJw4qkrkC3QHfGlsmw2+lKlvBmr
CXNVkH2Ee32IN5NzcTXbzEp2lhMdf66+7Nh4zaVorUrxsiXiwfLZUzRyyjbHL9UVDvAQmtpStmD+
iLZMuuz4sHpBKVXVtFz+DFjgzwjcxQ3gUi4kNzJDvKY8rRP+Yr2DuRkOxoLqgheBmKsdBNMV1TUK
YePqkNCjOFqfEyTcMaHk3wZ08IqhAqHSyEbxWQlaS6GA1XBrcrYdtYwsX5gwnxqFQzxz+D1fO2hi
Ky+UXdD6XbFDfrxRGjI6p/PzwqIUUUgMpaMZMqPOc8ZLg/YaC+whk/PIJZgVv2PmcYZ0UEuFppCO
UFfk0mYd4X1GPtnjQgpwlAfKUNOJ6DLQSMc7ijRf+rpEuABK+liB9dslOPx1TSvFwSZcXdUj+cGM
D9N6aPX5Z8SLHBeYbT1Zg5A4f0Q0zufHxdCiZ8bUcqnSZWXBcbLdhUOLcotgFy0HPsSPhPaCRQQ/
GaR0eLvOKt6Ll1RIIYT6tY3WD0vkauo5PG8QZLVgFAxmG4wI6oFLhXURmq2aU1cddVVLMJ28ymyk
1YeNCvX9PlCGaFrXnWg5O05A09ohkKW8XaowkR88/8W7VUknI8n2JxCi56fVDhFpf1uhZYbkfoot
S0/y6PCzoO5GaMBPCp1h7m1shgwYmPfEHcOesvQncFXao41o6EPd5GsL6ucSt9300I1kIfTM7KNB
IYVvBklgohl8Co1/IS3zWQ7hfoc4Msv43v2HbbJpmBmMF/4KcHRX11N0Hq74SmsFr8fW4qPnhq2Y
wcfFlPjgIMgVd3dPNjT9R7kIm7wjzNuq0QMjjeETakFFhLd10ih1UvzPlbV1vsVip7WeoxeJWk0K
gOq5fAJFJBs/e7IzALd1JPyEMKGeym5gw/AIhkXQeXgre0DxTFrIw9sDQSTJeMpmUt4faatjSP76
zLy8zSAby9jewyHlGQBbYYGP4QM5m3FNvwC80ol5Cl7g0I/Tzuhr5KA3J+JZXYLxpF8tNFSUVGE7
QDxLgdp/nW+SBe1FTBsC61kqFuOKInG5rnCPp3R1EUX3sxJFnqCiednVVveiap98LlZNGfMQLzDl
zntkW1OTSpxqflK+3fKU8RY5ppgnz+GIdqoivO5KknImZEEsxt/I/ib//Ye6VWeMaOylH7fF58+x
mqQYKZIR1+8Tyui6SQajHiJ3kteSNCfgFcER7+OipuJ9MxHUokSFFrj+Ynv51zD9aMLAS2rnwK+p
6NVXH/9+EG50Xg4hfmVdnW46LrWsZbsbh+mPjjEP0VnpYcsI7nJEmMhidflwhSnRbIqXGx6vrzbc
e9PYW8XF/KAvFgG5RLQVPCCt/xTJwVhe+vFAYuU+xMU5rP8Q0tEtixKehaIJx2tyCbzF3ohnM05Y
5V/XpVTAjhb/4p4ODCZuBpYpR4tY1vy1ZgEwHessovtY/tgBmCqbqCsRTIsoOueHQeFX08NtNsp1
AH9vQ/Vi1lbns7dFnGAztS7q4YKD7ksW91g6lHwDJsvRQ+T6/k3bs+yqNmyQShVg2SZhopFM+/Tm
tZ968pOglivH0wyKUy4Mp4kmAfbcmLzRSOJKfPfrfM73SgFlqdERJrSKcIyVv1rk5lNwUO76S51Q
sSxSc8QKXgbn+ocknytQqjr05Bm4cOa+mLsMIFCvALrbiVVvpZoCARJGPbLrhPh4hfkGl6j+2SXI
pbzE7LYe7J1zZeqVpcS7wglF8OBmuQ8/vUWvYCXa4v4L1wF0r15atOgznhfnxuiKrP6iOOTDX/lB
K9YbDQ/eG4ScGQy3U7h8uMUNe7Ql7jKijKNkwssupEmLQz3s5LJGS8Z7iSbWfmnvEJA/sCPWLEJB
Cw59jGjOzwxwUbd9XsztmRAwZuYuHEoZYw2dsDS1oeGDIDlEduamCsJv9iQwYyhj9TcEhOEOydwX
TJmd15sElBMyeNnoIsqkKNmiQYaW6T+e1EceV/CjEAhoPy0dqf0gDRcaaJIt/giBkgkMq0b0/pG+
My0iiA7Fq/YAnafLXwXkH/GDjH6dqU/fy+jq0iqMQWC+WP4Iw7cMF8RrP85ymYjq72opio0pydcK
MywcrCKIjrmKCN/C84OuukhdzQstFSZ+/TQ0iPJ/8faWjniEydNr5R/XWe1Gg1pJUqnOED8PfPSz
khKZCR5uBlFZCmIfjCI0H+Yqdsd92NozB7UF7WGxwv/2mQxWYqYA52gowmpwm4GRf8VNCMc52w5X
nprl2GuT0SV+QB58DsYLSYvhu2I3tUWx96tZQskceVKfpIgp02DWEo0celQMCm7xxP/wuRxlLsOW
EsCF1V4NFlSJh+sYMqgeMPzQ2+3QNy7IIJWWgcH74DGmAnGGDZS3SdpQXfnxJpdlW5MhPaESt5op
0rsYXg0jC9UjPcbxr0V4WHYyvY18aBMHIE6E6+4k5QAdj1JvedVaMLR+ozh83Xylc/0caMRrVtSV
E8JuSdztsJKDeNHLg5ohp/owxsCPSpyTgBSBF7Kxf+GIiYcrj8f3Jz/bFRSCYDVja7+Txd8IeufB
vnIJlCbu3LbqrRbdYGOBN10VR+2w4/bP2MCdMvftz7NVZ0RxxoklRnJd5QkK85NwwVPRLy2C7Lai
ajCBA5nbCvy4n8bS+ZpUqVmPjA+f3HRRrThZDoD3vcPR1QpwzmkBYRqP6lmiTQdgI4Gn92TLssY6
3inYuu+iNGgnJKq+Z65tWkHhYAmmlY5dVWOhK/d94rIdiDZpJvP8c4qMKOnl7KNbYGTYOFGXhCmh
RsVNqQuwMsOd4KQlYdEHtSfeW3aHYaRZEVUPP2y4LnRCXNfi0YZFQQJMOnXs3x6V9ZRzysTFXHc2
xVbfEZDyK/7iI8a/Nfvuj0iuHJUP2MyixMG0IYPz/C6qMszaX0irtPRok/wjsUo7S03iuib/49r6
J1QVeSZHE6TXM85unl/N7jK9lpFfmwc6xLAyDdv8oPnOPF5+FAA4oSezjQIzNwwGGIriE6NHzKgc
efVLv7tKm7ND1uTg8SNcM790QQfJBZS9uAyVeXgD59hsB3znwbxb6+TRtAOCuRT4aOtjzPSOLVFd
9AaeMJ6KGnPfUrdbpgN4RnfkLvjwMRktnRqhN1rBcGYW3Z6QyZ3QF3r0bJ0kqGWJJ6XWKZqf01wp
OwpnIjQRIQSVjxqM12eI4wXiDUvnaOyS97G3bny5uraWfa3m1xSTzHgzVz0NhvkJJcFM7JS4qDyr
5flRN7vH4w1vM0cmtGNEKGc/Xizvrd3Y7G+76da2ZYRl2QcuusJDfDO+ly2EFQcYbntv1aUpZjGV
HyhaO6gTOwDMThFSeSG0o0T3b/E1N95JClKMMv0ZgTrog4Q4JJ+K6FFbT2dHUGd7kUm17C1zblua
EH0blxQgwbfYLczZc40rj9JQp7/IVk7av2ywO0NU57HBSQEEJpPMAS3PW+1xA8GrR+oCiaS6iUes
xpj5ssMn51mmza3k1HRWzOAyJKgD/hFPKcTzKHA5yqg7flVaGCRf6JXr4An1GmOVbEe1roSR43oN
MFKCLf8kxp0w3JZtwLBo6DbjAtDTlUgJ1X7YoWaMqF79JcA0XBbLzYpnCq6BIq7GLECHQI/Sp7KX
RX4+vc4Obi9pNlBxNwYtzYhMNv6I9EBm5SzwUeFG4xL6ZSx45Vf61WQk4FH8Eipc326tMz6ErJB/
xqICUxM5oyQzfrFRMqQNhsPU6O+OwVS6Nbnrd3Ihs4DnGs9R+D0ari6DSIVuIRhTmAZ6lQmq9B/n
bgz0nFOCgnDrmvM+F4zizJ9e6YIrbvAhEyzCU9sOviZHoloKsE4yTOcZ0cBk2Q/43dC7ZMWxn6c8
GJ1Rk8Ia6rUcMt7TUgkQl3mpI925WUIcUhJeRtJ7S4zXoug0PzG2tiLhmtfZVZNcqzz+U4wxaJsU
1ZTx59vY+wxxMMON8PU2GsFn7Av/pUSIUyM6BARVLEHa/1p7l8qc+riHjZFo75nZ3ZJBDkHz6CrO
EYDjs1LgDDuU6ATMXEnYw/o1GrEXV62U21LHVEamzkFToFFcmfAJMsbu8sfqQnmV2crrXa3SL7v0
XDVouDR4jGab907wg81fo72wLlfnXz6yqcxixtFjWtlVpDbvghlKym4DqX4+LWlUiJkv4g6Alzis
mhFXifXii+RlsOoYRu0neqJubboGUMGE2h/Zz7jqffiLYKYCs+Cp49dhwk35C/pRMou+NZh7cpl3
k501eTEDxCPQGDrd5ZSm2H1+v2e4zi/tAv+Xd7yvFc7KgJXZW5UQRKud2ROLRYrhWCaxQR8po8tI
Bk26CIH3LTMqkTVMAh6jGTDQNS5gXWK71KEpf/EORL208JHiA/I9zBf/MFE4yiI7zG+9E7orm1UA
XWPMjRKaYcey/iXHqoxIlGZ6LubOn7cnXgzqf6ahSEUY0lHxQb6q4cd1CupBZ0Xeo+Q5A35Hz2F1
XmkXIkKLwQDvWEm2TJzGhy1AEwvQRcyDvrt3TxsbDV6U6rmYak1UAJ0OGwPBD0mrrI/PHfJSgBVq
2AHxfg/PyyTtZnLm6tEB0jVaiEOohdp7VpzE8XpxUeq/dFY3GOKYrlFu/ah1/X46Hp5Llaw0tlZn
0aILjm5iOPbUkTTvAstTmZ6I7IIAhuXU0NTYqxNun6qeoK/qR5D5tCM2IhnGQFMKisI03qV2DBdr
E1t8wEBH+Grc0QRCw+qZNINCYfW9pMwl+wcEC153t9MkGKsImVBwS+3OmTLfeDoRI9IvoAKNmkqe
FSlVu14vw17IudLg0+qGgGmfFLoKqR5jNzoLyk5EcYeZ2xWC/DnjvAE6OhRqWWWDOAhiM696qbTy
3UvCIAFGk3ZlMVXAv0KBmlXV41jf5F85sIMICnRMOdCD1ZdYxnO5DogRWV47N3WaeiZGlXtcMR4N
g2anjo2Lp9tbWPxy6JkSSGNRiOVwp4E29n8ACT8KDnd/5q9Smx1oe8yLB/K45kdkNNn9/qsNBhui
DTM5M8GvEOM+hUm/Lilb7WNvSjs2pd0QOKx6z8vKr8G777oXKVdwoR1LzmfglWWxB/CMU2T/9/qX
BqZqeRYKIioVeX7t7HOQv+PIxd9qoKyVMoZYG49giBGY1jtUpEmN1J/iweiYM+EV0kVtDw5uOrz1
EuJGqZO+I8AELv6SwrxenH24Ruibca5x37UsM4z3piERpYR+KPl50hxCnwSQh3b7rWrkqO1mtsv/
s4ipUhD3cM8nAd6CDqxOA9DDnhgiEx2k7HTAuEFGfhZQbtdrD3u2fGSaMRDoyMUdzvx+7hE04jZH
ykb0UQo5psqHg271U0TBN3mzDvlm7xb2VFMiWu63HJCczbMOoogt7BwKU/v1TRkAWXAZkeQK92RB
HXDBQCra1efQ2oJqcdEz4VKm/i7jwuY2sQKGdRaBfCTsc+5zbMYJTv3eUVe/+D2zJSnQjOv1vhWO
PuoaXsHlU1DPNAI//mn37Araj1bXaoVf2uUyqtUH6CH8JAj1rm3eFxAXF06Xq9bloDlyDxF+/yIe
YPHQ5drbQVDp0FXLvSN5v+UNolxQKCvJHwa17N5rwUq8RsC3n6dw1Nx0zPBrriXwFxvVAoYNY/rp
tXbuXQfCS3zFXFBgRm0JgMtXC86U7bzI/8HMKWH/jmeBZigrNaOKCVjuL5VMDJRBWY7Iqy2mCJyB
vWU3lFHpWsiCvG4yr9iuENpbXxlD7WpgmU/xKEvJcKqT/rF0pyCHVpOD9hXARDkv48rpTr1mCJYZ
8qYjQtzXFF7ZXmvMDPyd4JvP5SCqt8H8mBPCyFb4R1npcnT3z8Ugusz21OtE1vydABotfnRDshZj
sFf2zSIAU5sO1gpmDkT3Krtg9AV09c8BNkVIBsc8q/cbqSYQmwBOrcqYWxyTL9WY1ON97D0BXKdy
Ajn0kx7HsquqbpI4jusoKr9FN5d8YvzMghUW9Zg5djuHh2V2SHmHn2yBeSXB86IZ3T3gMIgUtHxP
94tieOGfu2PuSTYBMNozQU0pHzu8qVu05OdxBvKK7dLjj1XgjAKbL9SphQCY/RtI3kLV744OyF+v
+g+K6gEIQ0SNMD8gQ1DxYSZuwT0haOY8MKKyUMQ3koxKSHwqbKdLpc1V5vDns0LPMUYKVjkN8G4I
y6CLLgi1v+gLIDkjn7RUA20HyUdz6i5JYZ4hp+rw/6zeXfrGoAXTmKmr04tNwe4bu6rdHUU3btTn
55ed9NqmYp4DlNs8qqb8oSQ/Oh0gh+pg0VkNUmijtOLl52Dy4wWT8n53z1fUClxdBCmuOYtHku6n
w2QI6qH7Ej9aLaOb0B2XDqF1CblbIpMBTagb7n6yewdrY4piehvTicXhCzBm4sN+iBTYPjhJtW9J
D9zhOQc2MN0VIQslKNfiXu83YDK41Hw/4l1piqHm0/W3MdiCMGh1qOAXscUwcHysofMgNdclsyUb
3wb+NeJz2JVOMpiEu8w9SOihSpcCPTFFR+Wpb6SB9aAsBrBPCOaX+yb8qgZiBDxMu7E2VakotgrY
MYoo2zd0RL/aDB0e/ORsOIAhHIpMeHPg/gdZKXWoKJgE6WI8xSqpMX+C+6ek0udeapkd5uclvwcT
VCIocWYPfqr+ZIOb6n3+WTraQmwp6317g2uW9A5wYFV4QKd9liaiDlTIjcCVwFMx/Bol70pS+KPn
Q+l2Ks+jyawV9++C/uEGsXZBvYlzbpiLJZf9TI35lzwB3Yh4A0K6W1mZlg+5TNBFiaqnlYZ8f5D1
9pZLjR5NBPNohju3E1hPav+neVS8YyuM4CyrLQLepqQI8Old9vqMtkAsr5lBfM1fkFT5zO9SKltu
ETAqLPj2OwRpXQ99GIJj6jA4HYbYNtwwXf39kEAHf6VfvasmsYN4dm3VptWEPTUrke/1+WSus+d0
ojfbK8Iw4Q3jpsj9JPtkncTm3oSS6Rq8Chhm1usEyaHyrjaspZVoDpOr3LQnRqRjljxoAa47eSF6
EIhKd9Xjukbs9EwtTXcEggbF8q5LZF9VO/ejsMWZ4JIg3ppu0XvdYlIgh4BF2dEvNBIt/oJvfIkA
boAkvDJOX2CyzUmMkJmFcNeM6z6WALsID38wvmvsLXdcfPmmUO2S9Fu1Bj7qgEktp0yJkSNWu6Fb
XwovopOei8vOJgQr0a0TS4R9Am289wy87ZgN4kT/JZjcClpSyG87BatgeeVz7xOZDwkmRSpcyqCB
3xOoOdVzWtVxQKF3GSIlvqdyszvty4/0hFSMZOSZs3I3VwNfDmeN4nC9XGAVIyA2FzmBkJQScp7c
vkHh/Ogfs7SF6qnNgYFWNFr3U+regY5HrZGoqsMy/O7O6vElWpdckMjk7YHUyk6ZdqAlqwE3cIRw
DLiWMY+Q8mAw/UNGSsTkWegegt1AC9RHfB2mz9rkRBIChDj4b0+oVJGyMuSmaQmxsaCev9RL1qvF
swGw1XoiiBwgGbDSQ1UvEDEtPeiT5UB6xYMhPNOH+beynhv8p8PXWjkxNsJv4yiSnUFxCf372L9T
Bu7/wz/hLe8gRn3zLNXwemLYYAELyhZv1DogufN7teEZxWouG6wNb40g0xOEWy45VY5a+92XLjD8
3VRjIzAwAw4i37l+yobB+o8jAWALDuEfAuFG8YVMU1UQrgkj35A0FRdFHQcnY1oCXshUgH1yFTw3
Tqc0JS0wQKrMCMGFxjCMM4XNTUInf/uE0bWzWQq6mA7GP2oGQu6On6fQWOSdgGPXPSGMgnBMNG+2
EofhUFr9ZQn1irDl+XFLAI7x5xqeY7zP9iJOVbeuPHuGpJg9DH5XppYlbfkQTJzN2FwGPitsu0Sh
s8FPfPp3YrjyuokH3X7tgJ0++UoLeCL5FBFmFVh9ubHdqsQMKpcgIj5ePNbYPrlYQhu8Kj1x9BFn
7XvvTFJ3JDVu/XRCKWwZ/J0kyjsn1OhXnDAuTykaXcXWIzr1+hfSjK2LZPjyas9bd0srekv26WuC
+wVinIFtb/tKegAhzWTU5odGU1icKIr8zS7rOCxamxo35WOQzSxRanLnb0/dYnAe6D0A3dqq4qd1
gVhOaXrD5KiINqC7Z0YfPGjK2Ma1T3KaeXmg7f9eYNZGx7Tm0h3XQfvpuFsazEaIlCDukGkVE0wc
UFapF5Tua2R9rHXRTBAB7CdcgIQyWiTuB24zmoLzHx+VAIWowJfUqLgpzPzD1qKbIVPYXBS4+ZI3
Wk6/iASXNgIZuCDswV3Q4Ug9OKn0mak8yxfK0kZgcjpNl+j0vllMNszErHBOj/5s0hX0DOCk8ztF
nhc4rYfOyv1v0rPAfU0Gkc9fe6Omn9/fo0fmuJx7mloJh18vKQh9BQHe94PL1QV1ELpRDtRYgMZo
49MkFQ86PChoAKo1gecpCv34trwwDXHee3mJjPA8HDXSp6OsGYrC9qMAX3NRCcVUQ8qdf6rLVqll
M12ji7xJTYvE9SzirTlInAPq1x5kFQJIKS27VvWhanFZ99BiqYDAVdVRkEsApR9wNWQWfQLVPbKI
qB2tyFobN+V23x4tzUq/3FxLQ1dCJxo3JZ7HPIQZaT9RRumjlfaTNy+IrrdS+GWnp+aGz6mMtwpT
ol2sPzgptlhTzyoUN5688lIThLi5wKnGABVkL1jMSughsLuEtlE6W6Mp+btke+P7IUTjnWDXp4cV
hpe4V3maB4w+ufjz4ge7JmwGo0GuVjREXdE/O/sI9xgr/18GHwEWHQESuvNekmxy7bLHj79kqxEL
y61U9Sg6ABbozgqx+OVUCAhQK3fxNlTieiVEUm+RGmsxps+h8te1ejweoFjYZbPCC9GmIMY1FPfF
4aKmfCNmEHBPBMQx1B7/E6boNgjWDGmd/6EVoZgjkl/tOdt0myLoa/3ms+GzVGEnRuJGj4MzPdBy
SPXVi23OBj26ibJpoApDIeJJc1lm9bSTqqZtk4gCoZa6puwJFvRCBfS9Cs7z/sKcSLmFFAtHF1bo
4qXmsqJ8HljPVtnqkmyWky4fyspA56LLZgofCABUiQ2onQaNqdUrjmlQ6H5Puw6UB0NTiOLuQpgZ
UNA3Zp3m6sMAu7DnIdsIQMTFRUL63U3VrV47JM7eMQ9PZmCWkVoBJlZD5ZMpgFhex0689JJfLFfh
Vjw/DLm9aIWGnAvyhaQpmXPu2hnzOjX7kwK2x/+ut6t8bxju5EQ8D+hEQxETvUZtn1nTgP1QHdAb
J9r6/4FswPVxihgXBdkdKKklUUg8IBMtFuHtdfkVAX1QJDX7HWkQmLHTNEjV/4ugUxv+oD/wENFd
RX+2TlqL+8H232fdTDzeU2EYMVaWPE921QWqm1zCs7syi5RX74YYdE7slvcSIdo4+6+f5D7s8Sq3
3aRYsg33OM3cH5q9oa8IaFYbMbsBL3oTj58E+Y4PGtl5ieeamzd+KHiBbtXhADRLMEan7mBrfYRy
hlEIvkAor3fH/RBGuJVLQkrfvFAuiVPQgCMJDRjlLqYklSyvc/gZg4hQ4D9xMwnAhpVGT5FGR0eU
o4UB5klOotCBBMZbd90GIhxvd9FzqrLNfbmeMKdgtyqtDaQar9qy2XQK2q8TpbkeyOgq2wGWG5ND
R2wDCwyOUu7hQGwWecfPg6drHhuGtsmgB6cLJkN0xqwFlylFCZBQJk0g+JjzReaplckHQwTaghWN
8tUjtL1lOWeCnhdg5aM8xPGHDzF0ThZfN7y1MwFxm3aUWpaGacGwX2OX5tXxPwpXn9itz0I5o5D/
lp6M+GDeBnyxlepiEh3CAfPBJ7eS7U6YCpYiofUGLpz11GOXycdrAKeDGj5hIAHu1eGa911GWSSV
aLo8biaWbisipSjm6j7GSM4lOSCHVOTEH9YEPaQKJHO8/kIhYBgXSdy4qbqbu5OZ8ghFLD17zvp6
1ugC1FjwZAGumLzajtTc6OknfvQcaAaI6oyN33qbqn5XnWUPUqpIM+m0E3Lvt6UcZiaUnh7+Z99y
ZaYEd704xXj+koi0EJkXbT3UFxiL47iSXI6FxUYRKIeTxld/VDwIYUh98GOPDj2JmrjxNBpwyVg3
1zrC9D/DoeVL5G3JMr4x/oFlbXhe+43UN0dja+DylQNxjGM3BYnTlx0ZbihkdQNfSY1dyUPRyJnY
5xMpM0IKDV5B67KFp3vN4ghbBZuuV7SwQxr0UmivuPgdSzv32lmt7eZkTE4jd2fFIXoiBADr+IN3
aSEV44n0uhgNc26V36sO5I/pL5X4Wuy8L0sGJUCIOKYH4nDRfmf055fsgbvHn7qW1sFGaMuxzsaV
TY2XxrTUHeJFLwOvNaV3z0jS6OwPviGKf4H2pKOuAW+rcK9GW0cAh3cUgNp8T42CB6AVIAEOrjVc
Fy1dS5BCfAW2BVHW36lr2FbswMELB1e4+GSdCwBfLzwdNGAfhxg2Kk/l8y/SytPA3nJZ4Hem2hU8
TB9G6ECJQ+rUumGO0P79n6Ko/x3RT/baBfF5452NWEBeo+S5d8Rv3jVXXi6Qio15Nf3nHxODxIFM
fOeCgyKn68fmEGTYp81UfH8BX1mNyrD49WaRgmUd3eS+g+xAPhR/nyi/ly+y6KzM0mvjn/sdHF+L
YVyd6Ct+oNMwhzga+OboQBPX35WpcIUfy6zXxa/icBigJG/m0hGQvEkfhvlfXtG1gRCn9HMM0yQO
jAV0bBY+CY6oCffMgvCZeJRnKo8E2vEnMLT7rjSizotdUZuHpYNTxfGrdOwRGI3obW7VIGc332K2
N9kO5JSsUBw8FgMpFwYrUxxq7HU0ct8jAlXQTMfPYhal6WaXVXSgl/BiQof69/HLKSHBsHCD5Atd
ogGcc8ke/JwgOkvnEv59Y51rk40chdmAmzYgh7qj8GRpLRnpCZl8i9R4R5xQwqhkIyi1Wyb0Ng2G
3MFWM051a0kAoFeFlBvjlZCU0ku+Q5fTmLGhcf5LBL0SVb/vqnV52apcEHWExULh6idU0tmNy4PX
VBpafzwOkDaZ/tpyG8+o4VITjEZ8DAau7F9KgYSYs7OuzXooqGhU2fpWYmQOmfyKRC5VoWH/Bcwq
yyIpjsWK1Sg7pmLRroTFrGDKShOf+FcIrsEv/vwEvYmdUWU9SuUdxPek0e49PtVdvaXEJhIu14SN
C9qB83Bvb304QybNC49+ojv6z6OiFIVy8/xJXRoRpkjDqhwQNk7diDK9mPiLXHdkANU1YdVryDyi
CW2mHmL3X3N32iNUISvKw6YjCOFX9PS+XKCJ6/BRXcse9kfe/DCRHaKe8x9m8O7Rq9yT2hmAoy/e
oox8DL9QzPBJ4K+nanpeLj0VR3k1qXKpsWUcRwhJvGx1udBAswBUkyc420SByGg0Mbm0dmHEbj9/
cfS0BJmVPjM+ssGSkLTgLXkE0NHb4CptWrg4WpDPpMI9HPCrcyP+FCQX4DjedSghC14Sac7DBLUT
PF0rBGhzDQHqyIl5eJ0guXIWm7WNBnMeZEGetHtRPmQuai/Kl4FA1OP/T0XcJmgm//3sCHsna+9h
KUhblK7xvz1O25kYJqA3XE+q5RIM2G4rI/Ayb7d3+/4tgCLB+HuozGbKrefW+hO+l7L+iRpL05Wb
J3OG7ppDKdenKkpPnUnOsY8S13ZACtkVsO9DLbqJGQP6fRh/9zkrWNVuq6wbkdvIegKyGzMNheR2
fO2VkTyD5Nze64fP3VPlD7iHsd6STZP1Zw/ZFDpqrMBvRGRlnd9vxfpIYa7n+BhsBNBZcHqsSTNP
jklNmWUMHdfMrxtiVlVy161UZz4lU29HVucPuOT0V4MVivJG6D9DAAR5/qMWX6BVxsc0YaZYZGa4
bEO42+nSX80P6nlxcAzmsn65XC/gOv4+IWSk7o7HEPF14kfIn1juOZrxYXkvphDPBxM1PkETtQND
Yx+qaJWVvJYC33I9ezUiqEB08LjFqX3e7l/yhAeo4gdHpcksj2eb+s4mN7az1GW7z9X0bJ0U/7Y1
EpVIitstx+nVaMXCA12cSWKWD5kGhhiyvg4k+g6chXqM2ZnBe9Cd9o3mmq0ORKy0jM5CVSbs5W6W
jKlloM0mHNokqLq1LmVDADMOKW4v+Pa/tKu6ep3+9F+gPbbDl6FpW8W7+aF+o38+X8CeYB/qsUyU
KwPN+PoekDsopBLPTKPK/kk7kAWO64ZXQ0A0TO5wkP7vnMDAhyJMLqU83QHfBab1kmV0eTLObFnz
E8SJq9Talu/bRadb0vZk7pBiF+zCgbT240m3Svpxm/smk259ikDIdPt5t0HPhegKxQn3t/EnCajA
wM4arEpXfwsyprilXjGt+AkEaTpNR8+TFhu4MnM4EkASef3we1ZCQ9W6NP3p7K9eYbtV7Zwt2DmG
Rsr4JIGd6UKi1GBogIa1w499bWytzkMveyH6oAIXTs2k5eVU/VTgzZDw37fELtJJlyJ6zfEqI+LD
7KQAZ8+/UVLh4ty1+G/LBDs9yVnVHOGnl8bKdncdIkOAzQapeLA0fqL7C5GNx7PyfKsgLWcXSzua
/pjAJPhXV+hhMQb/MJF8GlOFp3eNcpl2YnsbcWleykDUrmjFRe22W4zvoLX7kaH+FgopDW7Netkb
qaCADfVTlUg2QzuQLsa1np6cqhnQYJuMj+FjTvpb+a4oGtawPqgBdpuX0MnQgGlICBKVeRPvECAl
aMKTkY67zxiR/W3gnHY5wxzLZs5NEAaUgmVAk6lz3cXn0a19RmzltIxtmKImzledFiNjiTMAB6dF
lvEMMc3bmZ80YWPQV3CryCA07yOlLWpKN1rw0vDwP9y59NbxwjnNOv2tDfOEGJ9x/wXdRrcbBCjF
oGlzvsf7VHxwxsXu7TU21onvBXeSWY9lxow+KFk0ks2pN+ARPB0/XAETEhfqGjuHcRA0Gm0oj2A0
uAaoxs9RIqYwSSSAjXsNgo3YxRXrh62+cUtLOxc5v/18IvyePLHm4D6ImeuGMOCIHmnpifS8ovd2
fYuoWFEMn3iR2vTRaZR0QPP0IqfdlsSaqoyo0skJPZMgHD2Nxkb6S1LnO12dgDO64Xzka/CSP5Pr
krYjcfSPmpXHGJVgnc5TVscN4Xq9js0WQ0FaxGbjunOdXr6R8Of80tyqx3zwS9/DCxF9I1AHlN0X
+HwDvOA7WLNHhY0P2LXrcV6QChTpCoW5H7nLk7g7g60UK2lMuYUowM5rB8qlV+6Z1rvYm9sbSx6U
hQYnhz7qU31J6Ebv/5mhE0JuuHhZj5o2s756blSQpfhFRoovLZdvOQPC2z05CX2FHANhz2GFLPL6
Yd7MVOwN0WhhlWal0/R0hQ4KSnMcbsdNAazjuY9/bxIFY5h0N0NzSQKxljoEtQJXOXjS0BVQU6H2
g/x888ppf5Rn9/2tzUBOpTYd/Tt68CmOYREsk6OTPGbITvr+vd5ixPHGBs4auGx5l4eWT1cUJdOu
3XGwHIsKoWgMN4W0Olob37jdjM0sVWypkY3OKTs/x6b97evcWJqJKkwgu0hfRXWJzlOhKr8c1UkK
1uWI6bZh9ZYFRy0cVHPg2S9k9FStQEoA8So+0UVkIrfC2Wl6ERSZPT0DR/BQ7y7cWprujxFnGo9Z
NGRHpqibMSWTdEfvLkPymgjb0eJ7WYuB2ZUvc/N91gFf2yh4xW5bGr1BeJVLsGXsAlVJ5WV08d4q
B63FeHiWQdJkZuUa3LNip+XevcTRhZkGtIShbzrk/5MHYjufg+KmXCJSOH4Q7O0k+gQXr1t1vNP5
zSLVGNecabeSKA3Blu78CObFSJOVxqLYa1Pb6P/gUXS1ST7zNdbv0v6SUAzhU/F5YhWs6BQW0YLo
Pnv8bIw4Ig8s2E0aEwbjdDDUBgT6nbaFeGcp9rmNw3njaT3wCgROHPGkUa07KGGY/04rC7+50uQ5
PJD83jAwQArcf/2vrAfmRfbzJhGN8lflBSail1eOE7Pr5SZqOoTrlN5pqWwRhji04mV9bY+r2BVo
cK86MLnAlJOZBudI4IFPUVE7Fu3gat1juF6rFlNMgULI/pz1i2KMEe8xw6G0f+NRWcsm/B655JgX
SKd5qQ0lkcsOR/wosjMJNMHuJQ59uctDABKNxKJsu6lhxmn0Tw09qq1Cwm2yEi3FhjPk+bpKYrPF
dbBMRUA5I5Odiao7RN2UsTmnrWWQyrs3DrcBPGWb4Iots15uThYNoQZSTAxOzaB3MVy3/hBATAPe
wNCebSVhiBRIE/BcM9tHKVCUWJUqjPLWKg4FOFH4dMNwS/6s+KMsqJ4QE92smMzOwzZdWqC8TYTK
riDoGr3KHfS8mLCQ1Gvpd7uWxguXK2aBp/4ghNGzou7jmuT9Lm3RTnrqb7euTa0GBpk5w0p/PZLO
u1sdW8csGUTB5mrSpBaoT5tfD/wML0CsD7c4Ij86Lkj6ubuRpDab6mcNdyMKDJAdmCYICsMja4dX
gdhALM+nzyXZDusVLYsMt/nHRTinf3lftDHIPQRJuY6rxnvf1HPJRxHPqQrGkFv4NWU5SQGPJ/mn
8+fXGlAGQKER7cUV4i2My6hNHXNXoV9yAbbjJwnlGv2OfQbIBlQSwhByYFFE3ET3ea4X1cWrABc5
Jx1x8FEzaogsef2pUUDJ9SZbpNlgwqXCD2Alk4ZpQNkVTL2PwzQhCd/Yue31inw6s2IlwGgOV6+3
YxDGbRKrmfB2i/E7YpeKHHziYKvm5qA4bQzKQvzKPj3/4t9J9sEVRv+WCAZcFGgrmZNWLWJcjoty
uuvbU7q9NnGzEt3VC2rHFOkfxZ1pzPmL6N2o+k7Rb96XyJARdsCx5QS6gg3RQqZt1YovAUS70Oou
f74jP/XWic18+H2UoKNEXXy6Op2bkT869CDpyC61cPb2Q5jENpyXYWt3qkcAwuQjvFbnXWMVFvTw
o1yMvkECdCmrtPZEKIyzytqNH+9z7T6iPN6kMkwVS2i2Wrpn6L+3TdS0A+zYb5yvcm5D7KLlQ27J
fA1SIj5+Sn3C+ItN755j7Pb3lJRLU3D110Cx124AZ2Dox8lsSbk4cwsOYUeaj4hRd/7mQ150y2lt
UMzx+opzsSDmTAda63qunlsp7vnzXmfs96/Ugcr+fKJUDEZS2o7bhW4sxW4Oq0n+0vkF1dAO1xkc
zbZ+S4FHyb9i6YezhHZN7JPfmreUDReqvNtuX2sAH30oqPG25RWpLadeTB3MNpFHdEYCdBX4MttC
txs8l0rk3P8klGElcr8svH//5PZQb1RmGrRjxD0VvWW+IqxDDAo4tcflZW0ulw9sNziS6p6fX9RR
2HRp4CN0OspsPb+AYaM35EZJ8534yfgNllM1kzvuxYbTT0y5oWM0JkjKPCZW+UjyHju32SfuLpnM
oGz80rXUEqpozFAqDQAyKKVApmG9b4agnIwqBW4l+FpcWTvZwcml2aLldGqu011kzXL70sYcypRT
1PSC+QhK3AStYkxER+1DVNTDLLcEtrBXVziuH//a2QbeYKFRMSAzNwdO6NiZEFK1aw+IxImx7Kl5
wczlVbfID9lHV12D8pogeao5YkJsg7uzPuqzE0ub2VSMg87D4PJwzYqOTtymvVMmsbGGh9Q4qe+o
9faCQq6xQ18/MCLqS6SiBUo+h0v/hIeoZ9g70PQnogtd/XX1DmQLslp0EbSRRqJa/YL2wphk5Jsu
mHUZmznV+TuLPPj6rsxlNnKx6lk3imrY6DNBdTQJbLciinyrqMJeU3UZpbgpFSvxQvTH3/mT0idA
FtCnQuYvW5fI3F6ova/N3jseL6gW2dyQ0DrMV1K0gzxc70pcEzLPpscBKNBDSL5fIxKHERF05Bbr
IJH4IfCEcu4Uetwae97LlpfmoKHfRtWO4I/VOSx6ZhNJY0KAxzf0cY1Hs7gBkb4+lovxEEWESBSZ
N1A/Qb425b3V+7opoQ+nss8aM53Uee3q+3k98eiDbV2mcF8jjPx92oP92eizecM04i3ua3e9/g6x
fJEQrpErstVtIWVcBIqJ1ScAix9+A1w7rx0EdXo/CIDGb0aMM+9ejJ1Uy9C7wK04uyTOW+ja5hBZ
zbe3eVS5O1H3TODMwobl2PvKMFTRV2EfSNcCC8I+8Djqup9M93Z2y0V9s43e51nGbPsW8YTVHYW4
nwiRvGF0VOQd+meK2Fw9h9f6rlJnRTLI93/6Jv1ByeE2tPQ0W9I6f/skfDj0i9b0rg1Rq20T822e
dzCf1Nq/xTWTsuzUn9C9rLstlOjI11KxHmPFVaOzsknrmgN4RWqD22gqtDkoy3Cec76ilnkDmrMF
qG5j6GAqYIzKbxP0gXflWxMPiX2No6GsV+GD7An54+k+JFTs11NXUGZcThbZU+i0KObpP55EXG+J
nEU6eRArS7QysIbt2ttZYcji5t35wSviFbvQkakkdSX6PePnTJcrk7M+BaTAbuPIhPCIGT0HGReM
PhazzE3FJ9eF5YGQC7K3l+sLGoJBkLuzuhDLSLv7cw/1A4xGK/ZuQnhm/YT+9o0tiAV3Egaxp0pc
RfiGsRASKl9LDP7YURKheI6GIZ3FnOibLcoh8wAHctM8+/98mz6cfii1rf93bqEThFPGMCxXRRtG
qXmaG88v06UpbPM9dWm3wD7p9a+RIGkoAaqjYX3vzDlP0Zw5nEpk4PKHscQmB8xswwG9u5Pw5lNh
wFxdWkBiY2Dg69eDAoNR4l+XkxGM1X1zpRotGeA1VjM5PP7Lpt7aHAVAbmM5HFtrOSAErGSEq4yz
YpLKvk3SRVl6J0SUs2+p9AEx0gCHGz8fZ72i9JxPGT/uq/LjoFLWEY+8X6S8w4fubCtW0C2Q2xAF
GN8onB8EMk0g27yAjGb+gQW1ozF2bEbJdaywd5zgOXLPLMlJEnijLq65YAkAuq0FSb6AUs8ahXDs
BdaI7PzaKvYPon+x1UjEYofA7GKoswLJXaktTTQ1zCIa4tu3qkDKWvJ0/k7WrOSQU3MUqHu2VX5J
aWVy9E8EwrrWGMczB/pfBxwl++b9vZ79oEKFoLm/H3bOFf+V7/PBBIK3Z/E3ZZOXdoJZZI/LrZGz
viq9W59E4zP+oJ4zfFbMUahEJVR/772PUQegEImvzmqEGWE3sa0VkDNv2ukCxRvG+zl5Q2IdmolZ
qZS9VWQkSrs+gFsrGHPhBVyfo3xBdcpYYPiq3gHfZxTG71CpjlOdKCPAHV3qeHl+LVA9Xb3wljQl
SB4LPxghVQwHmI1vR0q/IcGx9qaLjghvPb9h/XpQ6+k7qUnKcJstOCcsPd7ZdJeloxTIqeSQS5vp
66h5k9/ruwBFG3mEJt+mdKzl+2z4Eevq04JO7qqK1+dfX6D47oeRroLbrEXQ70DjC2j6sOV+NQZg
WoOoIAcnQKj4XgQaofur/x68Dt3ohGAMfpquULSgqxuheYSGz61fYzyfexpVM4eW6d1Dsv0tEJ/0
0RTLO2LSCT+nQp7abJySt6W7SR8Os1Px5T3aeCFc1igeE8TLMj4yy3sI85pD21iEs2hUQZgPyJBa
+BrgJ2KtZswVvcieyj1iN0ScDg8xvqQRfHrVa5t0XVS2PROaQsvdIE4syvyHlTESwIc2Z+4lkU2S
qQXRtmJX7pqKZyJA3qwbCmcWZa9fQH6/h8qkh8OIkSDk5DH54phr6rP/D5ilK39g+jkTaADWxICB
MaHWeuD8xsDtcSWtKsRfLhZSnxSXVmFKmJDkv/fafK0a0c3/k3cFngKHzfXq6kN2o7jj2nn5nx9J
uG9ACcvIMAcVkxTT9gQEoC0CSY9Vt9KLSrgV8TZwig7xJWYMAIeDZXRQt3CL1qjr5FsK25HpPE1y
P6TCHJA8wkdeswX3kWQ6IQaCxJik5VHtHIx/VBRJYj0FEFmKAdel7X5ZZ0Hx8Z28i0M8pd5TPGOq
hJo38zjLBMMy6LL0it8Z09FbNCiRFrIR6e8dYTfAHbYq23IAYj0uwtrkXB8QArL/JiAkngxYaFZV
xMvhsWCel5Slx++uoaFQrMWTEO2fNFtuOLlLSd0YKEOvmB9/WD0sNBQ9VRpkArRsQ2bfs360a67h
BDk/hxR8gOKanawxsjLRZXpKpoCoSkgwlN89qsXJAVkQc0FjwNJPxTskq3lxH30VBb6ANoO+mXkd
XSA2ZAG3hZGMwCDUibTYOkx9G/Uxq5agDEQc+8XtibbqOKJwVcQTbFBroDieYu7DciGYkbaOCh9O
d5UGJoOeUAOSM+Ysc9Q8k7QRTYjv5IObbZi2Q4V9a9l01jzRPzmJMIKPq0Q4jjdwvf+3hNficJBS
OsuaWGiRb6BAGeUUkv/Z09jazFlHUNxZowWPJBNpekTTUTbWHzLNLcAe0nJC9ojCsJX17mjgLcoC
1BMxH6GkBI1zUVFHUlAMLuiJZouNMM6QQp9ONBpQhAnlJzSa4LPhyh9ck6q4470PEbcr8O1lmwN2
SmvMxuy+SnAxmNdVpUq8gVmMnVR/7RHDjdDsAHJ28g28efFtgfNbOAFG6HqXGISdN0JDPXiqNA0N
DXUgZDF5ydYpXR8Efjj+cxmERAeXiGmGQs2k0dxbPS+qEweAbwBJ5tyU1MdYccgo+GjpUuOdk4Wn
MJpUg9GWtZ+I+0uwyuKhErADjBlhQgKfzW9J5I6BYHrs0sGNOTtwIgelESFb+nqcDhELLvpkW1NN
jNZ5bJmujHR22q9CzvKJKAswOwDSsvF5ffcKEF/8cWFfY/QE+NSbxLKYXlxFt2+yR4qOP5Shy1A0
KMm5yTCjAkbnCPuf4ObHBCxTp1WHwAyqce4HCwf3famAM/7fLgczPvN6dnpGGcHCX7chozr8XBD6
axWB9Gf1FzVlZ0d0XftUrXGHxTb6ldhFWj6SdEaJz8vugTzpBuaq59MkjaLigFU0SgebfCOjtfGd
q/YNXWhPH4ZbwY9kzcBPchERw/AQuACn4sXMSGCMgN6HWFdDhIrR7S1wObeNowTJYthLWbk2QFeR
2BQKbjfbgDFg/xmRx9KtDAhiUyF2NF775AedS3Gu0pvt72EmSliKh1KwFMYJBBaZGGuZXqXm0Xzi
dnHuxuh4hhuuJ1smA8tpSC+Im4BdOmbsWv79+JkTrvB9g7qw8IjgQVeY5YVBOOQlBpHJeZ1im3Uc
ktBtmuFH4OAUn2PcsLhx25T0wraHngdZI3+2W5rK+24cmNp8H2fw9eoKB4mi9OF8sdXc3pujCFZe
XvBsU2KHwo7lmFmkz1odUix1NTAussOCE2mvmzpCyxmfP5Uf9Sg2swgCR/YOYOqyVdY4WpXZ7RIg
eQ8zixOYfjWkLTxLIAT7cHLZOE5yecOykthL6MzXVNKvZBuceYlmV5CVXtinsXRSJkRv6Efz9g/R
NsyCNOMwNR2nfKFauCPaa1zDa0sJaZQeBZaMuhUHjv4QFvye7hCm7Pqluj5VFf91mVMNypdRSifV
nfyvpepJ4MxysabV7+HmKMWMjXRHHBJf+wGokVyPP2K8PJUVyYdUnG8BAYUNj6aLVQBzBHH2AuHl
l9yjC1fdQCm/z2XirDutPgsbbgVO4q358t07HTQTGjsY5At11ZgATEUTeutDCcPIO36fwZx3PF4a
mZO7to1JfjoSpNDcRYbd4jIAwf7FLXPf2kTWMtk2nvMMa7wZhPzPd2sITH0yHh7eOL8BVnq9jzPe
J9KiGcAvdpCQ1qSWNoljvQn1lvJmwuchW+xbAGiR7xbXBP0ZqYL39pQnuFzL+sVdnSYkDpz9UUlw
HKQg/Vh+ITuqSgVdFIge3NaRmDO5mYfXfNaYu/WJhJMpWYHglQBPgVnLseD9G+60rbID+pPLcIIA
NMPoxDXF4ggcYdmFLwNZI18chb/zCfV2CjCCI+8nLw81YTmkvKcyoh3EOd2M9oPWAsM1IaAsZEDd
oWYDjS6SP+R8owcv1EwLgdpgXw66ulYfG2YdFFKCVUW6A84WQWMV6xmNqX7e7OuRvCkwW0bo8+FI
OXtpfN0ysZuQpQg62i99WB1WDabPyj+ubxhVf4JTpBJjn16w8X5I1Gp+B+duwHb4+Ja5CkdGL2op
BLIPOhJpQM4c5rxQTcEa+ebzgf41sDkXi/cUevcmb0G1AqbB3azKgKxml9YPz8yPl8NFKbF/ZRnk
+JhYfqcjiZaJiIcY+VMov+S+PsZosoVjju/+pvnSz9muuD9rOVMNYjhOtwnRgZzRlcfwdRDf0nfN
kOaCd7lFotHQHEBF6ZllasgqqHKIkJ/xqwEFRmWrdG8pcvNbteCrBc6FdH/kBzphC7sUa9FusbVc
/dbZtHGMd8z4v5iqgFZO9F6mcfj6JYIHvghB2Op/SFneADrzKad/AJ0sNSOt53S6oiW/oavCqiZX
u+Kl58z1R06O/NWpSuXNNGMUcOr6BeswoCUxOIa2EVgBmDit77mrRUIrXa3aPXsDUwmD4Cr9nO8C
kkD44yxQkVdR0CRtqZ2Gy5IZzyRXG4NnhsdeL/dUB2ndqby91vzLg3TwAbrxghEjHK1zPy/KiUxj
iqffPgYtN8ezQ+hl5F/EOHgs8h560dVlHHrptNFVs57fH00XDLfgezBqlH0Zd3kxl9ysCdMzbqS8
ylumtq5auvaQ48Mrzo6w09A2qQerCl6XUXxzglwcOV13GquNFli76q0zJSAIT7WcK/bYNZRAryPc
gacXEe7mrIZxfg623bEGtJMyWuxNB7WTL9uiptOReZdqdnRlLkkRh3xzUSiA3Thp+yy357KhL6/L
vFvGV+wyn6PiiVw2t06zb3xbwXYif8gHWpeBpxV5dIC24nmsHL44/I8UNlppIQApISIAxyMu7sxQ
4nyV1Kiw2k/3peDm98PKxP2QjjQwkx2+5VZ+qUS3cURyyvHQTOPFezrYz0JcXakzwswWx1G3hvzv
MVBNsf1pF3LK3K6TxYc6IbdbJDlKiW12s/TV9i0y410kdYdjthodAZ8s7oEysRLRbubxN7lO7eXU
gPZtsUBk1RjIVIBLEp+CizOwi5eXJPCU8hbPXmhFocUi75PSbdybA3rjIjUw2Qv5ur51cgmP4bYI
Vj1wATCVwEP7Yrjn6C21rtwcMRI2Y8+5N5/JnVQjQng9ffcHY/pFgExktsDjXYFUfujTrGz3bkoV
GdR1wdSQy2MhWy+svZNs3Am6u2I92hSCaVFhjYjZ9c72bvpZSI7I4wil7TGrLM1BUzqsCADUnU6g
QOgsY1yivz64x7EDOUAzbxKNdCfJFmA2wU3jxnovESe2Hvip5qcC7oNb2FXW1KDq04GEXYBakibS
YntpqLfVIzhPoF/W4WVgPe+r5HYz7/7MH+QWhYgZuNV7cEQSLqIQoCoU2Fk2Y++gBLCYvJZ12FhB
rleIrbZ9BLsKaNt1CVA+HzZtg3L2iQ0aOWDebJ7pJr+kUjczE5plb6HBIwHJfAAFC9BZCIa2YPwZ
IvsYrgZGCpWYh+00DuU2pp09NC70KoTGvI1M36FB307BPq233FuJLFJT89ORtiO8oa+Yg5HmZCx2
2RJD4dbBwjtLY9CvKeaj/zpv8fSVbFSWYQ0NAT3YX85cetwuU9ljlYuouCc6BDGql9KxoCS1qADS
NR9Ms1H84LgQB5Lte8C1wNNEFYvhIeSLXzk8lDSke/ac6md8PQRhWJaCTt46n+6J0xza2VHiv4Jp
qtWknWQTB4LyuWoBwO71T9tvc6+7wOcHpbf1HN0PAZzVJjvvRT6RuwXfeIqbR6YBDKGbcsogNIVj
ZRuZ1ee8X98dKbJ15xKk+S16e3hPSRYsVkuaLpKo9+nLKb9+TUvJ4AIQ1KeFRJGz6Ay8JQZXfBu8
urXIkIDNdXyZ0LLiu2Em14RQ6TnTKmsMPyw6t7NzOFxVNkFuWWDa4UkGnEKPo+2MiC/sQuaCL71o
REArSPJ7PqboarG63aQTMlmDSMyWK2D9Zk0nXGr1+Au7ccnGnnD3Y39VQ6g+otyhbDtXkD0v4kVV
SqBqYC9UHV6FCrTYALcOMdoHizdIMeZE0dS89P9RQjnVX7+HiXbD9A+oP4wAiYs=
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
