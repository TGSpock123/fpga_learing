// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Aug 19 23:48:38 2025
// Host        : DESKTOP-IMB8E6N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ip_true_dual_ram_0_sim_netlist.v
// Design      : ip_true_dual_ram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku5p-ffvb676-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ip_true_dual_ram_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [5:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [7:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
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
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.631669 mW" *) 
  (* C_FAMILY = "kintexuplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
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
  (* C_INIT_FILE = "ip_true_dual_ram_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "NO_CHANGE" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "kintexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23168)
`pragma protect data_block
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
iA9bulSSWUxEnkEUaQcxlvzzPl1HlIwDTBE=
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
